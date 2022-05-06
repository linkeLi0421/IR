; ModuleID = '/llk/IR/drivers/usb/core/quirks.c_pt.bc'
source_filename = "../drivers/usb/core/quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.62, i32 }
%union.anon.62 = type { ptr }
%struct.quirk_entry = type { i16, i16, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__param_str_quirks = internal constant [15 x i8] c"usbcore.quirks\00", align 1
@quirks_param_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @quirks_param_set, ptr @param_get_string, ptr null }, align 4
@quirks_param_string = internal global %struct.kparam_string { i32 128, ptr @quirks_param }, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @quirks_param_ops, i16 420, i8 6, i8 0, %union.anon.57 { ptr @quirks_param_string } }, section "__param", align 4
@__UNIQUE_ID_quirks215 = internal constant [89 x i8] c"usbcore.parm=quirks:Add/modify USB quirks by specifying quirks=vendorID:productID:quirks\00", section ".modinfo", align 1
@usb_endpoint_ignore = internal constant [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 1 }, %struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 129 }, %struct.usb_device_id { i16 1027, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 133 }, %struct.usb_device_id { i16 1027, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 133 }, %struct.usb_device_id zeroinitializer], align 4
@usb_quirk_list = internal constant [105 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 516, i16 24613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 536, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 536, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1008, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 16192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1054, i16 12320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1060, i16 13571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1130, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1137, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1204, i16 1318, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1255, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1255, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1256, i16 26113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1267, i16 137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1267, i16 8632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1423, i16 -28076, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1452, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1484, i16 8807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1592, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1699, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1725, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 2052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 1891, i16 402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1921, i16 21891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1921, i16 21905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2284, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2308, i16 24833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24834, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 13107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 2385, i16 5734, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2417, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 2465, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8192 }, %struct.usb_device_id { i16 3, i16 2652, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2706, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2821, i16 6112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 3034, i16 1159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 28758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 4310, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4661, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4817, i16 5563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 4817, i16 5571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 5398, i16 -31192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5426, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 6127, i16 29196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 -24558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 6127, i16 -23673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6408, i16 4885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32 }, %struct.usb_device_id { i16 3, i16 6666, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 6720, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16384 }, %struct.usb_device_id { i16 3, i16 6940, i16 6931, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6933, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 7285, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 7649, i16 -16126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 8256, i16 29184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 9094, i16 12564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 12569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 13582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 11427, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 -32634, i16 -3675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], align 4
@usb_amd_resume_quirk_list = internal constant [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6127, i16 24622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1008, i16 11082, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], align 4
@usb_interface_quirk_list = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], align 4
@quirk_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @quirk_mutex, i64 12), ptr getelementptr (i8, ptr @quirk_mutex, i64 12) } }, align 4
@quirk_list = internal unnamed_addr global ptr null, align 4
@quirk_count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@quirks_param = internal global [128 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_quirks215, ptr @__param_quirks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_endpoint_is_ignored(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %5 = tail call i32 @usb_match_device(ptr noundef %0, ptr noundef nonnull @usb_endpoint_ignore) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @usb_match_one_id_intf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @usb_endpoint_ignore) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %4, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %41, label %13

13:                                               ; preds = %10, %7, %3
  %14 = tail call i32 @usb_match_device(ptr noundef %0, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 1)) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @usb_match_one_id_intf(ptr noundef %0, ptr noundef %1, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 1)) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %4, align 1
  %21 = icmp eq i8 %20, -127
  br i1 %21, label %41, label %22

22:                                               ; preds = %19, %16, %13
  %23 = tail call i32 @usb_match_device(ptr noundef %0, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 2)) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @usb_match_one_id_intf(ptr noundef %0, ptr noundef %1, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 2)) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr %4, align 1
  %30 = icmp eq i8 %29, -123
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %25, %22
  %32 = tail call i32 @usb_match_device(ptr noundef %0, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 3)) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @usb_match_one_id_intf(ptr noundef %0, ptr noundef %1, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 3)) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8, ptr %4, align 1
  %39 = icmp eq i8 %38, -123
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %34, %31
  br label %41

41:                                               ; preds = %40, %37, %28, %19, %10
  %42 = phi i1 [ true, %10 ], [ true, %19 ], [ true, %28 ], [ true, %37 ], [ false, %40 ]
  ret i1 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id_intf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_detect_quirks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef nonnull @usb_quirk_list)
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  store i32 %2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 14
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef nonnull @usb_amd_resume_quirk_list)
  %16 = load i32, ptr %3, align 8
  %17 = or i32 %16, %15
  store i32 %17, ptr %3, align 8
  br label %18

