; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc.c"
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v5 = type { i32, i32, i32, i32 }
%struct.s5p_mfc_buf_size_v6 = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.112, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.109, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.111 }
%struct.anon.111 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.112 = type { i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.84, i32 }
%union.anon.84 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.77 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.74], %struct.media_entity_enum, i32 }
%struct.anon.74 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_codec_ops = type { ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mfc_debug_level = dso_local global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @mfc_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype257 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug258 = internal constant [69 x i8] c"parm=debug:Debug level - higher value produces more verbose messages\00", section ".modinfo", align 1
@__param_str_mem = internal constant [4 x i8] c"mem\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mfc_mem_size = internal global ptr null, align 4
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @mfc_mem_size } }, section "__param", align 4
@__UNIQUE_ID_memtype259 = internal constant [19 x i8] c"parmtype=mem:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mem260 = internal constant [71 x i8] c"parm=mem:Preallocated memory size for the firmware and context buffers\00", section ".modinfo", align 1
@exynos_mfc_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v8_5433 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v10 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [43 x i8] c"author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [55 x i8] c"description=Samsung S5P Multi Format Codec V4L2 driver\00", section ".modinfo", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@mfc_drvdata_v5 = internal global %struct.s5p_mfc_variant { i32 81, i32 2, i32 1, ptr @buf_size_v5, [2 x ptr] [ptr @.str.1, ptr null], [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr null, ptr null], i32 2, i8 1 }, align 4
@mfc_drvdata_v6 = internal global %struct.s5p_mfc_variant { i32 97, i32 1, i32 2, ptr @buf_size_v6, [2 x ptr] [ptr @.str.4, ptr @.str.5], [4 x ptr] [ptr @.str.2, ptr null, ptr null, ptr null], i32 1, i8 0 }, align 4
@mfc_drvdata_v7 = internal global %struct.s5p_mfc_variant { i32 114, i32 1, i32 4, ptr @buf_size_v7, [2 x ptr] [ptr @.str.6, ptr null], [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr null, ptr null], i32 2, i8 0 }, align 4
@mfc_drvdata_v8 = internal global %struct.s5p_mfc_variant { i32 128, i32 1, i32 8, ptr @buf_size_v8, [2 x ptr] [ptr @.str.7, ptr null], [4 x ptr] [ptr @.str.2, ptr null, ptr null, ptr null], i32 1, i8 0 }, align 4
@mfc_drvdata_v8_5433 = internal global %struct.s5p_mfc_variant { i32 128, i32 1, i32 8, ptr @buf_size_v8, [2 x ptr] [ptr @.str.7, ptr null], [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], i32 3, i8 0 }, align 4
@mfc_drvdata_v10 = internal global %struct.s5p_mfc_variant { i32 160, i32 1, i32 32, ptr @buf_size_v10, [2 x ptr] [ptr @.str.11, ptr null], [4 x ptr] zeroinitializer, i32 0, i8 0 }, align 4
@buf_size_v5 = internal global %struct.s5p_mfc_buf_size { i32 393216, i32 4194304, ptr @mfc_buf_size_v5 }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"s5p-mfc.fw\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mfc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sclk_mfc\00", align 1
@mfc_buf_size_v5 = internal global %struct.s5p_mfc_buf_size_v5 { i32 614400, i32 10240, i32 131072, i32 8192 }, align 4
@buf_size_v6 = internal global %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v6 }, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"s5p-mfc-v6.fw\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"s5p-mfc-v6-v2.fw\00", align 1
@mfc_buf_size_v6 = internal global %struct.s5p_mfc_buf_size_v6 { i32 28672, i32 2097152, i32 20480, i32 102400, i32 0, i32 12288 }, align 4
@buf_size_v7 = internal global %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v7 }, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"s5p-mfc-v7.fw\00", align 1
@mfc_buf_size_v7 = internal global %struct.s5p_mfc_buf_size_v6 { i32 30720, i32 2097152, i32 20480, i32 102400, i32 0, i32 10240 }, align 4
@buf_size_v8 = internal global %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v8 }, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"s5p-mfc-v8.fw\00", align 1
@mfc_buf_size_v8 = internal global %struct.s5p_mfc_buf_size_v6 { i32 36864, i32 2097152, i32 20480, i32 102400, i32 0, i32 10240 }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"aclk_xiu\00", align 1
@buf_size_v10 = internal global %struct.s5p_mfc_buf_size { i32 1048576, i32 3145728, ptr @mfc_buf_size_v10 }, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"s5p-mfc-v10.fw\00", align 1
@mfc_buf_size_v10 = internal global %struct.s5p_mfc_buf_size_v6 { i32 30720, i32 2097152, i32 20480, i32 102400, i32 30720, i32 15360 }, align 4
@s5p_mfc_driver = internal global %struct.platform_driver { ptr @s5p_mfc_probe, ptr @s5p_mfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_mfc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_mfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"s5p-mfc\00", align 1
@s5p_mfc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"\013%s:%d: No platform data specified\0A\00", align 1
@__func__.s5p_mfc_probe = private unnamed_addr constant [14 x i8] c"s5p_mfc_probe\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Failed to get device MFC hardware variant information\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"failed to get irq resource\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Failed to install irq (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"failed to configure DMA memory\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"failed to get mfc clock source\0A\00", align 1
@s5p_mfc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"&dev->mfc_mutex\00", align 1
@s5p_mfc_probe.__key.20 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"&dev->queue\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to allocate video device\0A\00", align 1
@s5p_mfc_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @s5p_mfc_poll, ptr @video_ioctl2, ptr null, ptr @s5p_mfc_mmap, ptr @s5p_mfc_open, ptr @s5p_mfc_release }, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"s5p-mfc-dec\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"s5p-mfc-enc\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register video device\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"\016%s: decoder registered as /dev/video%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\016%s: encoder registered as /dev/video%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"\017%s:%d: enter\0A\00", align 1
@__func__.s5p_mfc_irq = private unnamed_addr constant [12 x i8] c"s5p_mfc_irq\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"\017%s:%d: Int reason: %d (err: %08x)\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\013%s:%d: post_frame_start() failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc.c\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"\017%s:%d: Unknown int reason\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"\017%s:%d: leave\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"\013%s:%d: Failed to unlock hw\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"\017%s:%d: Exit via irq_cleanup_hw\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"\017%s:%d: Frame Status: %x\0A\00", align 1
@__func__.s5p_mfc_handle_frame = private unnamed_addr constant [21 x i8] c"s5p_mfc_handle_frame\00", align 1
@s5p_mfc_handle_frame.ev_src_ch = internal constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, align 8
@.str.38 = private unnamed_addr constant [26 x i8] c"\017%s:%d: No frame decode\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"\017%s:%d: Running again the same buffer\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"\017%s:%d: MFC needs next buffer\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Cleaning up buffer: %d\0A\00", align 1
@__func__.s5p_mfc_handle_frame_all_extracted = private unnamed_addr constant [35 x i8] c"s5p_mfc_handle_frame_all_extracted\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"\017%s:%d: Unexpected frame type: %d\0A\00", align 1
@__func__.s5p_mfc_handle_frame_copy_time = private unnamed_addr constant [31 x i8] c"s5p_mfc_handle_frame_copy_time\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"\013%s:%d: Interrupt Error: %08x\0A\00", align 1
@__func__.s5p_mfc_handle_error = private unnamed_addr constant [21 x i8] c"s5p_mfc_handle_error\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"\017%s:%d: Stream completed\0A\00", align 1
@__func__.s5p_mfc_handle_stream_complete = private unnamed_addr constant [31 x i8] c"s5p_mfc_handle_stream_complete\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"\013%s:%d: post_seq_start() failed\0A\00", align 1
@__func__.s5p_mfc_handle_seq_done = private unnamed_addr constant [24 x i8] c"s5p_mfc_handle_seq_done\00", align 1
@.str.46 = private unnamed_addr constant [68 x i8] c"failed to preallocate %ld MiB for the firmware and context buffers\0A\00", align 1
@.str.47 = private unnamed_addr constant [66 x i8] c"preallocated %ld MiB buffer for the firmware and context buffers\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"\013%s:%d: Allocating bank2 base failed\0A\00", align 1
@__func__.s5p_mfc_configure_2port_memory = private unnamed_addr constant [31 x i8] c"s5p_mfc_configure_2port_memory\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"\013%s:%d: Driver timeout error handling\0A\00", align 1
@__func__.s5p_mfc_watchdog_worker = private unnamed_addr constant [24 x i8] c"s5p_mfc_watchdog_worker\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"\013%s:%d: Error: some instance may be closing/opening\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"\013%s:%d: Failed to reload FW\0A\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"\013%s:%d: Failed to reinit FW\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"\013%s:%d: Time out during waiting for HW\0A\00", align 1
@__func__.s5p_mfc_watchdog = private unnamed_addr constant [17 x i8] c"s5p_mfc_watchdog\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.57 = private unnamed_addr constant [25 x i8] c"\017%s:%d: mmaping source\0A\00", align 1
@__func__.s5p_mfc_mmap = private unnamed_addr constant [13 x i8] c"s5p_mfc_mmap\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"\017%s:%d: mmaping destination\0A\00", align 1
@__func__.s5p_mfc_open = private unnamed_addr constant [13 x i8] c"s5p_mfc_open\00", align 1
@s5p_mfc_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"&ctx->queue\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Too many open contexts\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"\013%s:%d: Failed to setup mfc controls\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"\013%s:%d: power on failed\0A\00", align 1
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.63 = private unnamed_addr constant [56 x i8] c"\013%s:%d: Failed to initialize videobuf2 queue(capture)\0A\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"\013%s:%d: Failed to initialize videobuf2 queue(output)\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"\013%s:%d: power off failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.s5p_mfc_release = private unnamed_addr constant [16 x i8] c"s5p_mfc_release\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"\017%s:%d: Has to free instance\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"\017%s:%d: Last instance\0A\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"\013%s:%d: Power off failed\0A\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"\017%s:%d: Shutting down clock\0A\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"\016%s: Removing %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"\013%s:%d: Error: going to suspend for a second time\0A\00", align 1
@__func__.s5p_mfc_suspend = private unnamed_addr constant [16 x i8] c"s5p_mfc_suspend\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"\013%s:%d: Waiting for hardware to finish timed out\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_debug258, ptr @__UNIQUE_ID_debugtype257, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_license261, ptr @__UNIQUE_ID_mem260, ptr @__UNIQUE_ID_memtype259, ptr @__param_debug, ptr @__param_mem], section "llvm.metadata"

