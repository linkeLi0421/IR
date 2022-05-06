; ModuleID = '/llk/IR/drivers/media/platform/marvell-ccic/mcam-core.c_pt.bc'
source_filename = "../drivers/media/platform/marvell-ccic/mcam-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_register\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mccic_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22mccic_resume\22\09\09\09\09\09"
module asm "__kstrtabns_mccic_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.83, i32, i32 }
%union.anon.83 = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_format_struct = type { i32, i32, i8, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_camera = type { ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, ptr, i8, i32, [3 x ptr], %struct.clk_hw, ptr, ptr, ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, i32, i32, %struct.mcam_frame_state, %struct.video_device, %struct.v4l2_async_notifier, ptr, %struct.vb2_queue, %struct.list_head, i32, i32, [32 x i8], i32, [3 x ptr], [3 x i32], %struct.tasklet_struct, i32, [3 x i32], [3 x ptr], ptr, ptr, %struct.v4l2_pix_format, i32, %struct.mutex }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mcam_frame_state = type { i32, i32, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.106, i32 }
%union.anon.106 = type { ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcam_vb_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.103, i16, i16, i16, [10 x i16] }
%union.anon.103 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mcam_dma_desc = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.99, [2 x i32] }
%union.anon.99 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.100, [2 x i32] }
%union.anon.100 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__param_str_alloc_bufs_at_read = internal constant [19 x i8] c"alloc_bufs_at_read\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@alloc_bufs_at_read = internal global i8 0, align 1
@__param_alloc_bufs_at_read = internal constant %struct.kernel_param { ptr @__param_str_alloc_bufs_at_read, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @alloc_bufs_at_read } }, section "__param", align 4
@__UNIQUE_ID_alloc_bufs_at_readtype258 = internal constant [33 x i8] c"parmtype=alloc_bufs_at_read:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_alloc_bufs_at_read259 = internal constant [287 x i8] c"parm=alloc_bufs_at_read:Non-zero value causes DMA buffers to be allocated when the video capture device is read, rather than at module load time.  This saves memory, but decreases the chances of successfully getting those buffers.  This parameter is only used in the vmalloc buffer mode\00", section ".modinfo", align 1
@__param_str_n_dma_bufs = internal constant [11 x i8] c"n_dma_bufs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@n_dma_bufs = internal global i32 3, align 4
@__param_n_dma_bufs = internal constant %struct.kernel_param { ptr @__param_str_n_dma_bufs, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @n_dma_bufs } }, section "__param", align 4
@__UNIQUE_ID_n_dma_bufstype260 = internal constant [25 x i8] c"parmtype=n_dma_bufs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_n_dma_bufs261 = internal constant [121 x i8] c"parm=n_dma_bufs:The number of DMA buffers to allocate.  Can be either two (saves memory, makes timing tighter) or three.\00", section ".modinfo", align 1
@__param_str_dma_buf_size = internal constant [13 x i8] c"dma_buf_size\00", align 1
@dma_buf_size = internal global i32 614400, align 4
@__param_dma_buf_size = internal constant %struct.kernel_param { ptr @__param_str_dma_buf_size, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @dma_buf_size } }, section "__param", align 4
@__UNIQUE_ID_dma_buf_sizetype262 = internal constant [27 x i8] c"parmtype=dma_buf_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_buf_size263 = internal constant [152 x i8] c"parm=dma_buf_size:The size of the allocated DMA buffers.  If actual operating parameters require larger buffers, an attempt to reallocate will be made.\00", section ".modinfo", align 1
@__param_str_flip = internal constant [5 x i8] c"flip\00", align 1
@flip = internal global i8 0, align 1
@__param_flip = internal constant %struct.kernel_param { ptr @__param_str_flip, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @flip } }, section "__param", align 4
@__UNIQUE_ID_fliptype264 = internal constant [19 x i8] c"parmtype=flip:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_flip265 = internal constant [78 x i8] c"parm=flip:If set, the sensor will be instructed to flip the image vertically.\00", section ".modinfo", align 1
@__param_str_buffer_mode = internal constant [12 x i8] c"buffer_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@buffer_mode = internal global i32 -1, align 4
@__param_buffer_mode = internal constant %struct.kernel_param { ptr @__param_str_buffer_mode, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @buffer_mode } }, section "__param", align 4
@__UNIQUE_ID_buffer_modetype266 = internal constant [25 x i8] c"parmtype=buffer_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffer_mode267 = internal constant [151 x i8] c"parm=buffer_mode:Set the buffer mode to be used; default is to go with what the platform driver asks for.  Set to 0 for vmalloc, 1 for DMA contiguous.\00", section ".modinfo", align 1
@__kstrtab_mccic_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_irq to i32), ptr @__kstrtab_mccic_irq, ptr @__kstrtabns_mccic_irq }, section "___ksymtab_gpl+mccic_irq", align 4
@.str = private unnamed_addr constant [71 x i8] c"\013marvell-cam: Cafe can't do S/G I/O, attempting vmalloc mode instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\013marvell-cam: buffer mode %d unsupported\0A\00", align 1
@mccic_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&cam->s_mutex\00", align 1
@mcam_def_pix_format = internal unnamed_addr constant %struct.v4l2_pix_format { i32 640, i32 480, i32 1448695129, i32 1, i32 1280, i32 614400, i32 8, i32 0, i32 0, %union.anon.83 zeroinitializer, i32 0, i32 0 }, align 4
@mccic_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @mccic_notify_bound, ptr @mccic_notify_complete, ptr @mccic_notify_unbind }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to register a sensor notifier\00", align 1
@mclk_ops = internal constant %struct.clk_ops { ptr @mclk_prepare, ptr @mclk_unprepare, ptr null, ptr null, ptr @mclk_enable, ptr @mclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @mclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"can't register clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Unable to alloc DMA buffers at load will try again later.\00", align 1
@__kstrtab_mccic_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_register to i32), ptr @__kstrtab_mccic_register, ptr @__kstrtabns_mccic_register }, section "___ksymtab_gpl+mccic_register", align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Removing a device with users!\0A\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__kstrtab_mccic_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_shutdown to i32), ptr @__kstrtab_mccic_shutdown, ptr @__kstrtabns_mccic_shutdown }, section "___ksymtab_gpl+mccic_shutdown", align 4
@__kstrtab_mccic_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_suspend to i32), ptr @__kstrtab_mccic_suspend, ptr @__kstrtabns_mccic_suspend }, section "___ksymtab_gpl+mccic_suspend", align 4
@__kstrtab_mccic_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_mccic_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_mccic_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mccic_resume to i32), ptr @__kstrtab_mccic_resume, ptr @__kstrtabns_mccic_resume }, section "___ksymtab_gpl+mccic_resume", align 4
@__UNIQUE_ID_license268 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [40 x i8] c"author=Jonathan Corbet <corbet@lwn.net>\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"sensor already bound\0A\00", align 1
@mcam_v4l_template = internal unnamed_addr constant %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mcam_v4l_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"mcam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @mcam_v4l_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Cam init with device in funky state %d\00", align 1
@mcam_vb2_ops = internal constant %struct.vb2_ops { ptr @mcam_vb_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vb_start_streaming, ptr @mcam_vb_stop_streaming, ptr @mcam_vb_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mcam_vb2_sg_ops = internal constant %struct.vb2_ops { ptr @mcam_vb_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @mcam_vb_sg_buf_init, ptr @mcam_vb_sg_buf_prepare, ptr null, ptr @mcam_vb_sg_buf_cleanup, ptr @mcam_vb_start_streaming, ptr @mcam_vb_stop_streaming, ptr @mcam_vb_buf_queue, ptr null }, align 4
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@mcam_formats = internal unnamed_addr constant [7 x %struct.mcam_format_struct] [%struct.mcam_format_struct { i32 1448695129, i32 2, i8 0, i32 8200 }, %struct.mcam_format_struct { i32 1431918169, i32 2, i8 0, i32 8200 }, %struct.mcam_format_struct { i32 842093913, i32 1, i8 1, i32 8200 }, %struct.mcam_format_struct { i32 842094169, i32 1, i8 1, i32 8200 }, %struct.mcam_format_struct { i32 842093144, i32 2, i8 0, i32 4098 }, %struct.mcam_format_struct { i32 1346520914, i32 2, i8 0, i32 4104 }, %struct.mcam_format_struct { i32 825770306, i32 1, i8 0, i32 12289 }], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Unable to get DMA descriptor array\0A\00", align 1
@mcam_v4l_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @mcam_v4l_open, ptr @mcam_v4l_release }, align 4
@mcam_v4l_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @mcam_vidioc_querycap, ptr @mcam_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @mcam_vidioc_enum_input, ptr @mcam_vidioc_g_input, ptr @mcam_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_g_parm, ptr @mcam_vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcam_vidioc_enum_framesizes, ptr @mcam_vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"marvell_ccic\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"sensor %s not bound\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Insufficient DMA buffers, cannot operate\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Will limp along with only 2 buffers\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Timeout waiting for DMA to end\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"camera: unknown format: %#x\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"lane number error\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alloc_bufs_at_read259, ptr @__UNIQUE_ID_alloc_bufs_at_readtype258, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_buffer_mode267, ptr @__UNIQUE_ID_buffer_modetype266, ptr @__UNIQUE_ID_dma_buf_size263, ptr @__UNIQUE_ID_dma_buf_sizetype262, ptr @__UNIQUE_ID_flip265, ptr @__UNIQUE_ID_fliptype264, ptr @__UNIQUE_ID_license268, ptr @__UNIQUE_ID_n_dma_bufs261, ptr @__UNIQUE_ID_n_dma_bufstype260, ptr @__ksymtab_mccic_irq, ptr @__ksymtab_mccic_register, ptr @__ksymtab_mccic_resume, ptr @__ksymtab_mccic_shutdown, ptr @__ksymtab_mccic_suspend, ptr @__param_alloc_bufs_at_read, ptr @__param_buffer_mode, ptr @__param_dma_buf_size, ptr @__param_flip, ptr @__param_n_dma_bufs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mccic_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 63) #9, !srcloc !9
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %87, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  %10 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 29
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 35
  %12 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22
  %13 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 39
  %15 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  br label %16

