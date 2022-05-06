; ModuleID = '/llk/IR/drivers/media/platform/rcar-vin/rcar-core.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.rvin_group_route = type { i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.88], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.88 = type { ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.89, i32, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_group = type { %struct.kref, %struct.media_device, %struct.mutex, i32, %struct.v4l2_async_notifier, [32 x ptr], ptr, [4 x %struct.anon.87] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.87 = type { ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.90, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.90 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.72, %union.anon.73, ptr, i32, i8 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rvin_of_id_table = internal constant [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a774e1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_m1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-vin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7795 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a7796 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77965 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77970 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77980 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77990 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a77995 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,vin-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_info_r8a779a0 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author258 = internal constant [57 x i8] c"author=Niklas S\C3\B6derlund <niklas.soderlund@ragnatech.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [49 x i8] c"description=Renesas R-Car VIN camera host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rcar_info_r8a7796 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a7796_routes }, align 4
@rcar_info_r8a77965 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77965_routes }, align 4
@rcar_info_r8a77990 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77990_routes }, align 4
@rcar_info_r8a774e1 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a774e1_routes }, align 4
@rcar_info_m1 = internal constant %struct.rvin_info { i32 1, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, align 4
@rcar_info_h1 = internal constant %struct.rvin_info { i32 0, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, align 4
@rcar_info_gen2 = internal constant %struct.rvin_info { i32 2, i8 0, i8 0, i8 0, i32 2048, i32 2048, ptr null }, align 4
@rcar_info_r8a7795 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a7795_routes }, align 4
@rcar_info_r8a77970 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a77970_routes }, align 4
@rcar_info_r8a77980 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77980_routes }, align 4
@rcar_info_r8a77995 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 1, i32 4096, i32 4096, ptr @rcar_info_r8a77995_routes }, align 4
@rcar_info_r8a779a0 = internal constant %struct.rvin_info { i32 3, i8 1, i8 1, i8 1, i32 4096, i32 4096, ptr null }, align 4
@rcar_info_r8a7796_routes = internal constant [29 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 2 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 2 }, %struct.rvin_group_route { i32 2, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a77965_routes = internal constant [33 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a77990_routes = internal constant [5 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 2, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 5, i32 10 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a774e1_routes = internal constant [25 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a7795_routes = internal constant [33 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 6 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 3, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 0, i32 1, i32 6, i32 1 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 6 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a77970_routes = internal constant [8 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a77980_routes = internal constant [17 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 2, i32 1, i32 0, i32 4 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 10 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 3, i32 1, i32 4, i32 4 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 10 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route zeroinitializer], align 4
@rcar_info_r8a77995_routes = internal constant [1 x %struct.rvin_group_route] zeroinitializer, align 4
@rcar_vin_driver = internal global %struct.platform_driver { ptr @rcar_vin_probe, ptr @rcar_vin_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rvin_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"rcar-vin\00", align 1
@rvin_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rvin_suspend, ptr @rvin_resume, ptr @rvin_suspend, ptr @rvin_resume, ptr @rvin_suspend, ptr @rvin_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@r8a7795es1 = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.1, ptr null, ptr @.str.2, ptr @rcar_info_r8a7795es1, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"r8a7795\00", align 1
@rcar_info_r8a7795es1 = internal constant %struct.rvin_info { i32 3, i8 1, i8 0, i8 0, i32 4096, i32 4096, ptr @rcar_info_r8a7795es1_routes }, align 4
@rcar_info_r8a7795es1_routes = internal constant [43 x %struct.rvin_group_route] [%struct.rvin_group_route { i32 2, i32 0, i32 0, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 0, i32 18 }, %struct.rvin_group_route { i32 1, i32 0, i32 0, i32 36 }, %struct.rvin_group_route { i32 0, i32 0, i32 1, i32 1 }, %struct.rvin_group_route { i32 1, i32 0, i32 1, i32 2 }, %struct.rvin_group_route { i32 2, i32 0, i32 1, i32 4 }, %struct.rvin_group_route { i32 2, i32 1, i32 1, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 1, i32 16 }, %struct.rvin_group_route { i32 1, i32 1, i32 1, i32 32 }, %struct.rvin_group_route { i32 1, i32 0, i32 2, i32 1 }, %struct.rvin_group_route { i32 2, i32 0, i32 2, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 2, i32 4 }, %struct.rvin_group_route { i32 2, i32 2, i32 2, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 2, i32 16 }, %struct.rvin_group_route { i32 1, i32 2, i32 2, i32 32 }, %struct.rvin_group_route { i32 2, i32 1, i32 3, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 3, i32 2 }, %struct.rvin_group_route { i32 1, i32 1, i32 3, i32 4 }, %struct.rvin_group_route { i32 2, i32 3, i32 3, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 3, i32 16 }, %struct.rvin_group_route { i32 1, i32 3, i32 3, i32 32 }, %struct.rvin_group_route { i32 3, i32 0, i32 4, i32 9 }, %struct.rvin_group_route { i32 0, i32 0, i32 4, i32 18 }, %struct.rvin_group_route { i32 1, i32 0, i32 4, i32 36 }, %struct.rvin_group_route { i32 0, i32 0, i32 5, i32 1 }, %struct.rvin_group_route { i32 1, i32 0, i32 5, i32 2 }, %struct.rvin_group_route { i32 3, i32 0, i32 5, i32 4 }, %struct.rvin_group_route { i32 3, i32 1, i32 5, i32 8 }, %struct.rvin_group_route { i32 0, i32 1, i32 5, i32 16 }, %struct.rvin_group_route { i32 1, i32 1, i32 5, i32 32 }, %struct.rvin_group_route { i32 1, i32 0, i32 6, i32 1 }, %struct.rvin_group_route { i32 3, i32 0, i32 6, i32 2 }, %struct.rvin_group_route { i32 0, i32 0, i32 6, i32 4 }, %struct.rvin_group_route { i32 3, i32 2, i32 6, i32 8 }, %struct.rvin_group_route { i32 0, i32 2, i32 6, i32 16 }, %struct.rvin_group_route { i32 1, i32 2, i32 6, i32 32 }, %struct.rvin_group_route { i32 3, i32 1, i32 7, i32 1 }, %struct.rvin_group_route { i32 0, i32 1, i32 7, i32 2 }, %struct.rvin_group_route { i32 1, i32 1, i32 7, i32 4 }, %struct.rvin_group_route { i32 3, i32 3, i32 7, i32 8 }, %struct.rvin_group_route { i32 0, i32 3, i32 7, i32 16 }, %struct.rvin_group_route { i32 1, i32 3, i32 7, i32 32 }, %struct.rvin_group_route zeroinitializer], align 4
@rvin_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rvin_s_ctrl }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"renesas,id\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%pOF: No renesas,id property found\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%pOF: Invalid renesas,id '%u'\0A\00", align 1
@rvin_group_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rvin_group_lock, i64 12), ptr getelementptr (i8, ptr @rvin_group_lock, i64 12) } }, align 4
@rvin_group_data = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Duplicate renesas,id property value %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rvin_group_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"&group->lock\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rcar_vin\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Error adding link from %s to %s\0A\00", align 1
@rvin_group_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @rvin_group_notify_bound, ptr @rvin_group_notify_complete, ptr @rvin_group_notify_unbind }, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Notifier registration failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Failed to parse %pOF\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Failed to register subdev nodes\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"drivers/media/platform/rcar-vin/rcar-core.c\00", align 1
@rvin_csi2_media_ops = internal constant %struct.media_device_ops { ptr @rvin_csi2_link_notify, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"Subdevice %s not registered to any VIN\0A\00", align 1
@rvin_parallel_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @rvin_parallel_notify_bound, ptr @rvin_parallel_notify_complete, ptr @rvin_parallel_notify_unbind }, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"Unknown media bus type\0A\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Unsupported media bus format for %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Error adding link from %s to %s: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_license260], section "llvm.metadata"

@__mod_of__rvin_of_id_table_device_table = dso_local alias [17 x %struct.of_device_id], ptr @rvin_of_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_vin_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_vin_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_vin_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1736, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 8
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 28
  store i32 255, ptr %8, align 8
  %9 = tail call ptr @soc_device_match(ptr noundef nonnull @r8a7795es1) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %7, align 8
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %79

20:                                               ; preds = %14
  %21 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @rvin_dma_register(ptr noundef nonnull %3, i32 noundef %21) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %27, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.rvin_info, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 10
  %34 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 10, i32 4
  store i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 3
  %36 = tail call i32 @media_entity_pads_init(ptr noundef %35, i16 noundef zeroext 1, ptr noundef %33) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 5
  %40 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %39, i32 noundef 16, ptr noundef null, ptr noundef null) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %39, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %44 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 5, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 3, i32 9
  store ptr %39, ptr %48, align 4
  br label %52

49:                                               ; preds = %42
  tail call void @v4l2_ctrl_handler_free(ptr noundef %39) #9
  %50 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 3, i32 9
  store ptr null, ptr %50, align 4
  %51 = icmp slt i32 %45, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %49, %47
  %53 = tail call fastcc i32 @rvin_group_get(ptr noundef nonnull %3, ptr noundef nonnull @rvin_isp_setup_links, ptr noundef null) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @rvin_group_notifier_init(ptr noundef nonnull %3, i32 noundef 2) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  tail call fastcc void @rvin_group_put(ptr noundef nonnull %3) #9
  br label %59

59:                                               ; preds = %58, %52
  %60 = phi i32 [ %53, %52 ], [ %56, %58 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %39) #9
  %61 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 3, i32 9
  store ptr null, ptr %61, align 4
  br label %73

62:                                               ; preds = %26
  %63 = getelementptr inbounds %struct.rvin_info, ptr %28, i32 0, i32 1
  %64 = load i8, ptr %63, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @rvin_csi2_init(ptr noundef nonnull %3)
  br label %70

68:                                               ; preds = %62
  %69 = tail call fastcc i32 @rvin_parallel_init(ptr noundef nonnull %3)
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70, %59, %49, %38, %32
  %74 = phi i32 [ %71, %70 ], [ %40, %38 ], [ %45, %49 ], [ %36, %32 ], [ %60, %59 ]
  tail call void @rvin_dma_unregister(ptr noundef nonnull %3) #9
  br label %79

75:                                               ; preds = %70, %55
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %77 = load i16, ptr %76, align 8
  %78 = or i16 %77, 256
  store i16 %78, ptr %76, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  br label %79

79:                                               ; preds = %75, %73, %23, %20, %18, %1
  %80 = phi i32 [ %19, %18 ], [ %74, %73 ], [ 0, %75 ], [ -12, %1 ], [ %21, %20 ], [ %24, %23 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_vin_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  tail call void @rvin_v4l2_unregister(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_info, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 4
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rvin_group, ptr %13, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %29, label %35

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rvin_info, ptr %6, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %21) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %21) #9
  br i1 %20, label %38, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 4
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rvin_group, ptr %25, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22, %10
  %30 = phi ptr [ %13, %10 ], [ %25, %22 ]
  %31 = phi ptr [ %12, %10 ], [ %24, %22 ]
  %32 = getelementptr inbounds %struct.rvin_group, ptr %30, i32 0, i32 4
  tail call void @v4l2_async_nf_unregister(ptr noundef %32) #9
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.rvin_group, ptr %33, i32 0, i32 4
  tail call void @v4l2_async_nf_cleanup(ptr noundef %34) #9
  br label %35

35:                                               ; preds = %29, %22, %10
  tail call fastcc void @rvin_group_put(ptr noundef %3) #9
  %36 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 3, i32 9
  store ptr null, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %17
  tail call void @rvin_dma_unregister(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_dma_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_csi2_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 10, i32 4
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3
  %5 = tail call i32 @media_entity_pads_init(ptr noundef %4, i16 noundef zeroext 1, ptr noundef %2) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 5
  %9 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %8, i32 noundef 16, ptr noundef null, ptr noundef null) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %8, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 5, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 9
  store ptr %8, ptr %17, align 4
  br label %21

18:                                               ; preds = %11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %8) #9
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 9
  store ptr null, ptr %19, align 4
  %20 = icmp slt i32 %14, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18, %16
  %22 = tail call fastcc i32 @rvin_group_get(ptr noundef %0, ptr noundef nonnull @rvin_csi2_setup_links, ptr noundef nonnull @rvin_csi2_media_ops)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @rvin_parallel_init(ptr noundef %0)
  switch i32 %25, label %31 [
    i32 -19, label %26
    i32 0, label %26
  ]

