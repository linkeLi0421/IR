; ModuleID = '/llk/IR/drivers/net/usb/smsc95xx.c_pt.bc'
source_filename = "../drivers/net/usb/smsc95xx.c"
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
%struct.smsc95xx_priv = type { i32, i32, i32, i32, %struct.spinlock, i8, i8, ptr, ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.anon.50 = type { i16, i16 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__param_str_turbo_mode = internal constant [20 x i8] c"smsc95xx.turbo_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@turbo_mode = internal global i8 1, align 1
@__param_turbo_mode = internal constant %struct.kernel_param { ptr @__param_str_turbo_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @turbo_mode } }, section "__param", align 4
@__UNIQUE_ID_turbo_modetype335 = internal constant [34 x i8] c"smsc95xx.parmtype=turbo_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_turbo_mode336 = internal constant [67 x i8] c"smsc95xx.parm=turbo_mode:Enable multiple frames per Rx transaction\00", section ".modinfo", align 1
@__initcall__kmod_smsc95xx__337_2094_smsc95xx_driver_init6 = internal global ptr @smsc95xx_driver_init, section ".initcall6.init", align 4
@smsc95xx_driver = internal global %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @smsc95xx_suspend, ptr @smsc95xx_resume, ptr @smsc95xx_reset_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_smsc95xx_driver_exit = internal global ptr @smsc95xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [26 x i8] c"smsc95xx.author=Nancy Lin\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [66 x i8] c"smsc95xx.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [55 x i8] c"smsc95xx.description=SMSC95XX USB 2.0 Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [39 x i8] c"smsc95xx.file=drivers/net/usb/smsc95xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [21 x i8] c"smsc95xx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"smsc95xx\00", align 1
@products = internal constant [19 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 -27392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -27387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25087, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -5120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -27344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -26832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -25080, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc95xx_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"usbnet_suspend error\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error during last resume\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"entering SUSPEND2 mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to allocate filter_mask\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"enabling broadcast detection\0A\00", align 1
@__const.smsc95xx_suspend.mcast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"enabling multicast detection\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"enabling ARP detection\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"enabling unicast detection\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"enabling pattern match wakeup\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"disabling pattern match wakeup\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"enabling magic packet wakeup\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"disabling magic packet wakeup\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"entering SUSPEND0 mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%s: MII is busy\0A\00", align 1
@__func__.__smsc95xx_mdio_read = private unnamed_addr constant [21 x i8] c"__smsc95xx_mdio_read\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Error writing MII_ADDR\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Timed out reading MII reg %02X\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Error reading MII_DATA\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [26 x i8] c"Error reading MII_ACCESS\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Failed to write reg index 0x%08x: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed to read reg index 0x%08x: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"EDPD not supported\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"rx fifo not empty in autosuspend\0A\00", align 1
@__func__.__smsc95xx_mdio_write = private unnamed_addr constant [22 x i8] c"__smsc95xx_mdio_write\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Error writing MII_DATA\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Timed out writing MII reg %02X\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"usbnet_resume error\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"timeout waiting for completion of Lite Reset\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"timeout waiting for PHY Reset\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Failed to set checksum offload features\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Failed to start TX path\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Failed to start RX path\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"failed to initiate async write to HASHH\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"failed to initiate async write to HASHL\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"failed to initiate async write to MAC_CR\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Error write async cmd, sts=%d\0A\00", align 1
@smsc95xx_info = internal constant %struct.driver_info { ptr @.str.37, i32 2592, ptr @smsc95xx_bind, ptr @smsc95xx_unbind, ptr @smsc95xx_reset, ptr @smsc95xx_stop, ptr @smsc95xx_start_phy, ptr @smsc95xx_manage_power, ptr @smsc95xx_status, ptr @smsc95xx_link_reset, ptr @smsc95xx_rx_fixup, ptr @smsc95xx_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"smsc95xx USB 2.0 Ethernet\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"\016smsc95xx v2.0.0\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"usbnet_get_endpoints failed: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"smsc95xx-mdiobus\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Could not register MDIO bus\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@smsc95xx_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @smsc95xx_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @smsc95xx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc95xx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smsc95xx_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr @smsc95xx_ethtool_getregslen, ptr @smsc95xx_ethtool_getregs, ptr @smsc95xx_ethtool_get_wol, ptr @smsc95xx_ethtool_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @smsc95xx_get_link, ptr null, ptr @smsc95xx_ethtool_get_eeprom_len, ptr @smsc95xx_ethtool_get_eeprom, ptr @smsc95xx_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.44 = private unnamed_addr constant [24 x i8] c"can't attach PHY to %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Error writing E2P_CMD\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"Error reading E2P_DATA\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"Error reading E2P_CMD\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"EEPROM is busy\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"EEPROM read operation timeout\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"REGS: cannot read ID_REV\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"REGS: cannot read reg[%x]\0A\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"device_set_wakeup_enable error %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"EEPROM: magic value mismatch, magic = 0x%x\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Error writing E2P_DATA\0A\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"hardware isn't capable of remote wakeup\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"unexpected urb length %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"unexpected interrupt, intdata=0x%08X\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"Error updating PHY flow control\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"Error allocating skb\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__UNIQUE_ID_turbo_mode336, ptr @__UNIQUE_ID_turbo_modetype335, ptr @__exitcall_smsc95xx_driver_exit, ptr @__initcall__kmod_smsc95xx__337_2094_smsc95xx_driver_init6, ptr @__param_turbo_mode, ptr @smsc95xx_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smsc95xx_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @smsc95xx_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smsc95xx_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @smsc95xx_driver) #14
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
define internal i32 @smsc95xx_suspend(ptr noundef %0, [1 x i32] %1) #2 {
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
  %19 = alloca [2 x i32], align 8
  %20 = alloca [2 x i32], align 8
  %21 = alloca [4 x i32], align 4
  %22 = alloca [6 x i8], align 1
  %23 = alloca [3 x i8], align 1
  %24 = alloca [2 x i8], align 2
  %25 = extractvalue [1 x i32] %1, 0
  %26 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #14
  store i32 0, ptr %18, align 4, !annotation !8
  %30 = tail call i32 @usbnet_suspend(ptr noundef %0, [1 x i32] %1) #14
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.1) #15
  br label %615

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.smsc95xx_priv, ptr %29, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.2) #15
  store i8 0, ptr %36, align 1
  br label %42

42:                                               ; preds = %39, %35
  %43 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 1) #14
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 1) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = lshr i32 %46, 2
  %50 = and i32 %49, 1
  br label %51

51:                                               ; preds = %48, %45, %42
  %52 = phi i32 [ %50, %48 ], [ %43, %42 ], [ %46, %45 ]
  %53 = icmp eq i32 %25, 1026
  br i1 %53, label %54, label %144

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.smsc95xx_priv, ptr %29, i32 0, i32 5
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %144, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %28, align 4
  %61 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 6
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = tail call fastcc i32 @smsc95xx_enter_suspend2(ptr noundef %27) #14
  br label %607

69:                                               ; preds = %59
  %70 = icmp eq i32 %52, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.smsc95xx_priv, ptr %60, i32 0, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.23) #15
  br label %607

77:                                               ; preds = %71
  %78 = tail call fastcc i32 @smsc95xx_enable_phy_wakeup_interrupts(ptr noundef %27, i16 noundef zeroext 64) #14
  %79 = icmp slt i32 %78, 0
  %80 = load ptr, ptr %61, align 4
  br i1 %79, label %81, label %82

81:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %80, ptr noundef nonnull @.str.4) #15
  br label %607

82:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %80, ptr noundef nonnull @.str.5) #15
  %83 = tail call fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %27) #14
  br label %607

84:                                               ; preds = %69
  %85 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 29) #14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 30) #14
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %88, %87 ], [ %85, %84 ]
  %92 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.4) #15
  br label %607

93:                                               ; preds = %87
  %94 = or i32 %88, 16
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %27, i32 noundef 30, i32 noundef %94) #14
  %95 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  store i32 0, ptr %17, align 4, !annotation !8
  %96 = icmp eq ptr %27, null
  br i1 %96, label %97, label %98, !prof !9

97:                                               ; preds = %93
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

98:                                               ; preds = %93
  %99 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %17, i16 noundef zeroext 4) #14, !callees !11
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = icmp eq i32 %99, -19
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %104, ptr noundef nonnull @.str.22, i32 noundef 24, i32 noundef %99) #15
  br label %105

105:                                              ; preds = %103, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  br label %607

106:                                              ; preds = %98
  %107 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %111, ptr noundef nonnull @.str.24) #15
  br label %607

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  store i32 0, ptr %16, align 4, !annotation !8
  %113 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %16, i16 noundef zeroext 4) #14, !callees !11
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = icmp eq i32 %113, -19
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %118, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %113) #15
  br label %119

119:                                              ; preds = %117, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  br label %607

120:                                              ; preds = %112
  %121 = load i32, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  %122 = and i32 %121, -628
  %123 = or i32 %122, 608
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  store i32 %123, ptr %15, align 4
  %124 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %15, i16 noundef zeroext 4) #14, !callees !12
  %125 = icmp slt i32 %124, 0
  %126 = icmp ne i32 %124, -19
  %127 = and i1 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %129, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %124) #15
  br label %130

130:                                              ; preds = %128, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  br i1 %125, label %607, label %131

131:                                              ; preds = %130
  %132 = or i32 %122, 610
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 %132, ptr %14, align 4
  %133 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %14, i16 noundef zeroext 4) #14, !callees !12
  %134 = icmp slt i32 %133, 0
  %135 = icmp ne i32 %133, -19
  %136 = and i1 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %138, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %133) #15
  br label %139

139:                                              ; preds = %137, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  br i1 %134, label %607, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.smsc95xx_priv, ptr %95, i32 0, i32 6
  %142 = load i8, ptr %141, align 1
  %143 = or i8 %142, 8
  store i8 %143, ptr %141, align 1
  br label %615

144:                                              ; preds = %54, %51
  %145 = getelementptr inbounds %struct.smsc95xx_priv, ptr %29, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 63
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = icmp eq i32 %52, 0
  %151 = and i32 %146, 1
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %192

154:                                              ; preds = %149, %144
  %155 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %156 = load ptr, ptr %155, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %156, ptr noundef nonnull @.str.3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %157 = icmp eq ptr %27, null
  br i1 %157, label %158, label %159, !prof !9

158:                                              ; preds = %154
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

159:                                              ; preds = %154
  %160 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %13, i16 noundef zeroext 4) #14, !callees !11
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = icmp eq i32 %160, -19
  br i1 %163, label %166, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr %155, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %165, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %160) #15
  br label %166

166:                                              ; preds = %164, %162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  br label %607

167:                                              ; preds = %159
  %168 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %169 = and i32 %168, -7
  store i32 %169, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 %169, ptr %12, align 4
  %170 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %12, i16 noundef zeroext 4) #14, !callees !12
  %171 = icmp slt i32 %170, 0
  %172 = icmp ne i32 %170, -19
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load ptr, ptr %155, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %175, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %170) #15
  br label %176

176:                                              ; preds = %174, %167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  br i1 %171, label %607, label %177

177:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %178 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %11, i16 noundef zeroext 4) #14, !callees !11
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = icmp eq i32 %178, -19
  br i1 %181, label %184, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %155, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %183, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %178) #15
  br label %184

184:                                              ; preds = %182, %180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %607

185:                                              ; preds = %177
  %186 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %187 = and i32 %186, -13
  store i32 %187, ptr %18, align 4
  %188 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %27, i32 noundef 32, i32 noundef %187)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %607, label %190

190:                                              ; preds = %185
  %191 = call fastcc i32 @smsc95xx_enter_suspend2(ptr noundef nonnull %27)
  br label %607

192:                                              ; preds = %149
  br i1 %152, label %211, label %193

193:                                              ; preds = %192
  %194 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 29) #14
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %27, i32 noundef 30) #14
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196, %193
  %200 = phi i32 [ %197, %196 ], [ %194, %193 ]
  %201 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %202 = load ptr, ptr %201, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %202, ptr noundef nonnull @.str.4) #15
  br label %607

203:                                              ; preds = %196
  %204 = or i32 %197, 80
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %27, i32 noundef 30, i32 noundef %204) #14
  br i1 %150, label %207, label %205

205:                                              ; preds = %203
  %206 = load i32, ptr %145, align 4
  br label %211

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %209 = load ptr, ptr %208, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %209, ptr noundef nonnull @.str.5) #15
  %210 = tail call fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %27)
  br label %607

