; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_ctrl.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subscribed_event_ops = type { ptr, ptr, ptr, ptr }
%struct.uvc_ctrl_fixup = type { %struct.usb_device_id, i8, i8, i8 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.uvc_ctrl_blacklist = type { %struct.usb_device_id, i8 }
%struct.uvc_control_info = type { %struct.list_head, [16 x i8], i8, i8, i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct.uvc_control_mapping = type { %struct.list_head, %struct.list_head, i32, ptr, [16 x i8], i8, i8, i8, i32, i32, ptr, i32, i32, i32, [2 x i32], ptr, ptr }
%struct.uvc_menu_info = type { i32, [32 x i8] }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_control = type { ptr, %struct.uvc_control_info, i8, i8, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
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
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.81, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i8, ptr, i8, ptr }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.98, i32 }>
%union.anon.98 = type { i64, [24 x i8] }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.99, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.99 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.100, i32, i32, i32, i32, i32 }
%union.anon.100 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_subscribed_event = type { %struct.list_head, i32, i32, i32, ptr, %struct.list_head, ptr, i32, i32, i32, [0 x %struct.v4l2_kevent] }
%struct.v4l2_kevent = type { %struct.list_head, ptr, %struct.v4l2_event, i64 }
%struct.uvc_fh = type { %struct.v4l2_fh, ptr, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ext_controls = type { %union.anon.101, i32, i32, i32, [1 x i32], ptr }
%union.anon.101 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.102 }>
%union.anon.102 = type { i64 }
%struct.uvc_xu_control_query = type { i8, i8, i8, i16, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@uvc_ctrl_sub_ev_ops = dso_local local_unnamed_addr constant %struct.v4l2_subscribed_event_ops { ptr @uvc_ctrl_add_event, ptr @uvc_ctrl_del_event, ptr @v4l2_ctrl_replace, ptr @v4l2_ctrl_merge }, align 4
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Extension unit %u not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Control %pUl/%u not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Can't add mapping '%s', control id 0x%08x is invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Can't add mapping '%s', control id 0x%08x already exists\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Can't add mapping '%s', maximum mappings count (%u) exceeded\0A\00", align 1
@uvc_control_classes = internal unnamed_addr constant [2 x i32] [i32 10092545, i32 9961473], align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Control 0x%08x not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"UVC non compliance - GET_RES failed on an XU control. Enabling workaround.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"Failed to initialize control %pUl/%u on device %s entity %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"GET_LEN failed on control %pUl/%u (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to get flags for control %pUl/%u (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"XU control %pUl/%u queried: len %u, flags { get %u set %u auto %u }\0A\00", align 1
@uvc_ctrl_fixup_xu_info.fixups = internal constant [3 x %struct.uvc_ctrl_fixup] [%struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }, %struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }, %struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }], align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"Added control %pUl/%u to device %s entity %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"Unknown Control\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Adding mapping '%s' to control %pUl/%u\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to resubmit status URB (%d).\0A\00", align 1
@uvc_ctrl_prune_entity.processing_blacklist = internal constant [3 x %struct.uvc_ctrl_blacklist] [%struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 5075, i16 20635, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9 }, %struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 7247, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 6 }, %struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 22918, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 2 }], align 4
@uvc_ctrl_prune_entity.camera_blacklist = internal constant [1 x %struct.uvc_ctrl_blacklist] [%struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9 }], align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"%u/%u control is black listed, removing it\0A\00", align 1
@uvc_ctrls = internal constant [36 x %struct.uvc_control_info] [%struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 0, i8 2, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 1, i8 3, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 2, i8 6, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 3, i8 7, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 4, i8 8, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 5, i8 9, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 6, i8 10, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 7, i8 12, i16 4, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 8, i8 1, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 9, i8 4, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 10, i8 5, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 11, i8 16, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 11, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 13, i8 13, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 14, i8 14, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 15, i8 15, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 16, i8 17, i16 1, i32 2 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 17, i8 18, i16 1, i32 2 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 0, i8 1, i16 1, i32 67 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 1, i8 2, i16 1, i32 115 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 2, i8 3, i16 1, i32 67 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 3, i8 4, i16 4, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 4, i8 5, i16 1, i32 65 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 5, i8 6, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 6, i8 7, i16 2, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 7, i8 9, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 8, i8 10, i16 1, i32 129 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 9, i8 11, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 10, i8 12, i16 3, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 11, i8 13, i16 8, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 12, i8 14, i16 4, i32 191 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 15, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i16 2, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 17, i8 8, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 18, i8 17, i16 1, i32 195 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", i8 0, i8 17, i16 1, i32 130 }], align 4
@uvc_ctrl_mappings = internal constant [30 x %struct.uvc_control_mapping] [%struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963776, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 2, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963777, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 3, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963779, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 6, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 9963801, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963778, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 7, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963803, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 8, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963792, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 9, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963804, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 1, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963795, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 4, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963800, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 5, i8 2, i8 0, i32 3, i32 4, ptr @power_line_frequency_controls, i32 3, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963801, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 16, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963779, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094849, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 2, i8 4, i8 0, i32 3, i32 5, ptr @exposure_auto_controls, i32 4, i32 0, i32 0, [2 x i32] [i32 10094850, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094851, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 3, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094850, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 4, i8 32, i8 0, i32 1, i32 2, ptr null, i32 0, i32 10094849, i32 1, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963788, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 11, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963802, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963802, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 10, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963788, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 13, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963791, i32 9963790], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963791, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963790, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 16, i8 16, i32 1, i32 1, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094858, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 6, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 10094860, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094860, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 8, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 10094858, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094865, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 9, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094866, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 10, i8 8, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094861, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 11, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094863, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 12, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_zoom, ptr @uvc_ctrl_set_zoom }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094856, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 32, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094857, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 32, i8 32, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094880, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_rel_speed, ptr @uvc_ctrl_set_rel_speed }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094881, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i8 16, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_rel_speed, ptr @uvc_ctrl_set_rel_speed }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094864, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 17, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094864, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", i8 17, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }], align 4
@power_line_frequency_controls = internal constant [3 x %struct.uvc_menu_info] [%struct.uvc_menu_info { i32 0, [32 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 1, [32 x i8] c"50 Hz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 2, [32 x i8] c"60 Hz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@exposure_auto_controls = internal constant [4 x %struct.uvc_menu_info] [%struct.uvc_menu_info { i32 2, [32 x i8] c"Auto Mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 1, [32 x i8] c"Manual Mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 4, [32 x i8] c"Shutter Priority Mode\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 8, [32 x i8] c"Aperture Priority Mode\00\00\00\00\00\00\00\00\00\00" }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_is_accessible(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = and i32 %1, 268435455
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i32 %1, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %11
  %14 = icmp eq i32 %5, 10092545
  br i1 %14, label %40, label %21

15:                                               ; preds = %3
  %16 = and i32 %8, 2
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %1, -1879048193
  %19 = icmp eq i32 %18, 9961473
  %20 = and i1 %19, %17
  br i1 %20, label %40, label %26

21:                                               ; preds = %13
  %22 = and i32 %8, 2
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %5, 9961473
  %25 = and i1 %24, %23
  br i1 %25, label %40, label %26

26:                                               ; preds = %21, %15, %11
  %27 = call fastcc ptr @uvc_find_control(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uvc_control, ptr %27, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %33, %2
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = and i32 %31, 1
  %37 = icmp ne i32 %36, 0
  %38 = or i1 %37, %2
  %39 = select i1 %38, i32 0, i32 -13
  br label %40

40:                                               ; preds = %35, %29, %26, %21, %15, %13
  %41 = phi i32 [ -22, %26 ], [ -13, %29 ], [ %39, %35 ], [ -13, %13 ], [ -13, %21 ], [ -13, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @uvc_find_control(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  store ptr null, ptr %2, align 4
  %4 = and i32 %1, 268435455
  %5 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %6 = icmp slt i32 %1, 0
  br label %7

7:                                                ; preds = %72, %3
  %8 = phi ptr [ null, %3 ], [ %73, %72 ]
  %9 = phi ptr [ null, %3 ], [ %74, %72 ]
  %10 = phi ptr [ %5, %3 ], [ %11, %72 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %77, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %11, i32 -8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 340
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %11, i32 344
  br label %22

22:                                               ; preds = %66, %20
  %23 = phi ptr [ %8, %20 ], [ %67, %66 ]
  %24 = phi ptr [ %9, %20 ], [ %68, %66 ]
  %25 = phi i32 [ %18, %20 ], [ %69, %66 ]
  %26 = phi i32 [ 0, %20 ], [ %70, %66 ]
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr %struct.uvc_control, ptr %27, i32 %26
  %29 = getelementptr %struct.uvc_control, ptr %27, i32 %26, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %22
  %34 = getelementptr %struct.uvc_control, ptr %27, i32 %26, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %66, label %37

37:                                               ; preds = %59, %33
  %38 = phi ptr [ %60, %59 ], [ %23, %33 ]
  %39 = phi ptr [ %61, %59 ], [ %24, %33 ]
  %40 = phi ptr [ %62, %59 ], [ %35, %33 ]
  %41 = getelementptr inbounds %struct.uvc_control_mapping, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, %4
  %44 = or i1 %6, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store ptr %40, ptr %2, align 4
  br label %72

46:                                               ; preds = %37
  %47 = icmp eq ptr %38, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.uvc_control_mapping, ptr %38, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %42
  %52 = icmp ugt i32 %42, %4
  %53 = and i1 %6, %52
  %54 = and i1 %53, %51
  br i1 %54, label %58, label %59

55:                                               ; preds = %46
  %56 = icmp ugt i32 %42, %4
  %57 = and i1 %6, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %48
  store ptr %40, ptr %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %48
  %60 = phi ptr [ %40, %58 ], [ null, %55 ], [ %38, %48 ]
  %61 = phi ptr [ %28, %58 ], [ %39, %55 ], [ %39, %48 ]
  %62 = load ptr, ptr %40, align 4
  %63 = icmp eq ptr %62, %34
  br i1 %63, label %64, label %37

64:                                               ; preds = %59
  %65 = load i32, ptr %17, align 4
  br label %66

66:                                               ; preds = %64, %33, %22
  %67 = phi ptr [ %23, %22 ], [ %23, %33 ], [ %60, %64 ]
  %68 = phi ptr [ %24, %22 ], [ %24, %33 ], [ %61, %64 ]
  %69 = phi i32 [ %25, %22 ], [ %25, %33 ], [ %65, %64 ]
  %70 = add nuw i32 %26, 1
  %71 = icmp ult i32 %70, %69
  br i1 %71, label %22, label %72

72:                                               ; preds = %66, %45, %16, %13
  %73 = phi ptr [ %8, %13 ], [ %8, %16 ], [ %40, %45 ], [ %67, %66 ]
  %74 = phi ptr [ %9, %13 ], [ %9, %16 ], [ %28, %45 ], [ %68, %66 ]
  %75 = icmp eq ptr %74, null
  %76 = or i1 %6, %75
  br i1 %76, label %7, label %88

77:                                               ; preds = %7
  %78 = icmp ne ptr %9, null
  %79 = or i1 %6, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr @uvc_dbg_param, align 4
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %0, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %87, ptr noundef nonnull @.str.6, i32 noundef %4) #17
  br label %88

88:                                               ; preds = %84, %80, %77, %72
  %89 = phi ptr [ null, %80 ], [ null, %84 ], [ %9, %77 ], [ %74, %72 ]
  ret ptr %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_query_v4l2_ctrl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #16
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %81, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = and i32 %8, 268435455
  %12 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %11, 10092545
  br i1 %18, label %29, label %24

19:                                               ; preds = %10
  %20 = and i32 %14, 2
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %11, 9961473
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %29, label %38

24:                                               ; preds = %17
  %25 = and i32 %14, 2
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq i32 %11, 9961473
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %19, %17
  %30 = phi i32 [ 1, %24 ], [ 0, %17 ], [ 1, %19 ]
  %31 = getelementptr inbounds i8, ptr %1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %31, i8 0, i32 64, i1 false) #16
  %32 = getelementptr [2 x i32], ptr @uvc_control_classes, i32 0, i32 %30
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %1, align 4
  %34 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %1, i32 0, i32 2
  %35 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %33) #16
  %36 = tail call i32 @strscpy(ptr noundef %34, ptr noundef %35, i32 noundef 32) #16
  store i32 6, ptr %31, align 4
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %1, i32 0, i32 7
  store i32 68, ptr %37, align 4
  br label %79

38:                                               ; preds = %24, %19, %7
  %39 = call fastcc ptr @uvc_find_control(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %1, align 4
  %43 = icmp sgt i32 %42, -1
  %44 = load ptr, ptr %3, align 4
  br i1 %43, label %77, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.uvc_control_mapping, ptr %44, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %42, 268435455
  %49 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 8
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = icmp ult i32 %48, 10092545
  %56 = icmp ugt i32 %47, 10092545
  %57 = and i1 %55, %56
  br i1 %57, label %68, label %61

58:                                               ; preds = %45
  %59 = and i32 %51, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %77, label %64

61:                                               ; preds = %54
  %62 = and i32 %51, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61, %58
  %65 = icmp ult i32 %48, 9961473
  %66 = icmp ugt i32 %47, 9961473
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64, %54
  %69 = phi i32 [ 1, %64 ], [ 0, %54 ]
  %70 = getelementptr inbounds i8, ptr %1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %70, i8 0, i32 64, i1 false) #16
  %71 = getelementptr [2 x i32], ptr @uvc_control_classes, i32 0, i32 %69
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %1, align 4
  %73 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %1, i32 0, i32 2
  %74 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %72) #16
  %75 = tail call i32 @strscpy(ptr noundef %73, ptr noundef %74, i32 noundef 32) #16
  store i32 6, ptr %70, align 4
  %76 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %1, i32 0, i32 7
  store i32 68, ptr %76, align 4
  br label %79

77:                                               ; preds = %64, %61, %58, %41
  %78 = tail call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %44, ptr noundef %1)
  br label %79

79:                                               ; preds = %77, %68, %38, %29
  %80 = phi i32 [ %78, %77 ], [ 0, %68 ], [ 0, %29 ], [ -22, %38 ]
  tail call void @mutex_unlock(ptr noundef %4) #16
  br label %81

81:                                               ; preds = %79, %2
  %82 = phi i32 [ %80, %79 ], [ -512, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_query_v4l2_ctrl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false)
  %6 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, ptr %6, align 4
  %17 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %16) #16
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.15, ptr %17
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi ptr [ %13, %4 ], [ %19, %15 ]
  %22 = tail call i32 @strscpy(ptr noundef %11, ptr noundef %21, i32 noundef 32) #16
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 7
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 5
  %27 = and i32 %26, 64
  %28 = xor i32 %27, 64
  store i32 %28, ptr %23, align 4
  %29 = load i32, ptr %24, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = or i32 %28, 4
  store i32 %33, ptr %23, align 4
  br label %34

34:                                               ; preds = %32, %20
  %35 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %89, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %1, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %89, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.uvc_entity, ptr %39, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.uvc_entity, ptr %39, i32 0, i32 18
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %66, %45
  %49 = phi i32 [ 0, %45 ], [ %67, %66 ]
  %50 = getelementptr %struct.uvc_control, ptr %47, i32 %49, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = getelementptr %struct.uvc_control, ptr %47, i32 %49, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %66, label %58

58:                                               ; preds = %63, %54
  %59 = phi ptr [ %64, %63 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.uvc_control_mapping, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %36
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %59, align 4
  %65 = icmp eq ptr %64, %55
  br i1 %65, label %66, label %58

66:                                               ; preds = %63, %54, %48
  %67 = add nuw i32 %49, 1
  %68 = icmp eq i32 %67, %43
  br i1 %68, label %89, label %48

69:                                               ; preds = %58
  %70 = getelementptr %struct.uvc_control, ptr %47, i32 %49
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %69
  %73 = getelementptr %struct.uvc_control, ptr %47, i32 %49, i32 1, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %78 = call fastcc i32 @__uvc_ctrl_get(ptr noundef %0, ptr noundef nonnull %70, ptr noundef %59, ptr noundef nonnull %5)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %197, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %5, align 4
  %82 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 13
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %23, align 4
  %87 = or i32 %86, 16
  store i32 %87, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %89

88:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %89

89:                                               ; preds = %88, %85, %72, %69, %66, %41, %38, %34
  %90 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %0, ptr noundef %1)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %198, label %97

97:                                               ; preds = %94, %89
  %98 = load i32, ptr %24, align 4
  %99 = and i32 %98, 32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 15
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = mul nuw nsw i32 %108, 5
  %110 = getelementptr i8, ptr %105, i32 %109
  %111 = tail call i32 %103(ptr noundef %2, i8 noundef zeroext -121, ptr noundef %110) #16
  %112 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 6
  store i32 %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %101, %97
  %114 = load i32, ptr %8, align 4
  switch i32 %114, label %147 [
    i32 3, label %115
    i32 2, label %139
    i32 4, label %143
  ]

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 3
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 11
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, -1
  %120 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 4
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 5
  store i32 1, ptr %121, align 4
  %122 = load i32, ptr %117, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %198, label %124

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 10
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 6
  %128 = load i32, ptr %127, align 4
  br label %129

129:                                              ; preds = %135, %124
  %130 = phi i32 [ 0, %124 ], [ %136, %135 ]
  %131 = phi ptr [ %126, %124 ], [ %137, %135 ]
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, %128
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 %130, ptr %127, align 4
  br label %198

135:                                              ; preds = %129
  %136 = add nuw i32 %130, 1
  %137 = getelementptr %struct.uvc_menu_info, ptr %131, i32 1
  %138 = icmp eq i32 %136, %122
  br i1 %138, label %198, label %129

139:                                              ; preds = %113
  %140 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 3
  store i32 0, ptr %140, align 4
  %141 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 4
  store i32 1, ptr %141, align 4
  %142 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 5
  store i32 1, ptr %142, align 4
  br label %198

143:                                              ; preds = %113
  %144 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 3
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 4
  store i32 0, ptr %145, align 4
  %146 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 5
  store i32 0, ptr %146, align 4
  br label %198

147:                                              ; preds = %113
  %148 = load i32, ptr %24, align 4
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 15
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  %159 = shl nuw nsw i32 %158, 1
  %160 = getelementptr i8, ptr %155, i32 %159
  %161 = tail call i32 %153(ptr noundef %2, i8 noundef zeroext -126, ptr noundef %160) #16
  %162 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 3
  store i32 %161, ptr %162, align 4
  %163 = load i32, ptr %24, align 4
  br label %164

164:                                              ; preds = %151, %147
  %165 = phi i32 [ %163, %151 ], [ %148, %147 ]
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 15
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %174 = load i16, ptr %173, align 2
  %175 = zext i16 %174 to i32
  %176 = mul nuw nsw i32 %175, 3
  %177 = getelementptr i8, ptr %172, i32 %176
  %178 = tail call i32 %170(ptr noundef %2, i8 noundef zeroext -125, ptr noundef %177) #16
  %179 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 4
  store i32 %178, ptr %179, align 4
  %180 = load i32, ptr %24, align 4
  br label %181

181:                                              ; preds = %168, %164
  %182 = phi i32 [ %180, %168 ], [ %165, %164 ]
  %183 = and i32 %182, 16
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 15
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %191 = load i16, ptr %190, align 2
  %192 = zext i16 %191 to i32
  %193 = shl nuw nsw i32 %192, 2
  %194 = getelementptr i8, ptr %189, i32 %193
  %195 = tail call i32 %187(ptr noundef %2, i8 noundef zeroext -124, ptr noundef %194) #16
  %196 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 5
  store i32 %195, ptr %196, align 4
  br label %198

197:                                              ; preds = %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %198

198:                                              ; preds = %197, %185, %181, %143, %139, %135, %134, %115, %94
  %199 = phi i32 [ 0, %143 ], [ 0, %139 ], [ %95, %94 ], [ %78, %197 ], [ 0, %134 ], [ 0, %185 ], [ 0, %181 ], [ 0, %115 ], [ 0, %135 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_query_v4l2_menu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.v4l2_querymenu, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 1
  %6 = load i32, ptr %1, align 1
  %7 = getelementptr inbounds i8, ptr %1, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(44) %7, i8 0, i32 36, i1 false)
  store i32 %6, ptr %1, align 1
  store i32 %5, ptr %4, align 1
  %8 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %1, align 1
  %13 = call fastcc ptr @uvc_find_control(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %65, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.uvc_control_mapping, ptr %16, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %65

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 1
  %22 = getelementptr inbounds %struct.uvc_control_mapping, ptr %16, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.uvc_control_mapping, ptr %16, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.uvc_menu_info, ptr %27, i32 %21
  %29 = getelementptr inbounds %struct.uvc_control_mapping, ptr %16, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.uvc_control, ptr %13, i32 0, i32 1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uvc_control, ptr %13, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %0, ptr noundef nonnull %13)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %9, %37 ], [ 0, %42 ]
  %47 = getelementptr inbounds %struct.uvc_control_mapping, ptr %16, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.uvc_control, ptr %13, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.uvc_control, ptr %13, i32 0, i32 1, i32 4
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 2
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = tail call i32 %48(ptr noundef %16, i8 noundef zeroext -124, ptr noundef %55) #16
  %57 = load i32, ptr %28, align 4
  %58 = and i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %45, %32, %25
  %61 = phi i32 [ %9, %32 ], [ %9, %25 ], [ %46, %45 ]
  %62 = getelementptr inbounds %struct.v4l2_querymenu, ptr %1, i32 0, i32 2
  %63 = getelementptr %struct.uvc_menu_info, ptr %27, i32 %21, i32 1
  %64 = tail call i32 @strscpy(ptr noundef %62, ptr noundef %63, i32 noundef 32) #16
  br label %65

65:                                               ; preds = %60, %45, %42, %20, %15, %11
  %66 = phi i32 [ %61, %60 ], [ -22, %15 ], [ -22, %11 ], [ -22, %20 ], [ %43, %42 ], [ -22, %45 ]
  tail call void @mutex_unlock(ptr noundef %8) #16
  br label %67

67:                                               ; preds = %65, %2
  %68 = phi i32 [ %66, %65 ], [ -512, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_populate_cache(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.uvc_entity, ptr %9, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = trunc i16 %11 to i8
  %13 = getelementptr inbounds %struct.uvc_device, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = mul nuw nsw i32 %22, 5
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = tail call i32 @uvc_query_ctrl(ptr noundef %8, i8 noundef zeroext -121, i8 noundef zeroext %12, i8 noundef zeroext %15, i8 noundef zeroext %17, ptr noundef %24, i16 noundef zeroext %21) #16
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %130, label %27

27:                                               ; preds = %7
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %28, %27 ], [ %4, %2 ]
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.uvc_entity, ptr %35, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = trunc i16 %37 to i8
  %39 = getelementptr inbounds %struct.uvc_device, ptr %34, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl nuw nsw i32 %48, 1
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = tail call i32 @uvc_query_ctrl(ptr noundef %34, i8 noundef zeroext -126, i8 noundef zeroext %38, i8 noundef zeroext %41, i8 noundef zeroext %43, ptr noundef %50, i16 noundef zeroext %47) #16
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %130, label %53

53:                                               ; preds = %33
  %54 = load i32, ptr %3, align 4
  br label %55

55:                                               ; preds = %53, %29
  %56 = phi i32 [ %54, %53 ], [ %30, %29 ]
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %0, align 4
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.uvc_entity, ptr %61, i32 0, i32 3
  %63 = load i16, ptr %62, align 4
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds %struct.uvc_device, ptr %60, i32 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = mul nuw nsw i32 %74, 3
  %76 = getelementptr i8, ptr %71, i32 %75
  %77 = tail call i32 @uvc_query_ctrl(ptr noundef %60, i8 noundef zeroext -125, i8 noundef zeroext %64, i8 noundef zeroext %67, i8 noundef zeroext %69, ptr noundef %76, i16 noundef zeroext %73) #16
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %130, label %79

79:                                               ; preds = %59
  %80 = load i32, ptr %3, align 4
  br label %81

81:                                               ; preds = %79, %55
  %82 = phi i32 [ %80, %79 ], [ %56, %55 ]
  %83 = and i32 %82, 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %0, align 4
  %87 = load ptr, ptr %1, align 4
  %88 = getelementptr inbounds %struct.uvc_entity, ptr %87, i32 0, i32 3
  %89 = load i16, ptr %88, align 4
  %90 = trunc i16 %89 to i8
  %91 = getelementptr inbounds %struct.uvc_device, ptr %86, i32 0, i32 4
  %92 = load i32, ptr %91, align 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 2
  %102 = getelementptr i8, ptr %97, i32 %101
  %103 = tail call i32 @uvc_query_ctrl(ptr noundef %86, i8 noundef zeroext -124, i8 noundef zeroext %90, i8 noundef zeroext %93, i8 noundef zeroext %95, ptr noundef %102, i16 noundef zeroext %99) #16
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %85
  %106 = load ptr, ptr %1, align 4
  %107 = getelementptr inbounds %struct.uvc_entity, ptr %106, i32 0, i32 4
  %108 = load i16, ptr %107, align 2
  %109 = and i16 %108, 32767
  %110 = icmp eq i16 %109, 6
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load ptr, ptr %0, align 4
  %113 = getelementptr inbounds %struct.uvc_device, ptr %112, i32 0, i32 2
  %114 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %113) #16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load ptr, ptr %0, align 4
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.7) #17
  br label %120

120:                                              ; preds = %116, %111
  %121 = load ptr, ptr %96, align 4
  %122 = load i16, ptr %98, align 2
  %123 = zext i16 %122 to i32
  %124 = shl nuw nsw i32 %123, 2
  %125 = getelementptr i8, ptr %121, i32 %124
  tail call void @llvm.memset.p0.i32(ptr align 1 %125, i8 0, i32 %123, i1 false)
  br label %126

126:                                              ; preds = %120, %85, %81
  %127 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = or i8 %128, 8
  store i8 %129, ptr %127, align 1
  br label %130

130:                                              ; preds = %126, %105, %59, %33, %7
  %131 = phi i32 [ 0, %126 ], [ %25, %7 ], [ %51, %33 ], [ %77, %59 ], [ %103, %105 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_ctrl_status_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.v4l2_queryctrl, align 4
  %5 = alloca %struct.v4l2_event, align 8
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  store ptr null, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %94, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 5
  %14 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 7
  %19 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 3
  %21 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 4
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 4
  %23 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 5
  %24 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 5
  %25 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 6
  %26 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 6
  %27 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 7
  br label %28

28:                                               ; preds = %91, %12
  %29 = phi ptr [ %10, %12 ], [ %92, %91 ]
  %30 = getelementptr inbounds %struct.uvc_control_mapping, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %29, i8 noundef zeroext -127, ptr noundef %2) #16
  %33 = getelementptr inbounds %struct.uvc_control_mapping, ptr %29, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.uvc_control_mapping, ptr %29, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uvc_control_mapping, ptr %29, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %48, %40
  %44 = phi i32 [ %49, %48 ], [ 0, %40 ]
  %45 = phi ptr [ %50, %48 ], [ %42, %40 ]
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %32
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = add nuw i32 %44, 1
  %50 = getelementptr %struct.uvc_menu_info, ptr %45, i32 1
  %51 = icmp eq i32 %49, %38
  br i1 %51, label %52, label %43

52:                                               ; preds = %48, %43, %36, %28
  %53 = phi i32 [ %32, %28 ], [ %32, %36 ], [ %32, %48 ], [ %44, %43 ]
  %54 = getelementptr %struct.uvc_control_mapping, ptr %29, i32 0, i32 14, i32 0
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %0, ptr noundef %8, ptr noundef %1, i32 noundef %55)
  %58 = getelementptr %struct.uvc_control_mapping, ptr %29, i32 0, i32 14, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %0, ptr noundef %8, ptr noundef %1, i32 noundef %59)
  br label %62

