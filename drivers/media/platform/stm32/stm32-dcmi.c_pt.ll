; ModuleID = '/llk/IR/drivers/media/platform/stm32/stm32-dcmi.c_pt.bc'
source_filename = "../drivers/media/platform/stm32/stm32-dcmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.lock_class_key = type {}
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.dcmi_format = type { i32, i32, i8 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.74, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.74 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.stm32_dcmi = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, i32, %struct.v4l2_device, ptr, %struct.v4l2_async_notifier, ptr, %struct.v4l2_format, %struct.v4l2_rect, i8, ptr, i32, ptr, ptr, i32, %struct.dcmi_framesize, %struct.v4l2_rect, %struct.mutex, %struct.vb2_queue, %struct.v4l2_fwnode_bus_parallel, i32, %struct.completion, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.media_device, %struct.media_pad, %struct.media_pipeline }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.88, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.88 = type { i8 }
%struct.dcmi_framesize = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.107, i16, i16, i16, [10 x i16] }
%union.anon.107 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.103, [2 x i32] }
%union.anon.103 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.104, [2 x i32] }
%union.anon.104 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.dcmi_buf = type { %struct.vb2_v4l2_buffer, i8, i32, i32, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.77, i32 }
%union.anon.77 = type { i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }

@stm32_dcmi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dcmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author296 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [46 x i8] c"author=Hugues Fruchet <hugues.fruchet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [76 x i8] c"description=STMicroelectronics STM32 Digital Camera Memory Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@stm32_dcmi_driver = internal global %struct.platform_driver { ptr @dcmi_probe, ptr @dcmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dcmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"stm32-dcmi\00", align 1
@dcmi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dcmi_suspend, ptr @dcmi_resume, ptr @dcmi_suspend, ptr @dcmi_resume, ptr @dcmi_suspend, ptr @dcmi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_runtime_suspend, ptr @dcmi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not find a match in devicetree\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not get reset control\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not find the endpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"CSI bus not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"BT656 bus conflicts with %u bits bus width (8 bits required)\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Could not get resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Could not map registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Unable to get mclk\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to request DMA channel: %d\0A\00", align 1
@dcmi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"&dcmi->lock\00", align 1
@dcmi_probe.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"&dcmi->dma_lock\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@dcmi_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @dcmi_open, ptr @dcmi_release }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"stm32_dcmi\00", align 1
@dcmi_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @dcmi_querycap, ptr @dcmi_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @dcmi_enum_input, ptr @dcmi_g_input, ptr @dcmi_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_selection, ptr @dcmi_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcmi_g_parm, ptr @dcmi_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr @dcmi_enum_framesizes, ptr @dcmi_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"Failed to init media entity pad\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@dcmi_video_qops = internal constant %struct.vb2_ops { ptr @dcmi_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @dcmi_buf_init, ptr @dcmi_buf_prepare, ptr null, ptr null, ptr @dcmi_start_streaming, ptr @dcmi_stop_streaming, ptr @dcmi_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.20 = private unnamed_addr constant [32 x i8] c"Failed to initialize vb2 queue\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to assert the reset line\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Failed to deassert the reset line\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Probe done\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.25 = private unnamed_addr constant [57 x i8] c"%s: Failed to set format 0x%x %ux%u on \22%s\22:%d pad (%d)\0A\00", align 1
@__func__.dcmi_pipeline_s_fmt = private unnamed_addr constant [20 x i8] c"dcmi_pipeline_s_fmt\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"STM32 Camera Memory Interface\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"platform:dcmi\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"%s data will not fit into plane (%lu < %lu)\0A\00", align 1
@__func__.dcmi_buf_prepare = private unnamed_addr constant [17 x i8] c"dcmi_buf_prepare\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"%s: Failed to start streaming, cannot get sync (%d)\0A\00", align 1
@__func__.dcmi_start_streaming = private unnamed_addr constant [21 x i8] c"dcmi_start_streaming\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"%s: Failed to start streaming, media pipeline start error (%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"%s: Start streaming failed, cannot start capture\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"%s: \22%s\22 failed to %s streaming (%d)\0A\00", align 1
@__func__.dcmi_pipeline_s_stream = private unnamed_addr constant [23 x i8] c"dcmi_pipeline_s_stream\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"%s: DMA channel config failed (%d)\0A\00", align 1
@__func__.dcmi_start_dma = private unnamed_addr constant [15 x i8] c"dcmi_start_dma\00", align 1
@.str.38 = private unnamed_addr constant [73 x i8] c"%s: DMA dmaengine_prep_slave_single failed for buffer phy=%pad size=%zu\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"%s: DMA submission failed\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"%s: Received DMA_PAUSED\0A\00", align 1
@__func__.dcmi_dma_callback = private unnamed_addr constant [18 x i8] c"dcmi_dma_callback\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"%s: Received DMA_ERROR\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"%s: Cannot restart capture on DMA complete\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"%s: Received unknown status\0A\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Some errors found while streaming: errors=%d (overrun=%d), buffers=%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"%s: Cannot restart capture on overflow or error\0A\00", align 1
@__func__.dcmi_buf_queue = private unnamed_addr constant [15 x i8] c"dcmi_buf_queue\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"Failed to get next endpoint\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Failed to add subdev notifier\0A\00", align 1
@dcmi_graph_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @dcmi_graph_notify_bound, ptr @dcmi_graph_notify_complete, ptr @dcmi_graph_notify_unbind }, align 4
@.str.48 = private unnamed_addr constant [29 x i8] c"Failed to register notifier\0A\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"Failed to create media pad link with subdev \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"Source subdevice not found\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"No supported mediabus format found\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Could not initialize framesizes\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Could not get sensor bounds\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Could not set default format\0A\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Unable to request irq %d\0A\00", align 1
@dcmi_formats = internal constant [8 x %struct.dcmi_format] [%struct.dcmi_format { i32 1346520914, i32 4104, i8 2 }, %struct.dcmi_format { i32 1448695129, i32 8200, i8 2 }, %struct.dcmi_format { i32 1498831189, i32 8198, i8 2 }, %struct.dcmi_format { i32 1195724874, i32 16385, i8 1 }, %struct.dcmi_format { i32 825770306, i32 12289, i8 1 }, %struct.dcmi_format { i32 1196573255, i32 12307, i8 1 }, %struct.dcmi_format { i32 1195528775, i32 12290, i8 1 }, %struct.dcmi_format { i32 1111967570, i32 12308, i8 1 }], align 4
@.str.56 = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"%s: Cannot get JPEG size from DMA\0A\00", align 1
@__func__.dcmi_process_jpeg = private unnamed_addr constant [18 x i8] c"dcmi_process_jpeg\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"%s: Cannot restart capture on JPEG received\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"%s: Failed to prepare_enable clock\0A\00", align 1
@__func__.dcmi_runtime_resume = private unnamed_addr constant [20 x i8] c"dcmi_runtime_resume\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_license299], section "llvm.metadata"
@switch.table.dcmi_start_streaming = private unnamed_addr constant [5 x i32] [i32 1024, i32 0, i32 2048, i32 0, i32 3072], align 4

@__mod_of__stm32_dcmi_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_dcmi_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dcmi_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dcmi_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false)
  %6 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_dcmi_of_match, ptr noundef %3) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #14
  br label %189

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1496, i32 noundef 3520) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %189, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %14 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 4
  store ptr %13, ptr %14, align 8
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = icmp eq ptr %13, inttoptr (i32 -517 to ptr)
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #14
  %19 = load ptr, ptr %14, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %19, %18 ], [ inttoptr (i32 -517 to ptr), %16 ]
  %22 = ptrtoint ptr %21 to i32
  br label %189

23:                                               ; preds = %12
  %24 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #14
  br label %189

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 3
  %29 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %28, ptr noundef nonnull %2) #13
  call void @of_node_put(ptr noundef nonnull %24) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #14
  br label %189

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %35 [
    i32 5, label %38
    i32 2, label %39
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  br label %45

38:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #14
  br label %189

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %44) #14
  br label %189

45:                                               ; preds = %39, %35
  %46 = phi i8 [ %37, %35 ], [ 8, %39 ]
  %47 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 25
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 25, i32 1
  store i8 %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 25, i32 2
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 26
  store i32 %34, ptr %54, align 4
  %55 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = icmp eq i32 %55, 0
  %59 = select i1 %58, i32 -6, i32 %55
  br label %189

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 8
  store i32 %55, ptr %61, align 4
  %62 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %63 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 3
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #14
  br label %189

66:                                               ; preds = %60
  %67 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %62) #13
  %68 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 2
  store ptr %67, ptr %68, align 8
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #14
  %71 = load ptr, ptr %68, align 8
  %72 = ptrtoint ptr %71 to i32
  br label %189

73:                                               ; preds = %66
  %74 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #13
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = icmp eq ptr %74, inttoptr (i32 -517 to ptr)
  br i1 %77, label %189, label %78

78:                                               ; preds = %76
  %79 = ptrtoint ptr %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #14
  br label %189