211:                                              ; preds = %205, %192
  %212 = phi i32 [ %206, %205 ], [ %146, %192 ]
  %213 = and i32 %212, 30
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %517, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %217 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %216, i32 noundef 3520, i32 noundef 128) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #14
  %218 = getelementptr inbounds %struct.smsc95xx_priv, ptr %29, i32 0, i32 5
  %219 = load i8, ptr %218, align 4
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  %222 = select i1 %221, i32 4, i32 8
  %223 = icmp eq ptr %217, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %226 = load ptr, ptr %225, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %226, ptr noundef nonnull @.str.6) #15
  br label %513

227:                                              ; preds = %215
  store i64 0, ptr %19, align 8
  store i64 0, ptr %20, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %21, i8 0, i32 16, i1 false)
  %228 = load i32, ptr %145, align 4
  %229 = and i32 %228, 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %22) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %22, i8 -1, i32 6, i1 false)
  %232 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %233 = load ptr, ptr %232, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %233, ptr noundef nonnull @.str.7) #15
  store i32 63, ptr %217, align 8
  %234 = getelementptr i32, ptr %217, i32 1
  store i32 0, ptr %234, align 4
  %235 = getelementptr i32, ptr %217, i32 2
  store i32 0, ptr %235, align 8
  %236 = getelementptr i32, ptr %217, i32 3
  store i32 0, ptr %236, align 4
  store i32 5, ptr %19, align 8
  %237 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %22, i32 noundef 6) #14
  %238 = zext i16 %237 to i32
  %239 = call i32 asm "rbit $0, $1", "=r,r"(i32 %238) #17, !srcloc !13
  %240 = lshr i32 %239, 16
  store i32 %240, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %22) #14
  %241 = load i32, ptr %145, align 4
  br label %242

242:                                              ; preds = %231, %227
  %243 = phi i32 [ %240, %231 ], [ 0, %227 ]
  %244 = phi i32 [ 5, %231 ], [ 0, %227 ]
  %245 = phi i32 [ %241, %231 ], [ %228, %227 ]
  %246 = phi i32 [ 1, %231 ], [ 0, %227 ]
  %247 = and i32 %245, 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %272, label %249

249:                                              ; preds = %242
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %23, ptr noundef nonnull align 1 dereferenceable(3) @__const.smsc95xx_suspend.mcast, i32 3, i1 false)
  %250 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %251 = load ptr, ptr %250, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %251, ptr noundef nonnull @.str.8) #15
  %252 = shl nuw nsw i32 %246, 2
  %253 = getelementptr i32, ptr %217, i32 %252
  store i32 7, ptr %253, align 8
  %254 = or i32 %252, 1
  %255 = getelementptr i32, ptr %217, i32 %254
  store i32 0, ptr %255, align 4
  %256 = or i32 %252, 2
  %257 = getelementptr i32, ptr %217, i32 %256
  store i32 0, ptr %257, align 8
  %258 = or i32 %252, 3
  %259 = getelementptr i32, ptr %217, i32 %258
  store i32 0, ptr %259, align 4
  %260 = shl nuw nsw i32 %246, 3
  %261 = shl nuw nsw i32 9, %260
  %262 = or i32 %244, %261
  store i32 %262, ptr %19, align 8
  %263 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %23, i32 noundef 3) #14
  %264 = zext i16 %263 to i32
  %265 = call i32 asm "rbit $0, $1", "=r,r"(i32 %264) #17, !srcloc !13
  %266 = lshr i32 %265, 16
  %267 = shl nuw nsw i32 %246, 4
  %268 = shl nuw i32 %266, %267
  %269 = or i32 %268, %243
  store i32 %269, ptr %21, align 4
  %270 = add nuw nsw i32 %246, 1
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #14
  %271 = load i32, ptr %145, align 4
  br label %272

272:                                              ; preds = %249, %242
  %273 = phi i32 [ %262, %249 ], [ %244, %242 ]
  %274 = phi i32 [ %271, %249 ], [ %245, %242 ]
  %275 = phi i32 [ %270, %249 ], [ %246, %242 ]
  %276 = and i32 %274, 16
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %307, label %278

278:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #14
  store i16 1544, ptr %24, align 2
  %279 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %280 = load ptr, ptr %279, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %280, ptr noundef nonnull @.str.9) #15
  %281 = shl nuw nsw i32 %275, 2
  %282 = getelementptr i32, ptr %217, i32 %281
  store i32 3, ptr %282, align 8
  %283 = or i32 %281, 1
  %284 = getelementptr i32, ptr %217, i32 %283
  store i32 0, ptr %284, align 4
  %285 = or i32 %281, 2
  %286 = getelementptr i32, ptr %217, i32 %285
  store i32 0, ptr %286, align 8
  %287 = or i32 %281, 3
  %288 = getelementptr i32, ptr %217, i32 %287
  store i32 0, ptr %288, align 4
  %289 = shl nuw nsw i32 %275, 3
  %290 = and i32 %289, 24
  %291 = shl nuw nsw i32 5, %290
  %292 = or i32 %273, %291
  store i32 %292, ptr %19, align 8
  %293 = shl nuw nsw i32 12, %290
  store i32 %293, ptr %20, align 8
  %294 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %24, i32 noundef 2) #14
  %295 = zext i16 %294 to i32
  %296 = call i32 asm "rbit $0, $1", "=r,r"(i32 %295) #17, !srcloc !13
  %297 = lshr i32 %296, 16
  %298 = shl nuw nsw i32 %275, 4
  %299 = and i32 %298, 16
  %300 = shl nuw i32 %297, %299
  %301 = lshr i32 %275, 1
  %302 = getelementptr [4 x i32], ptr %21, i32 0, i32 %301
  %303 = load i32, ptr %302, align 4
  %304 = or i32 %300, %303
  store i32 %304, ptr %302, align 4
  %305 = add nuw nsw i32 %275, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #14
  %306 = load i32, ptr %145, align 4
  br label %307

307:                                              ; preds = %278, %272
  %308 = phi i32 [ %293, %278 ], [ 0, %272 ]
  %309 = phi i32 [ %306, %278 ], [ %274, %272 ]
  %310 = phi i32 [ %305, %278 ], [ %275, %272 ]
  %311 = and i32 %309, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %343, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %315 = load ptr, ptr %314, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %315, ptr noundef nonnull @.str.10) #15
  %316 = shl nuw nsw i32 %310, 2
  %317 = getelementptr i32, ptr %217, i32 %316
  store i32 63, ptr %317, align 8
  %318 = or i32 %316, 1
  %319 = getelementptr i32, ptr %217, i32 %318
  store i32 0, ptr %319, align 4
  %320 = or i32 %316, 2
  %321 = getelementptr i32, ptr %217, i32 %320
  store i32 0, ptr %321, align 8
  %322 = or i32 %316, 3
  %323 = getelementptr i32, ptr %217, i32 %322
  store i32 0, ptr %323, align 4
  %324 = shl nuw nsw i32 %310, 3
  %325 = and i32 %324, 24
  %326 = shl nuw nsw i32 1, %325
  %327 = load i32, ptr %19, align 8
  %328 = or i32 %327, %326
  store i32 %328, ptr %19, align 8
  %329 = load ptr, ptr %314, align 4
  %330 = getelementptr inbounds %struct.net_device, ptr %329, i32 0, i32 72
  %331 = load ptr, ptr %330, align 32
  %332 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %331, i32 noundef 6) #14
  %333 = zext i16 %332 to i32
  %334 = call i32 asm "rbit $0, $1", "=r,r"(i32 %333) #17, !srcloc !13
  %335 = lshr i32 %334, 16
  %336 = shl nuw nsw i32 %310, 4
  %337 = and i32 %336, 16
  %338 = shl nuw i32 %335, %337
  %339 = lshr i32 %310, 1
  %340 = getelementptr [4 x i32], ptr %21, i32 0, i32 %339
  %341 = load i32, ptr %340, align 4
  %342 = or i32 %338, %341
  store i32 %342, ptr %340, align 4
  br label %343

343:                                              ; preds = %313, %307
  %344 = shl nuw nsw i32 %222, 2
  %345 = icmp eq ptr %27, null
  %346 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  br label %350

347:                                              ; preds = %362
  %348 = add nuw nsw i32 %351, 1
  %349 = icmp eq i32 %348, %344
  br i1 %349, label %364, label %350

350:                                              ; preds = %347, %343
  %351 = phi i32 [ 0, %343 ], [ %348, %347 ]
  %352 = getelementptr i32, ptr %217, i32 %351
  %353 = load i32, ptr %352, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  br i1 %345, label %354, label %355, !prof !9

354:                                              ; preds = %350
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

355:                                              ; preds = %350
  store i32 %353, ptr %10, align 4
  %356 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %10, i16 noundef zeroext 4) #14, !callees !12
  %357 = icmp slt i32 %356, 0
  %358 = icmp ne i32 %356, -19
  %359 = and i1 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %361, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %356) #15
  br label %362

362:                                              ; preds = %360, %355
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br i1 %357, label %363, label %347

363:                                              ; preds = %362
  call void @kfree(ptr noundef nonnull %217) #14
  br label %513

364:                                              ; preds = %347
  call void @kfree(ptr noundef nonnull %217) #14
  %365 = lshr exact i32 %222, 2
  %366 = call i32 @llvm.umax.i32(i32 %365, i32 1)
  %367 = load i32, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 %367, ptr %9, align 4
  %368 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %9, i16 noundef zeroext 4) #14, !callees !12
  %369 = icmp slt i32 %368, 0
  %370 = icmp ne i32 %368, -19
  %371 = and i1 %369, %370
  br i1 %371, label %395, label %397

372:                                              ; preds = %397
  br i1 %221, label %431, label %373

373:                                              ; preds = %372
  %374 = getelementptr inbounds [2 x i32], ptr %19, i32 0, i32 1
  %375 = load i32, ptr %374, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 %375, ptr %9, align 4
  %376 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %9, i16 noundef zeroext 4) #14, !callees !12
  %377 = icmp slt i32 %376, 0
  %378 = icmp ne i32 %376, -19
  %379 = and i1 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %373
  %381 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %381, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %376) #15
  br label %382

382:                                              ; preds = %380, %373
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br i1 %377, label %513, label %383

383:                                              ; preds = %382
  %384 = icmp eq i32 %366, 2
  br i1 %384, label %431, label %385

385:                                              ; preds = %383
  %386 = getelementptr inbounds [2 x i32], ptr %19, i32 0, i32 2
  %387 = load i32, ptr %386, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 %387, ptr %9, align 4
  %388 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %9, i16 noundef zeroext 4) #14, !callees !12
  %389 = icmp slt i32 %388, 0
  %390 = icmp ne i32 %388, -19
  %391 = and i1 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %385
  %393 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %393, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %388) #15
  br label %394

394:                                              ; preds = %392, %385
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br i1 %389, label %513, label %431

395:                                              ; preds = %364
  %396 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %396, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %368) #15
  br label %397

397:                                              ; preds = %395, %364
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br i1 %369, label %513, label %372

398:                                              ; preds = %438
  br i1 %221, label %423, label %399

399:                                              ; preds = %398
  %400 = getelementptr inbounds [2 x i32], ptr %20, i32 0, i32 1
  %401 = load i32, ptr %400, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 %401, ptr %8, align 4
  %402 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !12
  %403 = icmp slt i32 %402, 0
  %404 = icmp ne i32 %402, -19
  %405 = and i1 %403, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %399
  %407 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %407, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %402) #15
  br label %408

408:                                              ; preds = %406, %399
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %403, label %513, label %409

409:                                              ; preds = %408
  %410 = icmp eq i32 %366, 2
  br i1 %410, label %423, label %411

411:                                              ; preds = %409
  %412 = getelementptr inbounds [2 x i32], ptr %20, i32 0, i32 2
  %413 = load i32, ptr %412, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 %413, ptr %8, align 4
  %414 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !12
  %415 = icmp slt i32 %414, 0
  %416 = icmp ne i32 %414, -19
  %417 = and i1 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %411
  %419 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %419, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %414) #15
  br label %420

420:                                              ; preds = %418, %411
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %415, label %513, label %421

421:                                              ; preds = %420
  %422 = icmp eq i32 %366, 3
  call void @llvm.assume(i1 %422)
  br label %423

423:                                              ; preds = %421, %409, %398
  %424 = lshr exact i32 %222, 1
  %425 = call i32 @llvm.umax.i32(i32 %424, i32 1)
  %426 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %426, ptr %7, align 4
  %427 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %428 = icmp slt i32 %427, 0
  %429 = icmp ne i32 %427, -19
  %430 = and i1 %428, %429
  br i1 %430, label %497, label %499

431:                                              ; preds = %394, %383, %372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 %308, ptr %8, align 4
  %432 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !12
  %433 = icmp slt i32 %432, 0
  %434 = icmp ne i32 %432, -19
  %435 = and i1 %433, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %437, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %432) #15
  br label %438