@__mod_of__exynos_mfc_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @exynos_mfc_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_work_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 28
  %7 = and i32 %5, 31
  %8 = shl nuw i32 1, %7
  %9 = lshr i32 %5, 5
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = xor i32 %8, -1
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, %11
  store i32 %13, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %14 = load i16, ptr %3, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_work_bit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 28
  %7 = and i32 %5, 31
  %8 = shl nuw i32 1, %7
  %9 = lshr i32 %5, 5
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %8, %11
  store i32 %12, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_work_bit_irqsave(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 28
  %8 = and i32 %6, 31
  %9 = shl nuw i32 1, %8
  %10 = lshr i32 %6, 5
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = xor i32 %9, -1
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, %12
  store i32 %14, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_work_bit_irqsave(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 28
  %8 = and i32 %6, 31
  %9 = shl nuw i32 1, %8
  %10 = lshr i32 %6, 5
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %9, %12
  store i32 %13, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 13
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 27
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 28
  br label %7

7:                                                ; preds = %21, %1
  %8 = phi i32 [ %5, %1 ], [ %10, %21 ]
  %9 = add i32 %8, 1
  %10 = srem i32 %9, 4
  %11 = icmp eq i32 %10, %5
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = lshr i32 %5, 5
  %14 = getelementptr i32, ptr %6, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %5, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 -11, i32 %5
  br label %29

21:                                               ; preds = %7
  %22 = lshr i32 %10, 5
  %23 = getelementptr i32, ptr %6, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %10, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %7, label %29

29:                                               ; preds = %21, %12
  %30 = phi i32 [ %20, %12 ], [ %10, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_cleanup_queue(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %29, label %5

5:                                                ; preds = %21, %2
  %6 = phi ptr [ %27, %21 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %17, %12 ], [ %8, %5 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %5 ]
  %15 = getelementptr %struct.vb2_buffer, ptr %13, i32 0, i32 10, i32 %14, i32 3
  store i32 0, ptr %15, align 4
  %16 = add nuw i32 %14, 1
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %12, %5
  %22 = phi ptr [ %8, %5 ], [ %17, %12 ]
  tail call void @vb2_buffer_done(ptr noundef %22, i32 noundef 6) #8
  %23 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = load volatile ptr, ptr %0, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %5

29:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_mfc_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_mfc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 600, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %226, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 13
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 3
  store ptr %0, ptr %9, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_probe, i32 noundef 1283) #9
  br label %226

13:                                               ; preds = %6
  %14 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 10
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #9
  br label %226

18:                                               ; preds = %13
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %0, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 5
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %226

24:                                               ; preds = %18
  %25 = tail call ptr @platform_get_resource(ptr noundef nonnull %0, i32 noundef 1024, i32 noundef 0) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #9
  br label %226

28:                                               ; preds = %24
  %29 = load i32, ptr %25, align 4
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %0, align 8
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %29, ptr noundef nonnull @s5p_mfc_irq, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %4) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %32) #9
  br label %226

35:                                               ; preds = %28
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 35
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dev_iommu, ptr %39, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %35
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %88, label %50

50:                                               ; preds = %45, %41
  %51 = load ptr, ptr @mfc_mem_size, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @memparse(ptr noundef nonnull %51, ptr noundef null) #8
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %55, %53 ], [ 8388608, %50 ]
  %58 = lshr i32 %57, 12
  %59 = tail call ptr @bitmap_zalloc(i32 noundef %58, i32 noundef 3264) #8
  %60 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 22
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %128, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 21
  %64 = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef %57, ptr noundef %63, i32 noundef 3264, i32 noundef 0) #8
  %65 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 23
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load ptr, ptr %60, align 4
  tail call void @bitmap_free(ptr noundef %68) #8
  %69 = lshr i32 %57, 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.46, i32 noundef %69) #9
  br label %128

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 20
  store i32 %57, ptr %71, align 4
  %72 = load i32, ptr %63, align 4
  %73 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24, i32 1
  store i32 %72, ptr %74, align 4
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load ptr, ptr %60, align 4
  store i32 -1, ptr %77, align 1
  %78 = load i32, ptr %73, align 4
  %79 = add i32 %78, 131072
  store i32 %79, ptr %73, align 4
  %80 = load i32, ptr %74, align 4
  %81 = add i32 %80, 131072
  store i32 %81, ptr %74, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = tail call i32 @s5p_mfc_alloc_firmware(ptr noundef nonnull %4) #8
  %84 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 4
  %85 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 4, i32 1
  store ptr %37, ptr %85, align 4
  store ptr %37, ptr %84, align 4
  %86 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %37, i32 noundef -1) #8
  %87 = lshr i32 %57, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.47, i32 noundef %87) #9
  br label %130

88:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !12
  %89 = tail call fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %37, ptr noundef nonnull @.str.48, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 4
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %88
  %93 = tail call fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %37, ptr noundef nonnull @.str.49, i32 noundef 1) #8
  %94 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 4, i32 1
  store ptr %93, ptr %94, align 4
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load ptr, ptr %90, align 4
  tail call void @device_unregister(ptr noundef %97) #8
  br label %122

98:                                               ; preds = %92
  %99 = tail call i32 @s5p_mfc_alloc_firmware(ptr noundef nonnull %4) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 19, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24
  store i32 %103, ptr %104, align 4
  %105 = load ptr, ptr %94, align 4
  %106 = call ptr @dma_alloc_attrs(ptr noundef %105, i32 noundef 131072, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.s5p_mfc_configure_2port_memory, i32 noundef 1152) #9
  %110 = call i32 @s5p_mfc_release_firmware(ptr noundef nonnull %4) #8
  %111 = load ptr, ptr %94, align 4
  call void @device_unregister(ptr noundef %111) #8
  %112 = load ptr, ptr %90, align 4
  call void @device_unregister(ptr noundef %112) #8
  br label %122

113:                                              ; preds = %101
  %114 = load i32, ptr %2, align 4
  %115 = add i32 %114, -131072
  %116 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24, i32 1
  store i32 %115, ptr %116, align 4
  %117 = load ptr, ptr %94, align 4
  call void @dma_free_attrs(ptr noundef %117, i32 noundef 131072, ptr noundef nonnull %106, i32 noundef %114, i32 noundef 0) #8
  %118 = load ptr, ptr %90, align 4
  %119 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %118, i32 noundef -1) #8
  %120 = load ptr, ptr %94, align 4
  %121 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %120, i32 noundef -1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %130

122:                                              ; preds = %108, %96, %88
  %123 = phi i32 [ -19, %88 ], [ -19, %96 ], [ -12, %108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %128

124:                                              ; preds = %98
  %125 = load ptr, ptr %94, align 4
  tail call void @device_unregister(ptr noundef %125) #8
  %126 = load ptr, ptr %90, align 4
  tail call void @device_unregister(ptr noundef %126) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %127 = icmp slt i32 %99, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %122, %67, %56
  %129 = phi i32 [ %99, %124 ], [ %123, %122 ], [ -12, %67 ], [ -12, %56 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %226

130:                                              ; preds = %124, %113, %82
  %131 = call i32 @s5p_mfc_init_pm(ptr noundef nonnull %4) #8
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %224

134:                                              ; preds = %130
  %135 = call i32 @s5p_mfc_load_firmware(ptr noundef nonnull %4) #8
  %136 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 14
  call void @__mutex_init(ptr noundef %136, ptr noundef nonnull @.str.19, ptr noundef nonnull @s5p_mfc_probe.__key) #8
  %137 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 18
  call void @__init_waitqueue_head(ptr noundef %137, ptr noundef nonnull @.str.21, ptr noundef nonnull @s5p_mfc_probe.__key.20) #8
  %138 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 25
  store i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 32
  store i32 -32, ptr %139, align 4
  %140 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 32, i32 1
  store volatile ptr %140, ptr %140, align 4
  %141 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 32, i32 1, i32 1
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 32, i32 2
  store ptr @s5p_mfc_watchdog_worker, ptr %142, align 4
  %143 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 29
  store volatile i32 0, ptr %143, align 4
  %144 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 30
  call void @init_timer_key(ptr noundef %144, ptr noundef nonnull @s5p_mfc_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %145 = call i32 @v4l2_device_register(ptr noundef %3, ptr noundef nonnull %4) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %222

147:                                              ; preds = %134
  %148 = call ptr @video_device_alloc() #8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %151) #9
  br label %220

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 3
  store ptr @s5p_mfc_fops, ptr %154, align 4
  %155 = call ptr @get_dec_v4l2_ioctl_ops() #8
  %156 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 24
  store ptr %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 23
  store ptr @video_device_release, ptr %157, align 8
  %158 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 26
  store ptr %136, ptr %158, align 8
  %159 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 7
  store ptr %4, ptr %159, align 4
  %160 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 14
  store i32 2, ptr %160, align 4
  %161 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 4
  store i32 67125248, ptr %161, align 8
  %162 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 17
  call void @_set_bit(i32 noundef 2, ptr noundef %162) #8
  %163 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %163, ptr noundef nonnull align 1 dereferenceable(12) @.str.24, i32 12, i1 false)
  %164 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 1
  store ptr %148, ptr %164, align 4
  %165 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 5, i32 8
  store ptr %4, ptr %165, align 8
  %166 = call ptr @video_device_alloc() #8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %169) #9
  br label %217

171:                                              ; preds = %153
  %172 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 3
  store ptr @s5p_mfc_fops, ptr %172, align 4
  %173 = call ptr @get_enc_v4l2_ioctl_ops() #8
  %174 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 24
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 23
  store ptr @video_device_release, ptr %175, align 8
  %176 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 26
  store ptr %136, ptr %176, align 8
  %177 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 7
  store ptr %4, ptr %177, align 4
  %178 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 14
  store i32 2, ptr %178, align 4
  %179 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 4
  store i32 67125248, ptr %179, align 8
  %180 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %180, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, i32 12, i1 false)
  %181 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 2
  store ptr %166, ptr %181, align 4
  %182 = getelementptr inbounds %struct.video_device, ptr %166, i32 0, i32 5, i32 8
  store ptr %4, ptr %182, align 8
  %183 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %183, align 8
  call void @s5p_mfc_init_hw_ops(ptr noundef nonnull %4) #8
  call void @s5p_mfc_init_hw_cmds(ptr noundef nonnull %4) #8
  call void @s5p_mfc_init_regs(ptr noundef nonnull %4) #8
  %184 = load ptr, ptr %164, align 4
  %185 = getelementptr inbounds %struct.video_device, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %186, align 4
  %188 = call i32 @__video_register_device(ptr noundef %184, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %187) #8
  %189 = icmp eq i32 %188, 0
  %190 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  br i1 %189, label %193, label %191

191:                                              ; preds = %171
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %190) #9
  br label %214

193:                                              ; preds = %171
  %194 = load ptr, ptr %164, align 4
  %195 = getelementptr inbounds %struct.video_device, ptr %194, i32 0, i32 16
  %196 = load i16, ptr %195, align 4
  %197 = zext i16 %196 to i32
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %190, i32 noundef %197) #9
  %199 = load ptr, ptr %181, align 4
  %200 = getelementptr inbounds %struct.video_device, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 @__video_register_device(ptr noundef %199, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %202) #8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %193
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %190) #9
  %207 = load ptr, ptr %164, align 4
  call void @video_unregister_device(ptr noundef %207) #8
  br label %214

208:                                              ; preds = %193
  %209 = load ptr, ptr %181, align 4
  %210 = getelementptr inbounds %struct.video_device, ptr %209, i32 0, i32 16
  %211 = load i16, ptr %210, align 4
  %212 = zext i16 %211 to i32
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %190, i32 noundef %212) #9
  br label %226

214:                                              ; preds = %205, %191
  %215 = phi i32 [ %188, %191 ], [ %203, %205 ]
  %216 = load ptr, ptr %181, align 4
  call void @video_device_release(ptr noundef %216) #8
  br label %217

217:                                              ; preds = %214, %168
  %218 = phi i32 [ %215, %214 ], [ -12, %168 ]
  %219 = load ptr, ptr %164, align 4
  call void @video_device_release(ptr noundef %219) #8
  br label %220

220:                                              ; preds = %217, %150
  %221 = phi i32 [ %218, %217 ], [ -12, %150 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %4) #8
  br label %222

222:                                              ; preds = %220, %134
  %223 = phi i32 [ %145, %134 ], [ %221, %220 ]
  call void @s5p_mfc_final_pm(ptr noundef nonnull %4) #8
  br label %224

224:                                              ; preds = %222, %133
  %225 = phi i32 [ %131, %133 ], [ %223, %222 ]
  call fastcc void @s5p_mfc_unconfigure_dma_memory(ptr noundef nonnull %4)
  br label %226