62:                                               ; preds = %61, %57, %52
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #16
  %63 = getelementptr inbounds %struct.uvc_control_mapping, ptr %29, i32 0, i32 1
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %91, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #16, !annotation !8
  %67 = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %0, ptr noundef %1, ptr noundef %29, ptr noundef nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %5, align 8
  %68 = load i32, ptr %4, align 4
  store i32 %68, ptr %13, align 8
  store i32 %53, ptr %15, align 8
  store i32 1, ptr %14, align 8
  %69 = load i32, ptr %16, align 4
  store i32 %69, ptr %17, align 4
  %70 = load i32, ptr %18, align 4
  store i32 %70, ptr %19, align 8
  %71 = load i32, ptr %20, align 4
  store i32 %71, ptr %21, align 4
  %72 = load i32, ptr %22, align 4
  store i32 %72, ptr %23, align 8
  %73 = load i32, ptr %24, align 4
  store i32 %73, ptr %25, align 4
  %74 = load i32, ptr %26, align 4
  store i32 %74, ptr %27, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #16
  %75 = load ptr, ptr %63, align 4
  %76 = icmp eq ptr %75, %63
  br i1 %76, label %91, label %77

77:                                               ; preds = %88, %66
  %78 = phi ptr [ %89, %88 ], [ %75, %66 ]
  %79 = getelementptr i8, ptr %78, i32 -4
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %8
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %78, i32 -8
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %77
  call void @v4l2_event_queue_fh(ptr noundef %80, ptr noundef nonnull %5) #16
  br label %88