438:                                              ; preds = %436, %431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %433, label %513, label %398

439:                                              ; preds = %499
  %440 = getelementptr inbounds [4 x i32], ptr %21, i32 0, i32 1
  %441 = load i32, ptr %440, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %441, ptr %7, align 4
  %442 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %443 = icmp slt i32 %442, 0
  %444 = icmp ne i32 %442, -19
  %445 = and i1 %443, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %439
  %447 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %447, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %442) #15
  br label %448

448:                                              ; preds = %446, %439
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %443, label %513, label %449

449:                                              ; preds = %448
  %450 = icmp eq i32 %425, 2
  br i1 %450, label %500, label %451

451:                                              ; preds = %449
  %452 = getelementptr inbounds [4 x i32], ptr %21, i32 0, i32 2
  %453 = load i32, ptr %452, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %453, ptr %7, align 4
  %454 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %455 = icmp slt i32 %454, 0
  %456 = icmp ne i32 %454, -19
  %457 = and i1 %455, %456
  br i1 %457, label %458, label %460

458:                                              ; preds = %451
  %459 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %459, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %454) #15
  br label %460

460:                                              ; preds = %458, %451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %455, label %513, label %461

461:                                              ; preds = %460
  %462 = icmp eq i32 %425, 3
  br i1 %462, label %500, label %463

463:                                              ; preds = %461
  %464 = getelementptr inbounds [4 x i32], ptr %21, i32 0, i32 3
  %465 = load i32, ptr %464, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %465, ptr %7, align 4
  %466 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %467 = icmp slt i32 %466, 0
  %468 = icmp ne i32 %466, -19
  %469 = and i1 %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %463
  %471 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %471, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %466) #15
  br label %472

472:                                              ; preds = %470, %463
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %467, label %513, label %473

473:                                              ; preds = %472
  %474 = icmp eq i32 %425, 4
  br i1 %474, label %500, label %475

475:                                              ; preds = %473
  %476 = getelementptr inbounds [4 x i32], ptr %21, i32 0, i32 4
  %477 = load i32, ptr %476, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %477, ptr %7, align 4
  %478 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %479 = icmp slt i32 %478, 0
  %480 = icmp ne i32 %478, -19
  %481 = and i1 %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %475
  %483 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %483, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %478) #15
  br label %484

484:                                              ; preds = %482, %475
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %479, label %513, label %485

485:                                              ; preds = %484
  %486 = icmp eq i32 %425, 5
  br i1 %486, label %500, label %487

487:                                              ; preds = %485
  %488 = getelementptr [4 x i32], ptr %21, i32 0, i32 5
  %489 = load i32, ptr %488, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %489, ptr %7, align 4
  %490 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 296, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %491 = icmp slt i32 %490, 0
  %492 = icmp ne i32 %490, -19
  %493 = and i1 %491, %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %487
  %495 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %495, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %490) #15
  br label %496

496:                                              ; preds = %494, %487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %491, label %513, label %500

497:                                              ; preds = %423
  %498 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %498, ptr noundef nonnull @.str.21, i32 noundef 296, i32 noundef %427) #15
  br label %499

499:                                              ; preds = %497, %423
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %428, label %513, label %439

500:                                              ; preds = %496, %485, %473, %461, %449
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %501 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !11
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = icmp eq i32 %501, -19
  br i1 %504, label %507, label %505

505:                                              ; preds = %503
  %506 = load ptr, ptr %346, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %506, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %501) #15
  br label %507

507:                                              ; preds = %505, %503
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %513

508:                                              ; preds = %500
  %509 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %510 = or i32 %509, 64
  store i32 %510, ptr %18, align 4
  %511 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %27, i32 noundef 300, i32 noundef %510)
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %508, %507, %499, %496, %484, %472, %460, %448, %438, %420, %408, %397, %394, %382, %363, %224
  %514 = phi i32 [ %501, %507 ], [ -12, %224 ], [ %356, %363 ], [ %511, %508 ], [ %427, %499 ], [ %442, %448 ], [ %454, %460 ], [ %466, %472 ], [ %478, %484 ], [ %490, %496 ], [ %432, %438 ], [ %402, %408 ], [ %414, %420 ], [ %368, %397 ], [ %376, %382 ], [ %388, %394 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  br label %607

515:                                              ; preds = %508
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  %516 = load i32, ptr %145, align 4
  br label %517

517:                                              ; preds = %515, %211
  %518 = phi i32 [ %516, %515 ], [ %212, %211 ]
  %519 = and i32 %518, 32
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %545, label %521

521:                                              ; preds = %517
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %522 = icmp eq ptr %27, null
  br i1 %522, label %523, label %524, !prof !9

523:                                              ; preds = %521
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

524:                                              ; preds = %521
  %525 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %533

527:                                              ; preds = %524
  %528 = icmp eq i32 %525, -19
  br i1 %528, label %532, label %529

529:                                              ; preds = %527
  %530 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %531 = load ptr, ptr %530, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %531, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %525) #15
  br label %532

532:                                              ; preds = %529, %527
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %607

533:                                              ; preds = %524
  %534 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %535 = or i32 %534, 32
  store i32 %535, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %535, ptr %4, align 4
  %536 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %537 = icmp slt i32 %536, 0
  %538 = icmp ne i32 %536, -19
  %539 = and i1 %537, %538
  br i1 %539, label %540, label %543

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %542 = load ptr, ptr %541, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %542, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %536) #15
  br label %543

543:                                              ; preds = %540, %533
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br i1 %537, label %607, label %544

544:                                              ; preds = %543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  br label %548

545:                                              ; preds = %517
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %546 = icmp eq ptr %27, null
  br i1 %546, label %547, label %548, !prof !9

547:                                              ; preds = %545
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

548:                                              ; preds = %545, %544
  %549 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %27, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !11
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %557

551:                                              ; preds = %548
  %552 = icmp eq i32 %549, -19
  br i1 %552, label %556, label %553

553:                                              ; preds = %551
  %554 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %555 = load ptr, ptr %554, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %555, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %549) #15
  br label %556

556:                                              ; preds = %553, %551
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %607

557:                                              ; preds = %548
  %558 = load i32, ptr %3, align 4
  store i32 %558, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %559 = load i32, ptr %145, align 4
  %560 = and i32 %559, 30
  %561 = icmp eq i32 %560, 0
  %562 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %563 = load ptr, ptr %562, align 4
  br i1 %561, label %567, label %564

564:                                              ; preds = %557
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %563, ptr noundef nonnull @.str.11) #15
  %565 = load i32, ptr %18, align 4
  %566 = or i32 %565, 4
  br label %570

567:                                              ; preds = %557
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %563, ptr noundef nonnull @.str.12) #15
  %568 = load i32, ptr %18, align 4
  %569 = and i32 %568, -5
  br label %570

570:                                              ; preds = %567, %564
  %571 = phi i32 [ %569, %567 ], [ %566, %564 ]
  store i32 %571, ptr %18, align 4
  %572 = load i32, ptr %145, align 4
  %573 = and i32 %572, 32
  %574 = icmp eq i32 %573, 0
  %575 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %576 = load ptr, ptr %575, align 4
  br i1 %574, label %580, label %577

577:                                              ; preds = %570
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %576, ptr noundef nonnull @.str.13) #15
  %578 = load i32, ptr %18, align 4
  %579 = or i32 %578, 2
  br label %583

580:                                              ; preds = %570
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %576, ptr noundef nonnull @.str.14) #15
  %581 = load i32, ptr %18, align 4
  %582 = and i32 %581, -3
  br label %583

583:                                              ; preds = %580, %577
  %584 = phi i32 [ %582, %580 ], [ %579, %577 ]
  store i32 %584, ptr %18, align 4
  %585 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %27, i32 noundef 300, i32 noundef %584)
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %607, label %587

587:                                              ; preds = %583
  %588 = call fastcc i32 @smsc95xx_read_reg_nopm(ptr noundef nonnull %27, i32 noundef 32, ptr noundef nonnull %18)
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %607, label %590

590:                                              ; preds = %587
  %591 = load i32, ptr %18, align 4
  %592 = or i32 %591, 8
  store i32 %592, ptr %18, align 4
  %593 = load i32, ptr %145, align 4
  %594 = and i32 %593, 1
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %590
  %597 = or i32 %591, 12
  store i32 %597, ptr %18, align 4
  br label %598

598:                                              ; preds = %596, %590
  %599 = phi i32 [ %597, %596 ], [ %592, %590 ]
  %600 = call fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef nonnull %27, i32 noundef 32, i32 noundef %599)
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %607, label %602

602:                                              ; preds = %598
  %603 = call fastcc i32 @smsc95xx_start_rx_path(ptr noundef nonnull %27, i32 noundef 1)
  %604 = getelementptr inbounds %struct.usbnet, ptr %27, i32 0, i32 19
  %605 = load ptr, ptr %604, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %605, ptr noundef nonnull @.str.15) #15
  %606 = call fastcc i32 @smsc95xx_enter_suspend0(ptr noundef nonnull %27)
  br label %607

607:                                              ; preds = %602, %598, %587, %583, %556, %543, %532, %513, %207, %199, %190, %185, %184, %176, %166, %139, %130, %119, %110, %105, %90, %82, %81, %76, %67
  %608 = phi i32 [ %200, %199 ], [ %536, %543 ], [ %585, %583 ], [ %588, %587 ], [ %600, %598 ], [ %606, %602 ], [ %210, %207 ], [ %170, %176 ], [ %188, %185 ], [ %191, %190 ], [ %91, %90 ], [ %78, %81 ], [ %83, %82 ], [ -16, %76 ], [ %68, %67 ], [ -16, %110 ], [ %124, %130 ], [ %133, %139 ], [ %99, %105 ], [ %113, %119 ], [ %160, %166 ], [ %178, %184 ], [ %514, %513 ], [ %525, %532 ], [ %549, %556 ]
  %609 = icmp eq i32 %608, 0
  %610 = and i32 %25, 1024
  %611 = icmp eq i32 %610, 0
  %612 = select i1 %609, i1 true, i1 %611
  br i1 %612, label %615, label %613

613:                                              ; preds = %607
  %614 = call i32 @usbnet_resume(ptr noundef %0) #14
  br label %615

615:                                              ; preds = %613, %607, %140, %32
  %616 = phi i32 [ %30, %32 ], [ %608, %613 ], [ %608, %607 ], [ 0, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  ret i32 %616
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_resume(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1733, 0\0A.popsection", ""() #14, !srcloc !15
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.smsc95xx_priv, ptr %12, i32 0, i32 6
  %14 = load i8, ptr %13, align 1
  store i8 0, ptr %13, align 1
  %15 = and i8 %14, 15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, -19
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.22, i32 noundef 300, i32 noundef %18) #15
  br label %25

25:                                               ; preds = %22, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %68

26:                                               ; preds = %17
  %27 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %28 = and i32 %27, -7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %28, ptr %4, align 4
  %29 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 300, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %30 = icmp slt i32 %29, 0
  %31 = icmp ne i32 %29, -19
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.21, i32 noundef 300, i32 noundef %29) #15
  br label %36

36:                                               ; preds = %33, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br i1 %30, label %68, label %37

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %38 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = icmp eq i32 %38, -19
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %38) #15
  br label %45

45:                                               ; preds = %42, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %68

46:                                               ; preds = %37
  %47 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %48 = and i32 %47, -12
  %49 = or i32 %48, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %49, ptr %2, align 4
  %50 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %7, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !12
  %51 = icmp slt i32 %50, 0
  %52 = icmp ne i32 %50, -19
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %50) #15
  br label %57

57:                                               ; preds = %54, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br i1 %51, label %68, label %58

58:                                               ; preds = %57, %10
  %59 = call i32 @usbnet_resume(ptr noundef %0) #14
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.usbnet, ptr %7, i32 0, i32 19
  %63 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.27) #15
  br label %64

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds %struct.smsc95xx_priv, ptr %12, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @phy_init_hw(ptr noundef %66) #14
  br label %68