16:                                               ; preds = %46, %8
  %17 = phi i32 [ %6, %8 ], [ %47, %46 ]
  %18 = phi i32 [ 0, %8 ], [ %48, %46 ]
  %19 = phi i32 [ 0, %8 ], [ %49, %46 ]
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %16
  %24 = add i32 %19, 7
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr %9, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef %19, ptr noundef %9) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %9) #9
  store i32 %19, ptr %10, align 4
  %33 = load i32, ptr %11, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %11, align 4
  %35 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 36, i32 %19
  store i32 %33, ptr %35, align 4
  %36 = load i32, ptr %12, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %12, align 8
  %38 = load i32, ptr %13, align 8
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load ptr, ptr %14, align 4
  tail call void %41(ptr noundef %0, i32 noundef %19) #9
  br label %42

42:                                               ; preds = %40, %32
  tail call void @_clear_bit(i32 noundef %24, ptr noundef %9) #9
  %43 = load i32, ptr %15, align 4
  %44 = icmp eq i32 %43, 2
  %45 = load i32, ptr %5, align 8
  br i1 %44, label %51, label %46

46:                                               ; preds = %42, %23, %16
  %47 = phi i32 [ %17, %23 ], [ %17, %16 ], [ %45, %42 ]
  %48 = phi i32 [ %18, %23 ], [ %18, %16 ], [ 1, %42 ]
  %49 = add nuw i32 %19, 1
  %50 = icmp ult i32 %49, %47
  br i1 %50, label %16, label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %53 = phi i32 [ 1, %42 ], [ %48, %46 ]
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  br label %57

57:                                               ; preds = %67, %55
  %58 = phi i32 [ %52, %55 ], [ %68, %67 ]
  %59 = phi i32 [ %53, %55 ], [ %69, %67 ]
  %60 = phi i32 [ 0, %55 ], [ %70, %67 ]
  %61 = shl i32 8, %60
  %62 = and i32 %61, %1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = add i32 %60, 7
  tail call void @_set_bit(i32 noundef %65, ptr noundef %56) #9
  %66 = load i32, ptr %5, align 8
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %66, %64 ], [ %58, %57 ]
  %69 = phi i32 [ 1, %64 ], [ %59, %57 ]
  %70 = add nuw i32 %60, 1
  %71 = icmp ult i32 %70, %68
  br i1 %71, label %57, label %72

72:                                               ; preds = %67, %51
  %73 = phi i32 [ %53, %51 ], [ %69, %67 ]
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 3, ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr i8, ptr %81, i32 60
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %84 = and i32 %83, -2
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr i8, ptr %85, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #9, !srcloc !9
  br label %87

87:                                               ; preds = %80, %75, %72, %2
  %88 = phi i32 [ 1, %75 ], [ 1, %80 ], [ %73, %72 ], [ 0, %2 ]
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mccic_register(ptr noundef %0) #0 {
  %2 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %3 = load i32, ptr @buffer_mode, align 4
  %4 = icmp sgt i32 %3, -1
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  br i1 %4, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %5, align 4
  br label %9

8:                                                ; preds = %1
  store i32 %3, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ %3, %8 ]
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  %12 = icmp eq i32 %10, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  store i32 0, ptr %11, align 4
  br label %23

19:                                               ; preds = %9
  %20 = icmp ugt i32 %10, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10) #10
  br label %68

23:                                               ; preds = %19, %17, %13
  %24 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 18
  %27 = tail call i32 @v4l2_device_register(ptr noundef %25, ptr noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 42
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @mccic_register.__key) #9
  %31 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %32) #9
  %33 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %33, ptr noundef nonnull align 4 dereferenceable(48) @mcam_def_pix_format, i32 48, i1 false)
  %34 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 41
  store i32 8200, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 24
  store ptr @mccic_notify_ops, ptr %35, align 8
  %36 = tail call i32 @v4l2_async_nf_register(ptr noundef %26, ptr noundef %35) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.3) #10
  br label %68

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @mclk_ops, ptr %43, align 4
  store ptr @.str.4, ptr %2, align 4
  %44 = load ptr, ptr %24, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 25
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @of_property_read_string(ptr noundef %46, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #9
  %48 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 13
  %49 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 13, i32 2
  store ptr %2, ptr %49, align 4
  %50 = load ptr, ptr %24, align 4
  %51 = call ptr @devm_clk_register(ptr noundef %50, ptr noundef %48) #9
  %52 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 14
  store ptr %51, ptr %52, align 8
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = ptrtoint ptr %51 to i32
  %56 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.6) #10
  br label %68

57:                                               ; preds = %40
  %58 = load i32, ptr %11, align 4
  %59 = icmp eq i32 %58, 0
  %60 = load i8, ptr @alloc_bufs_at_read, align 1
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %0, i32 noundef 1)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.7) #10
  br label %72

68:                                               ; preds = %54, %38, %23, %21
  %69 = phi i32 [ %27, %23 ], [ %36, %38 ], [ %55, %54 ], [ -22, %21 ]
  %70 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 24
  call void @v4l2_async_nf_unregister(ptr noundef %70) #9
  %71 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 18
  call void @v4l2_device_unregister(ptr noundef %71) #9
  call void @v4l2_async_nf_cleanup(ptr noundef %70) #9
  br label %72

72:                                               ; preds = %68, %66, %63, %57
  %73 = phi i32 [ %69, %68 ], [ 0, %63 ], [ 0, %66 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %3) #9
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 5
  %6 = select i1 %4, ptr %5, ptr @dma_buf_size
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 31
  store i32 %7, ptr %8, align 8
  %9 = load i32, ptr @n_dma_bufs, align 4
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  store i32 3, ptr @n_dma_bufs, align 4
  %12 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  store i32 0, ptr %12, align 8
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  store i32 0, ptr %14, align 8
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 33
  %20 = load ptr, ptr %18, align 4
  %21 = tail call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef %7, ptr noundef %19, i32 noundef 3264, i32 noundef 0) #9
  %22 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 32, i32 0
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %34, %16
  %25 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16) #10
  %26 = load i32, ptr %17, align 8
  br label %41

