; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_driver.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_driver.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.uvc_driver = type { %struct.usb_driver }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_device_info = type { i32, i32, i16 }
%struct.lock_class_key = type {}
%struct.uvc_format_desc = type { ptr, [16 x i8], i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.97, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%union.anon.97 = type { %struct.anon.99 }
%struct.anon.99 = type { i8, ptr, i8, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.105, %struct.anon.106, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.107, %struct.uvc_clock }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.105 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.106 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.107 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.anon.103 = type { i8, i8, ptr, ptr }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }
%struct.anon.98 = type { i16, i16, i16, i8, ptr }
%struct.anon.101 = type { i16, i8, ptr, i8 }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@uvc_clock_param = dso_local global i32 1, align 4
@uvc_timeout_param = dso_local global i32 5000, align 4
@uvc_no_drop_param = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register %s device (%d).\0A\00", align 1
@v4l2_type_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__param_str_clock = internal constant [6 x i8] c"clock\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@__param_ops_clock = internal constant %struct.kernel_param_ops { i32 0, ptr @uvc_clock_param_set, ptr @uvc_clock_param_get, ptr null }, align 4
@__param_clock = internal constant %struct.kernel_param { ptr @__param_str_clock, ptr @__this_module, ptr @__param_ops_clock, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_clock_param } }, section "__param", align 4
@__UNIQUE_ID_clock266 = internal constant [41 x i8] c"parm=clock:Video buffers timestamp clock\00", section ".modinfo", align 1
@__param_str_hwtimestamps = internal constant [13 x i8] c"hwtimestamps\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@uvc_hw_timestamps_param = dso_local global i32 0, align 4
@__param_hwtimestamps = internal constant %struct.kernel_param { ptr @__param_str_hwtimestamps, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_hw_timestamps_param } }, section "__param", align 4
@__UNIQUE_ID_hwtimestampstype267 = internal constant [27 x i8] c"parmtype=hwtimestamps:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_hwtimestamps268 = internal constant [42 x i8] c"parm=hwtimestamps:Use hardware timestamps\00", section ".modinfo", align 1
@__param_str_nodrop = internal constant [7 x i8] c"nodrop\00", align 1
@__param_nodrop = internal constant %struct.kernel_param { ptr @__param_str_nodrop, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_no_drop_param } }, section "__param", align 4
@__UNIQUE_ID_nodroptype269 = internal constant [21 x i8] c"parmtype=nodrop:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nodrop270 = internal constant [41 x i8] c"parm=nodrop:Don't drop incomplete frames\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [7 x i8] c"quirks\00", align 1
@uvc_quirks_param = internal global i32 -1, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_quirks_param } }, section "__param", align 4
@__UNIQUE_ID_quirkstype271 = internal constant [21 x i8] c"parmtype=quirks:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks272 = internal constant [33 x i8] c"parm=quirks:Forced device quirks\00", section ".modinfo", align 1
@__param_str_trace = internal constant [6 x i8] c"trace\00", align 1
@uvc_dbg_param = dso_local global i32 0, align 4
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_dbg_param } }, section "__param", align 4
@__UNIQUE_ID_tracetype273 = internal constant [20 x i8] c"parmtype=trace:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_trace274 = internal constant [31 x i8] c"parm=trace:Trace level bitmask\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [8 x i8] c"timeout\00", align 1
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_timeout_param } }, section "__param", align 4
@__UNIQUE_ID_timeouttype275 = internal constant [22 x i8] c"parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout276 = internal constant [48 x i8] c"parm=timeout:Streaming control requests timeout\00", section ".modinfo", align 1
@uvc_ids = internal constant [58 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1046, i16 -22246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1112, i16 28782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 1825, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1118, i16 1827, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 899, i16 1266, i16 -20367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.usb_device_id { i16 899, i16 1423, i16 14368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 9802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1449, i16 30320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1452, i16 -31487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.usb_device_id { i16 899, i16 1452, i16 -31232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 1480, i16 1027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 1507, i16 1285, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 1784, i16 12300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 2760, i16 13344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_fix_bandwidth to i32) }, %struct.usb_device_id { i16 899, i16 3027, i16 1365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 3725, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.usb_device_id { i16 899, i16 5075, i16 20739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5421, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 21010, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 22833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30190, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 5967, i16 -30156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6108, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6127, i16 18443, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_stream_no_fid to i32) }, %struct.usb_device_id { i16 899, i16 6257, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.usb_device_id { i16 899, i16 6257, i16 1302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6349, i16 -13570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12936, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6380, i16 12944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_def to i32) }, %struct.usb_device_id { i16 899, i16 6558, i16 -32510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 907, i16 6571, i16 4096, i16 0, i16 294, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.usb_device_id { i16 899, i16 6971, i16 10577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 6975, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_probe_minmax to i32) }, %struct.usb_device_id { i16 899, i16 7119, i16 2880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.usb_device_id { i16 899, i16 7247, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.usb_device_id { i16 899, i16 10291, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_force_y8 to i32) }, %struct.usb_device_id { i16 899, i16 10291, i16 529, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @uvc_quirk_force_y8 to i32) }, %struct.usb_device_id { i16 899, i16 10750, i16 19795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.usb_device_id { i16 899, i16 -32634, i16 2819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 1, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@uvc_driver = dso_local global %struct.uvc_driver { %struct.usb_driver { ptr @.str.1, ptr @uvc_probe, ptr @uvc_disconnect, ptr null, ptr @uvc_suspend, ptr @uvc_resume, ptr @uvc_reset_resume, ptr null, ptr null, ptr @uvc_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 } }, align 4
@__UNIQUE_ID_author277 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [35 x i8] c"description=USB Video Class driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version280 = internal constant [14 x i8] c"version=1.1.1\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"clock_\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@uvc_quirk_probe_minmax = internal constant %struct.uvc_device_info { i32 2, i32 0, i16 0 }, align 4
@uvc_quirk_probe_def = internal constant %struct.uvc_device_info { i32 256, i32 0, i16 0 }, align 4
@.compoundliteral = internal global %struct.uvc_device_info { i32 1024, i32 0, i16 0 }, align 4
@.compoundliteral.7 = internal global %struct.uvc_device_info { i32 512, i32 0, i16 0 }, align 4
@.compoundliteral.8 = internal global %struct.uvc_device_info { i32 10, i32 0, i16 0 }, align 4
@uvc_quirk_fix_bandwidth = internal constant %struct.uvc_device_info { i32 128, i32 0, i16 0 }, align 4
@uvc_quirk_stream_no_fid = internal constant %struct.uvc_device_info { i32 16, i32 0, i16 0 }, align 4
@.compoundliteral.9 = internal global %struct.uvc_device_info { i32 258, i32 0, i16 0 }, align 4
@.compoundliteral.10 = internal global %struct.uvc_device_info { i32 6, i32 0, i16 0 }, align 4
@.compoundliteral.11 = internal global %struct.uvc_device_info { i32 4, i32 0, i16 0 }, align 4
@.compoundliteral.12 = internal global %struct.uvc_device_info { i32 1, i32 0, i16 0 }, align 4
@.compoundliteral.13 = internal constant %struct.uvc_device_info { i32 0, i32 0, i16 266 }, align 4
@.compoundliteral.14 = internal global %struct.uvc_device_info { i32 34, i32 0, i16 0 }, align 4
@uvc_quirk_force_y8 = internal constant %struct.uvc_device_info { i32 2048, i32 0, i16 0 }, align 4
@.compoundliteral.15 = internal global %struct.uvc_device_info { i32 4096, i32 0, i16 0 }, align 4
@.compoundliteral.16 = internal global %struct.uvc_device_info { i32 0, i32 1482175556, i16 0 }, align 4
@uvc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@uvc_quirk_none = internal constant %struct.uvc_device_info zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Probing known UVC device %s (%04x:%04x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Probing generic UVC device %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"UVC Camera (%04x:%04x)\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Unable to parse UVC descriptors\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Unable to parse UVC GPIOs\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Found UVC %u.%02x device %s (%04x:%04x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@.str.27 = private unnamed_addr constant [72 x i8] c"Forcing device quirks to 0x%x by module parameter for testing purpose.\0A\00", align 1
@.str.28 = private unnamed_addr constant [68 x i8] c"Please report required quirks to the linux-uvc-devel mailing list.\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Forcing UVC version to %u.%02x\0A\00", align 1
@.str.30 = private unnamed_addr constant [88 x i8] c"Unable to initialize the status endpoint (%d), status interrupt will not be supported.\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Unable to request privacy GPIO IRQ (%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"UVC device initialized\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Found a Status endpoint (addr %02x)\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d EXTENSION_UNIT error\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Extension %u\00", align 1
@uvc_gpio_guid = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", align 1
@uvc_camera_guid = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 1
@uvc_media_transport_input_guid = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03", align 1
@uvc_processing_guid = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"device %d videocontrol interface %d HEADER error\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"device %d interface %d doesn't exists\0A\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL error\0A\00", align 1
@.str.40 = private unnamed_addr constant [89 x i8] c"device %d videocontrol interface %d INPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Camera %u\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Media %u\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Input %u\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL error\0A\00", align 1
@.str.45 = private unnamed_addr constant [90 x i8] c"device %d videocontrol interface %d OUTPUT_TERMINAL %d has invalid type 0x%04x, skipping\0A\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Output %u\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"device %d videocontrol interface %d SELECTOR_UNIT error\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Selector %u\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c"device %d videocontrol interface %d PROCESSING_UNIT error\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Processing %u\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"Found an unknown CS_INTERFACE descriptor (%u)\0A\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"device %d interface %d isn't a video streaming interface\0A\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"device %d interface %d is already claimed\0A\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"trying extra data from endpoint %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"no class-specific streaming interface descriptors found\0A\00", align 1
@.str.56 = private unnamed_addr constant [67 x i8] c"device %d videostreaming interface %d HEADER descriptor not found\0A\00", align 1
@.str.57 = private unnamed_addr constant [68 x i8] c"device %d videostreaming interface %d HEADER descriptor is invalid\0A\00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"device %d videostreaming interface %d FORMAT %u is not supported\0A\00", align 1
@.str.59 = private unnamed_addr constant [72 x i8] c"device %d videostreaming interface %d has no supported formats defined\0A\00", align 1
@.str.60 = private unnamed_addr constant [83 x i8] c"device %d videostreaming interface %d has %u bytes of trailing descriptor garbage\0A\00", align 1
@uvc_stream_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"&stream->mutex\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"device %d videostreaming interface %d FORMAT error\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"Unknown video format %pUl\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"%pUl\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Greyscale 8-bit (Y8  )\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"MJPEG\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"SD-DV\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"SDL-DV\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"HD-DV\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"device %d videostreaming interface %d: unknown DV format %u\0A\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c" 60Hz\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c" 50Hz\00", align 1
@.str.73 = private unnamed_addr constant [61 x i8] c"device %d videostreaming interface %d unsupported format %u\0A\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Found format %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"device %d videostreaming interface %d FRAME error\0A\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"- %ux%u (%u.%u fps)\0A\00", align 1
@.str.77 = private unnamed_addr constant [57 x i8] c"device %d videostreaming interface %d COLORFORMAT error\0A\00", align 1
@uvc_fmts = internal global [36 x %struct.uvc_format_desc] [%struct.uvc_format_desc { ptr @.str.78, [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", i32 1448695129 }, %struct.uvc_format_desc { ptr @.str.78, [16 x i8] c"YUY2\00\00\10\00\80\00\00\00\008\9Bq", i32 1448695129 }, %struct.uvc_format_desc { ptr @.str.79, [16 x i8] c"NV12\00\00\10\00\80\00\00\AA\008\9Bq", i32 842094158 }, %struct.uvc_format_desc { ptr @.str.66, [16 x i8] c"MJPG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1196444237 }, %struct.uvc_format_desc { ptr @.str.80, [16 x i8] c"YV12\00\00\10\00\80\00\00\AA\008\9Bq", i32 842094169 }, %struct.uvc_format_desc { ptr @.str.81, [16 x i8] c"I420\00\00\10\00\80\00\00\AA\008\9Bq", i32 842093913 }, %struct.uvc_format_desc { ptr @.str.82, [16 x i8] c"M420\00\00\10\00\80\00\00\AA\008\9Bq", i32 808596557 }, %struct.uvc_format_desc { ptr @.str.83, [16 x i8] c"UYVY\00\00\10\00\80\00\00\AA\008\9Bq", i32 1498831189 }, %struct.uvc_format_desc { ptr @.str.84, [16 x i8] c"Y800\00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.65, [16 x i8] c"Y8  \00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.85, [16 x i8] c"2\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.86, [16 x i8] c"2\00\00\00\02\00\10\00\80\00\00\AA\008\9Bq", i32 1497715271 }, %struct.uvc_format_desc { ptr @.str.87, [16 x i8] c"Y10 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540029273 }, %struct.uvc_format_desc { ptr @.str.88, [16 x i8] c"Y12 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540160345 }, %struct.uvc_format_desc { ptr @.str.89, [16 x i8] c"Y16 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540422489 }, %struct.uvc_format_desc { ptr @.str.90, [16 x i8] c"BY8 \00\00\10\00\80\00\00\AA\008\9Bq", i32 825770306 }, %struct.uvc_format_desc { ptr @.str.91, [16 x i8] c"BA81\00\00\10\00\80\00\00\AA\008\9Bq", i32 825770306 }, %struct.uvc_format_desc { ptr @.str.92, [16 x i8] c"GBRG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1196573255 }, %struct.uvc_format_desc { ptr @.str.93, [16 x i8] c"GRBG\00\00\10\00\80\00\00\AA\008\9Bq", i32 1195528775 }, %struct.uvc_format_desc { ptr @.str.94, [16 x i8] c"RGGB\00\00\10\00\80\00\00\AA\008\9Bq", i32 1111967570 }, %struct.uvc_format_desc { ptr @.str.95, [16 x i8] c"RGBP\00\00\10\00\80\00\00\AA\008\9Bq", i32 1346520914 }, %struct.uvc_format_desc { ptr @.str.96, [16 x i8] c"}\EB6\E4OR\CE\11\9FS\00 \AF\0B\A7p", i32 861030210 }, %struct.uvc_format_desc { ptr @.str.97, [16 x i8] c"H264\00\00\10\00\80\00\00\AA\008\9Bq", i32 875967048 }, %struct.uvc_format_desc { ptr @.str.98, [16 x i8] c"Y8I \00\00\10\00\80\00\00\AA\008\9Bq", i32 541669465 }, %struct.uvc_format_desc { ptr @.str.99, [16 x i8] c"Y12I\00\00\10\00\80\00\00\AA\008\9Bq", i32 1228026201 }, %struct.uvc_format_desc { ptr @.str.100, [16 x i8] c"Z16 \00\00\10\00\80\00\00\AA\008\9Bq", i32 540422490 }, %struct.uvc_format_desc { ptr @.str.101, [16 x i8] c"RW10\00\00\10\00\80\00\00\AA\008\9Bq", i32 1094799984 }, %struct.uvc_format_desc { ptr @.str.102, [16 x i8] c"BG16\00\00\10\00\80\00\00\AA\008\9Bq", i32 844257602 }, %struct.uvc_format_desc { ptr @.str.103, [16 x i8] c"GB16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909197895 }, %struct.uvc_format_desc { ptr @.str.104, [16 x i8] c"RG16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909199186 }, %struct.uvc_format_desc { ptr @.str.105, [16 x i8] c"GR16\00\00\10\00\80\00\00\AA\008\9Bq", i32 909201991 }, %struct.uvc_format_desc { ptr @.str.100, [16 x i8] c"INVZ\90-XJ\92\0Bw?\1F,Uk", i32 540422490 }, %struct.uvc_format_desc { ptr @.str.87, [16 x i8] c"INVI\DBWI^\8E?\F4yS+\94o", i32 540029273 }, %struct.uvc_format_desc { ptr @.str.106, [16 x i8] c"INZIf\1AB\A2\90e\D0\18\14\A8\EF\8A", i32 1230655049 }, %struct.uvc_format_desc { ptr @.str.107, [16 x i8] c"C   \00\00\10\00\80\00\00\AA\008\9Bq", i32 877022787 }, %struct.uvc_format_desc { ptr @.str.108, [16 x i8] c"HEVC\00\00\10\00\80\00\00\AA\008\9Bq", i32 1129727304 }], align 4
@.str.78 = private unnamed_addr constant [17 x i8] c"YUV 4:2:2 (YUYV)\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"YUV 4:2:0 (NV12)\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"YVU 4:2:0 (YV12)\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"YUV 4:2:0 (I420)\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"YUV 4:2:0 (M420)\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"YUV 4:2:2 (UYVY)\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"Greyscale 8-bit (Y800)\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"Greyscale 8-bit (D3DFMT_L8)\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"IR 8-bit (L8_IR)\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"Greyscale 10-bit (Y10 )\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"Greyscale 12-bit (Y12 )\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Greyscale 16-bit (Y16 )\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"BGGR Bayer (BY8 )\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"BGGR Bayer (BA81)\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"GBRG Bayer (GBRG)\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"GRBG Bayer (GRBG)\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"RGGB Bayer (RGGB)\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"RGB565\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"BGR 8:8:8 (BGR3)\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"H.264\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"Greyscale 8 L/R (Y8I)\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"Greyscale 12 L/R (Y12I)\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"Depth data 16-bit (Z16)\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"Bayer 10-bit (SRGGB10P)\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"Bayer 16-bit (SBGGR16)\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"Bayer 16-bit (SGBRG16)\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"Bayer 16-bit (SRGGB16)\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"Bayer 16-bit (SGRBG16)\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"IR:Depth 26-bit (INZI)\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"4-bit Depth Confidence (Packed)\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"HEVC\00", align 1
@uvc_colorspace.colorprimaries = internal unnamed_addr constant [6 x i32] [i32 8, i32 8, i32 5, i32 6, i32 1, i32 2], align 4
@uvc_xfer_func.xfer_funcs = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 4, i32 5, i32 2], align 4
@uvc_ycbcr_enc.ycbcr_encs = internal unnamed_addr constant [6 x i32] [i32 0, i32 2, i32 1, i32 1, i32 1, i32 8], align 4
@.str.109 = private unnamed_addr constant [8 x i8] c"privacy\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"No IRQ for privacy GPIO (%d)\0A\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"Found a valid video chain (%s)\0A\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"No valid video chain found.\0A\00", align 1
@uvc_alloc_chain.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"&chain->ctrl_mutex\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"Scanning UVC chain:\00", align 1
@.str.116 = private unnamed_addr constant [47 x i8] c"Found reference to entity %d already in chain\0A\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"\01c <- XU %d\00", align 1
@.str.118 = private unnamed_addr constant [45 x i8] c"Extension unit %d has more than 1 input pin\0A\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"\01c <- PU %d\00", align 1
@.str.120 = private unnamed_addr constant [42 x i8] c"Found multiple Processing Units in chain\0A\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"\01c <- SU %d\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"Found multiple Selector Units in chain\0A\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"\01c <- IT %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"\01c OT %d\00", align 1
@.str.125 = private unnamed_addr constant [47 x i8] c"Unsupported entity type 0x%04x found in chain\0A\00", align 1
@.str.126 = private unnamed_addr constant [42 x i8] c"Can't connect extension unit %u in chain\0A\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"\01c (->\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"\01c XU %d\00", align 1
@.str.129 = private unnamed_addr constant [31 x i8] c"Unsupported input terminal %u\0A\00", align 1
@.str.130 = private unnamed_addr constant [59 x i8] c"Unsupported connection between output terminals %u and %u\0A\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"\01c)\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"\01c <- IT\00", align 1
@.str.133 = private unnamed_addr constant [64 x i8] c"Selector unit %d input %d isn't connected to an input terminal\0A\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"\01c %d\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"Found reference to unknown entity %d\0A\00", align 1
@uvc_print_chain.buffer = internal global [43 x i8] zeroinitializer, align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.141 = private unnamed_addr constant [48 x i8] c"Found a video chain by fallback heuristic (%s)\0A\00", align 1
@.str.142 = private unnamed_addr constant [35 x i8] c"Failed to register entities (%d).\0A\00", align 1
@.str.143 = private unnamed_addr constant [46 x i8] c"No streaming interface found for terminal %u.\00", align 1
@.str.144 = private unnamed_addr constant [39 x i8] c"Failed to initialize the device (%d).\0A\00", align 1
@uvc_fops = external dso_local constant %struct.v4l2_file_operations, align 4
@uvc_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@.str.145 = private unnamed_addr constant [17 x i8] c"uvc_privacy_gpio\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"Suspending interface %u\0A\00", align 1
@.str.147 = private unnamed_addr constant [49 x i8] c"Suspend: video streaming USB interface mismatch\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"Resuming interface %u\0A\00", align 1
@.str.149 = private unnamed_addr constant [48 x i8] c"Resume: video streaming USB interface mismatch\0A\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_clock266, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_hwtimestamps268, ptr @__UNIQUE_ID_hwtimestampstype267, ptr @__UNIQUE_ID_license279, ptr @__UNIQUE_ID_nodrop270, ptr @__UNIQUE_ID_nodroptype269, ptr @__UNIQUE_ID_quirks272, ptr @__UNIQUE_ID_quirkstype271, ptr @__UNIQUE_ID_timeout276, ptr @__UNIQUE_ID_timeouttype275, ptr @__UNIQUE_ID_trace274, ptr @__UNIQUE_ID_tracetype273, ptr @__UNIQUE_ID_version280, ptr @__param_clock, ptr @__param_hwtimestamps, ptr @__param_nodrop, ptr @__param_quirks, ptr @__param_timeout, ptr @__param_trace], section "llvm.metadata"
@switch.table.uvc_probe = private unnamed_addr constant [3 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69], align 4

@__mod_usb__uvc_ids_device_table = dso_local alias [58 x %struct.usb_device_id], ptr @uvc_ids

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @uvc_find_endpoint(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_host_interface, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %19, label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ 0, %7 ], [ %11, %10 ]
  %15 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %14
  %16 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %19, label %10

19:                                               ; preds = %13, %10, %2
  %20 = phi ptr [ null, %2 ], [ null, %10 ], [ %15, %13 ]
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_simplify_fraction(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #22
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %52, label %7, !prof !8

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4
  %13 = icmp ne i32 %2, 0
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load i32, ptr %0, align 4
  br label %18

18:                                               ; preds = %25, %16
  %19 = phi i32 [ %28, %25 ], [ 0, %16 ]
  %20 = phi i32 [ %27, %25 ], [ %12, %16 ]
  %21 = phi i32 [ %20, %25 ], [ %17, %16 ]
  %22 = udiv i32 %21, %20
  %23 = getelementptr i32, ptr %9, i32 %19
  store i32 %22, ptr %23, align 4
  %24 = icmp ult i32 %22, %3
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = mul nuw i32 %22, %20
  %27 = sub nuw i32 %21, %26
  %28 = add nuw i32 %19, 1
  %29 = icmp ult i32 %28, %2
  %30 = icmp ne i32 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %18, label %37

32:                                               ; preds = %18
  %33 = icmp ult i32 %19, 2
  %34 = zext i1 %33 to i32
  %35 = add nuw i32 %19, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32, %25
  %38 = phi i32 [ %35, %32 ], [ %28, %25 ]
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %43, %39 ], [ %38, %37 ]
  %41 = phi i32 [ %47, %39 ], [ 1, %37 ]
  %42 = phi i32 [ %41, %39 ], [ 0, %37 ]
  %43 = add i32 %40, -1
  %44 = getelementptr i32, ptr %9, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, %41
  %47 = add i32 %46, %42
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %49, label %39

49:                                               ; preds = %39, %32, %11
  %50 = phi i32 [ 0, %32 ], [ 0, %11 ], [ %41, %39 ]
  %51 = phi i32 [ 1, %32 ], [ 1, %11 ], [ %47, %39 ]
  store i32 %51, ptr %0, align 4
  store i32 %50, ptr %1, align 4
  tail call void @kfree(ptr noundef nonnull %9) #22
  br label %52

52:                                               ; preds = %49, %7, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @uvc_fraction_to_interval(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = udiv i32 %0, %1
  %6 = icmp ugt i32 %5, 428
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = icmp ugt i32 %0, 429
  br i1 %8, label %9, label %18

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %12, %9 ], [ 10000000, %7 ]
  %11 = phi i32 [ %13, %9 ], [ %1, %7 ]
  %12 = lshr i32 %10, 1
  %13 = lshr i32 %11, 1
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 %0)
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %9, label %16

16:                                               ; preds = %9
  %17 = icmp ult i32 %11, 2
  br i1 %17, label %23, label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %12, %16 ], [ 10000000, %7 ]
  %20 = phi i32 [ %13, %16 ], [ %1, %7 ]
  %21 = mul i32 %19, %0
  %22 = udiv i32 %21, %20
  br label %23

23:                                               ; preds = %18, %16, %4, %2
  %24 = phi i32 [ -1, %4 ], [ -1, %2 ], [ %22, %18 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @uvc_entity_by_id(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uvc_entity, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_register_video_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = load i32, ptr @uvc_no_drop_param, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = tail call i32 @uvc_queue_init(ptr noundef %3, i32 noundef %4, i32 noundef %10) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 11
  %15 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 24
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 23
  store ptr @uvc_release, ptr %18, align 8
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.uvc_video_chain, ptr %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 11
  store ptr %21, ptr %22, align 4
  %23 = icmp eq i32 %4, 2
  %24 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 14
  br i1 %23, label %25, label %27

25:                                               ; preds = %13
  store i32 1, ptr %24, align 4
  %26 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 4
  store i32 67108866, ptr %26, align 8
  br label %32

27:                                               ; preds = %13
  store i32 0, ptr %24, align 4
  %28 = icmp eq i32 %4, 13
  %29 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 4
  br i1 %28, label %31, label %30

30:                                               ; preds = %27
  store i32 67108865, ptr %29, align 8
  br label %32

31:                                               ; preds = %27
  store i32 75497472, ptr %29, align 8
  br label %32

32:                                               ; preds = %31, %30, %25
  %33 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 12
  %34 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 5
  %35 = tail call i32 @strscpy(ptr noundef %33, ptr noundef %34, i32 noundef 32) #22
  %36 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  store ptr %1, ptr %36, align 8
  %37 = load ptr, ptr %16, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @__video_register_device(ptr noundef %2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %38) #22
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.uvc_streaming, ptr %1, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  %45 = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %4
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef %46, i32 noundef %39) #24
  br label %58

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #22, !srcloc !9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #22, !srcloc !10
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !8

52:                                               ; preds = %47
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !11

56:                                               ; preds = %52, %47
  %57 = phi i32 [ 2, %47 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #22
  br label %58

58:                                               ; preds = %56, %52, %41, %7
  %59 = phi i32 [ %39, %41 ], [ %11, %7 ], [ 0, %52 ], [ 0, %56 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 17
  tail call fastcc void @kref_put(ptr noundef %6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 752) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %1796, label %11

11:                                               ; preds = %2
  %12 = inttoptr i32 %7 to ptr
  %13 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 14
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 14, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 15
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 15, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 16
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 16, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 17
  store volatile i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 9
  store volatile i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef nonnull @uvc_probe.__key) #22
  %22 = tail call ptr @usb_get_dev(ptr noundef %5) #22
  store ptr %22, ptr %9, align 8
  %23 = tail call ptr @usb_get_intf(ptr noundef %0) #22
  %24 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 4
  store i32 %29, ptr %30, align 8
  %31 = icmp eq i32 %7, 0
  %32 = select i1 %31, ptr @uvc_quirk_none, ptr %12
  %33 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 6
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr @uvc_quirks_param, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %11
  %37 = load i32, ptr %32, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi i32 [ %37, %36 ], [ %34, %11 ]
  %40 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i16 %42, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = icmp eq i16 %47, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr @uvc_dbg_param, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  %57 = getelementptr i8, ptr %4, i32 -124
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %56, ptr noundef nonnull @.str.19, ptr noundef %57, i32 noundef %43, i32 noundef %48) #24
  br label %66

58:                                               ; preds = %45, %38
  %59 = load i32, ptr @uvc_dbg_param, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  %65 = getelementptr i8, ptr %4, i32 -124
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %64, ptr noundef nonnull @.str.20, ptr noundef %65) #24
  br label %66

66:                                               ; preds = %62, %58, %54, %50
  %67 = getelementptr i8, ptr %4, i32 648
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  %70 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 5
  br i1 %69, label %73, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @strscpy(ptr noundef %70, ptr noundef nonnull %68, i32 noundef 32) #22
  br label %81

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %4, i32 480
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %4, i32 482
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %70, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %76, i32 noundef %79)
  br label %81

81:                                               ; preds = %73, %71
  %82 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %83, i32 0, i32 7
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85, %81
  %90 = load ptr, ptr %25, align 4
  %91 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %90, i32 0, i32 8
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89, %85
  %95 = phi i8 [ %92, %89 ], [ %87, %85 ]
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 5
  %98 = tail call i32 @strlcat(ptr noundef %97, ptr noundef nonnull @.str.22, i32 noundef 32) #22
  %99 = tail call i32 @strlen(ptr noundef %97)
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = sub i32 32, %99
  %102 = tail call i32 @usb_string(ptr noundef %5, i32 noundef %96, ptr noundef %100, i32 noundef %101) #22
  br label %103

103:                                              ; preds = %94, %89
  %104 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %105 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 10
  store ptr %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 10, i32 2
  %107 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 5
  %108 = tail call i32 @strscpy(ptr noundef %106, ptr noundef %107, i32 noundef 32) #22
  %109 = getelementptr i8, ptr %4, i32 656
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 10, i32 4
  %114 = tail call i32 @strscpy(ptr noundef %113, ptr noundef nonnull %110, i32 noundef 40) #22
  br label %115

115:                                              ; preds = %112, %103
  %116 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 10, i32 5
  %117 = getelementptr i8, ptr %4, i32 -64
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.usb_bus, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %4, i32 -124
  %122 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %116, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef %120, ptr noundef %121) #22
  %123 = getelementptr i8, ptr %4, i32 484
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 10, i32 6
  store i32 %125, ptr %126, align 8
  tail call void @media_device_init(ptr noundef %105) #22
  %127 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 11
  %128 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 11, i32 1
  store ptr %105, ptr %128, align 4
  %129 = load ptr, ptr %24, align 4
  %130 = getelementptr inbounds %struct.usb_interface, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.usb_host_interface, ptr %131, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp sgt i32 %133, 2
  br i1 %134, label %135, label %1621

135:                                              ; preds = %115
  %136 = getelementptr inbounds %struct.usb_host_interface, ptr %131, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 12
  %139 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 13
  br label %140

140:                                              ; preds = %1616, %135
  %141 = phi ptr [ %131, %135 ], [ %1620, %1616 ]
  %142 = phi i32 [ %133, %135 ], [ %1614, %1616 ]
  %143 = phi ptr [ %137, %135 ], [ %1617, %1616 ]
  %144 = load ptr, ptr %9, align 8
  %145 = getelementptr inbounds %struct.usb_device, ptr %144, i32 0, i32 16, i32 7
  %146 = load i16, ptr %145, align 8
  %147 = icmp eq i16 %146, 1133
  br i1 %147, label %148, label %272

148:                                              ; preds = %140
  %149 = getelementptr i8, ptr %143, i32 1
  %150 = load i8, ptr %149, align 1
  %151 = icmp eq i8 %150, 65
  br i1 %151, label %152, label %272

152:                                              ; preds = %148
  %153 = getelementptr i8, ptr %143, i32 2
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 1
  br i1 %155, label %156, label %272

156:                                              ; preds = %152
  %157 = icmp ugt i32 %142, 21
  br i1 %157, label %158, label %162

158:                                              ; preds = %156
  %159 = getelementptr i8, ptr %143, i32 21
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  br label %162

162:                                              ; preds = %158, %156
  %163 = phi i32 [ %161, %158 ], [ 0, %156 ]
  %164 = add nuw nsw i32 %163, 25
  %165 = icmp ugt i32 %164, %142
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = add nuw nsw i32 %163, 22
  %168 = getelementptr i8, ptr %143, i32 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  br label %171

171:                                              ; preds = %166, %162
  %172 = phi i32 [ %170, %166 ], [ 0, %162 ]
  %173 = shl nuw nsw i32 %172, 1
  %174 = add nuw nsw i32 %173, %164
  %175 = icmp ugt i32 %174, %142
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i32, ptr @uvc_dbg_param, align 4
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %272, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.usb_device, ptr %144, i32 0, i32 15
  %182 = load i32, ptr %144, align 8
  %183 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %141, i32 0, i32 2
  %184 = load i8, ptr %183, align 2
  %185 = zext i8 %184 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %181, ptr noundef nonnull @.str.35, i32 noundef %182, i32 noundef %185) #24
  br label %272