226:                                              ; preds = %224, %208, %128, %34, %27, %22, %17, %11, %1
  %227 = phi i32 [ %23, %22 ], [ %32, %34 ], [ %129, %128 ], [ %225, %224 ], [ 0, %208 ], [ -2, %27 ], [ -2, %17 ], [ -19, %11 ], [ -12, %1 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %0, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %4, ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr %struct.s5p_mfc_dev, ptr %3, i32 0, i32 26, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store ptr null, ptr %9, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr %struct.s5p_mfc_dev, ptr %3, i32 0, i32 26, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr null, ptr %14, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.s5p_mfc_dev, ptr %3, i32 0, i32 26, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr null, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.s5p_mfc_dev, ptr %3, i32 0, i32 26, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store ptr null, ptr %24, align 4
  br label %27

27:                                               ; preds = %26, %22
  tail call void @mutex_unlock(ptr noundef %7) #8
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 30
  %29 = tail call i32 @del_timer_sync(ptr noundef %28) #8
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 32
  %31 = tail call zeroext i1 @flush_work(ptr noundef %30) #8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @video_unregister_device(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void @video_unregister_device(ptr noundef %35) #8
  %36 = load ptr, ptr %32, align 4
  tail call void @video_device_release(ptr noundef %36) #8
  %37 = load ptr, ptr %34, align 4
  tail call void @video_device_release(ptr noundef %37) #8
  tail call void @v4l2_device_unregister(ptr noundef %3) #8
  tail call fastcc void @s5p_mfc_unconfigure_dma_memory(ptr noundef %3)
  tail call void @s5p_mfc_final_pm(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @mfc_debug_level, align 4
  %4 = icmp sgt i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 637) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 29
  store volatile i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %15, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %1) #8
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %22, %21 ], [ -19, %17 ]
  %27 = phi ptr [ %23, %21 ], [ %15, %17 ]
  %28 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %27, i32 0, i32 23
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 %29(ptr noundef %1) #8
  br label %33

33:                                               ; preds = %31, %25, %21, %7
  %34 = phi i32 [ %26, %31 ], [ %26, %25 ], [ %22, %21 ], [ -19, %7 ]
  %35 = phi i32 [ %32, %31 ], [ -19, %25 ], [ -19, %21 ], [ -19, %7 ]
  %36 = load i32, ptr @mfc_debug_level, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 645, i32 noundef %34, i32 noundef %35) #9
  br label %40

40:                                               ; preds = %38, %33
  switch i32 %34, label %523 [
    i32 32, label %41
    i32 15, label %177
    i32 14, label %177
    i32 13, label %177
    i32 3, label %231
    i32 2, label %394
    i32 6, label %543
    i32 1, label %403
    i32 12, label %403
    i32 7, label %403
    i32 8, label %403
    i32 4, label %435
    i32 9, label %512
    i32 10, label %547
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 105
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load ptr, ptr %14, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %46, i32 0, i32 24
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(i32 noundef %35) #8
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = phi i32 [ %53, %52 ], [ -19, %48 ], [ -19, %45 ]
  %56 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 35
  %57 = load i32, ptr %56, align 4
  %58 = icmp sge i32 %55, %57
  %59 = freeze i1 %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  switch i32 %35, label %62 [
    i32 140, label %61
    i32 124, label %61
    i32 67, label %61
  ]

61:                                               ; preds = %60, %60, %60, %54
  tail call fastcc void @s5p_mfc_handle_frame(ptr noundef %13, i32 noundef 32, i32 noundef %35)
  br label %175

62:                                               ; preds = %60, %41
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.s5p_mfc_handle_error, i32 noundef 468, i32 noundef %35) #9
  %64 = icmp eq ptr %13, null
  br i1 %64, label %157, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %42, align 4
  switch i32 %66, label %137 [
    i32 112, label %67
    i32 113, label %67
    i32 114, label %67
    i32 106, label %67
    i32 107, label %67
    i32 105, label %67
  ]

67:                                               ; preds = %65, %65, %65, %65, %65, %65
  %68 = load ptr, ptr %13, align 4
  %69 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %68, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %69) #8
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %68, i32 0, i32 28
  %73 = and i32 %71, 31
  %74 = shl nuw i32 1, %73
  %75 = lshr i32 %71, 5
  %76 = getelementptr i32, ptr %72, i32 %75
  %77 = xor i32 %74, -1
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, %77
  store i32 %79, ptr %76, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %80 = load i16, ptr %69, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  store i32 109, ptr %42, align 4
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 12
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %109, label %85

85:                                               ; preds = %101, %67
  %86 = phi ptr [ %107, %101 ], [ %83, %67 ]
  %87 = getelementptr i8, ptr %86, i32 -4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.vb2_buffer, ptr %88, i32 0, i32 4
  %90 = load i32, ptr %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %92, %85
  %93 = phi ptr [ %97, %92 ], [ %88, %85 ]
  %94 = phi i32 [ %96, %92 ], [ 0, %85 ]
  %95 = getelementptr %struct.vb2_buffer, ptr %93, i32 0, i32 10, i32 %94, i32 3
  store i32 0, ptr %95, align 4
  %96 = add nuw i32 %94, 1
  %97 = load ptr, ptr %87, align 4
  %98 = getelementptr inbounds %struct.vb2_buffer, ptr %97, i32 0, i32 4
  %99 = load i32, ptr %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %92, label %101

101:                                              ; preds = %92, %85
  %102 = phi ptr [ %88, %85 ], [ %97, %92 ]
  tail call void @vb2_buffer_done(ptr noundef %102, i32 noundef 6) #8
  %103 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %86, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  store volatile ptr %105, ptr %104, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %103, align 4
  %107 = load volatile ptr, ptr %82, align 4
  %108 = icmp eq ptr %107, %82
  br i1 %108, label %109, label %85

109:                                              ; preds = %101, %67
  %110 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 11
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %152, label %113

113:                                              ; preds = %129, %109
  %114 = phi ptr [ %135, %129 ], [ %111, %109 ]
  %115 = getelementptr i8, ptr %114, i32 -4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.vb2_buffer, ptr %116, i32 0, i32 4
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %120, %113
  %121 = phi ptr [ %125, %120 ], [ %116, %113 ]
  %122 = phi i32 [ %124, %120 ], [ 0, %113 ]
  %123 = getelementptr %struct.vb2_buffer, ptr %121, i32 0, i32 10, i32 %122, i32 3
  store i32 0, ptr %123, align 4
  %124 = add nuw i32 %122, 1
  %125 = load ptr, ptr %115, align 4
  %126 = getelementptr inbounds %struct.vb2_buffer, ptr %125, i32 0, i32 4
  %127 = load i32, ptr %126, align 8
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %120, label %129

129:                                              ; preds = %120, %113
  %130 = phi ptr [ %116, %113 ], [ %125, %120 ]
  tail call void @vb2_buffer_done(ptr noundef %130, i32 noundef 6) #8
  %131 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %114, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %132, ptr %134, align 4
  store volatile ptr %133, ptr %132, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %114, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %131, align 4
  %135 = load volatile ptr, ptr %110, align 4
  %136 = icmp eq ptr %135, %110
  br i1 %136, label %152, label %113

137:                                              ; preds = %65
  %138 = load ptr, ptr %13, align 4
  %139 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %138, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %139) #8
  %140 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %138, i32 0, i32 28
  %143 = and i32 %141, 31
  %144 = shl nuw i32 1, %143
  %145 = lshr i32 %141, 5
  %146 = getelementptr i32, ptr %142, i32 %145
  %147 = xor i32 %144, -1
  %148 = load i32, ptr %146, align 4
  %149 = and i32 %148, %147
  store i32 %149, ptr %146, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %150 = load i16, ptr %139, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %139, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  store i32 109, ptr %42, align 4
  br label %152

152:                                              ; preds = %137, %129, %109
  %153 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 3
  store i32 1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 32, ptr %154, align 4
  %155 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %155, align 4
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %156, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %157

157:                                              ; preds = %152, %62
  %158 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %159 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %158) #8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162, !prof !13

161:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 496, i32 noundef 9, ptr noundef null) #8
  br label %162

162:                                              ; preds = %161, %157
  %163 = load ptr, ptr %14, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %163, i32 0, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void %167(ptr noundef %1) #8
  br label %170

170:                                              ; preds = %169, %165, %162
  tail call void @s5p_mfc_clock_off() #8
  %171 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 15
  store i32 1, ptr %171, align 4
  %172 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 16
  store i32 32, ptr %172, align 4
  %173 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 17
  store i32 %35, ptr %173, align 4
  %174 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %174, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %175

175:                                              ; preds = %170, %61
  %176 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %176) #8
  br label %536

177:                                              ; preds = %40, %40, %40
  %178 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 63
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.s5p_mfc_codec_ops, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %230, label %183

183:                                              ; preds = %177
  %184 = tail call i32 %181(ptr noundef %13) #8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 666) #9
  br label %188

188:                                              ; preds = %186, %183
  %189 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 16
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 106
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 59
  %194 = load volatile ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, %193
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load ptr, ptr %14, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %197, i32 0, i32 14
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  tail call void %201(ptr noundef %1) #8
  br label %204

204:                                              ; preds = %203, %199, %196
  tail call fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %13)
  br label %536

205:                                              ; preds = %192, %188
  %206 = load ptr, ptr %14, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %206, i32 0, i32 14
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void %210(ptr noundef %1) #8
  br label %213

213:                                              ; preds = %212, %208, %205
  %214 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %215 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %214) #8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218, !prof !13

217:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 675, i32 noundef 9, ptr noundef null) #8
  br label %218

218:                                              ; preds = %217, %213
  tail call void @s5p_mfc_clock_off() #8
  %219 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 3
  store i32 1, ptr %219, align 4
  %220 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 %34, ptr %220, align 4
  %221 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %221, align 4
  %222 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %222, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %223 = load ptr, ptr %14, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %536, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %223, i32 0, i32 13
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %536, label %229

229:                                              ; preds = %225
  tail call void %227(ptr noundef %1) #8
  br label %536

230:                                              ; preds = %177
  tail call fastcc void @s5p_mfc_handle_frame(ptr noundef %13, i32 noundef %34, i32 noundef %35)
  br label %536

231:                                              ; preds = %40
  %232 = icmp eq ptr %13, null
  br i1 %232, label %536, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %13, align 4
  %235 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 63
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.s5p_mfc_codec_ops, ptr %236, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = tail call i32 %238(ptr noundef nonnull %13) #8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %353, label %243

243:                                              ; preds = %240
  %244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.s5p_mfc_handle_seq_done, i32 noundef 513) #9
  br label %353

245:                                              ; preds = %233
  %246 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %234, i32 0, i32 36
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %247, i32 0, i32 25
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  %254 = tail call i32 %251(ptr noundef %234) #8
  br label %255

255:                                              ; preds = %253, %249, %245
  %256 = phi i32 [ %254, %253 ], [ -19, %249 ], [ -19, %245 ]
  %257 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 18
  store i32 %256, ptr %257, align 4
  %258 = load ptr, ptr %246, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %266, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %258, i32 0, i32 26
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = tail call i32 %262(ptr noundef %234) #8
  br label %266

266:                                              ; preds = %264, %260, %255
  %267 = phi i32 [ %265, %264 ], [ -19, %260 ], [ -19, %255 ]
  %268 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 19
  store i32 %267, ptr %268, align 4
  %269 = load ptr, ptr %246, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %269, i32 0, i32 8
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  tail call void %273(ptr noundef nonnull %13) #8
  %276 = load ptr, ptr %246, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %285, label %278

278:                                              ; preds = %275, %271
  %279 = phi ptr [ %276, %275 ], [ %269, %271 ]
  %280 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %279, i32 0, i32 27
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %278
  %284 = tail call i32 %281(ptr noundef %234) #8
  br label %285

285:                                              ; preds = %283, %278, %275, %266
  %286 = phi i32 [ %284, %283 ], [ -19, %278 ], [ -19, %275 ], [ -19, %266 ]
  %287 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 46
  store i32 %286, ptr %287, align 4
  %288 = load ptr, ptr %246, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %296, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %288, i32 0, i32 28
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = tail call i32 %292(ptr noundef %234) #8
  br label %296

296:                                              ; preds = %294, %290, %285
  %297 = phi i32 [ %295, %294 ], [ -19, %290 ], [ -19, %285 ]
  %298 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 48
  store i32 %297, ptr %298, align 4
  %299 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %234, i32 0, i32 10
  %300 = load ptr, ptr %299, align 4
  %301 = load i32, ptr %300, align 4
  %302 = icmp ugt i32 %301, 159
  br i1 %302, label %303, label %315