27:                                               ; preds = %34, %16
  %28 = phi i32 [ %31, %34 ], [ 0, %16 ]
  %29 = load i32, ptr %17, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %17, align 8
  %31 = add nuw nsw i32 %28, 1
  %32 = load i32, ptr @n_dma_bufs, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, ptr %8, align 8
  %36 = load ptr, ptr %18, align 4
  %37 = getelementptr i32, ptr %19, i32 %31
  %38 = tail call ptr @dma_alloc_attrs(ptr noundef %36, i32 noundef %35, ptr noundef %37, i32 noundef 3264, i32 noundef 0) #9
  %39 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 32, i32 %31
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %24, label %27

41:                                               ; preds = %27, %24
  %42 = phi i32 [ %26, %24 ], [ %30, %27 ]
  switch i32 %42, label %60 [
    i32 1, label %43
    i32 0, label %51
    i32 2, label %54
  ]

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %8, align 8
  %47 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 32
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 33
  %50 = load i32, ptr %49, align 8
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 0) #9
  store i32 0, ptr %17, align 8
  br label %51

51:                                               ; preds = %43, %41, %13
  %52 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.17) #10
  br label %60

54:                                               ; preds = %41
  %55 = load i32, ptr @n_dma_bufs, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.18) #10
  br label %60

60:                                               ; preds = %57, %54, %51, %41
  %61 = phi i32 [ -12, %51 ], [ 0, %54 ], [ 0, %57 ], [ 0, %41 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mccic_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 23, i32 20
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.8) #10
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %14, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %21, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %9, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %28, %16, %11, %5, %1
  %32 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %41 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 31
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ 0, %39 ], [ %50, %42 ]
  %44 = load ptr, ptr %40, align 4
  %45 = load i32, ptr %41, align 8
  %46 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 32, i32 %43
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 33, i32 %43
  %49 = load i32, ptr %48, align 4
  tail call void @dma_free_attrs(ptr noundef %44, i32 noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef 0) #9
  store ptr null, ptr %46, align 4
  %50 = add nuw i32 %43, 1
  %51 = load i32, ptr %36, align 8
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %42, label %53

53:                                               ; preds = %42, %35
  store i32 0, ptr %36, align 8
  br label %54

54:                                               ; preds = %53, %31
  %55 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 19
  tail call void @v4l2_ctrl_handler_free(ptr noundef %55) #9
  %56 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 24
  tail call void @v4l2_async_nf_unregister(ptr noundef %56) #9
  %57 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 18
  tail call void @v4l2_device_unregister(ptr noundef %57) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %56) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mccic_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 42
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 23, i32 20
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 8
  tail call fastcc void @mcam_ctlr_stop_dma(ptr noundef %0)
  %9 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %15, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi ptr [ %19, %28 ], [ %26, %24 ]
  %31 = tail call i32 %30(ptr noundef nonnull %10, i32 noundef 0) #9
  br label %32

32:                                               ; preds = %29, %17, %12, %6
  store i32 %8, ptr %7, align 8
  br label %33

33:                                               ; preds = %32, %1
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcam_ctlr_stop_dma(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %4) #9
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %5, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = and i32 %7, -2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  store i32 1, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  tail call void @msleep(i32 noundef 150) #9
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.19) #10
  br label %18

18:                                               ; preds = %15, %1
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %23 = and i32 %22, -64
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %19) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mccic_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 42
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 23, i32 20
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %5, label %54, label %9

9:                                                ; preds = %1
  br i1 %8, label %31, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi ptr [ %17, %26 ], [ %24, %22 ]
  %29 = tail call i32 %28(ptr noundef nonnull %7, i32 noundef 1) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %15, %10, %9
  %32 = phi i32 [ %29, %27 ], [ -515, %10 ], [ -515, %15 ], [ -19, %9 ]
  tail call void @mutex_unlock(ptr noundef %2) #9
  br label %96

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %75, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %39, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %41
  br i1 %21, label %50, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi ptr [ %43, %50 ], [ %48, %46 ]
  %53 = tail call i32 %52(ptr noundef nonnull %34, i32 noundef 0) #9
  br label %75

54:                                               ; preds = %1
  br i1 %8, label %75, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %58, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %65, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %69(ptr noundef nonnull %7, i32 noundef 0) #9
  br label %75

73:                                               ; preds = %67, %64
  %74 = tail call i32 %62(ptr noundef nonnull %7, i32 noundef 0) #9
  br label %75

75:                                               ; preds = %73, %71, %60, %55, %54, %51, %41, %36, %33
  tail call void @mutex_unlock(ptr noundef %2) #9
  %76 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 37
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %86, i32 0, i32 1
  %90 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  store ptr %89, ptr %92, align 4
  store ptr %91, ptr %89, align 4
  %93 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %86, i32 0, i32 1, i32 1
  store ptr %90, ptr %93, align 4
  store volatile ptr %89, ptr %90, align 4
  br label %94

94:                                               ; preds = %88, %84, %80
  %95 = tail call fastcc i32 @mcam_read_setup(ptr noundef %0)
  br label %96

96:                                               ; preds = %94, %75, %31
  %97 = phi i32 [ %32, %31 ], [ %95, %94 ], [ 0, %75 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mcam_read_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.v4l2_control, align 8
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %0, i32 noundef 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %284

14:                                               ; preds = %11, %7, %1
  %15 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %198, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #9
  %20 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %20, i8 0, i32 84, i1 false) #9
  store i32 1, ptr %3, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40
  %23 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 41
  %24 = load i32, ptr %23, align 8
  %25 = load i32, ptr %22, align 4
  store i32 %25, ptr %21, align 4
  %26 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 5
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 6
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 7
  store i16 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 2
  store i32 %24, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %96, label %51

51:                                               ; preds = %19
  %52 = getelementptr inbounds %struct.v4l2_subdev, ptr %49, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %54, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %61, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi ptr [ %58, %67 ], [ %65, %63 ]
  %70 = tail call i32 %69(ptr noundef nonnull %49, i32 noundef 0) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load ptr, ptr %48, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.v4l2_subdev, ptr %73, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %77, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %96, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %79, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %86, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi ptr [ %83, %92 ], [ %90, %88 ]
  %95 = call i32 %94(ptr noundef nonnull %73, ptr noundef null, ptr noundef nonnull %3) #9
  br label %96

96:                                               ; preds = %93, %81, %75, %72, %68, %56, %51, %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 9963797, ptr %2, align 8
  %97 = load i8, ptr @flip, align 1, !range !12
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.v4l2_control, ptr %2, i32 0, i32 1
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %48, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev, ptr %100, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @v4l2_s_ctrl(ptr noundef null, ptr noundef %102, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #9
  %104 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 2
  %105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %104) #9
  call void @_clear_bit(i32 noundef 6, ptr noundef %15) #9
  %106 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 38
  %107 = load ptr, ptr %106, align 8
  call void %107(ptr noundef %0) #9
  %108 = load i32, ptr %26, align 4
  %109 = shl i32 %108, 16
  %110 = and i32 %109, 536805376
  %111 = load i32, ptr %22, align 4
  %112 = shl i32 %111, 1
  %113 = and i32 %112, 16382
  %114 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 2
  %115 = load i32, ptr %114, align 4
  switch i32 %115, label %119 [
    i32 1448695129, label %122
    i32 1431918169, label %122
    i32 842093913, label %116
    i32 842094169, label %116
  ]

116:                                              ; preds = %96, %96
  %117 = shl i32 %111, 15
  %118 = and i32 %117, -65536
  br label %122

119:                                              ; preds = %96
  %120 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 4
  %121 = load i32, ptr %120, align 4
  br label %122

122:                                              ; preds = %119, %116, %96, %96
  %123 = phi i32 [ %121, %119 ], [ %111, %116 ], [ %112, %96 ], [ %112, %96 ]
  %124 = phi i32 [ 0, %119 ], [ %118, %116 ], [ 0, %96 ], [ 0, %96 ]
  %125 = or i32 %124, %123
  %126 = load ptr, ptr %0, align 8
  %127 = getelementptr i8, ptr %126, i32 36
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %129 = and i32 %128, -1073496061
  %130 = and i32 %125, 1073496060
  %131 = or i32 %129, %130
  %132 = load ptr, ptr %0, align 8
  %133 = getelementptr i8, ptr %132, i32 36
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #9, !srcloc !9
  %134 = or i32 %113, %110
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr i8, ptr %135, i32 52
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #9, !srcloc !9
  %137 = load ptr, ptr %0, align 8
  %138 = getelementptr i8, ptr %137, i32 56
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #9, !srcloc !9
  %139 = load i32, ptr %114, align 4
  switch i32 %139, label %188 [
    i32 842093913, label %140
    i32 842094169, label %140
    i32 1448695129, label %148
    i32 1431918169, label %156
    i32 842093144, label %164
    i32 1346520914, label %172
    i32 825770306, label %180
  ]