68:                                               ; preds = %64, %57, %45, %36, %25
  %69 = phi i32 [ %59, %64 ], [ %29, %36 ], [ %50, %57 ], [ %18, %25 ], [ %38, %45 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_reset_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @smsc95xx_reset(ptr noundef %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @smsc95xx_resume(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %4, %1 ]
  ret i32 %9
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
define internal fastcc i32 @smsc95xx_read_reg_nopm(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

7:                                                ; preds = %3
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = icmp eq i32 %9, -19
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %9) #15
  br label %18

16:                                               ; preds = %7
  %17 = load i32, ptr %4, align 4
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_write_reg_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

7:                                                ; preds = %3
  store i32 %2, ptr %4, align 4
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %10 = icmp slt i32 %9, 0
  %11 = icmp ne i32 %9, -19
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %9) #15
  br label %16

16:                                               ; preds = %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend2(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

8:                                                ; preds = %1
  %9 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, -19
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %9) #15
  br label %16

16:                                               ; preds = %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %33

17:                                               ; preds = %8
  %18 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %19 = and i32 %18, -116
  %20 = or i32 %19, 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %20, ptr %2, align 4
  %21 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !12
  %22 = icmp slt i32 %21, 0
  %23 = icmp ne i32 %21, -19
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %21) #15
  br label %28

28:                                               ; preds = %25, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br i1 %22, label %33, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.smsc95xx_priv, ptr %5, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = or i8 %31, 4
  store i8 %32, ptr %30, align 1
  br label %33

33:                                               ; preds = %29, %28, %16
  %34 = phi i32 [ 0, %29 ], [ %21, %28 ], [ %9, %16 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enable_phy_wakeup_interrupts(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %0, i32 noundef 29)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %0, i32 noundef 30)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = zext i16 %1 to i32
  %10 = or i32 %6, %9
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %0, i32 noundef 30, i32 noundef %10)
  br label %11

11:                                               ; preds = %8, %5, %2
  %12 = phi i32 [ 0, %8 ], [ %3, %2 ], [ %6, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend1(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.smsc95xx_priv, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %0, i32 noundef 16, i32 noundef 45056)
  br label %12

12:                                               ; preds = %11, %1
  %13 = tail call fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %0, i32 noundef 17)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = or i32 %13, 8192
  tail call fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %0, i32 noundef 17, i32 noundef %16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

19:                                               ; preds = %15
  %20 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, -19
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %20) #15
  br label %27

27:                                               ; preds = %24, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %54

28:                                               ; preds = %19
  %29 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %30 = and i32 %29, -116
  %31 = or i32 %30, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %31, ptr %3, align 4
  %32 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %33 = icmp slt i32 %32, 0
  %34 = icmp ne i32 %32, -19
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %38 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %32) #15
  br label %39

39:                                               ; preds = %36, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br i1 %33, label %54, label %40

40:                                               ; preds = %39
  %41 = or i32 %30, 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %41, ptr %2, align 4
  %42 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !12
  %43 = icmp slt i32 %42, 0
  %44 = icmp ne i32 %42, -19
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %42) #15
  br label %49

49:                                               ; preds = %46, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br i1 %43, label %54, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.smsc95xx_priv, ptr %6, i32 0, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 2
  store i8 %53, ptr %51, align 1
  br label %54

54:                                               ; preds = %50, %49, %39, %27, %12
  %55 = phi i32 [ 0, %50 ], [ %13, %12 ], [ %32, %39 ], [ %42, %49 ], [ %20, %27 ]
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_start_rx_path(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.smsc95xx_priv, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = load i32, ptr %5, align 4
  %9 = or i32 %8, 4
  store i32 %9, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  %10 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

13:                                               ; preds = %2
  %14 = icmp eq i32 %1, 0
  %15 = select i1 %14, ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm
  store i32 %10, ptr %3, align 4
  %16 = call i32 %15(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %17 = icmp slt i32 %16, 0
  %18 = icmp ne i32 %16, -19
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %16) #15
  br label %23

23:                                               ; preds = %20, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_enter_suspend0(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

10:                                               ; preds = %1
  %11 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp eq i32 %11, -19
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %11) #15
  br label %18

18:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %57

19:                                               ; preds = %10
  %20 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %21 = and i32 %20, -116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %21, ptr %4, align 4
  %22 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %23 = icmp slt i32 %22, 0
  %24 = icmp ne i32 %22, -19
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %22) #15
  br label %29

29:                                               ; preds = %26, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br i1 %23, label %57, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.smsc95xx_priv, ptr %7, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = or i32 %21, %33
  %35 = or i32 %34, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %35, ptr %3, align 4
  %36 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %37 = icmp slt i32 %36, 0
  %38 = icmp ne i32 %36, -19
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %36) #15
  br label %43

43:                                               ; preds = %40, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br i1 %37, label %57, label %44

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %45 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = icmp eq i32 %45, -19
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %45) #15
  br label %52

52:                                               ; preds = %49, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %57

53:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %54 = getelementptr inbounds %struct.smsc95xx_priv, ptr %7, i32 0, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 1
  br label %57

57:                                               ; preds = %53, %52, %43, %29, %18
  %58 = phi i32 [ 0, %53 ], [ %22, %29 ], [ %36, %43 ], [ %11, %18 ], [ %45, %52 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_mdio_read_nopm(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.smsc95xx_priv, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %13) #14
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = icmp eq ptr %0, null
  %16 = add i32 %14, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  br i1 %15, label %20, label %17, !prof !9

17:                                               ; preds = %2
  %18 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %32

20:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

21:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %22 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %18, %17 ], [ %22, %21 ]
  %26 = icmp eq i32 %25, -19
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %25) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %31 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.20) #15
  br label %40

32:                                               ; preds = %21, %17
  %33 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %16, %37
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %21, label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %25, %28 ], [ -5, %36 ]
  %42 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_read) #15
  br label %106

44:                                               ; preds = %32, %27
  %45 = shl i32 %12, 11
  %46 = and i32 %45, 63488
  %47 = shl i32 %1, 6
  %48 = and i32 %47, 1984
  %49 = or i32 %48, %46
  %50 = or i32 %49, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %50, ptr %5, align 4
  %51 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !12
  %52 = icmp slt i32 %51, 0
  %53 = icmp ne i32 %51, -19
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %51) #15
  br label %58

58:                                               ; preds = %55, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br i1 %52, label %59, label %64

59:                                               ; preds = %58
  %60 = icmp eq i32 %51, -19
  br i1 %60, label %105, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %63 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.17) #15
  br label %106

64:                                               ; preds = %58
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %67 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %80

69:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %70 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %67, %64 ], [ %70, %69 ]
  %74 = icmp eq i32 %73, -19
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %92

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %78 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %78, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %73) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %79 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.20) #15
  br label %88

80:                                               ; preds = %69, %64
  %81 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = sub i32 %66, %85
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %69, label %88

88:                                               ; preds = %84, %76
  %89 = phi i32 [ %73, %76 ], [ -5, %84 ]
  %90 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %91 = load ptr, ptr %90, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.18, i32 noundef %1) #15
  br label %106

92:                                               ; preds = %80, %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %93 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !11
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = icmp eq i32 %93, -19
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %105

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %100 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.22, i32 noundef 280, i32 noundef %93) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %101 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %101, ptr noundef nonnull @.str.19) #15
  br label %106

102:                                              ; preds = %92
  %103 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %104 = and i32 %103, 65535
  call void @mutex_unlock(ptr noundef %13) #14
  br label %110

105:                                              ; preds = %97, %59
  call void @mutex_unlock(ptr noundef %13) #14
  br label %109

106:                                              ; preds = %98, %88, %61, %40
  %107 = phi i32 [ %41, %40 ], [ %51, %61 ], [ %89, %88 ], [ %93, %98 ]
  call void @mutex_unlock(ptr noundef %13) #14
  %108 = icmp eq i32 %107, -19
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %105
  br label %110

110:                                              ; preds = %109, %106, %102
  %111 = phi i32 [ 0, %109 ], [ %107, %106 ], [ %104, %102 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc95xx_mdio_write_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.smsc95xx_priv, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %14) #14
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = icmp eq ptr %0, null
  %17 = add i32 %15, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  br i1 %16, label %21, label %18, !prof !9

18:                                               ; preds = %3
  %19 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %33

21:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

22:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %23 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %19, %18 ], [ %23, %22 ]
  %27 = icmp eq i32 %26, -19
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %44

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %26) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %32 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.20) #15
  br label %41

33:                                               ; preds = %22, %18
  %34 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %17, %38
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %22, label %41

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_write) #15
  br label %105

44:                                               ; preds = %33, %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 %2, ptr %6, align 4
  %45 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %46 = icmp slt i32 %45, 0
  %47 = icmp ne i32 %45, -19
  %48 = and i1 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.21, i32 noundef 280, i32 noundef %45) #15
  br label %52

52:                                               ; preds = %49, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %46, label %53, label %58

53:                                               ; preds = %52
  %54 = icmp eq i32 %45, -19
  br i1 %54, label %105, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.25) #15
  br label %105

58:                                               ; preds = %52
  %59 = shl i32 %13, 11
  %60 = and i32 %59, 63488
  %61 = shl i32 %1, 6
  %62 = and i32 %61, 1984
  %63 = or i32 %62, %60
  %64 = or i32 %63, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %64, ptr %5, align 4
  %65 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !12
  %66 = icmp slt i32 %65, 0
  %67 = icmp ne i32 %65, -19
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %71 = load ptr, ptr %70, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %71, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %65) #15
  br label %72

72:                                               ; preds = %69, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br i1 %66, label %73, label %78

73:                                               ; preds = %72
  %74 = icmp eq i32 %65, -19
  br i1 %74, label %105, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %77 = load ptr, ptr %76, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %77, ptr noundef nonnull @.str.17) #15
  br label %105

78:                                               ; preds = %72
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %81 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %86, label %94

83:                                               ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %84 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %81, %78 ], [ %84, %83 ]
  %88 = icmp eq i32 %87, -19
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %105

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %92 = load ptr, ptr %91, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %87) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %93 = load ptr, ptr %91, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %93, ptr noundef nonnull @.str.20) #15
  br label %102

94:                                               ; preds = %83, %78
  %95 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = sub i32 %80, %99
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %83, label %102

102:                                              ; preds = %98, %90
  %103 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %104 = load ptr, ptr %103, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %104, ptr noundef nonnull @.str.26, i32 noundef %1) #15
  br label %105

105:                                              ; preds = %102, %94, %89, %75, %73, %55, %53, %41
  call void @mutex_unlock(ptr noundef %14) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_reset(ptr noundef %0) #2 {
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
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

16:                                               ; preds = %1
  store i32 8, ptr %10, align 4
  %17 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %10, i16 noundef zeroext 4) #14, !callees !12
  %18 = icmp slt i32 %17, 0
  %19 = icmp ne i32 %17, -19
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.21, i32 noundef 20, i32 noundef %17) #15
  br label %24

24:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br i1 %18, label %258, label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %11, align 4
  call void @msleep(i32 noundef 10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %27 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %9, i16 noundef zeroext 4) #14, !callees !11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %46, %29
  %34 = phi i32 [ %48, %46 ], [ %30, %29 ]
  %35 = phi i32 [ %47, %46 ], [ 0, %29 ]
  call void @msleep(i32 noundef 10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %36 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %9, i16 noundef zeroext 4) #14, !callees !11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %25
  %39 = phi i32 [ %26, %25 ], [ %34, %33 ]
  %40 = phi i32 [ %27, %25 ], [ %36, %33 ]
  store i32 %39, ptr %11, align 4
  %41 = icmp eq i32 %40, -19
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %40) #15
  br label %45

45:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %258

46:                                               ; preds = %33
  %47 = add nuw nsw i32 %35, 1
  %48 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  %51 = icmp ult i32 %35, 98
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %33, label %53

53:                                               ; preds = %46, %29
  %54 = phi i32 [ %27, %29 ], [ %36, %46 ]
  %55 = phi i32 [ 0, %29 ], [ %47, %46 ]
  %56 = phi i32 [ %30, %29 ], [ %48, %46 ]
  store i32 %56, ptr %11, align 4
  %57 = icmp ugt i32 %55, 98
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.28) #15
  br label %258

61:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 16, ptr %8, align 4
  %62 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !12
  %63 = icmp slt i32 %62, 0
  %64 = icmp ne i32 %62, -19
  %65 = and i1 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %68 = load ptr, ptr %67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef %62) #15
  br label %69

69:                                               ; preds = %66, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %63, label %258, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %11, align 4
  call void @msleep(i32 noundef 10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %72 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %78, label %86

74:                                               ; preds = %86
  %75 = add nuw nsw i32 %88, 1
  call void @msleep(i32 noundef 10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %76 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %71, %70 ], [ %89, %74 ]
  %80 = phi i32 [ %72, %70 ], [ %76, %74 ]
  store i32 %79, ptr %11, align 4
  %81 = icmp eq i32 %80, -19
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %84 = load ptr, ptr %83, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %84, ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef %80) #15
  br label %85

85:                                               ; preds = %82, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %258