26:                                               ; preds = %24, %24
  %27 = tail call fastcc i32 @rvin_group_notifier_init(ptr noundef %0, i32 noundef 1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 6
  tail call void @v4l2_async_nf_unregister(ptr noundef %30) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ %25, %24 ], [ %27, %29 ]
  tail call fastcc void @rvin_group_put(ptr noundef %0)
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i32 [ %22, %21 ], [ %32, %31 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %8) #9
  %35 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 9
  store ptr null, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %26, %18, %7, %1
  %37 = phi i32 [ %34, %33 ], [ %5, %1 ], [ %14, %18 ], [ 0, %26 ], [ %9, %7 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_parallel_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 6
  tail call void @v4l2_async_nf_init(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false) #9
  %4 = load ptr, ptr %0, align 8
  %5 = tail call ptr @dev_fwnode(ptr noundef %4) #9
  %6 = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %45

9:                                                ; preds = %1
  %10 = tail call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %6) #9
  %11 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  call void @fwnode_handle_put(ptr noundef nonnull %6) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8
  %15 = icmp eq ptr %10, null
  %16 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @of_fwnode_ops
  %22 = getelementptr i8, ptr %10, i32 -12
  %23 = select i1 %21, ptr %22, ptr null
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi ptr [ null, %13 ], [ %23, %18 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef %25) #10
  br label %42

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 2
  store i32 %28, ptr %32, align 8
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 3
  %34 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %33, align 4
  %36 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %3, ptr noundef %10, i32 noundef 28) #9
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %43, label %40