88:                                               ; preds = %87, %82
  %89 = load ptr, ptr %78, align 4
  %90 = icmp eq ptr %89, %63
  br i1 %90, label %91, label %77

91:                                               ; preds = %88, %66, %62
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #16
  %92 = load ptr, ptr %29, align 4
  %93 = icmp eq ptr %92, %9
  br i1 %93, label %94, label %28

94:                                               ; preds = %91, %3
  call void @mutex_unlock(ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_ctrl_send_slave_event(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.v4l2_queryctrl, align 4
  %6 = alloca %struct.v4l2_event, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.uvc_entity, ptr %8, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uvc_entity, ptr %8, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %35, %14
  %18 = phi i32 [ 0, %14 ], [ %36, %35 ]
  %19 = getelementptr %struct.uvc_control, ptr %16, i32 %18, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.uvc_control, ptr %16, i32 %18, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %35, label %27

27:                                               ; preds = %32, %23
  %28 = phi ptr [ %33, %32 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.uvc_control_mapping, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, %24
  br i1 %34, label %35, label %27

35:                                               ; preds = %32, %23, %17
  %36 = add nuw i32 %18, 1
  %37 = icmp eq i32 %36, %12
  br i1 %37, label %82, label %17

38:                                               ; preds = %27
  %39 = getelementptr %struct.uvc_control, ptr %16, i32 %18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %41

41:                                               ; preds = %38
  %42 = call fastcc i32 @__uvc_ctrl_get(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %28, ptr noundef nonnull %7)
  %43 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #16
  %44 = getelementptr inbounds %struct.uvc_control_mapping, ptr %28, i32 0, i32 1
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %81, label %47

47:                                               ; preds = %41
  %48 = icmp eq i32 %42, 0
  %49 = select i1 %48, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #16, !annotation !8
  %50 = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %28, ptr noundef nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %6, align 8
  %51 = load i32, ptr %5, align 4
  %52 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 5
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 2
  store i32 %43, ptr %54, align 8
  store i32 %49, ptr %53, align 8
  %55 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 3
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 5
  store i32 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 6
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %5, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.v4l2_event, ptr %6, i32 0, i32 1, i32 0, i32 7
  store i32 %71, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #16
  %73 = load ptr, ptr %44, align 4
  %74 = icmp eq ptr %73, %44
  br i1 %74, label %81, label %75

75:                                               ; preds = %75, %47
  %76 = phi ptr [ %79, %75 ], [ %73, %47 ]
  %77 = getelementptr i8, ptr %76, i32 -4
  %78 = load ptr, ptr %77, align 4
  call void @v4l2_event_queue_fh(ptr noundef %78, ptr noundef nonnull %6) #16
  %79 = load ptr, ptr %76, align 4
  %80 = icmp eq ptr %79, %44
  br i1 %80, label %81, label %75

81:                                               ; preds = %75, %47, %41
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #16
  br label %82

82:                                               ; preds = %81, %38, %35, %10, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @uvc_ctrl_status_event_async(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.uvc_control, ptr %2, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uvc_control, ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 4
  br label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 23
  %13 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 23, i32 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 23, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 23, i32 2
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 23, i32 3
  store ptr %2, ptr %16, align 4
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %12) #16
  br label %19

19:                                               ; preds = %11, %9
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ctrl_add_event(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.v4l2_queryctrl, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.v4l2_event, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.uvc_fh, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uvc_video_chain, ptr %10, i32 0, i32 5
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %89, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, -1
  %19 = and i32 %17, 268435455
  %20 = getelementptr inbounds %struct.uvc_video_chain, ptr %15, i32 0, i32 8
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  br i1 %18, label %26, label %39

26:                                               ; preds = %25
  %27 = icmp eq i32 %19, 10092545
  br i1 %27, label %85, label %34

28:                                               ; preds = %14
  %29 = and i32 %22, 2
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %30, i1 %18, i1 false
  %32 = icmp eq i32 %19, 9961473
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %85, label %39

34:                                               ; preds = %26
  %35 = and i32 %22, 2
  %36 = icmp ne i32 %35, 0
  %37 = icmp eq i32 %19, 9961473
  %38 = and i1 %37, %36
  br i1 %38, label %85, label %39

39:                                               ; preds = %34, %28, %25
  %40 = call fastcc ptr @uvc_find_control(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %4)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.uvc_control_mapping, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.uvc_control_mapping, ptr %44, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %43, ptr %46, align 4
  store ptr %45, ptr %43, align 4
  %48 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 5, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %43, ptr %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 3
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4
  %54 = load ptr, ptr %9, align 4
  %55 = call fastcc i32 @__uvc_ctrl_get(ptr noundef %54, ptr noundef nonnull %40, ptr noundef %44, ptr noundef nonnull %6)
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 3, i32 2
  %58 = load ptr, ptr %9, align 4
  %59 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #16, !annotation !8
  %60 = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %58, ptr noundef nonnull %40, ptr noundef %44, ptr noundef nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %5, align 8
  %61 = load i32, ptr %3, align 4
  %62 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 5
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1
  %64 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i32 %59, ptr %64, align 8
  store i32 %57, ptr %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 3
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 4
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 5
  store i32 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 6
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %3, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 7
  store i32 %81, ptr %82, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #16
  %83 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 7
  store i32 %1, ptr %83, align 4
  %84 = load ptr, ptr %7, align 4
  call void @v4l2_event_queue_fh(ptr noundef %84, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #16
  br label %85

85:                                               ; preds = %53, %42, %39, %34, %28, %26
  %86 = phi i32 [ %12, %53 ], [ %12, %42 ], [ -22, %39 ], [ 0, %26 ], [ 0, %34 ], [ 0, %28 ]
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr inbounds %struct.uvc_video_chain, ptr %87, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %88) #16
  br label %89

89:                                               ; preds = %85, %2
  %90 = phi i32 [ %86, %85 ], [ -512, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_ctrl_del_event(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  %11 = and i32 %9, 268435455
  %12 = getelementptr inbounds %struct.uvc_video_chain, ptr %7, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  br i1 %10, label %18, label %31

18:                                               ; preds = %17
  %19 = icmp eq i32 %11, 10092545
  br i1 %19, label %38, label %26

20:                                               ; preds = %1
  %21 = and i32 %14, 2
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %22, i1 %10, i1 false
  %24 = icmp eq i32 %11, 9961473
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %38, label %31

26:                                               ; preds = %18
  %27 = and i32 %14, 2
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i32 %11, 9961473
  %30 = and i1 %29, %28
  br i1 %30, label %38, label %31

31:                                               ; preds = %26, %20, %17
  %32 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 5
  %33 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %0, i32 0, i32 5, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %37 = load ptr, ptr %4, align 4
  br label %38

38:                                               ; preds = %31, %26, %20, %18
  %39 = phi ptr [ %7, %20 ], [ %7, %26 ], [ %7, %18 ], [ %37, %31 ]
  %40 = getelementptr inbounds %struct.uvc_video_chain, ptr %39, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %40) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_replace(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_merge(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_begin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 -512
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__uvc_ctrl_commit(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.v4l2_queryctrl, align 4
  %5 = alloca %struct.v4l2_event, align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.uvc_video_chain, ptr %9, i32 0, i32 2
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -8
  %17 = load ptr, ptr %9, align 4
  %18 = call fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %17, ptr noundef %16, i32 noundef %1, ptr noundef nonnull %7)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %153, label %11

20:                                               ; preds = %11
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %22, label %208

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %152, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 5
  %30 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 2
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 1
  %33 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 7
  %35 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 3
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 3
  %37 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 4
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 4
  %39 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 5
  %40 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 5
  %41 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 6
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 6
  %43 = getelementptr inbounds %struct.v4l2_event, ptr %5, i32 0, i32 1, i32 0, i32 7
  br label %44

44:                                               ; preds = %148, %28
  %45 = phi i32 [ 0, %28 ], [ %150, %148 ]
  %46 = phi i32 [ 1, %28 ], [ %149, %148 ]
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr %struct.v4l2_ext_control, ptr %24, i32 %45
  %49 = load i32, ptr %48, align 1
  %50 = call fastcc ptr @uvc_find_control(ptr noundef %47, i32 noundef %49, ptr noundef nonnull %6) #16
  %51 = getelementptr inbounds %struct.uvc_control, ptr %50, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %148

55:                                               ; preds = %44
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr %struct.uvc_control_mapping, ptr %56, i32 0, i32 14, i32 0
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %24, align 1
  %62 = icmp eq i32 %61, %58
  br i1 %62, label %75, label %63

63:                                               ; preds = %67, %60
  %64 = phi i32 [ %65, %67 ], [ 0, %60 ]
  %65 = add nuw i32 %64, 1
  %66 = icmp eq i32 %65, %26
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.v4l2_ext_control, ptr %24, i32 %65
  %69 = load i32, ptr %68, align 1
  %70 = icmp eq i32 %69, %58
  br i1 %70, label %71, label %63

71:                                               ; preds = %67
  %72 = icmp ult i32 %65, %26
  br i1 %72, label %75, label %73

73:                                               ; preds = %71, %63
  %74 = load ptr, ptr %8, align 4
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %74, ptr noundef %0, ptr noundef %50, i32 noundef %58) #16
  br label %75

75:                                               ; preds = %73, %71, %60
  %76 = getelementptr %struct.uvc_control_mapping, ptr %56, i32 0, i32 14, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %24, align 1
  %81 = icmp eq i32 %80, %77
  br i1 %81, label %94, label %82

82:                                               ; preds = %86, %79
  %83 = phi i32 [ %84, %86 ], [ 0, %79 ]
  %84 = add nuw i32 %83, 1
  %85 = icmp eq i32 %84, %26
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.v4l2_ext_control, ptr %24, i32 %84
  %88 = load i32, ptr %87, align 1
  %89 = icmp eq i32 %88, %77
  br i1 %89, label %90, label %82

90:                                               ; preds = %86
  %91 = icmp ult i32 %84, %26
  br i1 %91, label %94, label %92

92:                                               ; preds = %90, %82
  %93 = load ptr, ptr %8, align 4
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %93, ptr noundef %0, ptr noundef %50, i32 noundef %77) #16
  br label %94

94:                                               ; preds = %92, %90, %79, %75, %55
  %95 = getelementptr inbounds %struct.uvc_control_mapping, ptr %56, i32 0, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %24, align 1
  %100 = icmp eq i32 %99, %96
  br i1 %100, label %111, label %101

101:                                              ; preds = %105, %98
  %102 = phi i32 [ %103, %105 ], [ 0, %98 ]
  %103 = add nuw i32 %102, 1
  %104 = icmp eq i32 %103, %26
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.v4l2_ext_control, ptr %24, i32 %103
  %107 = load i32, ptr %106, align 1
  %108 = icmp eq i32 %107, %96
  br i1 %108, label %109, label %101

109:                                              ; preds = %105
  %110 = icmp ult i32 %103, %26
  br i1 %110, label %111, label %113

111:                                              ; preds = %109, %98
  %112 = or i32 %46, 2
  br label %113

113:                                              ; preds = %111, %109, %101, %94
  %114 = phi i32 [ %46, %94 ], [ %112, %111 ], [ %46, %109 ], [ %46, %101 ]
  %115 = load ptr, ptr %8, align 4
  %116 = getelementptr %struct.v4l2_ext_control, ptr %24, i32 %45, i32 3
  %117 = load i32, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #16
  %118 = getelementptr inbounds %struct.uvc_control_mapping, ptr %56, i32 0, i32 1
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %147, label %121

121:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #16, !annotation !8
  %122 = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %115, ptr noundef %50, ptr noundef %56, ptr noundef nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %5, align 8
  %123 = load i32, ptr %4, align 4
  store i32 %123, ptr %29, align 8
  store i32 %117, ptr %31, align 8
  store i32 %114, ptr %30, align 8
  %124 = load i32, ptr %32, align 4
  store i32 %124, ptr %33, align 4
  %125 = load i32, ptr %34, align 4
  store i32 %125, ptr %35, align 8
  %126 = load i32, ptr %36, align 4
  store i32 %126, ptr %37, align 4
  %127 = load i32, ptr %38, align 4
  store i32 %127, ptr %39, align 8
  %128 = load i32, ptr %40, align 4
  store i32 %128, ptr %41, align 4
  %129 = load i32, ptr %42, align 4
  store i32 %129, ptr %43, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #16
  %130 = load ptr, ptr %118, align 4
  %131 = icmp eq ptr %130, %118
  br i1 %131, label %147, label %132

132:                                              ; preds = %144, %121
  %133 = phi ptr [ %145, %144 ], [ %130, %121 ]
  %134 = getelementptr i8, ptr %133, i32 -4
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = getelementptr i8, ptr %133, i32 -8
  %139 = load i32, ptr %138, align 8
  %140 = or i32 %139, %114
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137, %132
  call void @v4l2_event_queue_fh(ptr noundef %135, ptr noundef nonnull %5) #16
  br label %144

144:                                              ; preds = %143, %137
  %145 = load ptr, ptr %133, align 4
  %146 = icmp eq ptr %145, %118
  br i1 %146, label %147, label %132

147:                                              ; preds = %144, %121, %113
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #16
  br label %148

148:                                              ; preds = %147, %44
  %149 = phi i32 [ %46, %44 ], [ %114, %147 ]
  %150 = add nuw i32 %45, 1
  %151 = icmp eq i32 %150, %26
  br i1 %151, label %152, label %44

152:                                              ; preds = %148, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %208

153:                                              ; preds = %15
  %154 = icmp eq ptr %2, null
  br i1 %154, label %208, label %155

155:                                              ; preds = %153
  %156 = load ptr, ptr %7, align 4
  %157 = icmp eq ptr %16, null
  %158 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  br i1 %157, label %205, label %160

160:                                              ; preds = %155
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %205, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 5
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %13, i32 340
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  %168 = getelementptr i8, ptr %13, i32 344
  br label %169

169:                                              ; preds = %202, %162
  %170 = phi i32 [ 0, %162 ], [ %203, %202 ]
  %171 = phi ptr [ null, %162 ], [ %200, %202 ]
  %172 = getelementptr %struct.v4l2_ext_control, ptr %164, i32 %170
  %173 = load i32, ptr %172, align 1
  br i1 %167, label %199, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %168, align 4
  br label %176

176:                                              ; preds = %194, %174
  %177 = phi i32 [ 0, %174 ], [ %195, %194 ]
  %178 = getelementptr %struct.uvc_control, ptr %175, i32 %177, i32 3
  %179 = load i8, ptr %178, align 1
  %180 = and i8 %179, 16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %176
  %183 = getelementptr %struct.uvc_control, ptr %175, i32 %177, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, %183
  br i1 %185, label %194, label %186

186:                                              ; preds = %191, %182
  %187 = phi ptr [ %192, %191 ], [ %184, %182 ]
  %188 = getelementptr inbounds %struct.uvc_control_mapping, ptr %187, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %173
  br i1 %190, label %197, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr %187, align 4
  %193 = icmp eq ptr %192, %183
  br i1 %193, label %194, label %186

194:                                              ; preds = %191, %182, %176
  %195 = add nuw i32 %177, 1
  %196 = icmp eq i32 %195, %166
  br i1 %196, label %199, label %176

197:                                              ; preds = %186
  %198 = getelementptr %struct.uvc_control, ptr %175, i32 %177
  br label %199

199:                                              ; preds = %197, %194, %169
  %200 = phi ptr [ %171, %169 ], [ %198, %197 ], [ %171, %194 ]
  %201 = icmp eq ptr %200, %156
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = add nuw i32 %170, 1
  %204 = icmp eq i32 %203, %159
  br i1 %204, label %205, label %169

205:                                              ; preds = %202, %199, %160, %155
  %206 = phi i32 [ 0, %160 ], [ %159, %155 ], [ %159, %202 ], [ %170, %199 ]
  %207 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 2
  store i32 %206, ptr %207, align 4
  br label %208

208:                                              ; preds = %205, %153, %152, %20
  %209 = phi i32 [ %18, %205 ], [ %18, %153 ], [ 0, %20 ], [ 0, %152 ]
  %210 = getelementptr inbounds %struct.uvc_video_chain, ptr %9, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %210) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.uvc_entity, ptr %1, i32 0, i32 18
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 4
  br label %14

14:                                               ; preds = %65, %10
  %15 = phi i32 [ 0, %10 ], [ %66, %65 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr %struct.uvc_control, ptr %16, i32 %15
  %18 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %14
  %23 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 130
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = and i8 %19, -3
  store i8 %28, ptr %18, align 1
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i8 [ %19, %22 ], [ %28, %27 ]
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  br i1 %12, label %34, label %49

34:                                               ; preds = %33
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr inbounds %struct.uvc_entity, ptr %35, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = trunc i16 %37 to i8
  %39 = load i32, ptr %13, align 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 1, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 1, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = tail call i32 @uvc_query_ctrl(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %38, i8 noundef zeroext %40, i8 noundef zeroext %42, ptr noundef %44, i16 noundef zeroext %46) #16
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %34, %33
  %50 = phi i32 [ %47, %34 ], [ 0, %33 ]
  %51 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 1, i32 4
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %56, i32 %55, i1 false)
  %57 = load i8, ptr %18, align 1
  %58 = and i8 %57, -2
  store i8 %58, ptr %18, align 1
  br i1 %12, label %62, label %65

59:                                               ; preds = %34
  %60 = load i8, ptr %18, align 1
  %61 = and i8 %60, -2
  store i8 %61, ptr %18, align 1
  br label %65

62:                                               ; preds = %49
  %63 = icmp eq ptr %3, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  store ptr %17, ptr %3, align 4
  br label %69

65:                                               ; preds = %59, %49, %29, %14
  %66 = add nuw i32 %15, 1
  %67 = load i32, ptr %7, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %14, label %69

69:                                               ; preds = %65, %64, %62, %6, %4
  %70 = phi i32 [ 0, %4 ], [ %50, %64 ], [ %50, %62 ], [ 0, %6 ], [ 0, %65 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_get(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = load i32, ptr %1, align 1
  %5 = icmp sgt i32 %4, -1
  %6 = and i32 %4, 268435455
  %7 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  br i1 %5, label %13, label %26

13:                                               ; preds = %12
  %14 = icmp eq i32 %6, 10092545
  br i1 %14, label %33, label %21

15:                                               ; preds = %2
  %16 = and i32 %9, 2
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %17, i1 %5, i1 false
  %19 = icmp eq i32 %6, 9961473
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %33, label %26

21:                                               ; preds = %13
  %22 = and i32 %9, 2
  %23 = icmp ne i32 %22, 0
  %24 = icmp eq i32 %6, 9961473
  %25 = and i1 %24, %23
  br i1 %25, label %33, label %26

26:                                               ; preds = %21, %15, %12
  %27 = call fastcc ptr @uvc_find_control(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %3)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.v4l2_ext_control, ptr %1, i32 0, i32 3
  %32 = tail call fastcc i32 @__uvc_ctrl_get(ptr noundef %0, ptr noundef nonnull %27, ptr noundef %30, ptr noundef %31)
  br label %33

33:                                               ; preds = %29, %26, %21, %15, %13
  %34 = phi i32 [ %32, %29 ], [ -22, %26 ], [ -13, %13 ], [ -13, %21 ], [ -13, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_ctrl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.uvc_entity, ptr %15, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %0, align 4
  br i1 %18, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = tail call i32 %17(ptr noundef %19, ptr noundef %15, i8 noundef zeroext %22, ptr noundef %24, i16 noundef zeroext %26) #16
  br label %42

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.uvc_entity, ptr %15, i32 0, i32 3
  %30 = load i16, ptr %29, align 4
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds %struct.uvc_device, ptr %19, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = tail call i32 @uvc_query_ctrl(ptr noundef %19, i8 noundef zeroext -127, i8 noundef zeroext %31, i8 noundef zeroext %34, i8 noundef zeroext %36, ptr noundef %38, i16 noundef zeroext %40) #16
  br label %42

42:                                               ; preds = %28, %20
  %43 = phi i32 [ %27, %20 ], [ %41, %28 ]
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %42
  %46 = load i8, ptr %10, align 1
  %47 = or i8 %46, 2
  store i8 %47, ptr %10, align 1
  br label %48

48:                                               ; preds = %45, %9
  %49 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %2, i8 noundef zeroext -127, ptr noundef %50) #16
  %54 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %69, %61
  %65 = phi i32 [ %70, %69 ], [ 0, %61 ]
  %66 = phi ptr [ %71, %69 ], [ %63, %61 ]
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %53
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = add nuw i32 %65, 1
  %71 = getelementptr %struct.uvc_menu_info, ptr %66, i32 1
  %72 = icmp eq i32 %70, %59
  br i1 %72, label %73, label %64

73:                                               ; preds = %69, %64, %57, %48
  %74 = phi i32 [ %53, %48 ], [ %53, %57 ], [ %53, %69 ], [ %65, %64 ]
  store i32 %74, ptr %3, align 4
  br label %75

75:                                               ; preds = %73, %42, %4
  %76 = phi i32 [ 0, %73 ], [ -13, %4 ], [ %43, %42 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_set(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !8
  %6 = load i32, ptr %1, align 1
  %7 = icmp sgt i32 %6, -1
  %8 = and i32 %6, 268435455
  %9 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 8
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  br i1 %7, label %15, label %28

15:                                               ; preds = %14
  %16 = icmp eq i32 %8, 10092545
  br i1 %16, label %206, label %23

17:                                               ; preds = %2
  %18 = and i32 %11, 2
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %19, i1 %7, i1 false
  %21 = icmp eq i32 %8, 9961473
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %206, label %28

23:                                               ; preds = %15
  %24 = and i32 %11, 2
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %8, 9961473
  %27 = and i1 %26, %25
  br i1 %27, label %206, label %28

28:                                               ; preds = %23, %17, %14
  %29 = call fastcc ptr @uvc_find_control(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %3)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %206, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %206, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %139 [
    i32 1, label %40
    i32 2, label %94
    i32 3, label %99
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %5, ptr noundef nonnull %29)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %206, label %48

48:                                               ; preds = %45, %40
  %49 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 4
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 1
  %57 = getelementptr i8, ptr %52, i32 %56
  %58 = tail call i32 %50(ptr noundef %37, i8 noundef zeroext -126, ptr noundef %57) #16
  %59 = load ptr, ptr %49, align 4
  %60 = load ptr, ptr %51, align 4
  %61 = load i16, ptr %53, align 2
  %62 = zext i16 %61 to i32
  %63 = mul nuw nsw i32 %62, 3
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = tail call i32 %59(ptr noundef %37, i8 noundef zeroext -125, ptr noundef %64) #16
  %66 = load ptr, ptr %49, align 4
  %67 = load ptr, ptr %51, align 4
  %68 = load i16, ptr %53, align 2
  %69 = zext i16 %68 to i32
  %70 = shl nuw nsw i32 %69, 2
  %71 = getelementptr i8, ptr %67, i32 %70
  %72 = tail call i32 %66(ptr noundef %37, i8 noundef zeroext -124, ptr noundef %71) #16
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 1, i32 %72
  %75 = getelementptr inbounds %struct.v4l2_ext_control, ptr %1, i32 0, i32 3
  %76 = load i32, ptr %75, align 1
  %77 = sub i32 %76, %58
  %78 = lshr i32 %74, 1
  %79 = add i32 %78, %77
  %80 = urem i32 %79, %74
  %81 = sub i32 %79, %80
  %82 = add i32 %81, %58
  store i32 %82, ptr %75, align 1
  %83 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %48
  %87 = tail call i32 @llvm.smax.i32(i32 %82, i32 %58)
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 %65)
  br label %92

89:                                               ; preds = %48
  %90 = tail call i32 @llvm.umax.i32(i32 %82, i32 %58)
  %91 = tail call i32 @llvm.umin.i32(i32 %90, i32 %65)
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %91, %89 ], [ %88, %86 ]
  store i32 %93, ptr %75, align 1
  br label %142

94:                                               ; preds = %36
  %95 = getelementptr inbounds %struct.v4l2_ext_control, ptr %1, i32 0, i32 3
  %96 = load i32, ptr %95, align 1
  %97 = icmp sgt i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, ptr %95, align 1
  br label %142

99:                                               ; preds = %36
  %100 = getelementptr inbounds %struct.v4l2_ext_control, ptr %1, i32 0, i32 3
  %101 = load i32, ptr %100, align 1
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %206, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 11
  %105 = load i32, ptr %104, align 4
  %106 = icmp ult i32 %101, %105
  br i1 %106, label %107, label %206

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 10
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr %struct.uvc_menu_info, ptr %109, i32 %101
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 9
  %113 = load i32, ptr %112, align 4
  %114 = icmp ne i32 %113, 5
  %115 = and i32 %33, 16
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %142, label %118

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = and i8 %120, 8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %5, ptr noundef nonnull %29)
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %206, label %126

126:                                              ; preds = %123, %118
  %127 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 15
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 4
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = shl nuw nsw i32 %133, 2
  %135 = getelementptr i8, ptr %130, i32 %134
  %136 = tail call i32 %128(ptr noundef %37, i8 noundef zeroext -124, ptr noundef %135) #16
  %137 = and i32 %136, %111
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %206, label %142

139:                                              ; preds = %36
  %140 = getelementptr inbounds %struct.v4l2_ext_control, ptr %1, i32 0, i32 3
  %141 = load i32, ptr %140, align 1
  br label %142

142:                                              ; preds = %139, %126, %107, %94, %92
  %143 = phi i32 [ %141, %139 ], [ %111, %126 ], [ %111, %107 ], [ %98, %94 ], [ %93, %92 ]
  %144 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = and i8 %145, 2
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %182

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 4
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %150 to i32
  %152 = shl nuw nsw i32 %151, 3
  %153 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 6
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %182, label %157

157:                                              ; preds = %148
  %158 = load i32, ptr %32, align 4
  %159 = and i32 %158, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %163, i8 0, i32 %151, i1 false)
  br label %179

164:                                              ; preds = %157
  %165 = load ptr, ptr %5, align 4
  %166 = load ptr, ptr %29, align 4
  %167 = getelementptr inbounds %struct.uvc_entity, ptr %166, i32 0, i32 3
  %168 = load i16, ptr %167, align 4
  %169 = trunc i16 %168 to i8
  %170 = getelementptr inbounds %struct.uvc_device, ptr %165, i32 0, i32 4
  %171 = load i32, ptr %170, align 8
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 3
  %174 = load i8, ptr %173, align 1
  %175 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 @uvc_query_ctrl(ptr noundef %165, i8 noundef zeroext -127, i8 noundef zeroext %169, i8 noundef zeroext %172, i8 noundef zeroext %174, ptr noundef %176, i16 noundef zeroext %150) #16
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %206, label %179

179:                                              ; preds = %164, %161
  %180 = load i8, ptr %144, align 1
  %181 = or i8 %180, 2
  store i8 %181, ptr %144, align 1
  br label %182

182:                                              ; preds = %179, %148, %142
  %183 = phi i8 [ %181, %179 ], [ %145, %148 ], [ %145, %142 ]
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 1, i32 4
  %190 = load i16, ptr %189, align 2
  %191 = zext i16 %190 to i32
  %192 = getelementptr i8, ptr %188, i32 %191
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %192, ptr align 1 %188, i32 %191, i1 false)
  br label %193

193:                                              ; preds = %186, %182
  %194 = getelementptr inbounds %struct.uvc_control_mapping, ptr %37, i32 0, i32 16
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 4
  %197 = load ptr, ptr %196, align 4
  tail call void %195(ptr noundef %37, i32 noundef %143, ptr noundef %197) #16
  %198 = load i32, ptr %32, align 4
  %199 = and i32 %198, 256
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.uvc_control, ptr %29, i32 0, i32 5
  store ptr %0, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %193
  %204 = load i8, ptr %144, align 1
  %205 = or i8 %204, 5
  store i8 %205, ptr %144, align 1
  br label %206

206:                                              ; preds = %203, %164, %126, %123, %103, %99, %45, %31, %28, %23, %17, %15
  %207 = phi i32 [ 0, %203 ], [ -22, %28 ], [ -13, %31 ], [ %46, %45 ], [ -34, %103 ], [ -34, %99 ], [ %124, %123 ], [ -22, %126 ], [ %177, %164 ], [ -13, %15 ], [ -13, %23 ], [ -13, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %207
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_ctrl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_xu_ctrl_query(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %32, label %6

6:                                                ; preds = %29, %2
  %7 = phi ptr [ %30, %29 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 32767
  %11 = icmp eq i16 %10, 6
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 12
  %14 = load i16, ptr %13, align 4
  %15 = load i8, ptr %1, align 4
  %16 = zext i8 %15 to i16
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %7, i32 340
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %7, i32 344
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -1
  br label %42

29:                                               ; preds = %12, %6
  %30 = load ptr, ptr %7, align 4
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %32, label %6

32:                                               ; preds = %29, %2
  %33 = load i32, ptr @uvc_dbg_param, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %158, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 4
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %40 = load i8, ptr %1, align 4
  %41 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %39, ptr noundef nonnull @.str.1, i32 noundef %41) #17
  br label %158

42:                                               ; preds = %48, %22
  %43 = phi i32 [ 0, %22 ], [ %49, %48 ]
  %44 = getelementptr %struct.uvc_control, ptr %24, i32 %43, i32 2
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %28, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = add nuw i32 %43, 1
  %50 = icmp eq i32 %49, %20
  br i1 %50, label %51, label %42

51:                                               ; preds = %48, %18
  %52 = load i32, ptr @uvc_dbg_param, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %158, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %0, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.usb_device, ptr %57, i32 0, i32 15
  %59 = getelementptr i8, ptr %7, i32 80
  %60 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef %59, i32 noundef %62) #17
  br label %158

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  %65 = tail call i32 @mutex_lock_interruptible(ptr noundef %64) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %158

67:                                               ; preds = %63
  %68 = getelementptr %struct.uvc_control, ptr %24, i32 %43
  %69 = load ptr, ptr %0, align 4
  %70 = tail call fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %69, ptr noundef %68)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %155, label %72

72:                                               ; preds = %67
  %73 = getelementptr %struct.uvc_control, ptr %24, i32 %43, i32 1, i32 4
  %74 = load i16, ptr %73, align 2
  %75 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 2
  %76 = load i8, ptr %75, align 2
  switch i8 %76, label %155 [
    i8 -127, label %84
    i8 -126, label %77
    i8 -125, label %78
    i8 -121, label %79
    i8 -124, label %80
    i8 1, label %81
    i8 -123, label %82
    i8 -122, label %83
  ]

77:                                               ; preds = %72
  br label %84

78:                                               ; preds = %72
  br label %84

79:                                               ; preds = %72
  br label %84

80:                                               ; preds = %72
  br label %84

81:                                               ; preds = %72
  br label %84

82:                                               ; preds = %72
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %82, %81, %80, %79, %78, %77, %72
  %85 = phi i1 [ true, %83 ], [ true, %82 ], [ false, %81 ], [ false, %80 ], [ false, %79 ], [ false, %78 ], [ false, %77 ], [ false, %72 ]
  %86 = phi i32 [ 0, %83 ], [ 0, %82 ], [ 1, %81 ], [ 16, %80 ], [ 32, %79 ], [ 8, %78 ], [ 4, %77 ], [ 2, %72 ]
  %87 = phi i16 [ 1, %83 ], [ 2, %82 ], [ %74, %81 ], [ %74, %80 ], [ %74, %79 ], [ %74, %78 ], [ %74, %77 ], [ %74, %72 ]
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 3
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %87, %90
  br i1 %91, label %92, label %155

92:                                               ; preds = %84
  br i1 %85, label %98, label %93

93:                                               ; preds = %92
  %94 = getelementptr %struct.uvc_control, ptr %24, i32 %43, i32 1, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, %86
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %155, label %98

98:                                               ; preds = %93, %92
  %99 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3264) #18
  %100 = icmp eq ptr %99, null
  br i1 %100, label %155, label %101

101:                                              ; preds = %98
  %102 = load i8, ptr %75, align 2
  %103 = icmp eq i8 %102, 1
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %106, i32 %88, i32 -1090519040) #19, !srcloc !9
  %108 = extractvalue { i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117, !prof !10

110:                                              ; preds = %104
  %111 = tail call ptr @llvm.thread.pointer() #16
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %113 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %112) #20, !srcloc !11
  %114 = and i32 %113, -13
  %115 = or i32 %114, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  %116 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %99, ptr noundef %106, i32 noundef %88) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  br label %117