80:                                               ; preds = %73
  %81 = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.11) #13
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = icmp eq ptr %81, inttoptr (i32 -517 to ptr)
  br i1 %84, label %189, label %85

85:                                               ; preds = %83
  %86 = ptrtoint ptr %81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %86) #14
  br label %189

87:                                               ; preds = %80
  store i32 0, ptr %10, align 8
  %88 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 23
  call void @__mutex_init(ptr noundef %88, ptr noundef nonnull @.str.13, ptr noundef nonnull @dcmi_probe.__key) #13
  %89 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 36
  call void @__mutex_init(ptr noundef %89, ptr noundef nonnull @.str.15, ptr noundef nonnull @dcmi_probe.__key.14) #13
  %90 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 27
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 27, i32 1
  call void @__init_swait_queue_head(ptr noundef %91, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #13
  %92 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 6
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 6, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 1
  store ptr %3, ptr %94, align 4
  %95 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 28
  store ptr %74, ptr %95, align 8
  %96 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 29
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 30
  store ptr %81, ptr %97, align 8
  %98 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24
  %99 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 37
  %100 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 9
  %101 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 9, i32 1
  store ptr %99, ptr %101, align 4
  %102 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 37, i32 2
  %103 = call i32 @strscpy(ptr noundef %102, ptr noundef nonnull @.str, i32 noundef 32) #13
  %104 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 37, i32 5
  %105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %104, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str)
  store ptr %3, ptr %99, align 8
  call void @media_device_init(ptr noundef %99) #13
  %106 = call i32 @v4l2_device_register(ptr noundef %3, ptr noundef %100) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %186

108:                                              ; preds = %87
  %109 = call ptr @video_device_alloc() #13
  %110 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 10
  store ptr %109, ptr %110, align 8
  %111 = icmp eq ptr %109, null
  br i1 %111, label %184, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.video_device, ptr %109, i32 0, i32 3
  store ptr @dcmi_fops, ptr %113, align 4
  %114 = load ptr, ptr %110, align 8
  %115 = getelementptr inbounds %struct.video_device, ptr %114, i32 0, i32 7
  store ptr %100, ptr %115, align 4
  %116 = load ptr, ptr %110, align 8
  %117 = getelementptr inbounds %struct.video_device, ptr %116, i32 0, i32 10
  store ptr %98, ptr %117, align 8
  %118 = load ptr, ptr %110, align 8
  %119 = getelementptr inbounds %struct.video_device, ptr %118, i32 0, i32 12
  %120 = call i32 @strscpy(ptr noundef %119, ptr noundef nonnull @.str.17, i32 noundef 32) #13
  %121 = load ptr, ptr %110, align 8
  %122 = getelementptr inbounds %struct.video_device, ptr %121, i32 0, i32 23
  store ptr @video_device_release, ptr %122, align 8
  %123 = load ptr, ptr %110, align 8
  %124 = getelementptr inbounds %struct.video_device, ptr %123, i32 0, i32 24
  store ptr @dcmi_ioctl_ops, ptr %124, align 4
  %125 = load ptr, ptr %110, align 8
  %126 = getelementptr inbounds %struct.video_device, ptr %125, i32 0, i32 26
  store ptr %88, ptr %126, align 8
  %127 = load ptr, ptr %110, align 8
  %128 = getelementptr inbounds %struct.video_device, ptr %127, i32 0, i32 4
  store i32 83886081, ptr %128, align 8
  %129 = load ptr, ptr %110, align 8
  %130 = getelementptr inbounds %struct.video_device, ptr %129, i32 0, i32 5, i32 8
  store ptr %10, ptr %130, align 8
  %131 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 38
  %132 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 38, i32 4
  store i32 1, ptr %132, align 4
  %133 = load ptr, ptr %110, align 8
  %134 = call i32 @media_entity_pads_init(ptr noundef %133, i16 noundef zeroext 1, ptr noundef %131) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %112
  %137 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.18) #14
  br label %181

138:                                              ; preds = %112
  %139 = load ptr, ptr %110, align 8
  %140 = getelementptr inbounds %struct.media_entity, ptr %139, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = or i32 %141, 1
  store i32 %142, ptr %140, align 4
  %143 = load ptr, ptr %110, align 8
  %144 = getelementptr inbounds %struct.video_device, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 @__video_register_device(ptr noundef %143, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %146) #13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.19) #14
  br label %181

151:                                              ; preds = %138
  store i32 1, ptr %98, align 4
  %152 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 1
  store i32 21, ptr %152, align 4
  %153 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 5
  store ptr %88, ptr %153, align 4
  %154 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 10
  store ptr %10, ptr %154, align 4
  %155 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 12
  store i32 664, ptr %155, align 4
  %156 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 7
  store ptr @dcmi_video_qops, ptr %156, align 4
  %157 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 8
  store ptr @vb2_dma_contig_memops, ptr %157, align 4
  %158 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 13
  store i32 8192, ptr %158, align 4
  %159 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 15
  store i32 2, ptr %159, align 4
  %160 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 24, i32 2
  store ptr %3, ptr %160, align 4
  %161 = call i32 @vb2_queue_init(ptr noundef %98) #13
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #14
  br label %181

164:                                              ; preds = %151
  %165 = call fastcc i32 @dcmi_graph_init(ptr noundef nonnull %10)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %14, align 8
  %169 = call i32 @reset_control_assert(ptr noundef %168) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #13
  %172 = load ptr, ptr %14, align 8
  %173 = call i32 @reset_control_deassert(ptr noundef %172) #13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.23) #14
  %176 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %176, align 8
  call void @pm_runtime_enable(ptr noundef %3) #13
  br label %189

177:                                              ; preds = %171, %167
  %178 = phi ptr [ @.str.21, %167 ], [ @.str.22, %171 ]
  %179 = phi i32 [ %169, %167 ], [ %173, %171 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %178) #14
  %180 = getelementptr inbounds %struct.stm32_dcmi, ptr %10, i32 0, i32 11
  call void @v4l2_async_nf_cleanup(ptr noundef %180) #13
  br label %181

181:                                              ; preds = %177, %164, %163, %149, %136
  %182 = phi i32 [ %134, %136 ], [ %147, %149 ], [ %161, %163 ], [ %165, %164 ], [ %179, %177 ]
  %183 = load ptr, ptr %110, align 8
  call void @video_device_release(ptr noundef %183) #13
  br label %184

184:                                              ; preds = %181, %108
  %185 = phi i32 [ %182, %181 ], [ -12, %108 ]
  call void @v4l2_device_unregister(ptr noundef %100) #13
  br label %186

186:                                              ; preds = %184, %87
  %187 = phi i32 [ %106, %87 ], [ %185, %184 ]
  call void @media_device_cleanup(ptr noundef %99) #13
  %188 = load ptr, ptr %97, align 8
  call void @dma_release_channel(ptr noundef %188) #13
  br label %189