303:                                              ; preds = %296
  %304 = load ptr, ptr %246, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %304, i32 0, i32 37
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = tail call i32 %308(ptr noundef %234) #8
  br label %312

312:                                              ; preds = %310, %306, %303
  %313 = phi i32 [ %311, %310 ], [ -19, %306 ], [ -19, %303 ]
  %314 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 66
  store i32 %313, ptr %314, align 4
  br label %315

315:                                              ; preds = %312, %296
  %316 = load i32, ptr %257, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = load i32, ptr %268, align 4
  %320 = icmp eq i32 %319, 0
  %321 = select i1 %320, i32 109, i32 102
  br label %322

322:                                              ; preds = %318, %315
  %323 = phi i32 [ 109, %315 ], [ %321, %318 ]
  %324 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 16
  store i32 %323, ptr %324, align 4
  %325 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 39
  %326 = load i32, ptr %325, align 4
  %327 = icmp ult i32 %326, 2
  br i1 %327, label %328, label %351

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 11
  %330 = load volatile ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, %329
  br i1 %331, label %351, label %332

332:                                              ; preds = %328
  %333 = getelementptr i8, ptr %330, i32 -4
  %334 = load ptr, ptr %246, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %342, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %334, i32 0, i32 21
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  %341 = tail call i32 %338(ptr noundef %234) #8
  br label %342

342:                                              ; preds = %340, %336, %332
  %343 = phi i32 [ %341, %340 ], [ -19, %336 ], [ -19, %332 ]
  %344 = load ptr, ptr %333, align 4
  %345 = getelementptr inbounds %struct.vb2_buffer, ptr %344, i32 0, i32 10, i32 0, i32 3
  %346 = load i32, ptr %345, align 4
  %347 = icmp ult i32 %343, %346
  %348 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 27
  br i1 %347, label %349, label %350

349:                                              ; preds = %342
  store i32 0, ptr %348, align 4
  br label %353

350:                                              ; preds = %342
  store i32 1, ptr %348, align 4
  br label %353

351:                                              ; preds = %328, %322
  %352 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 27
  store i32 1, ptr %352, align 4
  br label %353

353:                                              ; preds = %351, %350, %349, %243, %240
  %354 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %234, i32 0, i32 36
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %362, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %355, i32 0, i32 14
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %362, label %361

361:                                              ; preds = %357
  tail call void %359(ptr noundef %234) #8
  br label %362

362:                                              ; preds = %361, %357, %353
  %363 = load ptr, ptr %13, align 4
  %364 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %363, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %364) #8
  %365 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %366 = load i32, ptr %365, align 4
  %367 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %363, i32 0, i32 28
  %368 = and i32 %366, 31
  %369 = shl nuw i32 1, %368
  %370 = lshr i32 %366, 5
  %371 = getelementptr i32, ptr %367, i32 %370
  %372 = xor i32 %369, -1
  %373 = load i32, ptr %371, align 4
  %374 = and i32 %373, %372
  store i32 %374, ptr %371, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %375 = load i16, ptr %364, align 4
  %376 = add i16 %375, 1
  store i16 %376, ptr %364, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %377 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %234, i32 0, i32 25
  %378 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %377) #8
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381, !prof !13

380:                                              ; preds = %362
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 552, i32 noundef 9, ptr noundef null) #8
  br label %381

381:                                              ; preds = %380, %362
  tail call void @s5p_mfc_clock_off() #8
  %382 = load ptr, ptr %354, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %389, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %382, i32 0, i32 13
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %389, label %388

388:                                              ; preds = %384
  tail call void %386(ptr noundef %234) #8
  br label %389

389:                                              ; preds = %388, %384, %381
  %390 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 3
  store i32 1, ptr %390, align 4
  %391 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 3, ptr %391, align 4
  %392 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %392, align 4
  %393 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %393, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %536

394:                                              ; preds = %40
  %395 = load ptr, ptr %14, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %543, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %395, i32 0, i32 29
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %543, label %401

401:                                              ; preds = %397
  %402 = tail call i32 %399(ptr noundef %1) #8
  br label %543

403:                                              ; preds = %40, %40, %40, %40
  %404 = icmp eq ptr %13, null
  br i1 %404, label %420, label %405

405:                                              ; preds = %403
  %406 = load ptr, ptr %13, align 4
  %407 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %406, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %407) #8
  %408 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %409 = load i32, ptr %408, align 4
  %410 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %406, i32 0, i32 28
  %411 = and i32 %409, 31
  %412 = shl nuw i32 1, %411
  %413 = lshr i32 %409, 5
  %414 = getelementptr i32, ptr %410, i32 %413
  %415 = xor i32 %412, -1
  %416 = load i32, ptr %414, align 4
  %417 = and i32 %416, %415
  store i32 %417, ptr %414, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %418 = load i16, ptr %407, align 4
  %419 = add i16 %418, 1
  store i16 %419, ptr %407, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %420

420:                                              ; preds = %405, %403
  %421 = load ptr, ptr %14, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %428, label %423

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %421, i32 0, i32 14
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  tail call void %425(ptr noundef %1) #8
  br label %428

428:                                              ; preds = %427, %423, %420
  %429 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %429) #8
  %430 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %430) #8
  %431 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 15
  store i32 1, ptr %431, align 4
  %432 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 16
  store i32 %34, ptr %432, align 4
  %433 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 17
  store i32 %35, ptr %433, align 4
  %434 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %434, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %536

435:                                              ; preds = %40
  %436 = icmp eq ptr %13, null
  br i1 %436, label %536, label %437

437:                                              ; preds = %435
  %438 = load ptr, ptr %13, align 4
  %439 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %438, i32 0, i32 36
  %440 = load ptr, ptr %439, align 4
  %441 = icmp eq ptr %440, null
  br i1 %441, label %448, label %442

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %440, i32 0, i32 14
  %444 = load ptr, ptr %443, align 4
  %445 = icmp eq ptr %444, null
  br i1 %445, label %448, label %446

446:                                              ; preds = %442
  tail call void %444(ptr noundef %438) #8
  %447 = load ptr, ptr %13, align 4
  br label %448

448:                                              ; preds = %446, %442, %437
  %449 = phi ptr [ %438, %437 ], [ %438, %442 ], [ %447, %446 ]
  %450 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 4, ptr %450, align 4
  %451 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %451, align 4
  %452 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 3
  store i32 1, ptr %452, align 4
  %453 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %449, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %453) #8
  %454 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %455 = load i32, ptr %454, align 4
  %456 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %449, i32 0, i32 28
  %457 = and i32 %455, 31
  %458 = shl nuw i32 1, %457
  %459 = lshr i32 %455, 5
  %460 = getelementptr i32, ptr %456, i32 %459
  %461 = xor i32 %458, -1
  %462 = load i32, ptr %460, align 4
  %463 = and i32 %462, %461
  store i32 %463, ptr %460, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %464 = load i16, ptr %453, align 4
  %465 = add i16 %464, 1
  store i16 %465, ptr %453, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %466 = icmp eq i32 %35, 0
  br i1 %466, label %467, label %505

467:                                              ; preds = %448
  %468 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 16
  store i32 105, ptr %468, align 4
  %469 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 26
  %470 = load i32, ptr %469, align 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %490

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 27
  %474 = load i32, ptr %473, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %490, label %476

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 11
  %478 = load volatile ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, %477
  br i1 %479, label %491, label %480

480:                                              ; preds = %476
  %481 = getelementptr i8, ptr %478, i32 -4
  %482 = getelementptr inbounds %struct.list_head, ptr %478, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  %484 = load ptr, ptr %478, align 4
  %485 = getelementptr inbounds %struct.list_head, ptr %484, i32 0, i32 1
  store ptr %483, ptr %485, align 4
  store volatile ptr %484, ptr %483, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %478, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %482, align 4
  %486 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 13
  %487 = load i32, ptr %486, align 4
  %488 = add i32 %487, -1
  store i32 %488, ptr %486, align 4
  %489 = load ptr, ptr %481, align 4
  tail call void @vb2_buffer_done(ptr noundef %489, i32 noundef 5) #8
  br label %491

490:                                              ; preds = %472, %467
  store i32 0, ptr %469, align 4
  br label %491

491:                                              ; preds = %490, %480, %476
  %492 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %438, i32 0, i32 25
  %493 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %492) #8
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %496, !prof !13

495:                                              ; preds = %491
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 587, i32 noundef 9, ptr noundef null) #8
  br label %496

496:                                              ; preds = %495, %491
  tail call void @s5p_mfc_clock_off() #8
  %497 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %497, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %498 = load ptr, ptr %439, align 4
  %499 = icmp eq ptr %498, null
  br i1 %499, label %536, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %498, i32 0, i32 13
  %502 = load ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, null
  br i1 %503, label %536, label %504

504:                                              ; preds = %500
  tail call void %502(ptr noundef %438) #8
  br label %536

505:                                              ; preds = %448
  %506 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %438, i32 0, i32 25
  %507 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %506) #8
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %510, !prof !13

509:                                              ; preds = %505
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 594, i32 noundef 9, ptr noundef null) #8
  br label %510

510:                                              ; preds = %509, %505
  tail call void @s5p_mfc_clock_off() #8
  %511 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %511, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %536

512:                                              ; preds = %40
  %513 = load ptr, ptr %14, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %520, label %515

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %513, i32 0, i32 14
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %520, label %519

519:                                              ; preds = %515
  tail call void %517(ptr noundef %1) #8
  br label %520

520:                                              ; preds = %519, %515, %512
  %521 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 9, ptr %521, align 4
  %522 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %522, align 4
  tail call fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %13)
  br label %536

523:                                              ; preds = %40
  %524 = load i32, ptr @mfc_debug_level, align 4
  %525 = icmp sgt i32 %524, 1
  br i1 %525, label %526, label %528

526:                                              ; preds = %523
  %527 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 726) #9
  br label %528

528:                                              ; preds = %526, %523
  %529 = load ptr, ptr %14, align 4
  %530 = icmp eq ptr %529, null
  br i1 %530, label %536, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %529, i32 0, i32 14
  %533 = load ptr, ptr %532, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %531
  tail call void %533(ptr noundef %1) #8
  br label %536

536:                                              ; preds = %535, %531, %528, %520, %510, %504, %500, %496, %435, %428, %389, %231, %230, %229, %225, %218, %204, %175
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %537 = load i16, ptr %9, align 4
  %538 = add i16 %537, 1
  store i16 %538, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %539 = load i32, ptr @mfc_debug_level, align 4
  %540 = icmp sgt i32 %539, 4
  br i1 %540, label %541, label %596

541:                                              ; preds = %536
  %542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 730) #9
  br label %596

543:                                              ; preds = %401, %397, %394, %40
  %544 = phi i32 [ %402, %401 ], [ -19, %397 ], [ -19, %394 ], [ -1, %40 ]
  %545 = phi i32 [ 101, %401 ], [ 101, %397 ], [ 101, %394 ], [ 0, %40 ]
  %546 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 17
  store i32 %544, ptr %546, align 4
  br label %547

547:                                              ; preds = %543, %40
  %548 = phi i32 [ 105, %40 ], [ %545, %543 ]
  %549 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 16
  store i32 %548, ptr %549, align 4
  %550 = load ptr, ptr %14, align 4
  %551 = icmp eq ptr %550, null
  br i1 %551, label %557, label %552

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %550, i32 0, i32 14
  %554 = load ptr, ptr %553, align 4
  %555 = icmp eq ptr %554, null
  br i1 %555, label %557, label %556

556:                                              ; preds = %552
  tail call void %554(ptr noundef %1) #8
  br label %557

