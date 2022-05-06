; ModuleID = '/llk/IR/drivers/net/usb/asix_devices.c_pt.bc'
source_filename = "../drivers/net/usb/asix_devices.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.asix_common_private = type { ptr, ptr, i16, i16, %struct.asix_rx_fixup_info, ptr, ptr, i16, [20 x i8], i8 }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
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
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ax88172_int_data = type <{ i16, i8, i16, i8, i16 }>
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.96, %union.anon.97 }
%union.anon.96 = type { [16 x i8] }
%union.anon.97 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.asix_data = type { [8 x i8], [6 x i8], i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }

@__initcall__kmod_asix__337_1431_asix_driver_init6 = internal global ptr @asix_driver_init, section ".initcall6.init", align 4
@asix_driver = internal global %struct.usb_driver { ptr @.str.1, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @asix_suspend, ptr @asix_resume, ptr @asix_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_asix_driver_exit = internal global ptr @asix_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [25 x i8] c"asix.author=David Hollis\00", section ".modinfo", align 1
@__UNIQUE_ID_version339 = internal constant [25 x i8] c"asix.version=22-Dec-2011\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"asix\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"22-Dec-2011\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description340 = internal constant [61 x i8] c"asix.description=ASIX AX8817X based USB 2.0 Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [31 x i8] c"asix.file=drivers/net/usb/asix\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [17 x i8] c"asix.license=GPL\00", section ".modinfo", align 1
@products = internal constant [38 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1915, i16 8742, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @netgear_fa120_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 6656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dlink_dub_e100_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 5920, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1976, i16 16906, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @hawking_uf200_info to i32) }, %struct.usb_device_id { i16 3, i16 2269, i16 -28417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 2269, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1367, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1041, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1041, i16 110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 24969, i16 6189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 86, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 1564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1962, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 4489, i16 2195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 5681, i16 25088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1265, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 6127, i16 29187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30507, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 6016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1929, i16 352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 5041, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5463, i16 30496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2001, i16 15365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 15365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 6658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5943, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1211, i16 2352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 20565, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1452, i16 5122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30506, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5354, i16 -21743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 3504, i16 -22409, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 32299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 5930, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88172a_info to i32) }, %struct.usb_device_id { i16 3, i16 1643, i16 8441, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @hg20f9_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@ax8817x_info = internal constant %struct.driver_info { ptr @.str.3, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1245443 }, align 4
@netgear_fa120_info = internal constant %struct.driver_info { ptr @.str.6, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1245443 }, align 4
@dlink_dub_e100_info = internal constant %struct.driver_info { ptr @.str.7, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 10460575 }, align 4
@hawking_uf200_info = internal constant %struct.driver_info { ptr @.str.8, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 2039071 }, align 4
@ax88178_info = internal constant %struct.driver_info { ptr @.str.9, i32 10336, ptr @ax88178_bind, ptr @ax88178_unbind, ptr @ax88178_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88178_link_reset, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@ax88772b_info = internal constant %struct.driver_info { ptr @.str.10, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr @ax88772_stop, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, align 4
@ax88772_info = internal constant %struct.driver_info { ptr @.str.15, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr @ax88772_stop, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@ax88172a_info = external dso_local constant %struct.driver_info, align 4
@hg20f9_info = internal constant %struct.driver_info { ptr @.str.16, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ASIX AX8817x USB 2.0 Ethernet\00", align 1
@ax88172_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @ax88172_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @asix_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88172_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @asix_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid hw address, using random\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"BMCR_RESET timeout on phy_id %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Netgear FA-120 USB Ethernet\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"DLink DUB-E100 USB Ethernet\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Hawking UF200 USB Ethernet\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"ASIX AX88178 USB 2.0 Ethernet\00", align 1
@ax88178_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @asix_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ax88178_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88178_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @asix_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"ASIX AX88772B USB 2.0 Ethernet\00", align 1
@ax88772_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88772_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @usbnet_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_selftest, ptr @ax88772_ethtool_get_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88772_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Asix MDIO Bus\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Could not connect to PHY device %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"ASIX AX88772 USB 2.0 Ethernet\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"HG20F9 USB 2.0 Ethernet\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__UNIQUE_ID_version339, ptr @__exitcall_asix_driver_exit, ptr @__initcall__kmod_asix__337_1431_asix_driver_init6, ptr @__modver_attr, ptr @asix_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @asix_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @asix_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @asix_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @asix_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_suspend(ptr noundef %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.asix_common_private, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %4) #11
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = tail call i32 @usbnet_suspend(ptr noundef %0, [1 x i32] %1) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void %8(ptr noundef %3) #11
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = tail call i32 @usbnet_resume(ptr noundef %0) #11
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.driver_info, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #11
  %9 = lshr i32 %7, 16
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 255
  %12 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 31, i16 noundef zeroext %11, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %2
  tail call void @msleep(i32 noundef 5) #11
  %15 = trunc i32 %7 to i16
  %16 = lshr i16 %15, 8
  %17 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 31, i16 noundef zeroext %16, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  tail call void @msleep(i32 noundef 5) #11
  %20 = trunc i32 %7 to i16
  %21 = and i16 %20, 255
  %22 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 31, i16 noundef zeroext %21, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %19
  tail call void @msleep(i32 noundef 5) #11
  %25 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 128, i32 noundef 0) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %24
  %28 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 23, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %3, i32 noundef 0) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %27
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %0, ptr noundef nonnull %3)
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %34 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 5
  store ptr %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 6
  store ptr @asix_mdio_read, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 7
  store ptr @asix_mdio_write, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 2
  store i32 63, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 3
  store i32 31, ptr %38, align 4
  %39 = call i32 @asix_read_phy_addr(ptr noundef %0, i1 noundef zeroext true) #11
  store i32 %39, ptr %33, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 16
  store ptr @ax88172_netdev_ops, ptr %43, align 8
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 42
  store ptr @ax88172_ethtool_ops, ptr %45, align 8
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 21
  store i16 4, ptr %47, align 8
  %48 = load ptr, ptr %31, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 22
  store i16 4, ptr %49, align 2
  %50 = load ptr, ptr %31, align 4
  %51 = load i32, ptr %33, align 4
  call void @asix_mdio_write(ptr noundef %50, i32 noundef %51, i32 noundef 0, i32 noundef 32768) #11
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 107374000) #11
  br label %53

53:                                               ; preds = %60, %41
  %54 = phi i32 [ 4999, %41 ], [ %62, %60 ]
  %55 = load ptr, ptr %31, align 4
  %56 = load i32, ptr %33, align 4
  %57 = call i32 @asix_mdio_read(ptr noundef %55, i32 noundef %56, i32 noundef 0) #11
  %58 = and i32 %57, 32768
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 21474800) #11
  %62 = add nsw i32 %54, -1
  %63 = icmp eq i32 %54, 0
  br i1 %63, label %64, label %53