189:                                              ; preds = %186, %175, %85, %83, %78, %76, %70, %65, %57, %43, %38, %31, %26, %20, %9, %8
  %190 = phi i32 [ %22, %20 ], [ %29, %31 ], [ -19, %38 ], [ -19, %43 ], [ %59, %57 ], [ %72, %70 ], [ %187, %186 ], [ 0, %175 ], [ -19, %65 ], [ -19, %26 ], [ -19, %8 ], [ -12, %9 ], [ %86, %85 ], [ -517, %83 ], [ %79, %78 ], [ -517, %76 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 11
  tail call void @v4l2_async_nf_unregister(ptr noundef %5) #13
  tail call void @v4l2_async_nf_cleanup(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 9
  tail call void @v4l2_device_unregister(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 37
  tail call void @media_device_cleanup(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 30
  %9 = load ptr, ptr %8, align 8
  tail call void @dma_release_channel(ptr noundef %9) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_graph_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.46) #14
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 11
  tail call void @v4l2_async_nf_init(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %13 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %11, ptr noundef %12, i32 noundef 28) #13
  tail call void @of_node_put(ptr noundef nonnull %6) #13
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.47) #14
  %17 = ptrtoint ptr %13 to i32
  br label %24

18:                                               ; preds = %10
  store ptr @dcmi_graph_notify_ops, ptr %11, align 4
  %19 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 9
  %20 = tail call i32 @v4l2_async_nf_register(ptr noundef %19, ptr noundef %11) #13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.48) #14
  tail call void @v4l2_async_nf_cleanup(ptr noundef %11) #13
  br label %24

24:                                               ; preds = %22, %18, %15, %8
  %25 = phi i32 [ %17, %15 ], [ %20, %22 ], [ -22, %8 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 23
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = tail call i32 @v4l2_fh_open(ptr noundef %0) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @v4l2_fh_is_singular(ptr noundef %15) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %6, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %23, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi ptr [ %27, %36 ], [ %34, %32 ]
  %39 = tail call i32 %38(ptr noundef nonnull %6, i32 noundef 1) #13
  br label %40

40:                                               ; preds = %37, %18
  %41 = phi i32 [ -19, %18 ], [ %39, %37 ]
  %42 = icmp slt i32 %41, 0
  %43 = icmp ne i32 %41, -515
  %44 = and i1 %42, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %40, %25, %20
  %46 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 13
  %47 = tail call fastcc i32 @dcmi_set_fmt(ptr noundef %4, ptr noundef %46)
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i1 true, i1 %19
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %53, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %60, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %59
  br label %70

67:                                               ; preds = %45, %13
  %68 = phi i32 [ %47, %45 ], [ %11, %13 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %73

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %57, %66 ], [ %64, %62 ]
  %72 = tail call i32 %71(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %73

73:                                               ; preds = %70, %67, %55, %50, %40
  %74 = phi i32 [ %68, %67 ], [ %47, %55 ], [ %47, %50 ], [ %41, %40 ], [ %47, %70 ]
  %75 = tail call i32 @v4l2_fh_release(ptr noundef %0) #13
  br label %76

76:                                               ; preds = %73, %67, %10
  %77 = phi i32 [ %11, %10 ], [ %74, %73 ], [ 0, %67 ]
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %78

78:                                               ; preds = %76, %1
  %79 = phi i32 [ %77, %76 ], [ -512, %1 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @v4l2_fh_is_singular(ptr noundef %9) #13
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #13
  %13 = icmp eq ptr %6, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %25, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ %22, %31 ], [ %29, %27 ]
  %34 = tail call i32 %33(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %35

35:                                               ; preds = %32, %20, %15, %1
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_set_fmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.dcmi_framesize, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = call fastcc i32 @dcmi_try_fmt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %137

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1195724874
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 15
  store i8 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12, %8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.dcmi_format, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = load i32, ptr %5, align 8
  %36 = getelementptr inbounds %struct.dcmi_framesize, ptr %5, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #13
  store i32 1, ptr %3, align 4
  %40 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 %35, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 %37, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %3, i32 16
  store i32 %21, ptr %43, align 4
  %44 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 %23, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %3, i32 24
  store i32 %25, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %3, i32 28
  store i16 %28, ptr %46, align 4
  %47 = getelementptr inbounds i8, ptr %3, i32 30
  store i16 %31, ptr %47, align 2
  %48 = getelementptr inbounds i8, ptr %3, i32 32
  store i16 %34, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %3, i32 34
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(54) %49, i8 0, i32 54, i1 false)
  %50 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %50, i32 0, i32 5
  br label %53

53:                                               ; preds = %127, %18
  %54 = phi ptr [ null, %18 ], [ %84, %127 ]
  %55 = phi ptr [ null, %18 ], [ %87, %127 ]
  %56 = phi i1 [ false, %18 ], [ true, %127 ]
  %57 = phi ptr [ null, %18 ], [ %121, %127 ]
  %58 = phi ptr [ %39, %18 ], [ %125, %127 ]
  %59 = getelementptr inbounds %struct.media_entity, ptr %58, i32 0, i32 5
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = icmp eq i16 %60, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.media_entity, ptr %58, i32 0, i32 9
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 -32
  %67 = shl nuw nsw i32 %61, 5
  %68 = getelementptr i8, ptr %66, i32 %67
  br label %72

69:                                               ; preds = %72
  %70 = add nuw nsw i32 %73, 1
  %71 = icmp eq i32 %70, %61
  br i1 %71, label %78, label %72

72:                                               ; preds = %69, %63
  %73 = phi i32 [ 0, %63 ], [ %70, %69 ]
  %74 = getelementptr %struct.media_pad, ptr %65, i32 %73, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %69, label %80

78:                                               ; preds = %69, %53
  %79 = phi ptr [ %55, %53 ], [ %68, %69 ]
  br i1 %56, label %82, label %131

80:                                               ; preds = %72
  %81 = getelementptr %struct.media_pad, ptr %65, i32 %73
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %79, %78 ], [ %81, %80 ]
  %84 = phi ptr [ %54, %78 ], [ %81, %80 ]
  %85 = icmp eq ptr %58, null
  %86 = icmp eq ptr %57, null
  %87 = select i1 %86, ptr %83, ptr %57
  %88 = getelementptr inbounds %struct.media_pad, ptr %87, i32 0, i32 2
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  store i32 %90, ptr %40, align 4
  br i1 %85, label %113, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.v4l2_subdev, ptr %58, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %93, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %95, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  br i1 %51, label %105, label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %52, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi ptr [ %99, %105 ], [ %103, %102 ]
  %108 = call i32 %107(ptr noundef nonnull %58, ptr noundef null, ptr noundef nonnull %3) #13
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.media_pad, ptr %87, i32 0, i32 2
  %112 = load i16, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %97, %91, %82
  %114 = phi i16 [ %112, %110 ], [ %89, %97 ], [ %89, %91 ], [ %89, %82 ]
  %115 = phi i32 [ %108, %110 ], [ -19, %82 ], [ -515, %91 ], [ -515, %97 ]
  %116 = zext i16 %114 to i32
  %117 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.v4l2_subdev, ptr %58, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dcmi_pipeline_s_fmt, i32 noundef %21, i32 noundef %35, i32 noundef %37, ptr noundef %119, i32 noundef %116, i32 noundef %115) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  br label %137

120:                                              ; preds = %106
  %121 = call ptr @media_entity_remote_pad(ptr noundef %84) #13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.media_pad, ptr %121, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.media_entity, ptr %125, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %53, label %131

131:                                              ; preds = %127, %123, %120, %78
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  %132 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(204) %132, ptr noundef align 4 dereferenceable(204) %1, i32 204, i1 false)
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 18
  store ptr %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 21
  %136 = load i64, ptr %5, align 8
  store i64 %136, ptr %135, align 4
  br label %137

137:                                              ; preds = %131, %113, %2
  %138 = phi i32 [ 0, %131 ], [ %6, %2 ], [ %115, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_try_fmt(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca %struct.v4l2_subdev_pad_config, align 4
  %6 = alloca %struct.v4l2_subdev_state, align 4
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i32 80, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %7, i8 0, i32 88, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %186, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  br label %20

17:                                               ; preds = %20
  %18 = add nuw i32 %21, 1
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %22 = getelementptr ptr, ptr %16, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %17

26:                                               ; preds = %20
  %27 = icmp eq ptr %23, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %26, %17
  %29 = add i32 %12, -1
  %30 = getelementptr ptr, ptr %16, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %9, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %10, %26 ], [ %32, %28 ]
  %35 = phi ptr [ %23, %26 ], [ %31, %28 ]
  %36 = load i32, ptr %8, align 4
  %37 = call i32 @llvm.umax.i32(i32 %36, i32 16)
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 2592)
  store i32 %38, ptr %8, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @llvm.umax.i32(i32 %40, i32 16)
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 2592)
  store i32 %42, ptr %39, align 4
  %43 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 15
  %44 = load i8, ptr %43, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = icmp eq i32 %34, 1195724874
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %82, label %48

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 20
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 19
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ null, %52 ], [ %72, %55 ]
  %57 = phi i32 [ 0, %52 ], [ %73, %55 ]
  %58 = phi i32 [ -1, %52 ], [ %71, %55 ]
  %59 = getelementptr %struct.dcmi_framesize, ptr %54, i32 %57
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %60, %38
  %62 = getelementptr %struct.dcmi_framesize, ptr %54, i32 %57, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %63, %42
  %65 = add i32 %64, %61
  %66 = icmp sgt i32 %61, -1
  %67 = icmp sgt i32 %64, -1
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ult i32 %65, %58
  %70 = select i1 %68, i1 %69, i1 false
  %71 = select i1 %70, i32 %65, i32 %58
  %72 = select i1 %70, ptr %59, ptr %56
  %73 = add nuw i32 %57, 1
  %74 = icmp eq i32 %73, %50
  br i1 %74, label %75, label %55

75:                                               ; preds = %55
  %76 = icmp eq ptr %72, null
  %77 = select i1 %76, ptr %54, ptr %72
  %78 = load i64, ptr %77, align 4
  %79 = trunc i64 %78 to i32
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  store i32 %79, ptr %8, align 4
  store i32 %81, ptr %39, align 4
  br label %82

82:                                               ; preds = %75, %48, %33
  %83 = phi i32 [ %81, %75 ], [ %42, %48 ], [ %42, %33 ]
  %84 = phi i32 [ %79, %75 ], [ %38, %48 ], [ %38, %33 ]
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2
  %86 = getelementptr inbounds %struct.dcmi_format, ptr %35, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  store i32 %84, ptr %85, align 4
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 1
  store i32 %83, ptr %88, align 4
  %89 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 3
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 4
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 5
  store i16 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = trunc i32 %100 to i16
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 6
  store i16 %101, ptr %102, align 2
  %103 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = trunc i32 %104 to i16
  %106 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 7
  store i16 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 2
  store i32 %87, ptr %107, align 4
  %108 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 12
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %186, label %111