140:                                              ; preds = %122, %122
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr i8, ptr %141, i32 60
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %144 = and i32 %143, -16777213
  %145 = or i32 %144, 172032
  %146 = load ptr, ptr %0, align 8
  %147 = getelementptr i8, ptr %146, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #9, !srcloc !9
  br label %191

148:                                              ; preds = %122
  %149 = load ptr, ptr %0, align 8
  %150 = getelementptr i8, ptr %149, i32 60
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %152 = and i32 %151, -16777213
  %153 = or i32 %152, 32768
  %154 = load ptr, ptr %0, align 8
  %155 = getelementptr i8, ptr %154, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #9, !srcloc !9
  br label %191

156:                                              ; preds = %122
  %157 = load ptr, ptr %0, align 8
  %158 = getelementptr i8, ptr %157, i32 60
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %160 = and i32 %159, -16777213
  %161 = or i32 %160, 163840
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr i8, ptr %162, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #9, !srcloc !9
  br label %191

164:                                              ; preds = %122
  %165 = load ptr, ptr %0, align 8
  %166 = getelementptr i8, ptr %165, i32 60
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %168 = and i32 %167, -16777213
  %169 = or i32 %168, 2220
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr i8, ptr %170, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #9, !srcloc !9
  br label %191

172:                                              ; preds = %122
  %173 = load ptr, ptr %0, align 8
  %174 = getelementptr i8, ptr %173, i32 60
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %176 = and i32 %175, -16777213
  %177 = or i32 %176, 172
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr i8, ptr %178, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #9, !srcloc !9
  br label %191

180:                                              ; preds = %122
  %181 = load ptr, ptr %0, align 8
  %182 = getelementptr i8, ptr %181, i32 60
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %184 = and i32 %183, -16777213
  %185 = or i32 %184, 164
  %186 = load ptr, ptr %0, align 8
  %187 = getelementptr i8, ptr %186, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #9, !srcloc !9
  br label %191

188:                                              ; preds = %122
  %189 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.20, i32 noundef %139) #10
  br label %191

191:                                              ; preds = %188, %180, %172, %164, %156, %148, %140
  %192 = load ptr, ptr %0, align 8
  %193 = getelementptr i8, ptr %192, i32 60
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %195 = and i32 %194, 1073741823
  %196 = load ptr, ptr %0, align 8
  %197 = getelementptr i8, ptr %196, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #9, !srcloc !9
  call void @_clear_bit(i32 noundef 4, ptr noundef %15) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %104, i32 noundef %105) #9
  br label %198

198:                                              ; preds = %191, %14
  %199 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 2
  %200 = call i32 @_raw_spin_lock_irqsave(ptr noundef %199) #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %15) #9
  %201 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 29
  store i32 -1, ptr %201, align 4
  %202 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  %203 = load i32, ptr %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %205, %198
  %206 = phi i32 [ %208, %205 ], [ 0, %198 ]
  call void @_clear_bit(i32 noundef %206, ptr noundef %15) #9
  %207 = add i32 %206, 7
  call void @_clear_bit(i32 noundef %207, ptr noundef %15) #9
  %208 = add nuw i32 %206, 1
  %209 = load i32, ptr %202, align 8
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %205, label %211

211:                                              ; preds = %205, %198
  %212 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 8
  %213 = load i32, ptr %212, align 8
  %214 = icmp eq i32 %213, 5
  br i1 %214, label %215, label %253

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 17
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  call void %217(ptr noundef %0) #9
  br label %220

220:                                              ; preds = %219, %215
  %221 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 9
  %222 = load ptr, ptr %221, align 4
  %223 = load i32, ptr %222, align 4
  %224 = load ptr, ptr %0, align 8
  %225 = getelementptr i8, ptr %224, i32 300
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #9, !srcloc !9
  %226 = load ptr, ptr %221, align 4
  %227 = getelementptr i32, ptr %226, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = load ptr, ptr %0, align 8
  %230 = getelementptr i8, ptr %229, i32 308
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #9, !srcloc !9
  %231 = load ptr, ptr %221, align 4
  %232 = getelementptr i32, ptr %231, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = load ptr, ptr %0, align 8
  %235 = getelementptr i8, ptr %234, i32 312
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #9, !srcloc !9
  %236 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 10
  %237 = load i8, ptr %236, align 8, !range !12
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %263

239:                                              ; preds = %220
  %240 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 11
  %241 = load i32, ptr %240, align 4
  %242 = add i32 %241, -5
  %243 = icmp ult i32 %242, -4
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 3
  %246 = load ptr, ptr %245, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %246, ptr noundef nonnull @.str.21) #10
  store i32 1, ptr %240, align 4
  br label %247

247:                                              ; preds = %244, %239
  %248 = phi i32 [ %241, %239 ], [ 1, %244 ]
  %249 = shl nuw nsw i32 %248, 1
  %250 = add nsw i32 %249, -1
  %251 = load ptr, ptr %0, align 8
  %252 = getelementptr i8, ptr %251, i32 256
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #9, !srcloc !9
  store i8 1, ptr %236, align 8
  br label %263

253:                                              ; preds = %211
  %254 = load ptr, ptr %0, align 8
  %255 = getelementptr i8, ptr %254, i32 256
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 0) #9, !srcloc !9
  %256 = load ptr, ptr %0, align 8
  %257 = getelementptr i8, ptr %256, i32 300
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 0) #9, !srcloc !9
  %258 = load ptr, ptr %0, align 8
  %259 = getelementptr i8, ptr %258, i32 308
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 0) #9, !srcloc !9
  %260 = load ptr, ptr %0, align 8
  %261 = getelementptr i8, ptr %260, i32 312
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 0) #9, !srcloc !9
  %262 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 10
  store i8 0, ptr %262, align 8
  br label %263

263:                                              ; preds = %253, %247, %220
  %264 = load ptr, ptr %0, align 8
  %265 = getelementptr i8, ptr %264, i32 48
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 63) #9, !srcloc !9
  %266 = load ptr, ptr %0, align 8
  %267 = getelementptr i8, ptr %266, i32 44
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %269 = or i32 %268, 63
  %270 = load ptr, ptr %0, align 8
  %271 = getelementptr i8, ptr %270, i32 44
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #9, !srcloc !9
  %272 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  store i32 3, ptr %272, align 8
  %273 = load volatile i32, ptr %15, align 4
  %274 = and i32 %273, 64
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %263
  %277 = load ptr, ptr %0, align 8
  %278 = getelementptr i8, ptr %277, i32 60
  %279 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %280 = or i32 %279, 1
  %281 = load ptr, ptr %0, align 8
  %282 = getelementptr i8, ptr %281, i32 60
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %280) #9, !srcloc !9
  br label %283

283:                                              ; preds = %276, %263
  call void @_raw_spin_unlock_irqrestore(ptr noundef %199, i32 noundef %200) #9
  br label %284

284:                                              ; preds = %283, %11
  %285 = phi i32 [ 0, %283 ], [ -12, %11 ]
  ret i32 %285
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mccic_notify_bound(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -1168
  %5 = getelementptr i8, ptr %0, i32 580
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr i8, ptr %0, i32 48
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 -1156
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #10
  br label %90

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 12
  store ptr %4, ptr %13, align 4
  store ptr %1, ptr %6, align 8
  %14 = getelementptr i8, ptr %0, i32 -880
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -1156
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %15) #10
  %20 = load ptr, ptr %6, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %20, %17 ], [ %1, %12 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %34, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  br label %43

41:                                               ; preds = %29, %24, %21
  %42 = phi i32 [ -515, %24 ], [ -515, %29 ], [ -19, %21 ]
  store i32 1, ptr %14, align 8
  br label %47

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %31, %40 ], [ %38, %36 ]
  %45 = tail call i32 %44(ptr noundef nonnull %22, i32 noundef 0) #9
  store i32 1, ptr %14, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store ptr null, ptr %6, align 8
  br label %90

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %0, i32 52
  %51 = getelementptr i8, ptr %0, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %51, i8 0, i32 328, i1 false) #9
  store i32 1, ptr %50, align 4
  %52 = getelementptr i8, ptr %0, i32 92
  store ptr %4, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 72
  store ptr %5, ptr %53, align 4
  %54 = getelementptr i8, ptr %0, i32 104
  store i32 8192, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 56
  store i32 23, ptr %55, align 4
  %56 = getelementptr i8, ptr %0, i32 100
  store i32 656, ptr %56, align 4
  %57 = getelementptr i8, ptr %0, i32 -1156
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %0, i32 60
  store ptr %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 392
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr i8, ptr %0, i32 396
  store ptr %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %0, i32 -1148
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %76 [
    i32 1, label %67
    i32 2, label %64
    i32 0, label %65
  ]