64:                                               ; preds = %60
  %65 = load ptr, ptr %31, align 4
  %66 = load i32, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.5, i32 noundef %66) #12
  br label %67

67:                                               ; preds = %64, %53
  %68 = load ptr, ptr %31, align 4
  %69 = load i32, ptr %33, align 4
  call void @asix_mdio_write(ptr noundef %68, i32 noundef %69, i32 noundef 4, i32 noundef 1505) #11
  %70 = call i32 @mii_nway_restart(ptr noundef %33) #11
  br label %71

71:                                               ; preds = %67, %30, %27, %24, %19, %14, %2
  %72 = phi i32 [ 0, %67 ], [ %39, %30 ], [ %25, %24 ], [ %28, %27 ], [ %12, %2 ], [ %17, %14 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88172_link_reset(ptr noundef %0) #2 {
  %2 = alloca %struct.ethtool_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 40, i1 false)
  store i32 1, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %5 = tail call i32 @mii_check_media(ptr noundef %4, i32 noundef 1, i32 noundef 1) #11
  call void @mii_ethtool_gset(ptr noundef %4, ptr noundef nonnull %2) #11
  %6 = getelementptr inbounds %struct.ethtool_cmd, ptr %2, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 1
  %9 = select i1 %8, i8 22, i8 -1
  %10 = zext i8 %9 to i16
  %11 = call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext %10, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asix_status(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ax88172_int_data, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = and i8 %10, 1
  %18 = icmp eq i8 %17, 0
  %19 = xor i1 %18, %16
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = icmp ne i8 %17, 0
  tail call void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %21, i1 noundef zeroext true) #11
  br label %22

22:                                               ; preds = %20, %6, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_rx_ctl(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @asix_set_netdev_dev_addr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [6 x i8], align 1
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %4, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  tail call void @dev_addr_mod(ptr noundef %15, i32 noundef 0, ptr noundef %1, i32 noundef 6) #11
  br label %24

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.4) #12
  %19 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #11, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #11
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, -4
  %22 = or i8 %21, 2
  store i8 %22, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #11
  %23 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 50
  store i8 1, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  br label %24

24:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_mdio_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_phy_addr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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
define internal void @ax88172_set_multicast(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1520
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = and i32 %5, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 64
  br i1 %15, label %37, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %16
  store i64 0, ptr %3, align 1
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %36, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %34, %21 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.netdev_hw_addr, ptr %22, i32 0, i32 2
  %24 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %23, i32 noundef 6) #13
  %25 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %24) #14, !srcloc !9
  %26 = lshr i32 %25, 26
  %27 = and i32 %26, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %25, 29
  %30 = getelementptr [8 x i8], ptr %3, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = trunc i32 %28 to i8
  %33 = or i8 %31, %32
  store i8 %33, ptr %30, align 1
  %34 = load ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, %12
  br i1 %35, label %36, label %21

36:                                               ; preds = %21, %18
  tail call void @asix_write_cmd_async(ptr noundef %2, i8 noundef zeroext 22, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %3) #11
  br label %37

37:                                               ; preds = %36, %16, %11, %8, %1
  %38 = phi i8 [ -116, %16 ], [ -100, %36 ], [ -115, %1 ], [ -114, %11 ], [ -114, %8 ]
  %39 = zext i8 %38 to i16
  tail call void @asix_write_cmd_async(ptr noundef %2, i8 noundef zeroext 16, i16 noundef zeroext %39, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1552
  %5 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %6 = tail call i32 @generic_mii_ioctl(ptr noundef %4, ptr noundef %5, i32 noundef %2, ptr noundef null) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_write_cmd_async(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_get_link(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1552
  %3 = tail call i32 @mii_link_ok(ptr noundef %2) #11
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom_len(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_eeprom(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_medium_mode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88178_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  %4 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #11
  %5 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %3, i32 noundef 0) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %0, ptr noundef nonnull %3)
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 5
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 6
  store ptr @asix_mdio_read, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 7
  store ptr @asix_mdio_write, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 2
  store i32 31, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 3
  store i32 255, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = or i8 %17, 4
  store i8 %18, ptr %16, align 4
  %19 = call i32 @asix_read_phy_addr(ptr noundef %0, i1 noundef zeroext true) #11
  store i32 %19, ptr %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 16
  store ptr @ax88178_netdev_ops, ptr %23, align 8
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 42
  store ptr @ax88178_ethtool_ops, ptr %25, align 8
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 19
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 16380, %29
  %31 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 31
  store i32 %30, ptr %31, align 4
  %32 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #11
  call void @msleep(i32 noundef 150) #11
  %33 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 72, i32 noundef 0) #11
  call void @msleep(i32 noundef 150) #11
  %34 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.driver_info, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 2048, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 56) #15
  %45 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  %47 = select i1 %46, i32 -12, i32 0
  br label %48

48:                                               ; preds = %42, %7, %2
  %49 = phi i32 [ %5, %2 ], [ %19, %7 ], [ %47, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88178_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @asix_rx_fixup_common_free(ptr noundef %4) #11
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88178_reset(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  %5 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 30, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %3, i32 noundef 0) #11
  %6 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 13, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %7 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 11, i16 noundef zeroext 23, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #11
  %8 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %9 = load i16, ptr %2, align 2
  %10 = icmp eq i16 %9, -1
  %11 = trunc i16 %9 to i8
  %12 = and i8 %11, 127
  %13 = lshr i16 %9, 8
  %14 = trunc i16 %13 to i8
  %15 = select i1 %10, i8 0, i8 %12
  %16 = select i1 %10, i8 0, i8 %14
  %17 = getelementptr inbounds %struct.asix_data, ptr %4, i32 0, i32 2
  store i8 %15, ptr %17, align 1
  %18 = getelementptr inbounds %struct.asix_data, ptr %4, i32 0, i32 3
  store i8 %16, ptr %18, align 1
  %19 = call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 140, i32 noundef 40, i32 noundef 0) #11
  %20 = load i16, ptr %2, align 2
  %21 = and i16 %20, -256
  %22 = icmp eq i16 %21, 256
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 60, i32 noundef 30, i32 noundef 0) #11
  %25 = call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 28, i32 noundef 300, i32 noundef 0) #11
  br label %28

26:                                               ; preds = %1
  %27 = call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 4, i32 noundef 30, i32 noundef 0) #11
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i16 [ 12, %26 ], [ 60, %23 ]
  %30 = call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext %29, i32 noundef 30, i32 noundef 0) #11
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  br label %33

33:                                               ; preds = %40, %28
  %34 = phi i32 [ 0, %28 ], [ %42, %40 ]
  %35 = load ptr, ptr %31, align 4
  %36 = load i32, ptr %32, align 4
  %37 = call i32 @asix_mdio_read(ptr noundef %35, i32 noundef %36, i32 noundef 2) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  switch i32 %37, label %45 [
    i32 65535, label %40
    i32 0, label %40
  ]

40:                                               ; preds = %39, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #11
  %42 = add nuw nsw i32 %34, 1
  %43 = icmp eq i32 %42, 100
  br i1 %43, label %44, label %33