86:                                               ; preds = %74, %70
  %87 = phi i32 [ %76, %74 ], [ %72, %70 ]
  %88 = phi i32 [ %75, %74 ], [ 0, %70 ]
  %89 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  %92 = icmp ult i32 %88, 99
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %74, label %94

94:                                               ; preds = %86
  store i32 %89, ptr %11, align 4
  %95 = icmp ugt i32 %88, 98
  %96 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %97 = load ptr, ptr %96, align 4
  br i1 %95, label %98, label %99

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %97, ptr noundef nonnull @.str.29) #15
  br label %258

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 72
  %101 = load ptr, ptr %100, align 32
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %101, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr i8, ptr %101, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %101, i32 3
  %108 = load i8, ptr %107, align 1
  %109 = getelementptr i8, ptr %101, i32 4
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr i8, ptr %101, i32 5
  %112 = load i8, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %113 = zext i8 %104 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = zext i8 %102 to i32
  %116 = or i32 %114, %115
  %117 = zext i8 %106 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or i32 %116, %118
  %120 = zext i8 %108 to i32
  %121 = shl nuw i32 %120, 24
  %122 = or i32 %119, %121
  store i32 %122, ptr %6, align 4
  %123 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %124 = icmp slt i32 %123, 0
  %125 = icmp ne i32 %123, -19
  %126 = and i1 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %99
  %128 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %128, ptr noundef nonnull @.str.21, i32 noundef 264, i32 noundef %123) #15
  br label %129

129:                                              ; preds = %127, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %124, label %258, label %130

130:                                              ; preds = %129
  %131 = zext i8 %110 to i32
  %132 = zext i8 %112 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = or i32 %133, %131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %134, ptr %5, align 4
  %135 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !12
  %136 = icmp slt i32 %135, 0
  %137 = icmp ne i32 %135, -19
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %140, ptr noundef nonnull @.str.21, i32 noundef 260, i32 noundef %135) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %258

141:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br i1 %136, label %258, label %142

142:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %143 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = icmp eq i32 %143, -19
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %148, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %143) #15
  br label %149

149:                                              ; preds = %147, %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %258

150:                                              ; preds = %142
  %151 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %152 = or i32 %151, 4096
  store i32 %152, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %152, ptr %3, align 4
  %153 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %154 = icmp slt i32 %153, 0
  %155 = icmp ne i32 %153, -19
  %156 = and i1 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %158, ptr noundef nonnull @.str.21, i32 noundef 20, i32 noundef %153) #15
  br label %159

159:                                              ; preds = %157, %150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br i1 %154, label %258, label %160

160:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %161 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = icmp eq i32 %161, -19
  br i1 %164, label %167, label %165

165:                                              ; preds = %163
  %166 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %166, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %161) #15
  br label %167

167:                                              ; preds = %165, %163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %258

168:                                              ; preds = %160
  %169 = load i32, ptr %2, align 4
  store i32 %169, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %170 = load i8, ptr @turbo_mode, align 1, !range !16
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 2048, ptr %173, align 4
  br label %182

174:                                              ; preds = %168
  %175 = load ptr, ptr %0, align 4
  %176 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 3
  %179 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  br i1 %178, label %180, label %181

180:                                              ; preds = %174
  store i32 18944, ptr %179, align 4
  br label %182

181:                                              ; preds = %174
  store i32 8256, ptr %179, align 4
  br label %182

182:                                              ; preds = %181, %180, %172
  %183 = phi i32 [ 37, %180 ], [ 129, %181 ], [ 0, %172 ]
  %184 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 56, i32 noundef %183)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %258, label %186

186:                                              ; preds = %182
  %187 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %11)
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %258, label %189

189:                                              ; preds = %186
  %190 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 108, i32 noundef 8192)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %258, label %192

192:                                              ; preds = %189
  %193 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 108, ptr noundef nonnull %11)
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %258, label %195

195:                                              ; preds = %192
  %196 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull %11)
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %258, label %198

198:                                              ; preds = %195
  %199 = load i8, ptr @turbo_mode, align 1, !range !16
  %200 = icmp eq i8 %199, 0
  %201 = load i32, ptr %11, align 4
  %202 = or i32 %201, 34
  %203 = select i1 %200, i32 %201, i32 %202
  %204 = and i32 %203, -1537
  %205 = or i32 %204, 1024
  store i32 %205, ptr %11, align 4
  %206 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 20, i32 noundef %205)
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %258, label %208

208:                                              ; preds = %198
  %209 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull %11)
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %258, label %211

211:                                              ; preds = %208
  %212 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 8, i32 noundef -1)
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %258, label %214

214:                                              ; preds = %211
  %215 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %11)
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %258, label %217

217:                                              ; preds = %214
  %218 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 36, i32 noundef 17891328)
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %258, label %220

220:                                              ; preds = %217
  %221 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 284, i32 noundef 0)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %258, label %223

223:                                              ; preds = %220
  %224 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 44, i32 noundef 16265377)
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %258, label %226

226:                                              ; preds = %223
  %227 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 256, ptr noundef %13)
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %258, label %229

229:                                              ; preds = %226
  %230 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 288, i32 noundef 33024)
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %258, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr %96, align 4
  %234 = getelementptr inbounds %struct.net_device, ptr %233, i32 0, i32 23
  %235 = load i64, ptr %234, align 16
  %236 = call i32 @smsc95xx_set_features(ptr noundef %233, i64 noundef %235)
  %237 = icmp slt i32 %236, 0
  %238 = load ptr, ptr %96, align 4
  br i1 %237, label %239, label %240

239:                                              ; preds = %232
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %238, ptr noundef nonnull @.str.30) #15
  br label %258

240:                                              ; preds = %232
  call void @smsc95xx_set_multicast(ptr noundef %238)
  %241 = call fastcc i32 @smsc95xx_read_reg(ptr noundef nonnull %0, i32 noundef 104, ptr noundef nonnull %11)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %258, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %11, align 4
  %245 = or i32 %244, 32768
  store i32 %245, ptr %11, align 4
  %246 = call fastcc i32 @smsc95xx_write_reg(ptr noundef nonnull %0, i32 noundef 104, i32 noundef %245)
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %243
  %249 = call fastcc i32 @smsc95xx_start_tx_path(ptr noundef nonnull %0)
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %252, ptr noundef nonnull @.str.31) #15
  br label %258

253:                                              ; preds = %248
  %254 = call fastcc i32 @smsc95xx_start_rx_path(ptr noundef nonnull %0, i32 noundef 0)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %257, ptr noundef nonnull @.str.32) #15
  br label %258

258:                                              ; preds = %256, %253, %251, %243, %240, %239, %229, %226, %223, %220, %217, %214, %211, %208, %198, %195, %192, %189, %186, %182, %167, %159, %149, %141, %139, %129, %98, %85, %69, %58, %45, %24
  %259 = phi i32 [ %54, %58 ], [ %87, %98 ], [ %236, %239 ], [ %249, %251 ], [ %254, %256 ], [ %17, %24 ], [ %62, %69 ], [ %135, %141 ], [ %153, %159 ], [ %184, %182 ], [ %187, %186 ], [ %190, %189 ], [ %193, %192 ], [ %196, %195 ], [ %206, %198 ], [ %209, %208 ], [ %212, %211 ], [ %215, %214 ], [ %218, %217 ], [ %221, %220 ], [ %224, %223 ], [ %227, %226 ], [ %230, %229 ], [ %241, %240 ], [ %246, %243 ], [ 0, %253 ], [ %40, %45 ], [ %80, %85 ], [ %135, %139 ], [ %143, %149 ], [ %161, %167 ], [ %123, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  ret i32 %259
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_write_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

7:                                                ; preds = %3
  store i32 %2, ptr %4, align 4
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %10 = icmp slt i32 %9, 0
  %11 = icmp ne i32 %9, -19
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %9) #15
  br label %16

16:                                               ; preds = %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_read_reg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

7:                                                ; preds = %3
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = icmp eq i32 %9, -19
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %9) #15
  br label %18

16:                                               ; preds = %7
  %17 = load i32, ptr %4, align 4
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

8:                                                ; preds = %2
  %9 = call i32 @usbnet_read_cmd(ptr noundef nonnull %5, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 304, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, -19
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 1512
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef 304, i32 noundef %9) #15
  br label %16

16:                                               ; preds = %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %37

17:                                               ; preds = %8
  %18 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %19 = and i32 %18, -65538
  %20 = trunc i64 %1 to i32
  %21 = shl i32 %20, 15
  %22 = and i32 %21, 65536
  %23 = lshr i64 %1, 40
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 1
  %26 = or i32 %25, %22
  %27 = or i32 %26, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %27, ptr %3, align 4
  %28 = call i32 @usbnet_write_cmd(ptr noundef nonnull %5, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 304, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %29 = icmp slt i32 %28, 0
  %30 = icmp ne i32 %28, -19
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = getelementptr i8, ptr %0, i32 1512
  %34 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef 304, i32 noundef %28) #15
  br label %35

35:                                               ; preds = %32, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %36 = call i32 @llvm.smin.i32(i32 %28, i32 0)
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i32 [ %36, %35 ], [ %9, %16 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc95xx_set_multicast(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1424
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.smsc95xx_priv, ptr %7, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.smsc95xx_priv, ptr %7, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.smsc95xx_priv, ptr %7, i32 0, i32 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr i8, ptr %0, i32 1512
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = and i32 %15, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 61, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %7, align 4
  %26 = and i32 %25, -794625
  br i1 %24, label %51, label %27

27:                                               ; preds = %21
  %28 = or i32 %26, 8192
  store i32 %28, ptr %7, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %53, label %32

32:                                               ; preds = %32, %27
  %33 = phi ptr [ %44, %32 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.netdev_hw_addr, ptr %33, i32 0, i32 2
  %35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %34, i32 noundef 6) #18
  %36 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %35) #17, !srcloc !13
  %37 = lshr i32 %36, 26
  %38 = and i32 %37, 31
  %39 = shl nuw i32 1, %38
  %40 = icmp slt i32 %36, 0
  %41 = select i1 %40, ptr %8, ptr %9
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %33, align 4
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %53, label %32

46:                                               ; preds = %18, %1
  %47 = phi i32 [ 262144, %1 ], [ 524288, %18 ]
  %48 = load i32, ptr %7, align 4
  %49 = and i32 %48, -794625
  %50 = or i32 %49, %47
  br label %51

51:                                               ; preds = %46, %21
  %52 = phi i32 [ %26, %21 ], [ %50, %46 ]
  store i32 %52, ptr %7, align 4
  br label %53

53:                                               ; preds = %51, %32, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  %54 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %54, ptr %4, align 4
  %55 = call i32 @usbnet_write_cmd_async(ptr noundef %5, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %4, i16 noundef zeroext 4) #14
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.36, i32 noundef %55) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %60 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.33) #15
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %62, ptr %3, align 4
  %63 = call i32 @usbnet_write_cmd_async(ptr noundef %5, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 272, ptr noundef nonnull %3, i16 noundef zeroext 4) #14
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %69

66:                                               ; preds = %61
  %67 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.36, i32 noundef %63) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %68 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.34) #15
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %70, ptr %2, align 4
  %71 = call i32 @usbnet_write_cmd_async(ptr noundef %5, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %2, i16 noundef zeroext 4) #14
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.36, i32 noundef %71) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %76 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %76, ptr noundef nonnull @.str.35) #15
  br label %77

77:                                               ; preds = %74, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_start_tx_path(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.smsc95xx_priv, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = load i32, ptr %5, align 4
  %9 = or i32 %8, 8
  store i32 %9, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  %10 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

13:                                               ; preds = %1
  store i32 %10, ptr %3, align 4
  %14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %15 = icmp slt i32 %14, 0
  %16 = icmp ne i32 %14, -19
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %14) #15
  br label %21

21:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br i1 %15, label %31, label %22

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 4, ptr %2, align 4
  %23 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !12
  %24 = icmp slt i32 %23, 0
  %25 = icmp ne i32 %23, -19
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef 16, i32 noundef %23) #15
  br label %30

30:                                               ; preds = %27, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %31

31:                                               ; preds = %30, %21
  %32 = phi i32 [ %23, %30 ], [ %14, %21 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  %8 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.39, i32 noundef %8) #15
  br label %203

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 32) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %203, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.smsc95xx_priv, ptr %15, i32 0, i32 4
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 23
  %23 = load i64, ptr %22, align 16
  %24 = or i64 %23, 2
  store i64 %24, ptr %22, align 16
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %27 = load i64, ptr %26, align 16
  %28 = or i64 %27, 1099511627776
  store i64 %28, ptr %26, align 16
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 24
  store i64 1099511627778, ptr %30, align 8
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 13, ptr noundef %31) #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #14, !annotation !8
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  %34 = load ptr, ptr %20, align 4
  %35 = tail call i32 @platform_get_ethdev_address(ptr noundef %33, ptr noundef %34) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %17
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 72
  %40 = load ptr, ptr %39, align 32
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %40, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %41, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %44, %37, %17
  %51 = call fastcc i32 @smsc95xx_read_eeprom(ptr noundef %0, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %6) #14
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr %20, align 4
  br i1 %52, label %54, label %67