117:                                              ; preds = %110, %104
  %118 = phi i32 [ %116, %110 ], [ %88, %104 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122, !prof !10

120:                                              ; preds = %117
  %121 = load i8, ptr %75, align 2
  br label %125

122:                                              ; preds = %117
  %123 = sub i32 %88, %118
  %124 = getelementptr i8, ptr %99, i32 %123
  tail call void @llvm.memset.p0.i32(ptr align 1 %124, i8 0, i32 %118, i1 false) #16
  br label %155

125:                                              ; preds = %120, %101
  %126 = phi i8 [ %121, %120 ], [ %102, %101 ]
  %127 = load ptr, ptr %0, align 4
  %128 = load i8, ptr %1, align 4
  %129 = getelementptr inbounds %struct.uvc_device, ptr %127, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = trunc i32 %130 to i8
  %132 = load i8, ptr %25, align 1
  %133 = tail call i32 @uvc_query_ctrl(ptr noundef %127, i8 noundef zeroext %126, i8 noundef zeroext %128, i8 noundef zeroext %131, i8 noundef zeroext %132, ptr noundef nonnull %99, i16 noundef zeroext %87) #16
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %125
  %136 = load i8, ptr %75, align 2
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %155, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %1, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %140, i32 %88, i32 -1090519040) #19, !srcloc !14
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = tail call ptr @llvm.thread.pointer() #16
  %146 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 3
  %147 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %146) #20, !srcloc !11
  %148 = and i32 %147, -13
  %149 = or i32 %148, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  %150 = tail call i32 @arm_copy_to_user(ptr noundef %140, ptr noundef nonnull %99, i32 noundef %88) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  br label %151