44:                                               ; preds = %40
  switch i32 %37, label %45 [
    i32 65535, label %49
    i32 0, label %49
  ]

45:                                               ; preds = %44, %39
  %46 = load ptr, ptr %31, align 4
  %47 = load i32, ptr %32, align 4
  %48 = call i32 @asix_mdio_read(ptr noundef %46, i32 noundef %47, i32 noundef 3) #11
  br label %49

49:                                               ; preds = %45, %44, %44, %33
  %50 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #11
  %51 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #11
  call void @msleep(i32 noundef 150) #11
  %52 = call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 72, i32 noundef 0) #11
  call void @msleep(i32 noundef 150) #11
  %53 = call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 0) #11
  %54 = load i8, ptr %17, align 1
  switch i8 %54, label %95 [
    i8 0, label %55
    i8 12, label %75
  ]

55:                                               ; preds = %49
  %56 = load ptr, ptr %31, align 4
  %57 = load i32, ptr %32, align 4
  %58 = call i32 @asix_mdio_read(ptr noundef %56, i32 noundef %57, i32 noundef 27) #11
  %59 = load ptr, ptr %31, align 4
  %60 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %59, i32 noundef %60, i32 noundef 20, i32 noundef 130) #11
  %61 = load i8, ptr %18, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %31, align 4
  %65 = load i32, ptr %32, align 4
  %66 = call i32 @asix_mdio_read(ptr noundef %64, i32 noundef %65, i32 noundef 24) #11
  %67 = and i32 %66, 63742
  %68 = or i32 %67, 257
  %69 = load ptr, ptr %31, align 4
  %70 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %69, i32 noundef %70, i32 noundef 24, i32 noundef %68) #11
  %71 = load ptr, ptr %31, align 4
  %72 = load i32, ptr %32, align 4
  %73 = call i32 @asix_mdio_read(ptr noundef %71, i32 noundef %72, i32 noundef 24) #11
  br label %74

74:                                               ; preds = %63, %55
  call void @msleep(i32 noundef 60) #11
  br label %95

75:                                               ; preds = %49
  %76 = load ptr, ptr %31, align 4
  %77 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %76, i32 noundef %77, i32 noundef 31, i32 noundef 5) #11
  %78 = load ptr, ptr %31, align 4
  %79 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %78, i32 noundef %79, i32 noundef 12, i32 noundef 0) #11
  %80 = load ptr, ptr %31, align 4
  %81 = load i32, ptr %32, align 4
  %82 = call i32 @asix_mdio_read(ptr noundef %80, i32 noundef %81, i32 noundef 1) #11
  %83 = or i32 %82, 128
  call void @asix_mdio_write(ptr noundef %80, i32 noundef %81, i32 noundef 1, i32 noundef %83) #11
  %84 = load ptr, ptr %31, align 4
  %85 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %84, i32 noundef %85, i32 noundef 31, i32 noundef 0) #11
  %86 = load i8, ptr %18, align 1
  %87 = icmp eq i8 %86, 12
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load ptr, ptr %31, align 4
  %90 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %89, i32 noundef %90, i32 noundef 31, i32 noundef 2) #11
  %91 = load ptr, ptr %31, align 4
  %92 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %91, i32 noundef %92, i32 noundef 26, i32 noundef 203) #11
  %93 = load ptr, ptr %31, align 4
  %94 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %93, i32 noundef %94, i32 noundef 31, i32 noundef 0) #11
  br label %95

95:                                               ; preds = %88, %75, %74, %49
  %96 = load ptr, ptr %31, align 4
  %97 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %96, i32 noundef %97, i32 noundef 0, i32 noundef 36864) #11
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 107374000) #11
  br label %99

99:                                               ; preds = %106, %95
  %100 = phi i32 [ 4999, %95 ], [ %108, %106 ]
  %101 = load ptr, ptr %31, align 4
  %102 = load i32, ptr %32, align 4
  %103 = call i32 @asix_mdio_read(ptr noundef %101, i32 noundef %102, i32 noundef 0) #11
  %104 = and i32 %103, 32768
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 21474800) #11
  %108 = add nsw i32 %100, -1
  %109 = icmp eq i32 %100, 0
  br i1 %109, label %110, label %99

110:                                              ; preds = %106
  %111 = load ptr, ptr %31, align 4
  %112 = load i32, ptr %32, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull @.str.5, i32 noundef %112) #12
  br label %113