18:                                               ; preds = %14, %7, %1
  %19 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 7
  %20 = load i16, ptr %19, align 8
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 8
  %22 = load i16, ptr %21, align 2
  tail call void @mutex_lock(ptr noundef nonnull @quirk_mutex) #5
  %23 = load i32, ptr @quirk_count, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @quirk_list, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = phi i32 [ 0, %25 ], [ %40, %39 ]
  %29 = getelementptr %struct.quirk_entry, ptr %26, i32 %28
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %20, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = getelementptr %struct.quirk_entry, ptr %26, i32 %28, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %22, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr %struct.quirk_entry, ptr %26, i32 %28, i32 2
  %38 = load i32, ptr %37, align 4
  br label %42

39:                                               ; preds = %32, %27
  %40 = add nuw i32 %28, 1
  %41 = icmp eq i32 %40, %23
  br i1 %41, label %42, label %27

42:                                               ; preds = %39, %36, %18
  %43 = phi i32 [ %38, %36 ], [ 0, %18 ], [ 0, %39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  %44 = load i32, ptr %3, align 8
  %45 = xor i32 %44, %43
  store i32 %45, ptr %3, align 8
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %50 = load i16, ptr %49, align 1
  %51 = or i16 %50, 2
  store i16 %51, ptr %49, align 1
  br label %52

52:                                               ; preds = %48, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i16, ptr %1, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  br label %8

8:                                                ; preds = %56, %5
  %9 = phi i32 [ 0, %5 ], [ %57, %56 ]
  %10 = phi ptr [ %1, %5 ], [ %58, %56 ]
  %11 = tail call i32 @usb_match_device(ptr noundef %0, ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %8
  %14 = load i16, ptr %10, align 4
  %15 = and i16 %14, 896
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %6, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %47, %17
  %21 = phi i8 [ %48, %47 ], [ %18, %17 ]
  %22 = phi i32 [ %49, %47 ], [ 0, %17 ]
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr %struct.usb_host_config, ptr %23, i32 %22, i32 0, i32 3
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %40, %20
  %28 = phi i8 [ %41, %40 ], [ %25, %20 ]
  %29 = phi i32 [ %42, %40 ], [ 0, %20 ]
  %30 = getelementptr %struct.usb_host_config, ptr %23, i32 %22, i32 4, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.usb_interface_cache, ptr %31, i32 0, i32 2
  %36 = tail call i32 @usb_match_one_id_intf(ptr noundef %0, ptr noundef %35, ptr noundef %10) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i8, ptr %24, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i8 [ %39, %38 ], [ %28, %27 ]
  %42 = add nuw nsw i32 %29, 1
  %43 = zext i8 %41 to i32
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %27, label %45

45:                                               ; preds = %40
  %46 = load i8, ptr %6, align 1
  br label %47

47:                                               ; preds = %45, %20
  %48 = phi i8 [ %46, %45 ], [ %21, %20 ]
  %49 = add nuw nsw i32 %22, 1
  %50 = zext i8 %48 to i32
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %20, label %56

52:                                               ; preds = %34, %13
  %53 = getelementptr inbounds %struct.usb_device_id, ptr %10, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, %9
  br label %56

56:                                               ; preds = %52, %47, %17, %8
  %57 = phi i32 [ %55, %52 ], [ %9, %8 ], [ %9, %17 ], [ %9, %47 ]
  %58 = getelementptr %struct.usb_device_id, ptr %10, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %8

61:                                               ; preds = %56, %2
  %62 = phi i32 [ 0, %2 ], [ %57, %56 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_detect_interface_quirks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef nonnull @usb_interface_quirk_list)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, %2
  store i32 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_release_quirk_list() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @quirk_mutex) #5
  %1 = load ptr, ptr @quirk_list, align 4
  tail call void @kfree(ptr noundef %1) #5
  store ptr null, ptr @quirk_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirks_param_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %122, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @param_set_copystring(ptr noundef nonnull %6, ptr noundef %1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %122

12:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @quirk_mutex) #5
  %13 = load i8, ptr %6, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  store i32 0, ptr @quirk_count, align 4
  %16 = load ptr, ptr @quirk_list, align 4
  tail call void @kfree(ptr noundef %16) #5
  store ptr null, ptr @quirk_list, align 4
  br label %121

17:                                               ; preds = %12
  store i32 1, ptr @quirk_count, align 4
  br label %18

18:                                               ; preds = %24, %17
  %19 = phi i8 [ %13, %17 ], [ %28, %24 ]
  %20 = phi i32 [ 1, %17 ], [ %25, %24 ]
  %21 = phi i32 [ 0, %17 ], [ %26, %24 ]
  switch i8 %19, label %24 [
    i8 0, label %29
    i8 44, label %22
  ]

22:                                               ; preds = %18
  %23 = add i32 %20, 1
  store i32 %23, ptr @quirk_count, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %22 ]
  %26 = add i32 %21, 1
  %27 = getelementptr i8, ptr %6, i32 %26
  %28 = load i8, ptr %27, align 1
  br label %18