151:                                              ; preds = %144, %138
  %152 = phi i32 [ %150, %144 ], [ %88, %138 ]
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 %133, i32 -14
  br label %155

155:                                              ; preds = %151, %135, %125, %122, %98, %93, %84, %72, %67
  %156 = phi ptr [ %99, %125 ], [ %99, %135 ], [ null, %67 ], [ null, %72 ], [ null, %84 ], [ null, %93 ], [ null, %98 ], [ %99, %122 ], [ %99, %151 ]
  %157 = phi i32 [ %133, %125 ], [ %133, %135 ], [ -2, %67 ], [ -22, %72 ], [ -105, %84 ], [ -56, %93 ], [ -12, %98 ], [ -14, %122 ], [ %154, %151 ]
  tail call void @kfree(ptr noundef %156) #16
  tail call void @mutex_unlock(ptr noundef %64) #16
  br label %158

158:                                              ; preds = %155, %63, %55, %51, %36, %32
  %159 = phi i32 [ %157, %155 ], [ -2, %36 ], [ -2, %32 ], [ -2, %55 ], [ -2, %51 ], [ -512, %63 ]
  ret i32 %159
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.uvc_control_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %156

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %156, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uvc_control_info, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.uvc_entity, ptr %14, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %13, ptr noundef align 4 dereferenceable(16) %15, i32 16, i1 false) #16
  %16 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uvc_control_info, ptr %3, i32 0, i32 2
  store i8 %17, ptr %18, align 4
  %19 = add i8 %17, 1
  %20 = getelementptr inbounds %struct.uvc_control_info, ptr %3, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.uvc_entity, ptr %14, i32 0, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = trunc i32 %25 to i8
  %27 = tail call i32 @uvc_query_ctrl(ptr noundef %0, i8 noundef zeroext -123, i8 noundef zeroext %23, i8 noundef zeroext %26, i8 noundef zeroext %19, ptr noundef nonnull %10, i16 noundef zeroext 2) #16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %12
  %30 = load i32, ptr @uvc_dbg_param, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %111, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %36 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef %13, i32 noundef %36, i32 noundef %27) #17
  br label %111