111:                                              ; preds = %82
  %112 = getelementptr inbounds %struct.v4l2_subdev, ptr %109, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %113, i32 0, i32 7
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %186, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %115, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %186, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %122, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %121
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi ptr [ %119, %128 ], [ %126, %124 ]
  %131 = call i32 %130(ptr noundef nonnull %109, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %186, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr %85, align 4
  store i32 %134, ptr %8, align 4
  %135 = load i32, ptr %88, align 4
  store i32 %135, ptr %39, align 4
  %136 = load i32, ptr %91, align 4
  store i32 %136, ptr %89, align 4
  %137 = load i32, ptr %94, align 4
  store i32 %137, ptr %92, align 4
  %138 = load i16, ptr %98, align 4
  %139 = zext i16 %138 to i32
  store i32 %139, ptr %95, align 4
  %140 = load i16, ptr %102, align 2
  %141 = zext i16 %140 to i32
  store i32 %141, ptr %99, align 4
  %142 = load i16, ptr %106, align 4
  %143 = zext i16 %142 to i32
  store i32 %143, ptr %103, align 4
  br i1 %47, label %170, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 14
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 14, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 14, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 14, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = call i32 @llvm.umin.i32(i32 %150, i32 %134)
  %154 = call i32 @llvm.umin.i32(i32 %152, i32 %135)
  %155 = call i32 @llvm.smax.i32(i32 %146, i32 0)
  %156 = call i32 @llvm.smax.i32(i32 %148, i32 0)
  %157 = add i32 %153, %155
  %158 = icmp ugt i32 %157, %134
  %159 = sub i32 %134, %153
  %160 = select i1 %158, i32 %159, i32 %155
  %161 = add i32 %154, %156
  %162 = icmp ugt i32 %161, %135
  %163 = sub i32 %135, %154
  %164 = select i1 %162, i32 %163, i32 %156
  %165 = call i32 @llvm.smax.i32(i32 %164, i32 0)
  %166 = call i32 @llvm.smin.i32(i32 %165, i32 %163)
  %167 = call i32 @llvm.smax.i32(i32 %160, i32 0)
  %168 = call i32 @llvm.smin.i32(i32 %167, i32 %159)
  store i32 %168, ptr %145, align 4
  store i32 %166, ptr %147, align 4
  store i32 %153, ptr %149, align 4
  store i32 %154, ptr %151, align 4
  store i32 %153, ptr %8, align 4
  %169 = load i32, ptr %151, align 4
  store i32 %169, ptr %39, align 4
  br label %170

170:                                              ; preds = %144, %133
  %171 = phi i32 [ %169, %144 ], [ %135, %133 ]
  %172 = phi i32 [ %153, %144 ], [ %134, %133 ]
  store i32 1, ptr %89, align 4
  %173 = getelementptr inbounds %struct.dcmi_format, ptr %35, i32 0, i32 2
  %174 = load i8, ptr %173, align 4
  %175 = zext i8 %174 to i32
  %176 = mul i32 %172, %175
  %177 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %176, ptr %177, align 4
  %178 = mul i32 %176, %171
  %179 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  store i32 %178, ptr %179, align 4
  %180 = icmp eq ptr %2, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %170
  store ptr %35, ptr %2, align 4
  br label %182

182:                                              ; preds = %181, %170
  %183 = icmp eq ptr %3, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %182
  store i32 %134, ptr %3, align 4
  %185 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %135, ptr %185, align 4
  br label %186

186:                                              ; preds = %184, %182, %129, %117, %111, %82, %4
  %187 = phi i32 [ %131, %129 ], [ 0, %184 ], [ 0, %182 ], [ -515, %111 ], [ -515, %117 ], [ -19, %82 ], [ -61, %4 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #13
  %5 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %6 = tail call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef 32) #13
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %8 = tail call i32 @strscpy(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef 32) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_enum_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr ptr, ptr %13, i32 %7
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %11, %3
  %19 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_g_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(204) %2, ptr noundef align 8 dereferenceable(204) %7, i32 204, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 24, i32 28
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @dcmi_set_fmt(ptr noundef %6, ptr noundef %2)
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -16, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @dcmi_try_fmt(ptr noundef %6, ptr noundef %2, ptr noundef null, ptr noundef null)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_enum_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef 32) #13
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dcmi_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dcmi_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #9 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %30 [
    i32 1, label %12
    i32 2, label %12
    i32 0, label %15
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %13, ptr noundef align 4 dereferenceable(16) %14, i32 16, i1 false)
  br label %30

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 15
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  br i1 %18, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %21, i32 16, i1 false)
  br label %30

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %23, align 4
  store i32 0, ptr %19, align 4
  %24 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 13, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 13, i32 1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %22, %20, %12, %9, %3
  %31 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %9 ], [ 0, %20 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.v4l2_subdev_pad_config, align 4
  %6 = alloca %struct.v4l2_subdev_state, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %123

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %123

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 13, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 22, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 22, i32 3
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i32 80, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr %5, ptr %6, align 4
  %31 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %84, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 16
  %36 = load ptr, ptr %35, align 8
  br label %40

37:                                               ; preds = %40
  %38 = add nuw i32 %41, 1
  %39 = icmp eq i32 %38, %32
  br i1 %39, label %48, label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ 0, %34 ], [ %38, %37 ]
  %42 = getelementptr ptr, ptr %36, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %26
  br i1 %45, label %46, label %37

46:                                               ; preds = %40
  %47 = icmp eq ptr %43, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %46, %37
  %49 = add i32 %32, -1
  %50 = getelementptr ptr, ptr %36, i32 %49
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi ptr [ %43, %46 ], [ %51, %48 ]
  %54 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  %55 = getelementptr inbounds %struct.dcmi_format, ptr %53, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  store i32 %28, ptr %54, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  store i32 %30, ptr %57, align 4
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 3
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %58, i8 0, i64 14, i1 false)
  store i32 %56, ptr %59, align 4
  %60 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.v4l2_subdev, ptr %61, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %65, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %67, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %74, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi ptr [ %71, %80 ], [ %78, %76 ]
  %83 = call i32 %82(ptr noundef nonnull %61, ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  br label %84

84:                                               ; preds = %81, %69, %63, %52, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  %85 = call i32 @llvm.umin.i32(i32 %15, i32 %28)
  %86 = call i32 @llvm.umin.i32(i32 %17, i32 %30)
  %87 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %88 = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %89 = add i32 %85, %87
  %90 = icmp ugt i32 %89, %28
  %91 = sub i32 %28, %85
  %92 = select i1 %90, i32 %91, i32 %87
  %93 = add i32 %86, %88
  %94 = icmp ugt i32 %93, %30
  %95 = sub i32 %30, %86
  %96 = select i1 %94, i32 %95, i32 %88
  %97 = call i32 @llvm.smax.i32(i32 %96, i32 0)
  %98 = call i32 @llvm.smin.i32(i32 %97, i32 %95)
  %99 = call i32 @llvm.smax.i32(i32 %92, i32 0)
  %100 = call i32 @llvm.smin.i32(i32 %99, i32 %91)
  %101 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 22, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %84
  %105 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 22
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %100, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32, ptr %27, align 4
  %110 = icmp eq i32 %85, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, ptr %29, align 4
  %113 = icmp eq i32 %86, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %108, %104, %84
  %115 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 15
  store i8 1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 14
  store i32 %100, ptr %116, align 4
  %117 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 14, i32 1
  store i32 %98, ptr %117, align 4
  %118 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 14, i32 2
  store i32 %85, ptr %118, align 4
  %119 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 14, i32 3
  store i32 %86, ptr %119, align 4
  br label %122

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.stm32_dcmi, ptr %9, i32 0, i32 15
  store i8 0, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %114
  store i32 %100, ptr %10, align 4
  store i32 %98, ptr %12, align 4
  store i32 %85, ptr %14, align 4
  store i32 %86, ptr %16, align 4
  br label %123

123:                                              ; preds = %122, %20, %3
  %124 = phi i32 [ 0, %122 ], [ -22, %20 ], [ -22, %3 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @v4l2_g_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %6, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @v4l2_s_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %8, i8 0, i64 60, i1 false)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 7
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  br label %22

19:                                               ; preds = %22
  %20 = add nuw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %67, label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr ptr, ptr %18, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %19

28:                                               ; preds = %22
  %29 = icmp eq ptr %25, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.dcmi_format, ptr %25, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi ptr [ %45, %54 ], [ %52, %50 ]
  %57 = call i32 %56(ptr noundef nonnull %35, ptr noundef null, ptr noundef nonnull %4) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %59, %55, %43, %37, %30, %28, %19, %3
  %68 = phi i32 [ 0, %59 ], [ -22, %28 ], [ %57, %55 ], [ -22, %3 ], [ -515, %37 ], [ -515, %43 ], [ -19, %30 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %8, i8 0, i64 60, i1 false)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 6
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 17
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  br label %28

25:                                               ; preds = %28
  %26 = add nuw i32 %29, 1
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %70, label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ 0, %22 ], [ %26, %25 ]
  %30 = getelementptr ptr, ptr %24, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %25