186:                                              ; preds = %171
  %187 = getelementptr i8, ptr %143, i32 3
  %188 = load i8, ptr %187, align 1
  %189 = add nuw nsw i32 %163, 1
  %190 = add nuw nsw i32 %173, 31
  %191 = and i32 %190, 992
  %192 = add nuw nsw i32 %163, 356
  %193 = shl nuw nsw i32 %189, 5
  %194 = add nuw nsw i32 %192, %193
  %195 = add nuw nsw i32 %194, %191
  %196 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %195, i32 noundef 3520) #23
  %197 = icmp eq ptr %196, null
  br i1 %197, label %1611, label %198

198:                                              ; preds = %186
  %199 = zext i8 %188 to i16
  %200 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 3
  store i16 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 4
  store i16 6, ptr %201, align 2
  %202 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 10
  store i32 0, ptr %202, align 4
  %203 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 9
  store i32 %189, ptr %203, align 16
  %204 = getelementptr %struct.uvc_entity, ptr %196, i32 1
  %205 = getelementptr i8, ptr %204, i32 %191
  %206 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 11
  store ptr %205, ptr %206, align 8
  %207 = icmp eq i32 %163, 0
  br i1 %207, label %231, label %208

208:                                              ; preds = %198
  %209 = getelementptr %struct.media_pad, ptr %205, i32 0, i32 4
  store i32 1, ptr %209, align 32
  %210 = icmp eq i32 %163, 1
  br i1 %210, label %231, label %211

211:                                              ; preds = %208
  %212 = getelementptr %struct.media_pad, ptr %205, i32 1, i32 4
  store i32 1, ptr %212, align 32
  %213 = icmp eq i32 %163, 2
  br i1 %213, label %231, label %214

214:                                              ; preds = %211
  %215 = getelementptr %struct.media_pad, ptr %205, i32 2, i32 4
  store i32 1, ptr %215, align 32
  %216 = icmp eq i32 %163, 3
  br i1 %216, label %229, label %217

217:                                              ; preds = %214
  %218 = getelementptr %struct.media_pad, ptr %205, i32 3, i32 4
  store i32 1, ptr %218, align 32
  %219 = icmp eq i32 %163, 4
  br i1 %219, label %226, label %220

220:                                              ; preds = %220, %217
  %221 = phi i32 [ %224, %220 ], [ 4, %217 ]
  %222 = load ptr, ptr %206, align 8
  %223 = getelementptr %struct.media_pad, ptr %222, i32 %221, i32 4
  store i32 1, ptr %223, align 4
  %224 = add nuw i32 %221, 1
  %225 = icmp eq i32 %224, %163
  br i1 %225, label %226, label %220

226:                                              ; preds = %220, %217
  %227 = load i16, ptr %201, align 2
  %228 = icmp sgt i16 %227, -1
  br i1 %228, label %229, label %234

229:                                              ; preds = %226, %214
  %230 = load ptr, ptr %206, align 8
  br label %231

231:                                              ; preds = %229, %211, %208, %198
  %232 = phi ptr [ %205, %198 ], [ %205, %208 ], [ %230, %229 ], [ %205, %211 ]
  %233 = getelementptr %struct.media_pad, ptr %232, i32 %163, i32 4
  store i32 2, ptr %233, align 4
  br label %234

234:                                              ; preds = %231, %226
  %235 = trunc i32 %163 to i8
  %236 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 13
  store i8 %235, ptr %236, align 4
  %237 = load ptr, ptr %206, align 8
  %238 = getelementptr %struct.media_pad, ptr %237, i32 %189
  %239 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 14
  store ptr %238, ptr %239, align 16
  %240 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 6
  %241 = getelementptr i8, ptr %143, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %240, ptr noundef align 1 dereferenceable(16) %241, i32 16, i1 false) #22
  %242 = getelementptr i8, ptr %143, i32 20
  %243 = load i8, ptr %242, align 1
  %244 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 12
  store i8 %243, ptr %244, align 4
  %245 = getelementptr i8, ptr %143, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %238, ptr align 1 %245, i32 %163, i1 false) #22
  %246 = add nuw nsw i32 %163, 22
  %247 = getelementptr i8, ptr %143, i32 %246
  %248 = load i8, ptr %247, align 1
  %249 = getelementptr inbounds %struct.anon.103, ptr %244, i32 0, i32 1
  store i8 %248, ptr %249, align 1
  %250 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 12, i32 0, i32 1
  store ptr %204, ptr %250, align 64
  %251 = getelementptr i8, ptr %204, i32 %172
  %252 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 12, i32 0, i32 2
  store ptr %251, ptr %252, align 4
  %253 = add nuw nsw i32 %163, 23
  %254 = getelementptr i8, ptr %143, i32 %253
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %204, ptr align 1 %254, i32 %173, i1 false) #22
  %255 = add nuw nsw i32 %163, 24
  %256 = add nuw nsw i32 %255, %173
  %257 = getelementptr i8, ptr %143, i32 %256
  %258 = load i8, ptr %257, align 1
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %234
  %261 = zext i8 %258 to i32
  %262 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 5
  %263 = tail call i32 @usb_string(ptr noundef %144, i32 noundef %261, ptr noundef %262, i32 noundef 64) #22
  br label %269

264:                                              ; preds = %234
  %265 = getelementptr inbounds %struct.uvc_entity, ptr %196, i32 0, i32 5
  %266 = load i8, ptr %187, align 1
  %267 = zext i8 %266 to i32
  %268 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %265, ptr noundef nonnull @.str.36, i32 noundef %267) #22
  br label %269

269:                                              ; preds = %264, %260
  %270 = load ptr, ptr %14, align 4
  store ptr %196, ptr %14, align 4
  store ptr %13, ptr %196, align 64
  %271 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %270, ptr %271, align 4
  store volatile ptr %196, ptr %270, align 4
  br label %1611

272:                                              ; preds = %180, %176, %152, %148, %140
  %273 = getelementptr i8, ptr %143, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = icmp eq i8 %274, 36
  br i1 %275, label %276, label %1611

276:                                              ; preds = %272
  %277 = load ptr, ptr %9, align 8
  %278 = load ptr, ptr %24, align 4
  %279 = getelementptr inbounds %struct.usb_interface, ptr %278, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr i8, ptr %143, i32 2
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  switch i8 %282, label %1605 [
    i8 1, label %284
    i8 2, label %1174
    i8 3, label %1301
    i8 4, label %1353
    i8 5, label %1428
    i8 6, label %1502
  ]

284:                                              ; preds = %276
  %285 = icmp ugt i32 %142, 11
  br i1 %285, label %286, label %290

286:                                              ; preds = %284
  %287 = getelementptr i8, ptr %143, i32 11
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  br label %290

290:                                              ; preds = %286, %284
  %291 = phi i32 [ %289, %286 ], [ 0, %284 ]
  %292 = add nuw nsw i32 %291, 12
  %293 = icmp ugt i32 %292, %142
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load i32, ptr @uvc_dbg_param, align 4
  %296 = and i32 %295, 2
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %1665, label %1658

298:                                              ; preds = %290
  %299 = getelementptr i8, ptr %143, i32 3
  %300 = load i16, ptr %299, align 1
  store i16 %300, ptr %138, align 8
  %301 = getelementptr i8, ptr %143, i32 7
  %302 = load i32, ptr %301, align 1
  store i32 %302, ptr %139, align 4
  %303 = icmp eq i32 %291, 0
  br i1 %303, label %1611, label %304

304:                                              ; preds = %1171, %298
  %305 = phi i32 [ %1172, %1171 ], [ 0, %298 ]
  %306 = add nuw nsw i32 %305, 12
  %307 = getelementptr i8, ptr %143, i32 %306
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i32
  %310 = tail call ptr @usb_ifnum_to_if(ptr noundef %277, i32 noundef %309) #22
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %320

312:                                              ; preds = %304
  %313 = load i32, ptr @uvc_dbg_param, align 4
  %314 = and i32 %313, 2
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %1171, label %316

316:                                              ; preds = %312
  %317 = load ptr, ptr %9, align 8
  %318 = getelementptr inbounds %struct.usb_device, ptr %317, i32 0, i32 15
  %319 = load i32, ptr %277, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %318, ptr noundef nonnull @.str.38, i32 noundef %319, i32 noundef %305) #24
  br label %1171

320:                                              ; preds = %304
  %321 = load ptr, ptr %310, align 8
  %322 = getelementptr inbounds %struct.usb_host_interface, ptr %321, i32 0, i32 2
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.usb_host_interface, ptr %321, i32 0, i32 1
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr inbounds %struct.usb_interface, ptr %310, i32 0, i32 1
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %327, i32 0, i32 6
  %329 = load i8, ptr %328, align 2
  %330 = icmp eq i8 %329, 2
  br i1 %330, label %342, label %331

331:                                              ; preds = %320
  %332 = load i32, ptr @uvc_dbg_param, align 4
  %333 = and i32 %332, 2
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %1171, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %9, align 8
  %337 = getelementptr inbounds %struct.usb_device, ptr %336, i32 0, i32 15
  %338 = load i32, ptr %336, align 8
  %339 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 2
  %340 = load i8, ptr %339, align 2
  %341 = zext i8 %340 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %337, ptr noundef nonnull @.str.52, i32 noundef %338, i32 noundef %341) #24
  br label %1171

342:                                              ; preds = %320
  %343 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %310, ptr noundef %9) #22
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %357, label %345

345:                                              ; preds = %342
  %346 = load i32, ptr @uvc_dbg_param, align 4
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %1171, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %9, align 8
  %351 = getelementptr inbounds %struct.usb_device, ptr %350, i32 0, i32 15
  %352 = load i32, ptr %350, align 8
  %353 = load ptr, ptr %310, align 8
  %354 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %353, i32 0, i32 2
  %355 = load i8, ptr %354, align 2
  %356 = zext i8 %355 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %351, ptr noundef nonnull @.str.53, i32 noundef %352, i32 noundef %356) #24
  br label %1171

357:                                              ; preds = %342
  %358 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %359 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %358, i32 noundef 3520, i32 noundef 5832) #25
  %360 = icmp eq ptr %359, null
  br i1 %360, label %380, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %362, ptr noundef nonnull @.str.61, ptr noundef nonnull @uvc_stream_new.__key) #22
  %363 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 1
  store ptr %9, ptr %363, align 8
  %364 = tail call ptr @usb_get_intf(ptr noundef nonnull %310) #22
  %365 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 5
  store ptr %364, ptr %365, align 8
  %366 = load ptr, ptr %326, align 4
  %367 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %366, i32 0, i32 2
  %368 = load i8, ptr %367, align 2
  %369 = zext i8 %368 to i32
  %370 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 6
  store i32 %369, ptr %370, align 4
  %371 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #22
  %372 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 19
  store ptr %371, ptr %372, align 8
  %373 = icmp eq ptr %371, null
  br i1 %373, label %374, label %381

374:                                              ; preds = %361
  %375 = load ptr, ptr %365, align 8
  tail call void @usb_put_intf(ptr noundef %375) #22
  %376 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 11
  %377 = load ptr, ptr %376, align 8
  tail call void @kfree(ptr noundef %377) #22
  %378 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 4
  %379 = load ptr, ptr %378, align 8
  tail call void @kfree(ptr noundef %379) #22
  tail call void @kfree(ptr noundef nonnull %359) #22
  br label %380

380:                                              ; preds = %374, %357
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %310) #22
  br label %1171

381:                                              ; preds = %361
  %382 = icmp eq i32 %325, 0
  br i1 %382, label %383, label %417

383:                                              ; preds = %381
  %384 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 4
  %385 = load i8, ptr %384, align 4
  %386 = zext i8 %385 to i32
  %387 = icmp eq i8 %385, 0
  br i1 %387, label %436, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.usb_host_interface, ptr %321, i32 0, i32 3
  %390 = load ptr, ptr %389, align 4
  br label %391