113:                                              ; preds = %110, %99
  %114 = load ptr, ptr %31, align 4
  %115 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %114, i32 noundef %115, i32 noundef 4, i32 noundef 1505) #11
  %116 = load ptr, ptr %31, align 4
  %117 = load i32, ptr %32, align 4
  call void @asix_mdio_write(ptr noundef %116, i32 noundef %117, i32 noundef 9, i32 noundef 512) #11
  %118 = call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext 886, i32 noundef 0) #11
  %119 = call i32 @mii_nway_restart(ptr noundef %32) #11
  %120 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %121 = load ptr, ptr %31, align 4
  %122 = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 72
  %123 = load ptr, ptr %122, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %120, ptr noundef align 1 dereferenceable(6) %123, i32 6, i1 false)
  %124 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %120, i32 noundef 0) #11
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %113
  %127 = call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef 0) #11
  %128 = call i32 @llvm.smin.i32(i32 %127, i32 0)
  br label %129

129:                                              ; preds = %126, %113
  %130 = phi i32 [ %124, %113 ], [ %128, %126 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88178_link_reset(ptr noundef %0) #2 {
  %2 = alloca %struct.ethtool_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 40, i1 false)
  store i32 1, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %6 = tail call i32 @mii_check_media(ptr noundef %5, i32 noundef 1, i32 noundef 1) #11
  call void @mii_ethtool_gset(ptr noundef %5, ptr noundef nonnull %2) #11
  %7 = getelementptr inbounds %struct.ethtool_cmd, ptr %2, i32 0, i32 12
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = shl nuw i32 %9, 16
  %11 = getelementptr inbounds %struct.ethtool_cmd, ptr %2, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = or i32 %10, %13
  %15 = icmp eq i32 %14, 100
  %16 = select i1 %15, i16 894, i16 382
  %17 = icmp eq i32 %14, 1000
  %18 = select i1 %17, i16 895, i16 %16
  %19 = getelementptr inbounds %struct.ethtool_cmd, ptr %2, i32 0, i32 4
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 1
  %22 = and i16 %18, 893
  %23 = select i1 %21, i16 %18, i16 %22
  %24 = call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext %23, i32 noundef 0) #11
  %25 = getelementptr inbounds %struct.asix_data, ptr %4, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.asix_data, ptr %4, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %5, align 4
  %36 = call i32 @asix_mdio_read(ptr noundef %34, i32 noundef %35, i32 noundef 25) #11
  %37 = and i32 %36, 64527
  %38 = icmp eq i16 %12, 100
  %39 = select i1 %38, i32 944, i32 752
  %40 = icmp eq i16 %12, 1000
  %41 = select i1 %40, i32 992, i32 %39
  %42 = or i32 %37, %41
  %43 = load ptr, ptr %33, align 4
  %44 = load i32, ptr %5, align 4
  call void @asix_mdio_write(ptr noundef %43, i32 noundef %44, i32 noundef 25, i32 noundef %42) #11
  br label %45

45:                                               ; preds = %32, %28, %1
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_rx_fixup_common(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asix_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_sw_reset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_set_multicast(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_mac_address(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88178_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = add i32 %6, %1
  %8 = add i32 %7, 4
  %9 = getelementptr i8, ptr %0, i32 1484
  %10 = load i32, ptr %9, align 4
  %11 = urem i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 1544
  store i32 %7, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 1548
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %7, 2048
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = icmp ult i32 %7, 4096
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %7, 8192
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %7, 16384
  br i1 %24, label %25, label %28

25:                                               ; preds = %23, %21, %19, %13
  %26 = phi i32 [ 2048, %13 ], [ 4096, %19 ], [ 8192, %21 ], [ 16384, %23 ]
  %27 = phi i16 [ 0, %13 ], [ 256, %19 ], [ 512, %21 ], [ 768, %23 ]
  store i32 %26, ptr %16, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i16 [ 768, %23 ], [ %27, %25 ]
  %30 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %3, i32 noundef 0) #11
  %31 = and i16 %30, -769
  %32 = or i16 %31, %29
  %33 = tail call i32 @asix_write_rx_ctl(ptr noundef %3, i16 noundef zeroext %32, i32 noundef 0) #11
  %34 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %3, i32 noundef 0) #11
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 1500
  %40 = and i16 %34, -65
  %41 = select i1 %39, i16 64, i16 0
  %42 = or i16 %41, %40
  %43 = tail call i32 @asix_write_medium_mode(ptr noundef %3, i16 noundef zeroext %42, i32 noundef 0) #11
  %44 = load i32, ptr %16, align 4
  %45 = icmp ugt i32 %44, %17
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  tail call void @usbnet_unlink_rx_urbs(ptr noundef %3) #11
  br label %47

47:                                               ; preds = %46, %28
  tail call void @usbnet_update_max_qlen(ptr noundef %3) #11
  br label %48

48:                                               ; preds = %47, %2
  %49 = phi i32 [ 0, %47 ], [ -33, %2 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_update_max_qlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_medium_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_unlink_rx_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_rx_fixup_common_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_gpio(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88772_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 56, i32 noundef 3520) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %136, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  store ptr %7, ptr %10, align 4
  %11 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #11
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %14 = call i32 @eth_platform_get_mac_address(ptr noundef %13, ptr noundef nonnull %3) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %16
  %24 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 11, i16 noundef zeroext 4, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %136, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %3, i32 2
  %28 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 11, i16 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %27, i32 noundef 0) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %136, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  %32 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 11, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %31, i32 noundef 0) #11
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %136, label %37