37:                                               ; preds = %12
  %38 = load i16, ptr %10, align 8
  %39 = getelementptr inbounds %struct.uvc_control_info, ptr %3, i32 0, i32 4
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.uvc_control_info, ptr %3, i32 0, i32 5
  store i32 60, ptr %40, align 4
  %41 = call fastcc i32 @uvc_ctrl_get_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #16
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, ptr @uvc_dbg_param, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %111, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  %50 = load i8, ptr %20, align 1
  %51 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %49, ptr noundef nonnull @.str.10, ptr noundef %13, i32 noundef %51, i32 noundef %41) #17
  br label %111

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @usb_match_one_id(ptr noundef %54, ptr noundef nonnull @uvc_ctrl_fixup_xu_info.fixups) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr inbounds %struct.uvc_entity, ptr %58, i32 0, i32 3
  %60 = load i16, ptr %59, align 4
  %61 = icmp eq i16 %60, 9
  %62 = load i8, ptr %20, align 1
  %63 = icmp eq i8 %62, 1
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %70

65:                                               ; preds = %86, %74, %57
  %66 = phi i32 [ 0, %57 ], [ 1, %74 ], [ 2, %86 ]
  %67 = getelementptr [3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 %66, i32 3
  %68 = load i8, ptr %67, align 2
  %69 = zext i8 %68 to i32
  store i32 %69, ptr %40, align 4
  br label %94

70:                                               ; preds = %57, %52
  %71 = load ptr, ptr %53, align 4
  %72 = tail call i32 @usb_match_one_id(ptr noundef %71, ptr noundef getelementptr inbounds ([3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 1)) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %1, align 4
  %76 = getelementptr inbounds %struct.uvc_entity, ptr %75, i32 0, i32 3
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %77, 9
  %79 = load i8, ptr %20, align 1
  %80 = icmp eq i8 %79, 1
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %65, label %82

82:                                               ; preds = %74, %70
  %83 = load ptr, ptr %53, align 4
  %84 = tail call i32 @usb_match_one_id(ptr noundef %83, ptr noundef getelementptr inbounds ([3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 2)) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %1, align 4
  %88 = getelementptr inbounds %struct.uvc_entity, ptr %87, i32 0, i32 3
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %89, 9
  %91 = load i8, ptr %20, align 1
  %92 = icmp eq i8 %91, 1
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %65, label %94

94:                                               ; preds = %86, %82, %65
  %95 = load i32, ptr @uvc_dbg_param, align 4
  %96 = and i32 %95, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 8
  %100 = getelementptr inbounds %struct.usb_device, ptr %99, i32 0, i32 15
  %101 = load i8, ptr %20, align 1
  %102 = zext i8 %101 to i32
  %103 = load i16, ptr %39, align 2
  %104 = zext i16 %103 to i32
  %105 = load i32, ptr %40, align 4
  %106 = lshr i32 %105, 1
  %107 = and i32 %106, 1
  %108 = and i32 %105, 1
  %109 = lshr i32 %105, 7
  %110 = and i32 %109, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %100, ptr noundef nonnull @.str.11, ptr noundef %13, i32 noundef %102, i32 noundef %104, i32 noundef %107, i32 noundef %108, i32 noundef %110) #17
  br label %113

111:                                              ; preds = %47, %43, %33, %29
  %112 = phi i32 [ %41, %43 ], [ %41, %47 ], [ %27, %29 ], [ %27, %33 ]
  call void @kfree(ptr noundef nonnull %10) #16
  br label %156

113:                                              ; preds = %98, %94
  call void @kfree(ptr noundef nonnull %10) #16
  %114 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %114, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 32, i1 false) #16
  store volatile ptr %114, ptr %114, align 4
  %115 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 4
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = mul nuw nsw i32 %118, 6
  %120 = or i32 %119, 1
  %121 = call noalias align 64 ptr @__kmalloc(i32 noundef %120, i32 noundef 3520) #18
  %122 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 4
  store ptr %121, ptr %122, align 4
  %123 = icmp eq ptr %121, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %113
  %125 = load i8, ptr %4, align 1
  %126 = or i8 %125, 16
  store i8 %126, ptr %4, align 1
  %127 = load i32, ptr @uvc_dbg_param, align 4
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 15
  %133 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 1
  %134 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 1
  %138 = load ptr, ptr %1, align 4
  %139 = getelementptr inbounds %struct.uvc_entity, ptr %138, i32 0, i32 3
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %132, ptr noundef nonnull @.str.12, ptr noundef %133, i32 noundef %136, ptr noundef %137, i32 noundef %141) #17
  br label %156

142:                                              ; preds = %113
  %143 = load i32, ptr @uvc_dbg_param, align 4
  %144 = and i32 %143, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %0, align 8
  %148 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15
  %149 = load i8, ptr %20, align 1
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 1
  %152 = load ptr, ptr %1, align 4
  %153 = getelementptr inbounds %struct.uvc_entity, ptr %152, i32 0, i32 3
  %154 = load i16, ptr %153, align 4
  %155 = zext i16 %154 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %148, ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef %150, ptr noundef %151, i32 noundef %155) #17
  br label %156

156:                                              ; preds = %146, %142, %130, %124, %111, %8, %2
  %157 = phi i32 [ 0, %2 ], [ -12, %142 ], [ -12, %146 ], [ %112, %111 ], [ -12, %8 ], [ 0, %124 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_restore_values(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 14
  br label %3

3:                                                ; preds = %33, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %33 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 18
  br label %13

13:                                               ; preds = %29, %11
  %14 = phi i32 [ %9, %11 ], [ %30, %29 ]
  %15 = phi i32 [ 0, %11 ], [ %31, %29 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 20
  %20 = icmp eq i8 %19, 20
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = getelementptr %struct.uvc_control, ptr %16, i32 %15, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = or i8 %18, 1
  store i8 %27, ptr %17, align 1
  %28 = load i32, ptr %8, align 4
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = phi i32 [ %14, %13 ], [ %14, %21 ], [ %28, %26 ]
  %31 = add nuw i32 %15, 1
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %13, label %33

33:                                               ; preds = %29, %7
  %34 = tail call fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %0, ptr noundef %5, i32 noundef 0, ptr noundef null)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %3

36:                                               ; preds = %33, %3
  %37 = phi i32 [ %34, %33 ], [ 0, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_add_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 268435456
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @uvc_dbg_param, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %162, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %5) #16
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.15, ptr %18
  %21 = load i32, ptr %4, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %5, %11 ], [ %21, %17 ]
  %24 = phi ptr [ %15, %11 ], [ %20, %17 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %24, i32 noundef %23) #17
  br label %162

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  %27 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %75, label %31

31:                                               ; preds = %70, %25
  %32 = phi ptr [ %73, %70 ], [ %29, %25 ]
  %33 = phi ptr [ %72, %70 ], [ null, %25 ]
  %34 = phi i32 [ %71, %70 ], [ 0, %25 ]
  %35 = getelementptr i8, ptr %32, i32 14
  %36 = load i16, ptr %35, align 2
  %37 = and i16 %36, 32767
  %38 = icmp eq i16 %37, 6
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %32, i32 80
  %41 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %40, ptr noundef dereferenceable(16) %27, i32 16) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %32, i32 340
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %32, i32 344
  %49 = load ptr, ptr %48, align 4
  %50 = load i8, ptr %28, align 4
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = getelementptr i8, ptr %49, i32 -48
  %54 = mul i32 %45, 48
  %55 = getelementptr i8, ptr %53, i32 %54
  br label %59

56:                                               ; preds = %59
  %57 = add nuw i32 %60, 1
  %58 = icmp eq i32 %57, %45
  br i1 %58, label %65, label %59

59:                                               ; preds = %56, %47
  %60 = phi i32 [ 0, %47 ], [ %57, %56 ]
  %61 = getelementptr %struct.uvc_control, ptr %49, i32 %60, i32 2
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %52, %63
  br i1 %64, label %79, label %56

65:                                               ; preds = %56, %43
  %66 = phi ptr [ %33, %43 ], [ %55, %56 ]
  %67 = icmp eq i32 %34, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  br i1 %67, label %70, label %75

70:                                               ; preds = %65, %39, %31
  %71 = phi i32 [ %34, %39 ], [ %34, %31 ], [ %69, %65 ]
  %72 = phi ptr [ %33, %39 ], [ %33, %31 ], [ %66, %65 ]
  %73 = load ptr, ptr %32, align 4
  %74 = icmp eq ptr %73, %26
  br i1 %74, label %75, label %31

75:                                               ; preds = %70, %65, %25
  %76 = phi i32 [ 0, %25 ], [ %71, %70 ], [ %69, %65 ]
  %77 = phi ptr [ null, %25 ], [ %72, %70 ], [ %66, %65 ]
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %162, label %81

79:                                               ; preds = %59
  %80 = getelementptr %struct.uvc_control, ptr %49, i32 %60
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %77, %75 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 5
  %84 = tail call i32 @mutex_lock_interruptible(ptr noundef %83) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %162

86:                                               ; preds = %81
  %87 = tail call fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %3, ptr noundef %82)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %160, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = icmp ugt i8 %91, 32
  br i1 %92, label %160, label %93

93:                                               ; preds = %89
  %94 = zext i8 %91 to i32
  %95 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 7
  %96 = load i8, ptr %95, align 2
  %97 = zext i8 %96 to i32
  %98 = add nuw nsw i32 %97, %94
  %99 = getelementptr inbounds %struct.uvc_control, ptr %82, i32 0, i32 1
  %100 = getelementptr inbounds %struct.uvc_control, ptr %82, i32 0, i32 1, i32 4
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 3
  %104 = icmp ugt i32 %98, %103
  br i1 %104, label %160, label %105

105:                                              ; preds = %109, %93
  %106 = phi ptr [ %107, %109 ], [ %99, %93 ]
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %99
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %4, align 4
  %111 = getelementptr inbounds %struct.uvc_control_mapping, ptr %107, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %105

114:                                              ; preds = %109
  %115 = load i32, ptr @uvc_dbg_param, align 4
  %116 = and i32 %115, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %160, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %110) #16
  %126 = icmp eq ptr %125, null
  %127 = select i1 %126, ptr @.str.15, ptr %125
  %128 = load i32, ptr %4, align 4
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i32 [ %110, %118 ], [ %128, %124 ]
  %131 = phi ptr [ %122, %118 ], [ %127, %124 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %120, ptr noundef nonnull @.str.4, ptr noundef %131, i32 noundef %130) #17
  br label %160

132:                                              ; preds = %105
  %133 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #16, !srcloc !16
  %134 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #16, !srcloc !17
  %135 = extractvalue { i32, i32 } %134, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %136 = icmp sgt i32 %135, 1024
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #16, !srcloc !16
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #16, !srcloc !19
  %139 = load i32, ptr @uvc_dbg_param, align 4
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %160, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %3, align 8
  %144 = getelementptr inbounds %struct.usb_device, ptr %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.uvc_control_mapping, ptr %1, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load i32, ptr %4, align 4
  %150 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %149) #16
  %151 = icmp eq ptr %150, null
  %152 = select i1 %151, ptr @.str.15, ptr %150
  br label %153

153:                                              ; preds = %148, %142
  %154 = phi ptr [ %146, %142 ], [ %152, %148 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %144, ptr noundef nonnull @.str.5, ptr noundef %154, i32 noundef 1024) #17
  br label %160

155:                                              ; preds = %132
  %156 = tail call fastcc i32 @__uvc_ctrl_add_mapping(ptr noundef %0, ptr noundef %82, ptr noundef %1)
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #16, !srcloc !16
  %159 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #16, !srcloc !19
  br label %160

160:                                              ; preds = %158, %155, %153, %137, %129, %114, %93, %89, %86
  %161 = phi i32 [ %156, %158 ], [ 0, %155 ], [ -2, %86 ], [ -22, %93 ], [ -22, %89 ], [ -17, %129 ], [ -17, %114 ], [ -12, %153 ], [ -12, %137 ]
  tail call void @mutex_unlock(ptr noundef %83) #16
  br label %162