391:                                              ; preds = %414, %388
  %392 = phi i32 [ 0, %388 ], [ %415, %414 ]
  %393 = getelementptr %struct.usb_host_endpoint, ptr %390, i32 %392, i32 8
  %394 = load i32, ptr %393, align 4
  %395 = icmp sgt i32 %394, 2
  br i1 %395, label %396, label %414

396:                                              ; preds = %391
  %397 = getelementptr %struct.usb_host_endpoint, ptr %390, i32 %392, i32 7
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr i8, ptr %398, i32 1
  %400 = load i8, ptr %399, align 1
  %401 = icmp eq i8 %400, 36
  br i1 %401, label %402, label %414

402:                                              ; preds = %396
  %403 = load i32, ptr @uvc_dbg_param, align 4
  %404 = and i32 %403, 2
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %421, label %406

406:                                              ; preds = %402
  %407 = load ptr, ptr %9, align 8
  %408 = getelementptr inbounds %struct.usb_device, ptr %407, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %408, ptr noundef nonnull @.str.54, i32 noundef %392) #24
  %409 = load ptr, ptr %389, align 4
  %410 = getelementptr %struct.usb_host_endpoint, ptr %409, i32 %392, i32 7
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr %struct.usb_host_endpoint, ptr %409, i32 %392, i32 8
  %413 = load i32, ptr %412, align 4
  br label %417

414:                                              ; preds = %396, %391
  %415 = add nuw nsw i32 %392, 1
  %416 = icmp eq i32 %415, %386
  br i1 %416, label %436, label %391

417:                                              ; preds = %406, %381
  %418 = phi ptr [ %323, %381 ], [ %411, %406 ]
  %419 = phi i32 [ %325, %381 ], [ %413, %406 ]
  %420 = icmp sgt i32 %419, 2
  br i1 %420, label %421, label %436

421:                                              ; preds = %417, %402
  %422 = phi i32 [ %394, %402 ], [ %419, %417 ]
  %423 = phi ptr [ %398, %402 ], [ %418, %417 ]
  br label %424

424:                                              ; preds = %430, %421
  %425 = phi i32 [ %433, %430 ], [ %422, %421 ]
  %426 = phi ptr [ %434, %430 ], [ %423, %421 ]
  %427 = getelementptr i8, ptr %426, i32 1
  %428 = load i8, ptr %427, align 1
  %429 = icmp eq i8 %428, 36
  br i1 %429, label %443, label %430

430:                                              ; preds = %424
  %431 = load i8, ptr %426, align 1
  %432 = zext i8 %431 to i32
  %433 = sub nsw i32 %425, %432
  %434 = getelementptr i8, ptr %426, i32 %432
  %435 = icmp sgt i32 %433, 2
  br i1 %435, label %424, label %436

436:                                              ; preds = %430, %417, %414, %383
  %437 = load i32, ptr @uvc_dbg_param, align 4
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %1161, label %440

440:                                              ; preds = %436
  %441 = load ptr, ptr %9, align 8
  %442 = getelementptr inbounds %struct.usb_device, ptr %441, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %442, ptr noundef nonnull @.str.55) #24
  br label %1161

443:                                              ; preds = %424
  %444 = getelementptr i8, ptr %426, i32 2
  %445 = load i8, ptr %444, align 1
  switch i8 %445, label %447 [
    i8 2, label %458
    i8 1, label %446
  ]

446:                                              ; preds = %443
  br label %458

447:                                              ; preds = %443
  %448 = load i32, ptr @uvc_dbg_param, align 4
  %449 = and i32 %448, 2
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %1161, label %451

451:                                              ; preds = %447
  %452 = load ptr, ptr %9, align 8
  %453 = getelementptr inbounds %struct.usb_device, ptr %452, i32 0, i32 15
  %454 = load i32, ptr %452, align 8
  %455 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 2
  %456 = load i8, ptr %455, align 2
  %457 = zext i8 %456 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %453, ptr noundef nonnull @.str.56, i32 noundef %454, i32 noundef %457) #24
  br label %1161

458:                                              ; preds = %446, %443
  %459 = phi i32 [ 1, %446 ], [ 2, %443 ]
  %460 = phi i32 [ 13, %446 ], [ 9, %443 ]
  %461 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 9
  store i32 %459, ptr %461, align 8
  %462 = icmp ugt i32 %425, 3
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = getelementptr i8, ptr %426, i32 3
  %465 = load i8, ptr %464, align 1
  %466 = zext i8 %465 to i32
  br label %467

467:                                              ; preds = %463, %458
  %468 = phi i32 [ %466, %463 ], [ 0, %458 ]
  %469 = icmp ult i32 %425, %460
  br i1 %469, label %475, label %470

470:                                              ; preds = %467
  %471 = add nsw i32 %460, -1
  %472 = getelementptr i8, ptr %426, i32 %471
  %473 = load i8, ptr %472, align 1
  %474 = zext i8 %473 to i32
  br label %475

475:                                              ; preds = %470, %467
  %476 = phi i32 [ %474, %470 ], [ 0, %467 ]
  %477 = mul nuw nsw i32 %476, %468
  %478 = add nuw nsw i32 %477, %460
  %479 = icmp ult i32 %425, %478
  br i1 %479, label %480, label %491

480:                                              ; preds = %475
  %481 = load i32, ptr @uvc_dbg_param, align 4
  %482 = and i32 %481, 2
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %1161, label %484

484:                                              ; preds = %480
  %485 = load ptr, ptr %9, align 8
  %486 = getelementptr inbounds %struct.usb_device, ptr %485, i32 0, i32 15
  %487 = load i32, ptr %485, align 8
  %488 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 2
  %489 = load i8, ptr %488, align 2
  %490 = zext i8 %489 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %486, ptr noundef nonnull @.str.57, i32 noundef %487, i32 noundef %490) #24
  br label %1161

491:                                              ; preds = %475
  %492 = trunc i32 %468 to i8
  %493 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8
  store i8 %492, ptr %493, align 4
  %494 = getelementptr i8, ptr %426, i32 6
  %495 = load i8, ptr %494, align 1
  %496 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 1
  store i8 %495, ptr %496, align 1
  %497 = load i8, ptr %444, align 1
  %498 = icmp eq i8 %497, 1
  %499 = getelementptr i8, ptr %426, i32 7
  %500 = load i8, ptr %499, align 1
  br i1 %498, label %501, label %515

501:                                              ; preds = %491
  %502 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 5
  store i8 %500, ptr %502, align 4
  %503 = getelementptr i8, ptr %426, i32 8
  %504 = load i8, ptr %503, align 1
  %505 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 2
  store i8 %504, ptr %505, align 2
  %506 = getelementptr i8, ptr %426, i32 9
  %507 = load i8, ptr %506, align 1
  %508 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 6
  store i8 %507, ptr %508, align 1
  %509 = getelementptr i8, ptr %426, i32 10
  %510 = load i8, ptr %509, align 1
  %511 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 7
  store i8 %510, ptr %511, align 2
  %512 = getelementptr i8, ptr %426, i32 11
  %513 = load i8, ptr %512, align 1
  %514 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 8
  store i8 %513, ptr %514, align 1
  br label %517

515:                                              ; preds = %491
  %516 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 2
  store i8 %500, ptr %516, align 2
  br label %517

517:                                              ; preds = %515, %501
  %518 = trunc i32 %476 to i8
  %519 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 3
  store i8 %518, ptr %519, align 1
  %520 = getelementptr i8, ptr %426, i32 %460
  %521 = tail call ptr @kmemdup(ptr noundef %520, i32 noundef %477, i32 noundef 3264) #22
  %522 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 4
  store ptr %521, ptr %522, align 8
  %523 = icmp eq ptr %521, null
  br i1 %523, label %1161, label %524

524:                                              ; preds = %517
  %525 = load i8, ptr %426, align 1
  %526 = zext i8 %525 to i32
  %527 = sub nsw i32 %425, %526
  %528 = getelementptr i8, ptr %426, i32 %526
  %529 = icmp sgt i32 %527, 2
  br i1 %529, label %530, label %595

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 2
  br label %532

532:                                              ; preds = %581, %530
  %533 = phi i32 [ 0, %530 ], [ %584, %581 ]
  %534 = phi i32 [ 0, %530 ], [ %583, %581 ]
  %535 = phi i32 [ 0, %530 ], [ %582, %581 ]
  %536 = phi i32 [ %527, %530 ], [ %587, %581 ]
  %537 = phi ptr [ %528, %530 ], [ %588, %581 ]
  %538 = getelementptr i8, ptr %537, i32 1
  %539 = load i8, ptr %538, align 1
  %540 = icmp eq i8 %539, 36
  br i1 %540, label %541, label %590

541:                                              ; preds = %532
  %542 = getelementptr i8, ptr %537, i32 2
  %543 = load i8, ptr %542, align 1
  switch i8 %543, label %581 [
    i8 4, label %544
    i8 6, label %544
    i8 16, label %544
    i8 12, label %546
    i8 10, label %550
    i8 18, label %550
    i8 5, label %561
    i8 7, label %561
    i8 17, label %571
  ]

544:                                              ; preds = %541, %541, %541
  %545 = add i32 %535, 1
  br label %581

546:                                              ; preds = %541
  %547 = add i32 %535, 1
  %548 = add i32 %534, 1
  %549 = add i32 %533, 1
  br label %581

550:                                              ; preds = %541, %541
  %551 = load i32, ptr @uvc_dbg_param, align 4
  %552 = and i32 %551, 2
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %581, label %554

554:                                              ; preds = %550
  %555 = load ptr, ptr %9, align 8
  %556 = getelementptr inbounds %struct.usb_device, ptr %555, i32 0, i32 15
  %557 = load i32, ptr %555, align 8
  %558 = load i8, ptr %531, align 2
  %559 = zext i8 %558 to i32
  %560 = zext i8 %543 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %556, ptr noundef nonnull @.str.58, i32 noundef %557, i32 noundef %559, i32 noundef %560) #24
  br label %581

561:                                              ; preds = %541, %541
  %562 = add i32 %534, 1
  %563 = icmp ugt i32 %536, 25
  br i1 %563, label %564, label %581

564:                                              ; preds = %561
  %565 = getelementptr i8, ptr %537, i32 25
  %566 = load i8, ptr %565, align 1
  %567 = icmp eq i8 %566, 0
  %568 = select i1 %567, i8 3, i8 %566
  %569 = zext i8 %568 to i32
  %570 = add i32 %533, %569
  br label %581

571:                                              ; preds = %541
  %572 = add i32 %534, 1
  %573 = icmp sgt i32 %536, 21
  br i1 %573, label %574, label %581

574:                                              ; preds = %571
  %575 = getelementptr i8, ptr %537, i32 21
  %576 = load i8, ptr %575, align 1
  %577 = icmp eq i8 %576, 0
  %578 = select i1 %577, i8 3, i8 %576
  %579 = zext i8 %578 to i32
  %580 = add i32 %533, %579
  br label %581

581:                                              ; preds = %574, %571, %564, %561, %554, %550, %546, %544, %541
  %582 = phi i32 [ %535, %541 ], [ %535, %574 ], [ %535, %571 ], [ %535, %564 ], [ %535, %561 ], [ %535, %554 ], [ %535, %550 ], [ %547, %546 ], [ %545, %544 ]
  %583 = phi i32 [ %534, %541 ], [ %572, %574 ], [ %572, %571 ], [ %562, %564 ], [ %562, %561 ], [ %534, %554 ], [ %534, %550 ], [ %548, %546 ], [ %534, %544 ]
  %584 = phi i32 [ %533, %541 ], [ %580, %574 ], [ %533, %571 ], [ %570, %564 ], [ %533, %561 ], [ %533, %554 ], [ %533, %550 ], [ %549, %546 ], [ %533, %544 ]
  %585 = load i8, ptr %537, align 1
  %586 = zext i8 %585 to i32
  %587 = sub i32 %536, %586
  %588 = getelementptr i8, ptr %537, i32 %586
  %589 = icmp sgt i32 %587, 2
  br i1 %589, label %532, label %590

590:                                              ; preds = %581, %532
  %591 = phi i32 [ %535, %532 ], [ %582, %581 ]
  %592 = phi i32 [ %534, %532 ], [ %583, %581 ]
  %593 = phi i32 [ %533, %532 ], [ %584, %581 ]
  %594 = icmp eq i32 %591, 0
  br i1 %594, label %595, label %606

595:                                              ; preds = %590, %524
  %596 = load i32, ptr @uvc_dbg_param, align 4
  %597 = and i32 %596, 2
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %1161, label %599

599:                                              ; preds = %595
  %600 = load ptr, ptr %9, align 8
  %601 = getelementptr inbounds %struct.usb_device, ptr %600, i32 0, i32 15
  %602 = load i32, ptr %600, align 8
  %603 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %321, i32 0, i32 2
  %604 = load i8, ptr %603, align 2
  %605 = zext i8 %604 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %601, ptr noundef nonnull @.str.59, i32 noundef %602, i32 noundef %605) #24
  br label %1161

606:                                              ; preds = %590
  %607 = shl i32 %592, 5
  %608 = shl i32 %591, 6
  %609 = add i32 %607, %608
  %610 = shl i32 %593, 2
  %611 = add i32 %609, %610
  %612 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %611, i32 noundef 3520) #23
  %613 = icmp eq ptr %612, null
  br i1 %613, label %1161, label %614

614:                                              ; preds = %606
  %615 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 11
  store ptr %612, ptr %615, align 8
  %616 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 10
  store i32 %591, ptr %616, align 4
  %617 = getelementptr %struct.uvc_format, ptr %612, i32 %591
  %618 = getelementptr %struct.uvc_frame, ptr %617, i32 %592
  br label %619

619:                                              ; preds = %1088, %614
  %620 = phi i32 [ %527, %614 ], [ %1093, %1088 ]
  %621 = phi ptr [ %528, %614 ], [ %1094, %1088 ]
  %622 = phi ptr [ %617, %614 ], [ %1091, %1088 ]
  %623 = phi ptr [ %612, %614 ], [ %1092, %1088 ]
  %624 = phi ptr [ %618, %614 ], [ %1082, %1088 ]
  br label %625

625:                                              ; preds = %1096, %619
  %626 = phi i32 [ %620, %619 ], [ %1099, %1096 ]
  %627 = phi ptr [ %621, %619 ], [ %1100, %1096 ]
  %628 = getelementptr i8, ptr %627, i32 1
  %629 = load i8, ptr %628, align 1
  %630 = icmp eq i8 %629, 36
  br i1 %630, label %631, label %1105

631:                                              ; preds = %625
  %632 = getelementptr i8, ptr %627, i32 2
  %633 = load i8, ptr %632, align 1
  %634 = zext i8 %633 to i32
  %635 = add nsw i32 %634, -4
  %636 = tail call i32 @llvm.fshl.i32(i32 %635, i32 %635, i32 31) #22
  switch i32 %636, label %1096 [
    i32 0, label %637
    i32 1, label %637
    i32 4, label %637
    i32 6, label %637
  ]

637:                                              ; preds = %631, %631, %631, %631
  %638 = getelementptr i8, ptr %627, i32 2
  %639 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 10
  store ptr %622, ptr %639, align 4
  %640 = load ptr, ptr %365, align 8
  %641 = getelementptr inbounds %struct.usb_interface, ptr %640, i32 0, i32 1
  %642 = load ptr, ptr %641, align 4
  %643 = load i8, ptr %638, align 1
  store i8 %643, ptr %623, align 4
  %644 = getelementptr i8, ptr %627, i32 3
  %645 = load i8, ptr %644, align 1
  %646 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 1
  store i8 %645, ptr %646, align 1
  %647 = load i8, ptr %638, align 1
  %648 = zext i8 %647 to i32
  %649 = add nsw i32 %648, -4
  %650 = tail call i32 @llvm.fshl.i32(i32 %649, i32 %649, i32 31) #22
  switch i32 %650, label %829 [
    i32 0, label %651
    i32 6, label %651
    i32 1, label %761
    i32 4, label %780
  ]

651:                                              ; preds = %637, %637
  %652 = icmp eq i8 %647, 4
  %653 = select i1 %652, i32 27, i32 28
  %654 = icmp ugt i32 %653, %626
  br i1 %654, label %655, label %666

655:                                              ; preds = %651
  %656 = load i32, ptr @uvc_dbg_param, align 4
  %657 = and i32 %656, 2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %1161, label %659

659:                                              ; preds = %655
  %660 = load ptr, ptr %9, align 8
  %661 = getelementptr inbounds %struct.usb_device, ptr %660, i32 0, i32 15
  %662 = load i32, ptr %660, align 8
  %663 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %664 = load i8, ptr %663, align 2
  %665 = zext i8 %664 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %661, ptr noundef nonnull @.str.62, i32 noundef %662, i32 noundef %665) #24
  br label %1161

666:                                              ; preds = %651
  %667 = getelementptr i8, ptr %627, i32 5
  br label %668

668:                                              ; preds = %673, %666
  %669 = phi i32 [ 0, %666 ], [ %674, %673 ]
  %670 = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %669, i32 1
  %671 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %667, ptr noundef dereferenceable(16) %670, i32 16) #22
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %668
  %674 = add nuw nsw i32 %669, 1
  %675 = icmp eq i32 %674, 36
  br i1 %675, label %694, label %668

676:                                              ; preds = %668
  %677 = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %669
  %678 = icmp eq ptr %677, null
  br i1 %678, label %694, label %679

679:                                              ; preds = %676
  %680 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 8
  %681 = load ptr, ptr %677, align 4
  %682 = tail call i32 @strscpy(ptr noundef %680, ptr noundef %681, i32 noundef 32) #22
  %683 = getelementptr [36 x %struct.uvc_format_desc], ptr @uvc_fmts, i32 0, i32 %669, i32 2
  %684 = load i32, ptr %683, align 4
  %685 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 6
  store i32 %684, ptr %685, align 4
  %686 = getelementptr i8, ptr %627, i32 21
  %687 = load i8, ptr %686, align 1
  %688 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 2
  store i8 %687, ptr %688, align 2
  %689 = load i32, ptr %40, align 4
  %690 = and i32 %689, 2048
  %691 = icmp ne i32 %690, 0
  %692 = icmp eq i32 %684, 1448695129
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %703, label %710

694:                                              ; preds = %676, %673
  %695 = load ptr, ptr %365, align 8
  %696 = getelementptr inbounds %struct.usb_interface, ptr %695, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %696, ptr noundef nonnull @.str.63, ptr noundef %667) #24
  %697 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 8
  %698 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %697, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef %667) #22
  %699 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 6
  store i32 0, ptr %699, align 4
  %700 = getelementptr i8, ptr %627, i32 21
  %701 = load i8, ptr %700, align 1
  %702 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 2
  store i8 %701, ptr %702, align 2
  br label %705

703:                                              ; preds = %679
  %704 = tail call i32 @strscpy(ptr noundef %680, ptr noundef nonnull @.str.65, i32 noundef 32) #22
  store i32 1497715271, ptr %685, align 4
  store i8 8, ptr %688, align 2
  br label %705

705:                                              ; preds = %703, %694
  %706 = phi ptr [ %702, %694 ], [ %688, %703 ]
  %707 = phi i32 [ 0, %694 ], [ 1497715271, %703 ]
  %708 = phi i32 [ 1, %694 ], [ 2, %703 ]
  %709 = load i32, ptr %40, align 4
  br label %710

710:                                              ; preds = %705, %679
  %711 = phi ptr [ %688, %679 ], [ %706, %705 ]
  %712 = phi i32 [ %684, %679 ], [ %707, %705 ]
  %713 = phi i32 [ %689, %679 ], [ %709, %705 ]
  %714 = phi i32 [ 1, %679 ], [ %708, %705 ]
  %715 = and i32 %713, 4096
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %752, label %717

717:                                              ; preds = %710
  %718 = tail call ptr @v4l2_format_info(i32 noundef %712) #22
  %719 = icmp eq ptr %718, null
  br i1 %719, label %752, label %720

720:                                              ; preds = %717
  %721 = getelementptr inbounds %struct.v4l2_format_info, ptr %718, i32 0, i32 5
  %722 = load i8, ptr %721, align 1
  %723 = zext i8 %722 to i32
  %724 = getelementptr inbounds %struct.v4l2_format_info, ptr %718, i32 0, i32 6
  %725 = load i8, ptr %724, align 4
  %726 = zext i8 %725 to i32
  %727 = mul nuw nsw i32 %726, %723
  %728 = getelementptr inbounds %struct.v4l2_format_info, ptr %718, i32 0, i32 4
  %729 = load i8, ptr %728, align 1
  %730 = zext i8 %729 to i32
  %731 = mul nuw nsw i32 %727, %730
  %732 = getelementptr inbounds %struct.v4l2_format_info, ptr %718, i32 0, i32 3
  %733 = load i8, ptr %732, align 2
  %734 = zext i8 %733 to i32
  %735 = icmp ugt i8 %733, 1
  br i1 %735, label %736, label %745

736:                                              ; preds = %736, %720
  %737 = phi i32 [ %742, %736 ], [ %731, %720 ]
  %738 = phi i32 [ %743, %736 ], [ 1, %720 ]
  %739 = getelementptr %struct.v4l2_format_info, ptr %718, i32 0, i32 4, i32 %738
  %740 = load i8, ptr %739, align 1
  %741 = zext i8 %740 to i32
  %742 = add i32 %737, %741
  %743 = add nuw nsw i32 %738, 1
  %744 = icmp eq i32 %743, %734
  br i1 %744, label %745, label %736

745:                                              ; preds = %736, %720
  %746 = phi i32 [ %731, %720 ], [ %742, %736 ]
  %747 = shl i32 %746, 3
  %748 = add nsw i32 %727, -1
  %749 = add i32 %748, %747
  %750 = udiv i32 %749, %727
  %751 = trunc i32 %750 to i8
  store i8 %751, ptr %711, align 2
  br label %752

752:                                              ; preds = %745, %717, %710
  %753 = load i8, ptr %638, align 1
  %754 = icmp eq i8 %753, 4
  br i1 %754, label %841, label %755

755:                                              ; preds = %752
  %756 = getelementptr i8, ptr %627, i32 27
  %757 = load i8, ptr %756, align 1
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %841, label %759