54:                                               ; preds = %50
  call void @dev_addr_mod(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 6) #14
  %55 = load ptr, ptr %20, align 4
  %56 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 72
  %57 = load ptr, ptr %56, align 32
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %57, i32 4
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = or i32 %58, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %54, %50
  %68 = phi ptr [ %55, %54 ], [ %55, %61 ], [ %53, %50 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #14, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %5, i32 noundef 6) #14
  %69 = load i8, ptr %5, align 1
  %70 = and i8 %69, -4
  %71 = or i8 %70, 2
  store i8 %71, ptr %5, align 1
  call void @dev_addr_mod(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #14
  %72 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 50
  store i8 1, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #14
  br label %73

73:                                               ; preds = %67, %61, %44
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #14
  %74 = call i32 @smsc95xx_reset(ptr noundef %0)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %201

76:                                               ; preds = %73
  %77 = call ptr @mdiobus_alloc_size(i32 noundef 0) #14
  %78 = getelementptr inbounds %struct.smsc95xx_priv, ptr %15, i32 0, i32 7
  store ptr %77, ptr %78, align 8
  %79 = icmp eq ptr %77, null
  br i1 %79, label %201, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %81 = icmp eq ptr %0, null
  br i1 %81, label %82, label %83, !prof !9

82:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

83:                                               ; preds = %80
  %84 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = icmp eq i32 %84, -19
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %89, ptr noundef nonnull @.str.22, i32 noundef 20, i32 noundef %84) #15
  br label %90

90:                                               ; preds = %88, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %198

91:                                               ; preds = %83
  %92 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr %78, align 8
  %97 = getelementptr inbounds %struct.mii_bus, ptr %96, i32 0, i32 13
  store i32 -3, ptr %97, align 8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load ptr, ptr %78, align 8
  %100 = getelementptr inbounds %struct.mii_bus, ptr %99, i32 0, i32 3
  store ptr %0, ptr %100, align 8
  %101 = load ptr, ptr %78, align 8
  %102 = getelementptr inbounds %struct.mii_bus, ptr %101, i32 0, i32 4
  store ptr @smsc95xx_mdiobus_read, ptr %102, align 4
  %103 = load ptr, ptr %78, align 8
  %104 = getelementptr inbounds %struct.mii_bus, ptr %103, i32 0, i32 5
  store ptr @smsc95xx_mdiobus_write, ptr %104, align 8
  %105 = load ptr, ptr %78, align 8
  %106 = getelementptr inbounds %struct.mii_bus, ptr %105, i32 0, i32 1
  store ptr @.str.40, ptr %106, align 4
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.usb_device, ptr %107, i32 0, i32 15
  %109 = load ptr, ptr %78, align 8
  %110 = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 9
  store ptr %108, ptr %110, align 4
  %111 = load ptr, ptr %78, align 8
  %112 = getelementptr inbounds %struct.mii_bus, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.usb_device, ptr %113, i32 0, i32 12
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.usb_bus, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %113, align 8
  %119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %112, i32 noundef 61, ptr noundef nonnull @.str.41, i32 noundef %117, i32 noundef %118)
  %120 = load ptr, ptr %78, align 8
  %121 = call i32 @__mdiobus_register(ptr noundef %120, ptr noundef null) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %98
  %124 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %124, ptr noundef nonnull @.str.42) #15
  br label %198

125:                                              ; preds = %98
  %126 = load ptr, ptr %78, align 8
  %127 = call ptr @phy_find_first(ptr noundef %126) #14
  %128 = getelementptr inbounds %struct.smsc95xx_priv, ptr %15, i32 0, i32 8
  store ptr %127, ptr %128, align 4
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %131, ptr noundef nonnull @.str.43) #15
  br label %195

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.phy_device, ptr %127, i32 0, i32 4
  %134 = trunc i32 %93 to i16
  %135 = lshr exact i16 %134, 1
  %136 = load i16, ptr %133, align 8
  %137 = and i16 %136, -3
  %138 = or i16 %137, %135
  %139 = xor i16 %138, 2
  store i16 %139, ptr %133, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %140 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !11
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = icmp eq i32 %140, -19
  br i1 %143, label %146, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %145, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %140) #15
  br label %146

146:                                              ; preds = %144, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %195

147:                                              ; preds = %132
  %148 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %149 = and i32 %148, -589824
  %150 = icmp eq i32 %149, -1644167168
  %151 = and i32 %148, -33619968
  %152 = icmp eq i32 %151, -1792016384
  %153 = or i1 %152, %150
  br i1 %153, label %157, label %154

154:                                              ; preds = %147
  %155 = and i32 %148, -65536
  %156 = icmp eq i32 %155, -335544320
  br i1 %156, label %157, label %160

157:                                              ; preds = %154, %147
  %158 = phi i8 [ 7, %147 ], [ 1, %154 ]
  %159 = getelementptr inbounds %struct.smsc95xx_priv, ptr %15, i32 0, i32 5
  store i8 %158, ptr %159, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load ptr, ptr %20, align 4
  %162 = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 16
  store ptr @smsc95xx_netdev_ops, ptr %162, align 8
  %163 = load ptr, ptr %20, align 4
  %164 = getelementptr inbounds %struct.net_device, ptr %163, i32 0, i32 42
  store ptr @smsc95xx_ethtool_ops, ptr %164, align 8
  %165 = load ptr, ptr %20, align 4
  %166 = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 14
  %167 = load i32, ptr %166, align 8
  %168 = or i32 %167, 4096
  store i32 %168, ptr %166, align 8
  %169 = load ptr, ptr %20, align 4
  %170 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 19
  %171 = load i16, ptr %170, align 2
  %172 = add i16 %171, 12
  store i16 %172, ptr %170, align 2
  %173 = load ptr, ptr %20, align 4
  %174 = getelementptr inbounds %struct.net_device, ptr %173, i32 0, i32 30
  store i32 68, ptr %174, align 8
  %175 = load ptr, ptr %20, align 4
  %176 = getelementptr inbounds %struct.net_device, ptr %175, i32 0, i32 31
  store i32 1500, ptr %176, align 4
  %177 = load ptr, ptr %20, align 4
  %178 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 20
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 19
  %181 = load i16, ptr %180, align 2
  %182 = zext i16 %181 to i32
  %183 = add i32 %179, %182
  %184 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  store i32 %183, ptr %184, align 4
  %185 = load ptr, ptr %128, align 4
  %186 = call i32 @phy_connect_direct(ptr noundef %177, ptr noundef %185, ptr noundef nonnull @smsc95xx_handle_link_change, i32 noundef 2) #14
  %187 = icmp eq i32 %186, 0
  %188 = load ptr, ptr %20, align 4
  br i1 %187, label %192, label %189

189:                                              ; preds = %160
  %190 = load ptr, ptr %78, align 8
  %191 = getelementptr inbounds %struct.mii_bus, ptr %190, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %188, ptr noundef nonnull @.str.44, ptr noundef %191) #15
  br label %195

192:                                              ; preds = %160
  %193 = getelementptr inbounds %struct.net_device, ptr %188, i32 0, i32 120
  %194 = load ptr, ptr %193, align 8
  call void @phy_attached_info(ptr noundef %194) #14
  br label %203

195:                                              ; preds = %189, %146, %130
  %196 = phi i32 [ %186, %189 ], [ -19, %130 ], [ %140, %146 ]
  %197 = load ptr, ptr %78, align 8
  call void @mdiobus_unregister(ptr noundef %197) #14
  br label %198

198:                                              ; preds = %195, %123, %90
  %199 = phi i32 [ %121, %123 ], [ %196, %195 ], [ %84, %90 ]
  %200 = load ptr, ptr %78, align 8
  call void @mdiobus_free(ptr noundef %200) #14
  br label %201

201:                                              ; preds = %198, %76, %73
  %202 = phi i32 [ %74, %73 ], [ %199, %198 ], [ -12, %76 ]
  call void @kfree(ptr noundef nonnull %15) #14
  br label %203

203:                                              ; preds = %201, %192, %13, %10
  %204 = phi i32 [ %8, %10 ], [ %202, %201 ], [ 0, %192 ], [ -12, %13 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc95xx_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 120
  %8 = load ptr, ptr %7, align 8
  tail call void @phy_disconnect(ptr noundef %8) #14
  %9 = getelementptr inbounds %struct.smsc95xx_priv, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @mdiobus_unregister(ptr noundef %10) #14
  %11 = load ptr, ptr %9, align 4
  tail call void @mdiobus_free(ptr noundef %11) #14
  tail call void @kfree(ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @phy_stop(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_start_phy(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  tail call void @phy_start(ptr noundef %5) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_manage_power(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 6
  %8 = trunc i32 %1 to i8
  %9 = load i8, ptr %7, align 8
  %10 = shl i8 %8, 3
  %11 = and i8 %10, 8
  %12 = and i8 %9, -9
  %13 = or i8 %12, %11
  store i8 %13, ptr %7, align 8
  %14 = getelementptr inbounds %struct.smsc95xx_priv, ptr %4, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %20, ptr noundef nonnull @.str.55) #15
  %21 = icmp eq i32 %1, 0
  %22 = load ptr, ptr %5, align 4
  br i1 %21, label %24, label %23

23:                                               ; preds = %18
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %22) #14
  br label %25

24:                                               ; preds = %18
  tail call void @usb_autopm_put_interface(ptr noundef %22) #14
  br label %25

25:                                               ; preds = %24, %23, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc95xx_status(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.56, i32 noundef %4) #15
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 1
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @usbnet_defer_kevent(ptr noundef %0, i32 noundef 4) #14
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.57, i32 noundef %12) #15
  br label %19

19:                                               ; preds = %16, %15, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_link_reset(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #14, !srcloc !14
  unreachable

13:                                               ; preds = %1
  store i32 -1, ptr %8, align 4
  %14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !12
  %15 = icmp slt i32 %14, 0
  %16 = icmp ne i32 %14, -19
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 8, i32 noundef %14) #15
  br label %21

21:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %15, label %99, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.smsc95xx_priv, ptr %10, i32 0, i32 4
  %24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #14
  %25 = getelementptr inbounds %struct.smsc95xx_priv, ptr %10, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.phy_device, ptr %26, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  %30 = load i32, ptr %10, align 4
  %31 = and i32 %30, -9437185
  %32 = select i1 %29, i32 1048576, i32 8388608
  %33 = or i32 %31, %32
  store i32 %33, ptr %10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #14
  %34 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %34, ptr %7, align 4
  %35 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %36 = icmp slt i32 %35, 0
  %37 = icmp ne i32 %35, -19
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %35) #15
  br label %42

42:                                               ; preds = %39, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %36, label %99, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #14
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %45 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = icmp eq i32 %45, -19
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef 44, i32 noundef %45) #15
  br label %52

52:                                               ; preds = %49, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %92

53:                                               ; preds = %43
  %54 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %55 = getelementptr inbounds %struct.smsc95xx_priv, ptr %44, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.phy_device, ptr %56, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  call void @phy_get_pause(ptr noundef %56, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %61 = load i8, ptr %6, align 1, !range !16
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 0, i32 -65534
  %64 = load i8, ptr %5, align 1, !range !16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = or i32 %54, 15
  %68 = or i32 %63, -65536
  br label %73

69:                                               ; preds = %60
  %70 = and i32 %54, -16
  br label %73

71:                                               ; preds = %53
  %72 = or i32 %54, 15
  br label %73

73:                                               ; preds = %71, %69, %66
  %74 = phi i32 [ %70, %69 ], [ %67, %66 ], [ %72, %71 ]
  %75 = phi i32 [ %63, %69 ], [ %68, %66 ], [ 0, %71 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %75, ptr %3, align 4
  %76 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 284, ptr noundef nonnull %3, i16 noundef zeroext 4) #14, !callees !12
  %77 = icmp slt i32 %76, 0
  %78 = icmp ne i32 %76, -19
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %82 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %82, ptr noundef nonnull @.str.21, i32 noundef 284, i32 noundef %76) #15
  br label %83

83:                                               ; preds = %80, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br i1 %77, label %92, label %84

84:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 %74, ptr %2, align 4
  %85 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !12
  %86 = icmp slt i32 %85, 0
  %87 = icmp ne i32 %85, -19
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %91 = load ptr, ptr %90, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.21, i32 noundef 44, i32 noundef %85) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  br label %95