162:                                              ; preds = %160, %81, %75, %22, %7
  %163 = phi i32 [ %161, %160 ], [ -22, %22 ], [ -22, %7 ], [ -2, %75 ], [ -512, %81 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_ctrl_add_mapping(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef 84, i32 noundef 3264) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 36
  %12 = getelementptr inbounds %struct.uvc_control_mapping, ptr %2, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @kmemdup(ptr noundef %13, i32 noundef %11, i32 noundef 3264) #16
  %15 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 10
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #16
  br label %68

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr @uvc_get_le_value, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr @uvc_set_le_value, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 268369920
  %32 = icmp eq i32 %31, 10092544
  br i1 %32, label %33, label %39

33:                                               ; preds = %39, %28
  %34 = phi i8 [ 0, %28 ], [ 1, %39 ]
  %35 = shl nuw nsw i8 1, %34
  %36 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 8
  %37 = load i8, ptr %36, align 4
  %38 = or i8 %37, %35
  store i8 %38, ptr %36, align 4
  br label %42

39:                                               ; preds = %28
  %40 = and i32 %30, 268369920
  %41 = icmp eq i32 %40, 9961472
  br i1 %41, label %33, label %42

42:                                               ; preds = %39, %33
  %43 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %4, ptr %44, align 4
  store ptr %43, ptr %4, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %4, ptr %45, align 4
  %47 = load i32, ptr @uvc_dbg_param, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %0, align 4
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.uvc_control_mapping, ptr %4, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, ptr %29, align 4
  %59 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %58) #16
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, ptr @.str.15, ptr %59
  br label %62

62:                                               ; preds = %57, %50
  %63 = phi ptr [ %55, %50 ], [ %61, %57 ]
  %64 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 1
  %65 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %53, ptr noundef nonnull @.str.16, ptr noundef %63, ptr noundef %64, i32 noundef %67) #17
  br label %68

68:                                               ; preds = %62, %42, %17, %3
  %69 = phi i32 [ -12, %17 ], [ -12, %3 ], [ 0, %62 ], [ 0, %42 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_init_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23, i32 0, i32 2
  store ptr @uvc_ctrl_status_event_work, ptr %5, align 4
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %282, label %9

9:                                                ; preds = %279, %1
  %10 = phi ptr [ %280, %279 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = getelementptr i8, ptr %10, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %279, label %15

15:                                               ; preds = %276, %9
  %16 = phi ptr [ %277, %276 ], [ %13, %9 ]
  %17 = getelementptr i8, ptr %16, i32 -8
  %18 = getelementptr i8, ptr %16, i32 14
  %19 = load i16, ptr %18, align 2
  %20 = trunc i16 %19 to i15
  switch i15 %20, label %41 [
    i15 6, label %21
    i15 5, label %26
    i15 513, label %31
    i15 -2, label %36
  ]

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %16, i32 312
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %16, i32 309
  %25 = load i8, ptr %24, align 1
  br label %41

26:                                               ; preds = %15
  %27 = getelementptr i8, ptr %16, i32 312
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %16, i32 310
  %30 = load i8, ptr %29, align 2
  br label %41

31:                                               ; preds = %15
  %32 = getelementptr i8, ptr %16, i32 316
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %16, i32 314
  %35 = load i8, ptr %34, align 2
  br label %41

36:                                               ; preds = %15
  %37 = getelementptr i8, ptr %16, i32 308
  %38 = getelementptr i8, ptr %16, i32 312
  %39 = load ptr, ptr %38, align 4
  %40 = load i8, ptr %37, align 4
  br label %41

41:                                               ; preds = %36, %31, %26, %21, %15
  %42 = phi i8 [ %25, %21 ], [ %30, %26 ], [ %35, %31 ], [ %40, %36 ], [ 0, %15 ]
  %43 = phi ptr [ %23, %21 ], [ %28, %26 ], [ %33, %31 ], [ %39, %36 ], [ null, %15 ]
  %44 = zext i8 %42 to i32
  %45 = load ptr, ptr %11, align 4
  %46 = and i16 %19, 32767
  %47 = zext i16 %46 to i32
  switch i32 %47, label %163 [
    i32 5, label %49
    i32 513, label %48
  ]

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i32 [ 316, %48 ], [ 312, %41 ]
  %51 = phi i32 [ 314, %48 ], [ 310, %41 ]
  %52 = phi ptr [ @uvc_ctrl_prune_entity.camera_blacklist, %48 ], [ @uvc_ctrl_prune_entity.processing_blacklist, %41 ]
  %53 = phi i1 [ true, %48 ], [ false, %41 ]
  %54 = getelementptr i8, ptr %16, i32 %50
  %55 = getelementptr i8, ptr %16, i32 %51
  %56 = load ptr, ptr %54, align 4
  %57 = load i8, ptr %55, align 2
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.uvc_device, ptr %45, i32 0, i32 1
  %60 = shl nuw nsw i32 %58, 3
  %61 = getelementptr i8, ptr %16, i32 12
  %62 = load ptr, ptr %59, align 4
  %63 = tail call i32 @usb_match_one_id(ptr noundef %62, ptr noundef nonnull %52) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %49
  %66 = getelementptr %struct.uvc_ctrl_blacklist, ptr %52, i32 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp ugt i32 %60, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = lshr i32 %68, 3
  %72 = getelementptr i8, ptr %56, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %68, 7
  %76 = shl nuw nsw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %70
  %80 = load i32, ptr @uvc_dbg_param, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %45, align 8
  %85 = getelementptr inbounds %struct.usb_device, ptr %84, i32 0, i32 15
  %86 = load i16, ptr %61, align 4
  %87 = zext i16 %86 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %85, ptr noundef nonnull @.str.18, i32 noundef %87, i32 noundef %68) #17
  %88 = load i8, ptr %72, align 1
  br label %89

89:                                               ; preds = %83, %79
  %90 = phi i8 [ %88, %83 ], [ %73, %79 ]
  %91 = trunc i32 %76 to i8
  %92 = xor i8 %91, -1
  %93 = and i8 %90, %92
  store i8 %93, ptr %72, align 1
  br label %94

94:                                               ; preds = %89, %70, %65, %49
  br i1 %53, label %163, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %59, align 4
  %97 = getelementptr %struct.uvc_ctrl_blacklist, ptr %52, i32 1
  %98 = tail call i32 @usb_match_one_id(ptr noundef %96, ptr noundef %97) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %95
  %101 = getelementptr %struct.uvc_ctrl_blacklist, ptr %52, i32 1, i32 1
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i32
  %104 = icmp ugt i32 %60, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %100
  %106 = lshr i32 %103, 3
  %107 = getelementptr i8, ptr %56, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %103, 7
  %111 = shl nuw nsw i32 1, %110
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %105
  %115 = load i32, ptr @uvc_dbg_param, align 4
  %116 = and i32 %115, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %45, align 8
  %120 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  %121 = load i16, ptr %61, align 4
  %122 = zext i16 %121 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %120, ptr noundef nonnull @.str.18, i32 noundef %122, i32 noundef %103) #17
  %123 = load i8, ptr %107, align 1
  br label %124

124:                                              ; preds = %118, %114
  %125 = phi i8 [ %123, %118 ], [ %108, %114 ]
  %126 = trunc i32 %111 to i8
  %127 = xor i8 %126, -1
  %128 = and i8 %125, %127
  store i8 %128, ptr %107, align 1
  br label %129

129:                                              ; preds = %124, %105, %100, %95
  %130 = load ptr, ptr %59, align 4
  %131 = getelementptr %struct.uvc_ctrl_blacklist, ptr %52, i32 2
  %132 = tail call i32 @usb_match_one_id(ptr noundef %130, ptr noundef %131) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %129
  %135 = getelementptr %struct.uvc_ctrl_blacklist, ptr %52, i32 2, i32 1
  %136 = load i8, ptr %135, align 4
  %137 = zext i8 %136 to i32
  %138 = icmp ugt i32 %60, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %134
  %140 = lshr i32 %137, 3
  %141 = getelementptr i8, ptr %56, i32 %140
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %137, 7
  %145 = shl nuw nsw i32 1, %144
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %139
  %149 = load i32, ptr @uvc_dbg_param, align 4
  %150 = and i32 %149, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %45, align 8
  %154 = getelementptr inbounds %struct.usb_device, ptr %153, i32 0, i32 15
  %155 = load i16, ptr %61, align 4
  %156 = zext i16 %155 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %154, ptr noundef nonnull @.str.18, i32 noundef %156, i32 noundef %137) #17
  %157 = load i8, ptr %141, align 1
  br label %158

158:                                              ; preds = %152, %148
  %159 = phi i8 [ %157, %152 ], [ %142, %148 ]
  %160 = trunc i32 %145 to i8
  %161 = xor i8 %160, -1
  %162 = and i8 %159, %161
  store i8 %162, ptr %141, align 1
  br label %163

163:                                              ; preds = %158, %139, %134, %129, %94, %41
  %164 = tail call i32 @memweight(ptr noundef %43, i32 noundef %44) #16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %276, label %166

166:                                              ; preds = %163
  %167 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %164, i32 48) #16
  %168 = extractvalue { i32, i1 } %167, 1
  br i1 %168, label %169, label %171, !prof !20

169:                                              ; preds = %166
  %170 = getelementptr i8, ptr %16, i32 344
  store ptr null, ptr %170, align 4
  br label %282

171:                                              ; preds = %166
  %172 = extractvalue { i32, i1 } %167, 0
  %173 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %172, i32 noundef 3520) #18
  %174 = getelementptr i8, ptr %16, i32 344
  store ptr %173, ptr %174, align 4
  %175 = icmp eq ptr %173, null
  br i1 %175, label %282, label %176

176:                                              ; preds = %171
  %177 = getelementptr i8, ptr %16, i32 340
  store i32 %164, ptr %177, align 4
  %178 = icmp eq i8 %42, 0
  br i1 %178, label %276, label %179

179:                                              ; preds = %176
  %180 = shl nuw nsw i32 %44, 3
  %181 = getelementptr i8, ptr %16, i32 80
  %182 = tail call i32 @llvm.umax.i32(i32 %180, i32 1) #16
  br label %183

183:                                              ; preds = %272, %179
  %184 = phi ptr [ %173, %179 ], [ %273, %272 ]
  %185 = phi i32 [ 0, %179 ], [ %274, %272 ]
  %186 = lshr i32 %185, 3
  %187 = getelementptr i8, ptr %43, i32 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %185, 7
  %191 = shl nuw nsw i32 1, %190
  %192 = and i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %272, label %194

194:                                              ; preds = %183
  store ptr %17, ptr %184, align 4
  %195 = trunc i32 %185 to i8
  %196 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 2
  store i8 %195, ptr %196, align 4
  %197 = load i16, ptr %18, align 2
  %198 = and i16 %197, 32767
  %199 = icmp eq i16 %198, 6
  br i1 %199, label %270, label %200

200:                                              ; preds = %243, %194
  %201 = phi ptr [ %244, %243 ], [ @uvc_ctrls, %194 ]
  %202 = getelementptr inbounds %struct.uvc_control_info, ptr %201, i32 0, i32 1
  %203 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %181, ptr noundef dereferenceable(16) %202, i32 16) #16
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %243

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.uvc_control_info, ptr %201, i32 0, i32 2
  %207 = load i8, ptr %206, align 4
  %208 = icmp eq i8 %207, %195
  br i1 %208, label %209, label %243

209:                                              ; preds = %205
  %210 = load ptr, ptr %11, align 4
  %211 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %211, ptr noundef align 4 dereferenceable(32) %201, i32 32, i1 false) #16
  store volatile ptr %211, ptr %211, align 4
  %212 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1, i32 0, i32 1
  store ptr %211, ptr %212, align 4
  %213 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1, i32 4
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i32
  %216 = mul nuw nsw i32 %215, 6
  %217 = or i32 %216, 1
  %218 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %217, i32 noundef 3520) #18
  %219 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 4
  store ptr %218, ptr %219, align 4
  %220 = icmp eq ptr %218, null
  br i1 %220, label %240, label %221

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 3
  %223 = load i8, ptr %222, align 1
  %224 = or i8 %223, 16
  store i8 %224, ptr %222, align 1
  %225 = load i32, ptr @uvc_dbg_param, align 4
  %226 = and i32 %225, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %221
  %229 = load ptr, ptr %210, align 8
  %230 = getelementptr inbounds %struct.usb_device, ptr %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1, i32 1
  %232 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1, i32 3
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = getelementptr inbounds %struct.usb_device, ptr %229, i32 0, i32 1
  %236 = load ptr, ptr %184, align 4
  %237 = getelementptr inbounds %struct.uvc_entity, ptr %236, i32 0, i32 3
  %238 = load i16, ptr %237, align 4
  %239 = zext i16 %238 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %230, ptr noundef nonnull @.str.12, ptr noundef %231, i32 noundef %234, ptr noundef %235, i32 noundef %239) #17
  br label %240

240:                                              ; preds = %228, %221, %209
  %241 = load ptr, ptr %11, align 4
  %242 = tail call fastcc i32 @uvc_ctrl_get_flags(ptr noundef %241, ptr noundef %184, ptr noundef %211) #16
  br label %246