759:                                              ; preds = %755
  %760 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 7
  store i32 1, ptr %760, align 4
  br label %841

761:                                              ; preds = %637
  %762 = icmp ult i32 %626, 11
  br i1 %762, label %763, label %774

763:                                              ; preds = %761
  %764 = load i32, ptr @uvc_dbg_param, align 4
  %765 = and i32 %764, 2
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %1161, label %767

767:                                              ; preds = %763
  %768 = load ptr, ptr %9, align 8
  %769 = getelementptr inbounds %struct.usb_device, ptr %768, i32 0, i32 15
  %770 = load i32, ptr %768, align 8
  %771 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %772 = load i8, ptr %771, align 2
  %773 = zext i8 %772 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %769, ptr noundef nonnull @.str.62, i32 noundef %770, i32 noundef %773) #24
  br label %1161

774:                                              ; preds = %761
  %775 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 8
  %776 = tail call i32 @strscpy(ptr noundef %775, ptr noundef nonnull @.str.66, i32 noundef 32) #22
  %777 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 6
  store i32 1196444237, ptr %777, align 4
  %778 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 7
  store i32 1, ptr %778, align 4
  %779 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 2
  store i8 0, ptr %779, align 2
  br label %841

780:                                              ; preds = %637
  %781 = icmp ult i32 %626, 9
  br i1 %781, label %782, label %793

782:                                              ; preds = %780
  %783 = load i32, ptr @uvc_dbg_param, align 4
  %784 = and i32 %783, 2
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %1161, label %786

786:                                              ; preds = %782
  %787 = load ptr, ptr %9, align 8
  %788 = getelementptr inbounds %struct.usb_device, ptr %787, i32 0, i32 15
  %789 = load i32, ptr %787, align 8
  %790 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %791 = load i8, ptr %790, align 2
  %792 = zext i8 %791 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %788, ptr noundef nonnull @.str.62, i32 noundef %789, i32 noundef %792) #24
  br label %1161

793:                                              ; preds = %780
  %794 = getelementptr i8, ptr %627, i32 8
  %795 = load i8, ptr %794, align 1
  %796 = and i8 %795, 127
  %797 = icmp ult i8 %796, 3
  br i1 %797, label %810, label %798

798:                                              ; preds = %793
  %799 = load i32, ptr @uvc_dbg_param, align 4
  %800 = and i32 %799, 2
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %1161, label %802

802:                                              ; preds = %798
  %803 = zext i8 %795 to i32
  %804 = load ptr, ptr %9, align 8
  %805 = getelementptr inbounds %struct.usb_device, ptr %804, i32 0, i32 15
  %806 = load i32, ptr %804, align 8
  %807 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %808 = load i8, ptr %807, align 2
  %809 = zext i8 %808 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %805, ptr noundef nonnull @.str.70, i32 noundef %806, i32 noundef %809, i32 noundef %803) #24
  br label %1161

810:                                              ; preds = %793
  %811 = zext i8 %796 to i32
  %812 = getelementptr inbounds [3 x ptr], ptr @switch.table.uvc_probe, i32 0, i32 %811
  %813 = load ptr, ptr %812, align 4
  %814 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 8
  %815 = tail call i32 @strscpy(ptr noundef %814, ptr noundef nonnull %813, i32 noundef 32) #22
  %816 = load i8, ptr %794, align 1
  %817 = icmp sgt i8 %816, -1
  %818 = select i1 %817, ptr @.str.72, ptr @.str.71
  %819 = tail call i32 @strlcat(ptr noundef %814, ptr noundef nonnull %818, i32 noundef 32) #22
  %820 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 6
  store i32 1685288548, ptr %820, align 4
  %821 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 7
  store i32 3, ptr %821, align 4
  %822 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 2
  store i8 0, ptr %822, align 2
  %823 = load ptr, ptr %639, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %823, i8 0, i32 24, i1 false) #22
  %824 = getelementptr inbounds %struct.uvc_frame, ptr %823, i32 0, i32 7
  store i8 1, ptr %824, align 4
  %825 = getelementptr inbounds %struct.uvc_frame, ptr %823, i32 0, i32 8
  store i32 1, ptr %825, align 4
  %826 = getelementptr inbounds %struct.uvc_frame, ptr %823, i32 0, i32 9
  store ptr %624, ptr %826, align 4
  %827 = getelementptr i32, ptr %624, i32 1
  store i32 1, ptr %624, align 4
  %828 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 9
  store i32 1, ptr %828, align 4
  br label %841

829:                                              ; preds = %637
  %830 = load i32, ptr @uvc_dbg_param, align 4
  %831 = and i32 %830, 2
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %1161, label %833

833:                                              ; preds = %829
  %834 = zext i8 %647 to i32
  %835 = load ptr, ptr %9, align 8
  %836 = getelementptr inbounds %struct.usb_device, ptr %835, i32 0, i32 15
  %837 = load i32, ptr %835, align 8
  %838 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %839 = load i8, ptr %838, align 2
  %840 = zext i8 %839 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %836, ptr noundef nonnull @.str.73, i32 noundef %837, i32 noundef %840, i32 noundef %834) #24
  br label %1161

841:                                              ; preds = %810, %774, %759, %755, %752
  %842 = phi ptr [ %827, %810 ], [ %624, %774 ], [ %624, %752 ], [ %624, %755 ], [ %624, %759 ]
  %843 = phi i32 [ 1, %810 ], [ 1, %774 ], [ %714, %752 ], [ %714, %755 ], [ %714, %759 ]
  %844 = phi i1 [ false, %810 ], [ false, %774 ], [ false, %752 ], [ true, %755 ], [ true, %759 ]
  %845 = phi i32 [ 0, %810 ], [ 7, %774 ], [ 5, %752 ], [ 17, %755 ], [ 17, %759 ]
  %846 = load i32, ptr @uvc_dbg_param, align 4
  %847 = and i32 %846, 2
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %853, label %849

849:                                              ; preds = %841
  %850 = load ptr, ptr %9, align 8
  %851 = getelementptr inbounds %struct.usb_device, ptr %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %851, ptr noundef nonnull @.str.74, ptr noundef %852) #24
  br label %853

853:                                              ; preds = %849, %841
  %854 = load i8, ptr %627, align 1
  %855 = zext i8 %854 to i32
  %856 = sub i32 %626, %855
  %857 = getelementptr i8, ptr %627, i32 %855
  %858 = icmp sgt i32 %856, 2
  br i1 %858, label %859, label %1077

859:                                              ; preds = %853
  %860 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 9
  %861 = trunc i32 %843 to i16
  %862 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 7
  %863 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 2
  br label %864

864:                                              ; preds = %1002, %859
  %865 = phi ptr [ %842, %859 ], [ %971, %1002 ]
  %866 = phi ptr [ %857, %859 ], [ %1008, %1002 ]
  %867 = phi i32 [ %856, %859 ], [ %1007, %1002 ]
  %868 = getelementptr i8, ptr %866, i32 1
  %869 = load i8, ptr %868, align 1
  %870 = icmp eq i8 %869, 36
  br i1 %870, label %871, label %1077

871:                                              ; preds = %864
  %872 = getelementptr i8, ptr %866, i32 2
  %873 = load i8, ptr %872, align 1
  %874 = zext i8 %873 to i32
  %875 = icmp eq i32 %845, %874
  br i1 %875, label %876, label %1010

876:                                              ; preds = %871
  %877 = load ptr, ptr %639, align 4
  %878 = load i32, ptr %860, align 4
  %879 = getelementptr %struct.uvc_frame, ptr %877, i32 %878
  br i1 %844, label %882, label %880

880:                                              ; preds = %876
  %881 = icmp ugt i32 %867, 25
  br i1 %881, label %884, label %890

882:                                              ; preds = %876
  %883 = icmp ugt i32 %867, 21
  br i1 %883, label %884, label %890

884:                                              ; preds = %882, %880
  %885 = phi i32 [ 25, %880 ], [ 21, %882 ]
  %886 = getelementptr i8, ptr %866, i32 %885
  %887 = load i8, ptr %886, align 1
  %888 = zext i8 %887 to i32
  %889 = icmp eq i8 %887, 0
  br i1 %889, label %890, label %891

890:                                              ; preds = %884, %882, %880
  br label %891

891:                                              ; preds = %890, %884
  %892 = phi i32 [ 3, %890 ], [ %888, %884 ]
  %893 = shl nuw nsw i32 %892, 2
  %894 = add nuw nsw i32 %893, 26
  %895 = icmp ult i32 %867, %894
  br i1 %895, label %896, label %907

896:                                              ; preds = %891
  %897 = load i32, ptr @uvc_dbg_param, align 4
  %898 = and i32 %897, 2
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %1161, label %900

900:                                              ; preds = %896
  %901 = load ptr, ptr %9, align 8
  %902 = getelementptr inbounds %struct.usb_device, ptr %901, i32 0, i32 15
  %903 = load i32, ptr %901, align 8
  %904 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %905 = load i8, ptr %904, align 2
  %906 = zext i8 %905 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %902, ptr noundef nonnull @.str.75, i32 noundef %903, i32 noundef %906) #24
  br label %1161

907:                                              ; preds = %891
  %908 = getelementptr i8, ptr %866, i32 3
  %909 = load i8, ptr %908, align 1
  store i8 %909, ptr %879, align 4
  %910 = getelementptr i8, ptr %866, i32 4
  %911 = load i8, ptr %910, align 1
  %912 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 1
  store i8 %911, ptr %912, align 1
  %913 = getelementptr i8, ptr %866, i32 5
  %914 = load i16, ptr %913, align 1
  %915 = mul i16 %914, %861
  %916 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 2
  store i16 %915, ptr %916, align 2
  %917 = getelementptr i8, ptr %866, i32 7
  %918 = load i16, ptr %917, align 1
  %919 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 3
  store i16 %918, ptr %919, align 4
  %920 = getelementptr i8, ptr %866, i32 9
  %921 = load i32, ptr %920, align 1
  %922 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 4
  store i32 %921, ptr %922, align 4
  %923 = getelementptr i8, ptr %866, i32 13
  %924 = load i32, ptr %923, align 1
  %925 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 5
  store i32 %924, ptr %925, align 4
  br i1 %844, label %929, label %926

926:                                              ; preds = %907
  %927 = getelementptr i8, ptr %866, i32 17
  %928 = load i32, ptr %927, align 1
  br label %929

929:                                              ; preds = %926, %907
  %930 = phi i32 [ %928, %926 ], [ 0, %907 ]
  %931 = phi i32 [ 21, %926 ], [ 17, %907 ]
  %932 = phi i32 [ 25, %926 ], [ 21, %907 ]
  %933 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 6
  store i32 %930, ptr %933, align 4
  %934 = getelementptr i8, ptr %866, i32 %931
  %935 = load i32, ptr %934, align 1
  %936 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 8
  store i32 %935, ptr %936, align 4
  %937 = getelementptr i8, ptr %866, i32 %932
  %938 = load i8, ptr %937, align 1
  %939 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 7
  store i8 %938, ptr %939, align 4
  %940 = getelementptr %struct.uvc_frame, ptr %877, i32 %878, i32 9
  store ptr %865, ptr %940, align 4
  %941 = load i32, ptr %862, align 4
  %942 = and i32 %941, 1
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %944, label %952

944:                                              ; preds = %929
  %945 = load i8, ptr %863, align 2
  %946 = zext i8 %945 to i32
  %947 = zext i16 %915 to i32
  %948 = zext i16 %918 to i32
  %949 = mul nuw i32 %948, %947
  %950 = mul i32 %949, %946
  %951 = sdiv i32 %950, 8
  store i32 %951, ptr %933, align 4
  br label %952

952:                                              ; preds = %944, %929
  %953 = icmp eq i32 %892, 0
  br i1 %953, label %970, label %954

954:                                              ; preds = %954, %952
  %955 = phi ptr [ %963, %954 ], [ %865, %952 ]
  %956 = phi i32 [ %964, %954 ], [ 0, %952 ]
  %957 = shl i32 %956, 2
  %958 = add nuw nsw i32 %957, 26
  %959 = getelementptr i8, ptr %866, i32 %958
  %960 = load i32, ptr %959, align 1
  %961 = icmp eq i32 %960, 0
  %962 = select i1 %961, i32 1, i32 %960
  %963 = getelementptr i32, ptr %955, i32 1
  store i32 %962, ptr %955, align 4
  %964 = add nuw nsw i32 %956, 1
  %965 = icmp eq i32 %964, %892
  br i1 %965, label %966, label %954

966:                                              ; preds = %954
  %967 = load i8, ptr %939, align 4
  %968 = load ptr, ptr %940, align 4
  %969 = load i32, ptr %936, align 4
  br label %970

970:                                              ; preds = %966, %952
  %971 = phi ptr [ %865, %952 ], [ %963, %966 ]
  %972 = phi i32 [ %935, %952 ], [ %969, %966 ]
  %973 = phi ptr [ %865, %952 ], [ %968, %966 ]
  %974 = phi i8 [ %938, %952 ], [ %967, %966 ]
  %975 = icmp eq i8 %974, 0
  %976 = select i1 %975, i32 -2, i32 -1
  %977 = add nsw i32 %976, %892
  %978 = getelementptr i32, ptr %973, i32 %977
  %979 = load i32, ptr %978, align 4
  %980 = load i32, ptr %973, align 4
  %981 = tail call i32 @llvm.umax.i32(i32 %980, i32 %972) #22
  %982 = tail call i32 @llvm.umin.i32(i32 %979, i32 %981) #22
  store i32 %982, ptr %936, align 4
  %983 = load i32, ptr %40, align 4
  %984 = and i32 %983, 512
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %987, label %986

986:                                              ; preds = %970
  store i8 1, ptr %939, align 4
  store i32 %982, ptr %973, align 4
  br label %987

987:                                              ; preds = %986, %970
  %988 = load i32, ptr @uvc_dbg_param, align 4
  %989 = and i32 %988, 2
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1002, label %991

991:                                              ; preds = %987
  %992 = load ptr, ptr %9, align 8
  %993 = getelementptr inbounds %struct.usb_device, ptr %992, i32 0, i32 15
  %994 = load i16, ptr %916, align 2
  %995 = zext i16 %994 to i32
  %996 = load i16, ptr %919, align 4
  %997 = zext i16 %996 to i32
  %998 = load i32, ptr %936, align 4
  %999 = udiv i32 10000000, %998
  %1000 = udiv i32 100000000, %998
  %1001 = urem i32 %1000, 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %993, ptr noundef nonnull @.str.76, i32 noundef %995, i32 noundef %997, i32 noundef %999, i32 noundef %1001) #24
  br label %1002

1002:                                             ; preds = %991, %987
  %1003 = load i32, ptr %860, align 4
  %1004 = add i32 %1003, 1
  store i32 %1004, ptr %860, align 4
  %1005 = load i8, ptr %866, align 1
  %1006 = zext i8 %1005 to i32
  %1007 = sub i32 %867, %1006
  %1008 = getelementptr i8, ptr %866, i32 %1006
  %1009 = icmp sgt i32 %1007, 2
  br i1 %1009, label %864, label %1077

1010:                                             ; preds = %871
  %1011 = icmp eq i8 %873, 3
  br i1 %1011, label %1012, label %1025

1012:                                             ; preds = %1010
  %1013 = load i8, ptr %866, align 1
  %1014 = zext i8 %1013 to i32
  %1015 = sub nsw i32 %867, %1014
  %1016 = getelementptr i8, ptr %866, i32 %1014
  %1017 = icmp sgt i32 %1015, 2
  br i1 %1017, label %1018, label %1077

1018:                                             ; preds = %1012
  %1019 = getelementptr i8, ptr %1016, i32 1
  %1020 = load i8, ptr %1019, align 1
  %1021 = icmp eq i8 %1020, 36
  br i1 %1021, label %1022, label %1077

1022:                                             ; preds = %1018
  %1023 = getelementptr i8, ptr %1016, i32 2
  %1024 = load i8, ptr %1023, align 1
  br label %1025

1025:                                             ; preds = %1022, %1010
  %1026 = phi i8 [ %1024, %1022 ], [ %873, %1010 ]
  %1027 = phi i32 [ %1015, %1022 ], [ %867, %1010 ]
  %1028 = phi ptr [ %1016, %1022 ], [ %866, %1010 ]
  %1029 = icmp eq i8 %1026, 13
  br i1 %1029, label %1030, label %1077

1030:                                             ; preds = %1025
  %1031 = icmp ult i32 %1027, 6
  br i1 %1031, label %1032, label %1043

1032:                                             ; preds = %1030
  %1033 = load i32, ptr @uvc_dbg_param, align 4
  %1034 = and i32 %1033, 2
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1161, label %1036

1036:                                             ; preds = %1032
  %1037 = load ptr, ptr %9, align 8
  %1038 = getelementptr inbounds %struct.usb_device, ptr %1037, i32 0, i32 15
  %1039 = load i32, ptr %1037, align 8
  %1040 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %642, i32 0, i32 2
  %1041 = load i8, ptr %1040, align 2
  %1042 = zext i8 %1041 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1038, ptr noundef nonnull @.str.77, i32 noundef %1039, i32 noundef %1042) #24
  br label %1161

1043:                                             ; preds = %1030
  %1044 = getelementptr i8, ptr %1028, i32 3
  %1045 = load i8, ptr %1044, align 1
  %1046 = icmp ult i8 %1045, 6
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1043
  %1048 = zext i8 %1045 to i32
  %1049 = getelementptr [6 x i32], ptr @uvc_colorspace.colorprimaries, i32 0, i32 %1048
  %1050 = load i32, ptr %1049, align 4
  br label %1051

1051:                                             ; preds = %1047, %1043
  %1052 = phi i32 [ %1050, %1047 ], [ 8, %1043 ]
  %1053 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 3
  store i32 %1052, ptr %1053, align 4
  %1054 = getelementptr i8, ptr %1028, i32 4
  %1055 = load i8, ptr %1054, align 1
  %1056 = icmp ult i8 %1055, 8
  br i1 %1056, label %1057, label %1061

1057:                                             ; preds = %1051
  %1058 = zext i8 %1055 to i32
  %1059 = getelementptr [8 x i32], ptr @uvc_xfer_func.xfer_funcs, i32 0, i32 %1058
  %1060 = load i32, ptr %1059, align 4
  br label %1061

1061:                                             ; preds = %1057, %1051
  %1062 = phi i32 [ %1060, %1057 ], [ 0, %1051 ]
  %1063 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 4
  store i32 %1062, ptr %1063, align 4
  %1064 = getelementptr i8, ptr %1028, i32 5
  %1065 = load i8, ptr %1064, align 1
  %1066 = icmp ult i8 %1065, 6
  br i1 %1066, label %1067, label %1071

1067:                                             ; preds = %1061
  %1068 = zext i8 %1065 to i32
  %1069 = getelementptr [6 x i32], ptr @uvc_ycbcr_enc.ycbcr_encs, i32 0, i32 %1068
  %1070 = load i32, ptr %1069, align 4
  br label %1071

1071:                                             ; preds = %1067, %1061
  %1072 = phi i32 [ %1070, %1067 ], [ 0, %1061 ]
  %1073 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 5
  store i32 %1072, ptr %1073, align 4
  %1074 = load i8, ptr %1028, align 1
  %1075 = zext i8 %1074 to i32
  %1076 = getelementptr i8, ptr %1028, i32 %1075
  br label %1081

1077:                                             ; preds = %1025, %1018, %1012, %1002, %864, %853
  %1078 = phi ptr [ %865, %1025 ], [ %865, %1018 ], [ %865, %1012 ], [ %842, %853 ], [ %971, %1002 ], [ %865, %864 ]
  %1079 = phi ptr [ %1028, %1025 ], [ %1016, %1018 ], [ %1016, %1012 ], [ %857, %853 ], [ %1008, %1002 ], [ %866, %864 ]
  %1080 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 3
  store i32 8, ptr %1080, align 4
  br label %1081

1081:                                             ; preds = %1077, %1071
  %1082 = phi ptr [ %1078, %1077 ], [ %865, %1071 ]
  %1083 = phi ptr [ %1079, %1077 ], [ %1076, %1071 ]
  %1084 = ptrtoint ptr %1083 to i32
  %1085 = ptrtoint ptr %627 to i32
  %1086 = sub i32 %1084, %1085
  %1087 = icmp slt i32 %1086, 0
  br i1 %1087, label %1161, label %1088

1088:                                             ; preds = %1081
  %1089 = getelementptr inbounds %struct.uvc_format, ptr %623, i32 0, i32 9
  %1090 = load i32, ptr %1089, align 4
  %1091 = getelementptr %struct.uvc_frame, ptr %622, i32 %1090
  %1092 = getelementptr %struct.uvc_format, ptr %623, i32 1
  %1093 = sub i32 %626, %1086
  %1094 = getelementptr i8, ptr %627, i32 %1086
  %1095 = icmp sgt i32 %1093, 2
  br i1 %1095, label %619, label %1102

1096:                                             ; preds = %631
  %1097 = load i8, ptr %627, align 1
  %1098 = zext i8 %1097 to i32
  %1099 = sub nsw i32 %626, %1098
  %1100 = getelementptr i8, ptr %627, i32 %1098
  %1101 = icmp sgt i32 %1099, 2
  br i1 %1101, label %625, label %1102

1102:                                             ; preds = %1096, %1088
  %1103 = phi i32 [ %1099, %1096 ], [ %1093, %1088 ]
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1116, label %1105

1105:                                             ; preds = %1102, %625
  %1106 = phi i32 [ %1103, %1102 ], [ %626, %625 ]
  %1107 = load i32, ptr @uvc_dbg_param, align 4
  %1108 = and i32 %1107, 2
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1116, label %1110

1110:                                             ; preds = %1105
  %1111 = load ptr, ptr %9, align 8
  %1112 = getelementptr inbounds %struct.usb_device, ptr %1111, i32 0, i32 15
  %1113 = load i32, ptr %1111, align 8
  %1114 = load i8, ptr %531, align 2
  %1115 = zext i8 %1114 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1112, ptr noundef nonnull @.str.60, i32 noundef %1113, i32 noundef %1115, i32 noundef %1106) #24
  br label %1116

1116:                                             ; preds = %1110, %1105, %1102
  %1117 = getelementptr inbounds %struct.usb_interface, ptr %310, i32 0, i32 2
  %1118 = load i32, ptr %1117, align 8
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1158, label %1120