557:                                              ; preds = %556, %552, %547
  %558 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 4
  store i32 %34, ptr %558, align 4
  %559 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 5
  store i32 %35, ptr %559, align 4
  %560 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 3
  store i32 1, ptr %560, align 4
  %561 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %562 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %561) #8
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %566

564:                                              ; preds = %557
  %565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 738) #9
  br label %566

566:                                              ; preds = %564, %557
  tail call void @s5p_mfc_clock_off() #8
  %567 = load ptr, ptr %13, align 4
  %568 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %567, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %568) #8
  %569 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 2
  %570 = load i32, ptr %569, align 4
  %571 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %567, i32 0, i32 28
  %572 = and i32 %570, 31
  %573 = shl nuw i32 1, %572
  %574 = lshr i32 %570, 5
  %575 = getelementptr i32, ptr %571, i32 %574
  %576 = xor i32 %573, -1
  %577 = load i32, ptr %575, align 4
  %578 = and i32 %577, %576
  store i32 %578, ptr %575, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %579 = load i16, ptr %568, align 4
  %580 = add i16 %579, 1
  store i16 %580, ptr %568, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %581 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %581, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %582 = load ptr, ptr %14, align 4
  %583 = icmp eq ptr %582, null
  br i1 %583, label %589, label %584

584:                                              ; preds = %566
  %585 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %582, i32 0, i32 13
  %586 = load ptr, ptr %585, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %589, label %588

588:                                              ; preds = %584
  tail call void %586(ptr noundef %1) #8
  br label %589

589:                                              ; preds = %588, %584, %566
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %590 = load i16, ptr %9, align 4
  %591 = add i16 %590, 1
  store i16 %591, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %592 = load i32, ptr @mfc_debug_level, align 4
  %593 = icmp sgt i32 %592, 1
  br i1 %593, label %594, label %596

594:                                              ; preds = %589
  %595 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_irq, i32 noundef 746) #9
  br label %596

596:                                              ; preds = %594, %589, %541, %536
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_init_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_load_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_watchdog_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -536
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.s5p_mfc_watchdog_worker, i32 noundef 174) #9
  %4 = getelementptr i8, ptr %0, i32 -144
  %5 = tail call i32 @mutex_trylock(ptr noundef %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.s5p_mfc_watchdog_worker, i32 noundef 179) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr i8, ptr %0, i32 -152
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  tail call void @s5p_mfc_clock_off() #8
  %12 = getelementptr i8, ptr %0, i32 -52
  br label %13

13:                                               ; preds = %94, %9
  %14 = phi i32 [ 0, %9 ], [ %95, %94 ]
  %15 = getelementptr [4 x ptr], ptr %12, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 16
  store i32 109, ptr %19, align 4
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 12
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %47, label %23

23:                                               ; preds = %39, %18
  %24 = phi ptr [ %45, %39 ], [ %21, %18 ]
  %25 = getelementptr i8, ptr %24, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %30, %23
  %31 = phi ptr [ %35, %30 ], [ %26, %23 ]
  %32 = phi i32 [ %34, %30 ], [ 0, %23 ]
  %33 = getelementptr %struct.vb2_buffer, ptr %31, i32 0, i32 10, i32 %32, i32 3
  store i32 0, ptr %33, align 4
  %34 = add nuw i32 %32, 1
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.vb2_buffer, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %23
  %40 = phi ptr [ %26, %23 ], [ %35, %30 ]
  tail call void @vb2_buffer_done(ptr noundef %40, i32 noundef 6) #8
  %41 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  %45 = load volatile ptr, ptr %20, align 4
  %46 = icmp eq ptr %45, %20
  br i1 %46, label %47, label %23

47:                                               ; preds = %39, %18
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 11
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %75, label %51

51:                                               ; preds = %67, %47
  %52 = phi ptr [ %73, %67 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 -4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.vb2_buffer, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %51
  %59 = phi ptr [ %63, %58 ], [ %54, %51 ]
  %60 = phi i32 [ %62, %58 ], [ 0, %51 ]
  %61 = getelementptr %struct.vb2_buffer, ptr %59, i32 0, i32 10, i32 %60, i32 3
  store i32 0, ptr %61, align 4
  %62 = add nuw i32 %60, 1
  %63 = load ptr, ptr %53, align 4
  %64 = getelementptr inbounds %struct.vb2_buffer, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %58, label %67

67:                                               ; preds = %58, %51
  %68 = phi ptr [ %54, %51 ], [ %63, %58 ]
  tail call void @vb2_buffer_done(ptr noundef %68, i32 noundef 6) #8
  %69 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %52, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  %73 = load volatile ptr, ptr %48, align 4
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %51

75:                                               ; preds = %67, %47
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %76, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %77) #8
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %76, i32 0, i32 28
  %81 = and i32 %79, 31
  %82 = shl nuw i32 1, %81
  %83 = lshr i32 %79, 5
  %84 = getelementptr i32, ptr %80, i32 %83
  %85 = xor i32 %82, -1
  %86 = load i32, ptr %84, align 4
  %87 = and i32 %86, %85
  store i32 %87, ptr %84, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %88 = load i16, ptr %77, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 3
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 4
  store i32 32, ptr %91, align 4
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 5
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %16, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %93, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %94

94:                                               ; preds = %75, %13
  %95 = add nuw nsw i32 %14, 1
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %13

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %0, i32 -56
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %98) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  tail call void @s5p_mfc_deinit_hw(ptr noundef %2) #8
  %99 = getelementptr i8, ptr %0, i32 -156
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = tail call i32 @s5p_mfc_load_firmware(ptr noundef %2) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.s5p_mfc_watchdog_worker, i32 noundef 205) #9
  br label %113

107:                                              ; preds = %102
  %108 = tail call i32 @s5p_mfc_clock_on() #8
  %109 = tail call i32 @s5p_mfc_init_hw(ptr noundef %2) #8
  tail call void @s5p_mfc_clock_off() #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.s5p_mfc_watchdog_worker, i32 noundef 212) #9
  br label %113

113:                                              ; preds = %111, %107, %105, %97
  br i1 %6, label %115, label %114

114:                                              ; preds = %113
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %115

115:                                              ; preds = %114, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_watchdog(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !15
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 9
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.s5p_mfc_watchdog, i32 noundef 156) #9
  %15 = getelementptr i8, ptr %0, i32 24
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15) #8
  br label %18

18:                                               ; preds = %13, %9
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 100
  %21 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  tail call void @add_timer(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_v4l2_ioctl_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_v4l2_ioctl_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_hw_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_hw_cmds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_final_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_unconfigure_dma_memory(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @s5p_mfc_release_firmware(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 35
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dev_iommu, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %29, label %18

18:                                               ; preds = %12, %8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 23
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #8
  %27 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  tail call void @bitmap_free(ptr noundef %28) #8
  br label %34

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void @device_unregister(ptr noundef %31) #8
  %32 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @device_unregister(ptr noundef %33) #8
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_frame(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %4) #8
  %14 = load ptr, ptr %5, align 4
  %15 = and i32 %13, 7
  %16 = icmp eq ptr %14, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %15, %12 ], [ 5, %8 ]
  %19 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %20 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = tail call i32 %21(ptr noundef %4) #8
  %25 = load ptr, ptr %5, align 4
  %26 = and i32 %24, 7
  %27 = icmp eq ptr %25, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23, %17
  %29 = phi i32 [ %26, %23 ], [ 5, %17 ]
  %30 = phi ptr [ %25, %23 ], [ %19, %17 ]
  %31 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %30, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call i32 %32(ptr noundef %4) #8
  br label %36

36:                                               ; preds = %34, %28, %23, %12, %3
  %37 = phi i32 [ %29, %34 ], [ %29, %28 ], [ %26, %23 ], [ 5, %12 ], [ 5, %3 ]
  %38 = phi i32 [ %18, %34 ], [ %18, %28 ], [ %18, %23 ], [ %15, %12 ], [ 5, %3 ]
  %39 = phi i32 [ %35, %34 ], [ -19, %28 ], [ -19, %23 ], [ -19, %12 ], [ -19, %3 ]
  %40 = lshr i32 %39, 4
  %41 = and i32 %40, 3
  %42 = load i32, ptr @mfc_debug_level, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.s5p_mfc_handle_frame, i32 noundef 375, i32 noundef %38) #9
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 112
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 113, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ 113, %50 ], [ %48, %46 ]
  %53 = add nsw i32 %41, -1
  %54 = icmp ult i32 %53, 2
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  store i32 112, ptr %47, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %56, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void %60(ptr noundef %4) #8
  br label %63

63:                                               ; preds = %62, %58, %55
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 3
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  store i32 %1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 5
  store i32 %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %67, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %68 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 25
  %69 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %68) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72, !prof !13

71:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 383, i32 noundef 9, ptr noundef null) #8
  br label %72

72:                                               ; preds = %71, %63
  tail call void @s5p_mfc_clock_off() #8
  %73 = load ptr, ptr %5, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %464, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %73, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %464, label %79

79:                                               ; preds = %75
  tail call void %77(ptr noundef %4) #8
  br label %464

80:                                               ; preds = %51
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 26
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = icmp eq i32 %38, 3
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = icmp eq i32 %52, 113
  tail call fastcc void @s5p_mfc_handle_frame_all_extracted(ptr noundef %0)
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  store i32 114, ptr %47, align 4
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 1
  tail call void @v4l2_event_queue_fh(ptr noundef %90, ptr noundef nonnull @s5p_mfc_handle_frame.ev_src_ch) #8
  br label %401

91:                                               ; preds = %87, %85
  %92 = icmp eq i32 %37, 1
  br i1 %92, label %93, label %176

93:                                               ; preds = %91
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %94, i32 0, i32 36
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %116, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %96, i32 0, i32 19
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = tail call i32 %100(ptr noundef %94) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %176, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %95, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %105, %98
  %109 = phi i32 [ %103, %105 ], [ -19, %98 ]
  %110 = phi ptr [ %106, %105 ], [ %96, %98 ]
  %111 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %110, i32 0, i32 16
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = tail call i32 %112(ptr noundef %94) #8
  br label %116

116:                                              ; preds = %114, %108, %105, %93
  %117 = phi i32 [ %109, %114 ], [ %109, %108 ], [ %103, %105 ], [ -19, %93 ]
  %118 = phi i32 [ %115, %114 ], [ -19, %108 ], [ -19, %105 ], [ -19, %93 ]
  %119 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 -4
  %122 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  br label %123

123:                                              ; preds = %127, %116
  %124 = phi ptr [ %122, %116 ], [ %125, %127 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %122
  br i1 %126, label %176, label %127

127:                                              ; preds = %123
  %128 = getelementptr i8, ptr %125, i32 -4
  %129 = load ptr, ptr %128, align 4
  %130 = tail call ptr @vb2_plane_cookie(ptr noundef %129, i32 noundef 0) #8
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, %118
  br i1 %132, label %133, label %123

133:                                              ; preds = %127
  %134 = getelementptr i8, ptr %125, i32 -4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %121, align 4
  %138 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %137, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %136, ptr noundef align 8 dereferenceable(16) %138, i32 16, i1 false) #8
  %139 = load ptr, ptr %121, align 4
  %140 = getelementptr inbounds %struct.vb2_buffer, ptr %139, i32 0, i32 5
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %134, align 4
  %143 = getelementptr inbounds %struct.vb2_buffer, ptr %142, i32 0, i32 5
  store i64 %141, ptr %143, align 8
  %144 = load ptr, ptr %134, align 4
  %145 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, -458753
  store i32 %147, ptr %145, align 8
  %148 = load ptr, ptr %121, align 4
  %149 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %148, i32 0, i32 1
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 458752
  %152 = load ptr, ptr %134, align 4
  %153 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, ptr %153, align 8
  switch i32 %117, label %171 [
    i32 1, label %156
    i32 2, label %161
    i32 3, label %166
  ]

156:                                              ; preds = %133
  %157 = load ptr, ptr %134, align 4
  %158 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %157, i32 0, i32 1
  %159 = load i32, ptr %158, align 8
  %160 = or i32 %159, 8
  store i32 %160, ptr %158, align 8
  br label %176