38:                                               ; preds = %26
  %39 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.17) #10
  br label %42

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7
  store ptr %36, ptr %41, align 8
  call void @fwnode_handle_put(ptr noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %45

42:                                               ; preds = %38, %24
  call void @fwnode_handle_put(ptr noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %55

43:                                               ; preds = %31
  %44 = ptrtoint ptr %36 to i32
  call void @fwnode_handle_put(ptr noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %55

45:                                               ; preds = %40, %8
  %46 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  store ptr @rvin_parallel_notify_ops, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4
  %51 = call i32 @v4l2_async_nf_register(ptr noundef %50, ptr noundef %3) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.12) #10
  call void @v4l2_async_nf_cleanup(ptr noundef %3) #9
  br label %55

55:                                               ; preds = %53, %49, %45, %43, %42
  %56 = phi i32 [ %51, %53 ], [ %44, %43 ], [ -19, %45 ], [ 0, %49 ], [ -22, %42 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_dma_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_group_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef %13) #10
  br label %113

14:                                               ; preds = %3
  %15 = load i32, ptr %4, align 4
  %16 = icmp ugt i32 %15, 31
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef %20, i32 noundef %15) #10
  br label %113

21:                                               ; preds = %14
  call void @mutex_lock(ptr noundef nonnull @rvin_group_lock) #9
  %22 = load ptr, ptr @rvin_group_data, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #9, !srcloc !10
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #9, !srcloc !11
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !12

28:                                               ; preds = %24
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %89, label %32, !prof !13

32:                                               ; preds = %28, %24
  %33 = phi i32 [ 2, %24 ], [ 1, %28 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef %33) #9
  br label %89

34:                                               ; preds = %21
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 672) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %112, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 2
  call void @__mutex_init(ptr noundef %39, ptr noundef nonnull @.str.8, ptr noundef nonnull @rvin_group_init.__key) #9
  %40 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.device_driver, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %45, ptr noundef null) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %54, %38
  %49 = phi ptr [ %60, %54 ], [ %46, %38 ]
  %50 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %49) #9
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, ptr %40, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %40, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.device_driver, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %49, ptr noundef %59, ptr noundef null) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %48

62:                                               ; preds = %54, %38
  %63 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 1
  %64 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 6
  store ptr %1, ptr %64, align 8
  %65 = load ptr, ptr %0, align 8
  store ptr %65, ptr %63, align 8
  %66 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 1, i32 21
  store ptr %2, ptr %66, align 8
  %67 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.device_driver, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 25
  %72 = load ptr, ptr %71, align 8
  %73 = call ptr @of_match_node(ptr noundef %70, ptr noundef %72) #9
  %74 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 1, i32 3
  %75 = call i32 @strscpy(ptr noundef %74, ptr noundef nonnull @.str.9, i32 noundef 32) #9
  %76 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 1, i32 2
  %77 = getelementptr inbounds %struct.of_device_id, ptr %73, i32 0, i32 2
  %78 = call i32 @strscpy(ptr noundef %76, ptr noundef %77, i32 noundef 32) #9
  %79 = load ptr, ptr %63, align 8
  %80 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %62
  %84 = load ptr, ptr %79, align 4
  br label %85

85:                                               ; preds = %83, %62
  %86 = phi ptr [ %84, %83 ], [ %81, %62 ]
  %87 = getelementptr inbounds %struct.rvin_group, ptr %36, i32 0, i32 1, i32 5
  %88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %87, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %86) #9
  call void @media_device_init(ptr noundef %63) #9
  store volatile i32 1, ptr %36, align 8
  store ptr %36, ptr @rvin_group_data, align 4
  br label %89