1120:                                             ; preds = %1116
  %1121 = load ptr, ptr %310, align 8
  %1122 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 7
  %1123 = load i8, ptr %496, align 1
  br label %1124

1124:                                             ; preds = %1155, %1120
  %1125 = phi i32 [ 0, %1120 ], [ %1156, %1155 ]
  %1126 = getelementptr %struct.usb_host_interface, ptr %1121, i32 %1125, i32 0, i32 4
  %1127 = load i8, ptr %1126, align 4
  %1128 = zext i8 %1127 to i32
  %1129 = icmp eq i8 %1127, 0
  br i1 %1129, label %1155, label %1130

1130:                                             ; preds = %1124
  %1131 = getelementptr %struct.usb_host_interface, ptr %1121, i32 %1125, i32 3
  %1132 = load ptr, ptr %1131, align 4
  br label %1136

1133:                                             ; preds = %1136
  %1134 = add nuw nsw i32 %1137, 1
  %1135 = icmp eq i32 %1134, %1128
  br i1 %1135, label %1155, label %1136

1136:                                             ; preds = %1133, %1130
  %1137 = phi i32 [ 0, %1130 ], [ %1134, %1133 ]
  %1138 = getelementptr %struct.usb_host_endpoint, ptr %1132, i32 %1137
  %1139 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1138, i32 0, i32 2
  %1140 = load i8, ptr %1139, align 2
  %1141 = icmp eq i8 %1140, %1123
  br i1 %1141, label %1142, label %1133

1142:                                             ; preds = %1136
  %1143 = icmp eq ptr %1138, null
  br i1 %1143, label %1155, label %1144

1144:                                             ; preds = %1142
  %1145 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1138, i32 0, i32 4
  %1146 = load i16, ptr %1145, align 4
  %1147 = and i16 %1146, 2047
  %1148 = lshr i16 %1146, 11
  %1149 = and i16 %1148, 3
  %1150 = add nuw nsw i16 %1149, 1
  %1151 = mul nuw nsw i16 %1150, %1147
  %1152 = load i16, ptr %1122, align 8
  %1153 = icmp ugt i16 %1151, %1152
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1144
  store i16 %1151, ptr %1122, align 8
  br label %1155

1155:                                             ; preds = %1154, %1144, %1142, %1133, %1124
  %1156 = add nuw i32 %1125, 1
  %1157 = icmp eq i32 %1156, %1118
  br i1 %1157, label %1158, label %1124

1158:                                             ; preds = %1155, %1116
  %1159 = load ptr, ptr %18, align 4
  store ptr %359, ptr %18, align 4
  store ptr %17, ptr %359, align 8
  %1160 = getelementptr inbounds %struct.list_head, ptr %359, i32 0, i32 1
  store ptr %1159, ptr %1160, align 4
  store volatile ptr %359, ptr %1159, align 4
  br label %1171

1161:                                             ; preds = %1081, %1036, %1032, %900, %896, %833, %829, %802, %798, %786, %782, %767, %763, %659, %655, %606, %599, %595, %517, %484, %480, %451, %447, %440, %436
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef nonnull %310) #22
  %1162 = load ptr, ptr %372, align 8
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1165, label %1164

1164:                                             ; preds = %1161
  tail call void @destroy_workqueue(ptr noundef nonnull %1162) #22
  br label %1165

1165:                                             ; preds = %1164, %1161
  %1166 = load ptr, ptr %365, align 8
  tail call void @usb_put_intf(ptr noundef %1166) #22
  %1167 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 11
  %1168 = load ptr, ptr %1167, align 8
  tail call void @kfree(ptr noundef %1168) #22
  %1169 = getelementptr inbounds %struct.uvc_streaming, ptr %359, i32 0, i32 8, i32 4
  %1170 = load ptr, ptr %1169, align 8
  tail call void @kfree(ptr noundef %1170) #22
  tail call void @kfree(ptr noundef %359) #22
  br label %1171

1171:                                             ; preds = %1165, %1158, %380, %349, %345, %335, %331, %316, %312
  %1172 = add nuw nsw i32 %305, 1
  %1173 = icmp eq i32 %1172, %291
  br i1 %1173, label %1611, label %304

1174:                                             ; preds = %276
  %1175 = icmp ult i32 %142, 8
  br i1 %1175, label %1176, label %1180

1176:                                             ; preds = %1174
  %1177 = load i32, ptr @uvc_dbg_param, align 4
  %1178 = and i32 %1177, 2
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1665, label %1658

1180:                                             ; preds = %1174
  %1181 = getelementptr i8, ptr %143, i32 4
  %1182 = load i16, ptr %1181, align 1
  %1183 = zext i16 %1182 to i32
  %1184 = and i32 %1183, 32512
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i32 %1183, 32768
  %1187 = icmp eq i32 %1186, 0
  %1188 = and i1 %1185, %1187
  br i1 %1188, label %1202, label %1189

1189:                                             ; preds = %1180
  %1190 = load i32, ptr @uvc_dbg_param, align 4
  %1191 = and i32 %1190, 2
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1611, label %1193

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.usb_device, ptr %277, i32 0, i32 15
  %1195 = load i32, ptr %277, align 8
  %1196 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %280, i32 0, i32 2
  %1197 = load i8, ptr %1196, align 2
  %1198 = zext i8 %1197 to i32
  %1199 = getelementptr i8, ptr %143, i32 3
  %1200 = load i8, ptr %1199, align 1
  %1201 = zext i8 %1200 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1194, ptr noundef nonnull @.str.40, i32 noundef %1195, i32 noundef %1198, i32 noundef %1201, i32 noundef %1183) #24
  br label %1611

1202:                                             ; preds = %1180
  switch i16 %1182, label %1224 [
    i16 513, label %1203
    i16 514, label %1209
  ]

1203:                                             ; preds = %1202
  %1204 = icmp ugt i32 %142, 14
  br i1 %1204, label %1205, label %1224

1205:                                             ; preds = %1203
  %1206 = getelementptr i8, ptr %143, i32 14
  %1207 = load i8, ptr %1206, align 1
  %1208 = zext i8 %1207 to i32
  br label %1224

1209:                                             ; preds = %1202
  %1210 = icmp ugt i32 %142, 8
  br i1 %1210, label %1211, label %1215

1211:                                             ; preds = %1209
  %1212 = getelementptr i8, ptr %143, i32 8
  %1213 = load i8, ptr %1212, align 1
  %1214 = zext i8 %1213 to i32
  br label %1215

1215:                                             ; preds = %1211, %1209
  %1216 = phi i32 [ %1214, %1211 ], [ 0, %1209 ]
  %1217 = add nuw nsw i32 %1216, 10
  %1218 = icmp ugt i32 %1217, %142
  br i1 %1218, label %1224, label %1219

1219:                                             ; preds = %1215
  %1220 = add nuw nsw i32 %1216, 9
  %1221 = getelementptr i8, ptr %143, i32 %1220
  %1222 = load i8, ptr %1221, align 1
  %1223 = zext i8 %1222 to i32
  br label %1224

1224:                                             ; preds = %1219, %1215, %1205, %1203, %1202
  %1225 = phi i32 [ %1208, %1205 ], [ 0, %1203 ], [ 0, %1202 ], [ %1216, %1215 ], [ %1216, %1219 ]
  %1226 = phi i32 [ 0, %1205 ], [ 0, %1203 ], [ 0, %1202 ], [ 0, %1215 ], [ %1223, %1219 ]
  %1227 = phi i32 [ 15, %1205 ], [ 15, %1203 ], [ 8, %1202 ], [ 10, %1215 ], [ 10, %1219 ]
  %1228 = add nuw nsw i32 %1226, %1225
  %1229 = add nuw nsw i32 %1228, %1227
  %1230 = icmp ugt i32 %1229, %142
  br i1 %1230, label %1231, label %1235

1231:                                             ; preds = %1224
  %1232 = load i32, ptr @uvc_dbg_param, align 4
  %1233 = and i32 %1232, 2
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1665, label %1658

1235:                                             ; preds = %1224
  %1236 = getelementptr i8, ptr %143, i32 3
  %1237 = load i8, ptr %1236, align 1
  %1238 = zext i8 %1237 to i16
  %1239 = tail call fastcc ptr @uvc_alloc_entity(i16 noundef zeroext %1182, i16 noundef zeroext %1238, i32 noundef 1, i32 noundef %1228) #22
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1665, label %1241

1241:                                             ; preds = %1235
  %1242 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 4
  %1243 = load i16, ptr %1242, align 2
  %1244 = trunc i16 %1243 to i15
  switch i15 %1244, label %1272 [
    i15 513, label %1245
    i15 514, label %1260
  ]

1245:                                             ; preds = %1241
  %1246 = trunc i32 %1225 to i8
  %1247 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12
  %1248 = getelementptr inbounds %struct.anon.98, ptr %1247, i32 0, i32 3
  store i8 %1246, ptr %1248, align 2
  %1249 = getelementptr i8, ptr %1239, i32 356
  %1250 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12, i32 0, i32 2
  store ptr %1249, ptr %1250, align 4
  %1251 = getelementptr i8, ptr %143, i32 8
  %1252 = load i16, ptr %1251, align 1
  store i16 %1252, ptr %1247, align 4
  %1253 = getelementptr i8, ptr %143, i32 10
  %1254 = load i16, ptr %1253, align 1
  %1255 = getelementptr inbounds %struct.anon.98, ptr %1247, i32 0, i32 1
  store i16 %1254, ptr %1255, align 2
  %1256 = getelementptr i8, ptr %143, i32 12
  %1257 = load i16, ptr %1256, align 1
  %1258 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12, i32 0, i32 1
  store i16 %1257, ptr %1258, align 4
  %1259 = getelementptr i8, ptr %143, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1249, ptr align 1 %1259, i32 %1225, i1 false) #22
  br label %1272

1260:                                             ; preds = %1241
  %1261 = trunc i32 %1225 to i8
  %1262 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12
  store i8 %1261, ptr %1262, align 4
  %1263 = getelementptr i8, ptr %1239, i32 356
  %1264 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12, i32 0, i32 1
  store ptr %1263, ptr %1264, align 4
  %1265 = trunc i32 %1226 to i8
  %1266 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12, i32 0, i32 2
  store i8 %1265, ptr %1266, align 4
  %1267 = getelementptr i8, ptr %1263, i32 %1225
  %1268 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 12, i32 0, i32 3
  store ptr %1267, ptr %1268, align 4
  %1269 = getelementptr i8, ptr %143, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1263, ptr align 1 %1269, i32 %1225, i1 false) #22
  %1270 = add nuw nsw i32 %1225, 10
  %1271 = getelementptr i8, ptr %143, i32 %1270
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1267, ptr align 1 %1271, i32 %1226, i1 false) #22
  br label %1272

1272:                                             ; preds = %1260, %1245, %1241
  %1273 = getelementptr i8, ptr %143, i32 7
  %1274 = load i8, ptr %1273, align 1
  %1275 = icmp eq i8 %1274, 0
  br i1 %1275, label %1280, label %1276

1276:                                             ; preds = %1272
  %1277 = zext i8 %1274 to i32
  %1278 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 5
  %1279 = tail call i32 @usb_string(ptr noundef %277, i32 noundef %1277, ptr noundef %1278, i32 noundef 64) #22
  br label %1298

1280:                                             ; preds = %1272
  %1281 = load i16, ptr %1242, align 2
  %1282 = trunc i16 %1281 to i15
  switch i15 %1282, label %1293 [
    i15 513, label %1283
    i15 514, label %1288
  ]

1283:                                             ; preds = %1280
  %1284 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 5
  %1285 = load i8, ptr %1236, align 1
  %1286 = zext i8 %1285 to i32
  %1287 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1284, ptr noundef nonnull @.str.41, i32 noundef %1286) #22
  br label %1298

1288:                                             ; preds = %1280
  %1289 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 5
  %1290 = load i8, ptr %1236, align 1
  %1291 = zext i8 %1290 to i32
  %1292 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1289, ptr noundef nonnull @.str.42, i32 noundef %1291) #22
  br label %1298

1293:                                             ; preds = %1280
  %1294 = getelementptr inbounds %struct.uvc_entity, ptr %1239, i32 0, i32 5
  %1295 = load i8, ptr %1236, align 1
  %1296 = zext i8 %1295 to i32
  %1297 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1294, ptr noundef nonnull @.str.43, i32 noundef %1296) #22
  br label %1298

1298:                                             ; preds = %1293, %1288, %1283, %1276
  %1299 = load ptr, ptr %14, align 4
  store ptr %1239, ptr %14, align 4
  store ptr %13, ptr %1239, align 4
  %1300 = getelementptr inbounds %struct.list_head, ptr %1239, i32 0, i32 1
  store ptr %1299, ptr %1300, align 4
  store volatile ptr %1239, ptr %1299, align 4
  br label %1611

1301:                                             ; preds = %276
  %1302 = icmp ult i32 %142, 9
  br i1 %1302, label %1303, label %1307

1303:                                             ; preds = %1301
  %1304 = load i32, ptr @uvc_dbg_param, align 4
  %1305 = and i32 %1304, 2
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1665, label %1658

1307:                                             ; preds = %1301
  %1308 = getelementptr i8, ptr %143, i32 4
  %1309 = load i16, ptr %1308, align 1
  %1310 = zext i16 %1309 to i32
  %1311 = and i32 %1310, 65280
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1313, label %1326

1313:                                             ; preds = %1307
  %1314 = load i32, ptr @uvc_dbg_param, align 4
  %1315 = and i32 %1314, 2
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1611, label %1317

1317:                                             ; preds = %1313
  %1318 = getelementptr inbounds %struct.usb_device, ptr %277, i32 0, i32 15
  %1319 = load i32, ptr %277, align 8
  %1320 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %280, i32 0, i32 2
  %1321 = load i8, ptr %1320, align 2
  %1322 = zext i8 %1321 to i32
  %1323 = getelementptr i8, ptr %143, i32 3
  %1324 = load i8, ptr %1323, align 1
  %1325 = zext i8 %1324 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1318, ptr noundef nonnull @.str.45, i32 noundef %1319, i32 noundef %1322, i32 noundef %1325, i32 noundef %1310) #24
  br label %1611

1326:                                             ; preds = %1307
  %1327 = or i16 %1309, -32768
  %1328 = getelementptr i8, ptr %143, i32 3
  %1329 = load i8, ptr %1328, align 1
  %1330 = zext i8 %1329 to i16
  %1331 = tail call fastcc ptr @uvc_alloc_entity(i16 noundef zeroext %1327, i16 noundef zeroext %1330, i32 noundef 1, i32 noundef 0) #22
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1665, label %1333

1333:                                             ; preds = %1326
  %1334 = getelementptr inbounds %struct.uvc_entity, ptr %1331, i32 0, i32 14
  %1335 = load ptr, ptr %1334, align 4
  %1336 = getelementptr i8, ptr %143, i32 7
  %1337 = load i8, ptr %1336, align 1
  store i8 %1337, ptr %1335, align 1
  %1338 = getelementptr i8, ptr %143, i32 8
  %1339 = load i8, ptr %1338, align 1
  %1340 = icmp eq i8 %1339, 0
  br i1 %1340, label %1345, label %1341

1341:                                             ; preds = %1333
  %1342 = zext i8 %1339 to i32
  %1343 = getelementptr inbounds %struct.uvc_entity, ptr %1331, i32 0, i32 5
  %1344 = tail call i32 @usb_string(ptr noundef %277, i32 noundef %1342, ptr noundef %1343, i32 noundef 64) #22
  br label %1350

1345:                                             ; preds = %1333
  %1346 = getelementptr inbounds %struct.uvc_entity, ptr %1331, i32 0, i32 5
  %1347 = load i8, ptr %1328, align 1
  %1348 = zext i8 %1347 to i32
  %1349 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1346, ptr noundef nonnull @.str.46, i32 noundef %1348) #22
  br label %1350

1350:                                             ; preds = %1345, %1341
  %1351 = load ptr, ptr %14, align 4
  store ptr %1331, ptr %14, align 4
  store ptr %13, ptr %1331, align 4
  %1352 = getelementptr inbounds %struct.list_head, ptr %1331, i32 0, i32 1
  store ptr %1351, ptr %1352, align 4
  store volatile ptr %1331, ptr %1351, align 4
  br label %1611

1353:                                             ; preds = %276
  %1354 = icmp ugt i32 %142, 4
  br i1 %1354, label %1355, label %1361

1355:                                             ; preds = %1353
  %1356 = getelementptr i8, ptr %143, i32 4
  %1357 = load i8, ptr %1356, align 1
  %1358 = zext i8 %1357 to i32
  %1359 = add nuw nsw i32 %1358, 6
  %1360 = icmp ugt i32 %1359, %142
  br i1 %1360, label %1361, label %1365

1361:                                             ; preds = %1355, %1353
  %1362 = load i32, ptr @uvc_dbg_param, align 4
  %1363 = and i32 %1362, 2
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1665, label %1658

1365:                                             ; preds = %1355
  %1366 = getelementptr i8, ptr %143, i32 3
  %1367 = load i8, ptr %1366, align 1
  %1368 = add nuw nsw i32 %1358, 1
  %1369 = add nuw nsw i32 %1358, 356
  %1370 = shl nuw nsw i32 %1368, 5
  %1371 = add nuw nsw i32 %1369, %1370
  %1372 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1371, i32 noundef 3520) #23
  %1373 = icmp eq ptr %1372, null
  br i1 %1373, label %1665, label %1374

1374:                                             ; preds = %1365
  %1375 = zext i8 %1367 to i16
  %1376 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 3
  store i16 %1375, ptr %1376, align 4
  %1377 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 4
  store i16 4, ptr %1377, align 2
  %1378 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 10
  store i32 0, ptr %1378, align 4
  %1379 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 9
  store i32 %1368, ptr %1379, align 16
  %1380 = getelementptr %struct.uvc_entity, ptr %1372, i32 1
  %1381 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 11
  store ptr %1380, ptr %1381, align 8
  %1382 = icmp eq i8 %1357, 0
  br i1 %1382, label %1403, label %1383

1383:                                             ; preds = %1374
  %1384 = getelementptr %struct.uvc_entity, ptr %1372, i32 1, i32 5, i32 4
  store i32 1, ptr %1384, align 64
  %1385 = icmp eq i8 %1357, 1
  br i1 %1385, label %1403, label %1386

1386:                                             ; preds = %1383
  %1387 = getelementptr %struct.uvc_entity, ptr %1372, i32 1, i32 5, i32 36
  store i32 1, ptr %1387, align 32
  %1388 = icmp eq i8 %1357, 2
  br i1 %1388, label %1401, label %1389

1389:                                             ; preds = %1386
  %1390 = getelementptr %struct.uvc_entity, ptr %1372, i32 1, i32 6, i32 4
  store i32 1, ptr %1390, align 64
  %1391 = icmp eq i8 %1357, 3
  br i1 %1391, label %1398, label %1392

1392:                                             ; preds = %1392, %1389
  %1393 = phi i32 [ %1396, %1392 ], [ 3, %1389 ]
  %1394 = load ptr, ptr %1381, align 8
  %1395 = getelementptr %struct.media_pad, ptr %1394, i32 %1393, i32 4
  store i32 1, ptr %1395, align 4
  %1396 = add nuw i32 %1393, 1
  %1397 = icmp eq i32 %1396, %1358
  br i1 %1397, label %1398, label %1392

1398:                                             ; preds = %1392, %1389
  %1399 = load i16, ptr %1377, align 2
  %1400 = icmp sgt i16 %1399, -1
  br i1 %1400, label %1401, label %1406

1401:                                             ; preds = %1398, %1386
  %1402 = load ptr, ptr %1381, align 8
  br label %1403

1403:                                             ; preds = %1401, %1383, %1374
  %1404 = phi ptr [ %1380, %1374 ], [ %1402, %1401 ], [ %1380, %1383 ]
  %1405 = getelementptr %struct.media_pad, ptr %1404, i32 %1358, i32 4
  store i32 2, ptr %1405, align 4
  br label %1406

1406:                                             ; preds = %1403, %1398
  %1407 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 13
  store i8 %1357, ptr %1407, align 4
  %1408 = load ptr, ptr %1381, align 8
  %1409 = getelementptr %struct.media_pad, ptr %1408, i32 %1368
  %1410 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 14
  store ptr %1409, ptr %1410, align 16
  %1411 = getelementptr i8, ptr %143, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1409, ptr align 1 %1411, i32 %1358, i1 false) #22
  %1412 = add nuw nsw i32 %1358, 5
  %1413 = getelementptr i8, ptr %143, i32 %1412
  %1414 = load i8, ptr %1413, align 1
  %1415 = icmp eq i8 %1414, 0
  br i1 %1415, label %1420, label %1416

1416:                                             ; preds = %1406
  %1417 = zext i8 %1414 to i32
  %1418 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 5
  %1419 = tail call i32 @usb_string(ptr noundef %277, i32 noundef %1417, ptr noundef %1418, i32 noundef 64) #22
  br label %1425

1420:                                             ; preds = %1406
  %1421 = getelementptr inbounds %struct.uvc_entity, ptr %1372, i32 0, i32 5
  %1422 = load i8, ptr %1366, align 1
  %1423 = zext i8 %1422 to i32
  %1424 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1421, ptr noundef nonnull @.str.48, i32 noundef %1423) #22
  br label %1425

1425:                                             ; preds = %1420, %1416
  %1426 = load ptr, ptr %14, align 4
  store ptr %1372, ptr %14, align 4
  store ptr %13, ptr %1372, align 64
  %1427 = getelementptr inbounds %struct.list_head, ptr %1372, i32 0, i32 1
  store ptr %1426, ptr %1427, align 4
  store volatile ptr %1372, ptr %1426, align 4
  br label %1611

1428:                                             ; preds = %276
  %1429 = icmp ugt i32 %142, 7
  br i1 %1429, label %1430, label %1434

1430:                                             ; preds = %1428
  %1431 = getelementptr i8, ptr %143, i32 7
  %1432 = load i8, ptr %1431, align 1
  %1433 = zext i8 %1432 to i32
  br label %1434