34:                                               ; preds = %16
  %35 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %3, i32 noundef 0) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %136, label %37

37:                                               ; preds = %34, %30, %9
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %0, ptr noundef nonnull %3)
  %38 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 16
  store ptr @ax88772_netdev_ops, ptr %40, align 8
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 42
  store ptr @ax88772_ethtool_ops, ptr %42, align 8
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 21
  store i16 4, ptr %44, align 8
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 22
  store i16 4, ptr %46, align 2
  %47 = call i32 @asix_read_phy_addr(ptr noundef %0, i1 noundef zeroext true) #11
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %136, label %49

49:                                               ; preds = %37
  %50 = trunc i32 %47 to i16
  %51 = getelementptr inbounds %struct.asix_common_private, ptr %7, i32 0, i32 7
  store i16 %50, ptr %51, align 4
  %52 = and i32 %47, 31
  %53 = icmp eq i32 %52, 16
  %54 = getelementptr inbounds %struct.asix_common_private, ptr %7, i32 0, i32 9
  %55 = zext i1 %53 to i8
  store i8 %55, ptr %54, align 2
  %56 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %4, i32 noundef 0) #11
  %57 = load i8, ptr %4, align 1
  %58 = and i8 %57, 112
  store i8 %58, ptr %4, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call fastcc i32 @ax88772_hw_reset(ptr noundef %0, i32 noundef 0)
  br label %64

62:                                               ; preds = %49
  %63 = call fastcc i32 @ax88772a_hw_reset(ptr noundef %0, i32 noundef 0)
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %136, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.driver_info, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 2048, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = getelementptr inbounds %struct.asix_common_private, ptr %7, i32 0, i32 3
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.asix_common_private, ptr %7, i32 0, i32 2
  store i16 0, ptr %78, align 4
  %79 = load i8, ptr %4, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, ptr @ax88772_resume, ptr @ax88772a_resume
  store ptr %81, ptr %7, align 4
  %82 = getelementptr inbounds %struct.asix_common_private, ptr %7, i32 0, i32 1
  store ptr @ax88772_suspend, ptr %82, align 4
  %83 = load ptr, ptr %10, align 4
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr inbounds %struct.usb_device, ptr %84, i32 0, i32 15
  %86 = call ptr @devm_mdiobus_alloc_size(ptr noundef %85, i32 noundef 0) #11
  %87 = getelementptr inbounds %struct.asix_common_private, ptr %83, i32 0, i32 5
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %136, label %89

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.mii_bus, ptr %86, i32 0, i32 3
  store ptr %0, ptr %90, align 8
  %91 = load ptr, ptr %87, align 4
  %92 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 4
  store ptr @asix_mdio_bus_read, ptr %92, align 4
  %93 = load ptr, ptr %87, align 4
  %94 = getelementptr inbounds %struct.mii_bus, ptr %93, i32 0, i32 5
  store ptr @asix_mdio_bus_write, ptr %94, align 8
  %95 = load ptr, ptr %87, align 4
  %96 = getelementptr inbounds %struct.mii_bus, ptr %95, i32 0, i32 1
  store ptr @.str.11, ptr %96, align 4
  %97 = load ptr, ptr %87, align 4
  %98 = getelementptr inbounds %struct.mii_bus, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.usb_device, ptr %99, i32 0, i32 12
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.usb_bus, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %99, align 8
  %105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %98, i32 noundef 61, ptr noundef nonnull @.str.12, i32 noundef %103, i32 noundef %104) #11
  %106 = load ptr, ptr %0, align 4
  %107 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15
  %108 = load ptr, ptr %87, align 4
  %109 = call i32 @__devm_mdiobus_register(ptr noundef %107, ptr noundef %108, ptr noundef null) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %89
  %112 = load ptr, ptr %10, align 4
  %113 = getelementptr inbounds %struct.asix_common_private, ptr %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.asix_common_private, ptr %112, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.mii_bus, ptr %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.asix_common_private, ptr %112, i32 0, i32 7
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %113, i32 noundef 20, ptr noundef nonnull @.str.13, ptr noundef %116, i32 noundef %119) #11
  %121 = load ptr, ptr %38, align 4
  %122 = call ptr @phy_connect(ptr noundef %121, ptr noundef %113, ptr noundef nonnull @asix_adjust_link, i32 noundef 1) #11
  %123 = getelementptr inbounds %struct.asix_common_private, ptr %112, i32 0, i32 6
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %126, ptr noundef nonnull @.str.14, ptr noundef %113) #12
  %127 = load ptr, ptr %123, align 4
  %128 = ptrtoint ptr %127 to i32
  br label %136

