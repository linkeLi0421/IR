; ModuleID = '/llk/IR/drivers/net/usb/pegasus.c_pt.bc'
source_filename = "../drivers/net/usb/pegasus.c"
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_eth_dev = type { ptr, i16, i16, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
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
%struct.pegasus = type { ptr, ptr, ptr, %struct.mii_if_info, i32, i32, i32, i32, i32, i32, %struct.tasklet_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, i32, [8 x i8], [1536 x i8], [4 x i8], i8, i8 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.113, i32 }
%union.anon.113 = type { ptr }
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
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ifreq = type { %union.anon.96, %union.anon.97 }
%union.anon.96 = type { [16 x i8] }
%union.anon.97 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author325 = internal constant [52 x i8] c"pegasus.author=Petko Manolov <petkan@nucleusys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [59 x i8] c"pegasus.description=Pegasus/Pegasus II USB Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [37 x i8] c"pegasus.file=drivers/net/usb/pegasus\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [20 x i8] c"pegasus.license=GPL\00", section ".modinfo", align 1
@__param_str_loopback = internal constant [17 x i8] c"pegasus.loopback\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@loopback = internal global i8 0, align 1
@__param_loopback = internal constant %struct.kernel_param { ptr @__param_str_loopback, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @loopback } }, section "__param", align 4
@__UNIQUE_ID_loopbacktype329 = internal constant [31 x i8] c"pegasus.parmtype=loopback:bool\00", section ".modinfo", align 1
@__param_str_mii_mode = internal constant [17 x i8] c"pegasus.mii_mode\00", align 1
@mii_mode = internal global i8 0, align 1
@__param_mii_mode = internal constant %struct.kernel_param { ptr @__param_str_mii_mode, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @mii_mode } }, section "__param", align 4
@__UNIQUE_ID_mii_modetype330 = internal constant [31 x i8] c"pegasus.parmtype=mii_mode:bool\00", section ".modinfo", align 1
@__param_str_devid = internal constant [14 x i8] c"pegasus.devid\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@devid = internal global ptr null, align 4
@__param_devid = internal constant %struct.kernel_param { ptr @__param_str_devid, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @devid } }, section "__param", align 4
@__UNIQUE_ID_devidtype331 = internal constant [29 x i8] c"pegasus.parmtype=devid:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_loopback332 = internal constant [55 x i8] c"pegasus.parm=loopback:Enable MAC loopback mode (bit 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_mii_mode333 = internal constant [71 x i8] c"pegasus.parm=mii_mode:Enable HomePNA mode (bit 0),default=MII mode = 0\00", section ".modinfo", align 1
@__UNIQUE_ID_devid334 = internal constant [69 x i8] c"pegasus.parm=devid:The format is: 'DEV_name:VendorID:DeviceID:Flags'\00", section ".modinfo", align 1
@__param_str_msg_level = internal constant [18 x i8] c"pegasus.msg_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_level = internal global i32 -1, align 4
@__param_msg_level = internal constant %struct.kernel_param { ptr @__param_str_msg_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @msg_level } }, section "__param", align 4
@__UNIQUE_ID_msg_leveltype335 = internal constant [31 x i8] c"pegasus.parmtype=msg_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_level336 = internal constant [54 x i8] c"pegasus.parm=msg_level:Override default message level\00", section ".modinfo", align 1
@pegasus_driver = internal global %struct.usb_driver { ptr @.str.74, ptr @pegasus_probe, ptr @pegasus_disconnect, ptr null, ptr @pegasus_suspend, ptr @pegasus_resume, ptr null, ptr null, ptr null, ptr @pegasus_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 4 }, align 4
@__initcall__kmod_pegasus__337_1335_pegasus_init6 = internal global ptr @pegasus_init, section ".initcall6.init", align 4
@__exitcall_pegasus_exit = internal global ptr @pegasus_exit, section ".exitcall.exit", align 4
@pegasus_ids = internal global [76 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1286, i16 17921, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 8199, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 4364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 4166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 20550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -20476, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31469, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 2438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 1986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 13108, i16 5889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1993, i16 -20224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 19, i16 1293, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2439, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1183, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3511, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4930, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 16396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 -32484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2323, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2385, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8708, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8710, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1915, i16 2228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 2305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2257, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5608, i16 -28416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5608, i16 -28400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1660, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer, %struct.usb_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [19 x i8] c"can't allocate %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"urbs\00", align 1
@pegasus_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @pegasus_open, ptr @pegasus_close, ptr @pegasus_start_xmit, ptr null, ptr null, ptr null, ptr @pegasus_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @pegasus_siocdevprivate, ptr null, ptr null, ptr null, ptr @pegasus_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pegasus_get_drvinfo, ptr null, ptr null, ptr @pegasus_get_wol, ptr @pegasus_set_wol, ptr @pegasus_get_msglevel, ptr @pegasus_set_msglevel, ptr @pegasus_nway_reset, ptr @pegasus_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pegasus_get_link_ksettings, ptr @pegasus_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usb_dev_id = internal unnamed_addr global [76 x %struct.usb_eth_dev] [%struct.usb_eth_dev { ptr @.str.16, i16 1286, i16 17921, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.17, i16 1367, i16 8199, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.18, i16 1976, i16 4364, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.18, i16 1976, i16 16644, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.18, i16 1976, i16 16388, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.18, i16 1976, i16 16391, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 16642, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 16396, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.19, i16 1976, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.20, i16 2106, i16 4166, i32 36 }, %struct.usb_eth_dev { ptr @.str.21, i16 2106, i16 20550, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.22, i16 2106, i16 -20476, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.23, i16 1958, i16 -31471, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.24, i16 1958, i16 -31469, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.25, i16 1958, i16 -31467, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.26, i16 1958, i16 2438, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.27, i16 1958, i16 1986, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.28, i16 13108, i16 5889, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.29, i16 1993, i16 -20224, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.30, i16 1293, i16 289, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.31, i16 1293, i16 290, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.32, i16 2269, i16 2438, i32 36 }, %struct.usb_eth_dev { ptr @.str.33, i16 2269, i16 2439, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.34, i16 1183, i16 -31471, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.35, i16 2269, i16 2440, i32 36 }, %struct.usb_eth_dev { ptr @.str.36, i16 2269, i16 -31471, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.37, i16 1962, i16 4, i32 36 }, %struct.usb_eth_dev { ptr @.str.38, i16 1962, i16 13, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.39, i16 8193, i16 16385, i32 36 }, %struct.usb_eth_dev { ptr @.str.39, i16 8193, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.39, i16 8193, i16 16642, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.39, i16 8193, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.39, i16 8193, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.40, i16 8193, i16 16387, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.41, i16 8193, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.42, i16 3511, i16 2, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.43, i16 1390, i16 16400, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.44, i16 4930, i16 772, i32 36 }, %struct.usb_eth_dev { ptr @.str.45, i16 1484, i16 12288, i32 36 }, %struct.usb_eth_dev { ptr @.str.46, i16 4164, i16 -32766, i32 36 }, %struct.usb_eth_dev { ptr @.str.47, i16 3686, i16 16396, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.48, i16 1008, i16 -32484, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.49, i16 1211, i16 2308, i32 36 }, %struct.usb_eth_dev { ptr @.str.50, i16 1211, i16 2323, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.51, i16 1211, i16 2362, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.52, i16 2385, i16 10, i32 36 }, %struct.usb_eth_dev { ptr @.str.53, i16 1390, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.54, i16 1390, i16 16389, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.53, i16 1390, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.55, i16 1390, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.53, i16 1390, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.56, i16 1643, i16 8706, i32 36 }, %struct.usb_eth_dev { ptr @.str.57, i16 1643, i16 8707, i32 36 }, %struct.usb_eth_dev { ptr @.str.57, i16 1643, i16 8708, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.58, i16 1643, i16 8710, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.59, i16 1915, i16 2228, i32 36 }, %struct.usb_eth_dev { ptr @.str.60, i16 1643, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.56, i16 1643, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.61, i16 1041, i16 1, i32 36 }, %struct.usb_eth_dev { ptr @.str.61, i16 1041, i16 5, i32 36 }, %struct.usb_eth_dev { ptr @.str.62, i16 1041, i16 9, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.63, i16 1118, i16 122, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.64, i16 2118, i16 4128, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.65, i16 2873, i16 265, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.66, i16 2873, i16 2305, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.67, i16 2257, i16 3, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.68, i16 1799, i16 512, i32 36 }, %struct.usb_eth_dev { ptr @.str.69, i16 1799, i16 513, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.70, i16 5608, i16 -28416, i32 36 }, %struct.usb_eth_dev { ptr @.str.71, i16 5608, i16 -28400, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.21, i16 1660, i16 4097, i32 -2147483612 }, %struct.usb_eth_dev zeroinitializer, %struct.usb_eth_dev zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"can't reset MAC\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"setup Pegasus II specific registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"can't locate MII phy, using default\0A\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%s, %s, %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"low on memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"no rx stall recovery\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"can't resubmit interrupt urb, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fail tx, %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"no tx stall recovery\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"TX status %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [26 x i8] c"Promiscuous mode enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s returned %d\0A\00", align 1
@__func__.update_eth_regs_async = private unnamed_addr constant [22 x i8] c"update_eth_regs_async\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"tx timeout\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"3Com USB Ethernet 3C460B\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ATEN USB Ethernet UC-110T\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"USB HPNA/Ethernet\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"USB 10/100 Fast Ethernet\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Accton USB 10/100 Ethernet Adapter\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"SpeedStream USB 10/100 Ethernet\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Philips USB 10/100 Ethernet\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"ADMtek ADM8511 \22Pegasus II\22 USB Ethernet\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"ADMtek ADM8513 \22Pegasus II\22 USB Ethernet\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"ADMtek ADM8515 \22Pegasus II\22 USB-2.0 Ethernet\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"ADMtek AN986 \22Pegasus\22 USB Ethernet (evaluation board)\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"AN986A USB MAC\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"AEI USB Fast Ethernet Adapter\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Allied Telesyn Int. AT-USB100\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Belkin F5D5050 USB Ethernet\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Belkin F5U122 10/100 USB Ethernet\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Billionton USB-100\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Billionton USBLP-100\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"iPAQ Networking 10/100 USB\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Billionton USBEL-100\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Billionton USBE-100\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Corega FEther USB-TX\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Corega FEther USB-TXS\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"D-Link DSB-650TX\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"D-Link DSB-650TX(PNA)\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"D-Link DSB-650\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"GOLDPFEIL USB Adapter\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"ELECOM USB Ethernet LD-USB20\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"EasiDock Ethernet\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Elsa Micolink USB2Ethernet\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"GIGABYTE GN-BR402W Wireless Router\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Hawking UF100 10/100 Ethernet\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"HP hn210c Ethernet USB\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"IO DATA USB ET/TX\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"IO DATA USB ET/TX-S\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"IO DATA USB ETX-US2\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"Kingston KNU101TX Ethernet\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"LANEED USB Ethernet LD-USB/TX\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"LANEED USB Ethernet LD-USBL/TX\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"LANEED USB Ethernet LD-USB/T\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"Linksys USB10TX\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"Linksys USB100TX\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Linksys USB10T Ethernet Adapter\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Linksys USBVPN1\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"Linksys USB USB100TX\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"MELCO/BUFFALO LUA-TX\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"MELCO/BUFFALO LUA2-TX\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Microsoft MN-110\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"NETGEAR FA101\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"OCT Inc.\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"OCT USB TO Ethernet\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"smartNIC 2 PnP Adapter\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"SMC 202 USB Ethernet\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"SMC 2206 USB Ethernet\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"SOHOware NUB100 Ethernet\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"SOHOware NUB110 Ethernet\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"intr interval changed from %ums to %ums\0A\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"\016%s: Pegasus/Pegasus II USB Ethernet driver\0A\00", align 1
@.str.74 = private constant [8 x i8] c"pegasus\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.76 = private unnamed_addr constant [70 x i8] c"\016%s: new device %s, vendor ID 0x%04x, device ID 0x%04x, flags: 0x%x\0A\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_devid334, ptr @__UNIQUE_ID_devidtype331, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__UNIQUE_ID_loopback332, ptr @__UNIQUE_ID_loopbacktype329, ptr @__UNIQUE_ID_mii_mode333, ptr @__UNIQUE_ID_mii_modetype330, ptr @__UNIQUE_ID_msg_level336, ptr @__UNIQUE_ID_msg_leveltype335, ptr @__exitcall_pegasus_exit, ptr @__initcall__kmod_pegasus__337_1335_pegasus_init6, ptr @__param_devid, ptr @__param_loopback, ptr @__param_mii_mode, ptr @__param_msg_level, ptr @pegasus_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pegasus_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @pegasus_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pegasus_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #17
  %2 = load ptr, ptr @devid, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call fastcc void @parse_id(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %0
  %6 = tail call i32 @usb_register_driver(ptr noundef nonnull @pegasus_driver, ptr noundef null, ptr noundef nonnull @.str.74) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_probe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca [6 x i8], align 1
  %6 = alloca i16, align 2
  %7 = alloca [6 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -128
  %21 = ptrtoint ptr %1 to i32
  %22 = sub i32 %21, ptrtoint (ptr @pegasus_ids to i32)
  %23 = sdiv exact i32 %22, 24
  %24 = getelementptr i8, ptr %19, i32 480
  %25 = load i16, ptr %24, align 1
  %26 = icmp eq i16 %25, 1293
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = getelementptr i8, ptr %19, i32 482
  %29 = load i16, ptr %28, align 1
  %30 = icmp eq i16 %29, 289
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %19, i32 476
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, -32
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %19, i32 478
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %279, label %39

39:                                               ; preds = %35, %31, %27, %2
  %40 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1708, i32 noundef 1, i32 noundef 1) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %279, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %40, i32 1408
  %44 = getelementptr i8, ptr %40, i32 1468
  store i32 %23, ptr %44, align 4
  %45 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %46 = getelementptr i8, ptr %40, i32 1544
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %50 = getelementptr i8, ptr %40, i32 1548
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #16
  %54 = getelementptr i8, ptr %40, i32 1552
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 4
  tail call void @usb_free_urb(ptr noundef %57) #16
  br label %58

58:                                               ; preds = %56, %48
  %59 = load ptr, ptr %46, align 4
  tail call void @usb_free_urb(ptr noundef %59) #16
  br label %60

60:                                               ; preds = %58, %42
  %61 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  br label %277

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %40, i32 1476
  tail call void @tasklet_setup(ptr noundef %63, ptr noundef nonnull @rx_fixup) #16
  %64 = getelementptr i8, ptr %40, i32 1500
  store i32 -32, ptr %64, align 4
  %65 = getelementptr i8, ptr %40, i32 1504
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr i8, ptr %40, i32 1508
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %40, i32 1512
  store ptr @check_carrier, ptr %67, align 4
  %68 = getelementptr i8, ptr %40, i32 1516
  tail call void @init_timer_key(ptr noundef %68, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %69 = getelementptr i8, ptr %40, i32 1412
  store ptr %0, ptr %69, align 4
  store ptr %20, ptr %43, align 4
  %70 = getelementptr i8, ptr %40, i32 1416
  store ptr %40, ptr %70, align 4
  %71 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 96
  store i32 1000, ptr %71, align 8
  %72 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 16
  store ptr @pegasus_netdev_ops, ptr %72, align 8
  %73 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 42
  store ptr @ops, ptr %73, align 8
  %74 = getelementptr i8, ptr %40, i32 1420
  %75 = getelementptr i8, ptr %40, i32 1440
  store ptr %40, ptr %75, align 4
  %76 = getelementptr i8, ptr %40, i32 1444
  store ptr @mdio_read, ptr %76, align 4
  %77 = getelementptr i8, ptr %40, i32 1448
  store ptr @mdio_write, ptr %77, align 4
  %78 = getelementptr i8, ptr %40, i32 1428
  store i32 31, ptr %78, align 4
  %79 = getelementptr i8, ptr %40, i32 1432
  store i32 31, ptr %79, align 4
  %80 = load i32, ptr @msg_level, align 4
  %81 = icmp ugt i32 %80, 31
  br i1 %81, label %87, label %82

82:                                               ; preds = %62
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = shl nsw i32 -1, %80
  %86 = xor i32 %85, -1
  br label %87

87:                                               ; preds = %84, %82, %62
  %88 = phi i32 [ %86, %84 ], [ 7, %62 ], [ 0, %82 ]
  %89 = getelementptr i8, ptr %40, i32 1460
  store i32 %88, ptr %89, align 4
  %90 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %23
  %91 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %23, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %40, i32 1456
  store i32 %92, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #16
  store i16 0, ptr %17, align 2, !annotation !8
  %94 = call fastcc i32 @read_eprom_word(ptr noundef %43, i8 noundef zeroext 4, ptr noundef nonnull %17) #16
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %87
  %97 = load i16, ptr %17, align 2
  %98 = lshr i16 %97, 8
  %99 = zext i16 %98 to i32
  %100 = load ptr, ptr %43, align 4
  %101 = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = icmp ne i32 %102, 3
  %104 = icmp sgt i16 %97, -1
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load i32, ptr %89, align 4
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %111, ptr noundef nonnull @.str.72, i32 noundef %99, i32 noundef 128) #17
  %112 = load ptr, ptr %43, align 4
  br label %114

113:                                              ; preds = %87
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #16
  br label %272

114:                                              ; preds = %110, %106, %96
  %115 = phi ptr [ %100, %96 ], [ %112, %110 ], [ %100, %106 ]
  %116 = phi i32 [ %99, %96 ], [ 128, %110 ], [ 128, %106 ]
  %117 = getelementptr i8, ptr %40, i32 1472
  store i32 %116, ptr %117, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #16
  store i8 8, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #16
  store i8 8, ptr %14, align 1
  %118 = call i32 @usb_control_msg_send(ptr noundef %115, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %14, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #16
  br label %119

119:                                              ; preds = %153, %114
  %120 = phi i32 [ 0, %114 ], [ %154, %153 ]
  %121 = load ptr, ptr %43, align 4
  %122 = call i32 @usb_control_msg_recv(ptr noundef %121, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %15, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %179, label %124

124:                                              ; preds = %119
  %125 = load i8, ptr %15, align 1
  %126 = and i8 %125, 8
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %124
  %129 = load i8, ptr @loopback, align 1, !range !9
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load i8, ptr @mii_mode, align 1, !range !9
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %93, align 4
  %136 = and i32 %135, 1073741824
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #16
  store i8 52, ptr %13, align 1
  %139 = load ptr, ptr %43, align 4
  %140 = call i32 @usb_control_msg_send(ptr noundef %139, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 127, ptr noundef nonnull %13, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #16
  br label %144

141:                                              ; preds = %134, %131
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  store i8 38, ptr %12, align 1
  %142 = load ptr, ptr %43, align 4
  %143 = call i32 @usb_control_msg_send(ptr noundef %142, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 127, ptr noundef nonnull %12, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, ptr %93, align 4
  %146 = trunc i32 %145 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #16
  store i8 %146, ptr %11, align 1
  %147 = load ptr, ptr %43, align 4
  %148 = trunc i32 %145 to i16
  %149 = and i16 %148, 255
  %150 = call i32 @usb_control_msg_send(ptr noundef %147, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %149, i16 noundef zeroext 126, ptr noundef nonnull %11, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  store i8 38, ptr %10, align 1
  %151 = load ptr, ptr %43, align 4
  %152 = call i32 @usb_control_msg_send(ptr noundef %151, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 126, ptr noundef nonnull %10, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  br label %156

153:                                              ; preds = %124
  %154 = add nuw nsw i32 %120, 1
  %155 = icmp eq i32 %154, 100
  br i1 %155, label %179, label %119

156:                                              ; preds = %144, %128
  %157 = load i32, ptr %44, align 4
  %158 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %157, i32 1
  %159 = load i16, ptr %158, align 4
  switch i16 %159, label %168 [
    i16 1643, label %160
    i16 8193, label %160
  ]

160:                                              ; preds = %156, %156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  store i8 36, ptr %9, align 1
  %161 = load ptr, ptr %43, align 4
  %162 = call i32 @usb_control_msg_send(ptr noundef %161, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 126, ptr noundef nonnull %9, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  store i8 38, ptr %8, align 1
  %163 = load ptr, ptr %43, align 4
  %164 = call i32 @usb_control_msg_send(ptr noundef %163, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 126, ptr noundef nonnull %8, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  %165 = load i32, ptr %44, align 4
  %166 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %165, i32 1
  %167 = load i16, ptr %166, align 4
  br label %168

168:                                              ; preds = %160, %156
  %169 = phi i16 [ %159, %156 ], [ %167, %160 ]
  %170 = icmp eq i16 %169, 3511
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #16
  store i16 0, ptr %16, align 2, !annotation !8
  %172 = call fastcc i32 @__mii_op(ptr noundef %43, i8 noundef zeroext 3, i8 noundef zeroext 27, ptr noundef nonnull %16, i8 noundef zeroext 64) #16
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #16
  br label %179

175:                                              ; preds = %171
  %176 = load i16, ptr %16, align 2
  %177 = or i16 %176, 4
  store i16 %177, ptr %16, align 2
  %178 = call fastcc i32 @__mii_op(ptr noundef %43, i8 noundef zeroext 3, i8 noundef zeroext 27, ptr noundef nonnull %16, i8 noundef zeroext 32) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #16
  br label %181

179:                                              ; preds = %174, %153, %119
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #16
  %180 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.2) #17
  br label %272

181:                                              ; preds = %175, %168
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false) #16, !annotation !8
  %182 = load i32, ptr %93, align 4
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %43, align 4
  %186 = call i32 @usb_control_msg_recv(ptr noundef %185, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %7, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #16
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %209, label %207

188:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  store i16 0, ptr %6, align 2, !annotation !8
  %189 = call fastcc i32 @read_eprom_word(ptr noundef %43, i8 noundef zeroext 0, ptr noundef nonnull %6) #16
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %188
  %192 = load i16, ptr %6, align 2
  store i16 %192, ptr %7, align 2
  %193 = call fastcc i32 @read_eprom_word(ptr noundef %43, i8 noundef zeroext 1, ptr noundef nonnull %6) #16
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load i16, ptr %6, align 2
  %197 = getelementptr inbounds i16, ptr %7, i32 1
  store i16 %196, ptr %197, align 2
  %198 = call fastcc i32 @read_eprom_word(ptr noundef %43, i8 noundef zeroext 2, ptr noundef nonnull %6) #16
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195, %191, %188
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  br label %209

201:                                              ; preds = %195
  %202 = load i16, ptr %6, align 2
  %203 = getelementptr inbounds i16, ptr %7, i32 2
  store i16 %202, ptr %203, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  %204 = load ptr, ptr %43, align 4
  %205 = call i32 @usb_control_msg_send(ptr noundef %204, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %7, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #16
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %201, %184
  %208 = load ptr, ptr %70, align 4
  call void @dev_addr_mod(ptr noundef %208, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 6) #16
  br label %215

209:                                              ; preds = %201, %200, %184
  %210 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #16, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %5, i32 noundef 6) #16
  %211 = load i8, ptr %5, align 1
  %212 = and i8 %211, -4
  %213 = or i8 %212, 2
  store i8 %213, ptr %5, align 1
  call void @dev_addr_mod(ptr noundef %210, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #16
  %214 = getelementptr inbounds %struct.net_device, ptr %210, i32 0, i32 50
  store i8 1, ptr %214, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #16
  br label %215

215:                                              ; preds = %209, %207
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #16
  %216 = load i32, ptr %93, align 4
  %217 = icmp sgt i32 %216, -1
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %219, ptr noundef nonnull @.str.3) #17
  call fastcc void @setup_pegasus_II(ptr noundef %43)
  br label %220

220:                                              ; preds = %218, %215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !8
  br label %221

221:                                              ; preds = %233, %220
  %222 = phi i32 [ 0, %220 ], [ %234, %233 ]
  %223 = trunc i32 %222 to i8
  %224 = call fastcc i32 @__mii_op(ptr noundef %43, i8 noundef zeroext %223, i8 noundef zeroext 1, ptr noundef nonnull %4, i8 noundef zeroext 64) #16
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %221
  %227 = load i16, ptr %4, align 2
  %228 = add i16 %227, 1
  %229 = icmp ult i16 %228, 2
  %230 = and i16 %227, 30728
  %231 = icmp eq i16 %230, 0
  %232 = or i1 %229, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = add nuw nsw i32 %222, 1
  %235 = icmp eq i32 %234, 32
  br i1 %235, label %236, label %221

236:                                              ; preds = %233, %221
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  %237 = getelementptr i8, ptr %40, i32 3112
  store i8 -1, ptr %237, align 4
  br label %242

238:                                              ; preds = %226
  %239 = trunc i32 %222 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  %240 = getelementptr i8, ptr %40, i32 3112
  store i8 %239, ptr %240, align 4
  %241 = icmp eq i8 %239, -1
  br i1 %241, label %242, label %245

242:                                              ; preds = %238, %236
  %243 = phi ptr [ %237, %236 ], [ %240, %238 ]
  %244 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %244, ptr noundef nonnull @.str.4) #17
  store i8 1, ptr %243, align 4
  br label %245

245:                                              ; preds = %242, %238
  %246 = phi i32 [ 1, %242 ], [ %222, %238 ]
  %247 = and i32 %246, 255
  store i32 %247, ptr %74, align 4
  %248 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %43, ptr %248, align 8
  %249 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %250 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 111, i32 1
  store ptr %249, ptr %250, align 4
  %251 = getelementptr i8, ptr %40, i32 3108
  %252 = load i8, ptr %251, align 4
  %253 = and i8 %252, -17
  store i8 %253, ptr %251, align 4
  %254 = getelementptr i8, ptr %40, i32 1464
  store i32 0, ptr %254, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 4, ptr %3, align 1
  %255 = load ptr, ptr %43, align 4
  %256 = call i32 @usb_control_msg_send(ptr noundef %255, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 120, ptr noundef nonnull %3, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %245
  %259 = load ptr, ptr %43, align 4
  %260 = getelementptr inbounds %struct.usb_device, ptr %259, i32 0, i32 15
  %261 = call i32 @device_set_wakeup_enable(ptr noundef %260, i1 noundef zeroext false) #16
  br label %262

262:                                              ; preds = %258, %245
  %263 = call i32 @register_netdev(ptr noundef nonnull %40) #16
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load ptr, ptr @system_long_wq, align 4
  %267 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %266, ptr noundef %64, i32 noundef 200) #16
  %268 = load ptr, ptr %90, align 4
  %269 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 72
  %270 = load ptr, ptr %269, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %249, ptr noundef nonnull @.str.5, ptr noundef nonnull %40, ptr noundef %268, ptr noundef %270) #17
  br label %279

271:                                              ; preds = %262
  store ptr null, ptr %248, align 8
  br label %272

272:                                              ; preds = %271, %179, %113
  %273 = phi i32 [ %94, %113 ], [ -5, %179 ], [ %263, %271 ]
  %274 = load ptr, ptr %54, align 4
  call void @usb_free_urb(ptr noundef %274) #16
  %275 = load ptr, ptr %50, align 4
  call void @usb_free_urb(ptr noundef %275) #16
  %276 = load ptr, ptr %46, align 4
  call void @usb_free_urb(ptr noundef %276) #16
  br label %277

277:                                              ; preds = %272, %60
  %278 = phi i32 [ -12, %60 ], [ %273, %272 ]
  call void @free_netdev(ptr noundef nonnull %40) #16
  br label %279

279:                                              ; preds = %277, %265, %39, %35
  %280 = phi i32 [ 0, %265 ], [ %278, %277 ], [ -12, %39 ], [ -19, %35 ]
  ret i32 %280
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pegasus_disconnect(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 64
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 11
  %10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @unregister_netdev(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #16
  %19 = load ptr, ptr %13, align 4
  tail call void @usb_free_urb(ptr noundef %19) #16
  %20 = load ptr, ptr %15, align 4
  tail call void @usb_free_urb(ptr noundef %20) #16
  %21 = load ptr, ptr %17, align 4
  tail call void @usb_free_urb(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  tail call void @consume_skb(ptr noundef nonnull %23) #16
  store ptr null, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %5
  %27 = load ptr, ptr %11, align 4
  tail call void @free_netdev(ptr noundef %27) #16
  br label %28

28:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pegasus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @netif_device_detach(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.pegasus, ptr %4, i32 0, i32 11
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #16
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.pegasus, ptr %4, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.pegasus, ptr %4, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @netif_device_attach(ptr noundef %5) #16
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 12
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 20
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %12, align 4
  tail call void @read_bulk_callback(ptr noundef %17)
  %18 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 12
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 20
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %18, align 4
  tail call void @intr_callback(ptr noundef %23)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load ptr, ptr @system_long_wq, align 4
  %26 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 11
  %27 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26, i32 noundef 200) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_fixup(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %1
  %8 = and i32 %4, 128
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr i8, ptr %0, i32 80
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %9, label %14, label %13

13:                                               ; preds = %7
  br i1 %12, label %15, label %56

14:                                               ; preds = %7
  br i1 %12, label %15, label %40

15:                                               ; preds = %14, %13
  %16 = getelementptr i8, ptr %0, i32 80
  %17 = getelementptr i8, ptr %0, i32 -60
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @__netdev_alloc_skb(ptr noundef %18, i32 noundef 1538, i32 noundef 2592) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2
  store ptr %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 2
  store ptr %27, ptr %25, align 8
  store ptr %19, ptr %16, align 4
  br label %40

28:                                               ; preds = %15
  store ptr null, ptr %16, align 4
  %29 = getelementptr i8, ptr %0, i32 -16
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.6) #17
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %37 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %36) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  tail call void @__tasklet_schedule(ptr noundef %0) #16
  br label %73

40:                                               ; preds = %21, %14
  %41 = phi ptr [ %19, %21 ], [ %11, %14 ]
  %42 = getelementptr i8, ptr %0, i32 68
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %2, align 4
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %46, -1073708928
  %48 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 8
  store ptr %44, ptr %50, align 4
  %51 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 10
  store i32 %47, ptr %51, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 14
  store ptr %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 19
  store i32 1536, ptr %53, align 4
  %54 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 28
  store ptr @read_bulk_callback, ptr %54, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 27
  store ptr %2, ptr %55, align 4
  br label %56

56:                                               ; preds = %40, %13
  %57 = getelementptr i8, ptr %0, i32 68
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @usb_submit_urb(ptr noundef %58, i32 noundef 2592) #16
  switch i32 %59, label %63 [
    i32 -19, label %60
    i32 0, label %70
  ]

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 -60
  %62 = load ptr, ptr %61, align 4
  tail call void @netif_device_detach(ptr noundef %62) #16
  br label %73

63:                                               ; preds = %56
  %64 = load i32, ptr %3, align 4
  %65 = or i32 %64, 128
  store i32 %65, ptr %3, align 4
  %66 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %67 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %66) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  tail call void @__tasklet_schedule(ptr noundef %0) #16
  br label %73

70:                                               ; preds = %56
  %71 = load i32, ptr %3, align 4
  %72 = and i32 %71, -129
  store i32 %72, ptr %3, align 4
  br label %73

73:                                               ; preds = %70, %69, %63, %60, %39, %35, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_carrier(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = getelementptr i8, ptr %0, i32 -84
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !8
  %6 = getelementptr i8, ptr %4, i32 3112
  %7 = load i8, ptr %6, align 4
  %8 = call fastcc i32 @__mii_op(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext 1, ptr noundef nonnull %2, i8 noundef zeroext 64) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i16, ptr %2, align 2
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @netif_carrier_on(ptr noundef %4) #16
  br label %16

15:                                               ; preds = %10
  tail call void @netif_carrier_off(ptr noundef %4) #16
  br label %16

16:                                               ; preds = %15, %14, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  %17 = getelementptr i8, ptr %0, i32 -48
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr @system_long_wq, align 4
  %23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %0, i32 noundef 200) #16
  br label %24

24:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = trunc i32 %1 to i8
  %7 = trunc i32 %2 to i8
  %8 = call fastcc i32 @__mii_op(ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef nonnull %4, i8 noundef zeroext 64) #16
  %9 = icmp slt i32 %8, 0
  %10 = load i16, ptr %4, align 2
  %11 = zext i16 %10 to i32
  %12 = select i1 %9, i32 %8, i32 %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  %7 = trunc i32 %3 to i16
  store i16 %7, ptr %5, align 2
  %8 = trunc i32 %1 to i8
  %9 = trunc i32 %2 to i8
  %10 = call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef nonnull %5, i8 noundef zeroext 32) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_pegasus_II(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  store i8 -91, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 0, ptr %11, align 1
  %13 = load ptr, ptr %0, align 4
  %14 = call i32 @usb_control_msg_send(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 29, ptr noundef nonnull %11, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 1, ptr %10, align 1
  %15 = load ptr, ptr %0, align 4
  %16 = call i32 @usb_control_msg_send(ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 123, ptr noundef nonnull %10, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  call void @msleep(i32 noundef 100) #16
  %17 = getelementptr inbounds %struct.pegasus, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1073741824
  %20 = icmp eq i32 %19, 0
  %21 = load i8, ptr @mii_mode, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 0, ptr %9, align 1
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @usb_control_msg_send(ptr noundef %25, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 123, ptr noundef nonnull %9, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br label %30

27:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 2, ptr %8, align 1
  %28 = load ptr, ptr %0, align 4
  %29 = call i32 @usb_control_msg_send(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 123, ptr noundef nonnull %8, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  br label %30

30:                                               ; preds = %27, %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 -91, ptr %7, align 1
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @usb_control_msg_send(ptr noundef %31, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 165, i16 noundef zeroext 131, ptr noundef nonnull %7, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @usb_control_msg_recv(ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 131, ptr noundef nonnull %12, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %30
  %37 = load i8, ptr %12, align 1
  %38 = icmp eq i8 %37, -91
  %39 = select i1 %38, i32 34067, i32 0
  %40 = getelementptr inbounds %struct.pegasus, ptr %0, i32 0, i32 16
  store i32 %39, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 -64, ptr %6, align 1
  %41 = load ptr, ptr %0, align 4
  %42 = call i32 @usb_control_msg_send(ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 192, i16 noundef zeroext 128, ptr noundef nonnull %6, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 -1, ptr %5, align 1
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @usb_control_msg_send(ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 131, ptr noundef nonnull %5, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  %45 = load ptr, ptr %0, align 4
  %46 = call i32 @usb_control_msg_send(ptr noundef %45, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 132, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %47 = load i32, ptr %17, align 4
  %48 = and i32 %47, 1073741824
  %49 = icmp eq i32 %48, 0
  %50 = load i8, ptr @mii_mode, align 1
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 6, ptr %3, align 1
  %54 = load ptr, ptr %0, align 4
  %55 = call i32 @usb_control_msg_send(ptr noundef %54, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 129, ptr noundef nonnull %3, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %59

56:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 2, ptr %2, align 1
  %57 = load ptr, ptr %0, align 4
  %58 = call i32 @usb_control_msg_send(ptr noundef %57, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 129, ptr noundef nonnull %2, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %59

59:                                               ; preds = %56, %53, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @read_bulk_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %163, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %163, label %18

18:                                               ; preds = %11
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %163, label %22

22:                                               ; preds = %18
  switch i32 %9, label %128 [
    i32 0, label %33
    i32 -62, label %23
    i32 -32, label %27
    i32 -2, label %163
    i32 -104, label %163
    i32 -108, label %163
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -9
  store i32 %26, ptr %24, align 4
  br label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %163, label %32

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.7) #17
  br label %163

33:                                               ; preds = %23, %22
  %34 = icmp slt i32 %7, 4
  br i1 %34, label %128, label %35

35:                                               ; preds = %33
  %36 = add nsw i32 %7, -2
  %37 = getelementptr i8, ptr %5, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 28
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  %46 = and i32 %39, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = and i32 %39, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 12
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = and i32 %39, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %128, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %128

66:                                               ; preds = %35
  %67 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 16
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 34067
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load ptr, ptr %4, align 4
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 4095
  %74 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 2
  store ptr %78, ptr %76, align 4
  br label %92

79:                                               ; preds = %66
  %80 = add nsw i32 %7, -3
  %81 = getelementptr i8, ptr %5, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = add nsw i32 %7, -4
  %86 = getelementptr i8, ptr %5, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %84, 3840
  %90 = add nuw nsw i32 %88, 65532
  %91 = add nuw nsw i32 %90, %89
  br label %92

92:                                               ; preds = %79, %70
  %93 = phi i32 [ %73, %70 ], [ %91, %79 ]
  %94 = and i32 %93, 65535
  %95 = icmp ugt i32 %94, 1536
  br i1 %95, label %128, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 15
  %98 = load ptr, ptr %97, align 4
  %99 = tail call ptr @skb_put(ptr noundef %98, i32 noundef %94) #16
  %100 = load ptr, ptr %97, align 4
  %101 = tail call zeroext i16 @eth_type_trans(ptr noundef %100, ptr noundef %13) #16
  %102 = load ptr, ptr %97, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 13, i32 0, i32 16
  store i16 %101, ptr %103, align 8
  %104 = load ptr, ptr %97, align 4
  %105 = tail call i32 @netif_rx(ptr noundef %104) #16
  %106 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36
  %107 = load i32, ptr %106, align 8
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8
  %109 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, %94
  store i32 %111, ptr %109, align 8
  %112 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %96
  %117 = load ptr, ptr %12, align 4
  %118 = tail call ptr @__netdev_alloc_skb(ptr noundef %117, i32 noundef 1538, i32 noundef 2592) #16
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store ptr null, ptr %97, align 4
  br label %157

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 17
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 2
  store ptr %124, ptr %122, align 4
  %125 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 14
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr i8, ptr %126, i32 2
  store ptr %127, ptr %125, align 8
  store ptr %118, ptr %97, align 4
  br label %128

128:                                              ; preds = %121, %92, %62, %59, %33, %22
  %129 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 12
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %3, align 4
  %132 = load i32, ptr %131, align 8
  %133 = shl i32 %132, 8
  %134 = or i32 %133, -1073708928
  %135 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 15
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 8
  store ptr %131, ptr %139, align 4
  %140 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 10
  store i32 %134, ptr %140, align 4
  %141 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 14
  store ptr %138, ptr %141, align 4
  %142 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 19
  store i32 1536, ptr %142, align 4
  %143 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 28
  store ptr @read_bulk_callback, ptr %143, align 4
  %144 = getelementptr inbounds %struct.urb, ptr %130, i32 0, i32 27
  store ptr %3, ptr %144, align 4
  %145 = load ptr, ptr %129, align 4
  %146 = tail call i32 @usb_submit_urb(ptr noundef %145, i32 noundef 2592) #16
  switch i32 %146, label %149 [
    i32 -19, label %147
    i32 0, label %153
  ]

147:                                              ; preds = %128
  %148 = load ptr, ptr %12, align 4
  tail call void @netif_device_detach(ptr noundef %148) #16
  br label %163

149:                                              ; preds = %128
  %150 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 4
  %151 = load i32, ptr %150, align 4
  %152 = or i32 %151, 128
  store i32 %152, ptr %150, align 4
  br label %157

153:                                              ; preds = %128
  %154 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, -129
  store i32 %156, ptr %154, align 4
  br label %163

157:                                              ; preds = %149, %120
  %158 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 10, i32 1
  %159 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %158) #16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %162) #16
  br label %163

163:                                              ; preds = %161, %157, %153, %147, %96, %32, %27, %22, %22, %22, %18, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mii_op(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #16
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !8
  store i8 %1, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 %2, ptr %10, align 1
  %11 = zext i8 %4 to i32
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %9, i32 1
  %16 = load i16, ptr %3, align 2
  store i16 %16, ptr %15, align 2
  br label %17

17:                                               ; preds = %14, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 0, ptr %7, align 1
  %18 = load ptr, ptr %0, align 4
  %19 = call i32 @usb_control_msg_send(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %7, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @usb_control_msg_send(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 37, ptr noundef nonnull %9, i16 noundef zeroext 4, i32 noundef 1000, i32 noundef 3072) #16
  %22 = or i8 %4, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %22, ptr %6, align 1
  %23 = load ptr, ptr %0, align 4
  %24 = zext i8 %22 to i16
  %25 = call i32 @usb_control_msg_send(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %24, i16 noundef zeroext 40, ptr noundef nonnull %6, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %29

26:                                               ; preds = %34
  %27 = add nuw nsw i32 %30, 1
  %28 = icmp eq i32 %27, 100
  br i1 %28, label %46, label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ 0, %17 ], [ %27, %26 ]
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @usb_control_msg_recv(ptr noundef %31, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %9, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr %9, align 4
  %36 = icmp sgt i8 %35, -1
  br i1 %36, label %26, label %37

37:                                               ; preds = %34
  %38 = and i32 %11, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 4
  %42 = call i32 @usb_control_msg_recv(ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 38, ptr noundef nonnull %8, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #16
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i16, ptr %8, align 2
  store i16 %45, ptr %3, align 2
  br label %46

46:                                               ; preds = %44, %40, %37, %29, %26
  %47 = phi i32 [ 0, %44 ], [ 0, %37 ], [ %42, %40 ], [ -110, %26 ], [ %32, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #16
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_open(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca [4 x i8], align 4
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1556
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1416
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @__netdev_alloc_skb(ptr noundef %12, i32 noundef 1538, i32 noundef 3264) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr null, ptr %7, align 4
  br label %144

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 2
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 2
  store ptr %22, ptr %20, align 8
  store ptr %13, ptr %7, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %25 = load ptr, ptr %24, align 32
  %26 = load ptr, ptr %6, align 4
  %27 = tail call i32 @usb_control_msg_send(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %25, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #16
  %28 = getelementptr i8, ptr %0, i32 1544
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = load i32, ptr %30, align 8
  %32 = shl i32 %31, 8
  %33 = or i32 %32, -1073708928
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  store ptr %30, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  store i32 %33, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  store ptr %36, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  store i32 1536, ptr %40, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  store ptr @read_bulk_callback, ptr %41, align 4
  %42 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  store ptr %6, ptr %42, align 4
  %43 = load ptr, ptr %28, align 4
  %44 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 3264) #16
  switch i32 %44, label %144 [
    i32 0, label %48
    i32 -19, label %45
  ]

45:                                               ; preds = %23
  %46 = getelementptr i8, ptr %0, i32 1416
  %47 = load ptr, ptr %46, align 4
  tail call void @netif_device_detach(ptr noundef %47) #16
  br label %144

48:                                               ; preds = %23
  %49 = getelementptr i8, ptr %0, i32 1552
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %6, align 4
  %52 = load i32, ptr %51, align 8
  %53 = shl i32 %52, 8
  %54 = or i32 %53, 1073840256
  %55 = getelementptr i8, ptr %0, i32 1564
  %56 = getelementptr i8, ptr %0, i32 1472
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 8
  store ptr %51, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 10
  store i32 %54, ptr %59, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 14
  store ptr %55, ptr %60, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 19
  store i32 8, ptr %61, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 28
  store ptr @intr_callback, ptr %62, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 27
  store ptr %6, ptr %63, align 4
  %64 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 3
  %67 = icmp ugt i32 %65, 4
  %68 = or i1 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %48
  %70 = tail call i32 @llvm.smax.i32(i32 %57, i32 1) #16
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 16) #16
  %72 = add nsw i32 %71, -1
  %73 = shl nuw nsw i32 1, %72
  br label %74

74:                                               ; preds = %69, %48
  %75 = phi i32 [ %73, %69 ], [ %57, %48 ]
  %76 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 25
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 23
  store i32 -1, ptr %77, align 4
  %78 = load ptr, ptr %49, align 4
  %79 = tail call i32 @usb_submit_urb(ptr noundef %78, i32 noundef 3264) #16
  switch i32 %79, label %83 [
    i32 0, label %85
    i32 -19, label %80
  ]

80:                                               ; preds = %74
  %81 = getelementptr i8, ptr %0, i32 1416
  %82 = load ptr, ptr %81, align 4
  tail call void @netif_device_detach(ptr noundef %82) #16
  br label %83

83:                                               ; preds = %80, %74
  %84 = load ptr, ptr %28, align 4
  tail call void @usb_kill_urb(ptr noundef %84) #16
  br label %144

85:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 200, ptr %4, align 4, !annotation !8
  %86 = getelementptr i8, ptr %0, i32 3112
  %87 = load i8, ptr %86, align 4
  %88 = call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext %87, i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext 64) #16
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  br label %127

91:                                               ; preds = %85
  %92 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %93 = load i16, ptr %3, align 2
  %94 = and i16 %93, 320
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i8 0, i8 32
  %97 = and i16 %93, 384
  %98 = icmp eq i16 %97, 0
  %99 = or i8 %96, 16
  %100 = select i1 %98, i8 %96, i8 %99
  %101 = load i8, ptr @mii_mode, align 1, !range !9
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, i8 %100, i8 0
  store i8 %103, ptr %92, align 1
  %104 = load i8, ptr @loopback, align 1, !range !9
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i8 1, i8 9
  %107 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %106, ptr %107, align 2
  %108 = getelementptr i8, ptr %0, i32 3108
  %109 = load i32, ptr %4, align 4
  store i32 %109, ptr %108, align 4
  %110 = load ptr, ptr %6, align 4
  %111 = call i32 @usb_control_msg_send(ptr noundef %110, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #16
  %112 = getelementptr i8, ptr %0, i32 1468
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %113, i32 1
  %115 = load i16, ptr %114, align 4
  switch i16 %115, label %124 [
    i16 1643, label %116
    i16 1915, label %116
    i16 8193, label %116
  ]

116:                                              ; preds = %91, %91, %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  store i16 0, ptr %5, align 2, !annotation !8
  %117 = call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 27, ptr noundef nonnull %5, i8 noundef zeroext 64) #16
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i16, ptr %5, align 2
  %121 = or i16 %120, 4
  store i16 %121, ptr %5, align 2
  %122 = call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 27, ptr noundef nonnull %5, i8 noundef zeroext 32) #16
  br label %123

123:                                              ; preds = %119, %116
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  br label %124

124:                                              ; preds = %123, %91
  %125 = phi i32 [ %111, %91 ], [ %117, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124, %90
  %128 = load ptr, ptr %28, align 4
  call void @usb_kill_urb(ptr noundef %128) #16
  %129 = load ptr, ptr %49, align 4
  call void @usb_kill_urb(ptr noundef %129) #16
  br label %144

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !8
  %131 = load i8, ptr %86, align 4
  %132 = call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext %131, i8 noundef zeroext 1, ptr noundef nonnull %2, i8 noundef zeroext 64) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i16, ptr %2, align 2
  %136 = and i16 %135, 4
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @netif_carrier_on(ptr noundef %0) #16
  br label %140

139:                                              ; preds = %134
  call void @netif_carrier_off(ptr noundef %0) #16
  br label %140

140:                                              ; preds = %139, %138, %130
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  %141 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %142 = load ptr, ptr %141, align 64
  %143 = getelementptr inbounds %struct.netdev_queue, ptr %142, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %143) #16
  br label %144

144:                                              ; preds = %140, %127, %83, %45, %23, %15
  %145 = phi i32 [ %79, %83 ], [ -5, %127 ], [ 0, %140 ], [ %44, %23 ], [ -19, %45 ], [ -12, %15 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_close(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #16
  %6 = getelementptr i8, ptr %0, i32 1452
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @usb_control_msg_send(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %2, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr i8, ptr %0, i32 1476
  call void @tasklet_kill(ptr noundef %15) #16
  %16 = getelementptr i8, ptr %0, i32 1552
  %17 = load ptr, ptr %16, align 4
  call void @usb_kill_urb(ptr noundef %17) #16
  %18 = getelementptr i8, ptr %0, i32 1548
  %19 = load ptr, ptr %18, align 4
  call void @usb_kill_urb(ptr noundef %19) #16
  %20 = getelementptr i8, ptr %0, i32 1544
  %21 = load ptr, ptr %20, align 4
  call void @usb_kill_urb(ptr noundef %21) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 2
  %7 = and i32 %6, 63
  %8 = icmp eq i32 %7, 0
  %9 = add i32 %5, 3
  %10 = select i1 %8, i32 %9, i32 %6
  %11 = trunc i32 %5 to i16
  %12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #16
  %15 = getelementptr i8, ptr %1, i32 1572
  store i16 %11, ptr %15, align 4
  %16 = getelementptr i8, ptr %1, i32 1574
  %17 = load i32, ptr %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %19, i32 %17, i1 false) #16
  %20 = getelementptr i8, ptr %1, i32 1548
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 8
  %25 = or i32 %24, -1073676288
  %26 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  store ptr %22, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 10
  store i32 %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  store ptr %15, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  store i32 %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 28
  store ptr @write_bulk_callback, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 27
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %20, align 4
  %33 = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 2592) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %2
  %36 = getelementptr i8, ptr %1, i32 1460
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %33) #17
  br label %41

41:                                               ; preds = %40, %35
  switch i32 %33, label %45 [
    i32 -32, label %59
    i32 -19, label %42
    i32 -1, label %42
  ]

42:                                               ; preds = %41, %41
  %43 = getelementptr i8, ptr %1, i32 1416
  %44 = load ptr, ptr %43, align 4
  tail call void @netif_device_detach(ptr noundef %44) #16
  br label %59

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %12, align 64
  %50 = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %50) #16
  br label %59

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = load i32, ptr %4, align 8
  %56 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %51, %45, %42, %41
  tail call void @consume_skb(ptr noundef %0) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pegasus_set_multicast(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 3110
  %9 = load i8, ptr %8, align 2
  %10 = or i8 %9, 4
  store i8 %10, ptr %8, align 2
  %11 = getelementptr i8, ptr %0, i32 1460
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  br label %35

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %4, 512
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  %23 = getelementptr i8, ptr %0, i32 3108
  %24 = load i8, ptr %23, align 4
  br i1 %22, label %30, label %25

25:                                               ; preds = %16
  %26 = or i8 %24, 2
  store i8 %26, ptr %23, align 4
  %27 = getelementptr i8, ptr %0, i32 3110
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, -5
  store i8 %29, ptr %27, align 2
  br label %35

30:                                               ; preds = %16
  %31 = and i8 %24, -3
  store i8 %31, ptr %23, align 4
  %32 = getelementptr i8, ptr %0, i32 3110
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, -5
  store i8 %34, ptr %32, align 2
  br label %35

35:                                               ; preds = %30, %25, %15, %7
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 2592, i32 noundef 8) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @kfree(ptr noundef nonnull %37) #16
  br label %72

43:                                               ; preds = %39
  store i8 64, ptr %37, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 1
  store i8 -15, ptr %44, align 1
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 2
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 3
  store i16 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 4
  store i16 3, ptr %47, align 2
  %48 = load ptr, ptr %2, align 4
  %49 = load i32, ptr %48, align 8
  %50 = shl i32 %49, 8
  %51 = or i32 %50, -2147483648
  %52 = getelementptr i8, ptr %0, i32 3108
  %53 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  store ptr %48, ptr %53, align 4
  %54 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 10
  store i32 %51, ptr %54, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 21
  store ptr %37, ptr %55, align 4
  %56 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  store ptr %52, ptr %56, align 4
  %57 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  store i32 3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 28
  store ptr @async_ctrl_callback, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 27
  store ptr %37, ptr %59, align 4
  %60 = tail call i32 @usb_submit_urb(ptr noundef nonnull %40, i32 noundef 2592) #16
  switch i32 %60, label %64 [
    i32 0, label %72
    i32 -19, label %61
  ]

61:                                               ; preds = %43
  %62 = getelementptr i8, ptr %0, i32 1416
  %63 = load ptr, ptr %62, align 4
  tail call void @netif_device_detach(ptr noundef %63) #16
  br label %64

64:                                               ; preds = %61, %43
  %65 = getelementptr i8, ptr %0, i32 1460
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %0, i32 1416
  %71 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.update_eth_regs_async, i32 noundef %60) #17
  br label %72

72:                                               ; preds = %69, %64, %43, %42, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_siocdevprivate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %6 = getelementptr i8, ptr %0, i32 1408
  switch i32 %3, label %33 [
    i32 35312, label %10
    i32 35313, label %7
    i32 35314, label %22
  ]

7:                                                ; preds = %4
  %8 = load i16, ptr %5, align 2
  %9 = trunc i16 %8 to i8
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 3112
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 2
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i8 [ %9, %7 ], [ %12, %10 ]
  %16 = getelementptr i16, ptr %5, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 31
  %20 = getelementptr i16, ptr %5, i32 3
  %21 = tail call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext %15, i8 noundef zeroext %19, ptr noundef %20, i8 noundef zeroext 64) #16
  br label %33

22:                                               ; preds = %4
  %23 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %0, i32 3112
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr i16, ptr %5, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 31
  %31 = getelementptr %struct.ifreq, ptr %1, i32 0, i32 1, i32 0, i32 1
  %32 = tail call fastcc i32 @__mii_op(ptr noundef %6, i8 noundef zeroext %26, i8 noundef zeroext %30, ptr noundef %31, i8 noundef zeroext 32) #16
  br label %33

33:                                               ; preds = %24, %22, %14, %4
  %34 = phi i32 [ -1, %22 ], [ 0, %24 ], [ %21, %14 ], [ -95, %4 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pegasus_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1460
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #17
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr i8, ptr %0, i32 1548
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @usb_unlink_urb(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intr_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  switch i32 %7, label %10 [
    i32 -108, label %71
    i32 -104, label %71
    i32 -2, label %71
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 5
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -28
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = load i8, ptr %16, align 1
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  %30 = load i8, ptr %16, align 1
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i8 [ %30, %26 ], [ %24, %20 ]
  %33 = and i8 %32, 68
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 16
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = load i8, ptr %16, align 1
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i8 [ %39, %35 ], [ %32, %31 ]
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 20
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %44, %40, %14
  %49 = getelementptr i8, ptr %16, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 127
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr i8, ptr %16, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 15
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %56
  %60 = add i32 %59, %53
  store i32 %60, ptr %57, align 4
  br label %61

61:                                               ; preds = %48, %10
  %62 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #16
  switch i32 %62, label %65 [
    i32 -19, label %63
    i32 0, label %71
  ]

63:                                               ; preds = %61
  %64 = load ptr, ptr %8, align 4
  tail call void @netif_device_detach(ptr noundef %64) #16
  br label %65

65:                                               ; preds = %63, %61
  %66 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %62) #17
  br label %71

71:                                               ; preds = %70, %65, %61, %5, %5, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @write_bulk_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  switch i32 %5, label %28 [
    i32 -32, label %19
    i32 -2, label %45
    i32 -104, label %45
    i32 -108, label %45
    i32 0, label %34
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 87
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.10) #17
  br label %45

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.pegasus, ptr %3, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %5) #17
  br label %34

34:                                               ; preds = %33, %28, %18
  %35 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 87
  %36 = load ptr, ptr %35, align 64
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 11
  %39 = load volatile i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %37
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  store volatile i32 %37, ptr %38, align 8
  %42 = load ptr, ptr %35, align 64
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %36, %34 ], [ %42, %41 ]
  tail call void @netif_tx_wake_queue(ptr noundef %44) #16
  br label %45

45:                                               ; preds = %43, %27, %19, %18, %18, %18, %14, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_ctrl_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #16
  tail call void @usb_free_urb(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pegasus_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #9 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %5 = tail call i32 @strlcpy(ptr noundef %4, ptr noundef nonnull @.str.74, i32 noundef 32) #16
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 1
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %11, ptr noundef %12) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pegasus_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 33, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1464
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = and i32 %6, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 4, i8 -124
  %13 = trunc i32 %6 to i8
  %14 = shl i8 %13, 6
  %15 = and i8 %14, 64
  %16 = or i8 %15, %12
  %17 = icmp eq i32 %6, 0
  %18 = getelementptr i8, ptr %0, i32 3108
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -17
  %21 = select i1 %17, i8 0, i8 16
  %22 = or i8 %20, %21
  store i8 %22, ptr %18, align 4
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr i8, ptr %0, i32 1464
  store i32 %23, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %16, ptr %3, align 1
  %25 = load ptr, ptr %4, align 4
  %26 = zext i8 %16 to i16
  %27 = call i32 @usb_control_msg_send(ptr noundef %25, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %26, i16 noundef zeroext 120, ptr noundef nonnull %3, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %9
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %32 = load i32, ptr %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = call i32 @device_set_wakeup_enable(ptr noundef %31, i1 noundef zeroext %33) #16
  br label %35

35:                                               ; preds = %29, %9, %2
  %36 = phi i32 [ -22, %2 ], [ %27, %9 ], [ %34, %29 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pegasus_get_msglevel(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr i8, ptr %0, i32 1460
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @pegasus_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #12 {
  %3 = getelementptr i8, ptr %0, i32 1460
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_nway_reset(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1420
  %3 = tail call i32 @mii_nway_restart(ptr noundef %2) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_get_link(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1420
  %3 = tail call i32 @mii_link_ok(ptr noundef %2) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_get_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1420
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %3, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pegasus_set_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1420
  %4 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %3, ptr noundef %1) #16
  ret i32 %4
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_eprom_word(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #16
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 0, ptr %6, align 1
  %9 = load ptr, ptr %0, align 4
  %10 = call i32 @usb_control_msg_send(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef nonnull %6, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %1, ptr %5, align 1
  %11 = load ptr, ptr %0, align 4
  %12 = zext i8 %1 to i16
  %13 = call i32 @usb_control_msg_send(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %12, i16 noundef zeroext 32, ptr noundef nonnull %5, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 2, ptr %4, align 1
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @usb_control_msg_send(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 35, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %19

16:                                               ; preds = %24
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, 100
  br i1 %18, label %34, label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @usb_control_msg_recv(ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef nonnull %8, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i8, ptr %8, align 1
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 4
  %30 = call i32 @usb_control_msg_recv(ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef nonnull %7, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #16
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i16, ptr %7, align 2
  store i16 %33, ptr %2, align 2
  br label %34

34:                                               ; preds = %32, %28, %19, %16
  %35 = phi i32 [ %30, %32 ], [ %30, %28 ], [ -110, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #16
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @parse_id(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.75) #16
  %4 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.75) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @simple_strtoul(ptr noundef nonnull %4, ptr noundef null, i32 noundef 16) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.75) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @simple_strtoul(ptr noundef nonnull %10, ptr noundef null, i32 noundef 16) #16
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = load ptr, ptr %2, align 4
  %17 = call i32 @simple_strtoul(ptr noundef %16, ptr noundef null, i32 noundef 16) #16
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, ptr noundef %3, i32 noundef %9, i32 noundef %15, i32 noundef %17) #17
  %19 = add i32 %9, -65537
  %20 = icmp ult i32 %19, -65536
  %21 = add i32 %15, -65537
  %22 = icmp ult i32 %21, -65536
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %24, %14
  %25 = phi i32 [ %29, %24 ], [ 0, %14 ]
  %26 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = add i32 %25, 1
  br i1 %28, label %30, label %24

30:                                               ; preds = %24
  store ptr %3, ptr %26, align 4
  %31 = trunc i32 %9 to i16
  %32 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %25, i32 1
  store i16 %31, ptr %32, align 4
  %33 = trunc i32 %15 to i16
  %34 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %25, i32 2
  store i16 %33, ptr %34, align 2
  %35 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %25, i32 3
  store i32 %17, ptr %35, align 4
  %36 = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %25
  store i16 3, ptr %36, align 4
  %37 = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %25, i32 1
  store i16 %31, ptr %37, align 2
  %38 = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %25, i32 2
  store i16 %33, ptr %38, align 4
  br label %39

39:                                               ; preds = %30, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