1434:                                             ; preds = %1430, %1428
  %1435 = phi i32 [ %1433, %1430 ], [ 0, %1428 ]
  %1436 = load i16, ptr %138, align 8
  %1437 = icmp ugt i16 %1436, 271
  %1438 = select i1 %1437, i32 10, i32 9
  %1439 = add nuw nsw i32 %1438, %1435
  %1440 = icmp ugt i32 %1439, %142
  br i1 %1440, label %1441, label %1445

1441:                                             ; preds = %1434
  %1442 = load i32, ptr @uvc_dbg_param, align 4
  %1443 = and i32 %1442, 2
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1665, label %1658

1445:                                             ; preds = %1434
  %1446 = getelementptr i8, ptr %143, i32 3
  %1447 = load i8, ptr %1446, align 1
  %1448 = add nuw nsw i32 %1435, 31
  %1449 = and i32 %1448, 480
  %1450 = add nuw nsw i32 %1449, 421
  %1451 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1450, i32 noundef 3520) #23
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1665, label %1453

1453:                                             ; preds = %1445
  %1454 = zext i8 %1447 to i16
  %1455 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 3
  store i16 %1454, ptr %1455, align 4
  %1456 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 4
  store i16 5, ptr %1456, align 2
  %1457 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1457, ptr noundef nonnull align 1 dereferenceable(16) @uvc_processing_guid, i32 16, i1 false) #22
  %1458 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 10
  store i32 0, ptr %1458, align 4
  %1459 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 9
  store i32 2, ptr %1459, align 16
  %1460 = getelementptr %struct.uvc_entity, ptr %1451, i32 1
  %1461 = getelementptr i8, ptr %1460, i32 %1449
  %1462 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 11
  store ptr %1461, ptr %1462, align 8
  %1463 = getelementptr %struct.media_pad, ptr %1461, i32 0, i32 4
  store i32 1, ptr %1463, align 32
  %1464 = getelementptr %struct.media_pad, ptr %1461, i32 1, i32 4
  store i32 2, ptr %1464, align 32
  %1465 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 13
  store i8 1, ptr %1465, align 4
  %1466 = getelementptr %struct.media_pad, ptr %1461, i32 2
  %1467 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 14
  store ptr %1466, ptr %1467, align 16
  %1468 = getelementptr i8, ptr %143, i32 4
  %1469 = load i8, ptr %1468, align 1
  store i8 %1469, ptr %1466, align 4
  %1470 = getelementptr i8, ptr %143, i32 5
  %1471 = load i16, ptr %1470, align 1
  %1472 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 12
  store i16 %1471, ptr %1472, align 4
  %1473 = getelementptr i8, ptr %143, i32 7
  %1474 = load i8, ptr %1473, align 1
  %1475 = getelementptr inbounds %struct.anon.101, ptr %1472, i32 0, i32 1
  store i8 %1474, ptr %1475, align 2
  %1476 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 12, i32 0, i32 1
  store ptr %1460, ptr %1476, align 64
  %1477 = getelementptr i8, ptr %143, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1460, ptr align 1 %1477, i32 %1435, i1 false) #22
  %1478 = load i16, ptr %138, align 8
  %1479 = icmp ugt i16 %1478, 271
  br i1 %1479, label %1480, label %1485

1480:                                             ; preds = %1453
  %1481 = add nuw nsw i32 %1435, 9
  %1482 = getelementptr i8, ptr %143, i32 %1481
  %1483 = load i8, ptr %1482, align 1
  %1484 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 12, i32 0, i32 2
  store i8 %1483, ptr %1484, align 4
  br label %1485

1485:                                             ; preds = %1480, %1453
  %1486 = add nuw nsw i32 %1435, 8
  %1487 = getelementptr i8, ptr %143, i32 %1486
  %1488 = load i8, ptr %1487, align 1
  %1489 = icmp eq i8 %1488, 0
  br i1 %1489, label %1494, label %1490

1490:                                             ; preds = %1485
  %1491 = zext i8 %1488 to i32
  %1492 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 5
  %1493 = tail call i32 @usb_string(ptr noundef %277, i32 noundef %1491, ptr noundef %1492, i32 noundef 64) #22
  br label %1499

1494:                                             ; preds = %1485
  %1495 = getelementptr inbounds %struct.uvc_entity, ptr %1451, i32 0, i32 5
  %1496 = load i8, ptr %1446, align 1
  %1497 = zext i8 %1496 to i32
  %1498 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1495, ptr noundef nonnull @.str.50, i32 noundef %1497) #22
  br label %1499

1499:                                             ; preds = %1494, %1490
  %1500 = load ptr, ptr %14, align 4
  store ptr %1451, ptr %14, align 4
  store ptr %13, ptr %1451, align 64
  %1501 = getelementptr inbounds %struct.list_head, ptr %1451, i32 0, i32 1
  store ptr %1500, ptr %1501, align 4
  store volatile ptr %1451, ptr %1500, align 4
  br label %1611

1502:                                             ; preds = %276
  %1503 = icmp ugt i32 %142, 21
  br i1 %1503, label %1504, label %1508

1504:                                             ; preds = %1502
  %1505 = getelementptr i8, ptr %143, i32 21
  %1506 = load i8, ptr %1505, align 1
  %1507 = zext i8 %1506 to i32
  br label %1508

1508:                                             ; preds = %1504, %1502
  %1509 = phi i32 [ %1507, %1504 ], [ 0, %1502 ]
  %1510 = add nuw nsw i32 %1509, 24
  %1511 = icmp ugt i32 %1510, %142
  br i1 %1511, label %1517, label %1512

1512:                                             ; preds = %1508
  %1513 = add nuw nsw i32 %1509, 22
  %1514 = getelementptr i8, ptr %143, i32 %1513
  %1515 = load i8, ptr %1514, align 1
  %1516 = zext i8 %1515 to i32
  br label %1517

1517:                                             ; preds = %1512, %1508
  %1518 = phi i32 [ %1516, %1512 ], [ 0, %1508 ]
  %1519 = add nuw nsw i32 %1518, %1510
  %1520 = icmp ugt i32 %1519, %142
  br i1 %1520, label %1521, label %1525

1521:                                             ; preds = %1517
  %1522 = load i32, ptr @uvc_dbg_param, align 4
  %1523 = and i32 %1522, 2
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1665, label %1658

1525:                                             ; preds = %1517
  %1526 = getelementptr i8, ptr %143, i32 3
  %1527 = load i8, ptr %1526, align 1
  %1528 = add nuw nsw i32 %1509, 1
  %1529 = add nuw nsw i32 %1518, 31
  %1530 = and i32 %1529, 480
  %1531 = add nuw nsw i32 %1509, 356
  %1532 = shl nuw nsw i32 %1528, 5
  %1533 = add nuw nsw i32 %1531, %1532
  %1534 = add nuw nsw i32 %1533, %1530
  %1535 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1534, i32 noundef 3520) #23
  %1536 = icmp eq ptr %1535, null
  br i1 %1536, label %1665, label %1537

1537:                                             ; preds = %1525
  %1538 = zext i8 %1527 to i16
  %1539 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 3
  store i16 %1538, ptr %1539, align 4
  %1540 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 4
  store i16 6, ptr %1540, align 2
  %1541 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 10
  store i32 0, ptr %1541, align 4
  %1542 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 9
  store i32 %1528, ptr %1542, align 16
  %1543 = getelementptr %struct.uvc_entity, ptr %1535, i32 1
  %1544 = getelementptr i8, ptr %1543, i32 %1530
  %1545 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 11
  store ptr %1544, ptr %1545, align 8
  %1546 = icmp eq i32 %1509, 0
  br i1 %1546, label %1567, label %1547

1547:                                             ; preds = %1537
  %1548 = getelementptr %struct.media_pad, ptr %1544, i32 0, i32 4
  store i32 1, ptr %1548, align 32
  %1549 = icmp eq i32 %1509, 1
  br i1 %1549, label %1567, label %1550

1550:                                             ; preds = %1547
  %1551 = getelementptr %struct.media_pad, ptr %1544, i32 1, i32 4
  store i32 1, ptr %1551, align 32
  %1552 = icmp eq i32 %1509, 2
  br i1 %1552, label %1565, label %1553

1553:                                             ; preds = %1550
  %1554 = getelementptr %struct.media_pad, ptr %1544, i32 2, i32 4
  store i32 1, ptr %1554, align 32
  %1555 = icmp eq i32 %1509, 3
  br i1 %1555, label %1562, label %1556

1556:                                             ; preds = %1556, %1553
  %1557 = phi i32 [ %1560, %1556 ], [ 3, %1553 ]
  %1558 = load ptr, ptr %1545, align 8
  %1559 = getelementptr %struct.media_pad, ptr %1558, i32 %1557, i32 4
  store i32 1, ptr %1559, align 4
  %1560 = add nuw i32 %1557, 1
  %1561 = icmp eq i32 %1560, %1509
  br i1 %1561, label %1562, label %1556

1562:                                             ; preds = %1556, %1553
  %1563 = load i16, ptr %1540, align 2
  %1564 = icmp sgt i16 %1563, -1
  br i1 %1564, label %1565, label %1570

1565:                                             ; preds = %1562, %1550
  %1566 = load ptr, ptr %1545, align 8
  br label %1567

1567:                                             ; preds = %1565, %1547, %1537
  %1568 = phi ptr [ %1544, %1537 ], [ %1566, %1565 ], [ %1544, %1547 ]
  %1569 = getelementptr %struct.media_pad, ptr %1568, i32 %1509, i32 4
  store i32 2, ptr %1569, align 4
  br label %1570

1570:                                             ; preds = %1567, %1562
  %1571 = trunc i32 %1509 to i8
  %1572 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 13
  store i8 %1571, ptr %1572, align 4
  %1573 = load ptr, ptr %1545, align 8
  %1574 = getelementptr %struct.media_pad, ptr %1573, i32 %1528
  %1575 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 14
  store ptr %1574, ptr %1575, align 16
  %1576 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 6
  %1577 = getelementptr i8, ptr %143, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1576, ptr noundef align 1 dereferenceable(16) %1577, i32 16, i1 false) #22
  %1578 = getelementptr i8, ptr %143, i32 20
  %1579 = load i8, ptr %1578, align 1
  %1580 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 12
  store i8 %1579, ptr %1580, align 4
  %1581 = getelementptr i8, ptr %143, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1574, ptr align 1 %1581, i32 %1509, i1 false) #22
  %1582 = add nuw nsw i32 %1509, 22
  %1583 = getelementptr i8, ptr %143, i32 %1582
  %1584 = load i8, ptr %1583, align 1
  %1585 = getelementptr inbounds %struct.anon.103, ptr %1580, i32 0, i32 1
  store i8 %1584, ptr %1585, align 1
  %1586 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 12, i32 0, i32 1
  store ptr %1543, ptr %1586, align 64
  %1587 = add nuw nsw i32 %1509, 23
  %1588 = getelementptr i8, ptr %143, i32 %1587
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1543, ptr align 1 %1588, i32 %1518, i1 false) #22
  %1589 = add nuw nsw i32 %1518, %1587
  %1590 = getelementptr i8, ptr %143, i32 %1589
  %1591 = load i8, ptr %1590, align 1
  %1592 = icmp eq i8 %1591, 0
  br i1 %1592, label %1597, label %1593

1593:                                             ; preds = %1570
  %1594 = zext i8 %1591 to i32
  %1595 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 5
  %1596 = tail call i32 @usb_string(ptr noundef %277, i32 noundef %1594, ptr noundef %1595, i32 noundef 64) #22
  br label %1602

1597:                                             ; preds = %1570
  %1598 = getelementptr inbounds %struct.uvc_entity, ptr %1535, i32 0, i32 5
  %1599 = load i8, ptr %1526, align 1
  %1600 = zext i8 %1599 to i32
  %1601 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1598, ptr noundef nonnull @.str.36, i32 noundef %1600) #22
  br label %1602

1602:                                             ; preds = %1597, %1593
  %1603 = load ptr, ptr %14, align 4
  store ptr %1535, ptr %14, align 4
  store ptr %13, ptr %1535, align 64
  %1604 = getelementptr inbounds %struct.list_head, ptr %1535, i32 0, i32 1
  store ptr %1603, ptr %1604, align 4
  store volatile ptr %1535, ptr %1603, align 4
  br label %1611

1605:                                             ; preds = %276
  %1606 = load i32, ptr @uvc_dbg_param, align 4
  %1607 = and i32 %1606, 2
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1611, label %1609

1609:                                             ; preds = %1605
  %1610 = getelementptr inbounds %struct.usb_device, ptr %277, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1610, ptr noundef nonnull @.str.51, i32 noundef %283) #24
  br label %1611

1611:                                             ; preds = %1609, %1605, %1602, %1499, %1425, %1350, %1317, %1313, %1298, %1193, %1189, %1171, %298, %272, %269, %186
  %1612 = load i8, ptr %143, align 1
  %1613 = zext i8 %1612 to i32
  %1614 = sub i32 %142, %1613
  %1615 = icmp sgt i32 %1614, 2
  br i1 %1615, label %1616, label %1621

1616:                                             ; preds = %1611
  %1617 = getelementptr i8, ptr %143, i32 %1613
  %1618 = load ptr, ptr %24, align 4
  %1619 = getelementptr inbounds %struct.usb_interface, ptr %1618, i32 0, i32 1
  %1620 = load ptr, ptr %1619, align 4
  br label %140

1621:                                             ; preds = %1611, %115
  %1622 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %131, i32 0, i32 4
  %1623 = load i8, ptr %1622, align 4
  %1624 = icmp eq i8 %1623, 1
  br i1 %1624, label %1625, label %1672

1625:                                             ; preds = %1621
  %1626 = load i32, ptr %40, align 4
  %1627 = and i32 %1626, 8
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1629, label %1672

1629:                                             ; preds = %1625
  %1630 = getelementptr inbounds %struct.usb_host_interface, ptr %131, i32 0, i32 3
  %1631 = load ptr, ptr %1630, align 4
  %1632 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1631, i32 0, i32 3
  %1633 = load i8, ptr %1632, align 1
  %1634 = and i8 %1633, 3
  %1635 = icmp eq i8 %1634, 3
  br i1 %1635, label %1636, label %1672

1636:                                             ; preds = %1629
  %1637 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1631, i32 0, i32 2
  %1638 = load i8, ptr %1637, align 1
  %1639 = icmp sgt i8 %1638, -1
  br i1 %1639, label %1672, label %1640

1640:                                             ; preds = %1636
  %1641 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1631, i32 0, i32 4
  %1642 = load i16, ptr %1641, align 1
  %1643 = icmp ugt i16 %1642, 7
  br i1 %1643, label %1644, label %1672

1644:                                             ; preds = %1640
  %1645 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1631, i32 0, i32 5
  %1646 = load i8, ptr %1645, align 1
  %1647 = icmp eq i8 %1646, 0
  br i1 %1647, label %1672, label %1648

1648:                                             ; preds = %1644
  %1649 = load i32, ptr @uvc_dbg_param, align 4
  %1650 = and i32 %1649, 2
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1656, label %1652

1652:                                             ; preds = %1648
  %1653 = load ptr, ptr %9, align 8
  %1654 = getelementptr inbounds %struct.usb_device, ptr %1653, i32 0, i32 15
  %1655 = zext i8 %1638 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1654, ptr noundef nonnull @.str.34, i32 noundef %1655) #24
  br label %1656

1656:                                             ; preds = %1652, %1648
  %1657 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 18
  store ptr %1631, ptr %1657, align 4
  br label %1672

1658:                                             ; preds = %1521, %1441, %1361, %1303, %1231, %1176, %294
  %1659 = phi ptr [ @.str.37, %294 ], [ @.str.39, %1176 ], [ @.str.39, %1231 ], [ @.str.44, %1303 ], [ @.str.47, %1361 ], [ @.str.49, %1441 ], [ @.str.35, %1521 ]
  %1660 = getelementptr inbounds %struct.usb_device, ptr %277, i32 0, i32 15
  %1661 = load i32, ptr %277, align 8
  %1662 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %280, i32 0, i32 2
  %1663 = load i8, ptr %1662, align 2
  %1664 = zext i8 %1663 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1660, ptr noundef nonnull %1659, i32 noundef %1661, i32 noundef %1664) #24
  br label %1665

1665:                                             ; preds = %1658, %1525, %1521, %1445, %1441, %1365, %1361, %1326, %1303, %1235, %1231, %1176, %294
  %1666 = load i32, ptr @uvc_dbg_param, align 4
  %1667 = and i32 %1666, 1
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1795, label %1669

1669:                                             ; preds = %1665
  %1670 = load ptr, ptr %9, align 8
  %1671 = getelementptr inbounds %struct.usb_device, ptr %1670, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1671, ptr noundef nonnull @.str.23) #24
  br label %1795

1672:                                             ; preds = %1656, %1644, %1640, %1636, %1629, %1625, %1621
  %1673 = load ptr, ptr %9, align 8
  %1674 = getelementptr inbounds %struct.usb_device, ptr %1673, i32 0, i32 15
  %1675 = tail call ptr @devm_gpiod_get_optional(ptr noundef %1674, ptr noundef nonnull @.str.109, i32 noundef 1) #22
  %1676 = icmp eq ptr %1675, null
  %1677 = icmp ugt ptr %1675, inttoptr (i32 -4096 to ptr)
  %1678 = or i1 %1676, %1677
  br i1 %1678, label %1679, label %1682

1679:                                             ; preds = %1672
  %1680 = icmp slt ptr %1675, null
  %1681 = and i1 %1677, %1680
  br i1 %1681, label %1714, label %1721

1682:                                             ; preds = %1672
  %1683 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %1684 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1683, i32 noundef 3520, i32 noundef 388) #25
  %1685 = icmp eq ptr %1684, null
  br i1 %1685, label %1714, label %1686

1686:                                             ; preds = %1682
  %1687 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 3
  store i16 256, ptr %1687, align 4
  %1688 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 4
  store i16 32766, ptr %1688, align 2
  %1689 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1689, ptr noundef nonnull align 1 dereferenceable(16) @uvc_gpio_guid, i32 16, i1 false) #22
  %1690 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 10
  store i32 0, ptr %1690, align 4
  %1691 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 9
  store i32 0, ptr %1691, align 8
  %1692 = getelementptr %struct.uvc_entity, ptr %1684, i32 1, i32 5, i32 8
  %1693 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 11
  store ptr %1692, ptr %1693, align 8
  %1694 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 13
  store i8 0, ptr %1694, align 4
  %1695 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 14
  store ptr %1692, ptr %1695, align 8
  %1696 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %1675) #22
  %1697 = icmp slt i32 %1696, 0
  br i1 %1697, label %1698, label %1701

1698:                                             ; preds = %1686
  %1699 = load ptr, ptr %9, align 8
  %1700 = getelementptr inbounds %struct.usb_device, ptr %1699, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1700, ptr noundef nonnull @.str.110, i32 noundef %1696) #24
  br label %1714

1701:                                             ; preds = %1686
  %1702 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 12
  %1703 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 12, i32 0, i32 2
  store ptr %1675, ptr %1703, align 4
  %1704 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 12, i32 0, i32 3
  store i32 %1696, ptr %1704, align 8
  store i8 1, ptr %1702, align 4
  %1705 = getelementptr i8, ptr %1684, i32 356
  %1706 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 12, i32 0, i32 1
  store ptr %1705, ptr %1706, align 8
  store i8 1, ptr %1705, align 4
  %1707 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 16
  store ptr @uvc_gpio_get_cur, ptr %1707, align 8
  %1708 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 15
  store ptr @uvc_gpio_get_info, ptr %1708, align 4
  %1709 = getelementptr inbounds %struct.uvc_entity, ptr %1684, i32 0, i32 5
  %1710 = tail call i32 @strscpy(ptr noundef %1709, ptr noundef nonnull @.str.111, i32 noundef 64) #22
  %1711 = load ptr, ptr %14, align 4
  store ptr %1684, ptr %14, align 4
  store ptr %13, ptr %1684, align 8
  %1712 = getelementptr inbounds %struct.list_head, ptr %1684, i32 0, i32 1
  store ptr %1711, ptr %1712, align 4
  store volatile ptr %1684, ptr %1711, align 4
  %1713 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 24
  store ptr %1684, ptr %1713, align 4
  br label %1721

1714:                                             ; preds = %1698, %1682, %1679
  %1715 = load i32, ptr @uvc_dbg_param, align 4
  %1716 = and i32 %1715, 1
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1795, label %1718

1718:                                             ; preds = %1714
  %1719 = load ptr, ptr %9, align 8
  %1720 = getelementptr inbounds %struct.usb_device, ptr %1719, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1720, ptr noundef nonnull @.str.24) #24
  br label %1795

1721:                                             ; preds = %1701, %1679
  %1722 = load ptr, ptr %9, align 8
  %1723 = getelementptr inbounds %struct.usb_device, ptr %1722, i32 0, i32 15
  %1724 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 12
  %1725 = load i16, ptr %1724, align 8
  %1726 = zext i16 %1725 to i32
  %1727 = lshr i32 %1726, 8
  %1728 = and i32 %1726, 255
  %1729 = load ptr, ptr %67, align 8
  %1730 = icmp eq ptr %1729, null
  %1731 = select i1 %1730, ptr @.str.26, ptr %1729
  %1732 = getelementptr i8, ptr %4, i32 480
  %1733 = load i16, ptr %1732, align 8
  %1734 = zext i16 %1733 to i32
  %1735 = getelementptr i8, ptr %4, i32 482
  %1736 = load i16, ptr %1735, align 2
  %1737 = zext i16 %1736 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1723, ptr noundef nonnull @.str.25, i32 noundef %1727, i32 noundef %1728, ptr noundef nonnull %1731, i32 noundef %1734, i32 noundef %1737) #24
  %1738 = load i32, ptr %40, align 4
  %1739 = load ptr, ptr %33, align 4
  %1740 = load i32, ptr %1739, align 4
  %1741 = icmp eq i32 %1738, %1740
  br i1 %1741, label %1748, label %1742

1742:                                             ; preds = %1721
  %1743 = load ptr, ptr %9, align 8
  %1744 = getelementptr inbounds %struct.usb_device, ptr %1743, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1744, ptr noundef nonnull @.str.27, i32 noundef %1738) #24
  %1745 = load ptr, ptr %9, align 8
  %1746 = getelementptr inbounds %struct.usb_device, ptr %1745, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1746, ptr noundef nonnull @.str.28) #24
  %1747 = load ptr, ptr %33, align 4
  br label %1748