89:                                               ; preds = %85, %32, %28
  %90 = phi ptr [ %36, %85 ], [ %22, %28 ], [ %22, %32 ]
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  %91 = getelementptr inbounds %struct.rvin_group, ptr %90, i32 0, i32 2
  call void @mutex_lock(ptr noundef %91) #9
  %92 = load i32, ptr %4, align 4
  %93 = getelementptr %struct.rvin_group, ptr %90, i32 0, i32 5, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %89
  %97 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.7, i32 noundef %92) #10
  call void @mutex_unlock(ptr noundef %91) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %90) #9, !srcloc !10
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %90, ptr nonnull %90, i32 1, ptr nonnull elementtype(i32) %90) #9, !srcloc !15
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %113, label %103, !prof !13

103:                                              ; preds = %101
  call void @refcount_warn_saturate(ptr noundef nonnull %90, i32 noundef 3) #9
  br label %113

104:                                              ; preds = %96
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void @mutex_lock(ptr noundef nonnull @rvin_group_lock) #9
  store ptr null, ptr @rvin_group_data, align 4
  %105 = getelementptr inbounds %struct.rvin_group, ptr %90, i32 0, i32 1
  call void @media_device_cleanup(ptr noundef %105) #9
  call void @kfree(ptr noundef nonnull %90) #9
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %113

106:                                              ; preds = %89
  store ptr %0, ptr %93, align 4
  %107 = load i32, ptr %4, align 4
  %108 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 9
  store i32 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 8
  store ptr %90, ptr %109, align 4
  %110 = getelementptr inbounds %struct.rvin_group, ptr %90, i32 0, i32 1
  %111 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4, i32 1
  store ptr %110, ptr %111, align 4
  call void @mutex_unlock(ptr noundef %91) #9
  br label %113

112:                                              ; preds = %34
  call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %113

113:                                              ; preds = %112, %106, %104, %103, %101, %17, %10
  %114 = phi i32 [ -22, %10 ], [ -22, %17 ], [ 0, %106 ], [ -12, %112 ], [ -22, %101 ], [ -22, %103 ], [ -22, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_isp_setup_links(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #9
  br label %5

5:                                                ; preds = %38, %1
  %6 = phi i32 [ -22, %1 ], [ %39, %38 ]
  %7 = phi i32 [ 0, %1 ], [ %40, %38 ]
  %8 = and i32 %7, 7
  %9 = add nuw nsw i32 %8, 1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr %struct.rvin_group, ptr %10, i32 0, i32 5, i32 %7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %5
  %15 = lshr i32 %7, 3
  %16 = getelementptr %struct.rvin_group, ptr %10, i32 0, i32 7, i32 %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.media_pad, ptr %21, i32 %9
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %12, i32 0, i32 3, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @media_entity_find_link(ptr noundef %22, ptr noundef %24) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.rvin_dev, ptr %12, i32 0, i32 3
  %29 = trunc i32 %9 to i16
  %30 = tail call i32 @media_create_pad_link(ptr noundef nonnull %17, i16 noundef zeroext %29, ptr noundef %28, i16 noundef zeroext 0, i32 noundef 3) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rvin_dev, ptr %12, i32 0, i32 3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef %35, ptr noundef %37) #10
  br label %42

38:                                               ; preds = %27, %19, %14, %5
  %39 = phi i32 [ 0, %27 ], [ %6, %19 ], [ %6, %14 ], [ %6, %5 ]
  %40 = add nuw nsw i32 %7, 1
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %5

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %30, %32 ], [ %39, %38 ]
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr inbounds %struct.rvin_group, ptr %44, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %45) #9
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_group_notifier_init(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rvin_group, ptr %5, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = load ptr, ptr %4, align 4
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 0, %2 ], [ %21, %8 ]
  %10 = phi i32 [ 0, %2 ], [ %20, %8 ]
  %11 = phi i32 [ 0, %2 ], [ %18, %8 ]
  %12 = getelementptr %struct.rvin_group, ptr %7, i32 0, i32 5, i32 %9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = shl nuw i32 1, %9
  %16 = xor i1 %14, true
  %17 = zext i1 %16 to i32
  %18 = add i32 %11, %17
  %19 = select i1 %14, i32 0, i32 %15
  %20 = or i32 %19, %10
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %8

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %18
  %27 = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %27) #9
  br i1 %26, label %28, label %103

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.rvin_group, ptr %29, i32 0, i32 4
  tail call void @v4l2_async_nf_init(ptr noundef %30) #9
  %31 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fwnode_endpoint, ptr %3, i32 0, i32 1
  br label %33

33:                                               ; preds = %84, %28
  %34 = phi i32 [ 0, %28 ], [ %85, %84 ]
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %81, %33
  %39 = phi i32 [ %82, %81 ], [ 0, %33 ]
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr %struct.rvin_group, ptr %40, i32 0, i32 7, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  %45 = getelementptr %struct.rvin_group, ptr %40, i32 0, i32 5, i32 %34
  %46 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #9
  store i32 5, ptr %31, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @dev_fwnode(ptr noundef %47) #9
  %49 = call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %48, i32 noundef %1, i32 noundef %39, i32 noundef 0) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %81

52:                                               ; preds = %44
  %53 = call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %49) #9
  %54 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %49, ptr noundef nonnull %3) #9
  call void @fwnode_handle_put(ptr noundef nonnull %49) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %46, align 8
  %58 = icmp eq ptr %53, null
  %59 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %60 = or i1 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.fwnode_handle, ptr %53, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @of_fwnode_ops
  %65 = getelementptr i8, ptr %53, i32 -12
  %66 = select i1 %64, ptr %65, ptr null
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi ptr [ null, %56 ], [ %66, %61 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef %68) #10
  call void @fwnode_handle_put(ptr noundef %53) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %103

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.rvin_dev, ptr %46, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rvin_group, ptr %71, i32 0, i32 4
  %73 = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %72, ptr noundef %53, i32 noundef 28) #9
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %70, align 4
  %77 = load i32, ptr %32, align 4
  %78 = getelementptr %struct.rvin_group, ptr %76, i32 0, i32 7, i32 %77
  store ptr %73, ptr %78, align 4
  call void @fwnode_handle_put(ptr noundef %53) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %81

79:                                               ; preds = %69
  %80 = ptrtoint ptr %73 to i32
  call void @fwnode_handle_put(ptr noundef %53) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %103