34:                                               ; preds = %28
  %35 = icmp eq ptr %31, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.dcmi_format, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi ptr [ %51, %60 ], [ %58, %56 ]
  %63 = call i32 %62(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %4) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %68 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 5
  %69 = load i64, ptr %68, align 4
  store i64 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %61, %49, %43, %36, %34, %25, %3
  %71 = phi i32 [ 0, %65 ], [ -22, %34 ], [ %63, %61 ], [ -22, %3 ], [ -515, %43 ], [ -515, %49 ], [ -19, %36 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dcmi_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #10 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %7, i32 0, i32 13, i32 1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4
  %14 = icmp ult i32 %13, %9
  %15 = select i1 %14, i32 -22, i32 0
  br label %17

16:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  store i32 %9, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 0, %16 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_buf_init(ptr noundef %0) #11 {
  %2 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 4
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 4, i32 1
  store ptr %2, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_buf_prepare(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 13, i32 1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %22, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dcmi_buf_prepare, i32 noundef %17, i32 noundef %6) #14
  br label %39

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %6, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 1
  %24 = load i8, ptr %23, align 8, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #13
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %7, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 3
  store i32 0, ptr %33, align 8
  store i8 1, ptr %23, align 8
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 3
  store i32 %36, ptr %37, align 8
  store i8 1, ptr %23, align 8
  %38 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %36, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %32, %22, %16
  %40 = phi i32 [ -22, %16 ], [ 0, %22 ], [ 0, %32 ], [ 0, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.dcmi_start_streaming, i32 noundef %7) #14
  br label %144

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 39
  %21 = tail call i32 @media_pipeline_start(ptr noundef %19, ptr noundef %20) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dcmi_start_streaming, i32 noundef %21) #14
  br label %140

25:                                               ; preds = %17
  %26 = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %4, i32 noundef 1) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %137

28:                                               ; preds = %25
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %29 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 25
  %30 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 25, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = add i8 %31, -10
  %33 = icmp ult i8 %32, 5
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = sext i8 %32 to i32
  %36 = getelementptr inbounds [5 x i32], ptr @switch.table.dcmi_start_streaming, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i32 [ 0, %28 ], [ %37, %34 ]
  %40 = load i32, ptr %29, align 4
  %41 = shl i32 %40, 3
  %42 = and i32 %41, 128
  %43 = or i32 %42, %39
  %44 = shl i32 %40, 4
  %45 = and i32 %44, 64
  %46 = or i32 %43, %45
  %47 = lshr i32 %40, 1
  %48 = and i32 %47, 32
  %49 = or i32 %46, %48
  %50 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 26
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = or i32 %49, 16
  %55 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #13, !srcloc !14
  %58 = load ptr, ptr %55, align 8
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -6455041) #13, !srcloc !14
  br label %60

60:                                               ; preds = %53, %38
  %61 = phi i32 [ %54, %53 ], [ %49, %38 ]
  %62 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #13, !srcloc !14
  %64 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 15
  %65 = load i8, ptr %64, align 4, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 14
  %69 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 14, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 16
  %72 = add i32 %71, -65536
  %73 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 14, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 1
  %76 = add i32 %75, -1
  %77 = or i32 %76, %72
  %78 = load ptr, ptr %62, align 8
  %79 = getelementptr i8, ptr %78, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #13, !srcloc !14
  %80 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 14, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, ptr %68, align 4
  %84 = shl i32 %83, 1
  %85 = or i32 %84, %82
  %86 = load ptr, ptr %62, align 8
  %87 = getelementptr i8, ptr %86, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #13, !srcloc !14
  %88 = load ptr, ptr %62, align 8
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #13, !srcloc !15
  %90 = or i32 %89, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %90) #13, !srcloc !14
  br label %91

91:                                               ; preds = %67, %60
  %92 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 18
  %93 = load ptr, ptr %92, align 8
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 1195724874
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load ptr, ptr %62, align 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #13, !srcloc !15
  %99 = or i32 %98, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %99) #13, !srcloc !14
  br label %100

100:                                              ; preds = %96, %91
  %101 = load ptr, ptr %62, align 8
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #13, !srcloc !15
  %103 = or i32 %102, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %103) #13, !srcloc !14
  %104 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 5
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 33
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 34
  store i32 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 35
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 6
  %109 = load volatile ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %108
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 29
  store i32 1, ptr %112, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %113 = load i16, ptr %4, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %161

115:                                              ; preds = %100
  %116 = getelementptr i8, ptr %109, i32 -652
  %117 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 7
  store ptr %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 29
  store i32 2, ptr %118, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %119 = load i16, ptr %4, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %121 = tail call fastcc i32 @dcmi_start_capture(ptr noundef %4, ptr noundef %116)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dcmi_start_streaming) #14
  %125 = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %4, i32 noundef 0) #13
  br label %137

126:                                              ; preds = %115
  %127 = load ptr, ptr %92, align 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 1195724874
  %130 = load ptr, ptr %62, align 8
  %131 = getelementptr i8, ptr %130, i32 12
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #13
  br i1 %129, label %133, label %135

133:                                              ; preds = %126
  %134 = or i32 %132, 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %134) #13, !srcloc !14
  br label %161

135:                                              ; preds = %126
  %136 = or i32 %132, 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %136) #13, !srcloc !14
  br label %161

137:                                              ; preds = %123, %25
  %138 = phi i32 [ %26, %25 ], [ %121, %123 ]
  %139 = load ptr, ptr %18, align 8
  tail call void @media_pipeline_stop(ptr noundef %139) #13
  br label %140

140:                                              ; preds = %137, %23
  %141 = phi i32 [ %21, %23 ], [ %138, %137 ]
  %142 = load ptr, ptr %5, align 4
  %143 = tail call i32 @__pm_runtime_idle(ptr noundef %142, i32 noundef 5) #13
  br label %144

144:                                              ; preds = %140, %15
  %145 = phi i32 [ %7, %15 ], [ %141, %140 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %146 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 6
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %157, label %149

149:                                              ; preds = %149, %144
  %150 = phi ptr [ %152, %149 ], [ %147, %144 ]
  %151 = getelementptr i8, ptr %150, i32 -652
  %152 = load ptr, ptr %150, align 4
  %153 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  store ptr %154, ptr %155, align 4
  store volatile ptr %152, ptr %154, align 4
  store volatile ptr %150, ptr %150, align 4
  store ptr %150, ptr %153, align 4
  tail call void @vb2_buffer_done(ptr noundef %151, i32 noundef 3) #13
  %156 = icmp eq ptr %152, %146
  br i1 %156, label %157, label %149

157:                                              ; preds = %149, %144
  %158 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 7
  store ptr null, ptr %158, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %159 = load i16, ptr %4, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %161

161:                                              ; preds = %157, %135, %133, %111
  %162 = phi i32 [ %145, %157 ], [ 0, %111 ], [ 0, %135 ], [ 0, %133 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dcmi_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @dcmi_pipeline_s_stream(ptr noundef %3, i32 noundef 0) #13
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call void @media_pipeline_stop(ptr noundef %6) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #13
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !15
  %11 = and i32 %10, -8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #13, !srcloc !14
  %12 = load ptr, ptr %7, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !15
  %14 = and i32 %13, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #13, !srcloc !14
  %15 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %1
  %19 = phi ptr [ %21, %18 ], [ %16, %1 ]
  %20 = getelementptr i8, ptr %19, i32 -652
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %22, align 4
  tail call void @vb2_buffer_done(ptr noundef %20, i32 noundef 6) #13
  %25 = icmp eq ptr %21, %15
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %1
  %27 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 7
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 29
  store i32 0, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %29 = load i16, ptr %3, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %31 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 36
  tail call void @mutex_lock(ptr noundef %31) #13
  %32 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 30
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 47
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %26
  %39 = tail call i32 %36(ptr noundef %33) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 48
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void %44(ptr noundef %33) #13
  br label %47

47:                                               ; preds = %46, %41, %38, %26
  tail call void @mutex_unlock(ptr noundef %31) #13
  %48 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 5) #13
  %51 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 33
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %48, align 4
  %56 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 34
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 35
  %59 = load i32, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.44, i32 noundef %52, i32 noundef %57, i32 noundef %59) #14
  br label %60

60:                                               ; preds = %54, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dcmi_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 6
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %5, ptr %7, align 4
  store ptr %6, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dcmi_buf, ptr %0, i32 0, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %5, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 29
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  store i32 2, ptr %10, align 4
  %14 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 7
  store ptr %0, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %17 = tail call fastcc i32 @dcmi_start_capture(ptr noundef %4, ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.stm32_dcmi, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.dcmi_buf_queue) #14
  br label %25

22:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %23 = load i16, ptr %4, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %25

25:                                               ; preds = %22, %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_start_capture(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false) #13
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 40
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 30
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 44
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = call i32 %19(ptr noundef %16, ptr noundef nonnull %4) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %6
  %25 = phi i32 [ %22, %21 ], [ -38, %6 ]
  %26 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.dcmi_start_dma, i32 noundef %25) #14
  br label %64

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 36
  call void @mutex_lock(ptr noundef %29) #13
  %30 = load ptr, ptr %15, align 8
  %31 = getelementptr inbounds %struct.dcmi_buf, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dcmi_buf, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #13, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #13
  %35 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %34, ptr %36, align 4
  %37 = icmp eq ptr %30, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = load ptr, ptr %30, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 39
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %38, %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  br label %49