1748:                                             ; preds = %1742, %1721
  %1749 = phi ptr [ %1747, %1742 ], [ %1739, %1721 ]
  %1750 = getelementptr inbounds %struct.uvc_device_info, ptr %1749, i32 0, i32 2
  %1751 = load i16, ptr %1750, align 4
  %1752 = icmp eq i16 %1751, 0
  br i1 %1752, label %1759, label %1753

1753:                                             ; preds = %1748
  store i16 %1751, ptr %1724, align 8
  %1754 = load ptr, ptr %9, align 8
  %1755 = getelementptr inbounds %struct.usb_device, ptr %1754, i32 0, i32 15
  %1756 = zext i16 %1751 to i32
  %1757 = lshr i32 %1756, 8
  %1758 = and i32 %1756, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1755, ptr noundef nonnull @.str.29, i32 noundef %1757, i32 noundef %1758) #24
  br label %1759

1759:                                             ; preds = %1753, %1748
  %1760 = tail call i32 @v4l2_device_register(ptr noundef %104, ptr noundef %127) #22
  %1761 = icmp slt i32 %1760, 0
  br i1 %1761, label %1795, label %1762

1762:                                             ; preds = %1759
  %1763 = tail call fastcc i32 @uvc_scan_device(ptr noundef nonnull %9)
  %1764 = icmp slt i32 %1763, 0
  br i1 %1764, label %1795, label %1765

1765:                                             ; preds = %1762
  %1766 = tail call i32 @uvc_ctrl_init_device(ptr noundef nonnull %9) #22
  %1767 = icmp slt i32 %1766, 0
  br i1 %1767, label %1795, label %1768

1768:                                             ; preds = %1765
  %1769 = tail call fastcc i32 @uvc_register_chains(ptr noundef nonnull %9)
  %1770 = icmp slt i32 %1769, 0
  br i1 %1770, label %1795, label %1771

1771:                                             ; preds = %1768
  %1772 = tail call i32 @__media_device_register(ptr noundef %105, ptr noundef nonnull @__this_module) #22
  %1773 = icmp slt i32 %1772, 0
  br i1 %1773, label %1795, label %1774

1774:                                             ; preds = %1771
  %1775 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %9, ptr %1775, align 8
  %1776 = tail call i32 @uvc_status_init(ptr noundef nonnull %9) #22
  %1777 = icmp slt i32 %1776, 0
  br i1 %1777, label %1778, label %1781

1778:                                             ; preds = %1774
  %1779 = load ptr, ptr %9, align 8
  %1780 = getelementptr inbounds %struct.usb_device, ptr %1779, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1780, ptr noundef nonnull @.str.30, i32 noundef %1776) #24
  br label %1781

1781:                                             ; preds = %1778, %1774
  %1782 = tail call fastcc i32 @uvc_gpio_init_irq(ptr noundef nonnull %9)
  %1783 = icmp slt i32 %1782, 0
  br i1 %1783, label %1784, label %1787

1784:                                             ; preds = %1781
  %1785 = load ptr, ptr %9, align 8
  %1786 = getelementptr inbounds %struct.usb_device, ptr %1785, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1786, ptr noundef nonnull @.str.31, i32 noundef %1782) #24
  br label %1795

1787:                                             ; preds = %1781
  %1788 = load i32, ptr @uvc_dbg_param, align 4
  %1789 = and i32 %1788, 1
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1794, label %1791

1791:                                             ; preds = %1787
  %1792 = load ptr, ptr %9, align 8
  %1793 = getelementptr inbounds %struct.usb_device, ptr %1792, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %1793, ptr noundef nonnull @.str.32) #24
  br label %1794

1794:                                             ; preds = %1791, %1787
  tail call void @usb_enable_autosuspend(ptr noundef %5) #22
  br label %1796

1795:                                             ; preds = %1784, %1771, %1768, %1765, %1762, %1759, %1718, %1714, %1669, %1665
  tail call fastcc void @uvc_unregister_video(ptr noundef nonnull %9)
  tail call fastcc void @kref_put(ptr noundef %19)
  br label %1796

1796:                                             ; preds = %1795, %1794, %2
  %1797 = phi i32 [ -19, %1795 ], [ 0, %1794 ], [ -12, %2 ]
  ret i32 %1797
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_disconnect(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call fastcc void @uvc_unregister_video(ptr noundef %3)
  %10 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 17
  tail call fastcc void @kref_put(ptr noundef %10)
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_suspend(ptr noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @uvc_dbg_param, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %10, ptr noundef nonnull @.str.146, i32 noundef %15) #24
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %23) #22
  %24 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @uvc_status_stop(ptr noundef %4) #22
  br label %28

28:                                               ; preds = %27, %22
  tail call void @mutex_unlock(ptr noundef %23) #22
  br label %48

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 16
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi ptr [ %30, %29 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = tail call i32 @uvc_video_suspend(ptr noundef %33) #22
  br label %48

41:                                               ; preds = %31
  %42 = load i32, ptr @uvc_dbg_param, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %47, ptr noundef nonnull @.str.147) #24
  br label %48

48:                                               ; preds = %45, %41, %39, %28
  %49 = phi i32 [ 0, %28 ], [ %40, %39 ], [ -22, %45 ], [ -22, %41 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_resume(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @__uvc_resume(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_reset_resume(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @__uvc_resume(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #6 section ".init.text" {
  tail call void @uvc_debugfs_init() #22
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @uvc_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.1) #22
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @uvc_debugfs_cleanup() #22
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ %1, %3 ], [ 0, %0 ]
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #6 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @uvc_driver) #22
  tail call void @uvc_debugfs_cleanup() #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %0) unnamed_addr #10 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #22, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #22, !srcloc !13
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %51, label %7, !prof !11

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #22
  br label %51

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %9 = getelementptr i8, ptr %0, i32 -632
  tail call void @uvc_status_cleanup(ptr noundef %9) #22
  tail call void @uvc_ctrl_cleanup_device(ptr noundef %9) #22
  %10 = getelementptr i8, ptr %0, i32 -628
  %11 = load ptr, ptr %10, align 4
  tail call void @usb_put_intf(ptr noundef %11) #22
  %12 = load ptr, ptr %9, align 8
  tail call void @usb_put_dev(ptr noundef %12) #22
  %13 = getelementptr i8, ptr %0, i32 -544
  tail call void @media_device_cleanup(ptr noundef %13) #22
  %14 = getelementptr i8, ptr %0, i32 -16
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %8
  %18 = phi ptr [ %19, %17 ], [ %15, %8 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %18, i32 -4
  tail call void @kfree(ptr noundef %20) #22
  %21 = icmp eq ptr %19, %14
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %8
  %23 = getelementptr i8, ptr %0, i32 -24
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 4
  tail call void @uvc_mc_cleanup_entity(ptr noundef %27) #22
  tail call void @kfree(ptr noundef %27) #22
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = getelementptr i8, ptr %0, i32 -8
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %50, label %34

34:                                               ; preds = %43, %30
  %35 = phi ptr [ %36, %43 ], [ %32, %30 ]
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.uvc_streaming, ptr %35, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  tail call void @usb_driver_release_interface(ptr noundef nonnull @uvc_driver, ptr noundef %38) #22
  %39 = getelementptr inbounds %struct.uvc_streaming, ptr %35, i32 0, i32 19
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  tail call void @destroy_workqueue(ptr noundef nonnull %40) #22
  br label %43

43:                                               ; preds = %42, %34
  %44 = load ptr, ptr %37, align 8
  tail call void @usb_put_intf(ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.uvc_streaming, ptr %35, i32 0, i32 11
  %46 = load ptr, ptr %45, align 8
  tail call void @kfree(ptr noundef %46) #22
  %47 = getelementptr inbounds %struct.uvc_streaming, ptr %35, i32 0, i32 8, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #22
  tail call void @kfree(ptr noundef %35) #22
  %49 = icmp eq ptr %36, %31
  br i1 %49, label %50, label %34

50:                                               ; preds = %43, %30
  tail call void @kfree(ptr noundef %9) #22
  br label %51

51:                                               ; preds = %50, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_ctrl_cleanup_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_mc_cleanup_entity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uvc_clock_param_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #11 {
  %3 = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 6)
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 6, i32 0
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = tail call i32 @strcasecmp(ptr noundef %6, ptr noundef nonnull @.str.3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @strcasecmp(ptr noundef %6, ptr noundef nonnull @.str.4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 1, %2 ], [ 0, %9 ]
  store i32 %13, ptr @uvc_clock_param, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ 0, %12 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @uvc_clock_param_get(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1) #12 {
  %3 = load i32, ptr @uvc_clock_param, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) @.str.5, i32 16, i1 false)
  br label %7

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %0, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i32 15, i1 false)
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ 15, %5 ], [ 14, %6 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_device(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %209, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15
  %7 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15, i32 1
  br label %8

8:                                                ; preds = %206, %5
  %9 = phi ptr [ %3, %5 ], [ %207, %206 ]
  %10 = getelementptr inbounds %struct.uvc_entity, ptr %9, i32 0, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = icmp sgt i16 %11, -1
  br i1 %12, label %206, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.uvc_entity, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %206

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uvc_entity, ptr %9, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %206

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 72) #25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %319, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 2
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 2, i32 1
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.114, ptr noundef nonnull @uvc_alloc_chain.__key) #22
  store ptr %0, ptr %23, align 8
  %29 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 6
  tail call void @v4l2_prio_init(ptr noundef %29) #22
  %30 = getelementptr inbounds %struct.uvc_entity, ptr %9, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr @uvc_dbg_param, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr %23, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %39, ptr noundef nonnull @.str.115) #24
  br label %40

40:                                               ; preds = %36, %25
  %41 = icmp eq ptr %9, null
  br i1 %41, label %195, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 4
  br label %44

44:                                               ; preds = %184, %42
  %45 = phi ptr [ null, %42 ], [ %46, %184 ]
  %46 = phi ptr [ %9, %42 ], [ %178, %184 ]
  %47 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %50, %44
  %55 = load i32, ptr @uvc_dbg_param, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %194, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %23, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 3
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %61, ptr noundef nonnull @.str.116, i32 noundef %64) #24
  br label %194

65:                                               ; preds = %50
  %66 = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %23, ptr noundef nonnull %46) #22
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %194, label %68

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @uvc_scan_chain_forward(ptr noundef nonnull %23, ptr noundef nonnull %46, ptr noundef %45) #22
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %194, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 32767
  %75 = zext i16 %74 to i32
  switch i32 %75, label %194 [
    i32 6, label %167
    i32 5, label %167
    i32 4, label %76
    i32 512, label %165
    i32 513, label %165
    i32 514, label %165
    i32 768, label %165
    i32 769, label %165
    i32 770, label %165
    i32 257, label %165
  ]

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 13
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %167, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 13
  %82 = load i32, ptr @uvc_dbg_param, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #24
  br label %87

87:                                               ; preds = %85, %80
  store ptr %46, ptr %43, align 8
  %88 = load i8, ptr %81, align 4
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %159, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 14
  br label %92

92:                                               ; preds = %152, %90
  %93 = phi i32 [ 0, %90 ], [ %155, %152 ]
  %94 = load ptr, ptr %91, align 4
  %95 = getelementptr i8, ptr %94, i32 %93
  %96 = load i8, ptr %95, align 1
  %97 = load ptr, ptr %23, align 8
  %98 = getelementptr inbounds %struct.uvc_device, ptr %97, i32 0, i32 14
  %99 = zext i8 %96 to i16
  br label %100

100:                                              ; preds = %104, %92
  %101 = phi ptr [ %98, %92 ], [ %102, %104 ]
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %98
  br i1 %103, label %119, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.uvc_entity, ptr %102, i32 0, i32 3
  %106 = load i16, ptr %105, align 4
  %107 = icmp eq i16 %106, %99
  br i1 %107, label %108, label %100

108:                                              ; preds = %104
  %109 = icmp eq ptr %102, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.uvc_entity, ptr %102, i32 0, i32 4
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 65280
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %113, 32768
  %117 = icmp eq i32 %116, 0
  %118 = and i1 %115, %117
  br i1 %118, label %129, label %119

119:                                              ; preds = %110, %108, %100
  %120 = load i32, ptr @uvc_dbg_param, align 4
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %194, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %97, align 8
  %125 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 3
  %127 = load i16, ptr %126, align 4
  %128 = zext i16 %127 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %125, ptr noundef nonnull @.str.133, i32 noundef %128, i32 noundef %93) #24
  br label %194

129:                                              ; preds = %110
  %130 = getelementptr inbounds %struct.uvc_entity, ptr %102, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.uvc_entity, ptr %102, i32 0, i32 1, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %133, %129
  %138 = load i32, ptr @uvc_dbg_param, align 4
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %194, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %97, align 8
  %143 = getelementptr inbounds %struct.usb_device, ptr %142, i32 0, i32 15
  %144 = zext i8 %96 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %143, ptr noundef nonnull @.str.116, i32 noundef %144) #24
  br label %194

145:                                              ; preds = %133
  %146 = load i32, ptr @uvc_dbg_param, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = zext i8 %96 to i32
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %150) #24
  br label %152

152:                                              ; preds = %149, %145
  %153 = load ptr, ptr %27, align 8
  store ptr %130, ptr %27, align 8
  store ptr %26, ptr %130, align 4
  store ptr %153, ptr %134, align 4
  store volatile ptr %130, ptr %153, align 4
  %154 = tail call fastcc i32 @uvc_scan_chain_forward(ptr noundef nonnull %23, ptr noundef nonnull %102, ptr noundef nonnull %46) #22
  %155 = add nuw nsw i32 %93, 1
  %156 = load i8, ptr %81, align 4
  %157 = zext i8 %156 to i32
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %92, label %159

159:                                              ; preds = %152, %87
  %160 = load i32, ptr @uvc_dbg_param, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %195, label %163

163:                                              ; preds = %159
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #24
  br label %195

165:                                              ; preds = %71, %71, %71, %71, %71, %71, %71
  %166 = icmp sgt i16 %73, -1
  br i1 %166, label %195, label %167

167:                                              ; preds = %165, %76, %71, %71
  %168 = getelementptr inbounds %struct.uvc_entity, ptr %46, i32 0, i32 14
  %169 = load ptr, ptr %168, align 4
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %23, align 8
  %174 = getelementptr inbounds %struct.uvc_device, ptr %173, i32 0, i32 14
  %175 = zext i8 %170 to i16
  br label %176

176:                                              ; preds = %180, %172
  %177 = phi ptr [ %174, %172 ], [ %178, %180 ]
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, %174
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.uvc_entity, ptr %178, i32 0, i32 3
  %182 = load i16, ptr %181, align 4
  %183 = icmp eq i16 %182, %175
  br i1 %183, label %184, label %176

184:                                              ; preds = %180
  %185 = icmp eq ptr %178, null
  br i1 %185, label %186, label %44

186:                                              ; preds = %184, %176
  %187 = load i32, ptr @uvc_dbg_param, align 4
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = zext i8 %170 to i32
  %192 = load ptr, ptr %173, align 8
  %193 = getelementptr inbounds %struct.usb_device, ptr %192, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %193, ptr noundef nonnull @.str.136, i32 noundef %191) #24
  br label %194

194:                                              ; preds = %190, %186, %141, %137, %123, %119, %71, %68, %65, %58, %54
  tail call void @kfree(ptr noundef nonnull %23) #22
  br label %206

195:                                              ; preds = %167, %165, %163, %159, %40
  %196 = load i32, ptr @uvc_dbg_param, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %0, align 8
  %201 = getelementptr inbounds %struct.usb_device, ptr %200, i32 0, i32 15
  tail call fastcc void @uvc_print_chain(ptr noundef nonnull %23)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %201, ptr noundef nonnull @.str.112, ptr noundef nonnull @uvc_print_chain.buffer) #24
  br label %202

202:                                              ; preds = %199, %195
  %203 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 1
  %204 = load ptr, ptr %7, align 4
  store ptr %203, ptr %7, align 4
  store ptr %6, ptr %203, align 4
  %205 = getelementptr inbounds %struct.uvc_video_chain, ptr %23, i32 0, i32 1, i32 1
  store ptr %204, ptr %205, align 8
  store volatile ptr %203, ptr %204, align 4
  br label %206

206:                                              ; preds = %202, %194, %17, %13, %8
  %207 = load ptr, ptr %9, align 4
  %208 = icmp eq ptr %207, %2
  br i1 %208, label %209, label %8

209:                                              ; preds = %206, %1
  %210 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15
  %211 = load volatile ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, %210
  br i1 %212, label %213, label %303

213:                                              ; preds = %209
  %214 = load ptr, ptr %2, align 4
  %215 = icmp eq ptr %214, %2
  br i1 %215, label %303, label %216

216:                                              ; preds = %234, %213
  %217 = phi ptr [ %236, %234 ], [ %214, %213 ]
  %218 = phi ptr [ %231, %234 ], [ null, %213 ]
  %219 = phi ptr [ %235, %234 ], [ null, %213 ]
  %220 = getelementptr inbounds %struct.uvc_entity, ptr %217, i32 0, i32 4
  %221 = load i16, ptr %220, align 2
  %222 = zext i16 %221 to i32
  %223 = and i32 %222, 65280
  %224 = icmp ne i32 %223, 0
  %225 = and i32 %222, 32768
  %226 = icmp eq i32 %225, 0
  %227 = and i1 %224, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %216
  %229 = icmp eq ptr %218, null
  br i1 %229, label %230, label %303

230:                                              ; preds = %228, %216
  %231 = phi ptr [ %218, %216 ], [ %217, %228 ]
  br i1 %226, label %234, label %232

232:                                              ; preds = %230
  %233 = icmp eq ptr %219, null
  br i1 %233, label %234, label %303

234:                                              ; preds = %232, %230
  %235 = phi ptr [ %219, %230 ], [ %217, %232 ]
  %236 = load ptr, ptr %217, align 4
  %237 = icmp eq ptr %236, %2
  br i1 %237, label %238, label %216

238:                                              ; preds = %234
  %239 = icmp eq ptr %231, null
  %240 = icmp eq ptr %235, null
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %303, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %244 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %243, i32 noundef 3520, i32 noundef 72) #25
  %245 = icmp eq ptr %244, null
  br i1 %245, label %303, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 2
  store volatile ptr %247, ptr %247, align 4
  %248 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 2, i32 1
  store ptr %247, ptr %248, align 8
  %249 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %249, ptr noundef nonnull @.str.114, ptr noundef nonnull @uvc_alloc_chain.__key) #22
  store ptr %0, ptr %244, align 8
  %250 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 6
  tail call void @v4l2_prio_init(ptr noundef %250) #22
  %251 = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %244, ptr noundef nonnull %235) #22
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %302, label %253

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 14, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, %2
  br i1 %256, label %282, label %257

257:                                              ; preds = %277, %253
  %258 = phi ptr [ %280, %277 ], [ %255, %253 ]
  %259 = phi ptr [ %278, %277 ], [ %235, %253 ]
  %260 = getelementptr inbounds %struct.uvc_entity, ptr %258, i32 0, i32 4
  %261 = load i16, ptr %260, align 2
  %262 = add i16 %261, -5
  %263 = icmp ult i16 %262, 2
  br i1 %263, label %264, label %277

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.uvc_entity, ptr %258, i32 0, i32 9
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %244, ptr noundef %258) #22
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %302, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.uvc_entity, ptr %258, i32 0, i32 3
  %273 = load i16, ptr %272, align 4
  %274 = trunc i16 %273 to i8
  %275 = getelementptr inbounds %struct.uvc_entity, ptr %259, i32 0, i32 14
  %276 = load ptr, ptr %275, align 4
  store i8 %274, ptr %276, align 1
  br label %277

277:                                              ; preds = %271, %264, %257
  %278 = phi ptr [ %259, %264 ], [ %258, %271 ], [ %259, %257 ]
  %279 = getelementptr inbounds %struct.list_head, ptr %258, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, %2
  br i1 %281, label %282, label %257

282:                                              ; preds = %277, %253
  %283 = phi ptr [ %235, %253 ], [ %278, %277 ]
  %284 = tail call fastcc i32 @uvc_scan_chain_entity(ptr noundef nonnull %244, ptr noundef %231) #22
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %302, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.uvc_entity, ptr %231, i32 0, i32 3
  %288 = load i16, ptr %287, align 4
  %289 = trunc i16 %288 to i8
  %290 = getelementptr inbounds %struct.uvc_entity, ptr %283, i32 0, i32 14
  %291 = load ptr, ptr %290, align 4
  store i8 %289, ptr %291, align 1
  %292 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 1
  %293 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15, i32 1
  %294 = load ptr, ptr %293, align 4
  store ptr %292, ptr %293, align 4
  store ptr %210, ptr %292, align 4
  %295 = getelementptr inbounds %struct.uvc_video_chain, ptr %244, i32 0, i32 1, i32 1
  store ptr %294, ptr %295, align 8
  store volatile ptr %292, ptr %294, align 4
  %296 = load i32, ptr @uvc_dbg_param, align 4
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %286
  %300 = load ptr, ptr %0, align 8
  %301 = getelementptr inbounds %struct.usb_device, ptr %300, i32 0, i32 15
  tail call fastcc void @uvc_print_chain(ptr noundef nonnull %244) #22
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %301, ptr noundef nonnull @.str.141, ptr noundef nonnull @uvc_print_chain.buffer) #24
  br label %303

302:                                              ; preds = %282, %268, %246
  tail call void @kfree(ptr noundef nonnull %244) #22
  br label %303

303:                                              ; preds = %302, %299, %286, %242, %238, %232, %228, %213, %209
  %304 = load volatile ptr, ptr %210, align 4
  %305 = icmp eq ptr %304, %210
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load ptr, ptr %0, align 8
  %308 = getelementptr inbounds %struct.usb_device, ptr %307, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %308, ptr noundef nonnull @.str.113) #24
  br label %319

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 24
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %319, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.uvc_entity, ptr %311, i32 0, i32 1
  %315 = getelementptr i8, ptr %304, i32 8
  %316 = getelementptr i8, ptr %304, i32 12
  %317 = load ptr, ptr %316, align 4
  store ptr %314, ptr %316, align 4
  store ptr %315, ptr %314, align 4
  %318 = getelementptr inbounds %struct.uvc_entity, ptr %311, i32 0, i32 1, i32 1
  store ptr %317, ptr %318, align 4
  store volatile ptr %314, ptr %317, align 4
  br label %319