81:                                               ; preds = %75, %51, %38
  %82 = add nuw nsw i32 %39, 1
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %38

84:                                               ; preds = %81, %33
  %85 = add nuw nsw i32 %34, 1
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %33

87:                                               ; preds = %84
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.rvin_group, ptr %88, i32 0, i32 4, i32 4
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rvin_group, ptr %88, i32 0, i32 4
  store ptr @rvin_group_notify_ops, ptr %93, align 8
  %94 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr inbounds %struct.rvin_group, ptr %95, i32 0, i32 4
  %97 = call i32 @v4l2_async_nf_register(ptr noundef %94, ptr noundef %96) #9
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.12) #10
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr inbounds %struct.rvin_group, ptr %101, i32 0, i32 4
  call void @v4l2_async_nf_cleanup(ptr noundef %102) #9
  br label %103

103:                                              ; preds = %99, %92, %87, %79, %67, %23
  %104 = phi i32 [ %97, %99 ], [ %80, %79 ], [ 0, %87 ], [ 0, %92 ], [ -22, %67 ], [ 0, %23 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rvin_group_put(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #9
  store ptr null, ptr %2, align 4
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.rvin_group, ptr %3, i32 0, i32 5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %12, label %11, !prof !13

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 201, i32 noundef 9, ptr noundef null) #9
  br label %13

12:                                               ; preds = %1
  store ptr null, ptr %8, align 4
  br label %13

13:                                               ; preds = %12, %11
  tail call void @mutex_unlock(ptr noundef %4) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #9, !srcloc !15
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %22, label %19, !prof !13

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #9
  br label %22

20:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  tail call void @mutex_lock(ptr noundef nonnull @rvin_group_lock) #9
  store ptr null, ptr @rvin_group_data, align 4
  %21 = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 1
  tail call void @media_device_cleanup(ptr noundef %21) #9
  tail call void @kfree(ptr noundef %3) #9
  tail call void @mutex_unlock(ptr noundef nonnull @rvin_group_lock) #9
  br label %22

22:                                               ; preds = %20, %19, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9963817
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -960
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  tail call void @rvin_set_alpha(ptr noundef %8, i32 noundef %10) #9
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_set_alpha(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_group_notify_bound(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 276
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rvin_group, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 0
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %25, %21, %17, %3
  %14 = phi i32 [ 0, %3 ], [ 1, %17 ], [ 2, %21 ], [ 3, %25 ]
  %15 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 %14, i32 1
  store ptr %1, ptr %15, align 4
  %16 = load ptr, ptr %6, align 4
  br label %29

17:                                               ; preds = %3
  %18 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %13, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %13, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 7, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %13, label %29

29:                                               ; preds = %25, %13
  %30 = phi ptr [ %16, %13 ], [ %9, %25 ]
  %31 = getelementptr inbounds %struct.rvin_group, ptr %30, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %31) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_group_notify_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -872
  %5 = getelementptr i8, ptr %3, i32 276
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rvin_group, ptr %6, i32 0, i32 1
  %8 = tail call i32 @__media_device_register(ptr noundef %7, ptr noundef nonnull @__this_module) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %3, i1 noundef zeroext false) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #10
  br label %37

15:                                               ; preds = %29, %10
  %16 = phi i32 [ %30, %29 ], [ 0, %10 ]
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr %struct.rvin_group, ptr %17, i32 0, i32 5, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rvin_dev, ptr %19, i32 0, i32 3, i32 17
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = tail call i32 @rvin_v4l2_register(ptr noundef nonnull %19) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26, %21, %15
  %30 = add nuw nsw i32 %16, 1
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %15

32:                                               ; preds = %29
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.rvin_group, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 %35(ptr noundef %4) #9
  br label %37

37:                                               ; preds = %32, %26, %13, %1
  %38 = phi i32 [ %11, %13 ], [ %36, %32 ], [ %8, %1 ], [ %27, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rvin_group_notify_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 276
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.rvin_group, ptr %9, i32 0, i32 5, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @rvin_v4l2_unregister(ptr noundef nonnull %11) #9
  br label %14

14:                                               ; preds = %13, %7
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %7

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.rvin_group, ptr %18, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %19) #9
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr %struct.rvin_group, ptr %20, i32 0, i32 7, i32 0
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %28

24:                                               ; preds = %36, %32, %28, %17
  %25 = phi i32 [ 0, %17 ], [ 1, %28 ], [ 2, %32 ], [ 3, %36 ]
  %26 = getelementptr %struct.rvin_group, ptr %20, i32 0, i32 7, i32 %25, i32 1
  store ptr null, ptr %26, align 4
  %27 = load ptr, ptr %6, align 4
  br label %40

28:                                               ; preds = %17
  %29 = getelementptr %struct.rvin_group, ptr %20, i32 0, i32 7, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %24, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.rvin_group, ptr %20, i32 0, i32 7, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %24, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.rvin_group, ptr %20, i32 0, i32 7, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %24, label %40

40:                                               ; preds = %36, %24
  %41 = phi ptr [ %27, %24 ], [ %20, %36 ]
  %42 = getelementptr inbounds %struct.rvin_group, ptr %41, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %42) #9
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.rvin_group, ptr %43, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %44) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_v4l2_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_v4l2_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_csi2_setup_links(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rvin_group, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_info, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rvin_group_route, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %54, %1
  %13 = phi i32 [ %55, %54 ], [ -22, %1 ]
  %14 = phi ptr [ %56, %54 ], [ %8, %1 ]
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.rvin_group_route, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.rvin_group, ptr %15, i32 0, i32 5, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %12
  %22 = icmp ult i32 %17, 4
  %23 = select i1 %22, i32 0, i32 4
  %24 = getelementptr %struct.rvin_group, ptr %15, i32 0, i32 5, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %14, align 4
  %29 = getelementptr %struct.rvin_group, ptr %15, i32 0, i32 7, i32 %28, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rvin_group_route, ptr %14, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  %36 = getelementptr inbounds %struct.media_entity, ptr %30, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.media_pad, ptr %37, i32 %35
  %39 = getelementptr inbounds %struct.rvin_dev, ptr %19, i32 0, i32 3, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr @media_entity_find_link(ptr noundef %38, ptr noundef %40) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.rvin_dev, ptr %19, i32 0, i32 3
  %45 = trunc i32 %35 to i16
  %46 = tail call i32 @media_create_pad_link(ptr noundef nonnull %30, i16 noundef zeroext %45, ptr noundef %44, i16 noundef zeroext 0, i32 noundef 0) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.media_entity, ptr %30, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rvin_dev, ptr %19, i32 0, i32 3, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.11, ptr noundef %51, ptr noundef %53) #10
  br label %60