161:                                              ; preds = %133
  %162 = load ptr, ptr %134, align 4
  %163 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %162, i32 0, i32 1
  %164 = load i32, ptr %163, align 8
  %165 = or i32 %164, 16
  store i32 %165, ptr %163, align 8
  br label %176

166:                                              ; preds = %133
  %167 = load ptr, ptr %134, align 4
  %168 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 8
  %170 = or i32 %169, 32
  store i32 %170, ptr %168, align 8
  br label %176

171:                                              ; preds = %133
  %172 = load i32, ptr @mfc_debug_level, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.s5p_mfc_handle_frame_copy_time, i32 noundef 295, i32 noundef %117) #9
  br label %176

176:                                              ; preds = %174, %171, %166, %161, %156, %123, %102, %91
  %177 = add nsw i32 %38, -1
  %178 = icmp ult i32 %177, 2
  br i1 %178, label %179, label %328

179:                                              ; preds = %176
  %180 = load ptr, ptr %0, align 4
  %181 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %180, i32 0, i32 36
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %182, i32 0, i32 15
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = tail call i32 %186(ptr noundef %180) #8
  %190 = load ptr, ptr %181, align 4
  br label %191

191:                                              ; preds = %188, %184, %179
  %192 = phi ptr [ null, %179 ], [ %182, %184 ], [ %190, %188 ]
  %193 = phi i32 [ -19, %179 ], [ -19, %184 ], [ %189, %188 ]
  %194 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %180, i32 0, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %196, 95
  %198 = icmp eq ptr %192, null
  br i1 %197, label %199, label %206

199:                                              ; preds = %191
  br i1 %198, label %225, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %192, i32 0, i32 20
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %225, label %204

204:                                              ; preds = %200
  %205 = tail call i32 %202(ptr noundef %0) #8
  br label %213

206:                                              ; preds = %191
  br i1 %198, label %225, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %192, i32 0, i32 19
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = tail call i32 %209(ptr noundef %180) #8
  br label %213

213:                                              ; preds = %211, %204
  %214 = phi i32 [ %205, %204 ], [ %212, %211 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 44
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 36
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, 1
  store i32 %223, ptr %221, align 4
  br label %224

224:                                              ; preds = %220, %216
  store i32 0, ptr %217, align 4
  br label %333

225:                                              ; preds = %213, %207, %206, %200, %199
  %226 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 36
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  br label %230

230:                                              ; preds = %234, %225
  %231 = phi ptr [ %229, %225 ], [ %232, %234 ]
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, %229
  br i1 %233, label %333, label %234

234:                                              ; preds = %230
  %235 = getelementptr i8, ptr %232, i32 -4
  %236 = load ptr, ptr %235, align 4
  %237 = tail call ptr @vb2_plane_cookie(ptr noundef %236, i32 noundef 0) #8
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, %193
  br i1 %239, label %240, label %230

240:                                              ; preds = %234
  %241 = getelementptr i8, ptr %232, i32 -4
  %242 = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %232, align 4
  %245 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  store ptr %243, ptr %245, align 4
  store volatile ptr %244, ptr %243, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %232, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %242, align 4
  %246 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, -1
  store i32 %248, ptr %246, align 4
  %249 = load i32, ptr %226, align 4
  %250 = load ptr, ptr %241, align 4
  %251 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %250, i32 0, i32 4
  store i32 %249, ptr %251, align 8
  %252 = load ptr, ptr %181, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %275, label %254

254:                                              ; preds = %240
  %255 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %252, i32 0, i32 33
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = tail call i32 %256(ptr noundef %0) #8
  %260 = load ptr, ptr %181, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %270, label %262

262:                                              ; preds = %258, %254
  %263 = phi i32 [ %259, %258 ], [ -19, %254 ]
  %264 = phi ptr [ %260, %258 ], [ %252, %254 ]
  %265 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %264, i32 0, i32 34
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %262
  %269 = tail call i32 %266(ptr noundef %0) #8
  br label %270

270:                                              ; preds = %268, %262, %258
  %271 = phi i32 [ %263, %268 ], [ %263, %262 ], [ %259, %258 ]
  %272 = phi i32 [ %269, %268 ], [ -19, %262 ], [ -19, %258 ]
  %273 = icmp eq i32 %271, %272
  %274 = select i1 %273, i32 1, i32 4
  br label %275

275:                                              ; preds = %270, %240
  %276 = phi i32 [ 1, %240 ], [ %274, %270 ]
  %277 = load ptr, ptr %241, align 4
  %278 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %277, i32 0, i32 2
  store i32 %276, ptr %278, align 4
  %279 = load ptr, ptr %241, align 4
  %280 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.vb2_buffer, ptr %279, i32 0, i32 4
  %283 = load i32, ptr %282, align 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %320, label %285

285:                                              ; preds = %275
  %286 = getelementptr %struct.vb2_buffer, ptr %279, i32 0, i32 10, i32 0, i32 4
  %287 = load i32, ptr %286, align 8
  %288 = icmp ult i32 %287, %281
  %289 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %290 = xor i1 %289, true
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %293, !prof !13

292:                                              ; preds = %285
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %293

293:                                              ; preds = %292, %285
  br i1 %288, label %294, label %296

294:                                              ; preds = %293
  %295 = load i32, ptr %286, align 8
  br label %296

296:                                              ; preds = %294, %293
  %297 = phi i32 [ %295, %294 ], [ %281, %293 ]
  %298 = getelementptr %struct.vb2_buffer, ptr %279, i32 0, i32 10, i32 0, i32 3
  store i32 %297, ptr %298, align 4
  %299 = load ptr, ptr %241, align 4
  %300 = getelementptr inbounds %struct.vb2_buffer, ptr %299, i32 0, i32 4
  %301 = load i32, ptr %300, align 8
  %302 = icmp ugt i32 %301, 1
  %303 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %304 = load i32, ptr %303, align 4
  br i1 %302, label %305, label %320

305:                                              ; preds = %296
  %306 = getelementptr %struct.vb2_buffer, ptr %299, i32 0, i32 10, i32 1, i32 4
  %307 = load i32, ptr %306, align 8
  %308 = icmp ult i32 %307, %304
  %309 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %310 = xor i1 %309, true
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %312, label %313, !prof !13

312:                                              ; preds = %305
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %313

313:                                              ; preds = %312, %305
  br i1 %308, label %314, label %316

314:                                              ; preds = %313
  %315 = load i32, ptr %306, align 8
  br label %316

316:                                              ; preds = %314, %313
  %317 = phi i32 [ %315, %314 ], [ %304, %313 ]
  %318 = getelementptr %struct.vb2_buffer, ptr %299, i32 0, i32 10, i32 1, i32 3
  store i32 %317, ptr %318, align 4
  %319 = load ptr, ptr %241, align 4
  br label %320

320:                                              ; preds = %316, %296, %275
  %321 = phi ptr [ %319, %316 ], [ %299, %296 ], [ %279, %275 ]
  %322 = getelementptr inbounds %struct.vb2_buffer, ptr %321, i32 0, i32 1
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 37
  tail call void @_clear_bit(i32 noundef %323, ptr noundef %324) #8
  %325 = load ptr, ptr %241, align 4
  %326 = icmp eq i32 %2, 0
  %327 = select i1 %326, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef %325, i32 noundef %327) #8
  br label %333

328:                                              ; preds = %176
  %329 = load i32, ptr @mfc_debug_level, align 4
  %330 = icmp sgt i32 %329, 1
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.s5p_mfc_handle_frame, i32 noundef 418) #9
  br label %335

333:                                              ; preds = %320, %230, %224
  %334 = icmp eq i32 %38, 2
  br i1 %334, label %401, label %335

335:                                              ; preds = %333, %331, %328
  %336 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %337 = load volatile ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, %336
  br i1 %338, label %401, label %339

339:                                              ; preds = %335
  %340 = getelementptr i8, ptr %337, i32 -4
  %341 = load ptr, ptr %5, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %341, i32 0, i32 21
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %343
  %348 = tail call i32 %345(ptr noundef %4) #8
  br label %349

349:                                              ; preds = %347, %343, %339
  %350 = phi i32 [ %348, %347 ], [ -19, %343 ], [ -19, %339 ]
  %351 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 25
  %352 = load i32, ptr %351, align 4
  %353 = add i32 %352, %350
  store i32 %353, ptr %351, align 4
  %354 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %355 = load i32, ptr %354, align 4
  switch i32 %355, label %356 [
    i32 0, label %369
    i32 7, label %369
  ]

356:                                              ; preds = %349
  %357 = add i32 %353, 4
  %358 = load ptr, ptr %340, align 4
  %359 = getelementptr inbounds %struct.vb2_buffer, ptr %358, i32 0, i32 10, i32 0, i32 3
  %360 = load i32, ptr %359, align 4
  %361 = icmp ult i32 %357, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load i32, ptr @mfc_debug_level, align 4
  %364 = icmp sgt i32 %363, 1
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.s5p_mfc_handle_frame, i32 noundef 432) #9
  br label %367

367:                                              ; preds = %365, %362
  %368 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 44
  store i32 1, ptr %368, align 4
  br label %401

369:                                              ; preds = %356, %349, %349
  %370 = load i32, ptr @mfc_debug_level, align 4
  %371 = icmp sgt i32 %370, 1
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.s5p_mfc_handle_frame, i32 noundef 435) #9
  br label %374

374:                                              ; preds = %372, %369
  store i32 0, ptr %351, align 4
  %375 = getelementptr i8, ptr %337, i32 16
  %376 = load i32, ptr %375, align 4
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %374
  store i32 106, ptr %47, align 4
  br label %380

380:                                              ; preds = %379, %374
  %381 = getelementptr inbounds %struct.list_head, ptr %337, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = load ptr, ptr %337, align 4
  %384 = getelementptr inbounds %struct.list_head, ptr %383, i32 0, i32 1
  store ptr %382, ptr %384, align 4
  store volatile ptr %383, ptr %382, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %337, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %381, align 4
  %385 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %386 = load i32, ptr %385, align 4
  %387 = add i32 %386, -1
  store i32 %387, ptr %385, align 4
  %388 = load ptr, ptr %5, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %399, label %390

390:                                              ; preds = %380
  %391 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %388, i32 0, i32 24
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %399, label %394

394:                                              ; preds = %390
  %395 = tail call i32 %392(i32 noundef %2) #8
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %394
  %398 = load ptr, ptr %340, align 4
  tail call void @vb2_buffer_done(ptr noundef %398, i32 noundef 6) #8
  br label %401

399:                                              ; preds = %394, %390, %380
  %400 = load ptr, ptr %340, align 4
  tail call void @vb2_buffer_done(ptr noundef %400, i32 noundef 5) #8
  br label %401

401:                                              ; preds = %399, %397, %367, %335, %333, %89
  %402 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %403 = load i32, ptr %402, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %401
  %406 = load i32, ptr %47, align 4
  %407 = icmp eq i32 %406, 106
  br i1 %407, label %408, label %414

408:                                              ; preds = %405, %401
  %409 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %410 = load i32, ptr %409, align 4
  %411 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %412 = load i32, ptr %411, align 4
  %413 = icmp ult i32 %410, %412
  br i1 %413, label %414, label %429

414:                                              ; preds = %408, %405
  %415 = load ptr, ptr %0, align 4
  %416 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %415, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %416) #8
  %417 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %415, i32 0, i32 28
  %420 = and i32 %418, 31
  %421 = shl nuw i32 1, %420
  %422 = lshr i32 %418, 5
  %423 = getelementptr i32, ptr %419, i32 %422
  %424 = xor i32 %421, -1
  %425 = load i32, ptr %423, align 4
  %426 = and i32 %425, %424
  store i32 %426, ptr %423, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %427 = load i16, ptr %416, align 4
  %428 = add i16 %427, 1
  store i16 %428, ptr %416, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %429