319:                                              ; preds = %313, %309, %306, %21
  %320 = phi i32 [ -1, %306 ], [ 0, %313 ], [ 0, %309 ], [ -12, %21 ]
  ret i32 %320
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_init_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_register_chains(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 16
  br label %7

7:                                                ; preds = %71, %5
  %8 = phi ptr [ %3, %5 ], [ %72, %71 ]
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = getelementptr i8, ptr %8, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %65, label %13

13:                                               ; preds = %62, %7
  %14 = phi ptr [ %63, %62 ], [ %11, %7 ]
  %15 = getelementptr i8, ptr %14, i32 14
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 32767
  %18 = icmp eq i16 %17, 257
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 12
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  br label %23

23:                                               ; preds = %27, %19
  %24 = phi ptr [ %6, %19 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 8, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i16
  %31 = icmp eq i16 %21, %30
  br i1 %31, label %32, label %23

32:                                               ; preds = %27
  %33 = icmp eq ptr %25, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %32, %23
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.143, i32 noundef %22) #24
  br label %62

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 3
  store ptr %9, ptr %38, align 8
  %39 = tail call i32 @uvc_video_init(ptr noundef nonnull %25) #22
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.144, i32 noundef %39) #24
  br label %74

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 9
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 1
  %49 = load ptr, ptr %38, align 8
  %50 = getelementptr inbounds %struct.uvc_video_chain, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = select i1 %48, i32 8388609, i32 2
  %53 = or i32 %51, %52
  store i32 %53, ptr %50, align 4
  tail call void @uvc_debugfs_init_stream(ptr noundef nonnull %25) #22
  %54 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 2
  %55 = getelementptr inbounds %struct.uvc_streaming, ptr %25, i32 0, i32 18
  %56 = load i32, ptr %46, align 8
  %57 = tail call i32 @uvc_register_video_device(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %54, ptr noundef %55, i32 noundef %56, ptr noundef nonnull @uvc_fops, ptr noundef nonnull @uvc_ioctl_ops) #22
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %45
  %60 = tail call i32 @uvc_meta_register(ptr noundef nonnull %25) #22
  %61 = getelementptr i8, ptr %14, i32 96
  store ptr %54, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %34, %13
  %63 = load ptr, ptr %14, align 4
  %64 = icmp eq ptr %63, %10
  br i1 %64, label %65, label %13

65:                                               ; preds = %62, %7
  %66 = tail call i32 @uvc_mc_register_entities(ptr noundef %9) #22
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.142, i32 noundef %66) #24
  br label %71

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr %8, align 4
  %73 = icmp eq ptr %72, %2
  br i1 %73, label %74, label %7

74:                                               ; preds = %71, %45, %41, %1
  %75 = phi i32 [ %39, %41 ], [ 0, %1 ], [ %57, %45 ], [ 0, %71 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_gpio_init_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_entity, ptr %3, i32 0, i32 12, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %12 = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %7, ptr noundef null, ptr noundef nonnull @uvc_gpio_irq, i32 noundef 8195, ptr noundef nonnull @.str.145, ptr noundef %0) #22
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ %12, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_unregister_video(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 2, i32 17
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 21
  tail call void @video_unregister_device(ptr noundef %13) #22
  tail call void @uvc_debugfs_cleanup_stream(ptr noundef %6) #22
  br label %14

14:                                               ; preds = %11, %5
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  tail call void @uvc_status_unregister(ptr noundef %0) #22
  %18 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @v4l2_device_unregister(ptr noundef %18) #22
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 10, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.media_devnode, ptr %24, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 10
  tail call void @media_device_unregister(ptr noundef %32) #22
  br label %33

33:                                               ; preds = %31, %26, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @uvc_alloc_entity(i16 noundef zeroext %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = add i32 %3, 31
  %6 = and i32 %5, -32
  %7 = icmp ne i32 %2, 0
  %8 = ashr i16 %0, 15
  %9 = xor i16 %8, -1
  %10 = sext i16 %9 to i32
  %11 = add i32 %10, %2
  %12 = select i1 %7, i32 %11, i32 0
  %13 = shl i32 %2, 5
  %14 = add i32 %13, 356
  %15 = add i32 %14, %12
  %16 = add i32 %15, %6
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 3
  store i16 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 4
  store i16 %0, ptr %21, align 2
  switch i16 %0, label %30 [
    i16 32766, label %22
    i16 513, label %24
    i16 514, label %26
    i16 5, label %28
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef nonnull align 1 dereferenceable(16) @uvc_gpio_guid, i32 16, i1 false)
  br label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(16) @uvc_camera_guid, i32 16, i1 false)
  br label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(16) @uvc_media_transport_input_guid, i32 16, i1 false)
  br label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef nonnull align 1 dereferenceable(16) @uvc_processing_guid, i32 16, i1 false)
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %19
  %31 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 10
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 9
  store i32 %2, ptr %32, align 16
  %33 = getelementptr %struct.uvc_entity, ptr %17, i32 1
  %34 = getelementptr i8, ptr %33, i32 %6
  %35 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 11
  store ptr %34, ptr %35, align 8
  %36 = icmp eq i32 %12, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = getelementptr %struct.media_pad, ptr %34, i32 0, i32 4
  store i32 1, ptr %38, align 32
  %39 = icmp eq i32 %12, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %40, %37
  %41 = phi i32 [ %44, %40 ], [ 1, %37 ]
  %42 = load ptr, ptr %35, align 8
  %43 = getelementptr %struct.media_pad, ptr %42, i32 %41, i32 4
  store i32 1, ptr %43, align 4
  %44 = add nuw i32 %41, 1
  %45 = icmp eq i32 %44, %12
  br i1 %45, label %46, label %40

46:                                               ; preds = %40, %37
  %47 = load i16, ptr %21, align 2
  br label %48

48:                                               ; preds = %46, %30
  %49 = phi i16 [ %47, %46 ], [ %0, %30 ]
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 65280
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = and i32 %50, 32768
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %7, %55
  br i1 %56, label %58, label %62

57:                                               ; preds = %48
  br i1 %7, label %58, label %62

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr %35, align 8
  %60 = add i32 %2, -1
  %61 = getelementptr %struct.media_pad, ptr %59, i32 %60, i32 4
  store i32 2, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %57, %53
  %63 = trunc i32 %12 to i8
  %64 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 13
  store i8 %63, ptr %64, align 4
  %65 = load ptr, ptr %35, align 8
  %66 = getelementptr %struct.media_pad, ptr %65, i32 %2
  %67 = getelementptr inbounds %struct.uvc_entity, ptr %17, i32 0, i32 14
  store ptr %66, ptr %67, align 16
  br label %68

68:                                               ; preds = %62, %4
  %69 = phi ptr [ %17, %62 ], [ null, %4 ]
  ret ptr %69
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_gpio_get_cur(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, i16 noundef zeroext %4) #2 {
  %6 = icmp ne i8 %2, 17
  %7 = icmp eq i16 %4, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 12, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %11) #22
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %3, align 1
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ 0, %9 ], [ -22, %5 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uvc_gpio_get_info(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #19 {
  %5 = icmp eq i8 %2, 17
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store i8 9, ptr %3, align 1
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_print_chain(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %38, label %5

5:                                                ; preds = %33, %1
  %6 = phi ptr [ %36, %33 ], [ %3, %1 ]
  %7 = phi i32 [ %35, %33 ], [ 0, %1 ]
  %8 = phi ptr [ %34, %33 ], [ @uvc_print_chain.buffer, %1 ]
  %9 = getelementptr i8, ptr %6, i32 14
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 65280
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 32768
  %15 = icmp eq i32 %14, 0
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  store i16 44, ptr %8, align 1
  %20 = getelementptr i8, ptr %8, i32 1
  %21 = add i32 %7, 1
  %22 = icmp ugt i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  store i32 3026478, ptr %20, align 1
  %24 = getelementptr i8, ptr %8, i32 4
  br label %38

25:                                               ; preds = %19, %17
  %26 = phi i32 [ %21, %19 ], [ 1, %17 ]
  %27 = phi ptr [ %20, %19 ], [ %8, %17 ]
  %28 = getelementptr i8, ptr %6, i32 12
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.140, i32 noundef %30) #22
  %32 = getelementptr i8, ptr %27, i32 %31
  br label %33

33:                                               ; preds = %25, %5
  %34 = phi ptr [ %32, %25 ], [ %8, %5 ]
  %35 = phi i32 [ %26, %25 ], [ %7, %5 ]
  %36 = load ptr, ptr %6, align 4
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %5

38:                                               ; preds = %33, %23, %1
  %39 = phi ptr [ %24, %23 ], [ @uvc_print_chain.buffer, %1 ], [ %34, %33 ]
  %40 = ptrtoint ptr %39 to i32
  %41 = sub i32 %40, ptrtoint (ptr @uvc_print_chain.buffer to i32)
  %42 = getelementptr i8, ptr @uvc_print_chain.buffer, i32 %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %42, ptr noundef nonnull align 1 dereferenceable(5) @.str.137, i32 5, i1 false)
  %43 = load ptr, ptr %2, align 4
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %74, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %42, i32 4
  br label %47

47:                                               ; preds = %69, %45
  %48 = phi ptr [ %72, %69 ], [ %43, %45 ]
  %49 = phi i32 [ %71, %69 ], [ 0, %45 ]
  %50 = phi ptr [ %70, %69 ], [ %46, %45 ]
  %51 = getelementptr i8, ptr %48, i32 14
  %52 = load i16, ptr %51, align 2
  %53 = icmp sgt i16 %52, -1
  br i1 %53, label %69, label %54

54:                                               ; preds = %47
  %55 = icmp eq i32 %49, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  store i16 44, ptr %50, align 1
  %57 = getelementptr i8, ptr %50, i32 1
  %58 = add i32 %49, 1
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 3026478, ptr %57, align 1
  br label %74

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %58, %56 ], [ 1, %54 ]
  %63 = phi ptr [ %57, %56 ], [ %50, %54 ]
  %64 = getelementptr i8, ptr %48, i32 12
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %63, ptr noundef nonnull @.str.140, i32 noundef %66) #22
  %68 = getelementptr i8, ptr %63, i32 %67
  br label %69

69:                                               ; preds = %61, %47
  %70 = phi ptr [ %68, %61 ], [ %50, %47 ]
  %71 = phi i32 [ %62, %61 ], [ %49, %47 ]
  %72 = load ptr, ptr %48, align 4
  %73 = icmp eq ptr %72, %2
  br i1 %73, label %74, label %47

74:                                               ; preds = %69, %60, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_prio_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_chain_entity(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 32767
  switch i32 %6, label %118 [
    i32 6, label %7
    i32 5, label %31
    i32 4, label %53
    i32 512, label %79
    i32 513, label %79
    i32 514, label %79
    i32 768, label %88
    i32 769, label %88
    i32 770, label %88
    i32 257, label %97
  ]

7:                                                ; preds = %2
  %8 = load i32, ptr @uvc_dbg_param, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %14) #24
  br label %16

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 13
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %126, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr @uvc_dbg_param, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %132, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %27, ptr noundef nonnull @.str.118, i32 noundef %30) #24
  br label %132

31:                                               ; preds = %2
  %32 = load i32, ptr @uvc_dbg_param, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %38) #24
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr @uvc_dbg_param, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %132, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %51, ptr noundef nonnull @.str.120) #24
  br label %132

52:                                               ; preds = %40
  store ptr %1, ptr %41, align 4
  br label %126

53:                                               ; preds = %2
  %54 = load i32, ptr @uvc_dbg_param, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %60) #24
  br label %62

62:                                               ; preds = %57, %53
  %63 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 13
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %126, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr @uvc_dbg_param, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %132, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %77, ptr noundef nonnull @.str.122) #24
  br label %132

78:                                               ; preds = %66
  store ptr %1, ptr %67, align 4
  br label %126

79:                                               ; preds = %2, %2, %2
  %80 = load i32, ptr @uvc_dbg_param, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %126, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %86) #24
  br label %126

88:                                               ; preds = %2, %2, %2
  %89 = load i32, ptr @uvc_dbg_param, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %126, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %95) #24
  br label %126

97:                                               ; preds = %2
  %98 = and i32 %5, 65280
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %5, 32768
  %101 = icmp eq i32 %100, 0
  %102 = and i1 %99, %101
  %103 = load i32, ptr @uvc_dbg_param, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %102, label %106, label %112

106:                                              ; preds = %97
  br i1 %105, label %126, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %109 = load i16, ptr %108, align 4
  %110 = zext i16 %109 to i32
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %110) #24
  br label %126

112:                                              ; preds = %97
  br i1 %105, label %126, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %115 = load i16, ptr %114, align 4
  %116 = zext i16 %115 to i32
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %116) #24
  br label %126

118:                                              ; preds = %2
  %119 = load i32, ptr @uvc_dbg_param, align 4
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %125, ptr noundef nonnull @.str.125, i32 noundef %6) #24
  br label %132

126:                                              ; preds = %113, %112, %107, %106, %92, %88, %83, %79, %78, %62, %52, %16
  %127 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 1
  %128 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %129 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2, i32 1
  %130 = load ptr, ptr %129, align 4
  store ptr %127, ptr %129, align 4
  store ptr %128, ptr %127, align 4
  %131 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 1, i32 1
  store ptr %130, ptr %131, align 4
  store volatile ptr %127, ptr %130, align 4
  br label %132

132:                                              ; preds = %126, %122, %118, %74, %70, %48, %44, %24, %20
  %133 = phi i32 [ 0, %126 ], [ -1, %20 ], [ -1, %24 ], [ -1, %44 ], [ -1, %48 ], [ -1, %70 ], [ -1, %74 ], [ -1, %118 ], [ -1, %122 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_scan_chain_forward(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 14
  br label %9

9:                                                ; preds = %103, %3
  %10 = phi i32 [ 0, %3 ], [ %104, %103 ]
  %11 = phi ptr [ null, %3 ], [ %25, %103 ]
  %12 = load ptr, ptr %0, align 4
  %13 = load i16, ptr %4, align 4
  %14 = getelementptr inbounds %struct.uvc_device, ptr %12, i32 0, i32 14
  br label %15

15:                                               ; preds = %44, %9
  %16 = phi ptr [ %2, %44 ], [ %11, %9 ]
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr %14, ptr %16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %178, label %24

21:                                               ; preds = %33, %24
  %22 = load ptr, ptr %25, align 4
  %23 = icmp eq ptr %22, %14
  br i1 %23, label %178, label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %22, %21 ], [ %19, %15 ]
  %26 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 13
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i32 %37, 1
  %35 = icmp eq i32 %34, %28
  br i1 %35, label %21, label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ 0, %30 ], [ %34, %33 ]
  %38 = getelementptr i8, ptr %32, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i16
  %41 = icmp eq i16 %13, %40
  br i1 %41, label %42, label %33

42:                                               ; preds = %36
  %43 = icmp eq ptr %25, null
  br i1 %43, label %178, label %44

44:                                               ; preds = %42
  %45 = icmp eq ptr %25, %2
  br i1 %45, label %15, label %46

46:                                               ; preds = %44
  %47 = zext i16 %13 to i32
  %48 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51, %46
  %56 = load i32, ptr @uvc_dbg_param, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %186, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %61, ptr noundef nonnull @.str.116, i32 noundef %64) #24
  br label %186

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 4
  %67 = load i16, ptr %66, align 2
  %68 = and i16 %67, 32767
  %69 = zext i16 %68 to i32
  switch i32 %69, label %103 [
    i32 6, label %70
    i32 768, label %130
    i32 769, label %130
    i32 770, label %130
    i32 257, label %130
  ]

70:                                               ; preds = %65
  %71 = icmp eq i8 %27, 1
  br i1 %71, label %82, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr @uvc_dbg_param, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %186, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %80 = load i16, ptr %79, align 4
  %81 = zext i16 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %78, ptr noundef nonnull @.str.118, i32 noundef %81) #24
  br label %186

82:                                               ; preds = %70
  %83 = load i16, ptr %5, align 2
  %84 = icmp sgt i16 %83, -1
  br i1 %84, label %112, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %8, align 4
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i16
  br label %89

89:                                               ; preds = %93, %85
  %90 = phi ptr [ %14, %85 ], [ %91, %93 ]
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %14
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.uvc_entity, ptr %91, i32 0, i32 3
  %95 = load i16, ptr %94, align 4
  %96 = icmp eq i16 %95, %88
  br i1 %96, label %97, label %89

97:                                               ; preds = %93
  %98 = icmp eq ptr %91, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %97, %89
  %100 = load i32, ptr @uvc_dbg_param, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %173, %169, %154, %150, %125, %121, %105, %99, %65
  %104 = phi i32 [ %10, %65 ], [ %10, %154 ], [ %10, %150 ], [ 1, %125 ], [ 1, %121 ], [ 1, %173 ], [ 1, %169 ], [ %10, %105 ], [ %10, %99 ]
  br label %9

105:                                              ; preds = %99
  %106 = load ptr, ptr %12, align 8
  %107 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %109 = load i16, ptr %108, align 4
  %110 = zext i16 %109 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %107, ptr noundef nonnull @.str.126, i32 noundef %110) #24
  br label %103

111:                                              ; preds = %97
  store i8 %87, ptr %32, align 1
  br label %112

112:                                              ; preds = %111, %82
  %113 = load ptr, ptr %7, align 4
  store ptr %48, ptr %7, align 4
  store ptr %6, ptr %48, align 4
  store ptr %113, ptr %52, align 4
  store volatile ptr %48, ptr %113, align 4
  %114 = icmp eq i32 %10, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, ptr @uvc_dbg_param, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #24
  br label %121

121:                                              ; preds = %119, %115, %112
  %122 = load i32, ptr @uvc_dbg_param, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %103, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %127 = load i16, ptr %126, align 4
  %128 = zext i16 %127 to i32
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %128) #24
  br label %103

130:                                              ; preds = %65, %65, %65, %65
  %131 = zext i16 %67 to i32
  %132 = and i32 %131, 65280
  %133 = icmp ne i32 %132, 0
  %134 = and i32 %131, 32768
  %135 = icmp eq i32 %134, 0
  %136 = and i1 %133, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load i32, ptr @uvc_dbg_param, align 4
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %186, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %12, align 8
  %143 = getelementptr inbounds %struct.usb_device, ptr %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %145 = load i16, ptr %144, align 4
  %146 = zext i16 %145 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %143, ptr noundef nonnull @.str.129, i32 noundef %146) #24
  br label %186

147:                                              ; preds = %130
  %148 = load i16, ptr %5, align 2
  %149 = icmp sgt i16 %148, -1
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr @uvc_dbg_param, align 4
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %103, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %12, align 8
  %156 = getelementptr inbounds %struct.usb_device, ptr %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %156, ptr noundef nonnull @.str.130, i32 noundef %47, i32 noundef %159) #24
  br label %103

160:                                              ; preds = %147
  %161 = load ptr, ptr %7, align 4
  store ptr %48, ptr %7, align 4
  store ptr %6, ptr %48, align 4
  store ptr %161, ptr %52, align 4
  store volatile ptr %48, ptr %161, align 4
  %162 = icmp eq i32 %10, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, ptr @uvc_dbg_param, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #24
  br label %169

169:                                              ; preds = %167, %163, %160
  %170 = load i32, ptr @uvc_dbg_param, align 4
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %103, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.uvc_entity, ptr %25, i32 0, i32 3
  %175 = load i16, ptr %174, align 4
  %176 = zext i16 %175 to i32
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %176) #24
  br label %103

178:                                              ; preds = %42, %21, %15
  %179 = icmp eq i32 %10, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %178
  %181 = load i32, ptr @uvc_dbg_param, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #24
  br label %186

186:                                              ; preds = %184, %180, %178, %141, %137, %76, %72, %59, %55
  %187 = phi i32 [ -22, %59 ], [ -22, %55 ], [ -22, %76 ], [ -22, %72 ], [ -22, %141 ], [ -22, %137 ], [ 0, %180 ], [ 0, %184 ], [ 0, %178 ]
  ret i32 %187
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_mc_register_entities(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_meta_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_init_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_gpio_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 12, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %9) #22
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %3, align 1
  %12 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  call void @uvc_ctrl_status_event(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %3) #22
  br label %17

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_ctrl_status_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_cleanup_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_resume(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @uvc_dbg_param, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %10, ptr noundef nonnull @.str.148, i32 noundef %15) #24
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @uvc_ctrl_restore_values(ptr noundef %4) #22
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %29 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %29) #22
  %30 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @uvc_status_start(ptr noundef %4, i32 noundef 3072) #22
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %28, %27 ]
  tail call void @mutex_unlock(ptr noundef %29) #22
  br label %61

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.uvc_device, ptr %4, i32 0, i32 16
  br label %39

39:                                               ; preds = %43, %37
  %40 = phi ptr [ %38, %37 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %38
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.uvc_streaming, ptr %41, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %47, label %39

47:                                               ; preds = %43
  %48 = tail call i32 @uvc_video_resume(ptr noundef %41, i32 noundef %1) #22
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.uvc_streaming, ptr %41, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @uvc_queue_streamoff(ptr noundef %51, i32 noundef %52) #22
  br label %61

54:                                               ; preds = %39
  %55 = load i32, ptr @uvc_dbg_param, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %60, ptr noundef nonnull @.str.149) #24
  br label %61

61:                                               ; preds = %58, %54, %50, %47, %35, %24
  %62 = phi i32 [ %36, %35 ], [ %25, %24 ], [ %48, %50 ], [ %48, %47 ], [ -22, %58 ], [ -22, %54 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_restore_values(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_video_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_debugfs_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #21

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind willreturn }
attributes #18 = { argmemonly nofree nounwind willreturn writeonly }
attributes #19 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 332317, i64 2147833883, i64 2147833909, i64 2147833956, i64 2147833978, i64 2147834006, i64 2147834026}
!10 = !{i64 2147909042, i64 2147909074, i64 2147909103, i64 2147909137, i64 2147909168, i64 2147909191}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148009240}
!13 = !{i64 2147911399, i64 2147911431, i64 2147911460, i64 2147911494, i64 2147911525, i64 2147911548}
!14 = !{i64 2149106494}