54:                                               ; preds = %43, %32, %27, %21, %12
  %55 = phi i32 [ 0, %43 ], [ %13, %32 ], [ %13, %27 ], [ %13, %21 ], [ %13, %12 ]
  %56 = getelementptr %struct.rvin_group_route, ptr %14, i32 1
  %57 = getelementptr %struct.rvin_group_route, ptr %14, i32 1, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %12

60:                                               ; preds = %54, %48, %1
  %61 = phi i32 [ %46, %48 ], [ -22, %1 ], [ %55, %54 ]
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.rvin_group, ptr %62, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %63) #9
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_csi2_link_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @v4l2_pipeline_link_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %213

7:                                                ; preds = %3
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %213, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.media_pad, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %213, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.media_entity, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %213

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.media_device, ptr %4, i32 0, i32 11
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 52
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %22, label %213

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %4, i32 424
  tail call void @mutex_lock(ptr noundef %31) #9
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.media_pad, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 -16
  %36 = getelementptr i8, ptr %34, i32 1136
  %37 = load i32, ptr %36, align 8
  %38 = icmp ult i32 %37, 4
  %39 = select i1 %38, i32 0, i32 4
  %40 = getelementptr i8, ptr %4, i32 496
  %41 = getelementptr [32 x ptr], ptr %40, i32 0, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44, !prof !12

44:                                               ; preds = %30
  %45 = getelementptr i8, ptr %4, i32 632
  %46 = getelementptr i8, ptr %4, i32 640
  %47 = getelementptr i8, ptr %4, i32 648
  %48 = getelementptr i8, ptr %4, i32 656
  %49 = or i32 %39, 3
  br label %51

50:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 829, i32 noundef 9, ptr noundef null) #9
  br label %211

51:                                               ; preds = %123, %44
  %52 = phi ptr [ %42, %44 ], [ %126, %123 ]
  %53 = phi i32 [ %39, %44 ], [ %124, %123 ]
  %54 = phi i32 [ -1, %44 ], [ %121, %123 ]
  %55 = getelementptr [32 x ptr], ptr %40, i32 0, i32 %53
  %56 = icmp eq ptr %52, null
  br i1 %56, label %120, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rvin_dev, ptr %52, i32 0, i32 3, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @media_entity_remote_pad(ptr noundef %59) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %120, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.media_pad, ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %45, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %46, align 4
  %69 = icmp eq ptr %68, %64
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %47, align 4
  %72 = icmp eq ptr %71, %64
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %48, align 4
  %75 = icmp eq ptr %74, %64
  %76 = select i1 %75, i32 3, i32 -19
  br label %77

77:                                               ; preds = %73, %70, %67, %62
  %78 = phi i32 [ 0, %62 ], [ 1, %67 ], [ 2, %70 ], [ %76, %73 ]
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr inbounds %struct.rvin_dev, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.rvin_info, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.rvin_group_route, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.media_pad, ptr %60, i32 0, i32 2
  %89 = load i16, ptr %88, align 4
  %90 = getelementptr inbounds %struct.rvin_dev, ptr %79, i32 0, i32 9
  %91 = load i32, ptr %90, align 8
  %92 = add i16 %89, 255
  %93 = and i16 %92, 255
  %94 = zext i16 %93 to i32
  br label %95

95:                                               ; preds = %111, %87
  %96 = phi i32 [ %85, %87 ], [ %115, %111 ]
  %97 = phi i32 [ 0, %87 ], [ %112, %111 ]
  %98 = phi ptr [ %83, %87 ], [ %113, %111 ]
  %99 = getelementptr inbounds %struct.rvin_group_route, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %91
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i32, ptr %98, align 4
  %104 = icmp eq i32 %103, %78
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.rvin_group_route, ptr %98, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, %94
  %109 = select i1 %108, i32 %96, i32 0
  %110 = or i32 %109, %97
  br label %111

111:                                              ; preds = %105, %102, %95
  %112 = phi i32 [ %97, %102 ], [ %97, %95 ], [ %110, %105 ]
  %113 = getelementptr %struct.rvin_group_route, ptr %98, i32 1
  %114 = getelementptr %struct.rvin_group_route, ptr %98, i32 1, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %95

117:                                              ; preds = %111, %77
  %118 = phi i32 [ 0, %77 ], [ %112, %111 ]
  %119 = and i32 %118, %54
  br label %120

120:                                              ; preds = %117, %57, %51
  %121 = phi i32 [ %119, %117 ], [ %54, %57 ], [ %54, %51 ]
  %122 = icmp eq i32 %53, %49
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = add nuw nsw i32 %53, 1
  %125 = getelementptr [32 x ptr], ptr %40, i32 0, i32 %124
  %126 = load ptr, ptr %125, align 4
  br label %51

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.media_pad, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %45, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %161, label %134

134:                                              ; preds = %127
  %135 = load ptr, ptr %46, align 4
  %136 = icmp eq ptr %135, %131
  br i1 %136, label %161, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %47, align 4
  %139 = icmp eq ptr %138, %131
  br i1 %139, label %161, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %48, align 4
  %142 = icmp eq ptr %141, %131
  br i1 %142, label %161, label %143