46:                                               ; preds = %41
  %47 = call ptr %43(ptr noundef nonnull %30, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %45
  %50 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %33, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.dcmi_start_dma, ptr noundef %31, i32 noundef %52) #14
  call void @mutex_unlock(ptr noundef %29) #13
  br label %64

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 6
  store ptr @dcmi_dma_callback, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 8
  store ptr %0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %47, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef nonnull %47) #13
  %59 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 31
  store i32 %58, ptr %59, align 4
  %60 = icmp sgt i32 %58, -1
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.dcmi_start_dma) #14
  call void @mutex_unlock(ptr noundef %29) #13
  br label %64

64:                                               ; preds = %61, %49, %24
  %65 = phi i32 [ -22, %49 ], [ -6, %61 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  %66 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 33
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  br label %78

69:                                               ; preds = %53
  call void @mutex_unlock(ptr noundef %29) #13
  %70 = load ptr, ptr %15, align 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %71, i32 0, i32 50
  %73 = load ptr, ptr %72, align 4
  call void %73(ptr noundef %70) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  %74 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #13, !srcloc !15
  %77 = or i32 %76, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %77) #13, !srcloc !14
  br label %78

78:                                               ; preds = %69, %64, %2
  %79 = phi i32 [ %65, %64 ], [ 0, %69 ], [ -22, %2 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dcmi_pipeline_s_stream(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %5, i32 0, i32 10
  br label %8

8:                                                ; preds = %45, %2
  %9 = phi ptr [ %4, %2 ], [ %21, %45 ]
  %10 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_pad, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @media_entity_remote_pad(ptr noundef %11) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.media_pad, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.media_entity, ptr %21, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %31, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  br i1 %6, label %41, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %7, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi ptr [ %35, %41 ], [ %39, %38 ]
  %44 = tail call i32 %43(ptr noundef nonnull %21, i32 noundef %1) #13
  br label %45

45:                                               ; preds = %42, %33, %27
  %46 = phi i32 [ -515, %33 ], [ -515, %27 ], [ %44, %42 ]
  %47 = icmp slt i32 %46, 0
  %48 = icmp ne i32 %46, -515
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %8

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 9
  %54 = icmp eq i32 %1, 0
  %55 = select i1 %54, ptr @.str.36, ptr @.str.35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dcmi_pipeline_s_stream, ptr noundef %53, ptr noundef nonnull %55, i32 noundef %46) #14
  br label %56

56:                                               ; preds = %50, %23, %19, %16, %8
  %57 = phi i32 [ %46, %50 ], [ 0, %16 ], [ 0, %23 ], [ 0, %8 ], [ 0, %19 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dcmi_dma_callback(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_tx_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 31
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #13
  switch i32 %12, label %46 [
    i32 1, label %49
    i32 2, label %13
    i32 3, label %16
    i32 0, label %19
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.dcmi_dma_callback) #14
  br label %49

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.dcmi_dma_callback) #14
  call fastcc void @dcmi_buffer_done(ptr noundef %0, ptr noundef %4, i32 noundef 0, i32 noundef -5)
  br label %49

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.dcmi_buf, ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  call fastcc void @dcmi_buffer_done(ptr noundef %0, ptr noundef %4, i32 noundef %21, i32 noundef 0)
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  call void @_raw_spin_lock_irq(ptr noundef %0) #13
  %24 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 29
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %43

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 6
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  store i32 1, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %35 = load i16, ptr %0, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %52

37:                                               ; preds = %30
  %38 = getelementptr i8, ptr %32, i32 -652
  store ptr %38, ptr %3, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %39 = load i16, ptr %0, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %41 = call fastcc i32 @dcmi_start_capture(ptr noundef %0, ptr noundef %38) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37, %27
  %44 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.dcmi_dma_callback) #14
  br label %52

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.dcmi_dma_callback) #14
  br label %49

49:                                               ; preds = %46, %16, %13, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %50 = load i16, ptr %0, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %52

52:                                               ; preds = %49, %43, %37, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dcmi_buffer_done(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dcmi_buf, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.dcmi_buf, ptr %1, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  %12 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %13, ptr %15, align 8
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  store i32 1, ptr %16, align 4
  %17 = tail call i64 @ktime_get() #13
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, %2
  %26 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !21

29:                                               ; preds = %22
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  br label %30

30:                                               ; preds = %29, %22
  br i1 %25, label %31, label %33

31:                                               ; preds = %30
  %32 = load i32, ptr %23, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ %32, %31 ], [ %2, %30 ]
  %35 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %6
  %37 = icmp eq i32 %3, 0
  %38 = select i1 %37, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %1, i32 noundef %38) #13
  %39 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 35
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.stm32_dcmi, ptr %0, i32 0, i32 7
  store ptr null, ptr %42, align 8
  br label %43

43:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_graph_notify_bound(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %1, ptr noundef %5, i32 noundef 2) #13
  %7 = trunc i32 %6 to i16
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %7, ptr noundef %9, i16 noundef zeroext 0, i32 noundef 3) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 -128
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.49, ptr noundef %15) #14
  br label %16

16:                                               ; preds = %12, %3
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_graph_notify_complete(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_format, align 4
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = alloca %struct.v4l2_subdev_selection, align 4
  %5 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %6 = alloca [8 x ptr], align 4
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %8 = getelementptr i8, ptr %0, i32 -132
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = phi ptr [ %10, %1 ], [ %24, %26 ]
  %13 = getelementptr inbounds %struct.media_entity, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.media_pad, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @media_entity_remote_pad(ptr noundef %14) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.media_pad, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.media_entity, ptr %24, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %11, label %30

30:                                               ; preds = %26, %22, %19, %11
  %31 = icmp eq ptr %12, null
  %32 = getelementptr i8, ptr %0, i32 48
  store ptr %12, ptr %32, align 4
  br i1 %31, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %0, i32 -128
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.50) #14
  br label %363

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds %struct.video_device, ptr %39, i32 0, i32 9
  store ptr %38, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #13, !annotation !8
  %41 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false) #13
  %42 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %7, i32 0, i32 3
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %44 = icmp eq ptr %41, null
  br i1 %44, label %132, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %46, i32 0, i32 1
  %49 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %7, i32 0, i32 2
  %50 = getelementptr i8, ptr %0, i32 688
  %51 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %7, i32 0, i32 1
  %52 = load ptr, ptr %43, align 4
  %53 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %132, label %56

56:                                               ; preds = %107, %45
  %57 = phi ptr [ %112, %107 ], [ %54, %45 ]
  %58 = phi i32 [ %104, %107 ], [ 0, %45 ]
  %59 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %114, label %62

62:                                               ; preds = %56
  br i1 %47, label %66, label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %48, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi ptr [ %60, %66 ], [ %64, %63 ]
  %69 = call i32 %68(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %7) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = load i32, ptr %49, align 4
  br label %73

73:                                               ; preds = %103, %71
  %74 = phi i32 [ 0, %71 ], [ %105, %103 ]
  %75 = phi i32 [ %58, %71 ], [ %104, %103 ]
  %76 = getelementptr [8 x %struct.dcmi_format], ptr @dcmi_formats, i32 0, i32 %74, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %72
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = getelementptr [8 x %struct.dcmi_format], ptr @dcmi_formats, i32 0, i32 %74
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 1195724874
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, ptr %50, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %103, label %86

86:                                               ; preds = %83, %79
  %87 = icmp eq i32 %75, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %94, %86
  %89 = phi i32 [ %95, %94 ], [ 0, %86 ]
  %90 = getelementptr [8 x ptr], ptr %6, i32 0, i32 %89
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %81
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = add nuw i32 %89, 1
  %96 = icmp eq i32 %95, %75
  br i1 %96, label %100, label %88

97:                                               ; preds = %88, %86
  %98 = phi i32 [ 0, %86 ], [ %89, %88 ]
  %99 = icmp eq i32 %98, %75
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %94
  %101 = add i32 %75, 1
  %102 = getelementptr [8 x ptr], ptr %6, i32 0, i32 %75
  store ptr %80, ptr %102, align 4
  br label %103

103:                                              ; preds = %100, %97, %83, %73
  %104 = phi i32 [ %75, %73 ], [ %75, %83 ], [ %101, %100 ], [ %75, %97 ]
  %105 = add nuw nsw i32 %74, 1
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %73

107:                                              ; preds = %103
  %108 = load i32, ptr %51, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %51, align 4
  %110 = load ptr, ptr %43, align 4
  %111 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %110, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %56