64:                                               ; preds = %49
  br label %67

65:                                               ; preds = %49
  %66 = getelementptr i8, ptr %0, i32 468
  tail call void @tasklet_setup(ptr noundef %66, ptr noundef nonnull @mcam_frame_tasklet) #9
  br label %67

67:                                               ; preds = %65, %64, %49
  %68 = phi ptr [ @mcam_vb2_ops, %65 ], [ @mcam_vb2_sg_ops, %64 ], [ @mcam_vb2_ops, %49 ]
  %69 = phi ptr [ @vb2_vmalloc_memops, %65 ], [ @vb2_dma_sg_memops, %64 ], [ @vb2_dma_contig_memops, %49 ]
  %70 = phi ptr [ @mcam_ctlr_dma_vmalloc, %65 ], [ @mcam_ctlr_dma_sg, %64 ], [ @mcam_ctlr_dma_contig, %49 ]
  %71 = phi ptr [ @mcam_vmalloc_done, %65 ], [ @mcam_dma_sg_done, %64 ], [ @mcam_dma_contig_done, %49 ]
  %72 = getelementptr i8, ptr %0, i32 80
  store ptr %68, ptr %72, align 4
  %73 = getelementptr i8, ptr %0, i32 84
  store ptr %69, ptr %73, align 4
  %74 = getelementptr i8, ptr %0, i32 520
  store ptr %70, ptr %74, align 8
  %75 = getelementptr i8, ptr %0, i32 524
  store ptr %71, ptr %75, align 4
  br label %76

76:                                               ; preds = %67, %49
  %77 = tail call i32 @vb2_queue_init(ptr noundef %50) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store ptr null, ptr %6, align 8
  br label %90

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %0, i32 -856
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(856) %81, ptr noundef nonnull align 8 dereferenceable(856) @mcam_v4l_template, i32 856, i1 false)
  %82 = getelementptr i8, ptr %0, i32 -1080
  %83 = getelementptr i8, ptr %0, i32 -140
  store ptr %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %0, i32 -8
  store ptr %5, ptr %84, align 8
  %85 = getelementptr i8, ptr %0, i32 -128
  store ptr %50, ptr %85, align 8
  %86 = getelementptr i8, ptr %0, i32 -552
  store ptr %4, ptr %86, align 8
  %87 = tail call i32 @__video_register_device(ptr noundef %81, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @__this_module) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store ptr null, ptr %6, align 8
  br label %90

90:                                               ; preds = %89, %80, %79, %47, %9
  %91 = phi i32 [ -16, %9 ], [ %48, %47 ], [ %77, %79 ], [ %87, %89 ], [ 0, %80 ]
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mccic_notify_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -992
  %3 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %2, i32 noundef 10, ptr noundef null, ptr noundef null) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -1020
  store ptr %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mccic_notify_unbind(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 580
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -1156
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef %11) #10
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 -856
  tail call void @video_unregister_device(ptr noundef %13) #9
  store ptr null, ptr %5, align 8
  br label %14

14:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_contig(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %5 = or i32 %4, 134217728
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !9
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  store i32 2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 37, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 5, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %26

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %10, i32 -640
  %21 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %21, align 4
  %25 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %19, %12
  %27 = phi ptr [ %14, %12 ], [ %20, %19 ]
  %28 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 37, i32 0
  store ptr %27, ptr %28, align 4
  %29 = tail call ptr @vb2_plane_cookie(ptr noundef %27, i32 noundef 0) #9
  %30 = load i32, ptr %29, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef 0, i32 noundef %30) #9
  %31 = load volatile ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 5, ptr noundef %35) #9
  %36 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  br label %46

39:                                               ; preds = %26
  %40 = getelementptr i8, ptr %31, i32 -640
  %41 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %41, align 4
  %45 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %45) #9
  br label %46

46:                                               ; preds = %39, %33
  %47 = phi ptr [ %34, %33 ], [ %40, %39 ]
  %48 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 37, i32 1
  store ptr %47, ptr %48, align 4
  %49 = tail call ptr @vb2_plane_cookie(ptr noundef %47, i32 noundef 0) #9
  %50 = load i32, ptr %49, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef 1, i32 noundef %50) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_dma_contig_done(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 37, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8
  store ptr null, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 10, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 36, i32 %1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %4, i32 0, i32 4
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %4, i32 0, i32 2
  store i32 1, ptr %19, align 4
  %20 = tail call i64 @ktime_get() #9
  %21 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 5
  store i64 %20, ptr %21, align 8
  %22 = load i32, ptr %13, align 4
  %23 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 10, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i32 %28, %22
  %30 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !13

33:                                               ; preds = %26
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %26
  br i1 %29, label %35, label %37

35:                                               ; preds = %34
  %36 = load i32, ptr %27, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %36, %35 ], [ %22, %34 ]
  store i32 %38, ptr %15, align 4
  br label %39

39:                                               ; preds = %37, %9
  tail call void @vb2_buffer_done(ptr noundef %4, i32 noundef 5) #9
  br label %40

40:                                               ; preds = %39, %2
  %41 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = xor i32 %1, 1
  %46 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 37, i32 %45
  %47 = load ptr, ptr %46, align 4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %5) #9
  %48 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %57

51:                                               ; preds = %40
  %52 = getelementptr i8, ptr %42, i32 -640
  %53 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %53, align 4
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %5) #9
  br label %57

57:                                               ; preds = %51, %44
  %58 = phi ptr [ %47, %44 ], [ %52, %51 ]
  store ptr %58, ptr %3, align 4
  %59 = tail call ptr @vb2_plane_cookie(ptr noundef %58, i32 noundef 0) #9
  %60 = load i32, ptr %59, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef %1, i32 noundef %60) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_sg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 6, ptr noundef %6) #9
  br label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %11 = and i32 %10, -513
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !9
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %0)
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  store i32 3, ptr %14, align 8
  br label %15

15:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_dma_sg_done(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %0)
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %16 = or i32 %15, 1
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !9
  br label %24

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 6, ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  store ptr null, ptr %3, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 22, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 10, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 36, i32 %1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %4, i32 0, i32 4
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %4, i32 0, i32 2
  store i32 1, ptr %34, align 4
  %35 = tail call i64 @ktime_get() #9
  %36 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 5
  store i64 %35, ptr %36, align 8
  %37 = load i32, ptr %28, align 4
  %38 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 10, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = icmp ult i32 %43, %37
  %45 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !13

48:                                               ; preds = %41
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %49

49:                                               ; preds = %48, %41
  br i1 %44, label %50, label %52

50:                                               ; preds = %49
  %51 = load i32, ptr %42, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ %51, %50 ], [ %37, %49 ]
  store i32 %53, ptr %30, align 4
  br label %54