143:                                              ; preds = %154, %140
  %144 = phi i32 [ %155, %154 ], [ 0, %140 ]
  %145 = getelementptr [32 x ptr], ptr %40, i32 0, i32 %144
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.rvin_dev, ptr %146, i32 0, i32 7, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %131
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.rvin_dev, ptr %146, i32 0, i32 20
  store i8 0, ptr %153, align 4
  br label %211

154:                                              ; preds = %148, %143
  %155 = add nuw nsw i32 %144, 1
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %157, label %143

157:                                              ; preds = %154
  %158 = load ptr, ptr %35, align 8
  %159 = getelementptr inbounds %struct.media_entity, ptr %131, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.16, ptr noundef %160) #10
  br label %211

161:                                              ; preds = %140, %137, %134, %127
  %162 = phi i32 [ 2, %137 ], [ 1, %134 ], [ 0, %127 ], [ 3, %140 ]
  %163 = getelementptr i8, ptr %34, i32 -8
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.rvin_info, ptr %164, i32 0, i32 6
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.rvin_group_route, ptr %166, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %199, label %170

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.media_pad, ptr %129, i32 0, i32 2
  %172 = load i16, ptr %171, align 4
  %173 = load i32, ptr %36, align 8
  %174 = add i16 %172, 255
  %175 = and i16 %174, 255
  %176 = zext i16 %175 to i32
  br label %177

177:                                              ; preds = %193, %170
  %178 = phi i32 [ %168, %170 ], [ %197, %193 ]
  %179 = phi i32 [ 0, %170 ], [ %194, %193 ]
  %180 = phi ptr [ %166, %170 ], [ %195, %193 ]
  %181 = getelementptr inbounds %struct.rvin_group_route, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, %173
  br i1 %183, label %184, label %193

184:                                              ; preds = %177
  %185 = load i32, ptr %180, align 4
  %186 = icmp eq i32 %185, %162
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.rvin_group_route, ptr %180, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %176
  %191 = select i1 %190, i32 %178, i32 0
  %192 = or i32 %191, %179
  br label %193

193:                                              ; preds = %187, %184, %177
  %194 = phi i32 [ %179, %184 ], [ %179, %177 ], [ %192, %187 ]
  %195 = getelementptr %struct.rvin_group_route, ptr %180, i32 1
  %196 = getelementptr %struct.rvin_group_route, ptr %180, i32 1, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %177

199:                                              ; preds = %193, %161
  %200 = phi i32 [ 0, %161 ], [ %194, %193 ]
  %201 = and i32 %200, %121
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr %41, align 4
  %205 = tail call i32 @llvm.cttz.i32(i32 %201, i1 true) #9, !range !17
  %206 = trunc i32 %205 to i8
  %207 = tail call i32 @rvin_set_channel_routing(ptr noundef %204, i8 noundef zeroext %206) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = getelementptr i8, ptr %34, i32 1596
  store i8 1, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %203, %199, %157, %152, %50
  %212 = phi i32 [ -19, %50 ], [ %207, %203 ], [ 0, %209 ], [ 0, %152 ], [ -19, %157 ], [ -31, %199 ]
  tail call void @mutex_unlock(ptr noundef %31) #9
  br label %213