92:                                               ; preds = %83, %52
  %93 = phi i32 [ %45, %52 ], [ %76, %83 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  br label %95

94:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  br i1 %86, label %95, label %99

95:                                               ; preds = %94, %92, %89
  %96 = phi i32 [ %93, %92 ], [ %85, %94 ], [ %85, %89 ]
  %97 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %98 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %98, ptr noundef nonnull @.str.58) #15
  br label %99

99:                                               ; preds = %95, %94, %42, %21
  %100 = phi i32 [ %14, %21 ], [ %35, %42 ], [ %96, %95 ], [ %85, %94 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_rx_fixup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp ult i32 %4, %9
  br i1 %10, label %126, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %126, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %15

15:                                               ; preds = %122, %13
  %16 = load ptr, ptr %14, align 4
  %17 = load i32, ptr %16, align 1
  %18 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 6) #14
  %19 = load ptr, ptr %14, align 4
  %20 = lshr i32 %17, 16
  %21 = and i32 %20, 16383
  %22 = sub nsw i32 2, %20
  %23 = and i32 %22, 3
  %24 = and i32 %17, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26, !prof !17

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  %35 = and i32 %17, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 12
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8
  br label %118

42:                                               ; preds = %26
  %43 = and i32 %17, 2176
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = and i32 %17, 4128
  %52 = icmp eq i32 %51, 4096
  br i1 %52, label %53, label %118

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 10
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  br label %118

58:                                               ; preds = %15
  %59 = icmp ugt i32 %21, 1526
  br i1 %59, label %126, label %60, !prof !9

60:                                               ; preds = %58
  %61 = load i32, ptr %3, align 8
  %62 = icmp eq i32 %61, %21
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 23
  %66 = load i64, ptr %65, align 16
  %67 = and i64 %66, 1099511627776
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i32 -2
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, -97
  %79 = or i16 %78, 64
  store i16 %79, ptr %76, align 8
  %80 = add nsw i32 %21, -2
  tail call void @skb_trim(ptr noundef %1, i32 noundef %80) #14
  %81 = load i32, ptr %3, align 8
  br label %82

82:                                               ; preds = %69, %63
  %83 = phi i32 [ %81, %69 ], [ %21, %63 ]
  %84 = add i32 %83, -4
  tail call void @skb_trim(ptr noundef %1, i32 noundef %84) #14
  %85 = add nuw nsw i32 %21, 176
  %86 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  store i32 %85, ptr %86, align 8
  br label %126

87:                                               ; preds = %60
  %88 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92, !prof !9

90:                                               ; preds = %87
  %91 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.59) #15
  br label %126

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 5
  store i32 %21, ptr %93, align 8
  %94 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 17
  store ptr %19, ptr %94, align 4
  %95 = getelementptr i8, ptr %19, i32 %21
  %96 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 14
  store ptr %95, ptr %96, align 8
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 23
  %99 = load i64, ptr %98, align 16
  %100 = and i64 %99, 1099511627776
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %92
  %103 = getelementptr i8, ptr %95, i32 -2
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 13, i32 0, i32 4
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 13
  %108 = load i16, ptr %107, align 8
  %109 = and i16 %108, -97
  %110 = or i16 %109, 64
  store i16 %110, ptr %107, align 8
  %111 = add nsw i32 %21, -2
  tail call void @skb_trim(ptr noundef nonnull %88, i32 noundef %111) #14
  %112 = load i32, ptr %93, align 8
  br label %113

113:                                              ; preds = %102, %92
  %114 = phi i32 [ %112, %102 ], [ %21, %92 ]
  %115 = add i32 %114, -4
  tail call void @skb_trim(ptr noundef nonnull %88, i32 noundef %115) #14
  %116 = add nuw nsw i32 %21, 176
  %117 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 18
  store i32 %116, ptr %117, align 8
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef nonnull %88) #14
  br label %118

118:                                              ; preds = %113, %53, %50, %37
  %119 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %21) #14
  %120 = load i32, ptr %3, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %23) #14
  %124 = load i32, ptr %3, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %15

126:                                              ; preds = %122, %118, %90, %82, %58, %11, %2
  %127 = phi i32 [ 0, %2 ], [ 0, %90 ], [ 1, %82 ], [ 1, %11 ], [ 1, %118 ], [ 1, %122 ], [ 0, %58 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @smsc95xx_tx_fixup(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 96
  %7 = icmp eq i16 %6, 96
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !17

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1909, 0\0A.popsection", ""() #14, !srcloc !18
  unreachable

14:                                               ; preds = %3
  %15 = select i1 %7, i32 12, i32 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 65535
  %24 = ashr i32 %22, 16
  %25 = sub nsw i32 %23, %24
  %26 = icmp ne i32 %25, 1
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %20, %14
  %29 = phi i32 [ %27, %20 ], [ 0, %14 ]
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %31 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %36) #14
  %38 = or i32 %37, %29
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = add nuw nsw i32 %37, 63
  %42 = and i32 %41, 64
  %43 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %42, i32 noundef 0, i32 noundef 2592) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  br label %113

46:                                               ; preds = %40, %28
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = or i32 %48, 12288
  br i1 %7, label %50, label %108

50:                                               ; preds = %46
  %51 = icmp ult i32 %48, 46
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %53 = load i16, ptr %52, align 4
  br i1 %51, label %54, label %60

54:                                               ; preds = %50
  %55 = load ptr, ptr %30, align 4
  %56 = load ptr, ptr %32, align 8
  %57 = zext i16 %53 to i32
  %58 = ptrtoint ptr %55 to i32
  %59 = ptrtoint ptr %56 to i32
  br label %74

60:                                               ; preds = %50
  %61 = zext i16 %53 to i32
  %62 = load ptr, ptr %30, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = load ptr, ptr %32, align 8
  %65 = ptrtoint ptr %64 to i32
  %66 = getelementptr inbounds %struct.anon.50, ptr %52, i32 0, i32 1
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = add i32 %48, -5
  %70 = add i32 %69, %63
  %71 = add i32 %61, %65
  %72 = sub i32 %70, %71
  %73 = icmp ugt i32 %72, %68
  br i1 %73, label %95, label %74

74:                                               ; preds = %60, %54
  %75 = phi i32 [ %59, %54 ], [ %65, %60 ]
  %76 = phi i32 [ %58, %54 ], [ %63, %60 ]
  %77 = phi i32 [ %57, %54 ], [ %61, %60 ]
  %78 = phi ptr [ %55, %54 ], [ %62, %60 ]
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %80 = sub i32 %77, %76
  %81 = add i32 %80, %75
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = sub i32 %48, %81
  %84 = tail call i32 @csum_partial(ptr noundef %82, i32 noundef %83, i32 noundef 0) #14
  %85 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %84) #17, !srcloc !19
  %86 = xor i32 %85, -1
  %87 = lshr i32 %86, 16
  %88 = trunc i32 %87 to i16
  %89 = load ptr, ptr %30, align 4
  %90 = getelementptr i8, ptr %89, i32 %81
  %91 = getelementptr inbounds %struct.anon.50, ptr %79, i32 0, i32 1
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = getelementptr i8, ptr %90, i32 %93
  store i16 %88, ptr %94, align 2
  br label %108

95:                                               ; preds = %60
  %96 = sub i32 %61, %63
  %97 = add i32 %96, %65
  %98 = and i32 %97, 65535
  %99 = trunc i32 %97 to i16
  %100 = add i16 %67, %99
  %101 = zext i16 %100 to i32
  %102 = shl nuw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #14
  store i32 %103, ptr %104, align 1
  %105 = add i32 %49, 4
  %106 = add i32 %48, 4
  %107 = or i32 %106, 16384
  br label %108

108:                                              ; preds = %95, %74, %46
  %109 = phi i32 [ %105, %95 ], [ %49, %74 ], [ %49, %46 ]
  %110 = phi i32 [ %107, %95 ], [ %48, %74 ], [ %48, %46 ]
  %111 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 8) #14
  store i32 %109, ptr %111, align 1
  %112 = getelementptr i8, ptr %111, i32 4
  store i32 %110, ptr %112, align 1
  br label %113

113:                                              ; preds = %108, %45
  %114 = phi ptr [ null, %45 ], [ %1, %108 ]
  ret ptr %114
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_mdiobus_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %10) #14
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = icmp eq ptr %9, null
  %13 = add i32 %11, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  br i1 %12, label %17, label %14, !prof !9

14:                                               ; preds = %3
  %15 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %29

17:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

18:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %19 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %15, %14 ], [ %19, %18 ]
  %23 = icmp eq i32 %22, -19
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %22) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %28 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.20) #15
  br label %37

29:                                               ; preds = %18, %14
  %30 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = sub i32 %13, %34
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %18, label %37

37:                                               ; preds = %33, %25
  %38 = phi i32 [ %22, %25 ], [ -5, %33 ]
  %39 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_read) #15
  br label %103

41:                                               ; preds = %29, %24
  %42 = shl i32 %1, 11
  %43 = and i32 %42, 63488
  %44 = shl i32 %2, 6
  %45 = and i32 %44, 1984
  %46 = or i32 %43, %45
  %47 = or i32 %46, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 %47, ptr %6, align 4
  %48 = call i32 @usbnet_write_cmd(ptr noundef nonnull %9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %49 = icmp slt i32 %48, 0
  %50 = icmp ne i32 %48, -19
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %48) #15
  br label %55

55:                                               ; preds = %52, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %49, label %56, label %61

56:                                               ; preds = %55
  %57 = icmp eq i32 %48, -19
  br i1 %57, label %102, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.17) #15
  br label %103

61:                                               ; preds = %55
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = add i32 %62, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %64 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %77

66:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %67 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %64, %61 ], [ %67, %66 ]
  %71 = icmp eq i32 %70, -19
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %89

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %75 = load ptr, ptr %74, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %70) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %76 = load ptr, ptr %74, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %76, ptr noundef nonnull @.str.20) #15
  br label %85

77:                                               ; preds = %66, %61
  %78 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = sub i32 %63, %82
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %66, label %85

85:                                               ; preds = %81, %73
  %86 = phi i32 [ %70, %73 ], [ -5, %81 ]
  %87 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %88 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %88, ptr noundef nonnull @.str.18, i32 noundef %2) #15
  br label %103

89:                                               ; preds = %77, %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %90 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = icmp eq i32 %90, -19
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %102

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.usbnet, ptr %9, i32 0, i32 19
  %97 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %97, ptr noundef nonnull @.str.22, i32 noundef 280, i32 noundef %90) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %98 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %98, ptr noundef nonnull @.str.19) #15
  br label %103

99:                                               ; preds = %89
  %100 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %101 = and i32 %100, 65535
  call void @mutex_unlock(ptr noundef %10) #14
  br label %107

102:                                              ; preds = %94, %56
  call void @mutex_unlock(ptr noundef %10) #14
  br label %106

103:                                              ; preds = %95, %85, %58, %37
  %104 = phi i32 [ %38, %37 ], [ %48, %58 ], [ %86, %85 ], [ %90, %95 ]
  call void @mutex_unlock(ptr noundef %10) #14
  %105 = icmp eq i32 %104, -19
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %103, %99
  %108 = phi i32 [ 0, %106 ], [ %104, %103 ], [ %101, %99 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_mdiobus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = zext i16 %3 to i32
  %12 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %12) #14
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = icmp eq ptr %10, null
  %15 = add i32 %13, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  br i1 %14, label %19, label %16, !prof !9

16:                                               ; preds = %4
  %17 = call i32 @usbnet_read_cmd(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %31

19:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

20:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %21 = call i32 @usbnet_read_cmd(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %8, i16 noundef zeroext 4) #14, !callees !11
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %17, %16 ], [ %21, %20 ]
  %25 = icmp eq i32 %24, -19
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %42

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %24) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %30 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.20) #15
  br label %39

31:                                               ; preds = %20, %16
  %32 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %15, %36
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %20, label %39

39:                                               ; preds = %35, %27
  %40 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.__smsc95xx_mdio_write) #15
  br label %103

42:                                               ; preds = %31, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %11, ptr %7, align 4
  %43 = call i32 @usbnet_write_cmd(ptr noundef nonnull %10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %7, i16 noundef zeroext 4) #14, !callees !12
  %44 = icmp slt i32 %43, 0
  %45 = icmp ne i32 %43, -19
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %49 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.21, i32 noundef 280, i32 noundef %43) #15
  br label %50

50:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br i1 %44, label %51, label %56

51:                                               ; preds = %50
  %52 = icmp eq i32 %43, -19
  br i1 %52, label %103, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.25) #15
  br label %103