429:                                              ; preds = %414, %408
  %430 = load ptr, ptr %5, align 4
  %431 = icmp eq ptr %430, null
  br i1 %431, label %437, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %430, i32 0, i32 14
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, null
  br i1 %435, label %437, label %436

436:                                              ; preds = %432
  tail call void %434(ptr noundef %4) #8
  br label %437

437:                                              ; preds = %436, %432, %429
  %438 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 3
  store i32 1, ptr %438, align 4
  %439 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  store i32 %1, ptr %439, align 4
  %440 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 5
  store i32 %2, ptr %440, align 4
  %441 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %441, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %442 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 25
  %443 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %442) #8
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446, !prof !13

445:                                              ; preds = %437
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 455, i32 noundef 9, ptr noundef null) #8
  br label %446

446:                                              ; preds = %445, %437
  tail call void @s5p_mfc_clock_off() #8
  %447 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 33
  %448 = load volatile i32, ptr %447, align 4
  %449 = and i32 %448, 1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %456, label %451

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 15
  store i32 1, ptr %452, align 4
  %453 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 16
  store i32 %1, ptr %453, align 4
  %454 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 17
  store i32 %2, ptr %454, align 4
  %455 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %455, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %464

456:                                              ; preds = %446
  %457 = load ptr, ptr %5, align 4
  %458 = icmp eq ptr %457, null
  br i1 %458, label %464, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %457, i32 0, i32 13
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  tail call void %461(ptr noundef %4) #8
  br label %464

464:                                              ; preds = %463, %459, %456, %451, %79, %75, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load i32, ptr @mfc_debug_level, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.s5p_mfc_handle_stream_complete, i32 noundef 607) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 107, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %10, i32 -4
  %14 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.vb2_buffer, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = getelementptr %struct.vb2_buffer, ptr %21, i32 0, i32 10, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = load ptr, ptr %13, align 4
  br label %28

28:                                               ; preds = %25, %12
  %29 = phi ptr [ %21, %12 ], [ %27, %25 ]
  tail call void @vb2_buffer_done(ptr noundef %29, i32 noundef 5) #8
  br label %30

30:                                               ; preds = %28, %7
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %31, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %31, i32 0, i32 28
  %36 = and i32 %34, 31
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %34, 5
  %39 = getelementptr i32, ptr %35, i32 %38
  %40 = xor i32 %37, -1
  %41 = load i32, ptr %39, align 4
  %42 = and i32 %41, %40
  store i32 %42, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %43 = load i16, ptr %32, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %45 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 25
  %46 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %45) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49, !prof !13

48:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 622, i32 noundef 9, ptr noundef null) #8
  br label %49

49:                                               ; preds = %48, %30
  tail call void @s5p_mfc_clock_off() #8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %50, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %52, i32 0, i32 13
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %2) #8
  br label %59

59:                                               ; preds = %58, %54, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_frame_all_extracted(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 107, ptr %3, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %92, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 37
  br label %14

14:                                               ; preds = %74, %10
  %15 = phi ptr [ %8, %10 ], [ %90, %74 ]
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load i32, ptr @mfc_debug_level, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.vb2_buffer, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.s5p_mfc_handle_frame_all_extracted, i32 noundef 230, i32 noundef %22) #9
  br label %24

24:                                               ; preds = %19, %14
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.vb2_buffer, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.vb2_buffer, ptr %25, i32 0, i32 10, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = getelementptr %struct.vb2_buffer, ptr %31, i32 0, i32 10, i32 1, i32 3
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %29, %24
  %38 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %42 = getelementptr i8, ptr %15, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 2
  store i32 %44, ptr %42, align 4
  %45 = load i32, ptr %11, align 4
  %46 = add i32 %45, -1
  store i32 %46, ptr %11, align 4
  %47 = load i32, ptr %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %4, align 4
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %49, i32 0, i32 4
  store i32 %47, ptr %50, align 8
  %51 = load ptr, ptr %12, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %51, i32 0, i32 33
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %0) #8
  %59 = load ptr, ptr %12, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %58, %57 ], [ -19, %53 ]
  %63 = phi ptr [ %59, %57 ], [ %51, %53 ]
  %64 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %63, i32 0, i32 34
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = tail call i32 %65(ptr noundef %0) #8
  br label %69

69:                                               ; preds = %67, %61, %57
  %70 = phi i32 [ %62, %67 ], [ %62, %61 ], [ %58, %57 ]
  %71 = phi i32 [ %68, %67 ], [ -19, %61 ], [ -19, %57 ]
  %72 = icmp eq i32 %70, %71
  %73 = select i1 %72, i32 1, i32 4
  br label %74

74:                                               ; preds = %69, %37
  %75 = phi i32 [ 1, %37 ], [ %73, %69 ]
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %76, i32 0, i32 2
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %16, align 4
  %79 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = or i32 %80, 1048576
  store i32 %81, ptr %79, align 8
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr inbounds %struct.vb2_buffer, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = shl nuw i32 1, %84
  %86 = xor i32 %85, -1
  %87 = load i32, ptr %13, align 4
  %88 = and i32 %87, %86
  store i32 %88, ptr %13, align 4
  %89 = load ptr, ptr %16, align 4
  tail call void @vb2_buffer_done(ptr noundef %89, i32 noundef 5) #8
  %90 = load volatile ptr, ptr %7, align 4
  %91 = icmp eq ptr %90, %7
  br i1 %91, label %92, label %14

92:                                               ; preds = %74, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 472, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  tail call void @device_initialize(ptr noundef nonnull %4) #8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.51, ptr noundef %13, ptr noundef %1) #8
  %15 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 17
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 16
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @s5p_mfc_memdev_release, ptr %22, align 4
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #8
  %24 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 20
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @of_dma_configure_id(ptr noundef nonnull %4, ptr noundef %28, i1 noundef zeroext true, ptr noundef null) #8
  %30 = tail call i32 @device_add(ptr noundef nonnull %4) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load ptr, ptr %27, align 8
  %34 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef nonnull %4, ptr noundef %33, i32 noundef %2) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void @device_del(ptr noundef nonnull %4) #8
  br label %37

37:                                               ; preds = %36, %26, %12
  tail call void @put_device(ptr noundef nonnull %4) #8
  br label %38

38:                                               ; preds = %37, %32, %3
  %39 = phi ptr [ null, %37 ], [ null, %3 ], [ %4, %32 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_memdev_release(ptr noundef %0) #0 {
  tail call void @of_reserved_mem_device_release(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_deinit_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr i8, ptr %4, i32 412
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 372
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %2
  %17 = getelementptr i8, ptr %4, i32 752
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %88, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %4, i32 712
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %88, label %25

25:                                               ; preds = %21, %12
  tail call void @mutex_unlock(ptr noundef %7) #8
  %26 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 4
  %27 = icmp eq ptr %1, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %1, align 4
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %26, null
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  tail call void %29(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %1) #8
  %34 = load ptr, ptr %1, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %29, %28 ], [ %34, %33 ]
  %37 = getelementptr i8, ptr %4, i32 400
  %38 = icmp ne ptr %36, null
  %39 = icmp ne ptr %37, null
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  tail call void %36(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %1) #8
  %42 = load ptr, ptr %1, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %36, %35 ], [ %42, %41 ]
  %45 = getelementptr i8, ptr %4, i32 740
  %46 = icmp ne ptr %44, null
  %47 = icmp ne ptr %45, null
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void %44(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %1) #8
  br label %50

50:                                               ; preds = %49, %43, %25
  tail call void @mutex_lock(ptr noundef %7) #8
  %51 = tail call i32 @v4l2_event_pending(ptr noundef %4) #8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 2
  %54 = getelementptr i8, ptr %4, i32 396
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #8
  %56 = getelementptr i8, ptr %4, i32 388
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  %59 = getelementptr i8, ptr %57, i32 -336
  %60 = icmp eq ptr %59, null
  %61 = or i1 %58, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %50
  %63 = getelementptr i8, ptr %57, i32 -272
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %64, -5
  %66 = icmp ult i32 %65, 2
  %67 = or i32 %53, 260
  %68 = select i1 %66, i32 %67, i32 %53
  br label %69

69:                                               ; preds = %62, %50
  %70 = phi i32 [ %68, %62 ], [ %53, %50 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #8
  %71 = getelementptr i8, ptr %4, i32 736
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %71) #8
  %73 = getelementptr i8, ptr %4, i32 728
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  %76 = getelementptr i8, ptr %74, i32 -336
  %77 = icmp eq ptr %76, null
  %78 = or i1 %75, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %69
  %80 = getelementptr i8, ptr %74, i32 -272
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, -5
  %83 = icmp ult i32 %82, 2
  %84 = or i32 %70, 65
  %85 = select i1 %83, i32 %84, i32 %70
  br label %86

86:                                               ; preds = %79, %69
  %87 = phi i32 [ %85, %79 ], [ %70, %69 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %72) #8
  br label %88

88:                                               ; preds = %86, %21, %16
  %89 = phi i32 [ %87, %86 ], [ 8, %21 ], [ 8, %16 ]
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 786432
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @mfc_debug_level, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %8, label %11, label %14

11:                                               ; preds = %2
  br i1 %10, label %12, label %21

12:                                               ; preds = %11
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.s5p_mfc_mmap, i32 noundef 1050) #9
  br label %21

14:                                               ; preds = %2
  br i1 %10, label %15, label %18

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.s5p_mfc_mmap, i32 noundef 1053) #9
  %17 = load i32, ptr %5, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ %17, %15 ], [ %6, %14 ]
  %20 = add i32 %19, -262144
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %18, %12, %11
  %22 = phi i32 [ 456, %18 ], [ 116, %12 ], [ 116, %11 ]
  %23 = getelementptr i8, ptr %4, i32 %22
  %24 = tail call i32 @vb2_mmap(ptr noundef %23, ptr noundef %1) #8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #8
  %3 = tail call ptr @video_devdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr @mfc_debug_level, align 4
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 759) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 14
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %208

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 3668) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %198, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.59, ptr noundef nonnull @s5p_mfc_open.__key) #8
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 1
  tail call void @v4l2_fh_init(ptr noundef %23, ptr noundef %2) #8
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %23, ptr %24, align 8
  tail call void @v4l2_fh_add(ptr noundef %23) #8
  store ptr %5, ptr %19, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 11
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 11, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 12
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 12, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 13
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 14
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 0
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %21
  store i32 1, ptr %31, align 4
  %36 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  store i32 2, ptr %31, align 4
  %40 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  store i32 3, ptr %31, align 4
  %44 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  store i32 4, ptr %31, align 4
  %48 = load i32, ptr @mfc_debug_level, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %196

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 783) #9
  br label %196

52:                                               ; preds = %43, %39, %35, %21
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 13
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #8
  %55 = load i32, ptr %31, align 4
  %56 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 28
  %57 = and i32 %55, 31
  %58 = shl nuw i32 1, %57
  %59 = lshr i32 %55, 5
  %60 = getelementptr i32, ptr %56, i32 %59
  %61 = xor i32 %58, -1
  %62 = load i32, ptr %60, align 4
  %63 = and i32 %62, %61
  store i32 %63, ptr %60, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #8
  %64 = load i32, ptr %31, align 4
  %65 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 %64
  store ptr %19, ptr %65, align 4
  %66 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %2, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 15
  store i32 1, ptr %70, align 8
  %71 = tail call ptr @get_dec_codec_ops() #8
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 63
  store ptr %71, ptr %72, align 4
  tail call void @s5p_mfc_dec_init(ptr noundef %19) #8
  %73 = tail call i32 @s5p_mfc_dec_ctrls_setup(ptr noundef %19) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %69
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 798) #9
  br label %190

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %2, %79
  br i1 %80, label %81, label %192

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 15
  store i32 2, ptr %82, align 8
  %83 = tail call ptr @get_enc_codec_ops() #8
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 63
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 59
  store volatile ptr %85, ptr %85, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 59, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 60
  store i32 0, ptr %87, align 8
  tail call void @s5p_mfc_enc_init(ptr noundef nonnull %19) #8
  %88 = tail call i32 @s5p_mfc_enc_ctrls_setup(ptr noundef nonnull %19) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 811) #9
  br label %190