54:                                               ; preds = %52, %24
  tail call void @vb2_buffer_done(ptr noundef %4, i32 noundef 5) #9
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_frame_tasklet(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1636
  %3 = getelementptr i8, ptr %0, i32 -1628
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 -68
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %89, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -64
  %10 = getelementptr i8, ptr %0, i32 -1348
  %11 = getelementptr i8, ptr %0, i32 -1344
  %12 = getelementptr i8, ptr %0, i32 -76
  %13 = getelementptr i8, ptr %0, i32 -1332
  %14 = getelementptr i8, ptr %0, i32 -24
  %15 = getelementptr i8, ptr %0, i32 80
  br label %16

16:                                               ; preds = %84, %8
  %17 = phi i32 [ %6, %8 ], [ %85, %84 ]
  %18 = phi i32 [ 0, %8 ], [ %87, %84 ]
  %19 = phi i32 [ %4, %8 ], [ %86, %84 ]
  %20 = load i32, ptr %9, align 4
  %21 = load i32, ptr %10, align 8
  %22 = icmp ne i32 %21, 3
  %23 = icmp slt i32 %20, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %89, label %25

25:                                               ; preds = %16
  %26 = add nuw i32 %20, 1
  %27 = icmp ult i32 %26, %17
  %28 = select i1 %27, i32 %26, i32 0
  store i32 %28, ptr %9, align 4
  %29 = lshr i32 %20, 5
  %30 = getelementptr i32, ptr %11, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %20, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %84, label %36

36:                                               ; preds = %25
  %37 = load volatile ptr, ptr %12, align 4
  %38 = icmp eq ptr %37, %12
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %0, i32 -1336
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %89

43:                                               ; preds = %36
  %44 = load i32, ptr %13, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %13, align 8
  tail call void @_clear_bit(i32 noundef %20, ptr noundef %11) #9
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr i8, ptr %46, i32 -640
  %48 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %46, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %19) #9
  %52 = tail call ptr @vb2_plane_vaddr(ptr noundef %47, i32 noundef 0) #9
  %53 = getelementptr [3 x ptr], ptr %14, i32 0, i32 %20
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %15, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %54, i32 %55, i1 false)
  %56 = load i32, ptr %15, align 4
  %57 = getelementptr i8, ptr %46, i32 -556
  store i32 %56, ptr %57, align 4
  %58 = getelementptr %struct.mcam_camera, ptr %2, i32 0, i32 36, i32 %20
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %46, i32 -272
  store i32 %59, ptr %60, align 8
  %61 = getelementptr i8, ptr %46, i32 -292
  store i32 1, ptr %61, align 4
  %62 = tail call i64 @ktime_get() #9
  %63 = getelementptr i8, ptr %46, i32 -616
  store i64 %62, ptr %63, align 8
  %64 = load i32, ptr %15, align 4
  %65 = getelementptr i8, ptr %46, i32 -624
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %43
  %69 = getelementptr i8, ptr %46, i32 -552
  %70 = load i32, ptr %69, align 8
  %71 = icmp ult i32 %70, %64
  %72 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !13

75:                                               ; preds = %68
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %76

76:                                               ; preds = %75, %68
  br i1 %71, label %77, label %79

77:                                               ; preds = %76
  %78 = load i32, ptr %69, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ %78, %77 ], [ %64, %76 ]
  store i32 %80, ptr %57, align 4
  br label %81

81:                                               ; preds = %79, %43
  tail call void @vb2_buffer_done(ptr noundef %47, i32 noundef 5) #9
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %83 = load i32, ptr %5, align 8
  br label %84

84:                                               ; preds = %81, %25
  %85 = phi i32 [ %83, %81 ], [ %17, %25 ]
  %86 = phi i32 [ %82, %81 ], [ %19, %25 ]
  %87 = add nuw i32 %18, 1
  %88 = icmp ult i32 %87, %85
  br i1 %88, label %16, label %89

89:                                               ; preds = %84, %39, %16, %1
  %90 = phi i32 [ %19, %39 ], [ %4, %1 ], [ %86, %84 ], [ %19, %16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %90) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_ctlr_dma_vmalloc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef 0, i32 noundef %3)
  %4 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 33, i32 1
  %5 = load i32, ptr %4, align 4
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef 1, i32 noundef %5)
  %6 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr %struct.mcam_camera, ptr %0, i32 0, i32 33, i32 2
  %11 = load i32, ptr %10, align 8
  tail call fastcc void @mcam_write_yuv_bases(ptr noundef %0, i32 noundef 2, i32 noundef %11)
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %15 = and i32 %14, -134217729
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !9
  br label %25

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %22 = or i32 %21, 134217728
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !9
  br label %25

25:                                               ; preds = %18, %9
  %26 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 196
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #9, !srcloc !9
  br label %32

32:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_vmalloc_done(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 34, i32 1
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 34
  tail call void @__tasklet_schedule(ptr noundef %7) #9
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vb_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #6 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 3, i32 2
  %12 = getelementptr inbounds %struct.mcam_camera, ptr %7, i32 0, i32 40, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %1, align 4
  %15 = icmp ult i32 %14, %11
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 %11, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %3, align 4
  %22 = icmp ult i32 %21, %13
  %23 = select i1 %22, i32 -22, i32 0
  br label %25

24:                                               ; preds = %17
  store i32 %13, ptr %3, align 4
  store i32 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vb_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %0, i32 noundef 3)
  br label %38

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 22
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 22, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 22, i32 2
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 35
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 27
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 4, ptr %5, align 8
  br label %38

22:                                               ; preds = %17, %9
  %23 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 28
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 21
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %31, %28 ]
  %30 = add i32 %29, 7
  tail call void @_clear_bit(i32 noundef %30, ptr noundef %27) #9
  %31 = add nuw i32 %29, 1
  %32 = load i32, ptr %23, align 8
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %28, label %34

34:                                               ; preds = %28, %22
  %35 = tail call fastcc i32 @mcam_read_setup(ptr noundef %4)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %0, i32 noundef 3)
  br label %38

38:                                               ; preds = %37, %34, %21, %8
  %39 = phi i32 [ -22, %8 ], [ 0, %21 ], [ %35, %37 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_vb_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mcam_camera, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %8 [
    i32 4, label %6
    i32 3, label %7
  ]

6:                                                ; preds = %1
  store i32 1, ptr %4, align 8
  br label %8

7:                                                ; preds = %1
  tail call fastcc void @mcam_ctlr_stop_dma(ptr noundef %3)
  tail call fastcc void @mcam_vb_requeue_bufs(ptr noundef %0, i32 noundef 6)
  br label %8

8:                                                ; preds = %7, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_vb_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 4
  %10 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 27
  br i1 %9, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %10, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load volatile ptr, ptr %10, align 4
  %15 = icmp ne ptr %14, %10
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %18 = phi i1 [ false, %11 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 27
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store ptr %17, ptr %19, align 4
  %22 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %19, ptr %20, align 4
  %23 = load i32, ptr %7, align 8
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 21
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = load volatile ptr, ptr %20, align 4
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 6, ptr noundef %26) #9
  br label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %38 = and i32 %37, -513
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr i8, ptr %39, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !9
  tail call fastcc void @mcam_sg_next_buffer(ptr noundef %4) #9
  %41 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 28
  store i32 3, ptr %41, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr i8, ptr %43, i32 60
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %46 = or i32 %45, 1
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr i8, ptr %47, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !9
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %26) #9
  br label %49

49:                                               ; preds = %42, %25, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br i1 %18, label %50, label %52

50:                                               ; preds = %49
  %51 = tail call fastcc i32 @mcam_read_setup(ptr noundef %4)
  br label %52

52:                                               ; preds = %50, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcam_vb_requeue_bufs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 27
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %14, %2
  %11 = getelementptr %struct.mcam_camera, ptr %4, i32 0, i32 37, i32 0
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %23

14:                                               ; preds = %14, %2
  %15 = phi ptr [ %17, %14 ], [ %8, %2 ]
  %16 = getelementptr i8, ptr %15, i32 -640
  %17 = load ptr, ptr %15, align 8
  tail call void @vb2_buffer_done(ptr noundef %16, i32 noundef %1) #9
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = icmp eq ptr %17, %7
  br i1 %22, label %10, label %14

23:                                               ; preds = %10
  tail call void @vb2_buffer_done(ptr noundef nonnull %12, i32 noundef %1) #9
  store ptr null, ptr %11, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = getelementptr %struct.mcam_camera, ptr %4, i32 0, i32 37, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @vb2_buffer_done(ptr noundef nonnull %26, i32 noundef %1) #9
  store ptr null, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr %struct.mcam_camera, ptr %4, i32 0, i32 37, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @vb2_buffer_done(ptr noundef nonnull %31, i32 noundef %1) #9
  store ptr null, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcam_write_yuv_bases(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 40, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %19 [
    i32 842093913, label %11
    i32 842094169, label %15
  ]

11:                                               ; preds = %3
  %12 = add i32 %8, %2
  %13 = lshr i32 %8, 2
  %14 = add i32 %12, %13
  br label %19

15:                                               ; preds = %3
  %16 = add i32 %8, %2
  %17 = lshr i32 %8, 2
  %18 = add i32 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %15 ], [ %12, %11 ]
  %21 = phi i32 [ 0, %3 ], [ %16, %15 ], [ %14, %11 ]
  %22 = shl i32 %1, 2
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %2) #9, !srcloc !9
  %25 = load i32, ptr %9, align 4
  switch i32 %25, label %35 [
    i32 1448695129, label %32
    i32 1431918169, label %26
    i32 842093913, label %27
    i32 842094169, label %28
    i32 842093144, label %29
    i32 1346520914, label %30
    i32 825770306, label %31
  ]

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  br label %32

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  br label %32

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %19
  %33 = phi i32 [ 0, %19 ], [ 1, %26 ], [ 2, %27 ], [ 3, %28 ], [ 4, %29 ], [ 5, %30 ], [ 6, %31 ]
  %34 = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %33
  br label %35