56:                                               ; preds = %50
  %57 = shl i32 %1, 11
  %58 = and i32 %57, 63488
  %59 = shl i32 %2, 6
  %60 = and i32 %59, 1984
  %61 = or i32 %58, %60
  %62 = or i32 %61, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 %62, ptr %6, align 4
  %63 = call i32 @usbnet_write_cmd(ptr noundef nonnull %10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %64 = icmp slt i32 %63, 0
  %65 = icmp ne i32 %63, -19
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %69 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %69, ptr noundef nonnull @.str.21, i32 noundef 276, i32 noundef %63) #15
  br label %70

70:                                               ; preds = %67, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %64, label %71, label %76

71:                                               ; preds = %70
  %72 = icmp eq i32 %63, -19
  br i1 %72, label %103, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %75 = load ptr, ptr %74, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.17) #15
  br label %103

76:                                               ; preds = %70
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = add i32 %77, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %79 = call i32 @usbnet_read_cmd(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %84, label %92

81:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %82 = call i32 @usbnet_read_cmd(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 276, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81, %76
  %85 = phi i32 [ %79, %76 ], [ %82, %81 ]
  %86 = icmp eq i32 %85, -19
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %103

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %90 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %90, ptr noundef nonnull @.str.22, i32 noundef 276, i32 noundef %85) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %91 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.20) #15
  br label %100

92:                                               ; preds = %81, %76
  %93 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = sub i32 %78, %97
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %81, label %100

100:                                              ; preds = %96, %88
  %101 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %102 = load ptr, ptr %101, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %102, ptr noundef nonnull @.str.26, i32 noundef %2) #15
  br label %103

103:                                              ; preds = %100, %92, %87, %73, %71, %53, %51, %39
  call void @mutex_unlock(ptr noundef %12) #14
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc95xx_handle_link_change(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  tail call void @phy_print_status(ptr noundef %4) #14
  tail call void @usbnet_defer_kevent(ptr noundef %2, i32 noundef 11) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_read_eeprom(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #14, !srcloc !20
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #14, !srcloc !21
  unreachable

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef nonnull %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %19

19:                                               ; preds = %42, %17
  %20 = phi i32 [ 0, %17 ], [ %47, %42 ]
  %21 = phi i32 [ %1, %17 ], [ %46, %42 ]
  %22 = and i32 %21, 511
  %23 = or i32 %22, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 %23, ptr %6, align 4
  %24 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %25 = icmp slt i32 %24, 0
  %26 = icmp ne i32 %24, -19
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %24) #15
  br label %30

30:                                               ; preds = %28, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %25, label %49, label %31

31:                                               ; preds = %30
  %32 = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %0)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %35 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = icmp eq i32 %35, -19
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.22, i32 noundef 52, i32 noundef %35) #15
  br label %41

41:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %49

42:                                               ; preds = %34
  %43 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %3, i32 %20
  store i8 %44, ptr %45, align 1
  %46 = add i32 %21, 1
  %47 = add nuw i32 %20, 1
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %53, label %19

49:                                               ; preds = %41, %30
  %50 = phi ptr [ @.str.46, %41 ], [ @.str.45, %30 ]
  %51 = phi i32 [ %35, %41 ], [ %24, %30 ]
  %52 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull %50) #15
  br label %53

53:                                               ; preds = %49, %42, %31, %15, %12
  %54 = phi i32 [ %13, %12 ], [ 0, %15 ], [ %51, %49 ], [ %32, %31 ], [ 0, %42 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq ptr %0, null
  %5 = add i32 %3, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  br i1 %4, label %9, label %6, !prof !9

6:                                                ; preds = %1
  %7 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %20

9:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

10:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %7, %6 ], [ %11, %10 ]
  %15 = icmp eq i32 %14, -19
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef 48, i32 noundef %14) #15
  br label %19

19:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %28

20:                                               ; preds = %10, %6
  %21 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 8589920) #14
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %5, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %10, label %28

28:                                               ; preds = %23, %19
  %29 = phi ptr [ @.str.47, %19 ], [ @.str.48, %23 ]
  %30 = phi i32 [ %14, %19 ], [ -5, %23 ]
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull %29) #15
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi i32 [ %30, %28 ], [ 0, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc95xx_wait_eeprom(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq ptr %0, null
  %5 = add i32 %3, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  br i1 %4, label %9, label %6, !prof !9

6:                                                ; preds = %1
  %7 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %20

9:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

10:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %2, i16 noundef zeroext 4) #14, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %7, %6 ], [ %11, %10 ]
  %15 = icmp eq i32 %14, -19
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef 48, i32 noundef %14) #15
  br label %19

19:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %28

20:                                               ; preds = %10, %6
  %21 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %22 = and i32 %21, -2147482624
  switch i32 %22, label %28 [
    i32 -2147483648, label %23
    i32 0, label %33
  ]

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 8589920) #14
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %5, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %10, label %28

28:                                               ; preds = %23, %20, %19
  %29 = phi ptr [ @.str.47, %19 ], [ @.str.49, %20 ], [ @.str.49, %23 ]
  %30 = phi i32 [ %14, %19 ], [ -5, %20 ], [ -5, %23 ]
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull %29) #15
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi i32 [ %30, %28 ], [ %22, %20 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @phy_mii_ioctl(ptr noundef %10, ptr noundef %1, i32 noundef %2) #14
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc95xx_ethtool_getregslen(ptr nocapture noundef readnone %0) #10 {
  ret i32 308
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc95xx_ethtool_getregs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

10:                                               ; preds = %3
  %11 = call i32 @usbnet_read_cmd(ptr noundef nonnull %6, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = icmp eq i32 %11, -19
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i32 1512
  %17 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %11) #15
  br label %20

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4
  store i32 %19, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %21

20:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.50) #15
  br label %39

21:                                               ; preds = %33, %18
  %22 = phi i32 [ 0, %18 ], [ %37, %33 ]
  %23 = phi i32 [ 0, %18 ], [ %36, %33 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %24 = trunc i32 %23 to i16
  %25 = call i32 @usbnet_read_cmd(ptr noundef nonnull %6, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %24, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = icmp eq i32 %25, -19
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %0, i32 1512
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.22, i32 noundef %23, i32 noundef %25) #15
  br label %32

32:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %23) #15
  br label %39

33:                                               ; preds = %21
  %34 = getelementptr i32, ptr %2, i32 %22
  %35 = load i32, ptr %4, align 4
  store i32 %35, ptr %34, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %36 = add nuw nsw i32 %23, 4
  %37 = add nuw nsw i32 %22, 1
  %38 = icmp eq i32 %37, 77
  br i1 %38, label %39, label %21

39:                                               ; preds = %33, %32, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @smsc95xx_ethtool_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 1424
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 63, ptr %5, align 4
  %6 = getelementptr inbounds %struct.smsc95xx_priv, ptr %4, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_set_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.smsc95xx_priv, ptr %9, i32 0, i32 3
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %13 = icmp ne i32 %4, 0
  %14 = tail call i32 @device_set_wakeup_enable(ptr noundef %12, i1 noundef zeroext %13) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %0, i32 1512
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.52, i32 noundef %14) #15
  br label %19

19:                                               ; preds = %16, %6, %2
  %20 = phi i32 [ -22, %2 ], [ %14, %16 ], [ %14, %6 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_get_link(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef %3) #14
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 @genphy_read_status(ptr noundef %3) #14
  br label %15

15:                                               ; preds = %13, %11, %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.phy_device, ptr %16, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = lshr i16 %18, 13
  %20 = and i16 %19, 1
  %21 = zext i16 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc95xx_ethtool_get_eeprom_len(ptr nocapture noundef readnone %0) #10 {
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 38144, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @smsc95xx_read_eeprom(ptr noundef %4, i32 noundef %7, i32 noundef %9, ptr noundef %2)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc95xx_ethtool_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 38144
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 1512
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.53, i32 noundef %9) #15
  br label %80

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq ptr %7, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 395, 0\0A.popsection", ""() #14, !srcloc !22
  unreachable

21:                                               ; preds = %14
  %22 = icmp eq ptr %2, null
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc95xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #14, !srcloc !23
  unreachable

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @smsc95xx_eeprom_confirm_not_busy(ptr noundef nonnull %7) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 -1610612736, ptr %6, align 4
  %28 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %6, i16 noundef zeroext 4) #14, !callees !12
  %29 = icmp slt i32 %28, 0
  %30 = icmp ne i32 %28, -19
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %0, i32 1512
  %34 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %28) #15
  br label %35

35:                                               ; preds = %32, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %29, label %36, label %38

36:                                               ; preds = %35
  %37 = getelementptr i8, ptr %0, i32 1512
  br label %75

38:                                               ; preds = %35
  %39 = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %7) #14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = icmp eq i32 %18, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 1512
  br label %45

45:                                               ; preds = %71, %43
  %46 = phi i32 [ 0, %43 ], [ %73, %71 ]
  %47 = phi i32 [ %16, %43 ], [ %72, %71 ]
  %48 = getelementptr i8, ptr %2, i32 %46
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %50, ptr %5, align 4
  %51 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %5, i16 noundef zeroext 4) #14, !callees !12
  %52 = icmp slt i32 %51, 0
  %53 = icmp ne i32 %51, -19
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.21, i32 noundef 52, i32 noundef %51) #15
  br label %57

57:                                               ; preds = %55, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br i1 %52, label %75, label %58

58:                                               ; preds = %57
  %59 = and i32 %47, 511
  %60 = or i32 %59, -1342177280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %60, ptr %4, align 4
  %61 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %4, i16 noundef zeroext 4) #14, !callees !12
  %62 = icmp slt i32 %61, 0
  %63 = icmp ne i32 %61, -19
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.21, i32 noundef 48, i32 noundef %61) #15
  br label %67

67:                                               ; preds = %65, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br i1 %62, label %75, label %68

68:                                               ; preds = %67
  %69 = call fastcc i32 @smsc95xx_wait_eeprom(ptr noundef nonnull %7) #14
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = add i32 %47, 1
  %73 = add nuw i32 %46, 1
  %74 = icmp eq i32 %73, %18
  br i1 %74, label %80, label %45

75:                                               ; preds = %67, %57, %36
  %76 = phi ptr [ %37, %36 ], [ %44, %57 ], [ %44, %67 ]
  %77 = phi ptr [ @.str.54, %36 ], [ @.str.45, %67 ], [ @.str.54, %57 ]
  %78 = phi i32 [ %28, %36 ], [ %61, %67 ], [ %51, %57 ]
  %79 = load ptr, ptr %76, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull %77) #15
  br label %80

80:                                               ; preds = %75, %71, %68, %41, %38, %24, %11
  %81 = phi i32 [ -22, %11 ], [ %25, %24 ], [ %39, %38 ], [ 0, %41 ], [ %78, %75 ], [ 0, %71 ], [ %69, %68 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_get_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly willreturn }

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
!10 = !{i64 2155419058, i64 2155419548, i64 2155419095, i64 2155419151, i64 2155419185, i64 2155419209, i64 2155419250, i64 2155419271, i64 2155419299, i64 2155419333}
!11 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!12 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!13 = !{i64 7132373}
!14 = !{i64 2155420196, i64 2155420687, i64 2155420233, i64 2155420289, i64 2155420323, i64 2155420347, i64 2155420388, i64 2155420409, i64 2155420437, i64 2155420471}
!15 = !{i64 2155457512, i64 2155458004, i64 2155457549, i64 2155457605, i64 2155457639, i64 2155457663, i64 2155457704, i64 2155457725, i64 2155457753, i64 2155457787}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2155460829, i64 2155461321, i64 2155460866, i64 2155460922, i64 2155460956, i64 2155460980, i64 2155461021, i64 2155461042, i64 2155461070, i64 2155461104}
!19 = !{i64 5746838}
!20 = !{i64 2155423995, i64 2155424486, i64 2155424032, i64 2155424088, i64 2155424122, i64 2155424146, i64 2155424187, i64 2155424208, i64 2155424236, i64 2155424270}
!21 = !{i64 2155425018, i64 2155425509, i64 2155425055, i64 2155425111, i64 2155425145, i64 2155425169, i64 2155425210, i64 2155425231, i64 2155425259, i64 2155425293}
!22 = !{i64 2155426092, i64 2155426583, i64 2155426129, i64 2155426185, i64 2155426219, i64 2155426243, i64 2155426284, i64 2155426305, i64 2155426333, i64 2155426367}
!23 = !{i64 2155427115, i64 2155427606, i64 2155427152, i64 2155427208, i64 2155427242, i64 2155427266, i64 2155427307, i64 2155427328, i64 2155427356, i64 2155427390}