114:                                              ; preds = %107, %67, %56
  %115 = phi i32 [ %104, %107 ], [ %58, %56 ], [ %58, %67 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %114
  %118 = getelementptr i8, ptr %0, i32 280
  store i32 %115, ptr %118, align 4
  %119 = getelementptr i8, ptr %0, i32 -128
  %120 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %115, i32 4) #13
  %121 = extractvalue { i32, i1 } %120, 1
  br i1 %121, label %122, label %124, !prof !21

122:                                              ; preds = %117
  %123 = getelementptr i8, ptr %0, i32 276
  store ptr null, ptr %123, align 8
  br label %130

124:                                              ; preds = %117
  %125 = load ptr, ptr %119, align 4
  %126 = extractvalue { i32, i1 } %120, 0
  %127 = call noalias ptr @devm_kmalloc(ptr noundef %125, i32 noundef %126, i32 noundef 3520) #13
  %128 = getelementptr i8, ptr %0, i32 276
  store ptr %127, ptr %128, align 8
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %124, %122
  %131 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.56) #14
  br label %132

132:                                              ; preds = %130, %114, %45, %36
  %133 = phi i32 [ -6, %45 ], [ -6, %36 ], [ -6, %114 ], [ -12, %130 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  %134 = getelementptr i8, ptr %0, i32 -128
  %135 = load ptr, ptr %134, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.51) #14
  br label %363

136:                                              ; preds = %124
  %137 = shl nuw i32 %115, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %127, ptr nonnull align 4 %6, i32 %137, i1 false) #13
  %138 = load ptr, ptr %127, align 4
  %139 = getelementptr i8, ptr %0, i32 284
  store ptr %138, ptr %139, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  %140 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %141 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i64 64, i1 false) #13
  %142 = getelementptr inbounds %struct.dcmi_format, ptr %138, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %141, align 4
  %144 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %5, i32 0, i32 7
  store i32 1, ptr %144, align 4
  %145 = getelementptr inbounds %struct.v4l2_subdev, ptr %140, i32 0, i32 6
  %146 = icmp eq ptr %140, null
  br i1 %146, label %235, label %147

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %46, i32 0, i32 2
  %149 = load ptr, ptr %145, align 4
  %150 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %149, i32 0, i32 7
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %235, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %151, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %178, label %161

157:                                              ; preds = %172
  %158 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %176, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %178, label %161

161:                                              ; preds = %157, %153
  %162 = phi ptr [ %159, %157 ], [ %155, %153 ]
  br i1 %47, label %166, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr %148, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %163, %161
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi ptr [ %162, %166 ], [ %164, %163 ]
  %169 = call i32 %168(ptr noundef nonnull %140, ptr noundef null, ptr noundef nonnull %5) #13
  %170 = icmp eq i32 %169, 0
  %171 = load i32, ptr %5, align 4
  br i1 %170, label %172, label %178

172:                                              ; preds = %167
  %173 = add i32 %171, 1
  store i32 %173, ptr %5, align 4
  %174 = load ptr, ptr %145, align 4
  %175 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %174, i32 0, i32 7
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %157

178:                                              ; preds = %172, %167, %157, %153
  %179 = phi i32 [ 0, %153 ], [ %171, %167 ], [ %173, %157 ], [ %173, %172 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %235, label %181

181:                                              ; preds = %178
  %182 = getelementptr i8, ptr %0, i32 292
  store i32 %179, ptr %182, align 8
  %183 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %179, i32 8) #13
  %184 = extractvalue { i32, i1 } %183, 1
  br i1 %184, label %185, label %187, !prof !21

185:                                              ; preds = %181
  %186 = getelementptr i8, ptr %0, i32 288
  store ptr null, ptr %186, align 4
  br label %199

187:                                              ; preds = %181
  %188 = load ptr, ptr %119, align 4
  %189 = extractvalue { i32, i1 } %183, 0
  %190 = call noalias ptr @devm_kmalloc(ptr noundef %188, i32 noundef %189, i32 noundef 3520) #13
  %191 = getelementptr i8, ptr %0, i32 288
  store ptr %190, ptr %191, align 4
  %192 = icmp eq ptr %190, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load i32, ptr %182, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %235, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %5, i32 0, i32 4
  %198 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %5, i32 0, i32 6
  br label %201

199:                                              ; preds = %187, %185
  %200 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.56) #14
  br label %232

201:                                              ; preds = %220, %196
  %202 = phi i32 [ 0, %196 ], [ %229, %220 ]
  store i32 %202, ptr %5, align 4
  %203 = load ptr, ptr %145, align 4
  %204 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %203, i32 0, i32 7
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %232, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %205, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %232, label %211

211:                                              ; preds = %207
  br i1 %47, label %215, label %212

212:                                              ; preds = %211
  %213 = load ptr, ptr %148, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %211
  br label %216

216:                                              ; preds = %215, %212
  %217 = phi ptr [ %209, %215 ], [ %213, %212 ]
  %218 = call i32 %217(ptr noundef nonnull %140, ptr noundef null, ptr noundef nonnull %5) #13
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load i32, ptr %197, align 4
  %222 = load ptr, ptr %191, align 4
  %223 = load i32, ptr %5, align 4
  %224 = getelementptr %struct.dcmi_framesize, ptr %222, i32 %223
  store i32 %221, ptr %224, align 4
  %225 = load i32, ptr %198, align 4
  %226 = load ptr, ptr %191, align 4
  %227 = load i32, ptr %5, align 4
  %228 = getelementptr %struct.dcmi_framesize, ptr %226, i32 %227, i32 1
  store i32 %225, ptr %228, align 4
  %229 = add nuw i32 %202, 1
  %230 = load i32, ptr %182, align 8
  %231 = icmp ult i32 %229, %230
  br i1 %231, label %201, label %235

232:                                              ; preds = %216, %207, %201, %199
  %233 = phi i32 [ -12, %199 ], [ -515, %201 ], [ -515, %207 ], [ %218, %216 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %234 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.52) #14
  br label %363

235:                                              ; preds = %220, %193, %178, %147, %136
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %236 = getelementptr i8, ptr %0, i32 304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %237 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %237, i8 0, i32 60, i1 false) #13
  store i32 1, ptr %4, align 4
  %238 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %4, i32 0, i32 2
  store i32 2, ptr %238, align 4
  %239 = load ptr, ptr %32, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %336, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.v4l2_subdev, ptr %239, i32 0, i32 6
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %243, i32 0, i32 7
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %260, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %245, i32 0, i32 6
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %260, label %251

251:                                              ; preds = %247
  br i1 %47, label %256, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %46, i32 0, i32 6
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %252, %251
  br label %257

257:                                              ; preds = %256, %252
  %258 = phi ptr [ %249, %256 ], [ %254, %252 ]
  %259 = call i32 %258(ptr noundef nonnull %239, ptr noundef null, ptr noundef nonnull %4) #13
  switch i32 %259, label %338 [
    i32 0, label %267
    i32 -515, label %260
  ]

260:                                              ; preds = %257, %247, %241
  %261 = getelementptr i8, ptr %0, i32 292
  %262 = load i32, ptr %261, align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %291, label %264

264:                                              ; preds = %260
  %265 = getelementptr i8, ptr %0, i32 288
  %266 = load ptr, ptr %265, align 4
  br label %269

267:                                              ; preds = %257
  %268 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %4, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %236, ptr noundef align 4 dereferenceable(16) %268, i32 16, i1 false) #13
  br label %325

269:                                              ; preds = %269, %264
  %270 = phi i32 [ 0, %264 ], [ %283, %269 ]
  %271 = phi i32 [ 0, %264 ], [ %282, %269 ]
  %272 = phi i32 [ 0, %264 ], [ %281, %269 ]
  %273 = phi i32 [ 0, %264 ], [ %280, %269 ]
  %274 = getelementptr %struct.dcmi_framesize, ptr %266, i32 %270
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr %struct.dcmi_framesize, ptr %266, i32 %270, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = mul i32 %277, %275
  %279 = icmp ugt i32 %278, %271
  %280 = select i1 %279, i32 %275, i32 %273
  %281 = select i1 %279, i32 %277, i32 %272
  %282 = call i32 @llvm.umax.i32(i32 %278, i32 %271) #13
  %283 = add nuw i32 %270, 1
  %284 = icmp eq i32 %283, %262
  br i1 %284, label %285, label %269

285:                                              ; preds = %269
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %285
  %288 = getelementptr i8, ptr %0, i32 308
  store i32 0, ptr %288, align 4
  store i32 0, ptr %236, align 4
  %289 = getelementptr i8, ptr %0, i32 312
  store i32 %280, ptr %289, align 4
  %290 = getelementptr i8, ptr %0, i32 316
  store i32 %281, ptr %290, align 4
  br label %325

291:                                              ; preds = %285, %260
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #13
  %292 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %292, i8 0, i32 84, i1 false) #13
  store i32 1, ptr %3, align 4
  %293 = load ptr, ptr %32, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %315, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.v4l2_subdev, ptr %293, i32 0, i32 6
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %297, i32 0, i32 7
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %315, label %301

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %299, i32 0, i32 4
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %301
  br i1 %47, label %310, label %306