35:                                               ; preds = %32, %19
  %36 = phi ptr [ %34, %32 ], [ @mcam_formats, %19 ]
  %37 = getelementptr inbounds %struct.mcam_format_struct, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 4, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = add i32 %22, 12
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %20) #9, !srcloc !9
  %44 = add i32 %22, 24
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %21) #9, !srcloc !9
  br label %47

47:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vb_sg_buf_init(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 40, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = lshr i32 %6, 9
  %10 = and i32 %9, 8388600
  %11 = add nuw nsw i32 %10, 8
  %12 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 3
  %13 = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %11, ptr noundef %12, i32 noundef 3264, i32 noundef 0) #9
  %14 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #10
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ -12, %16 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vb_sg_buf_prepare(ptr noundef %0) #0 {
  %2 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %3 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %20, %10 ], [ 0, %6 ]
  %12 = phi ptr [ %21, %10 ], [ %7, %6 ]
  %13 = phi ptr [ %19, %10 ], [ %9, %6 ]
  %14 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mcam_dma_desc, ptr %13, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr %struct.mcam_dma_desc, ptr %13, i32 1
  %20 = add nuw i32 %11, 1
  %21 = tail call ptr @sg_next(ptr noundef %12) #9
  %22 = load i32, ptr %3, align 4
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %10, label %24

24:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcam_vb_sg_buf_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 40, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = lshr i32 %6, 9
  %10 = and i32 %9, 8388600
  %11 = add nuw nsw i32 %10, 8
  %12 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mcam_vb_buffer, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mcam_sg_next_buffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -640
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %5, align 4
  %9 = tail call ptr @vb2_plane_cookie(ptr noundef %4, i32 noundef 0) #9
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %13 = and i32 %12, -257
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !9
  %16 = getelementptr i8, ptr %3, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %18, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !9
  %20 = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 3
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 524
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !9
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 528
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !9
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #9, !srcloc !9
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %32 = or i32 %31, 256
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !9
  %35 = getelementptr inbounds %struct.mcam_camera, ptr %0, i32 0, i32 37
  store ptr %4, ptr %35, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_v4l_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 42
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = tail call i32 @v4l2_fh_open(ptr noundef %0) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @v4l2_fh_is_singular(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %72, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %73, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ %24, %33 ], [ %31, %29 ]
  %36 = tail call i32 %35(ptr noundef nonnull %15, i32 noundef 1) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #9, !srcloc !15
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 0, i32 -1, ptr elementtype(i32) %44) #9, !srcloc !16
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %73

49:                                               ; preds = %38
  %50 = load ptr, ptr %14, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.v4l2_subdev, ptr %50, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %55, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  br i1 %28, label %66, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi ptr [ %59, %66 ], [ %64, %62 ]
  %69 = tail call i32 %68(ptr noundef nonnull %50, i32 noundef 0) #9
  br label %70

70:                                               ; preds = %67, %57, %52, %49
  %71 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %71) #9
  br label %72

72:                                               ; preds = %70, %8
  tail call void @mutex_unlock(ptr noundef %5) #9
  br label %76

73:                                               ; preds = %48, %43, %34, %22, %17, %13, %1
  %74 = phi i32 [ %36, %34 ], [ %6, %1 ], [ -515, %17 ], [ -515, %22 ], [ -19, %13 ], [ %41, %43 ], [ %41, %48 ]
  tail call void @mutex_unlock(ptr noundef %5) #9
  %75 = tail call i32 @v4l2_fh_release(ptr noundef %0) #9
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i32 [ %74, %73 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_v4l_release(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 42
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @v4l2_fh_is_singular(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  %10 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #9
  br i1 %9, label %72, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 300
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !9
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 308
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !9
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 312
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !9
  %20 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 10
  store i8 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %27, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %34, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi ptr [ %31, %40 ], [ %38, %36 ]
  %43 = tail call i32 %42(ptr noundef nonnull %22, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %41, %29, %24, %11
  %45 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #9
  %48 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = load i8, ptr @alloc_bufs_at_read, align 1
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %72, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 28
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.mcam_camera, ptr %4, i32 0, i32 31
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 0, %58 ], [ %68, %60 ]
  %62 = load ptr, ptr %45, align 4
  %63 = load i32, ptr %59, align 8
  %64 = getelementptr %struct.mcam_camera, ptr %4, i32 0, i32 32, i32 %61
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.mcam_camera, ptr %4, i32 0, i32 33, i32 %61
  %67 = load i32, ptr %66, align 4
  tail call void @dma_free_attrs(ptr noundef %62, i32 noundef %63, ptr noundef %65, i32 noundef %67, i32 noundef 0) #9
  store ptr null, ptr %64, align 4
  %68 = add nuw i32 %61, 1
  %69 = load i32, ptr %55, align 8
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %60, label %71

71:                                               ; preds = %60, %54
  store i32 0, ptr %55, align 8
  br label %72

72:                                               ; preds = %71, %44, %1
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 16) #9
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 32) #9
  %10 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 30
  %12 = tail call i32 @strscpy(ptr noundef %10, ptr noundef %11, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #6 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 6
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr [7 x %struct.mcam_format_struct], ptr @mcam_formats, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_g_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %7, ptr noundef align 8 dereferenceable(48) %8, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 26, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %26 [
    i32 1448695129, label %23
    i32 1431918169, label %17
    i32 842093913, label %18
    i32 842094169, label %19
    i32 842093144, label %20
    i32 1346520914, label %21
    i32 825770306, label %22
  ]

17:                                               ; preds = %14
  br label %23

18:                                               ; preds = %14
  br label %23

19:                                               ; preds = %14
  br label %23

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %14
  %24 = phi i32 [ 0, %14 ], [ 1, %17 ], [ 2, %18 ], [ 3, %19 ], [ 4, %20 ], [ 5, %21 ], [ 6, %22 ]
  %25 = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %24
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %25, %23 ], [ @mcam_formats, %14 ]
  %28 = tail call i32 @mcam_vidioc_try_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %32 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %32, ptr noundef align 4 dereferenceable(48) %31, i32 48, i1 false)
  %33 = getelementptr inbounds %struct.mcam_format_struct, ptr %27, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 41
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 28
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 31
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 40, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.mcam_camera, ptr %6, i32 0, i32 32, i32 0
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.mcam_camera, ptr %6, i32 0, i32 33, i32 0
  %55 = load i32, ptr %54, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef %45, ptr noundef %53, i32 noundef %55, i32 noundef 0) #9
  store ptr null, ptr %52, align 4
  %56 = load i32, ptr %40, align 8
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %58, %49
  %59 = phi i32 [ %66, %58 ], [ 1, %49 ]
  %60 = load i32, ptr %44, align 8
  %61 = load ptr, ptr %50, align 4
  %62 = getelementptr %struct.mcam_camera, ptr %6, i32 0, i32 32, i32 %59
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.mcam_camera, ptr %6, i32 0, i32 33, i32 %59
  %65 = load i32, ptr %64, align 4
  tail call void @dma_free_attrs(ptr noundef %61, i32 noundef %60, ptr noundef %63, i32 noundef %65, i32 noundef 0) #9
  store ptr null, ptr %62, align 4
  %66 = add nuw i32 %59, 1
  %67 = load i32, ptr %40, align 8
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %58, label %69

69:                                               ; preds = %58, %49
  store i32 0, ptr %40, align 8
  br label %70

70:                                               ; preds = %69, %39
  %71 = tail call fastcc i32 @mcam_alloc_dma_bufs(ptr noundef %6, i32 noundef 0) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %43, %30
  %74 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %74) #9
  br label %75