29:                                               ; preds = %18
  %30 = load ptr, ptr @quirk_list, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  tail call void @kfree(ptr noundef nonnull %30) #5
  store ptr null, ptr @quirk_list, align 4
  %33 = load i32, ptr @quirk_count, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ %20, %29 ]
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 8) #5
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %34
  store ptr null, ptr @quirk_list, align 4
  br label %43

39:                                               ; preds = %34
  %40 = extractvalue { i32, i1 } %36, 0
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #6
  store ptr %41, ptr @quirk_list, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %38
  store i32 0, ptr @quirk_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %122

44:                                               ; preds = %39
  store ptr %6, ptr %3, align 4
  br label %45

45:                                               ; preds = %106, %44
  %46 = phi i32 [ %108, %106 ], [ 0, %44 ]
  %47 = phi ptr [ %114, %106 ], [ %6, %44 ]
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %116, label %50

50:                                               ; preds = %45
  %51 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str) #5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %116, label %53

53:                                               ; preds = %50
  %54 = call i32 @kstrtou16(ptr noundef nonnull %51, i32 noundef 16, ptr noundef nonnull %4) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %116

56:                                               ; preds = %53
  %57 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str) #5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %116, label %59

59:                                               ; preds = %56
  %60 = call i32 @kstrtou16(ptr noundef nonnull %57, i32 noundef 16, ptr noundef nonnull %5) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %59
  %63 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %116, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %63, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %116, label %68

68:                                               ; preds = %102, %65
  %69 = phi i8 [ %105, %102 ], [ %66, %65 ]
  %70 = phi i32 [ %103, %102 ], [ 0, %65 ]
  %71 = phi ptr [ %104, %102 ], [ %63, %65 ]
  switch i8 %69, label %102 [
    i8 0, label %106
    i8 97, label %72
    i8 98, label %74
    i8 99, label %76
    i8 100, label %78
    i8 101, label %80
    i8 102, label %82
    i8 103, label %84
    i8 104, label %86
    i8 105, label %88
    i8 106, label %90
    i8 107, label %92
    i8 108, label %94
    i8 109, label %96
    i8 110, label %98
    i8 111, label %100
  ]

72:                                               ; preds = %68
  %73 = or i32 %70, 1
  br label %102

74:                                               ; preds = %68
  %75 = or i32 %70, 2
  br label %102

76:                                               ; preds = %68
  %77 = or i32 %70, 4
  br label %102

78:                                               ; preds = %68
  %79 = or i32 %70, 8
  br label %102

80:                                               ; preds = %68
  %81 = or i32 %70, 16
  br label %102

82:                                               ; preds = %68
  %83 = or i32 %70, 32
  br label %102

84:                                               ; preds = %68
  %85 = or i32 %70, 64
  br label %102

86:                                               ; preds = %68
  %87 = or i32 %70, 128
  br label %102

88:                                               ; preds = %68
  %89 = or i32 %70, 256
  br label %102

90:                                               ; preds = %68
  %91 = or i32 %70, 512
  br label %102

92:                                               ; preds = %68
  %93 = or i32 %70, 1024
  br label %102

94:                                               ; preds = %68
  %95 = or i32 %70, 2048
  br label %102

96:                                               ; preds = %68
  %97 = or i32 %70, 4096
  br label %102

98:                                               ; preds = %68
  %99 = or i32 %70, 8192
  br label %102

100:                                              ; preds = %68
  %101 = or i32 %70, 16384
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %68
  %103 = phi i32 [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %72 ], [ %70, %68 ]
  %104 = getelementptr i8, ptr %71, i32 1
  %105 = load i8, ptr %104, align 1
  br label %68

106:                                              ; preds = %68
  %107 = load ptr, ptr @quirk_list, align 4
  %108 = add i32 %46, 1
  %109 = getelementptr %struct.quirk_entry, ptr %107, i32 %46
  %110 = load i16, ptr %4, align 2
  %111 = load i16, ptr %5, align 2
  store i16 %110, ptr %109, align 4
  %112 = getelementptr inbounds i8, ptr %109, i32 2
  store i16 %111, ptr %112, align 2
  %113 = getelementptr inbounds i8, ptr %109, i32 4
  store i32 %70, ptr %113, align 4
  %114 = load ptr, ptr %3, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %45

116:                                              ; preds = %106, %65, %62, %59, %56, %53, %50, %45
  %117 = phi i32 [ %46, %45 ], [ %46, %50 ], [ %46, %53 ], [ %46, %56 ], [ %46, %59 ], [ %46, %65 ], [ %46, %62 ], [ %108, %106 ]
  %118 = load i32, ptr @quirk_count, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 %117, ptr @quirk_count, align 4
  br label %121

121:                                              ; preds = %120, %116, %15
  call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  call void @kfree(ptr noundef nonnull %6) #5
  br label %122

122:                                              ; preds = %121, %43, %11, %2
  %123 = phi i32 [ %9, %11 ], [ 0, %121 ], [ -12, %43 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_copystring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