306:                                              ; preds = %305
  %307 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %46, i32 0, i32 4
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %306, %305
  br label %311

311:                                              ; preds = %310, %306
  %312 = phi ptr [ %303, %310 ], [ %308, %306 ]
  %313 = call i32 %312(ptr noundef nonnull %293, ptr noundef null, ptr noundef nonnull %3) #13
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %311, %301, %295, %291
  %316 = phi i32 [ -19, %291 ], [ -515, %301 ], [ -515, %295 ], [ %313, %311 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  br label %336

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2
  %319 = load i32, ptr %318, align 4
  %320 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  %321 = load i32, ptr %320, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  %322 = getelementptr i8, ptr %0, i32 308
  store i32 0, ptr %322, align 4
  store i32 0, ptr %236, align 4
  %323 = getelementptr i8, ptr %0, i32 312
  store i32 %319, ptr %323, align 4
  %324 = getelementptr i8, ptr %0, i32 316
  store i32 %321, ptr %324, align 4
  br label %325

325:                                              ; preds = %317, %287, %267
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %2) #13
  %326 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(184) %326, i8 0, i64 184, i1 false) #13
  store i32 1, ptr %2, align 4
  %327 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 352, ptr %327, align 4
  %328 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 288, ptr %328, align 4
  %329 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %330 = load ptr, ptr %128, align 8
  %331 = load ptr, ptr %330, align 4
  %332 = load i32, ptr %331, align 4
  store i32 %332, ptr %329, align 4
  %333 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %333, align 4
  %334 = call fastcc i32 @dcmi_try_fmt(ptr noundef %8, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #13
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %344, label %342

336:                                              ; preds = %315, %235
  %337 = phi i32 [ -19, %235 ], [ %316, %315 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %339

338:                                              ; preds = %257
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %339

339:                                              ; preds = %338, %336
  %340 = phi i32 [ %337, %336 ], [ %259, %338 ]
  %341 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %341, ptr noundef nonnull @.str.53) #14
  br label %363

342:                                              ; preds = %325
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #13
  %343 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %343, ptr noundef nonnull @.str.54) #14
  br label %363

344:                                              ; preds = %325
  %345 = load ptr, ptr %128, align 8
  %346 = load ptr, ptr %345, align 4
  store ptr %346, ptr %139, align 8
  %347 = getelementptr i8, ptr %0, i32 52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(204) %347, ptr noundef nonnull align 4 dereferenceable(204) %2, i32 204, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #13
  %348 = load ptr, ptr %119, align 4
  %349 = getelementptr i8, ptr %0, i32 -96
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr inbounds %struct.device, ptr %348, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %344
  %355 = load ptr, ptr %348, align 4
  br label %356

356:                                              ; preds = %354, %344
  %357 = phi ptr [ %355, %354 ], [ %352, %344 ]
  %358 = call i32 @devm_request_threaded_irq(ptr noundef %348, i32 noundef %350, ptr noundef nonnull @dcmi_irq_callback, ptr noundef nonnull @dcmi_irq_thread, i32 noundef 8192, ptr noundef %357, ptr noundef %8) #13
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %356
  %361 = load ptr, ptr %119, align 4
  %362 = load i32, ptr %349, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.55, i32 noundef %362) #14
  br label %363

363:                                              ; preds = %360, %356, %342, %339, %232, %132, %33
  %364 = phi i32 [ %133, %132 ], [ %233, %232 ], [ %340, %339 ], [ %334, %342 ], [ %358, %360 ], [ -19, %33 ], [ 0, %356 ]
  ret i32 %364
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dcmi_graph_notify_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 8
  tail call void @video_unregister_device(ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_irq_callback(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %4 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !15
  %8 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 32
  store i32 %7, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr i8, ptr %9, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !15
  %12 = or i32 %11, 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #13, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #13
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dma_tx_state, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #13
  %4 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 32
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 34
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 33
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %8, %2
  %18 = and i32 %5, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 33
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 18
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 1195724874
  %29 = and i32 %5, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13
  %32 = load i16, ptr %1, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13
  tail call void asm sideeffect "", "~{memory}"() #13
  br i1 %31, label %159, label %34

34:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !8
  %35 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %158, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 30
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 48
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  tail call void %43(ptr noundef %40) #13
  %46 = load ptr, ptr %39, align 8
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = phi ptr [ %41, %38 ], [ %47, %45 ]
  %50 = phi ptr [ %40, %38 ], [ %46, %45 ]
  %51 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 31
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 49
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %50, i32 noundef %52, ptr noundef nonnull %3) #13
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %91, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dcmi_buf, ptr %36, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = icmp ugt i32 %61, %59
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = sub i32 %61, %59
  %65 = getelementptr inbounds %struct.dcmi_buf, ptr %36, i32 0, i32 4
  %66 = getelementptr inbounds %struct.dcmi_buf, ptr %36, i32 0, i32 4, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %66, align 4
  %70 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %36, i32 0, i32 4
  store i32 %71, ptr %73, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %36, i32 0, i32 2
  store i32 1, ptr %74, align 4
  %75 = call i64 @ktime_get() #13
  %76 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 5
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 4
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %63
  %81 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 10, i32 0, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = icmp ult i32 %82, %64
  %84 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !21

87:                                               ; preds = %80
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  br label %88

88:                                               ; preds = %87, %80
  br i1 %83, label %89, label %112

89:                                               ; preds = %88
  %90 = load i32, ptr %81, align 8
  br label %112

91:                                               ; preds = %57, %48
  %92 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 33
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dcmi_process_jpeg) #14
  %97 = getelementptr inbounds %struct.dcmi_buf, ptr %36, i32 0, i32 4
  %98 = getelementptr inbounds %struct.dcmi_buf, ptr %36, i32 0, i32 4, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %99, ptr %101, align 4
  store volatile ptr %100, ptr %99, align 4
  store volatile ptr %97, ptr %97, align 4
  store ptr %97, ptr %98, align 4
  %102 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %36, i32 0, i32 4
  store i32 %103, ptr %105, align 8
  %106 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %36, i32 0, i32 2
  store i32 1, ptr %106, align 4
  %107 = call i64 @ktime_get() #13
  %108 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 5
  store i64 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %91, %89, %88
  %113 = phi i32 [ %90, %89 ], [ %64, %88 ], [ 0, %91 ]
  %114 = phi i32 [ 5, %89 ], [ 5, %88 ], [ 6, %91 ]
  %115 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 10, i32 0, i32 3
  store i32 %113, ptr %115, align 4
  br label %116

116:                                              ; preds = %112, %91, %63
  %117 = phi i32 [ 5, %63 ], [ 6, %91 ], [ %114, %112 ]
  call void @vb2_buffer_done(ptr noundef nonnull %36, i32 noundef %117) #13
  %118 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 35
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  store ptr null, ptr %35, align 8
  %121 = load ptr, ptr %39, align 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.dma_device, ptr %122, i32 0, i32 47
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %116
  %127 = call i32 %124(ptr noundef %121) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load ptr, ptr %121, align 4
  %131 = getelementptr inbounds %struct.dma_device, ptr %130, i32 0, i32 48
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  call void %132(ptr noundef %121) #13
  br label %135

135:                                              ; preds = %134, %129, %126, %116
  call void @_raw_spin_lock_irq(ptr noundef %1) #13
  %136 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 29
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %140 = load i16, ptr %1, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %155

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 6
  %144 = load volatile ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %143
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  store i32 1, ptr %136, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %147 = load i16, ptr %1, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %158

149:                                              ; preds = %142
  %150 = getelementptr i8, ptr %144, i32 -652
  store ptr %150, ptr %35, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %151 = load i16, ptr %1, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %153 = call fastcc i32 @dcmi_start_capture(ptr noundef %1, ptr noundef %150) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149, %139
  %156 = getelementptr inbounds %struct.stm32_dcmi, ptr %1, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dcmi_process_jpeg) #14
  br label %158

158:                                              ; preds = %155, %149, %146, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %159

159:                                              ; preds = %158, %24
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_suspend(ptr noundef %0) #2 {
  %2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #13
  %3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #13
  %3 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 28
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #13
  tail call void @clk_unprepare(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dcmi_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dcmi, ptr %3, i32 0, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #13
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dcmi_runtime_resume) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!10 = !{i64 2147994115}
!11 = !{i64 492425, i64 2147982396, i64 2147982422, i64 2147982469, i64 2147982491, i64 2147982519, i64 2147982539}
!12 = !{i64 478994, i64 479019, i64 479041, i64 479057, i64 479069, i64 479089, i64 479113, i64 479129, i64 479141}
!13 = !{i64 2147994241}
!14 = !{i64 5093888}
!15 = !{i64 5094306}
!16 = !{i64 2148930593}
!17 = !{i64 2148926417}
!18 = !{i64 2148926492, i64 2148926519, i64 2148926566, i64 2148926588, i64 2148926616, i64 2148926636}
!19 = !{i64 387909}
!20 = !{i64 2148954737}
!21 = !{!"branch_weights", i32 1, i32 2000}