75:                                               ; preds = %73, %70, %26, %10, %3
  %76 = phi i32 [ -16, %10 ], [ -16, %3 ], [ %28, %26 ], [ %71, %70 ], [ 0, %73 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_pad_config, align 4
  %5 = alloca %struct.v4l2_subdev_state, align 4
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr %4, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %22 [
    i32 1448695129, label %19
    i32 1431918169, label %13
    i32 842093913, label %14
    i32 842094169, label %15
    i32 842093144, label %16
    i32 1346520914, label %17
    i32 825770306, label %18
  ]

13:                                               ; preds = %3
  br label %19

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  br label %19

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %3
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %3
  %20 = phi i32 [ 0, %3 ], [ 1, %13 ], [ 2, %14 ], [ 3, %15 ], [ 4, %16 ], [ 5, %17 ], [ 6, %18 ]
  %21 = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %20
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ %12, %19 ], [ 1448695129, %3 ]
  %24 = phi ptr [ %21, %19 ], [ @mcam_formats, %3 ]
  store i32 %23, ptr %11, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.mcam_format_struct, ptr %24, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %10, align 4
  store i32 %28, ptr %25, align 4
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 5
  store i16 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 6
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 7
  store i16 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 2
  store i32 %27, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mcam_camera, ptr %9, i32 0, i32 25
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.v4l2_subdev, ptr %52, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %56, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %58, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %65, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi ptr [ %62, %71 ], [ %69, %67 ]
  %74 = call i32 %73(ptr noundef nonnull %52, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  br label %75

75:                                               ; preds = %72, %60, %54, %22
  %76 = phi i32 [ -19, %22 ], [ -515, %60 ], [ -515, %54 ], [ %74, %72 ]
  %77 = load i32, ptr %25, align 4
  store i32 %77, ptr %10, align 4
  %78 = load i32, ptr %31, align 4
  store i32 %78, ptr %29, align 4
  %79 = load i32, ptr %34, align 4
  store i32 %79, ptr %32, align 4
  %80 = load i32, ptr %37, align 4
  store i32 %80, ptr %35, align 4
  %81 = load i16, ptr %41, align 4
  %82 = zext i16 %81 to i32
  store i32 %82, ptr %38, align 4
  %83 = load i16, ptr %45, align 2
  %84 = zext i16 %83 to i32
  store i32 %84, ptr %42, align 4
  %85 = load i16, ptr %49, align 4
  %86 = zext i16 %85 to i32
  store i32 %86, ptr %46, align 4
  %87 = getelementptr inbounds %struct.mcam_format_struct, ptr %24, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, %77
  %90 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %89, ptr %90, align 4
  %91 = load i32, ptr %24, align 4
  switch i32 %91, label %96 [
    i32 842093913, label %92
    i32 842094169, label %92
  ]

92:                                               ; preds = %75, %75
  %93 = mul i32 %89, 3
  %94 = mul i32 %93, %78
  %95 = lshr i32 %94, 1
  br label %98

96:                                               ; preds = %75
  %97 = mul i32 %78, %89
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %97, %96 ], [ %95, %92 ]
  %100 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %99, ptr %100, align 4
  store i32 8, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef 32) #9
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mcam_vidioc_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mcam_vidioc_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @v4l2_g_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #9
  %11 = load i32, ptr @n_dma_bufs, align 4
  %12 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.mcam_camera, ptr %6, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @v4l2_s_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #9
  %11 = load i32, ptr @n_dma_bufs, align 4
  %12 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %8, i8 0, i64 60, i1 false)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 7
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %72 [
    i32 1448695129, label %19
    i32 1431918169, label %13
    i32 842093913, label %14
    i32 842094169, label %15
    i32 842093144, label %16
    i32 1346520914, label %17
    i32 825770306, label %18
  ]

13:                                               ; preds = %3
  br label %19

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  br label %19

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %3
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %3
  %20 = phi i32 [ 0, %3 ], [ 1, %13 ], [ 2, %14 ], [ 3, %15 ], [ 4, %16 ], [ 5, %17 ], [ 6, %18 ]
  %21 = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %20, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mcam_camera, ptr %7, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %72, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi ptr [ %35, %44 ], [ %42, %40 ]
  %47 = call i32 %46(ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %4) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  %55 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  %60 = select i1 %54, i1 %59, i1 false
  %61 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  br i1 %60, label %62, label %65

62:                                               ; preds = %49
  store i32 1, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %51, ptr %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %56, ptr %64, align 4
  br label %72

65:                                               ; preds = %49
  store i32 2, ptr %61, align 4
  %66 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %51, ptr %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %53, ptr %67, align 4
  %68 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 3
  store i32 %56, ptr %68, align 4
  %69 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 4
  store i32 %58, ptr %69, align 4
  %70 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 2
  store i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 5
  store i32 1, ptr %71, align 4
  br label %72

72:                                               ; preds = %65, %62, %45, %33, %27, %19, %3
  %73 = phi i32 [ 0, %62 ], [ 0, %65 ], [ %47, %45 ], [ -515, %27 ], [ -515, %33 ], [ -19, %19 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcam_vidioc_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
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
  switch i32 %18, label %60 [
    i32 1448695129, label %25
    i32 1431918169, label %19
    i32 842093913, label %20
    i32 842094169, label %21
    i32 842093144, label %22
    i32 1346520914, label %23
    i32 825770306, label %24
  ]

19:                                               ; preds = %3
  br label %25

20:                                               ; preds = %3
  br label %25

21:                                               ; preds = %3
  br label %25

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %3
  %26 = phi i32 [ 0, %3 ], [ 1, %19 ], [ 2, %20 ], [ 3, %21 ], [ 4, %22 ], [ 5, %23 ], [ 6, %24 ]
  %27 = getelementptr %struct.mcam_format_struct, ptr @mcam_formats, i32 %26, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mcam_camera, ptr %7, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi ptr [ %41, %50 ], [ %48, %46 ]
  %53 = call i32 %52(ptr noundef nonnull %31, ptr noundef null, ptr noundef nonnull %4) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %58 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 5
  %59 = load i64, ptr %58, align 4
  store i64 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %55, %51, %39, %33, %25, %3
  %61 = phi i32 [ 0, %55 ], [ %53, %51 ], [ -515, %33 ], [ -515, %39 ], [ -19, %25 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mclk_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mclk_unprepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mclk_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -36
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 -32
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %8, 29
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ 1610612736, %1 ]
  %14 = phi i32 [ %10, %6 ], [ 2, %1 ]
  %15 = getelementptr i8, ptr %0, i32 -48
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #9, !srcloc !15
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 -1, ptr elementtype(i32) %20) #9, !srcloc !16
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %48

25:                                               ; preds = %12
  %26 = getelementptr i8, ptr %0, i32 -12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @clk_enable(ptr noundef %27) #9
  %29 = or i32 %14, %13
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 136
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !9
  %32 = getelementptr i8, ptr %0, i32 -52
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #9
  %34 = getelementptr i8, ptr %0, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = tail call i32 %35(ptr noundef %2) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %25
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr i8, ptr %41, i32 64
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %44 = and i32 %43, -268435457
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !9
  br label %47

47:                                               ; preds = %40, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #9
  br label %48

48:                                               ; preds = %47, %24, %19
  %49 = phi i32 [ 0, %47 ], [ %17, %19 ], [ %17, %24 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mclk_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = or i32 %7, 268435456
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  %11 = getelementptr i8, ptr %0, i32 20
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void %12(ptr noundef %2) #9
  br label %15

15:                                               ; preds = %14, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  %16 = getelementptr i8, ptr %0, i32 -12
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #9
  %18 = getelementptr i8, ptr %0, i32 -48
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mclk_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  ret i32 48000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2153468772}
!9 = !{i64 5935169}
!10 = !{i64 5935587}
!11 = !{i64 2153467550}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2147961876}
!15 = !{i64 460186, i64 2147950157, i64 2147950183, i64 2147950230, i64 2147950252, i64 2147950280, i64 2147950300}
!16 = !{i64 446755, i64 446780, i64 446802, i64 446818, i64 446830, i64 446850, i64 446874, i64 446890, i64 446902}
!17 = !{i64 2147962002}
!18 = !{!"auto-init"}