129:                                              ; preds = %111
  %130 = call i32 @phy_suspend(ptr noundef %122) #11
  %131 = load ptr, ptr %123, align 4
  %132 = getelementptr inbounds %struct.phy_device, ptr %131, i32 0, i32 4
  %133 = load i16, ptr %132, align 8
  %134 = or i16 %133, 2048
  store i16 %134, ptr %132, align 8
  %135 = load ptr, ptr %123, align 4
  call void @phy_attached_info(ptr noundef %135) #11
  br label %136

136:                                              ; preds = %129, %125, %89, %76, %64, %37, %34, %30, %26, %23, %2
  %137 = phi i32 [ -12, %2 ], [ %35, %34 ], [ %47, %37 ], [ %65, %64 ], [ %109, %89 ], [ %128, %125 ], [ 0, %129 ], [ -12, %76 ], [ %24, %23 ], [ %28, %26 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88772_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.asix_common_private, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @phy_disconnect(ptr noundef %6) #11
  %7 = load ptr, ptr %3, align 4
  tail call void @asix_rx_fixup_common_free(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88772_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %8 = load ptr, ptr %7, align 32
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr i8, ptr %8, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 3
  store i16 %11, ptr %12, align 2
  %13 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %4, i32 noundef 0) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef 0) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext 822, i32 noundef 0) #11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  tail call void @phy_start(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %21, %18, %15, %1
  %25 = phi i32 [ 0, %21 ], [ %13, %1 ], [ %16, %15 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88772_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @phy_stop(ptr noundef %5) #11
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88772_hw_reset(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 176, i32 noundef 5, i32 noundef %1) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %64, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.asix_common_private, ptr %4, i32 0, i32 9
  %9 = load i8, ptr %8, align 2, !range !10
  %10 = zext i8 %9 to i16
  %11 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 34, i16 noundef zeroext %10, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef %1) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %7
  %14 = load i8, ptr %8, align 2, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 64, i32 noundef %1) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %20 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %1) #11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  tail call void @msleep(i32 noundef 60) #11
  %23 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 40, i32 noundef %1) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %64, label %28

25:                                               ; preds = %13
  %26 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 72, i32 noundef %1) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %64, label %28

28:                                               ; preds = %25, %22
  tail call void @msleep(i32 noundef 150) #11
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @asix_mdio_read_nopm(ptr noundef %32, i32 noundef %34, i32 noundef 2) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %30, %28
  %38 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef %1) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext 822, i32 noundef %1) #11
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef %1) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %48 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 72
  %51 = load ptr, ptr %50, align 32
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %47, align 4
  %53 = getelementptr i8, ptr %51, i32 4
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr %struct.usbnet, ptr %0, i32 0, i32 21, i32 3
  store i16 %54, ptr %55, align 2
  %56 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %47, i32 noundef %1) #11
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %46
  %59 = tail call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef %1) #11
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef %1) #11
  %63 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %0, i32 noundef %1) #11
  br label %64

64:                                               ; preds = %61, %58, %46, %43, %40, %37, %30, %25, %22, %19, %16, %7, %2
  %65 = phi i32 [ 0, %61 ], [ %5, %2 ], [ %11, %7 ], [ %17, %16 ], [ %20, %19 ], [ %23, %22 ], [ %38, %37 ], [ %41, %40 ], [ %44, %43 ], [ %56, %46 ], [ %59, %58 ], [ %26, %25 ], [ -5, %30 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88772a_hw_reset(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %6 = tail call i32 @asix_write_gpio(ptr noundef %0, i16 noundef zeroext 128, i32 noundef 5, i32 noundef %1) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %98, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.asix_common_private, ptr %5, i32 0, i32 9
  %10 = load i8, ptr %9, align 2, !range !10
  %11 = or i8 %10, 16
  %12 = zext i8 %11 to i16
  %13 = tail call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 34, i16 noundef zeroext %12, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef %1) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %98, label %15

15:                                               ; preds = %8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %16 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 96, i32 noundef %1) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %98, label %18

18:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %19 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 32, i32 noundef %1) #11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %98, label %21

21:                                               ; preds = %18
  tail call void @msleep(i32 noundef 160) #11
  %22 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %1) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %98, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @asix_sw_reset(ptr noundef %0, i8 noundef zeroext 32, i32 noundef %1) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %98, label %27