92:                                               ; preds = %81, %69
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 65
  %94 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 1, i32 2
  store ptr %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 17
  store i32 -1, ptr %95, align 8
  %96 = load i32, ptr %15, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 100
  %101 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 30
  %102 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 30, i32 1
  store i32 %100, ptr %102, align 4
  tail call void @add_timer(ptr noundef %101) #8
  %103 = tail call i32 @s5p_mfc_power_on() #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 827) #9
  br label %178

107:                                              ; preds = %98
  %108 = tail call i32 @s5p_mfc_clock_on() #8
  %109 = tail call i32 @s5p_mfc_load_firmware(ptr noundef %5) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @s5p_mfc_clock_off() #8
  br label %178

112:                                              ; preds = %107
  %113 = tail call i32 @s5p_mfc_init_hw(ptr noundef %5) #8
  tail call void @s5p_mfc_clock_off() #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %178

115:                                              ; preds = %112, %92
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10
  store i32 9, ptr %116, align 4
  %117 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 10
  store ptr %23, ptr %117, align 4
  %118 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 5
  store ptr %11, ptr %118, align 8
  %119 = load ptr, ptr %66, align 4
  %120 = icmp eq ptr %2, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 1
  store i32 1, ptr %122, align 8
  %123 = tail call ptr @get_dec_queue_ops() #8
  br label %131

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %2, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 1
  store i32 3, ptr %129, align 8
  %130 = tail call ptr @get_enc_queue_ops() #8
  br label %131

131:                                              ; preds = %128, %121
  %132 = phi ptr [ %130, %128 ], [ %123, %121 ]
  %133 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 7
  store ptr %132, ptr %133, align 8
  %134 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 3
  store i32 128, ptr %134, align 8
  %135 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 8
  store ptr @vb2_dma_contig_memops, ptr %135, align 4
  %136 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 10, i32 13
  store i32 16384, ptr %136, align 8
  %137 = tail call i32 @vb2_queue_init(ptr noundef %116) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %131
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 866) #9
  br label %173

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9
  store i32 10, ptr %142, align 8
  %143 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 10
  store ptr %23, ptr %143, align 8
  %144 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 5
  store ptr %11, ptr %144, align 4
  %145 = load ptr, ptr %66, align 4
  %146 = icmp eq ptr %2, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 1
  store i32 1, ptr %148, align 4
  %149 = tail call ptr @get_dec_queue_ops() #8
  br label %157

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %2, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 1
  store i32 3, ptr %155, align 4
  %156 = tail call ptr @get_enc_queue_ops() #8
  br label %157

157:                                              ; preds = %154, %147
  %158 = phi ptr [ %156, %154 ], [ %149, %147 ]
  %159 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 7
  store ptr %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 4
  %161 = load i16, ptr %160, align 8
  %162 = or i16 %161, 8
  store i16 %162, ptr %160, align 8
  %163 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 3
  store i32 128, ptr %163, align 4
  %164 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 8
  store ptr @vb2_dma_contig_memops, ptr %164, align 8
  %165 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %19, i32 0, i32 9, i32 13
  store i32 16384, ptr %165, align 4
  %166 = tail call i32 @vb2_queue_init(ptr noundef %142) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 901) #9
  br label %173

170:                                              ; preds = %157
  tail call void @mutex_unlock(ptr noundef %11) #8
  %171 = load i32, ptr @mfc_debug_level, align 4
  %172 = icmp sgt i32 %171, 4
  br i1 %172, label %204, label %208

173:                                              ; preds = %168, %150, %139, %124
  %174 = phi i32 [ %137, %139 ], [ %166, %168 ], [ -2, %124 ], [ -2, %150 ]
  %175 = load i32, ptr %15, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  tail call void @s5p_mfc_deinit_hw(ptr noundef %5) #8
  br label %178

178:                                              ; preds = %177, %112, %111, %105
  %179 = phi i32 [ %174, %177 ], [ %113, %112 ], [ %109, %111 ], [ %103, %105 ]
  %180 = load i32, ptr %15, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = tail call i32 @s5p_mfc_power_off() #8
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef 916) #9
  br label %187

187:                                              ; preds = %185, %182
  %188 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 30
  %189 = tail call i32 @del_timer_sync(ptr noundef %188) #8
  br label %190

190:                                              ; preds = %187, %178, %173, %90, %75
  %191 = phi i32 [ %73, %75 ], [ %179, %187 ], [ %179, %178 ], [ %88, %90 ], [ %174, %173 ]
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef nonnull %19) #8
  br label %192

192:                                              ; preds = %190, %77
  %193 = phi i32 [ %191, %190 ], [ -2, %77 ]
  %194 = load i32, ptr %31, align 4
  %195 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 %194
  store ptr null, ptr %195, align 4
  br label %196

196:                                              ; preds = %192, %50, %47
  %197 = phi i32 [ %193, %192 ], [ -16, %50 ], [ -16, %47 ]
  tail call void @v4l2_fh_del(ptr noundef %23) #8
  tail call void @v4l2_fh_exit(ptr noundef %23) #8
  tail call void @kfree(ptr noundef nonnull %19) #8
  br label %198

198:                                              ; preds = %196, %14
  %199 = phi i32 [ %197, %196 ], [ -12, %14 ]
  %200 = load i32, ptr %15, align 4
  %201 = add i32 %200, -1
  store i32 %201, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %11) #8
  %202 = load i32, ptr @mfc_debug_level, align 4
  %203 = icmp sgt i32 %202, 4
  br i1 %203, label %204, label %208

204:                                              ; preds = %198, %170
  %205 = phi i32 [ 905, %170 ], [ 930, %198 ]
  %206 = phi i32 [ 0, %170 ], [ %199, %198 ]
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.s5p_mfc_open, i32 noundef %205) #9
  br label %208

208:                                              ; preds = %204, %198, %170, %10
  %209 = phi i32 [ -512, %10 ], [ 0, %170 ], [ %199, %198 ], [ %206, %204 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @mfc_debug_level, align 4
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 941) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = icmp eq ptr %5, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = getelementptr i8, ptr %3, i32 116
  tail call void @vb2_queue_release(ptr noundef %14) #8
  %15 = getelementptr i8, ptr %3, i32 456
  tail call void @vb2_queue_release(ptr noundef %15) #8
  %16 = tail call i32 @s5p_mfc_clock_on() #8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %17, i32 0, i32 13
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #8
  %20 = getelementptr i8, ptr %3, i32 80
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %17, i32 0, i32 28
  %23 = and i32 %21, 31
  %24 = shl nuw i32 1, %23
  %25 = lshr i32 %21, 5
  %26 = getelementptr i32, ptr %22, i32 %25
  %27 = xor i32 %24, -1
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, %27
  store i32 %29, ptr %26, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #8
  %30 = getelementptr i8, ptr %3, i32 824
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %32 [
    i32 0, label %38
    i32 100, label %38
  ]

32:                                               ; preds = %12
  %33 = load i32, ptr @mfc_debug_level, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 956) #9
  br label %37

37:                                               ; preds = %35, %32
  tail call void @s5p_mfc_close_mfc_inst(ptr noundef nonnull %5, ptr noundef %4) #8
  br label %38

38:                                               ; preds = %37, %12, %12
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 27
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %20, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  %49 = icmp eq i32 %48, 0
  %50 = load i32, ptr @mfc_debug_level, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %49, label %52, label %62

52:                                               ; preds = %45
  br i1 %51, label %53, label %55

53:                                               ; preds = %52
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 964) #9
  br label %55

55:                                               ; preds = %53, %52
  tail call void @s5p_mfc_deinit_hw(ptr noundef nonnull %5) #8
  %56 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 30
  %57 = tail call i32 @del_timer_sync(ptr noundef %56) #8
  tail call void @s5p_mfc_clock_off() #8
  %58 = tail call i32 @s5p_mfc_power_off() #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 969) #9
  br label %69

62:                                               ; preds = %45
  br i1 %51, label %63, label %65

63:                                               ; preds = %62
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 971) #9
  br label %65

65:                                               ; preds = %63, %62
  tail call void @s5p_mfc_clock_off() #8
  br label %69

66:                                               ; preds = %10
  %67 = getelementptr i8, ptr %3, i32 116
  tail call void @vb2_queue_release(ptr noundef %67) #8
  %68 = getelementptr i8, ptr %3, i32 456
  tail call void @vb2_queue_release(ptr noundef %68) #8
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef %4) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  br label %72

69:                                               ; preds = %65, %60, %55
  %70 = load i32, ptr %20, align 4
  %71 = getelementptr %struct.s5p_mfc_dev, ptr %5, i32 0, i32 26, i32 %70
  store ptr null, ptr %71, align 4
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef %4) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  tail call void @v4l2_fh_exit(ptr noundef %3) #8
  br label %72

72:                                               ; preds = %69, %66
  tail call void @kfree(ptr noundef %4) #8
  %73 = load i32, ptr @mfc_debug_level, align 4
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.s5p_mfc_release, i32 noundef 983) #9
  br label %77

77:                                               ; preds = %75, %72
  br i1 %11, label %80, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %79) #8
  br label %80

80:                                               ; preds = %78, %77
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_codec_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_dec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_dec_ctrls_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_codec_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_enc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_enc_ctrls_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_power_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_queue_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_queue_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_power_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_dec_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_close_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 33
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 25
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 15
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 18
  br label %18

16:                                               ; preds = %8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.s5p_mfc_suspend, i32 noundef 1470) #9
  br label %56

18:                                               ; preds = %47, %12
  %19 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %13) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %25 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 1) #8
  %26 = load i32, ptr %14, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %32, %24
  %29 = phi i32 [ %40, %32 ], [ 200, %24 ]
  %30 = phi i32 [ %34, %32 ], [ %25, %24 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = call i32 @schedule_timeout(i32 noundef %29) #8
  %34 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 1) #8
  %35 = load i32, ptr %14, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = icmp ne i32 %33, 0
  %39 = select i1 %37, i1 true, i1 %38
  %40 = select i1 %39, i32 %33, i32 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %36, i1 true, i1 %41
  br i1 %42, label %43, label %28

43:                                               ; preds = %32, %24
  %44 = phi i32 [ 200, %24 ], [ %40, %32 ]
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %2) #8
  br label %45

45:                                               ; preds = %43, %28
  %46 = phi i32 [ %44, %43 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %47

47:                                               ; preds = %45, %21
  %48 = phi i32 [ 200, %21 ], [ %46, %45 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %18

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.s5p_mfc_suspend, i32 noundef 1481) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %9) #8
  br label %56

52:                                               ; preds = %18
  %53 = call i32 @s5p_mfc_sleep(ptr noundef %4) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @_clear_bit(i32 noundef 0, ptr noundef %9) #8
  call void @_clear_bit(i32 noundef 0, ptr noundef %13) #8
  br label %56

56:                                               ; preds = %55, %52, %50, %16, %1
  %57 = phi i32 [ -5, %16 ], [ -5, %50 ], [ 0, %1 ], [ %53, %55 ], [ 0, %52 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @s5p_mfc_wakeup(ptr noundef %3) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2148923940}
!9 = !{i64 2148919764}
!10 = !{i64 2148919839, i64 2148919866, i64 2148919913, i64 2148919935, i64 2148919963, i64 2148919983}
!11 = !{i64 2148946943}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 485772, i64 2147975743, i64 2147975769, i64 2147975816, i64 2147975838, i64 2147975866, i64 2147975886}
!15 = !{i64 2147987955, i64 2147987981, i64 2147988010, i64 2147988044, i64 2147988075, i64 2147988098}