243:                                              ; preds = %205, %200
  %244 = getelementptr %struct.uvc_control_info, ptr %201, i32 1
  %245 = icmp ult ptr %244, getelementptr inbounds ([36 x %struct.uvc_control_info], ptr @uvc_ctrls, i32 1, i32 0)
  br i1 %245, label %200, label %246

246:                                              ; preds = %243, %240
  %247 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 3
  %248 = load i8, ptr %247, align 1
  %249 = and i8 %248, 16
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %270, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.uvc_control, ptr %184, i32 0, i32 1, i32 3
  br label %253

253:                                              ; preds = %267, %251
  %254 = phi ptr [ @uvc_ctrl_mappings, %251 ], [ %268, %267 ]
  %255 = load ptr, ptr %184, align 4
  %256 = getelementptr inbounds %struct.uvc_control_mapping, ptr %254, i32 0, i32 4
  %257 = getelementptr inbounds %struct.uvc_entity, ptr %255, i32 0, i32 6
  %258 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %257, ptr noundef dereferenceable(16) %256, i32 16) #16
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %253
  %261 = load i8, ptr %252, align 1
  %262 = getelementptr inbounds %struct.uvc_control_mapping, ptr %254, i32 0, i32 5
  %263 = load i8, ptr %262, align 4
  %264 = icmp eq i8 %261, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = tail call fastcc i32 @__uvc_ctrl_add_mapping(ptr noundef %11, ptr noundef %184, ptr noundef %254) #16
  br label %267

267:                                              ; preds = %265, %260, %253
  %268 = getelementptr %struct.uvc_control_mapping, ptr %254, i32 1
  %269 = icmp ult ptr %268, getelementptr inbounds ([30 x %struct.uvc_control_mapping], ptr @uvc_ctrl_mappings, i32 1, i32 0)
  br i1 %269, label %253, label %270

270:                                              ; preds = %267, %246, %194
  %271 = getelementptr %struct.uvc_control, ptr %184, i32 1
  br label %272

272:                                              ; preds = %270, %183
  %273 = phi ptr [ %184, %183 ], [ %271, %270 ]
  %274 = add nuw nsw i32 %185, 1
  %275 = icmp eq i32 %274, %182
  br i1 %275, label %276, label %183

276:                                              ; preds = %272, %176, %163
  %277 = load ptr, ptr %16, align 4
  %278 = icmp eq ptr %277, %12
  br i1 %278, label %279, label %15

279:                                              ; preds = %276, %9
  %280 = load ptr, ptr %10, align 4
  %281 = icmp eq ptr %280, %6
  br i1 %281, label %282, label %9

282:                                              ; preds = %279, %171, %169, %1
  %283 = phi i32 [ -12, %169 ], [ 0, %1 ], [ -12, %171 ], [ 0, %279 ]
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_ctrl_status_event_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uvc_ctrl_work, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uvc_ctrl_work, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_ctrl_work, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @uvc_ctrl_status_event(ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = getelementptr i8, ptr %0, i32 -80
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.uvc_ctrl_work, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 25
  store i32 %12, ptr %15, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 3264) #16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 -716
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17, i32 noundef %17) #17
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_ctrl_cleanup_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 23
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %55, label %12

12:                                               ; preds = %50, %8
  %13 = phi ptr [ %53, %50 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.uvc_entity, ptr %13, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uvc_entity, ptr %13, i32 0, i32 18
  br label %19

19:                                               ; preds = %46, %17
  %20 = phi i32 [ %15, %17 ], [ %47, %46 ]
  %21 = phi i32 [ 0, %17 ], [ %48, %46 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr %struct.uvc_control, ptr %22, i32 %21, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %19
  %28 = getelementptr %struct.uvc_control, ptr %22, i32 %21, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %42, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %33, %31 ], [ %29, %27 ]
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %37 = getelementptr inbounds %struct.uvc_control_mapping, ptr %32, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #16
  %39 = getelementptr inbounds %struct.uvc_control_mapping, ptr %32, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #16
  tail call void @kfree(ptr noundef %32) #16
  %41 = icmp eq ptr %33, %28
  br i1 %41, label %42, label %31

42:                                               ; preds = %31, %27
  %43 = getelementptr %struct.uvc_control, ptr %22, i32 %21, i32 4
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #16
  %45 = load i32, ptr %14, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = phi i32 [ %20, %19 ], [ %45, %42 ]
  %48 = add nuw i32 %21, 1
  %49 = icmp ult i32 %48, %47
  br i1 %49, label %19, label %50

50:                                               ; preds = %46, %12
  %51 = getelementptr inbounds %struct.uvc_entity, ptr %13, i32 0, i32 18
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #16
  %53 = load ptr, ptr %13, align 4
  %54 = icmp eq ptr %53, %9
  br i1 %54, label %55, label %12

55:                                               ; preds = %50, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_get_flags(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.uvc_entity, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.uvc_control, ptr %1, i32 0, i32 1, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = tail call i32 %10(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %14, ptr noundef nonnull %5) #16
  br label %26

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.uvc_entity, ptr %8, i32 0, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.uvc_control_info, ptr %2, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = tail call i32 @uvc_query_ctrl(ptr noundef %0, i8 noundef zeroext -122, i8 noundef zeroext %19, i8 noundef zeroext %22, i8 noundef zeroext %24, ptr noundef nonnull %5, i16 noundef zeroext 1) #16
  br label %26

26:                                               ; preds = %16, %12
  %27 = phi i32 [ %15, %12 ], [ %25, %16 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i8, ptr %5, align 8
  %31 = zext i8 %30 to i32
  %32 = trunc i8 %30 to i2
  %33 = tail call i2 @llvm.bitreverse.i2(i2 %32)
  %34 = zext i2 %33 to i32
  %35 = shl nuw nsw i32 %31, 4
  %36 = and i32 %35, 128
  %37 = and i32 %35, 256
  %38 = getelementptr inbounds %struct.uvc_control_info, ptr %2, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %34
  %41 = or i32 %40, %36
  %42 = or i32 %41, %37
  store i32 %42, ptr %38, align 4
  br label %43

43:                                               ; preds = %29, %26
  tail call void @kfree(ptr noundef nonnull %5) #16
  br label %44

44:                                               ; preds = %43, %3
  %45 = phi i32 [ %27, %43 ], [ -12, %3 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @uvc_get_le_value(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #9 {
  %4 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 7
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %9, 3
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = and i32 %9, 7
  %13 = zext i8 %5 to i64
  %14 = shl nsw i64 -1, %13
  %15 = xor i64 %14, -1
  %16 = zext i32 %12 to i64
  %17 = shl i64 %15, %16
  %18 = trunc i64 %17 to i8
  %19 = load i8, ptr %11, align 1
  %20 = and i8 %19, %18
  %21 = icmp eq i32 %12, 0
  %22 = zext i8 %20 to i32
  %23 = lshr i32 %22, %12
  %24 = sub nsw i32 0, %12
  %25 = shl i32 %22, %24
  %26 = select i1 %21, i32 %25, i32 %23
  %27 = add nsw i32 %6, -8
  %28 = add nsw i32 %27, %12
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %53, label %30

30:                                               ; preds = %30, %3
  %31 = phi i32 [ %51, %30 ], [ %28, %3 ]
  %32 = phi i32 [ %48, %30 ], [ %26, %3 ]
  %33 = phi i32 [ %35, %30 ], [ %12, %3 ]
  %34 = phi ptr [ %39, %30 ], [ %11, %3 ]
  %35 = add i32 %33, -8
  %36 = shl nsw i32 -1, %31
  %37 = trunc i32 %36 to i8
  %38 = xor i8 %37, -1
  %39 = getelementptr i8, ptr %34, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, %38
  %42 = icmp sgt i32 %35, 0
  %43 = zext i8 %41 to i32
  %44 = lshr i32 %43, %35
  %45 = sub i32 8, %33
  %46 = shl i32 %43, %45
  %47 = select i1 %42, i32 %44, i32 %46
  %48 = or i32 %47, %32
  %49 = tail call i32 @llvm.smax.i32(i32 %35, i32 0)
  %50 = add i32 %31, -8
  %51 = add i32 %50, %49
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %30

53:                                               ; preds = %30, %3
  %54 = phi i32 [ %26, %3 ], [ %48, %30 ]
  %55 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = add nsw i32 %6, -1
  %60 = shl nuw i32 1, %59
  %61 = and i32 %54, %60
  %62 = sub i32 0, %61
  %63 = or i32 %54, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %63, %58 ], [ %54, %53 ]
  ret i32 %65
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_set_le_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #10 {
  %4 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 7
  %12 = lshr i32 %10, 3
  %13 = getelementptr i8, ptr %2, i32 %12
  %14 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 4
  %17 = select i1 %16, i32 -1, i32 %1
  %18 = zext i8 %5 to i32
  %19 = zext i8 %5 to i64
  %20 = shl nsw i64 -1, %19
  %21 = xor i64 %20, -1
  %22 = zext i32 %11 to i64
  %23 = shl i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i8, ptr %13, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %24, -1
  %28 = and i32 %26, %27
  %29 = shl i32 %17, %11
  %30 = and i32 %29, %24
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %13, align 1
  %33 = add nsw i32 %18, -8
  %34 = add nsw i32 %33, %11
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %7
  %37 = icmp eq i32 %11, 0
  %38 = select i1 %37, i32 8, i32 %11
  %39 = ashr i32 %17, %38
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i32 [ %56, %40 ], [ %34, %36 ]
  %42 = phi ptr [ %44, %40 ], [ %13, %36 ]
  %43 = phi i32 [ %55, %40 ], [ %39, %36 ]
  %44 = getelementptr i8, ptr %42, i32 1
  %45 = zext i32 %41 to i64
  %46 = shl nsw i64 -1, %45
  %47 = trunc i64 %46 to i32
  %48 = xor i32 %47, -1
  %49 = load i8, ptr %44, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, %47
  %52 = and i32 %43, %48
  %53 = or i32 %51, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %44, align 1
  %55 = ashr i32 %43, 8
  %56 = add nsw i32 %41, -8
  %57 = icmp sgt i32 %41, 8
  br i1 %57, label %40, label %58, !llvm.loop !21

58:                                               ; preds = %40, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @uvc_ctrl_get_zoom(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #12 {
  %4 = icmp eq i8 %1, -127
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = load i8, ptr %2, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = icmp sgt i8 %6, 0
  %10 = getelementptr i8, ptr %2, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = select i1 %9, i32 %12, i32 %13
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %2, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %8, %5
  %20 = phi i32 [ %18, %15 ], [ 0, %5 ], [ %14, %8 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @uvc_ctrl_set_zoom(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp slt i32 %1, 1
  %6 = select i1 %5, i8 -1, i8 1
  %7 = select i1 %4, i8 0, i8 %6
  store i8 %7, ptr %2, align 1
  %8 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 255)
  %10 = trunc i32 %9 to i8
  %11 = getelementptr i8, ptr %2, i32 2
  store i8 %10, ptr %11, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @uvc_ctrl_get_rel_speed(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) #12 {
  %4 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 2
  %6 = lshr i8 %5, 3
  %7 = zext i8 %6 to i32
  switch i8 %1, label %26 [
    i8 -127, label %8
    i8 -126, label %20
  ]

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %2, i32 %7
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i8 %10, 0
  %14 = add nuw nsw i32 %7, 1
  %15 = getelementptr i8, ptr %2, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 0, %17
  %19 = select i1 %13, i32 %17, i32 %18
  br label %31

20:                                               ; preds = %3
  %21 = add nuw nsw i32 %7, 1
  %22 = getelementptr i8, ptr %2, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 0, %24
  br label %31

26:                                               ; preds = %3
  %27 = add nuw nsw i32 %7, 1
  %28 = getelementptr i8, ptr %2, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %20, %12, %8
  %32 = phi i32 [ %30, %26 ], [ %25, %20 ], [ 0, %8 ], [ %19, %12 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @uvc_ctrl_set_rel_speed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.uvc_control_mapping, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i32 %1, 0
  %7 = icmp slt i32 %1, 1
  %8 = select i1 %7, i8 -1, i8 1
  %9 = select i1 %6, i8 0, i8 %8
  %10 = lshr i8 %5, 3
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %2, i32 %11
  store i8 %9, ptr %12, align 1
  %13 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 255)
  %15 = trunc i32 %14 to i8
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr i8, ptr %2, i32 %16
  store i8 %15, ptr %17, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind allocsize(2) }

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
!9 = !{i64 2151084291, i64 2151084316}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3580403}
!12 = !{i64 3580600}
!13 = !{i64 2151065879}
!14 = !{i64 2151084869, i64 2151084894}
!15 = !{i64 2148073158}
!16 = !{i64 473153, i64 2147963124, i64 2147963150, i64 2147963197, i64 2147963219, i64 2147963247, i64 2147963267}
!17 = !{i64 2147976020, i64 2147976052, i64 2147976081, i64 2147976115, i64 2147976146, i64 2147976169}
!18 = !{i64 2148073361}
!19 = !{i64 2147977693, i64 2147977719, i64 2147977748, i64 2147977782, i64 2147977813, i64 2147977836}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.peeled.count", i32 1}