213:                                              ; preds = %211, %26, %16, %10, %7, %3
  %214 = phi i32 [ %212, %211 ], [ %5, %3 ], [ 0, %16 ], [ 0, %7 ], [ 0, %10 ], [ -16, %26 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_set_channel_routing(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_parallel_notify_bound(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %5 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -872
  %8 = getelementptr i8, ptr %6, i32 316
  tail call void @mutex_lock(ptr noundef %8) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 40, i1 false) #9
  %10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp ult i16 %12, 2
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %16 = zext i16 %12 to i32
  %17 = load ptr, ptr %15, align 4
  br label %18

18:                                               ; preds = %24, %14
  %19 = phi i32 [ 0, %14 ], [ %25, %24 ]
  %20 = getelementptr %struct.media_pad, ptr %17, i32 %19, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %16
  br i1 %26, label %163, label %18

27:                                               ; preds = %18, %3
  %28 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %29 = getelementptr i8, ptr %6, i32 268
  store i32 %28, ptr %29, align 4
  %30 = load i16, ptr %11, align 4
  %31 = icmp ult i16 %30, 2
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %34 = zext i16 %30 to i32
  %35 = load ptr, ptr %33, align 4
  br label %36

36:                                               ; preds = %42, %32
  %37 = phi i32 [ 0, %32 ], [ %43, %42 ]
  %38 = getelementptr %struct.media_pad, ptr %35, i32 %37, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %37, 1
  %44 = icmp eq i32 %43, %34
  br i1 %44, label %45, label %36

45:                                               ; preds = %42, %36, %27
  %46 = phi i32 [ 0, %27 ], [ %37, %36 ], [ -22, %42 ]
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #9
  %48 = getelementptr i8, ptr %6, i32 272
  store i32 %47, ptr %48, align 8
  %49 = getelementptr i8, ptr %6, i32 -864
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.rvin_info, ptr %50, i32 0, i32 1
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %165

54:                                               ; preds = %45
  %55 = getelementptr i8, ptr %6, i32 748
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 1
  store i32 0, ptr %56, align 4
  store i32 %28, ptr %4, align 4
  %57 = icmp eq ptr %1, null
  %58 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %59 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %59, i32 0, i32 1
  br i1 %57, label %91, label %62

62:                                               ; preds = %85, %54
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %63, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %91, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %65, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %91, label %71

71:                                               ; preds = %67
  br i1 %60, label %75, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %61, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi ptr [ %69, %75 ], [ %73, %72 ]
  %78 = call i32 %77(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %4) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, ptr %56, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %56, align 4
  %83 = load i32, ptr %9, align 4
  switch i32 %83, label %85 [
    i32 8209, label %84
    i32 8207, label %84
    i32 8198, label %84
    i32 8216, label %84
    i32 4106, label %84
  ]

84:                                               ; preds = %80, %80, %80, %80, %80
  store i32 %83, ptr %55, align 4
  br label %94

85:                                               ; preds = %80
  %86 = load i32, ptr %55, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %62, label %94

88:                                               ; preds = %76
  %89 = load i32, ptr %55, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88, %67, %62, %54
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.18, ptr noundef %93) #10
  br label %163

94:                                               ; preds = %88, %85, %84
  %95 = load ptr, ptr %58, align 4
  %96 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %118, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %97, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %104, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi ptr [ %101, %110 ], [ %108, %106 ]
  %113 = getelementptr i8, ptr %6, i32 -48
  %114 = call i32 %112(ptr noundef nonnull %1, ptr noundef %113) #9
  %115 = freeze i32 %114
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  switch i32 %115, label %163 [
    i32 -19, label %118
    i32 -515, label %118
  ]

118:                                              ; preds = %117, %117, %111, %99, %94
  %119 = getelementptr i8, ptr %6, i32 848
  store i64 0, ptr %119, align 8
  %120 = load ptr, ptr %58, align 4
  %121 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %122, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %129, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi ptr [ %126, %135 ], [ %133, %131 ]
  %138 = call i32 %137(ptr noundef nonnull %1, ptr noundef %119) #9
  %139 = icmp slt i32 %138, 0
  %140 = icmp ne i32 %138, -515
  %141 = and i1 %139, %140
  br i1 %141, label %163, label %142

142:                                              ; preds = %136, %124, %118
  %143 = getelementptr i8, ptr %6, i32 88
  %144 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %143, i32 noundef 16, ptr noundef null, ptr noundef null) #9
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %142
  %147 = call ptr @v4l2_ctrl_new_std(ptr noundef %143, ptr noundef nonnull @rvin_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #9
  %148 = getelementptr i8, ptr %6, i32 148
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = call i32 @v4l2_ctrl_add_handler(ptr noundef %143, ptr noundef %153, ptr noundef null, i1 noundef zeroext true) #9
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  call void @v4l2_ctrl_handler_free(ptr noundef %143) #9
  %157 = getelementptr i8, ptr %6, i32 -132
  store ptr null, ptr %157, align 4
  br label %163

158:                                              ; preds = %151
  %159 = getelementptr i8, ptr %6, i32 -132
  store ptr %143, ptr %159, align 4
  br label %165

160:                                              ; preds = %146
  call void @v4l2_ctrl_handler_free(ptr noundef %143) #9
  %161 = getelementptr i8, ptr %6, i32 -132
  store ptr null, ptr %161, align 4
  %162 = icmp slt i32 %149, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160, %156, %142, %136, %117, %91, %24
  %164 = phi i32 [ %144, %142 ], [ %154, %156 ], [ %149, %160 ], [ %138, %136 ], [ %115, %117 ], [ -22, %91 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  call void @mutex_unlock(ptr noundef %8) #9
  br label %168

165:                                              ; preds = %160, %158, %45
  %166 = getelementptr i8, ptr %6, i32 252
  store ptr %1, ptr %166, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  call void @mutex_unlock(ptr noundef %8) #9
  %167 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 12
  store ptr %7, ptr %167, align 4
  br label %168

168:                                              ; preds = %165, %163
  %169 = phi i32 [ 0, %165 ], [ %164, %163 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_parallel_notify_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -872
  %5 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %3, i1 noundef zeroext false) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #10
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 -856
  %11 = getelementptr i8, ptr %3, i32 -72
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @rvin_v4l2_register(ptr noundef %4) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %15, %9
  %19 = getelementptr i8, ptr %3, i32 -864
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.rvin_info, ptr %20, i32 0, i32 1
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %3, i32 252
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %3, i32 268
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = getelementptr i8, ptr %3, i32 272
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  %33 = tail call i32 @media_create_pad_link(ptr noundef %26, i16 noundef zeroext %29, ptr noundef %10, i16 noundef zeroext %32, i32 noundef 0) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.media_entity, ptr %26, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %3, i32 -840
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.19, ptr noundef %38, ptr noundef %40, i32 noundef %33) #10
  br label %41

41:                                               ; preds = %35, %24, %18, %15, %7
  %42 = phi i32 [ %5, %7 ], [ %16, %15 ], [ 0, %18 ], [ %33, %35 ], [ 0, %24 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rvin_parallel_notify_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -872
  %7 = getelementptr i8, ptr %5, i32 316
  tail call void @mutex_lock(ptr noundef %7) #9
  tail call void @rvin_v4l2_unregister(ptr noundef %6) #9
  %8 = getelementptr i8, ptr %5, i32 252
  store ptr null, ptr %8, align 4
  %9 = getelementptr i8, ptr %5, i32 -864
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %5, i32 88
  tail call void @v4l2_ctrl_handler_free(ptr noundef %15) #9
  %16 = getelementptr i8, ptr %5, i32 -132
  store ptr null, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %3
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @rvin_stop_streaming(ptr noundef %3) #9
  store i32 4, ptr %4, align 8
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rvin_info, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 9
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 4
  %17 = select i1 %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %3, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.rvin_group, ptr %19, i32 0, i32 5, i32 %17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !12

23:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1121, i32 noundef 9, ptr noundef null) #9
  br label %32

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.rvin_dev, ptr %21, i32 0, i32 21
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i8
  %28 = tail call i32 @rvin_set_channel_routing(ptr noundef nonnull %21, i8 noundef zeroext %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %7
  %31 = tail call i32 @rvin_start_streaming(ptr noundef %3) #9
  br label %32

32:                                               ; preds = %30, %24, %23, %1
  %33 = phi i32 [ %31, %30 ], [ %28, %24 ], [ 0, %1 ], [ -19, %23 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_stop_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rvin_start_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 586128, i64 2148076099, i64 2148076125, i64 2148076172, i64 2148076194, i64 2148076222, i64 2148076242}
!11 = !{i64 2148088972, i64 2148089004, i64 2148089033, i64 2148089067, i64 2148089098, i64 2148089121}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148189194}
!15 = !{i64 2148091329, i64 2148091361, i64 2148091390, i64 2148091424, i64 2148091455, i64 2148091478}
!16 = !{i64 2149038257}
!17 = !{i32 0, i32 33}