27:                                               ; preds = %24
  tail call void @msleep(i32 noundef 200) #11
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @asix_mdio_read_nopm(ptr noundef %31, i32 noundef %33, i32 noundef 2) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %98, label %36

36:                                               ; preds = %29, %27
  %37 = call i32 @asix_read_cmd(ptr noundef %0, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %3, i32 noundef %1) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %98, label %39

39:                                               ; preds = %36
  %40 = load i8, ptr %3, align 1
  %41 = trunc i8 %40 to i7
  %42 = and i7 %41, -16
  switch i7 %42, label %75 [
    i7 32, label %43
    i7 16, label %46
  ]

43:                                               ; preds = %39
  %44 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 42, i16 noundef zeroext -32768, i16 noundef zeroext -32767, i16 noundef zeroext 0, ptr noundef null, i32 noundef %1) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %98, label %75

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %50 = load i32, ptr %49, align 4
  %51 = call i32 @asix_mdio_read_nopm(ptr noundef %48, i32 noundef %50, i32 noundef 20) #11
  %52 = load ptr, ptr %47, align 4
  %53 = load i32, ptr %49, align 4
  %54 = call i32 @asix_mdio_read_nopm(ptr noundef %52, i32 noundef %53, i32 noundef 21) #11
  %55 = load ptr, ptr %47, align 4
  %56 = load i32, ptr %49, align 4
  %57 = call i32 @asix_mdio_read_nopm(ptr noundef %55, i32 noundef %56, i32 noundef 22) #11
  %58 = and i32 %51, 65535
  %59 = icmp eq i32 %58, 17452
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load ptr, ptr %47, align 4
  %62 = load i32, ptr %49, align 4
  call void @asix_mdio_write_nopm(ptr noundef %61, i32 noundef %62, i32 noundef 20, i32 noundef 17452) #11
  br label %63

63:                                               ; preds = %60, %46
  %64 = and i32 %54, 65535
  %65 = icmp eq i32 %64, 968
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %47, align 4
  %68 = load i32, ptr %49, align 4
  call void @asix_mdio_write_nopm(ptr noundef %67, i32 noundef %68, i32 noundef 21, i32 noundef 968) #11
  br label %69

69:                                               ; preds = %66, %63
  %70 = and i32 %57, 65535
  %71 = icmp eq i32 %70, 16452
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %47, align 4
  %74 = load i32, ptr %49, align 4
  call void @asix_mdio_write_nopm(ptr noundef %73, i32 noundef %74, i32 noundef 22, i32 noundef 16452) #11
  br label %75

75:                                               ; preds = %72, %69, %43, %39
  %76 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef %1) #11
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %80 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 72
  %83 = load ptr, ptr %82, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %79, ptr noundef align 1 dereferenceable(6) %83, i32 6, i1 false)
  %84 = call i32 @asix_write_cmd(ptr noundef %0, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %79, i32 noundef %1) #11
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %78
  %87 = call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef %1) #11
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext 822, i32 noundef %1) #11
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = call i32 @asix_write_rx_ctl(ptr noundef %0, i16 noundef zeroext 136, i32 noundef %1) #11
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = call zeroext i16 @asix_read_rx_ctl(ptr noundef %0, i32 noundef %1) #11
  %97 = call zeroext i16 @asix_read_medium_status(ptr noundef %0, i32 noundef %1) #11
  br label %98

98:                                               ; preds = %95, %92, %89, %86, %78, %75, %43, %36, %29, %24, %21, %18, %15, %8, %2
  %99 = phi i32 [ 0, %95 ], [ %90, %89 ], [ %6, %2 ], [ %13, %8 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ], [ %25, %24 ], [ %37, %36 ], [ %44, %43 ], [ %76, %75 ], [ %84, %78 ], [ %87, %86 ], [ %93, %92 ], [ -1, %29 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88772_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %0, i32 noundef 1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %0, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %0, i32 noundef 1)
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void @phy_start(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %18, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88772_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  tail call void @phy_stop(ptr noundef %12) #11
  br label %13

13:                                               ; preds = %10, %1
  %14 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %0, i32 noundef 1) #11
  %15 = and i16 %14, -257
  %16 = tail call i32 @asix_write_medium_mode(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88772a_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %0, i32 noundef 1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %0, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %0, i32 noundef 1)
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void @phy_start(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %18, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88772_ethtool_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @net_selftest_get_strings(ptr noundef %2) #11
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88772_ethtool_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @net_selftest_get_count() #11
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -95, %2 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_read_nopm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_mdio_write_nopm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_adjust_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i64 7125437}
!10 = !{i8 0, i8 2}
