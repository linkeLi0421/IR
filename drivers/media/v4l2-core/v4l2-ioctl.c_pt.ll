; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-ioctl.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_norm_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_norm_to_name\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_norm_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_video_std_frame_period:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_video_std_frame_period\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_video_std_frame_period:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_video_std_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_video_std_construct\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_video_std_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_field_names:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_field_names\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_field_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_type_names:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_type_names\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_type_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l_printk_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l_printk_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_v4l_printk_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_video_ioctl2:\09\09\09\09\09"
module asm "\09.asciz \09\22video_ioctl2\22\09\09\09\09\09"
module asm "__kstrtabns_video_ioctl2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.std_descr = type { i64, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_ioctl_info = type { i32, i32, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_standard = type { i32, i64, [24 x i8], %struct.v4l2_fract, i32, [4 x i32] }
%struct.v4l2_event_time32 = type { i32, %union.anon.114, i32, i32, %struct.old_timespec32, i32, [8 x i32] }
%union.anon.114 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.111, i32, i32, i32, i32, i32 }
%union.anon.111 = type { i64 }
%struct.old_timespec32 = type { i32, i32 }
%struct.v4l2_buffer_time32 = type { i32, i32, i32, i32, i32, %struct.old_timeval32, %struct.v4l2_timecode, i32, i32, %union.anon.112, i32, i32, %union.anon.113 }
%struct.old_timeval32 = type { i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.77, i32, i32, %union.anon.79 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.77 = type { i32 }
%union.anon.79 = type { i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.v4l2_ext_controls = type { %union.anon.81, i32, i32, i32, [1 x i32], ptr }
%union.anon.81 = type { i32 }
%struct.v4l2_format = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.76, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.76 = type { i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.98 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.95], %struct.media_entity_enum, i32 }
%struct.anon.95 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.110, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.110 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.__kernel_timespec = type { i64, i64 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_plane = type { i32, i32, %union.anon.78, i32, [11 x i32] }
%union.anon.78 = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_exportbuffer = type { i32, i32, i32, i32, i32, [11 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.82 }>
%union.anon.82 = type { i64 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.83, i32 }>
%union.anon.83 = type { i64, [24 x i8] }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_crop = type { i32, %struct.v4l2_rect }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.91, [2 x i32] }
%union.anon.91 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.92, [2 x i32] }
%union.anon.92 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_enc_idx = type { i32, i32, [4 x i32], [64 x %struct.v4l2_enc_idx_entry] }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { [8 x i32] }
%struct.v4l2_dbg_match = type { i32, %union.anon.109 }
%union.anon.109 = type { i32, [28 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.v4l2_dv_timings = type { i32, %union.anon.93 }
%union.anon.93 = type { [32 x i32] }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.v4l2_create_buffers = type { i32, i32, i32, %struct.v4l2_format, i32, i32, [6 x i32] }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87, [56 x i8] }
%struct.anon.87 = type { i64 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_dbg_chip_info = type { %struct.v4l2_dbg_match, [32 x i8], i32, [32 x i32] }
%struct.v4l2_query_ext_ctrl = type { i32, i32, [32 x i8], i64, i64, i64, i64, i32, i32, i32, i32, [4 x i32], [32 x i32] }

@standards = internal unnamed_addr constant [31 x %struct.std_descr] [%struct.std_descr { i64 45056, ptr @.str.37 }, %struct.std_descr { i64 4096, ptr @.str.38 }, %struct.std_descr { i64 8192, ptr @.str.39 }, %struct.std_descr { i64 32768, ptr @.str.40 }, %struct.std_descr { i64 16384, ptr @.str.41 }, %struct.std_descr { i64 255, ptr @.str.42 }, %struct.std_descr { i64 7, ptr @.str.43 }, %struct.std_descr { i64 1, ptr @.str.44 }, %struct.std_descr { i64 2, ptr @.str.45 }, %struct.std_descr { i64 4, ptr @.str.46 }, %struct.std_descr { i64 8, ptr @.str.47 }, %struct.std_descr { i64 16, ptr @.str.48 }, %struct.std_descr { i64 224, ptr @.str.49 }, %struct.std_descr { i64 32, ptr @.str.50 }, %struct.std_descr { i64 64, ptr @.str.51 }, %struct.std_descr { i64 128, ptr @.str.52 }, %struct.std_descr { i64 256, ptr @.str.53 }, %struct.std_descr { i64 512, ptr @.str.54 }, %struct.std_descr { i64 1024, ptr @.str.55 }, %struct.std_descr { i64 2048, ptr @.str.56 }, %struct.std_descr { i64 16711680, ptr @.str.57 }, %struct.std_descr { i64 65536, ptr @.str.58 }, %struct.std_descr { i64 262144, ptr @.str.59 }, %struct.std_descr { i64 524288, ptr @.str.60 }, %struct.std_descr { i64 3276800, ptr @.str.61 }, %struct.std_descr { i64 131072, ptr @.str.62 }, %struct.std_descr { i64 1048576, ptr @.str.63 }, %struct.std_descr { i64 2097152, ptr @.str.64 }, %struct.std_descr { i64 4194304, ptr @.str.65 }, %struct.std_descr { i64 8388608, ptr @.str.66 }, %struct.std_descr { i64 0, ptr @.str.67 }], align 8
@__kstrtab_v4l2_norm_to_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_norm_to_name = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_norm_to_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_norm_to_name to i32), ptr @__kstrtab_v4l2_norm_to_name, ptr @__kstrtabns_v4l2_norm_to_name }, section "___ksymtab+v4l2_norm_to_name", align 4
@__kstrtab_v4l2_video_std_frame_period = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_video_std_frame_period = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_video_std_frame_period = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_video_std_frame_period to i32), ptr @__kstrtab_v4l2_video_std_frame_period, ptr @__kstrtabns_v4l2_video_std_frame_period }, section "___ksymtab+v4l2_video_std_frame_period", align 4
@__kstrtab_v4l2_video_std_construct = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_video_std_construct = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_video_std_construct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_video_std_construct to i32), ptr @__kstrtab_v4l2_video_std_construct, ptr @__kstrtabns_v4l2_video_std_construct }, section "___ksymtab+v4l2_video_std_construct", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"seq-tb\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"seq-bt\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"interlaced-tb\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"interlaced-bt\00", align 1
@v4l2_field_names = dso_local global [10 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@__kstrtab_v4l2_field_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_field_names = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_field_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_field_names to i32), ptr @__kstrtab_v4l2_field_names, ptr @__kstrtabns_v4l2_field_names }, section "___ksymtab+v4l2_field_names", align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"vid-cap\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"vid-out\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"vid-overlay\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"vbi-cap\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"vbi-out\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sliced-vbi-cap\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sliced-vbi-out\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"vid-out-overlay\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"vid-cap-mplane\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"vid-out-mplane\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sdr-cap\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"sdr-out\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"meta-cap\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"meta-out\00", align 1
@v4l2_type_names = dso_local global [15 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 4
@__kstrtab_v4l2_type_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_type_names = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_type_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_type_names to i32), ptr @__kstrtab_v4l2_type_names, ptr @__kstrtabns_v4l2_type_names }, section "___ksymtab+v4l2_type_names", align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"\017%s: \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"v4l2_int\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"v4l2\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@v4l2_ioctls = internal unnamed_addr constant [104 x %struct.v4l2_ioctl_info] [%struct.v4l2_ioctl_info { i32 -2140645888, i32 0, ptr @.str.68, ptr @v4l_querycap, ptr @v4l_print_querycap }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1069525502, i32 0, ptr @.str.69, ptr @v4l_enum_fmt, ptr @v4l_print_fmtdesc }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1060350460, i32 0, ptr @.str.70, ptr @v4l_g_fmt, ptr @v4l_print_format }, %struct.v4l2_ioctl_info { i32 -1060350459, i32 1, ptr @.str.71, ptr @v4l_s_fmt, ptr @v4l_print_format }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1072409080, i32 5, ptr @.str.72, ptr @v4l_reqbufs, ptr @v4l_print_requestbuffers }, %struct.v4l2_ioctl_info { i32 -1068476919, i32 4718596, ptr @.str.73, ptr @v4l_querybuf, ptr @v4l_print_buffer }, %struct.v4l2_ioctl_info { i32 -2144578038, i32 0, ptr @.str.74, ptr @v4l_stub_g_fbuf, ptr @v4l_print_framebuffer }, %struct.v4l2_ioctl_info { i32 1076647435, i32 1, ptr @.str.75, ptr @v4l_stub_s_fbuf, ptr @v4l_print_framebuffer }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 1074025998, i32 1, ptr @.str.76, ptr @v4l_overlay, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1068476913, i32 4, ptr @.str.77, ptr @v4l_qbuf, ptr @v4l_print_buffer }, %struct.v4l2_ioctl_info { i32 -1069525488, i32 1048580, ptr @.str.78, ptr @v4l_stub_expbuf, ptr @v4l_print_exportbuffer }, %struct.v4l2_ioctl_info { i32 -1068476911, i32 4, ptr @.str.79, ptr @v4l_dqbuf, ptr @v4l_print_buffer }, %struct.v4l2_ioctl_info { i32 1074026002, i32 5, ptr @.str.80, ptr @v4l_streamon, ptr @v4l_print_buftype }, %struct.v4l2_ioctl_info { i32 1074026003, i32 5, ptr @.str.81, ptr @v4l_streamoff, ptr @v4l_print_buftype }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1060350443, i32 262144, ptr @.str.82, ptr @v4l_g_parm, ptr @v4l_print_streamparm }, %struct.v4l2_ioctl_info { i32 -1060350442, i32 1, ptr @.str.83, ptr @v4l_s_parm, ptr @v4l_print_streamparm }, %struct.v4l2_ioctl_info { i32 -2146937321, i32 0, ptr @.str.84, ptr @v4l_stub_g_std, ptr @v4l_print_std }, %struct.v4l2_ioctl_info { i32 1074288152, i32 1, ptr @.str.85, ptr @v4l_s_std, ptr @v4l_print_std }, %struct.v4l2_ioctl_info { i32 -1069001191, i32 262144, ptr @.str.86, ptr @v4l_enumstd, ptr @v4l_print_standard }, %struct.v4l2_ioctl_info { i32 -1068476902, i32 262144, ptr @.str.87, ptr @v4l_enuminput, ptr @v4l_print_enuminput }, %struct.v4l2_ioctl_info { i32 -1073195493, i32 262146, ptr @.str.88, ptr @v4l_g_ctrl, ptr @v4l_print_control }, %struct.v4l2_ioctl_info { i32 -1073195492, i32 3, ptr @.str.89, ptr @v4l_s_ctrl, ptr @v4l_print_control }, %struct.v4l2_ioctl_info { i32 -1068214755, i32 262144, ptr @.str.90, ptr @v4l_g_tuner, ptr @v4l_print_tuner }, %struct.v4l2_ioctl_info { i32 1079268894, i32 1, ptr @.str.91, ptr @v4l_s_tuner, ptr @v4l_print_tuner }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -2144053727, i32 0, ptr @.str.92, ptr @v4l_stub_g_audio, ptr @v4l_print_audio }, %struct.v4l2_ioctl_info { i32 1077171746, i32 1, ptr @.str.93, ptr @v4l_stub_s_audio, ptr @v4l_print_audio }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1069263324, i32 262146, ptr @.str.94, ptr @v4l_queryctrl, ptr @v4l_print_queryctrl }, %struct.v4l2_ioctl_info { i32 -1070836187, i32 524290, ptr @.str.95, ptr @v4l_querymenu, ptr @v4l_print_querymenu }, %struct.v4l2_ioctl_info { i32 -2147199450, i32 0, ptr @.str.96, ptr @v4l_g_input, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1073457625, i32 1, ptr @.str.97, ptr @v4l_s_input, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1071360472, i32 8, ptr @.str.98, ptr @v4l_stub_g_edid, ptr @v4l_print_edid }, %struct.v4l2_ioctl_info { i32 -1071360471, i32 9, ptr @.str.99, ptr @v4l_stub_s_edid, ptr @v4l_print_edid }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -2147199442, i32 0, ptr @.str.100, ptr @v4l_g_output, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1073457617, i32 1, ptr @.str.101, ptr @v4l_s_output, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1069001168, i32 262144, ptr @.str.102, ptr @v4l_enumoutput, ptr @v4l_print_enumoutput }, %struct.v4l2_ioctl_info { i32 -2144053711, i32 0, ptr @.str.103, ptr @v4l_stub_g_audout, ptr @v4l_print_audioout }, %struct.v4l2_ioctl_info { i32 1077171762, i32 1, ptr @.str.104, ptr @v4l_stub_s_audout, ptr @v4l_print_audioout }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1069263306, i32 262144, ptr @.str.105, ptr @v4l_g_modulator, ptr @v4l_print_modulator }, %struct.v4l2_ioctl_info { i32 1078220343, i32 1, ptr @.str.106, ptr @v4l_s_modulator, ptr @v4l_print_modulator }, %struct.v4l2_ioctl_info { i32 -1070836168, i32 262144, ptr @.str.107, ptr @v4l_g_frequency, ptr @v4l_print_frequency }, %struct.v4l2_ioctl_info { i32 1076647481, i32 1, ptr @.str.108, ptr @v4l_s_frequency, ptr @v4l_print_frequency }, %struct.v4l2_ioctl_info { i32 -1070836166, i32 262144, ptr @.str.109, ptr @v4l_cropcap, ptr @v4l_print_cropcap }, %struct.v4l2_ioctl_info { i32 -1072409029, i32 262144, ptr @.str.110, ptr @v4l_g_crop, ptr @v4l_print_crop }, %struct.v4l2_ioctl_info { i32 1075074620, i32 1, ptr @.str.111, ptr @v4l_s_crop, ptr @v4l_print_crop }, %struct.v4l2_ioctl_info { i32 -2138286531, i32 0, ptr @.str.112, ptr @v4l_stub_g_jpegcomp, ptr @v4l_print_jpegcompression }, %struct.v4l2_ioctl_info { i32 1082938942, i32 1, ptr @.str.113, ptr @v4l_stub_s_jpegcomp, ptr @v4l_print_jpegcompression }, %struct.v4l2_ioctl_info { i32 -2146937281, i32 0, ptr @.str.114, ptr @v4l_querystd, ptr @v4l_print_std }, %struct.v4l2_ioctl_info { i32 -1060350400, i32 0, ptr @.str.115, ptr @v4l_try_fmt, ptr @v4l_print_format }, %struct.v4l2_ioctl_info { i32 -1070311871, i32 262144, ptr @.str.116, ptr @v4l_stub_enumaudio, ptr @v4l_print_audio }, %struct.v4l2_ioctl_info { i32 -1070311870, i32 262144, ptr @.str.117, ptr @v4l_stub_enumaudout, ptr @v4l_print_audioout }, %struct.v4l2_ioctl_info { i32 -2147199421, i32 0, ptr @.str.118, ptr @v4l_g_priority, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 1074026052, i32 1, ptr @.str.119, ptr @v4l_s_priority, ptr @v4l_print_u32 }, %struct.v4l2_ioctl_info { i32 -1066117563, i32 6815744, ptr @.str.120, ptr @v4l_g_sliced_vbi_cap, ptr @v4l_print_sliced_vbi_cap }, %struct.v4l2_ioctl_info { i32 22086, i32 0, ptr @.str.121, ptr @v4l_log_status, ptr @v4l_print_newline }, %struct.v4l2_ioctl_info { i32 -1072146873, i32 2, ptr @.str.122, ptr @v4l_g_ext_ctrls, ptr @v4l_print_ext_controls }, %struct.v4l2_ioctl_info { i32 -1072146872, i32 3, ptr @.str.123, ptr @v4l_s_ext_ctrls, ptr @v4l_print_ext_controls }, %struct.v4l2_ioctl_info { i32 -1072146871, i32 2, ptr @.str.124, ptr @v4l_try_ext_ctrls, ptr @v4l_print_ext_controls }, %struct.v4l2_ioctl_info { i32 -1070836150, i32 524288, ptr @.str.125, ptr @v4l_stub_enum_framesizes, ptr @v4l_print_frmsizeenum }, %struct.v4l2_ioctl_info { i32 -1070311861, i32 1048576, ptr @.str.126, ptr @v4l_stub_enum_frameintervals, ptr @v4l_print_frmivalenum }, %struct.v4l2_ioctl_info { i32 -2011670964, i32 0, ptr @.str.127, ptr @v4l_stub_g_enc_index, ptr @v4l_print_enc_idx }, %struct.v4l2_ioctl_info { i32 -1071098291, i32 524289, ptr @.str.128, ptr @v4l_stub_encoder_cmd, ptr @v4l_print_encoder_cmd }, %struct.v4l2_ioctl_info { i32 -1071098290, i32 524288, ptr @.str.129, ptr @v4l_stub_try_encoder_cmd, ptr @v4l_print_encoder_cmd }, %struct.v4l2_ioctl_info { i32 1077433935, i32 0, ptr @.str.130, ptr @v4l_dbg_s_register, ptr @v4l_print_dbg_register }, %struct.v4l2_ioctl_info { i32 -1070049712, i32 0, ptr @.str.131, ptr @v4l_dbg_g_register, ptr @v4l_print_dbg_register }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 1076909650, i32 1, ptr @.str.132, ptr @v4l_s_hw_freq_seek, ptr @v4l_print_hw_freq_seek }, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info zeroinitializer, %struct.v4l2_ioctl_info { i32 -1065068969, i32 4718593, ptr @.str.133, ptr @v4l_stub_s_dv_timings, ptr @v4l_print_dv_timings }, %struct.v4l2_ioctl_info { i32 -1065068968, i32 0, ptr @.str.134, ptr @v4l_stub_g_dv_timings, ptr @v4l_print_dv_timings }, %struct.v4l2_ioctl_info { i32 -2138548647, i32 0, ptr @.str.135, ptr @v4l_dqevent, ptr @v4l_print_event }, %struct.v4l2_ioctl_info { i32 1075861082, i32 0, ptr @.str.136, ptr @v4l_subscribe_event, ptr @v4l_print_event_subscription }, %struct.v4l2_ioctl_info { i32 1075861083, i32 0, ptr @.str.137, ptr @v4l_unsubscribe_event, ptr @v4l_print_event_subscription }, %struct.v4l2_ioctl_info { i32 -1057466788, i32 5, ptr @.str.138, ptr @v4l_create_bufs, ptr @v4l_print_create_buffers }, %struct.v4l2_ioctl_info { i32 -1068476835, i32 4, ptr @.str.139, ptr @v4l_prepare_buf, ptr @v4l_print_buffer }, %struct.v4l2_ioctl_info { i32 -1069525410, i32 1835008, ptr @.str.140, ptr @v4l_g_selection, ptr @v4l_print_selection }, %struct.v4l2_ioctl_info { i32 -1069525409, i32 1835009, ptr @.str.141, ptr @v4l_s_selection, ptr @v4l_print_selection }, %struct.v4l2_ioctl_info { i32 -1069001120, i32 1, ptr @.str.142, ptr @v4l_stub_decoder_cmd, ptr @v4l_print_decoder_cmd }, %struct.v4l2_ioctl_info { i32 -1069001119, i32 0, ptr @.str.143, ptr @v4l_stub_try_decoder_cmd, ptr @v4l_print_decoder_cmd }, %struct.v4l2_ioctl_info { i32 -1064020382, i32 524288, ptr @.str.144, ptr @v4l_stub_enum_dv_timings, ptr @v4l_print_enum_dv_timings }, %struct.v4l2_ioctl_info { i32 -2138810781, i32 8, ptr @.str.145, ptr @v4l_stub_query_dv_timings, ptr @v4l_print_dv_timings }, %struct.v4l2_ioctl_info { i32 -1064282524, i32 524288, ptr @.str.146, ptr @v4l_stub_dv_timings_cap, ptr @v4l_print_dv_timings_cap }, %struct.v4l2_ioctl_info { i32 -1069525403, i32 0, ptr @.str.147, ptr @v4l_enum_freq_bands, ptr @v4l_print_freq_band }, %struct.v4l2_ioctl_info { i32 -1060612506, i32 2359296, ptr @.str.148, ptr @v4l_dbg_g_chip_info, ptr @v4l_print_dbg_chip_info }, %struct.v4l2_ioctl_info { i32 -1058515353, i32 262146, ptr @.str.149, ptr @v4l_query_ext_ctrl, ptr @v4l_print_query_ext_ctrl }], align 4
@.str.30 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"r-\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"\01c%s ioctl '%c', dir=%s, #%d (0x%08x)\00", align 1
@__kstrtab_v4l_printk_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l_printk_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l_printk_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l_printk_ioctl to i32), ptr @__kstrtab_v4l_printk_ioctl, ptr @__kstrtabns_v4l_printk_ioctl }, section "___ksymtab+v4l_printk_ioctl", align 4
@__kstrtab_video_ioctl2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_video_ioctl2 = external dso_local constant [0 x i8], align 1
@__ksymtab_video_ioctl2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @video_ioctl2 to i32), ptr @__kstrtab_video_ioctl2, ptr @__kstrtabns_video_ioctl2 }, section "___ksymtab+video_ioctl2", align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"NTSC-M-JP\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"NTSC-M-KR\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"NTSC-443\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"PAL-BG\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"PAL-B\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"PAL-B1\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"PAL-G\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"PAL-H\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"PAL-I\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"PAL-DK\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"PAL-D\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"PAL-D1\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"PAL-K\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"PAL-N\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"PAL-Nc\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"PAL-60\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"SECAM-B\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"SECAM-G\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"SECAM-H\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"SECAM-DK\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"SECAM-D\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"SECAM-K\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"SECAM-K1\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"SECAM-L\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"SECAM-Lc\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"VIDIOC_QUERYCAP\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"VIDIOC_ENUM_FMT\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"VIDIOC_G_FMT\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"VIDIOC_S_FMT\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"VIDIOC_REQBUFS\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"VIDIOC_QUERYBUF\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"VIDIOC_G_FBUF\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"VIDIOC_S_FBUF\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"VIDIOC_OVERLAY\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"VIDIOC_QBUF\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"VIDIOC_EXPBUF\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"VIDIOC_DQBUF\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"VIDIOC_STREAMON\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"VIDIOC_STREAMOFF\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"VIDIOC_G_PARM\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"VIDIOC_S_PARM\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"VIDIOC_G_STD\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"VIDIOC_S_STD\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"VIDIOC_ENUMSTD\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"VIDIOC_ENUMINPUT\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"VIDIOC_G_CTRL\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"VIDIOC_S_CTRL\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"VIDIOC_G_TUNER\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"VIDIOC_S_TUNER\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"VIDIOC_G_AUDIO\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"VIDIOC_S_AUDIO\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"VIDIOC_QUERYCTRL\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"VIDIOC_QUERYMENU\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"VIDIOC_G_INPUT\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"VIDIOC_S_INPUT\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"VIDIOC_G_EDID\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"VIDIOC_S_EDID\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"VIDIOC_G_OUTPUT\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"VIDIOC_S_OUTPUT\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"VIDIOC_ENUMOUTPUT\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"VIDIOC_G_AUDOUT\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"VIDIOC_S_AUDOUT\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_MODULATOR\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"VIDIOC_S_MODULATOR\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_FREQUENCY\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"VIDIOC_S_FREQUENCY\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"VIDIOC_CROPCAP\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"VIDIOC_G_CROP\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"VIDIOC_S_CROP\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"VIDIOC_G_JPEGCOMP\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"VIDIOC_S_JPEGCOMP\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"VIDIOC_QUERYSTD\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"VIDIOC_TRY_FMT\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"VIDIOC_ENUMAUDIO\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"VIDIOC_ENUMAUDOUT\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"VIDIOC_G_PRIORITY\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"VIDIOC_S_PRIORITY\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"VIDIOC_G_SLICED_VBI_CAP\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"VIDIOC_LOG_STATUS\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_EXT_CTRLS\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"VIDIOC_S_EXT_CTRLS\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"VIDIOC_TRY_EXT_CTRLS\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"VIDIOC_ENUM_FRAMESIZES\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"VIDIOC_ENUM_FRAMEINTERVALS\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_ENC_INDEX\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"VIDIOC_ENCODER_CMD\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"VIDIOC_TRY_ENCODER_CMD\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"VIDIOC_DBG_S_REGISTER\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"VIDIOC_DBG_G_REGISTER\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"VIDIOC_S_HW_FREQ_SEEK\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"VIDIOC_S_DV_TIMINGS\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"VIDIOC_G_DV_TIMINGS\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"VIDIOC_DQEVENT\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"VIDIOC_SUBSCRIBE_EVENT\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"VIDIOC_UNSUBSCRIBE_EVENT\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"VIDIOC_CREATE_BUFS\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"VIDIOC_PREPARE_BUF\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_SELECTION\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"VIDIOC_S_SELECTION\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"VIDIOC_DECODER_CMD\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"VIDIOC_TRY_DECODER_CMD\00", align 1
@.str.144 = private unnamed_addr constant [23 x i8] c"VIDIOC_ENUM_DV_TIMINGS\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"VIDIOC_QUERY_DV_TIMINGS\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"VIDIOC_DV_TIMINGS_CAP\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"VIDIOC_ENUM_FREQ_BANDS\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"VIDIOC_DBG_G_CHIP_INFO\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"VIDIOC_QUERY_EXT_CTRL\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"drivers/media/v4l2-core/v4l2-ioctl.c\00", align 1
@.str.151 = private unnamed_addr constant [93 x i8] c"\01cdriver=%.*s, card=%.*s, bus=%.*s, version=0x%08x, capabilities=0x%08x, device_caps=0x%08x\0A\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"8-bit RGB 3-3-2\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"16-bit A/XRGB 4-4-4-4\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"16-bit ARGB 4-4-4-4\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"16-bit XRGB 4-4-4-4\00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c"16-bit RGBA 4-4-4-4\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"16-bit RGBX 4-4-4-4\00", align 1
@.str.158 = private unnamed_addr constant [20 x i8] c"16-bit ABGR 4-4-4-4\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"16-bit XBGR 4-4-4-4\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"16-bit BGRA 4-4-4-4\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"16-bit BGRX 4-4-4-4\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"16-bit A/XRGB 1-5-5-5\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"16-bit ARGB 1-5-5-5\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"16-bit XRGB 1-5-5-5\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"16-bit ABGR 1-5-5-5\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"16-bit XBGR 1-5-5-5\00", align 1
@.str.167 = private unnamed_addr constant [20 x i8] c"16-bit RGBA 5-5-5-1\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"16-bit RGBX 5-5-5-1\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"16-bit BGRA 5-5-5-1\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"16-bit BGRX 5-5-5-1\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c"16-bit RGB 5-6-5\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"16-bit A/XRGB 1-5-5-5 BE\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"16-bit ARGB 1-5-5-5 BE\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"16-bit XRGB 1-5-5-5 BE\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"16-bit RGB 5-6-5 BE\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"18-bit BGRX 6-6-6-14\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"24-bit BGR 8-8-8\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"24-bit RGB 8-8-8\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"32-bit BGRA/X 8-8-8-8\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"32-bit BGRA 8-8-8-8\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"32-bit BGRX 8-8-8-8\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"32-bit A/XRGB 8-8-8-8\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"32-bit ARGB 8-8-8-8\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"32-bit XRGB 8-8-8-8\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"32-bit ABGR 8-8-8-8\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"32-bit XBGR 8-8-8-8\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"32-bit RGBA 8-8-8-8\00", align 1
@.str.188 = private unnamed_addr constant [20 x i8] c"32-bit RGBX 8-8-8-8\00", align 1
@.str.189 = private unnamed_addr constant [16 x i8] c"8-bit Greyscale\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"4-bit Greyscale\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"6-bit Greyscale\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"10-bit Greyscale\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"12-bit Greyscale\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"14-bit Greyscale\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"16-bit Greyscale\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"16-bit Greyscale BE\00", align 1
@.str.197 = private unnamed_addr constant [26 x i8] c"10-bit Greyscale (Packed)\00", align 1
@.str.198 = private unnamed_addr constant [31 x i8] c"10-bit Greyscale (MIPI Packed)\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c"Interleaved 8-bit Greyscale\00", align 1
@.str.200 = private unnamed_addr constant [29 x i8] c"Interleaved 12-bit Greyscale\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"16-bit Depth\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"Planar 10:16 Greyscale Depth\00", align 1
@.str.203 = private unnamed_addr constant [32 x i8] c"4-bit Depth Confidence (Packed)\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"8-bit Palette\00", align 1
@.str.205 = private unnamed_addr constant [25 x i8] c"8-bit Chrominance UV 4-4\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"Planar YVU 4:1:0\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"Planar YVU 4:2:0\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"YUYV 4:2:2\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"YYUV 4:2:2\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"YVYU 4:2:2\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"UYVY 4:2:2\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"VYUY 4:2:2\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"Planar YUV 4:2:2\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"Planar YUV 4:1:1\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"YUV 4:1:1 (Packed)\00", align 1
@.str.216 = private unnamed_addr constant [22 x i8] c"16-bit A/XYUV 4-4-4-4\00", align 1
@.str.217 = private unnamed_addr constant [22 x i8] c"16-bit A/XYUV 1-5-5-5\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"16-bit YUV 5-6-5\00", align 1
@.str.219 = private unnamed_addr constant [23 x i8] c"24-bit YUV 4:4:4 8-8-8\00", align 1
@.str.220 = private unnamed_addr constant [22 x i8] c"32-bit A/XYUV 8-8-8-8\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"32-bit AYUV 8-8-8-8\00", align 1
@.str.222 = private unnamed_addr constant [20 x i8] c"32-bit XYUV 8-8-8-8\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"32-bit VUYA 8-8-8-8\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"32-bit VUYX 8-8-8-8\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"Planar YUV 4:1:0\00", align 1
@.str.226 = private unnamed_addr constant [17 x i8] c"Planar YUV 4:2:0\00", align 1
@.str.227 = private unnamed_addr constant [26 x i8] c"8-bit Dithered RGB (BTTV)\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"YUV 4:2:0 (M420)\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"Y/CbCr 4:2:0\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"Y/CrCb 4:2:0\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"Y/CbCr 4:2:2\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"Y/CrCb 4:2:2\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"Y/CbCr 4:4:4\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"Y/CrCb 4:4:4\00", align 1
@.str.235 = private unnamed_addr constant [26 x i8] c"Y/CbCr 4:2:0 (4x4 Linear)\00", align 1
@.str.236 = private unnamed_addr constant [28 x i8] c"Y/CbCr 4:2:0 (16x16 Linear)\00", align 1
@.str.237 = private unnamed_addr constant [28 x i8] c"Y/CbCr 4:2:0 (32x32 Linear)\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"Y/CbCr 4:2:0 (N-C)\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"Y/CrCb 4:2:0 (N-C)\00", align 1
@.str.240 = private unnamed_addr constant [19 x i8] c"Y/CbCr 4:2:2 (N-C)\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"Y/CrCb 4:2:2 (N-C)\00", align 1
@.str.242 = private unnamed_addr constant [29 x i8] c"Y/CbCr 4:2:0 (64x32 MB, N-C)\00", align 1
@.str.243 = private unnamed_addr constant [29 x i8] c"Y/CbCr 4:2:0 (16x16 MB, N-C)\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"Planar YUV 4:2:0 (N-C)\00", align 1
@.str.245 = private unnamed_addr constant [23 x i8] c"Planar YVU 4:2:0 (N-C)\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"Planar YUV 4:2:2 (N-C)\00", align 1
@.str.247 = private unnamed_addr constant [23 x i8] c"Planar YVU 4:2:2 (N-C)\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c"Planar YUV 4:4:4 (N-C)\00", align 1
@.str.249 = private unnamed_addr constant [23 x i8] c"Planar YVU 4:4:4 (N-C)\00", align 1
@.str.250 = private unnamed_addr constant [22 x i8] c"8-bit Bayer BGBG/GRGR\00", align 1
@.str.251 = private unnamed_addr constant [22 x i8] c"8-bit Bayer GBGB/RGRG\00", align 1
@.str.252 = private unnamed_addr constant [22 x i8] c"8-bit Bayer GRGR/BGBG\00", align 1
@.str.253 = private unnamed_addr constant [22 x i8] c"8-bit Bayer RGRG/GBGB\00", align 1
@.str.254 = private unnamed_addr constant [23 x i8] c"10-bit Bayer BGBG/GRGR\00", align 1
@.str.255 = private unnamed_addr constant [23 x i8] c"10-bit Bayer GBGB/RGRG\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"10-bit Bayer GRGR/BGBG\00", align 1
@.str.257 = private unnamed_addr constant [23 x i8] c"10-bit Bayer RGRG/GBGB\00", align 1
@.str.258 = private unnamed_addr constant [30 x i8] c"10-bit Bayer BGBG/GRGR Packed\00", align 1
@.str.259 = private unnamed_addr constant [30 x i8] c"10-bit Bayer GBGB/RGRG Packed\00", align 1
@.str.260 = private unnamed_addr constant [30 x i8] c"10-bit Bayer GRGR/BGBG Packed\00", align 1
@.str.261 = private unnamed_addr constant [30 x i8] c"10-bit Bayer RGRG/GBGB Packed\00", align 1
@.str.262 = private unnamed_addr constant [30 x i8] c"10-bit bayer BGGR IPU3 Packed\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"10-bit bayer GBRG IPU3 Packed\00", align 1
@.str.264 = private unnamed_addr constant [30 x i8] c"10-bit bayer GRBG IPU3 Packed\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"10-bit bayer RGGB IPU3 Packed\00", align 1
@.str.266 = private unnamed_addr constant [30 x i8] c"8-bit Bayer BGBG/GRGR (A-law)\00", align 1
@.str.267 = private unnamed_addr constant [30 x i8] c"8-bit Bayer GBGB/RGRG (A-law)\00", align 1
@.str.268 = private unnamed_addr constant [30 x i8] c"8-bit Bayer GRGR/BGBG (A-law)\00", align 1
@.str.269 = private unnamed_addr constant [30 x i8] c"8-bit Bayer RGRG/GBGB (A-law)\00", align 1
@.str.270 = private unnamed_addr constant [29 x i8] c"8-bit Bayer BGBG/GRGR (DPCM)\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"8-bit Bayer GBGB/RGRG (DPCM)\00", align 1
@.str.272 = private unnamed_addr constant [29 x i8] c"8-bit Bayer GRGR/BGBG (DPCM)\00", align 1
@.str.273 = private unnamed_addr constant [29 x i8] c"8-bit Bayer RGRG/GBGB (DPCM)\00", align 1
@.str.274 = private unnamed_addr constant [23 x i8] c"12-bit Bayer BGBG/GRGR\00", align 1
@.str.275 = private unnamed_addr constant [23 x i8] c"12-bit Bayer GBGB/RGRG\00", align 1
@.str.276 = private unnamed_addr constant [23 x i8] c"12-bit Bayer GRGR/BGBG\00", align 1
@.str.277 = private unnamed_addr constant [23 x i8] c"12-bit Bayer RGRG/GBGB\00", align 1
@.str.278 = private unnamed_addr constant [30 x i8] c"12-bit Bayer BGBG/GRGR Packed\00", align 1
@.str.279 = private unnamed_addr constant [30 x i8] c"12-bit Bayer GBGB/RGRG Packed\00", align 1
@.str.280 = private unnamed_addr constant [30 x i8] c"12-bit Bayer GRGR/BGBG Packed\00", align 1
@.str.281 = private unnamed_addr constant [30 x i8] c"12-bit Bayer RGRG/GBGB Packed\00", align 1
@.str.282 = private unnamed_addr constant [23 x i8] c"14-bit Bayer BGBG/GRGR\00", align 1
@.str.283 = private unnamed_addr constant [23 x i8] c"14-bit Bayer GBGB/RGRG\00", align 1
@.str.284 = private unnamed_addr constant [23 x i8] c"14-bit Bayer GRGR/BGBG\00", align 1
@.str.285 = private unnamed_addr constant [23 x i8] c"14-bit Bayer RGRG/GBGB\00", align 1
@.str.286 = private unnamed_addr constant [30 x i8] c"14-bit Bayer BGBG/GRGR Packed\00", align 1
@.str.287 = private unnamed_addr constant [30 x i8] c"14-bit Bayer GBGB/RGRG Packed\00", align 1
@.str.288 = private unnamed_addr constant [30 x i8] c"14-bit Bayer GRGR/BGBG Packed\00", align 1
@.str.289 = private unnamed_addr constant [30 x i8] c"14-bit Bayer RGRG/GBGB Packed\00", align 1
@.str.290 = private unnamed_addr constant [23 x i8] c"16-bit Bayer BGBG/GRGR\00", align 1
@.str.291 = private unnamed_addr constant [23 x i8] c"16-bit Bayer GBGB/RGRG\00", align 1
@.str.292 = private unnamed_addr constant [23 x i8] c"16-bit Bayer GRGR/BGBG\00", align 1
@.str.293 = private unnamed_addr constant [23 x i8] c"16-bit Bayer RGRG/GBGB\00", align 1
@.str.294 = private unnamed_addr constant [19 x i8] c"GSPCA SN9C20X I420\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"GSPCA SPCA501\00", align 1
@.str.296 = private unnamed_addr constant [14 x i8] c"GSPCA SPCA505\00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"GSPCA SPCA508\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"GSPCA STV0680\00", align 1
@.str.299 = private unnamed_addr constant [21 x i8] c"A/V + VBI Mux Packet\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"GSPCA CIT YYVYUY\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"GSPCA KONICA420\00", align 1
@.str.302 = private unnamed_addr constant [28 x i8] c"Mediatek 8-bit Block Format\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"24-bit HSV 8-8-8\00", align 1
@.str.304 = private unnamed_addr constant [20 x i8] c"32-bit XHSV 8-8-8-8\00", align 1
@.str.305 = private unnamed_addr constant [11 x i8] c"Complex U8\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"Complex U16LE\00", align 1
@.str.307 = private unnamed_addr constant [11 x i8] c"Complex S8\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"Complex S14LE\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"Real U12LE\00", align 1
@.str.310 = private unnamed_addr constant [21 x i8] c"Planar Complex U16BE\00", align 1
@.str.311 = private unnamed_addr constant [21 x i8] c"Planar Complex U18BE\00", align 1
@.str.312 = private unnamed_addr constant [21 x i8] c"Planar Complex U20BE\00", align 1
@.str.313 = private unnamed_addr constant [21 x i8] c"16-bit Signed Deltas\00", align 1
@.str.314 = private unnamed_addr constant [20 x i8] c"8-bit Signed Deltas\00", align 1
@.str.315 = private unnamed_addr constant [27 x i8] c"16-bit Unsigned Touch Data\00", align 1
@.str.316 = private unnamed_addr constant [26 x i8] c"8-bit Unsigned Touch Data\00", align 1
@.str.317 = private unnamed_addr constant [25 x i8] c"R-Car VSP1 1-D Histogram\00", align 1
@.str.318 = private unnamed_addr constant [25 x i8] c"R-Car VSP1 2-D Histogram\00", align 1
@.str.319 = private unnamed_addr constant [28 x i8] c"UVC Payload Header Metadata\00", align 1
@.str.320 = private unnamed_addr constant [24 x i8] c"Intel D4xx UVC Metadata\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"Vivid Metadata\00", align 1
@.str.322 = private unnamed_addr constant [28 x i8] c"Rockchip ISP1 3A Parameters\00", align 1
@.str.323 = private unnamed_addr constant [28 x i8] c"Rockchip ISP1 3A Statistics\00", align 1
@.str.324 = private unnamed_addr constant [12 x i8] c"Motion-JPEG\00", align 1
@.str.325 = private unnamed_addr constant [10 x i8] c"JFIF JPEG\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"1394\00", align 1
@.str.327 = private unnamed_addr constant [11 x i8] c"MPEG-1/2/4\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"H.264\00", align 1
@.str.329 = private unnamed_addr constant [23 x i8] c"H.264 (No Start Codes)\00", align 1
@.str.330 = private unnamed_addr constant [10 x i8] c"H.264 MVC\00", align 1
@.str.331 = private unnamed_addr constant [24 x i8] c"H.264 Parsed Slice Data\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"H.263\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"MPEG-1 ES\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"MPEG-2 ES\00", align 1
@.str.335 = private unnamed_addr constant [25 x i8] c"MPEG-2 Parsed Slice Data\00", align 1
@.str.336 = private unnamed_addr constant [17 x i8] c"MPEG-4 Part 2 ES\00", align 1
@.str.337 = private unnamed_addr constant [5 x i8] c"Xvid\00", align 1
@.str.338 = private unnamed_addr constant [26 x i8] c"VC-1 (SMPTE 412M Annex G)\00", align 1
@.str.339 = private unnamed_addr constant [26 x i8] c"VC-1 (SMPTE 412M Annex L)\00", align 1
@.str.340 = private unnamed_addr constant [4 x i8] c"VP8\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"VP8 Frame\00", align 1
@.str.342 = private unnamed_addr constant [4 x i8] c"VP9\00", align 1
@.str.343 = private unnamed_addr constant [10 x i8] c"VP9 Frame\00", align 1
@.str.344 = private unnamed_addr constant [5 x i8] c"HEVC\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"HEVC Parsed Slice Data\00", align 1
@.str.346 = private unnamed_addr constant [5 x i8] c"FWHT\00", align 1
@.str.347 = private unnamed_addr constant [15 x i8] c"FWHT Stateless\00", align 1
@.str.348 = private unnamed_addr constant [15 x i8] c"GSPCA CPiA YUV\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"WNVA\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"GSPCA SN9C10X\00", align 1
@.str.351 = private unnamed_addr constant [30 x i8] c"Raw Philips Webcam Type (Old)\00", align 1
@.str.352 = private unnamed_addr constant [30 x i8] c"Raw Philips Webcam Type (New)\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"GSPCA ET61X251\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"GSPCA SPCA561\00", align 1
@.str.355 = private unnamed_addr constant [13 x i8] c"GSPCA PAC207\00", align 1
@.str.356 = private unnamed_addr constant [15 x i8] c"GSPCA MR97310A\00", align 1
@.str.357 = private unnamed_addr constant [16 x i8] c"GSPCA JL2005BCD\00", align 1
@.str.358 = private unnamed_addr constant [15 x i8] c"GSPCA SN9C2028\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"GSPCA SQ905C\00", align 1
@.str.360 = private unnamed_addr constant [11 x i8] c"GSPCA PJPG\00", align 1
@.str.361 = private unnamed_addr constant [12 x i8] c"GSPCA OV511\00", align 1
@.str.362 = private unnamed_addr constant [12 x i8] c"GSPCA OV518\00", align 1
@.str.363 = private unnamed_addr constant [10 x i8] c"JPEG Lite\00", align 1
@.str.364 = private unnamed_addr constant [12 x i8] c"GSPCA SE401\00", align 1
@.str.365 = private unnamed_addr constant [30 x i8] c"S5C73MX interleaved UYVY/JPEG\00", align 1
@.str.366 = private unnamed_addr constant [27 x i8] c"Mediatek Compressed Format\00", align 1
@.str.367 = private unnamed_addr constant [28 x i8] c"Unknown pixelformat 0x%08x\0A\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"%p4cc\00", align 1
@.str.369 = private unnamed_addr constant [90 x i8] c"\01cindex=%u, type=%s, flags=0x%x, pixelformat=%p4cc, mbus_code=0x%04x, description='%.*s'\0A\00", align 1
@.str.370 = private unnamed_addr constant [10 x i8] c"\01ctype=%s\00", align 1
@.str.371 = private unnamed_addr constant [157 x i8] c"\01c, width=%u, height=%u, pixelformat=%p4cc, field=%s, bytesperline=%u, sizeimage=%u, colorspace=%d, flags=0x%x, ycbcr_enc=%u, quantization=%u, xfer_func=%u\0A\00", align 1
@.str.372 = private unnamed_addr constant [136 x i8] c"\01c, width=%u, height=%u, format=%p4cc, field=%s, colorspace=%d, num_planes=%u, flags=0x%x, ycbcr_enc=%u, quantization=%u, xfer_func=%u\0A\00", align 1
@.str.373 = private unnamed_addr constant [42 x i8] c"\017plane %u: bytesperline=%u sizeimage=%u\0A\00", align 1
@.str.374 = private unnamed_addr constant [110 x i8] c"\01c, wxh=%dx%d, x,y=%d,%d, field=%s, chromakey=0x%08x, clipcount=%u, clips=%p, bitmap=%p, global_alpha=0x%02x\0A\00", align 1
@.str.375 = private unnamed_addr constant [101 x i8] c"\01c, sampling_rate=%u, offset=%u, samples_per_line=%u, sample_format=%p4cc, start=%u,%u, count=%u,%u\0A\00", align 1
@.str.376 = private unnamed_addr constant [36 x i8] c"\01c, service_set=0x%08x, io_size=%d\0A\00", align 1
@.str.377 = private unnamed_addr constant [29 x i8] c"\017line[%02u]=0x%04x, 0x%04x\0A\00", align 1
@.str.378 = private unnamed_addr constant [23 x i8] c"\01c, pixelformat=%p4cc\0A\00", align 1
@.str.379 = private unnamed_addr constant [37 x i8] c"\01c, dataformat=%p4cc, buffersize=%u\0A\00", align 1
@.str.380 = private unnamed_addr constant [32 x i8] c"\01ccount=%d, type=%s, memory=%s\0A\00", align 1
@v4l2_memory_names = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384], align 4
@.str.381 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"userptr\00", align 1
@.str.383 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.384 = private unnamed_addr constant [7 x i8] c"dmabuf\00", align 1
@.str.385 = private unnamed_addr constant [104 x i8] c"\01c%02d:%02d:%02d.%06ld index=%d, type=%s, request_fd=%d, flags=0x%08x, field=%s, sequence=%d, memory=%s\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.387 = private unnamed_addr constant [79 x i8] c"\017plane %d: bytesused=%d, data_offset=0x%08x, offset/userptr=0x%lx, length=%d\0A\00", align 1
@.str.388 = private unnamed_addr constant [51 x i8] c"\01c, bytesused=%d, offset/userptr=0x%lx, length=%d\0A\00", align 1
@.str.389 = private unnamed_addr constant [77 x i8] c"\017timecode=%02d:%02d:%02d type=%d, flags=0x%08x, frames=%d, userbits=0x%08x\0A\00", align 1
@.str.390 = private unnamed_addr constant [128 x i8] c"\01ccapability=0x%x, flags=0x%x, base=0x%p, width=%u, height=%u, pixelformat=%p4cc, bytesperline=%u, sizeimage=%u, colorspace=%d\0A\00", align 1
@.str.391 = private unnamed_addr constant [12 x i8] c"\01cvalue=%u\0A\00", align 1
@.str.392 = private unnamed_addr constant [52 x i8] c"\01cfd=%d, type=%s, index=%u, plane=%u, flags=0x%08x\0A\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"\01ctype=%s\0A\00", align 1
@.str.394 = private unnamed_addr constant [92 x i8] c"\01c, capability=0x%x, capturemode=0x%x, timeperframe=%d/%d, extendedmode=%d, readbuffers=%d\0A\00", align 1
@.str.395 = private unnamed_addr constant [92 x i8] c"\01c, capability=0x%x, outputmode=0x%x, timeperframe=%d/%d, extendedmode=%d, writebuffers=%d\0A\00", align 1
@.str.396 = private unnamed_addr constant [15 x i8] c"\01cstd=0x%08Lx\0A\00", align 1
@.str.397 = private unnamed_addr constant [59 x i8] c"\01cindex=%u, id=0x%Lx, name=%.*s, fps=%u/%u, framelines=%u\0A\00", align 1
@.str.398 = private unnamed_addr constant [102 x i8] c"\01cindex=%u, name=%.*s, type=%u, audioset=0x%x, tuner=%u, std=0x%08Lx, status=0x%x, capabilities=0x%x\0A\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"\01cname=%s, \00", align 1
@.str.400 = private unnamed_addr constant [21 x i8] c"\01cid=0x%x, value=%d\0A\00", align 1
@.str.401 = private unnamed_addr constant [24 x i8] c"\01cindex=%u, audmode=%u\0A\00", align 1
@.str.402 = private unnamed_addr constant [124 x i8] c"\01cindex=%u, name=%.*s, type=%u, capability=0x%x, rangelow=%u, rangehigh=%u, signal=%u, afc=%d, rxsubchans=0x%x, audmode=%u\0A\00", align 1
@.str.403 = private unnamed_addr constant [23 x i8] c"\01cindex=%u, mode=0x%x\0A\00", align 1
@.str.404 = private unnamed_addr constant [51 x i8] c"\01cindex=%u, name=%.*s, capability=0x%x, mode=0x%x\0A\00", align 1
@.str.405 = private unnamed_addr constant [81 x i8] c"\01cid=0x%x, type=%d, name=%.*s, min/max=%d/%d, step=%d, default=%d, flags=0x%08x\0A\00", align 1
@.str.406 = private unnamed_addr constant [21 x i8] c"\01cid=0x%x, index=%d\0A\00", align 1
@.str.407 = private unnamed_addr constant [37 x i8] c"\01cpad=%u, start_block=%u, blocks=%u\0A\00", align 1
@.str.408 = private unnamed_addr constant [93 x i8] c"\01cindex=%u, name=%.*s, type=%u, audioset=0x%x, modulator=%u, std=0x%08Lx, capabilities=0x%x\0A\00", align 1
@.str.409 = private unnamed_addr constant [12 x i8] c"\01cindex=%u\0A\00", align 1
@.str.410 = private unnamed_addr constant [29 x i8] c"\01cindex=%u, txsubchans=0x%x\0A\00", align 1
@.str.411 = private unnamed_addr constant [84 x i8] c"\01cindex=%u, name=%.*s, capability=0x%x, rangelow=%u, rangehigh=%u, txsubchans=0x%x\0A\00", align 1
@.str.412 = private unnamed_addr constant [35 x i8] c"\01ctuner=%u, type=%u, frequency=%u\0A\00", align 1
@.str.413 = private unnamed_addr constant [89 x i8] c"\01ctype=%s, bounds wxh=%dx%d, x,y=%d,%d, defrect wxh=%dx%d, x,y=%d,%d, pixelaspect %d/%d\0A\00", align 1
@.str.414 = private unnamed_addr constant [33 x i8] c"\01ctype=%s, wxh=%dx%d, x,y=%d,%d\0A\00", align 1
@.str.415 = private unnamed_addr constant [66 x i8] c"\01cquality=%d, APPn=%d, APP_len=%d, COM_len=%d, jpeg_markers=0x%x\0A\00", align 1
@.str.416 = private unnamed_addr constant [31 x i8] c"\01ctype=%s, service_set=0x%08x\0A\00", align 1
@.str.417 = private unnamed_addr constant [58 x i8] c"\016%s: =================  START STATUS  =================\0A\00", align 1
@.str.418 = private unnamed_addr constant [58 x i8] c"\016%s: ==================  END STATUS  ==================\0A\00", align 1
@.str.419 = private unnamed_addr constant [52 x i8] c"\01cwhich=0x%x, count=%d, error_idx=%d, request_fd=%d\00", align 1
@.str.420 = private unnamed_addr constant [12 x i8] c"\01c, name=%s\00", align 1
@.str.421 = private unnamed_addr constant [21 x i8] c"\01c, id/val=0x%x/0x%x\00", align 1
@.str.422 = private unnamed_addr constant [20 x i8] c"\01c, id/size=0x%x/%u\00", align 1
@.str.423 = private unnamed_addr constant [39 x i8] c"\01cindex=%u, pixelformat=%p4cc, type=%u\00", align 1
@.str.424 = private unnamed_addr constant [15 x i8] c"\01c, wxh=%ux%u\0A\00", align 1
@.str.425 = private unnamed_addr constant [38 x i8] c"\01c, min=%ux%u, max=%ux%u, step=%ux%u\0A\00", align 1
@.str.426 = private unnamed_addr constant [50 x i8] c"\01cindex=%u, pixelformat=%p4cc, wxh=%ux%u, type=%u\00", align 1
@.str.427 = private unnamed_addr constant [15 x i8] c"\01c, fps=%d/%d\0A\00", align 1
@.str.428 = private unnamed_addr constant [38 x i8] c"\01c, min=%d/%d, max=%d/%d, step=%d/%d\0A\00", align 1
@.str.429 = private unnamed_addr constant [30 x i8] c"\01centries=%d, entries_cap=%d\0A\00", align 1
@.str.430 = private unnamed_addr constant [22 x i8] c"\01ccmd=%d, flags=0x%x\0A\00", align 1
@.str.431 = private unnamed_addr constant [12 x i8] c"\01ctype=%u, \00", align 1
@.str.432 = private unnamed_addr constant [14 x i8] c"\01cname=%.*s, \00", align 1
@.str.433 = private unnamed_addr constant [12 x i8] c"\01caddr=%u, \00", align 1
@.str.434 = private unnamed_addr constant [26 x i8] c"\01creg=0x%llx, val=0x%llx\0A\00", align 1
@.str.435 = private unnamed_addr constant [92 x i8] c"\01ctuner=%u, type=%u, seek_upward=%u, wrap_around=%u, spacing=%u, rangelow=%u, rangehigh=%u\0A\00", align 1
@.str.436 = private unnamed_addr constant [250 x i8] c"\01ctype=bt-656/1120, interlaced=%u, pixelclock=%llu, width=%u, height=%u, polarities=0x%x, hfrontporch=%u, hsync=%u, hbackporch=%u, vfrontporch=%u, vsync=%u, vbackporch=%u, il_vfrontporch=%u, il_vsync=%u, il_vbackporch=%u, standards=0x%x, flags=0x%x\0A\00", align 1
@.str.437 = private unnamed_addr constant [11 x i8] c"\01ctype=%d\0A\00", align 1
@.str.438 = private unnamed_addr constant [69 x i8] c"\01ctype=0x%x, pending=%u, sequence=%u, id=%u, timestamp=%llu.%9.9llu\0A\00", align 1
@.str.439 = private unnamed_addr constant [12 x i8] c"\017field=%s\0A\00", align 1
@.str.440 = private unnamed_addr constant [26 x i8] c"\017changes=0x%x, type=%u, \00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"\01cvalue64=%lld, \00", align 1
@.str.442 = private unnamed_addr constant [13 x i8] c"\01cvalue=%d, \00", align 1
@.str.443 = private unnamed_addr constant [65 x i8] c"\01cflags=0x%x, minimum=%d, maximum=%d, step=%d, default_value=%d\0A\00", align 1
@.str.444 = private unnamed_addr constant [21 x i8] c"\01cframe_sequence=%u\0A\00", align 1
@.str.445 = private unnamed_addr constant [34 x i8] c"\01ctype=0x%x, id=0x%x, flags=0x%x\0A\00", align 1
@.str.446 = private unnamed_addr constant [55 x i8] c"\01cindex=%d, count=%d, memory=%s, capabilities=0x%08x, \00", align 1
@.str.447 = private unnamed_addr constant [56 x i8] c"\01ctype=%s, target=%d, flags=0x%x, wxh=%dx%d, x,y=%d,%d\0A\00", align 1
@.str.448 = private unnamed_addr constant [23 x i8] c"\016speed=%d, format=%u\0A\00", align 1
@.str.449 = private unnamed_addr constant [12 x i8] c"\016pts=%llu\0A\00", align 1
@.str.450 = private unnamed_addr constant [13 x i8] c"\01cindex=%u, \00", align 1
@.str.451 = private unnamed_addr constant [104 x i8] c"\01ctype=bt-656/1120, width=%u-%u, height=%u-%u, pixelclock=%llu-%llu, standards=0x%x, capabilities=0x%x\0A\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"\01ctype=%u\0A\00", align 1
@.str.453 = private unnamed_addr constant [92 x i8] c"\01ctuner=%u, type=%u, index=%u, capability=0x%x, rangelow=%u, rangehigh=%u, modulation=0x%x\0A\00", align 1
@.str.454 = private unnamed_addr constant [13 x i8] c"\01cname=%.*s\0A\00", align 1
@.str.455 = private unnamed_addr constant [146 x i8] c"\01cid=0x%x, type=%d, name=%.*s, min/max=%lld/%lld, step=%lld, default=%lld, flags=0x%08x, elem_size=%u, elems=%u, nr_of_dims=%u, dims=%u,%u,%u,%u\0A\00", align 1
@__tracepoint_v4l2_dqbuf = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_v4l2_qbuf = external dso_local global %struct.tracepoint, align 4
@.str.459 = private unnamed_addr constant [25 x i8] c"\014%s: has no ioctl_ops.\0A\00", align 1
@.str.460 = private unnamed_addr constant [14 x i8] c"\01c: error %ld\00", align 1
@.str.461 = private unnamed_addr constant [5 x i8] c"\01c: \00", align 1
@.str.462 = private unnamed_addr constant [25 x i8] c"\01cdriver-specific ioctl\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_v4l2_field_names, ptr @__ksymtab_v4l2_norm_to_name, ptr @__ksymtab_v4l2_type_names, ptr @__ksymtab_v4l2_video_std_construct, ptr @__ksymtab_v4l2_video_std_frame_period, ptr @__ksymtab_v4l_printk_ioctl, ptr @__ksymtab_video_ioctl2], section "llvm.metadata"
@switch.table.v4l_printk_ioctl = private unnamed_addr constant [4 x ptr] [ptr @.str.31, ptr @.str.33, ptr @.str.32, ptr @.str.34], align 4
@switch.table.v4l_cropcap = private unnamed_addr constant [13 x i32] [i32 258, i32 258, i32 2, i32 258, i32 2, i32 258, i32 258, i32 2, i32 258, i32 2, i32 258, i32 2, i32 258], align 4
@switch.table.v4l_cropcap.463 = private unnamed_addr constant [13 x i32] [i32 2, i32 2, i32 258, i32 2, i32 258, i32 2, i32 2, i32 258, i32 2, i32 258, i32 2, i32 258, i32 2], align 4
@switch.table.v4l_s_crop = private unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 256, i32 0, i32 256, i32 0, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0], align 4
@switch.table.v4l_s_crop.464 = private unnamed_addr constant [13 x i32] [i32 256, i32 256, i32 0, i32 256, i32 0, i32 256, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_norm_to_name(i64 noundef %0) #0 {
  %2 = and i64 %0, 4294967295
  %3 = icmp ult i64 %0, 4294967296
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/v4l2-ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %7 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %6
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = icmp eq i64 %2, %8
  %11 = or i1 %9, %10
  %12 = add nuw nsw i32 %6, 1
  br i1 %11, label %13, label %5

13:                                               ; preds = %5
  %14 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %6, i32 1
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @v4l2_video_std_frame_period(i32 noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = and i32 %0, 63744
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 1, i32 1001
  %6 = select i1 %4, i32 25, i32 30000
  store i32 %5, ptr %1, align 4
  %7 = getelementptr inbounds %struct.v4l2_fract, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_video_std_construct(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 1
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3
  %7 = and i32 %1, 63744
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 1001
  %10 = select i1 %8, i32 25, i32 30000
  store i32 %9, ptr %6, align 4
  %11 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3, i32 1
  store i32 %10, ptr %11, align 4
  %12 = and i64 %4, 63744
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i32 625, i32 525
  %15 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 2
  %17 = tail call i32 @strscpy(ptr noundef %16, ptr noundef %2, i32 noundef 24) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l_video_std_enumstd(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %20, %2
  %6 = phi i32 [ %15, %20 ], [ 0, %2 ]
  %7 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %8 = phi i64 [ %21, %20 ], [ %1, %2 ]
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %15, %9 ], [ %6, %5 ]
  %11 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %10
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, %8
  %14 = icmp eq i64 %13, %12
  %15 = add i32 %10, 1
  br i1 %14, label %16, label %9

16:                                               ; preds = %9
  switch i64 %12, label %17 [
    i64 0, label %45
    i64 16711680, label %20
    i64 45056, label %20
    i64 255, label %20
  ]

17:                                               ; preds = %16
  %18 = xor i64 %12, -1
  %19 = and i64 %8, %18
  br label %20

20:                                               ; preds = %17, %16, %16, %16
  %21 = phi i64 [ %19, %17 ], [ %8, %16 ], [ %8, %16 ], [ %8, %16 ]
  %22 = add i32 %7, 1
  %23 = icmp ule i32 %22, %3
  %24 = icmp ne i64 %21, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %5, label %26

26:                                               ; preds = %20
  br i1 %23, label %45, label %27

27:                                               ; preds = %26
  %28 = trunc i64 %12 to i32
  %29 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %10, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 1
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3
  %34 = and i32 %28, 63744
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 1001
  %37 = select i1 %35, i32 25, i32 30000
  store i32 %36, ptr %33, align 4
  %38 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3, i32 1
  store i32 %37, ptr %38, align 4
  %39 = and i64 %31, 63744
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, i32 625, i32 525
  %42 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 4
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 2
  %44 = tail call i32 @strscpy(ptr noundef %43, ptr noundef %30, i32 noundef 24) #13
  br label %45

45:                                               ; preds = %27, %26, %16, %2
  %46 = phi i32 [ 0, %27 ], [ -61, %2 ], [ -22, %26 ], [ -22, %16 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l_printk_ioctl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %0) #14
  br label %6

6:                                                ; preds = %4, %2
  %7 = lshr i32 %1, 8
  %8 = and i32 %7, 255
  %9 = trunc i32 %7 to i8
  switch i8 %9, label %17 [
    i8 100, label %18
    i8 86, label %10
  ]

10:                                               ; preds = %6
  %11 = and i32 %1, 255
  %12 = icmp ugt i32 %11, 103
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %11, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %15) #14
  br label %25

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %10, %6
  %19 = phi ptr [ @.str.30, %17 ], [ @.str.27, %6 ], [ @.str.28, %10 ]
  %20 = lshr i32 %1, 30
  %21 = getelementptr inbounds [4 x ptr], ptr @switch.table.v4l_printk_ioctl, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = and i32 %1, 255
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %19, i32 noundef %8, ptr noundef nonnull %22, i32 noundef %23, i32 noundef %1) #14
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @video_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.v4l2_event_time32, align 8
  %6 = alloca %struct.v4l2_buffer_time32, align 4
  %7 = alloca %struct.v4l2_buffer_time32, align 4
  %8 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !10
  %9 = inttoptr i32 %2 to ptr
  switch i32 %1, label %18 [
    i32 -2139072935, label %14
    i32 -1069263351, label %10
    i32 -1069263345, label %11
    i32 -1069263343, label %12
    i32 -1069263267, label %13
  ]

10:                                               ; preds = %4
  br label %14

11:                                               ; preds = %4
  br label %14

12:                                               ; preds = %4
  br label %14

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %4
  %15 = phi i32 [ -2138548647, %4 ], [ -1068476919, %10 ], [ -1068476913, %11 ], [ -1068476911, %12 ], [ -1068476835, %13 ]
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 216
  br label %22

18:                                               ; preds = %4
  %19 = lshr i32 %1, 16
  %20 = and i32 %19, 16383
  %21 = icmp ult i32 %1, 1073741824
  br i1 %21, label %132, label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %20, %18 ]
  %24 = phi i32 [ %15, %14 ], [ %1, %18 ]
  %25 = icmp ult i32 %23, 129
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %354, label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ null, %22 ], [ %27, %26 ]
  %31 = phi ptr [ %8, %22 ], [ %27, %26 ]
  %32 = and i32 %1, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %31, i8 0, i32 %23, i1 false) #13
  br label %132

35:                                               ; preds = %29
  %36 = and i32 %24, 255
  %37 = icmp ugt i32 %36, 103
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %36, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1073676288
  %46 = icmp eq i32 %45, 0
  %47 = lshr exact i32 %45, 16
  %48 = select i1 %46, i32 %23, i32 %47
  %49 = trunc i32 %44 to i8
  %50 = lshr i8 %49, 3
  %51 = and i8 %50, 1
  br label %52

52:                                               ; preds = %42, %38, %35
  %53 = phi i8 [ 0, %35 ], [ %51, %42 ], [ 0, %38 ]
  %54 = phi i32 [ %23, %35 ], [ %48, %42 ], [ %23, %38 ]
  %55 = icmp eq i32 %24, %1
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %54, i32 -1090519040) #16, !srcloc !11
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67, !prof !8

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #13
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #17, !srcloc !12
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %66 = call i32 @arm_copy_from_user(ptr noundef nonnull %31, ptr noundef %9, i32 noundef %54) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %54, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %127, label %70, !prof !8

70:                                               ; preds = %67
  %71 = sub i32 %54, %68
  %72 = getelementptr i8, ptr %31, i32 %71
  call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %68, i1 false) #13
  br label %350

73:                                               ; preds = %52
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %31, i8 0, i32 %54, i1 false) #13
  switch i32 %1, label %127 [
    i32 -1069263351, label %74
    i32 -1069263345, label %74
    i32 -1069263343, label %74
    i32 -1069263267, label %74
  ]

74:                                               ; preds = %73, %73, %73, %73
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false) #13, !annotation !10
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 68, i32 -1090519040) #16, !srcloc !11
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86, !prof !8

78:                                               ; preds = %74
  %79 = tail call ptr @llvm.thread.pointer() #13
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #17, !srcloc !12
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %84 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %9, i32 noundef 68) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86, !prof !8

86:                                               ; preds = %78, %74
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #13
  br label %350

87:                                               ; preds = %78
  %88 = load i32, ptr %7, align 4
  %89 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 5, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 6
  %104 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 9
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 10
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %7, i32 0, i32 12
  %113 = load i32, ptr %112, align 4
  store i32 %88, ptr %31, align 8
  %114 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 %90, ptr %114, align 4
  %115 = getelementptr inbounds i8, ptr %31, i32 8
  store i32 %92, ptr %115, align 8
  %116 = getelementptr inbounds i8, ptr %31, i32 12
  store i32 %94, ptr %116, align 4
  %117 = getelementptr inbounds i8, ptr %31, i32 16
  store i32 %96, ptr %117, align 8
  %118 = getelementptr inbounds i8, ptr %31, i32 24
  store i64 %99, ptr %118, align 8
  %119 = getelementptr inbounds i8, ptr %31, i32 32
  store i64 %102, ptr %119, align 8
  %120 = getelementptr inbounds i8, ptr %31, i32 40
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %120, ptr noundef align 4 dereferenceable(16) %103, i32 16, i1 false) #13
  %121 = getelementptr inbounds i8, ptr %31, i32 56
  store i32 %105, ptr %121, align 8
  %122 = getelementptr inbounds i8, ptr %31, i32 60
  store i32 %107, ptr %122, align 4
  %123 = getelementptr inbounds i8, ptr %31, i32 64
  store i32 %109, ptr %123, align 8
  %124 = getelementptr inbounds i8, ptr %31, i32 68
  store i32 %111, ptr %124, align 4
  %125 = getelementptr inbounds i8, ptr %31, i32 72
  store i32 0, ptr %125, align 8
  %126 = getelementptr inbounds i8, ptr %31, i32 76
  store i32 %113, ptr %126, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #13
  br label %127

127:                                              ; preds = %87, %73, %67
  %128 = icmp ugt i32 %23, %54
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = getelementptr i8, ptr %31, i32 %54
  %131 = sub nsw i32 %23, %54
  call void @llvm.memset.p0.i32(ptr align 1 %130, i8 0, i32 %131, i1 false) #13
  br label %132

132:                                              ; preds = %129, %127, %34, %18
  %133 = phi i32 [ %1, %18 ], [ %24, %34 ], [ %24, %127 ], [ %24, %129 ]
  %134 = phi i8 [ 0, %18 ], [ 0, %34 ], [ %53, %127 ], [ %53, %129 ]
  %135 = phi ptr [ null, %18 ], [ %30, %34 ], [ %30, %127 ], [ %30, %129 ]
  %136 = phi ptr [ %9, %18 ], [ %31, %34 ], [ %31, %127 ], [ %31, %129 ]
  switch i32 %133, label %203 [
    i32 -1068476835, label %137
    i32 -1068476919, label %137
    i32 -1068476913, label %137
    i32 -1068476911, label %137
    i32 -1071360472, label %151
    i32 -1071360471, label %151
    i32 -1072146872, label %160
    i32 -1072146873, label %160
    i32 -1072146871, label %160
    i32 -1060350460, label %169
    i32 -1060350459, label %169
    i32 -1060350400, label %169
  ]

137:                                              ; preds = %132, %132, %132, %132
  %138 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, -9
  %141 = icmp ult i32 %140, 2
  br i1 %141, label %142, label %203

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 10
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %203, label %146

146:                                              ; preds = %142
  %147 = icmp ugt i32 %144, 8
  br i1 %147, label %350, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 9
  %150 = mul nuw nsw i32 %144, 60
  br label %180

151:                                              ; preds = %132, %132
  %152 = getelementptr inbounds %struct.v4l2_edid, ptr %136, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %203, label %155

155:                                              ; preds = %151
  %156 = icmp ugt i32 %153, 256
  br i1 %156, label %350, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.v4l2_edid, ptr %136, i32 0, i32 4
  %159 = shl nuw nsw i32 %153, 7
  br label %180

160:                                              ; preds = %132, %132, %132
  %161 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %136, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %203, label %164

164:                                              ; preds = %160
  %165 = icmp ugt i32 %162, 1024
  br i1 %165, label %350, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %136, i32 0, i32 5
  %168 = mul nuw nsw i32 %162, 20
  br label %180

169:                                              ; preds = %132, %132, %132
  %170 = load i32, ptr %136, align 4
  switch i32 %170, label %203 [
    i32 3, label %171
    i32 8, label %171
  ]

171:                                              ; preds = %169, %169
  %172 = getelementptr inbounds %struct.v4l2_format, ptr %136, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %173, 2048
  br i1 %174, label %350, label %175

175:                                              ; preds = %171
  %176 = icmp eq i32 %173, 0
  br i1 %176, label %203, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.v4l2_format, ptr %136, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %179 = mul nuw nsw i32 %173, 20
  br label %180

180:                                              ; preds = %177, %166, %157, %148
  %181 = phi i32 [ %168, %166 ], [ %159, %157 ], [ %150, %148 ], [ %179, %177 ]
  %182 = phi ptr [ %167, %166 ], [ %158, %157 ], [ %149, %148 ], [ %178, %177 ]
  %183 = load ptr, ptr %182, align 4
  %184 = call noalias ptr @kvmalloc_node(i32 noundef %181, i32 noundef 3264, i32 noundef -1) #15
  %185 = icmp eq ptr %184, null
  br i1 %185, label %239, label %186

186:                                              ; preds = %180
  %187 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %183, i32 %181, i32 -1090519040) #16, !srcloc !11
  %188 = extractvalue { i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %198, !prof !8

190:                                              ; preds = %186
  %191 = tail call ptr @llvm.thread.pointer() #13
  %192 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 3
  %193 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %192) #17, !srcloc !12
  %194 = and i32 %193, -13
  %195 = or i32 %194, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %195) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %196 = call i32 @arm_copy_from_user(ptr noundef nonnull %184, ptr noundef %183, i32 noundef %181) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %193) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198, !prof !8

198:                                              ; preds = %190, %186
  %199 = phi i32 [ %196, %190 ], [ %181, %186 ]
  %200 = sub i32 %181, %199
  %201 = getelementptr i8, ptr %184, i32 %200
  call void @llvm.memset.p0.i32(ptr align 1 %201, i8 0, i32 %199, i1 false) #13
  br label %239

202:                                              ; preds = %190
  store ptr %184, ptr %182, align 4
  br label %203

203:                                              ; preds = %202, %175, %169, %160, %151, %142, %137, %132
  %204 = phi i1 [ false, %202 ], [ true, %169 ], [ true, %175 ], [ true, %160 ], [ true, %151 ], [ true, %137 ], [ true, %142 ], [ true, %132 ]
  %205 = phi ptr [ %182, %202 ], [ null, %169 ], [ null, %175 ], [ null, %160 ], [ null, %151 ], [ null, %137 ], [ null, %142 ], [ null, %132 ]
  %206 = phi ptr [ %183, %202 ], [ null, %169 ], [ null, %175 ], [ null, %160 ], [ null, %151 ], [ null, %137 ], [ null, %142 ], [ null, %132 ]
  %207 = phi i32 [ %181, %202 ], [ 0, %169 ], [ 0, %175 ], [ 0, %160 ], [ 0, %151 ], [ 0, %137 ], [ 0, %142 ], [ 0, %132 ]
  %208 = phi ptr [ %184, %202 ], [ null, %169 ], [ null, %175 ], [ null, %160 ], [ null, %151 ], [ null, %137 ], [ null, %142 ], [ null, %132 ]
  %209 = call i32 %3(ptr noundef %0, i32 noundef %133, ptr noundef %136) #13
  switch i32 %209, label %219 [
    i32 -25, label %350
    i32 -515, label %350
    i32 0, label %210
  ]

210:                                              ; preds = %203
  switch i32 %133, label %219 [
    i32 -1068476911, label %211
    i32 -1068476913, label %215
  ]

211:                                              ; preds = %210
  %212 = call ptr @video_devdata(ptr noundef %0) #13
  %213 = getelementptr inbounds %struct.video_device, ptr %212, i32 0, i32 15
  %214 = load i32, ptr %213, align 8
  call fastcc void @trace_v4l2_dqbuf(i32 noundef %214, ptr noundef %136)
  br label %219

215:                                              ; preds = %210
  %216 = call ptr @video_devdata(ptr noundef %0) #13
  %217 = getelementptr inbounds %struct.video_device, ptr %216, i32 0, i32 15
  %218 = load i32, ptr %217, align 8
  call fastcc void @trace_v4l2_qbuf(i32 noundef %218, ptr noundef %136)
  br label %219

219:                                              ; preds = %215, %211, %210, %203
  br i1 %204, label %235, label %220

220:                                              ; preds = %219
  store ptr %206, ptr %205, align 4
  %221 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %206, i32 %207, i32 -1090519040) #16, !srcloc !15
  %222 = extractvalue { i32, i32 } %221, 0
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = tail call ptr @llvm.thread.pointer() #13
  %226 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 3
  %227 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %226) #17, !srcloc !12
  %228 = and i32 %227, -13
  %229 = or i32 %228, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %229) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %230 = call i32 @arm_copy_to_user(ptr noundef %206, ptr noundef %208, i32 noundef %207) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %227) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %231

231:                                              ; preds = %224, %220
  %232 = phi i32 [ %230, %224 ], [ %207, %220 ]
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, i32 %209, i32 -14
  br label %239

235:                                              ; preds = %219
  %236 = icmp slt i32 %209, 0
  %237 = icmp eq i8 %134, 0
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %350, label %239

239:                                              ; preds = %235, %231, %198, %180
  %240 = phi ptr [ null, %180 ], [ %208, %235 ], [ %184, %198 ], [ %208, %231 ]
  %241 = phi i32 [ -12, %180 ], [ %209, %235 ], [ -14, %198 ], [ %234, %231 ]
  %242 = icmp sgt i32 %1, -1
  br i1 %242, label %350, label %243

243:                                              ; preds = %239
  %244 = icmp eq i32 %133, %1
  br i1 %244, label %245, label %261

245:                                              ; preds = %243
  %246 = lshr i32 %1, 16
  %247 = and i32 %246, 16383
  %248 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %247, i32 -1090519040) #16, !srcloc !15
  %249 = extractvalue { i32, i32 } %248, 0
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = tail call ptr @llvm.thread.pointer() #13
  %253 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 3
  %254 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %253) #17, !srcloc !12
  %255 = and i32 %254, -13
  %256 = or i32 %255, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %256) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %257 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef %136, i32 noundef %247) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %254) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  br label %258

258:                                              ; preds = %251, %245
  %259 = phi i32 [ %257, %251 ], [ %247, %245 ]
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %350, label %349

261:                                              ; preds = %243
  switch i32 %1, label %350 [
    i32 -2139072935, label %262
    i32 -1069263351, label %297
    i32 -1069263345, label %297
    i32 -1069263343, label %297
    i32 -1069263267, label %297
  ]

262:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false) #13
  %263 = load i32, ptr %136, align 8
  store i32 %263, ptr %5, align 8
  %264 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 2
  %265 = load i32, ptr %264, align 8
  %266 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 2
  store i32 %265, ptr %266, align 8
  %267 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 3
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 3
  store i32 %268, ptr %269, align 4
  %270 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 4
  %271 = load i64, ptr %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 4
  store i32 %272, ptr %273, align 8
  %274 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 4, i32 1
  %275 = load i64, ptr %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 4, i32 1
  store i32 %276, ptr %277, align 4
  %278 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 5
  %279 = load i32, ptr %278, align 8
  %280 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 5
  store i32 %279, ptr %280, align 8
  %281 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 1
  %282 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %281, ptr noundef align 8 dereferenceable(64) %282, i32 64, i1 false) #13
  %283 = getelementptr inbounds %struct.v4l2_event_time32, ptr %5, i32 0, i32 6
  %284 = getelementptr inbounds %struct.v4l2_event, ptr %136, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %283, ptr noundef align 4 dereferenceable(32) %284, i32 32, i1 false) #13
  %285 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 128, i32 -1090519040) #16, !srcloc !15
  %286 = extractvalue { i32, i32 } %285, 0
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %262
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  br label %349

289:                                              ; preds = %262
  %290 = tail call ptr @llvm.thread.pointer() #13
  %291 = getelementptr inbounds %struct.thread_info, ptr %290, i32 0, i32 3
  %292 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %291) #17, !srcloc !12
  %293 = and i32 %292, -13
  %294 = or i32 %293, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %294) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %295 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 128) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %292) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %296 = icmp eq i32 %295, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  br i1 %296, label %350, label %349

297:                                              ; preds = %261, %261, %261, %261
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #13
  %298 = getelementptr inbounds i8, ptr %6, i32 60
  store i32 0, ptr %298, align 4
  %299 = load i32, ptr %136, align 8
  store i32 %299, ptr %6, align 4
  %300 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 1
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 1
  store i32 %301, ptr %302, align 4
  %303 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 2
  %304 = load i32, ptr %303, align 8
  %305 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 2
  store i32 %304, ptr %305, align 4
  %306 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 3
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 3
  store i32 %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 4
  %310 = load i32, ptr %309, align 8
  %311 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 4
  store i32 %310, ptr %311, align 4
  %312 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 5
  %313 = load i64, ptr %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 5
  store i32 %314, ptr %315, align 4
  %316 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 5, i32 1
  %317 = load i64, ptr %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 5, i32 1
  store i32 %318, ptr %319, align 4
  %320 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 6
  %321 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %320, ptr noundef align 8 dereferenceable(16) %321, i32 16, i1 false) #13
  %322 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 7
  %323 = load i32, ptr %322, align 8
  %324 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 7
  store i32 %323, ptr %324, align 4
  %325 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 8
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 8
  store i32 %326, ptr %327, align 4
  %328 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 9
  %329 = load i32, ptr %328, align 8
  %330 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 9
  store i32 %329, ptr %330, align 4
  %331 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 10
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 10
  store i32 %332, ptr %333, align 4
  %334 = getelementptr inbounds %struct.v4l2_buffer, ptr %136, i32 0, i32 12
  %335 = load i32, ptr %334, align 4
  %336 = getelementptr inbounds %struct.v4l2_buffer_time32, ptr %6, i32 0, i32 12
  store i32 %335, ptr %336, align 4
  %337 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 68, i32 -1090519040) #16, !srcloc !15
  %338 = extractvalue { i32, i32 } %337, 0
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %297
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #13
  br label %349

341:                                              ; preds = %297
  %342 = tail call ptr @llvm.thread.pointer() #13
  %343 = getelementptr inbounds %struct.thread_info, ptr %342, i32 0, i32 3
  %344 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %343) #17, !srcloc !12
  %345 = and i32 %344, -13
  %346 = or i32 %345, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %346) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %347 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 68) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %344) #13, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %348 = icmp eq i32 %347, 0
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #13
  br i1 %348, label %350, label %349

349:                                              ; preds = %341, %340, %289, %288, %258
  br label %350

350:                                              ; preds = %349, %341, %289, %261, %258, %239, %235, %203, %203, %171, %164, %155, %146, %86, %70
  %351 = phi ptr [ %135, %203 ], [ %135, %203 ], [ %135, %235 ], [ %135, %146 ], [ %135, %155 ], [ %135, %164 ], [ %135, %171 ], [ %135, %239 ], [ %135, %349 ], [ %30, %86 ], [ %30, %70 ], [ %135, %341 ], [ %135, %289 ], [ %135, %261 ], [ %135, %258 ]
  %352 = phi ptr [ %208, %203 ], [ %208, %203 ], [ %208, %235 ], [ null, %146 ], [ null, %155 ], [ null, %164 ], [ null, %171 ], [ %240, %239 ], [ %240, %349 ], [ null, %86 ], [ null, %70 ], [ %240, %341 ], [ %240, %289 ], [ %240, %261 ], [ %240, %258 ]
  %353 = phi i32 [ -25, %203 ], [ -25, %203 ], [ %209, %235 ], [ -22, %146 ], [ -22, %155 ], [ -22, %164 ], [ -22, %171 ], [ %241, %239 ], [ -14, %349 ], [ -14, %86 ], [ -14, %70 ], [ %241, %341 ], [ %241, %289 ], [ %241, %261 ], [ %241, %258 ]
  call void @kvfree(ptr noundef %352) #13
  call void @kfree(ptr noundef %351) #13
  br label %354

354:                                              ; preds = %350, %26
  %355 = phi i32 [ %353, %350 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #13
  ret i32 %355
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_v4l2_dqbuf(i32 noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v4l2_dqbuf, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %17 = tail call i32 @__traceiter_v4l2_dqbuf(ptr noundef null, i32 noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_v4l2_qbuf(i32 noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_v4l2_qbuf, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %17 = tail call i32 @__traceiter_v4l2_qbuf(ptr noundef null, i32 noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @video_ioctl2(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @video_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__video_do_ioctl)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__video_do_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.v4l2_ioctl_info, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.459, ptr noundef %21) #14
  br label %206

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr null, ptr %9
  %29 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_device, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.media_device, ptr %32, i32 0, i32 21
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.media_device_ops, ptr %36, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ne ptr %40, null
  %42 = and i32 %1, -2
  %43 = icmp eq i32 %42, 1074026002
  %44 = and i1 %43, %41
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.media_device, ptr %32, i32 0, i32 22
  %47 = tail call i32 @mutex_lock_interruptible(ptr noundef %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %206

49:                                               ; preds = %45, %38, %34, %23
  %50 = phi ptr [ %46, %45 ], [ null, %38 ], [ null, %34 ], [ null, %23 ]
  %51 = and i32 %1, 255
  %52 = icmp ugt i32 %51, 103
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = icmp eq ptr %28, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.v4l2_fh, ptr %28, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %57, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64, %59, %55, %53
  %68 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 10
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.vb2_queue, ptr %69, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %71, %67, %49
  %81 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 26
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80, %75, %64
  %85 = phi ptr [ %82, %80 ], [ %73, %75 ], [ %65, %64 ]
  %86 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull %85) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = icmp eq ptr %50, null
  br i1 %89, label %206, label %90

90:                                               ; preds = %88
  tail call void @mutex_unlock(ptr noundef nonnull %50) #13
  br label %206

91:                                               ; preds = %84, %80
  %92 = phi i1 [ false, %84 ], [ true, %80 ]
  %93 = phi ptr [ %85, %84 ], [ null, %80 ]
  %94 = load volatile i32, ptr %24, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %200, label %97

97:                                               ; preds = %91
  br i1 %52, label %138, label %98

98:                                               ; preds = %97
  %99 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %1
  br i1 %101, label %102, label %138

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 25
  %104 = lshr i32 %51, 5
  %105 = getelementptr i32, ptr %103, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %1, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 2
  %115 = icmp ne i32 %114, 0
  %116 = icmp ne ptr %28, null
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %164

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.v4l2_fh, ptr %28, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %164, label %127

122:                                              ; preds = %102
  %123 = icmp eq ptr %28, null
  br i1 %123, label %146, label %124

124:                                              ; preds = %122
  %125 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51, i32 1
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi i32 [ %126, %124 ], [ %113, %118 ]
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 11
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.v4l2_fh, ptr %28, i32 0, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = tail call i32 @v4l2_prio_check(ptr noundef %133, i32 noundef %135) #13
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %164

138:                                              ; preds = %98, %97
  store i32 %1, ptr %4, align 4
  %139 = getelementptr inbounds %struct.v4l2_ioctl_info, ptr %4, i32 0, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.v4l2_ioctl_info, ptr %4, i32 0, i32 4
  store ptr @v4l_print_default, ptr %140, align 4
  %141 = and i32 %1, -1073741824
  %142 = icmp eq i32 %141, 1073741824
  %143 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %7, i32 0, i32 118
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %164, label %152

146:                                              ; preds = %131, %127, %122
  %147 = and i32 %1, -1073741824
  %148 = icmp eq i32 %147, 1073741824
  %149 = getelementptr [104 x %struct.v4l2_ioctl_info], ptr @v4l2_ioctls, i32 0, i32 %51, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = tail call i32 %150(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %9, ptr noundef %2) #13
  br label %164

152:                                              ; preds = %138
  %153 = icmp eq ptr %28, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 11
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.v4l2_fh, ptr %28, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = tail call i32 @v4l2_prio_check(ptr noundef %156, i32 noundef %158) #13
  %160 = icmp sgt i32 %159, -1
  br label %161

161:                                              ; preds = %154, %152
  %162 = phi i1 [ %160, %154 ], [ false, %152 ]
  %163 = tail call i32 %144(ptr noundef %0, ptr noundef %9, i1 noundef zeroext %162, i32 noundef %1, ptr noundef %2) #13
  br label %164

164:                                              ; preds = %161, %146, %138, %131, %118, %111
  %165 = phi i1 [ false, %131 ], [ %148, %146 ], [ %142, %161 ], [ false, %118 ], [ false, %111 ], [ %142, %138 ]
  %166 = phi ptr [ %99, %131 ], [ %99, %146 ], [ %4, %161 ], [ %99, %118 ], [ %99, %111 ], [ %4, %138 ]
  %167 = phi i32 [ %136, %131 ], [ %151, %146 ], [ %163, %161 ], [ -25, %118 ], [ -25, %111 ], [ -25, %138 ]
  %168 = and i32 %11, 3
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %200, label %170

170:                                              ; preds = %164
  %171 = and i32 %11, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  switch i32 %1, label %174 [
    i32 -1068476911, label %200
    i32 -1068476913, label %200
  ]

174:                                              ; preds = %173, %170
  %175 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  br label %181

181:                                              ; preds = %178, %174
  %182 = phi ptr [ %180, %178 ], [ %176, %174 ]
  tail call void @v4l_printk_ioctl(ptr noundef %182, i32 noundef %1)
  %183 = icmp slt i32 %167, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.460, i32 noundef %167) #14
  br label %186

186:                                              ; preds = %184, %181
  %187 = and i32 %11, 2
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  br label %200

191:                                              ; preds = %186
  %192 = icmp ult i32 %1, 1073741824
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.v4l2_ioctl_info, ptr %166, i32 0, i32 4
  %195 = load ptr, ptr %194, align 4
  tail call void %195(ptr noundef %2, i1 noundef zeroext %165) #13
  br label %200

196:                                              ; preds = %191
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.461) #14
  %198 = getelementptr inbounds %struct.v4l2_ioctl_info, ptr %166, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  tail call void %199(ptr noundef %2, i1 noundef zeroext %165) #13
  br label %200

200:                                              ; preds = %196, %193, %189, %173, %173, %164, %91
  %201 = phi i32 [ %167, %193 ], [ %167, %196 ], [ %167, %189 ], [ %167, %173 ], [ %167, %164 ], [ -19, %91 ], [ %167, %173 ]
  br i1 %92, label %203, label %202

202:                                              ; preds = %200
  tail call void @mutex_unlock(ptr noundef nonnull %93) #13
  br label %203

203:                                              ; preds = %202, %200
  %204 = icmp eq ptr %50, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %203
  tail call void @mutex_unlock(ptr noundef nonnull %50) #13
  br label %206

206:                                              ; preds = %205, %203, %90, %88, %45, %20
  %207 = phi i32 [ -25, %20 ], [ -512, %45 ], [ -512, %90 ], [ -512, %88 ], [ %201, %205 ], [ %201, %203 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_querycap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.v4l2_capability, ptr %3, i32 0, i32 3
  store i32 332032, ptr %6, align 4
  %7 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %3, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %7, align 8
  %11 = or i32 %10, -2147483648
  %12 = getelementptr inbounds %struct.v4l2_capability, ptr %3, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = tail call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %7, align 8
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.150, i32 noundef 1059, i32 noundef 9, ptr noundef null) #13
  %19 = load i32, ptr %7, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ %19, %18 ], [ %15, %4 ]
  %22 = load i32, ptr %12, align 4
  %23 = or i32 %21, -2147483648
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, %23
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.150, i32 noundef 1066, i32 noundef 9, ptr noundef null) #13
  %27 = load i32, ptr %12, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %27, %26 ], [ %22, %20 ]
  %30 = or i32 %29, 2097152
  store i32 %30, ptr %12, align 4
  %31 = load i32, ptr %9, align 4
  %32 = or i32 %31, 2097152
  store i32 %32, ptr %9, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_querycap(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_capability, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.v4l2_capability, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.v4l2_capability, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef 16, ptr noundef %0, i32 noundef 32, ptr noundef %3, i32 noundef 32, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_enum_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %301

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 536870912
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %17, %15 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 5
  %21 = getelementptr i8, ptr %3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(56) %21, i8 0, i32 56, i1 false)
  store i32 %19, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  switch i32 %22, label %301 [
    i32 1, label %23
    i32 9, label %23
    i32 3, label %33
    i32 2, label %37
    i32 10, label %37
    i32 11, label %47
    i32 12, label %51
    i32 13, label %55
    i32 14, label %59
  ]

23:                                               ; preds = %18, %18
  %24 = load i32, ptr %11, align 8
  %25 = and i32 %24, 20480
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %22, 9
  %28 = xor i1 %27, %26
  br i1 %28, label %29, label %301

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %301, label %63, !prof !20

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %301, label %63, !prof !20

37:                                               ; preds = %18, %18
  %38 = load i32, ptr %11, align 8
  %39 = and i32 %38, 24576
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq i32 %22, 10
  %42 = xor i1 %41, %40
  br i1 %42, label %43, label %301

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %301, label %63, !prof !20

47:                                               ; preds = %18
  %48 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %301, label %63, !prof !20

51:                                               ; preds = %18
  %52 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %301, label %63, !prof !20

55:                                               ; preds = %18
  %56 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %301, label %63, !prof !20

59:                                               ; preds = %18
  %60 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %301, label %63, !prof !20

63:                                               ; preds = %59, %55, %51, %47, %43, %33, %29
  %64 = phi ptr [ %31, %29 ], [ %35, %33 ], [ %45, %43 ], [ %49, %47 ], [ %53, %51 ], [ %57, %55 ], [ %61, %59 ]
  %65 = tail call i32 %64(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %301

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  switch i32 %69, label %241 [
    i32 826427218, label %290
    i32 875836498, label %70
    i32 842093121, label %71
    i32 842093144, label %72
    i32 842088786, label %73
    i32 842094674, label %74
    i32 842089025, label %75
    i32 842089048, label %76
    i32 842088775, label %77
    i32 842094658, label %78
    i32 1329743698, label %79
    i32 892424769, label %80
    i32 892424792, label %81
    i32 892420673, label %82
    i32 892420696, label %83
    i32 892420434, label %84
    i32 892426322, label %85
    i32 892420418, label %86
    i32 892426306, label %87
    i32 1346520914, label %88
    i32 1363298130, label %89
    i32 -1255058879, label %90
    i32 -1255058856, label %91
    i32 1380075346, label %92
    i32 1213351746, label %93
    i32 861030210, label %94
    i32 859981650, label %95
    i32 877807426, label %96
    i32 875713089, label %97
    i32 875713112, label %98
    i32 876758866, label %99
    i32 875708738, label %100
    i32 875714626, label %101
    i32 875708754, label %102
    i32 875714642, label %103
    i32 875708993, label %104
    i32 875709016, label %105
    i32 1497715271, label %106
    i32 540291161, label %107
    i32 540422233, label %108
    i32 540029273, label %109
    i32 540160345, label %110
    i32 540291417, label %111
    i32 540422489, label %112
    i32 -1607061159, label %113
    i32 1110454617, label %114
    i32 1345335641, label %115
    i32 541669465, label %116
    i32 1228026201, label %117
    i32 540422490, label %118
    i32 1230655049, label %119
    i32 877022787, label %120
    i32 944521552, label %121
    i32 540563029, label %122
    i32 961893977, label %123
    i32 842094169, label %124
    i32 1448695129, label %125
    i32 1448434009, label %126
    i32 1431918169, label %127
    i32 1498831189, label %128
    i32 1498765654, label %129
    i32 1345466932, label %130
    i32 1345401140, label %131
    i32 1345401945, label %132
    i32 875836505, label %133
    i32 1331058009, label %134
    i32 1347835225, label %135
    i32 861295961, label %136
    i32 878073177, label %137
    i32 1448433985, label %138
    i32 1448434008, label %139
    i32 1096373590, label %140
    i32 1482249558, label %141
    i32 961959257, label %142
    i32 842093913, label %143
    i32 875710792, label %144
    i32 808596557, label %145
    i32 842094158, label %146
    i32 825382478, label %147
    i32 909203022, label %148
    i32 825644622, label %149
    i32 875714126, label %150
    i32 842290766, label %151
    i32 842093654, label %152
    i32 842091848, label %153
    i32 842093651, label %154
    i32 842091854, label %155
    i32 825380174, label %156
    i32 909200718, label %157
    i32 825642318, label %158
    i32 842091860, label %159
    i32 842091862, label %160
    i32 842091865, label %161
    i32 825380185, label %162
    i32 909200729, label %163
    i32 825642329, label %164
    i32 875711833, label %165
    i32 842288473, label %166
    i32 825770306, label %167
    i32 1196573255, label %168
    i32 1195528775, label %169
    i32 1111967570, label %170
    i32 808535874, label %171
    i32 808534599, label %172
    i32 808534338, label %173
    i32 808535890, label %174
    i32 1094795888, label %175
    i32 1094797168, label %176
    i32 1094805360, label %177
    i32 1094799984, label %178
    i32 1647538281, label %179
    i32 1731424361, label %180
    i32 1194553449, label %181
    i32 1915973737, label %182
    i32 943800929, label %183
    i32 943802209, label %184
    i32 943810401, label %185
    i32 943805025, label %186
    i32 943800930, label %187
    i32 943802210, label %188
    i32 808535106, label %189
    i32 943805026, label %190
    i32 842090306, label %191
    i32 842089031, label %192
    i32 842088770, label %193
    i32 842090322, label %194
    i32 1128481392, label %195
    i32 1128482672, label %196
    i32 1128490864, label %197
    i32 1128485488, label %198
    i32 875644738, label %199
    i32 875643463, label %200
    i32 875647559, label %201
    i32 875644754, label %202
    i32 1162166896, label %203
    i32 1162168176, label %204
    i32 1162176368, label %205
    i32 1162170992, label %206
    i32 844257602, label %207
    i32 909197895, label %208
    i32 909201991, label %209
    i32 909199186, label %210
    i32 808597843, label %211
    i32 825242963, label %212
    i32 892351827, label %213
    i32 942683475, label %214
    i32 808990291, label %215
    i32 808865108, label %216
    i32 1448364355, label %217
    i32 1229868875, label %218
    i32 825380173, label %219
    i32 861295432, label %220
    i32 878072648, label %221
    i32 942691651, label %222
    i32 909202755, label %223
    i32 942691139, label %224
    i32 875647811, label %225
    i32 842093906, label %226
    i32 909198160, label %227
    i32 942752592, label %228
    i32 808600400, label %229
    i32 909198420, label %230
    i32 942687316, label %231
    i32 909202772, label %232
    i32 942691668, label %233
    i32 1213223766, label %234
    i32 1414550358, label %235
    i32 1212372565, label %236
    i32 1482175556, label %237
    i32 1146505558, label %238
    i32 1345407826, label %239
    i32 1395739474, label %240
  ]

70:                                               ; preds = %67
  br label %290

71:                                               ; preds = %67
  br label %290

72:                                               ; preds = %67
  br label %290

73:                                               ; preds = %67
  br label %290

74:                                               ; preds = %67
  br label %290

75:                                               ; preds = %67
  br label %290

76:                                               ; preds = %67
  br label %290

77:                                               ; preds = %67
  br label %290

78:                                               ; preds = %67
  br label %290

79:                                               ; preds = %67
  br label %290

80:                                               ; preds = %67
  br label %290

81:                                               ; preds = %67
  br label %290

82:                                               ; preds = %67
  br label %290

83:                                               ; preds = %67
  br label %290

84:                                               ; preds = %67
  br label %290

85:                                               ; preds = %67
  br label %290

86:                                               ; preds = %67
  br label %290

87:                                               ; preds = %67
  br label %290

88:                                               ; preds = %67
  br label %290

89:                                               ; preds = %67
  br label %290

90:                                               ; preds = %67
  br label %290

91:                                               ; preds = %67
  br label %290

92:                                               ; preds = %67
  br label %290

93:                                               ; preds = %67
  br label %290

94:                                               ; preds = %67
  br label %290

95:                                               ; preds = %67
  br label %290

96:                                               ; preds = %67
  br label %290

97:                                               ; preds = %67
  br label %290

98:                                               ; preds = %67
  br label %290

99:                                               ; preds = %67
  br label %290

100:                                              ; preds = %67
  br label %290

101:                                              ; preds = %67
  br label %290

102:                                              ; preds = %67
  br label %290

103:                                              ; preds = %67
  br label %290

104:                                              ; preds = %67
  br label %290

105:                                              ; preds = %67
  br label %290

106:                                              ; preds = %67
  br label %290

107:                                              ; preds = %67
  br label %290

108:                                              ; preds = %67
  br label %290

109:                                              ; preds = %67
  br label %290

110:                                              ; preds = %67
  br label %290

111:                                              ; preds = %67
  br label %290

112:                                              ; preds = %67
  br label %290

113:                                              ; preds = %67
  br label %290

114:                                              ; preds = %67
  br label %290

115:                                              ; preds = %67
  br label %290

116:                                              ; preds = %67
  br label %290

117:                                              ; preds = %67
  br label %290

118:                                              ; preds = %67
  br label %290

119:                                              ; preds = %67
  br label %290

120:                                              ; preds = %67
  br label %290

121:                                              ; preds = %67
  br label %290

122:                                              ; preds = %67
  br label %290

123:                                              ; preds = %67
  br label %290

124:                                              ; preds = %67
  br label %290

125:                                              ; preds = %67
  br label %290

126:                                              ; preds = %67
  br label %290

127:                                              ; preds = %67
  br label %290

128:                                              ; preds = %67
  br label %290

129:                                              ; preds = %67
  br label %290

130:                                              ; preds = %67
  br label %290

131:                                              ; preds = %67
  br label %290

132:                                              ; preds = %67
  br label %290

133:                                              ; preds = %67
  br label %290

134:                                              ; preds = %67
  br label %290

135:                                              ; preds = %67
  br label %290

136:                                              ; preds = %67
  br label %290

137:                                              ; preds = %67
  br label %290

138:                                              ; preds = %67
  br label %290

139:                                              ; preds = %67
  br label %290

140:                                              ; preds = %67
  br label %290

141:                                              ; preds = %67
  br label %290

142:                                              ; preds = %67
  br label %290

143:                                              ; preds = %67
  br label %290

144:                                              ; preds = %67
  br label %290

145:                                              ; preds = %67
  br label %290

146:                                              ; preds = %67
  br label %290

147:                                              ; preds = %67
  br label %290

148:                                              ; preds = %67
  br label %290

149:                                              ; preds = %67
  br label %290

150:                                              ; preds = %67
  br label %290

151:                                              ; preds = %67
  br label %290

152:                                              ; preds = %67
  br label %290

153:                                              ; preds = %67
  br label %290

154:                                              ; preds = %67
  br label %290

155:                                              ; preds = %67
  br label %290

156:                                              ; preds = %67
  br label %290

157:                                              ; preds = %67
  br label %290

158:                                              ; preds = %67
  br label %290

159:                                              ; preds = %67
  br label %290

160:                                              ; preds = %67
  br label %290

161:                                              ; preds = %67
  br label %290

162:                                              ; preds = %67
  br label %290

163:                                              ; preds = %67
  br label %290

164:                                              ; preds = %67
  br label %290

165:                                              ; preds = %67
  br label %290

166:                                              ; preds = %67
  br label %290

167:                                              ; preds = %67
  br label %290

168:                                              ; preds = %67
  br label %290

169:                                              ; preds = %67
  br label %290

170:                                              ; preds = %67
  br label %290

171:                                              ; preds = %67
  br label %290

172:                                              ; preds = %67
  br label %290

173:                                              ; preds = %67
  br label %290

174:                                              ; preds = %67
  br label %290

175:                                              ; preds = %67
  br label %290

176:                                              ; preds = %67
  br label %290

177:                                              ; preds = %67
  br label %290

178:                                              ; preds = %67
  br label %290

179:                                              ; preds = %67
  br label %290

180:                                              ; preds = %67
  br label %290

181:                                              ; preds = %67
  br label %290

182:                                              ; preds = %67
  br label %290

183:                                              ; preds = %67
  br label %290

184:                                              ; preds = %67
  br label %290

185:                                              ; preds = %67
  br label %290

186:                                              ; preds = %67
  br label %290

187:                                              ; preds = %67
  br label %290

188:                                              ; preds = %67
  br label %290

189:                                              ; preds = %67
  br label %290

190:                                              ; preds = %67
  br label %290

191:                                              ; preds = %67
  br label %290

192:                                              ; preds = %67
  br label %290

193:                                              ; preds = %67
  br label %290

194:                                              ; preds = %67
  br label %290

195:                                              ; preds = %67
  br label %290

196:                                              ; preds = %67
  br label %290

197:                                              ; preds = %67
  br label %290

198:                                              ; preds = %67
  br label %290

199:                                              ; preds = %67
  br label %290

200:                                              ; preds = %67
  br label %290

201:                                              ; preds = %67
  br label %290

202:                                              ; preds = %67
  br label %290

203:                                              ; preds = %67
  br label %290

204:                                              ; preds = %67
  br label %290

205:                                              ; preds = %67
  br label %290

206:                                              ; preds = %67
  br label %290

207:                                              ; preds = %67
  br label %290

208:                                              ; preds = %67
  br label %290

209:                                              ; preds = %67
  br label %290

210:                                              ; preds = %67
  br label %290

211:                                              ; preds = %67
  br label %290

212:                                              ; preds = %67
  br label %290

213:                                              ; preds = %67
  br label %290

214:                                              ; preds = %67
  br label %290

215:                                              ; preds = %67
  br label %290

216:                                              ; preds = %67
  br label %290

217:                                              ; preds = %67
  br label %290

218:                                              ; preds = %67
  br label %290

219:                                              ; preds = %67
  br label %290

220:                                              ; preds = %67
  br label %290

221:                                              ; preds = %67
  br label %290

222:                                              ; preds = %67
  br label %290

223:                                              ; preds = %67
  br label %290

224:                                              ; preds = %67
  br label %290

225:                                              ; preds = %67
  br label %290

226:                                              ; preds = %67
  br label %290

227:                                              ; preds = %67
  br label %290

228:                                              ; preds = %67
  br label %290

229:                                              ; preds = %67
  br label %290

230:                                              ; preds = %67
  br label %290

231:                                              ; preds = %67
  br label %290

232:                                              ; preds = %67
  br label %290

233:                                              ; preds = %67
  br label %290

234:                                              ; preds = %67
  br label %290

235:                                              ; preds = %67
  br label %290

236:                                              ; preds = %67
  br label %290

237:                                              ; preds = %67
  br label %290

238:                                              ; preds = %67
  br label %290

239:                                              ; preds = %67
  br label %290

240:                                              ; preds = %67
  br label %290

241:                                              ; preds = %67
  switch i32 %69, label %284 [
    i32 1196444237, label %290
    i32 1195724874, label %242
    i32 1685288548, label %243
    i32 1195724877, label %244
    i32 875967048, label %245
    i32 826496577, label %246
    i32 875967053, label %247
    i32 875967059, label %248
    i32 859189832, label %249
    i32 826757197, label %250
    i32 843534413, label %251
    i32 1395803981, label %252
    i32 877088845, label %253
    i32 1145656920, label %254
    i32 1194410838, label %255
    i32 1278296918, label %256
    i32 808996950, label %257
    i32 1178095702, label %258
    i32 809062486, label %259
    i32 1178161238, label %260
    i32 1129727304, label %261
    i32 892744275, label %262
    i32 1414027078, label %263
    i32 1213679187, label %264
    i32 1095323715, label %265
    i32 1096175191, label %266
    i32 808532307, label %267
    i32 826496848, label %268
    i32 843274064, label %269
    i32 892483141, label %270
    i32 825636179, label %271
    i32 925905488, label %272
    i32 808530765, label %273
    i32 808602698, label %274
    i32 1481527123, label %275
    i32 1127559225, label %276
    i32 1196444240, label %277
    i32 825308495, label %278
    i32 942749007, label %279
    i32 1279742026, label %280
    i32 825242707, label %281
    i32 1229141331, label %282
    i32 825381965, label %283
  ]

242:                                              ; preds = %241
  br label %290

243:                                              ; preds = %241
  br label %290

244:                                              ; preds = %241
  br label %290

245:                                              ; preds = %241
  br label %290

246:                                              ; preds = %241
  br label %290

247:                                              ; preds = %241
  br label %290

248:                                              ; preds = %241
  br label %290

249:                                              ; preds = %241
  br label %290

250:                                              ; preds = %241
  br label %290

251:                                              ; preds = %241
  br label %290

252:                                              ; preds = %241
  br label %290

253:                                              ; preds = %241
  br label %290

254:                                              ; preds = %241
  br label %290

255:                                              ; preds = %241
  br label %290

256:                                              ; preds = %241
  br label %290

257:                                              ; preds = %241
  br label %290

258:                                              ; preds = %241
  br label %290

259:                                              ; preds = %241
  br label %290

260:                                              ; preds = %241
  br label %290

261:                                              ; preds = %241
  br label %290

262:                                              ; preds = %241
  br label %290

263:                                              ; preds = %241
  br label %290

264:                                              ; preds = %241
  br label %290

265:                                              ; preds = %241
  br label %290

266:                                              ; preds = %241
  br label %290

267:                                              ; preds = %241
  br label %290

268:                                              ; preds = %241
  br label %290

269:                                              ; preds = %241
  br label %290

270:                                              ; preds = %241
  br label %290

271:                                              ; preds = %241
  br label %290

272:                                              ; preds = %241
  br label %290

273:                                              ; preds = %241
  br label %290

274:                                              ; preds = %241
  br label %290

275:                                              ; preds = %241
  br label %290

276:                                              ; preds = %241
  br label %290

277:                                              ; preds = %241
  br label %290

278:                                              ; preds = %241
  br label %290

279:                                              ; preds = %241
  br label %290

280:                                              ; preds = %241
  br label %290

281:                                              ; preds = %241
  br label %290

282:                                              ; preds = %241
  br label %290

283:                                              ; preds = %241
  br label %290

284:                                              ; preds = %241
  %285 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 3
  %286 = load i8, ptr %285, align 4
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %284
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.150, i32 noundef 1443, i32 noundef 9, ptr noundef nonnull @.str.367, i32 noundef %69) #13
  %289 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %285, i32 noundef 32, ptr noundef nonnull @.str.368, ptr noundef %68) #13
  br label %297

290:                                              ; preds = %283, %282, %281, %280, %279, %278, %277, %276, %275, %274, %273, %272, %271, %270, %269, %268, %267, %266, %265, %264, %263, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %67
  %291 = phi i32 [ 1, %241 ], [ 0, %67 ], [ 0, %70 ], [ 0, %71 ], [ 0, %72 ], [ 0, %73 ], [ 0, %74 ], [ 0, %75 ], [ 0, %76 ], [ 0, %77 ], [ 0, %78 ], [ 0, %79 ], [ 0, %80 ], [ 0, %81 ], [ 0, %82 ], [ 0, %83 ], [ 0, %84 ], [ 0, %85 ], [ 0, %86 ], [ 0, %87 ], [ 0, %88 ], [ 0, %89 ], [ 0, %90 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], [ 0, %94 ], [ 0, %95 ], [ 0, %96 ], [ 0, %97 ], [ 0, %98 ], [ 0, %99 ], [ 0, %100 ], [ 0, %101 ], [ 0, %102 ], [ 0, %103 ], [ 0, %104 ], [ 0, %105 ], [ 0, %106 ], [ 0, %107 ], [ 0, %108 ], [ 0, %109 ], [ 0, %110 ], [ 0, %111 ], [ 0, %112 ], [ 0, %113 ], [ 0, %114 ], [ 0, %115 ], [ 0, %116 ], [ 0, %117 ], [ 0, %118 ], [ 0, %119 ], [ 0, %120 ], [ 0, %121 ], [ 0, %122 ], [ 0, %123 ], [ 0, %124 ], [ 0, %125 ], [ 0, %126 ], [ 0, %127 ], [ 0, %128 ], [ 0, %129 ], [ 0, %130 ], [ 0, %131 ], [ 0, %132 ], [ 0, %133 ], [ 0, %134 ], [ 0, %135 ], [ 0, %136 ], [ 0, %137 ], [ 0, %138 ], [ 0, %139 ], [ 0, %140 ], [ 0, %141 ], [ 0, %142 ], [ 0, %143 ], [ 0, %144 ], [ 0, %145 ], [ 0, %146 ], [ 0, %147 ], [ 0, %148 ], [ 0, %149 ], [ 0, %150 ], [ 0, %151 ], [ 0, %152 ], [ 0, %153 ], [ 0, %154 ], [ 0, %155 ], [ 0, %156 ], [ 0, %157 ], [ 0, %158 ], [ 0, %159 ], [ 0, %160 ], [ 0, %161 ], [ 0, %162 ], [ 0, %163 ], [ 0, %164 ], [ 0, %165 ], [ 0, %166 ], [ 0, %167 ], [ 0, %168 ], [ 0, %169 ], [ 0, %170 ], [ 0, %171 ], [ 0, %172 ], [ 0, %173 ], [ 0, %174 ], [ 0, %175 ], [ 0, %176 ], [ 0, %177 ], [ 0, %178 ], [ 0, %179 ], [ 0, %180 ], [ 0, %181 ], [ 0, %182 ], [ 0, %183 ], [ 0, %184 ], [ 0, %185 ], [ 0, %186 ], [ 0, %187 ], [ 0, %188 ], [ 0, %189 ], [ 0, %190 ], [ 0, %191 ], [ 0, %192 ], [ 0, %193 ], [ 0, %194 ], [ 0, %195 ], [ 0, %196 ], [ 0, %197 ], [ 0, %198 ], [ 0, %199 ], [ 0, %200 ], [ 0, %201 ], [ 0, %202 ], [ 0, %203 ], [ 0, %204 ], [ 0, %205 ], [ 0, %206 ], [ 0, %207 ], [ 0, %208 ], [ 0, %209 ], [ 0, %210 ], [ 0, %211 ], [ 0, %212 ], [ 0, %213 ], [ 0, %214 ], [ 0, %215 ], [ 0, %216 ], [ 0, %217 ], [ 0, %218 ], [ 0, %219 ], [ 0, %220 ], [ 0, %221 ], [ 0, %222 ], [ 0, %223 ], [ 0, %224 ], [ 0, %225 ], [ 0, %226 ], [ 0, %227 ], [ 0, %228 ], [ 0, %229 ], [ 0, %230 ], [ 0, %231 ], [ 0, %232 ], [ 0, %233 ], [ 0, %234 ], [ 0, %235 ], [ 0, %236 ], [ 0, %237 ], [ 0, %238 ], [ 0, %239 ], [ 0, %240 ], [ 1, %242 ], [ 1, %243 ], [ 1, %244 ], [ 1, %245 ], [ 1, %246 ], [ 1, %247 ], [ 1, %248 ], [ 1, %249 ], [ 1, %250 ], [ 1, %251 ], [ 1, %252 ], [ 1, %253 ], [ 1, %254 ], [ 1, %255 ], [ 1, %256 ], [ 1, %257 ], [ 1, %258 ], [ 1, %259 ], [ 1, %260 ], [ 1, %261 ], [ 1, %262 ], [ 1, %263 ], [ 1, %264 ], [ 1, %265 ], [ 1, %266 ], [ 1, %267 ], [ 1, %268 ], [ 1, %269 ], [ 1, %270 ], [ 1, %271 ], [ 1, %272 ], [ 1, %273 ], [ 1, %274 ], [ 1, %275 ], [ 1, %276 ], [ 1, %277 ], [ 1, %278 ], [ 1, %279 ], [ 1, %280 ], [ 1, %281 ], [ 1, %282 ], [ 1, %283 ]
  %292 = phi ptr [ @.str.324, %241 ], [ @.str.152, %67 ], [ @.str.153, %70 ], [ @.str.154, %71 ], [ @.str.155, %72 ], [ @.str.156, %73 ], [ @.str.157, %74 ], [ @.str.158, %75 ], [ @.str.159, %76 ], [ @.str.160, %77 ], [ @.str.161, %78 ], [ @.str.162, %79 ], [ @.str.163, %80 ], [ @.str.164, %81 ], [ @.str.165, %82 ], [ @.str.166, %83 ], [ @.str.167, %84 ], [ @.str.168, %85 ], [ @.str.169, %86 ], [ @.str.170, %87 ], [ @.str.171, %88 ], [ @.str.172, %89 ], [ @.str.173, %90 ], [ @.str.174, %91 ], [ @.str.175, %92 ], [ @.str.176, %93 ], [ @.str.177, %94 ], [ @.str.178, %95 ], [ @.str.179, %96 ], [ @.str.180, %97 ], [ @.str.181, %98 ], [ @.str.182, %99 ], [ @.str.183, %100 ], [ @.str.184, %101 ], [ @.str.185, %102 ], [ @.str.186, %103 ], [ @.str.187, %104 ], [ @.str.188, %105 ], [ @.str.189, %106 ], [ @.str.190, %107 ], [ @.str.191, %108 ], [ @.str.192, %109 ], [ @.str.193, %110 ], [ @.str.194, %111 ], [ @.str.195, %112 ], [ @.str.196, %113 ], [ @.str.197, %114 ], [ @.str.198, %115 ], [ @.str.199, %116 ], [ @.str.200, %117 ], [ @.str.201, %118 ], [ @.str.202, %119 ], [ @.str.203, %120 ], [ @.str.204, %121 ], [ @.str.205, %122 ], [ @.str.206, %123 ], [ @.str.207, %124 ], [ @.str.208, %125 ], [ @.str.209, %126 ], [ @.str.210, %127 ], [ @.str.211, %128 ], [ @.str.212, %129 ], [ @.str.213, %130 ], [ @.str.214, %131 ], [ @.str.215, %132 ], [ @.str.216, %133 ], [ @.str.217, %134 ], [ @.str.218, %135 ], [ @.str.219, %136 ], [ @.str.220, %137 ], [ @.str.221, %138 ], [ @.str.222, %139 ], [ @.str.223, %140 ], [ @.str.224, %141 ], [ @.str.225, %142 ], [ @.str.226, %143 ], [ @.str.227, %144 ], [ @.str.228, %145 ], [ @.str.229, %146 ], [ @.str.230, %147 ], [ @.str.231, %148 ], [ @.str.232, %149 ], [ @.str.233, %150 ], [ @.str.234, %151 ], [ @.str.235, %152 ], [ @.str.236, %153 ], [ @.str.237, %154 ], [ @.str.238, %155 ], [ @.str.239, %156 ], [ @.str.240, %157 ], [ @.str.241, %158 ], [ @.str.242, %159 ], [ @.str.243, %160 ], [ @.str.244, %161 ], [ @.str.245, %162 ], [ @.str.246, %163 ], [ @.str.247, %164 ], [ @.str.248, %165 ], [ @.str.249, %166 ], [ @.str.250, %167 ], [ @.str.251, %168 ], [ @.str.252, %169 ], [ @.str.253, %170 ], [ @.str.254, %171 ], [ @.str.255, %172 ], [ @.str.256, %173 ], [ @.str.257, %174 ], [ @.str.258, %175 ], [ @.str.259, %176 ], [ @.str.260, %177 ], [ @.str.261, %178 ], [ @.str.262, %179 ], [ @.str.263, %180 ], [ @.str.264, %181 ], [ @.str.265, %182 ], [ @.str.266, %183 ], [ @.str.267, %184 ], [ @.str.268, %185 ], [ @.str.269, %186 ], [ @.str.270, %187 ], [ @.str.271, %188 ], [ @.str.272, %189 ], [ @.str.273, %190 ], [ @.str.274, %191 ], [ @.str.275, %192 ], [ @.str.276, %193 ], [ @.str.277, %194 ], [ @.str.278, %195 ], [ @.str.279, %196 ], [ @.str.280, %197 ], [ @.str.281, %198 ], [ @.str.282, %199 ], [ @.str.283, %200 ], [ @.str.284, %201 ], [ @.str.285, %202 ], [ @.str.286, %203 ], [ @.str.287, %204 ], [ @.str.288, %205 ], [ @.str.289, %206 ], [ @.str.290, %207 ], [ @.str.291, %208 ], [ @.str.292, %209 ], [ @.str.293, %210 ], [ @.str.294, %211 ], [ @.str.295, %212 ], [ @.str.296, %213 ], [ @.str.297, %214 ], [ @.str.298, %215 ], [ @.str.299, %216 ], [ @.str.300, %217 ], [ @.str.301, %218 ], [ @.str.302, %219 ], [ @.str.303, %220 ], [ @.str.304, %221 ], [ @.str.305, %222 ], [ @.str.306, %223 ], [ @.str.307, %224 ], [ @.str.308, %225 ], [ @.str.309, %226 ], [ @.str.310, %227 ], [ @.str.311, %228 ], [ @.str.312, %229 ], [ @.str.313, %230 ], [ @.str.314, %231 ], [ @.str.315, %232 ], [ @.str.316, %233 ], [ @.str.317, %234 ], [ @.str.318, %235 ], [ @.str.319, %236 ], [ @.str.320, %237 ], [ @.str.321, %238 ], [ @.str.322, %239 ], [ @.str.323, %240 ], [ @.str.325, %242 ], [ @.str.326, %243 ], [ @.str.327, %244 ], [ @.str.328, %245 ], [ @.str.329, %246 ], [ @.str.330, %247 ], [ @.str.331, %248 ], [ @.str.332, %249 ], [ @.str.333, %250 ], [ @.str.334, %251 ], [ @.str.335, %252 ], [ @.str.336, %253 ], [ @.str.337, %254 ], [ @.str.338, %255 ], [ @.str.339, %256 ], [ @.str.340, %257 ], [ @.str.341, %258 ], [ @.str.342, %259 ], [ @.str.343, %260 ], [ @.str.344, %261 ], [ @.str.345, %262 ], [ @.str.346, %263 ], [ @.str.347, %264 ], [ @.str.348, %265 ], [ @.str.349, %266 ], [ @.str.350, %267 ], [ @.str.351, %268 ], [ @.str.352, %269 ], [ @.str.353, %270 ], [ @.str.354, %271 ], [ @.str.355, %272 ], [ @.str.356, %273 ], [ @.str.357, %274 ], [ @.str.358, %275 ], [ @.str.359, %276 ], [ @.str.360, %277 ], [ @.str.361, %278 ], [ @.str.362, %279 ], [ @.str.363, %280 ], [ @.str.364, %281 ], [ @.str.365, %282 ], [ @.str.366, %283 ]
  %293 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %3, i32 0, i32 3
  %294 = tail call i32 @strscpy(ptr noundef %293, ptr noundef nonnull %292, i32 noundef 32) #13
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %297, !prof !20

296:                                              ; preds = %290
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.150, i32 noundef 1452, i32 noundef 9, ptr noundef null) #13
  br label %297

297:                                              ; preds = %296, %290, %288
  %298 = phi i32 [ %291, %290 ], [ %291, %296 ], [ 0, %288 ]
  %299 = load i32, ptr %21, align 4
  %300 = or i32 %299, %298
  store i32 %300, ptr %21, align 4
  br label %301

301:                                              ; preds = %297, %284, %63, %59, %55, %51, %47, %43, %37, %33, %29, %23, %18, %4
  %302 = phi i32 [ %8, %4 ], [ %65, %63 ], [ 0, %284 ], [ 0, %297 ], [ -22, %18 ], [ -22, %59 ], [ -22, %55 ], [ -22, %51 ], [ -22, %47 ], [ -22, %37 ], [ -22, %43 ], [ -22, %33 ], [ -22, %23 ], [ -22, %29 ]
  ret i32 %302
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_fmtdesc(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 15
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ @.str.30, %2 ]
  %12 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 3
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369, i32 noundef %3, ptr noundef %11, i32 noundef %13, ptr noundef %14, i32 noundef %16, i32 noundef 32, ptr noundef %17) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = load i32, ptr %3, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %93

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 4
  switch i32 %10, label %19 [
    i32 3, label %11
    i32 8, label %11
  ]

11:                                               ; preds = %9, %9
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(200) %12, i8 0, i32 200, i1 false)
  store ptr %14, ptr %13, align 4
  store i32 %16, ptr %15, align 4
  store ptr %18, ptr %17, align 4
  br label %21

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(200) %20, i8 0, i32 200, i1 false)
  br label %21

21:                                               ; preds = %19, %11
  switch i32 %10, label %93 [
    i32 1, label %22
    i32 9, label %37
    i32 3, label %41
    i32 4, label %45
    i32 6, label %49
    i32 2, label %53
    i32 10, label %61
    i32 8, label %65
    i32 5, label %69
    i32 7, label %73
    i32 11, label %77
    i32 12, label %81
    i32 13, label %85
    i32 14, label %89
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %93, label %26, !prof !20

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %27, align 4
  %28 = load ptr, ptr %23, align 4
  %29 = tail call i32 %28(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store i32 -17970434, ptr %27, align 4
  %30 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %93

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 11, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %36, i8 0, i64 16, i1 false) #13
  br label %93

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %57, !prof !20

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %58, align 4
  %59 = load ptr, ptr %54, align 4
  %60 = tail call i32 %59(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store i32 -17970434, ptr %58, align 4
  br label %93

61:                                               ; preds = %21
  %62 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

65:                                               ; preds = %21
  %66 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

69:                                               ; preds = %21
  %70 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

73:                                               ; preds = %21
  %74 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

77:                                               ; preds = %21
  %78 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 18
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 %79(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

81:                                               ; preds = %21
  %82 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 19
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

85:                                               ; preds = %21
  %86 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 20
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

89:                                               ; preds = %21
  %90 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 21
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 %91(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %93

93:                                               ; preds = %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %26, %22, %21, %4
  %94 = phi i32 [ %92, %89 ], [ %88, %85 ], [ %84, %81 ], [ %80, %77 ], [ %76, %73 ], [ %72, %69 ], [ %68, %65 ], [ %64, %61 ], [ %60, %57 ], [ %52, %49 ], [ %48, %45 ], [ %44, %41 ], [ %40, %37 ], [ %7, %4 ], [ %29, %33 ], [ %29, %26 ], [ -22, %53 ], [ -22, %22 ], [ -22, %21 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_format(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, ptr noundef %9) #14
  %11 = load i32, ptr %0, align 4
  switch i32 %11, label %205 [
    i32 1, label %12
    i32 2, label %12
    i32 9, label %41
    i32 10, label %41
    i32 3, label %131
    i32 8, label %131
    i32 4, label %160
    i32 5, label %160
    i32 6, label %177
    i32 7, label %177
    i32 11, label %197
    i32 12, label %197
    i32 13, label %200
    i32 14, label %200
  ]

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr [10 x ptr], ptr @v4l2_field_names, i32 0, i32 %19
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi ptr [ %23, %21 ], [ @.str.30, %12 ]
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371, i32 noundef %14, i32 noundef %16, ptr noundef %17, ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #14
  br label %205

41:                                               ; preds = %8, %8
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %47 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %48 = load i32, ptr %47, align 1
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = getelementptr [10 x ptr], ptr @v4l2_field_names, i32 0, i32 %48
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi ptr [ %52, %50 ], [ @.str.30, %41 ]
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 7
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 8
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 9
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 10
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, i32 noundef %43, i32 noundef %45, ptr noundef %46, ptr noundef %54, i32 noundef %56, i32 noundef %59, i32 noundef %62, i32 noundef %65, i32 noundef %68, i32 noundef %71) #14
  %73 = load i8, ptr %57, align 1
  %74 = tail call i8 @llvm.umin.i8(i8 %73, i8 8)
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %205, label %76

76:                                               ; preds = %53
  %77 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0
  %78 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %79 = load i32, ptr %78, align 1
  %80 = load i32, ptr %77, align 1
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 0, i32 noundef %79, i32 noundef %80) #14
  %82 = icmp eq i8 %74, 1
  br i1 %82, label %205, label %83

83:                                               ; preds = %76
  %84 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1
  %85 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %86 = load i32, ptr %85, align 1
  %87 = load i32, ptr %84, align 1
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 1, i32 noundef %86, i32 noundef %87) #14
  %89 = icmp eq i8 %74, 2
  br i1 %89, label %205, label %90

90:                                               ; preds = %83
  %91 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 2
  %92 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %93 = load i32, ptr %92, align 1
  %94 = load i32, ptr %91, align 1
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 2, i32 noundef %93, i32 noundef %94) #14
  %96 = icmp eq i8 %74, 3
  br i1 %96, label %205, label %97

97:                                               ; preds = %90
  %98 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 3
  %99 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 3, i32 1
  %100 = load i32, ptr %99, align 1
  %101 = load i32, ptr %98, align 1
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 3, i32 noundef %100, i32 noundef %101) #14
  %103 = icmp eq i8 %74, 4
  br i1 %103, label %205, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 4
  %106 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %107 = load i32, ptr %106, align 1
  %108 = load i32, ptr %105, align 1
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 4, i32 noundef %107, i32 noundef %108) #14
  %110 = icmp eq i8 %74, 5
  br i1 %110, label %205, label %111

111:                                              ; preds = %104
  %112 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 5
  %113 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 5, i32 1
  %114 = load i32, ptr %113, align 1
  %115 = load i32, ptr %112, align 1
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 5, i32 noundef %114, i32 noundef %115) #14
  %117 = icmp eq i8 %74, 6
  br i1 %117, label %205, label %118

118:                                              ; preds = %111
  %119 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 6
  %120 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 6, i32 1
  %121 = load i32, ptr %120, align 1
  %122 = load i32, ptr %119, align 1
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 6, i32 noundef %121, i32 noundef %122) #14
  %124 = icmp eq i8 %74, 7
  br i1 %124, label %205, label %125

125:                                              ; preds = %118
  %126 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 7
  %127 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 7, i32 1
  %128 = load i32, ptr %127, align 1
  %129 = load i32, ptr %126, align 1
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, i32 noundef 7, i32 noundef %128, i32 noundef %129) #14
  br label %205

131:                                              ; preds = %8, %8
  %132 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %133 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr %132, align 4
  %138 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = icmp ult i32 %141, 10
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = getelementptr [10 x ptr], ptr @v4l2_field_names, i32 0, i32 %141
  %145 = load ptr, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %131
  %147 = phi ptr [ %145, %143 ], [ @.str.30, %131 ]
  %148 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i32
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.374, i32 noundef %134, i32 noundef %136, i32 noundef %137, i32 noundef %139, ptr noundef %147, i32 noundef %149, i32 noundef %151, ptr noundef %153, ptr noundef %155, i32 noundef %158) #14
  br label %205

160:                                              ; preds = %8, %8
  %161 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %168 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, i32 noundef %162, i32 noundef %164, i32 noundef %166, ptr noundef %167, i32 noundef %169, i32 noundef %171, i32 noundef %173, i32 noundef %175) #14
  br label %205

177:                                              ; preds = %8, %8
  %178 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %179 = load i16, ptr %178, align 4
  %180 = zext i16 %179 to i32
  %181 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 4
  %182 = load i32, ptr %181, align 4
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.376, i32 noundef %180, i32 noundef %182) #14
  %184 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %178, i32 0, i32 1
  %185 = getelementptr %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2, i32 1
  br label %186

186:                                              ; preds = %186, %177
  %187 = phi i32 [ 0, %177 ], [ %195, %186 ]
  %188 = getelementptr [24 x i16], ptr %184, i32 0, i32 %187
  %189 = load i16, ptr %188, align 2
  %190 = zext i16 %189 to i32
  %191 = getelementptr [24 x i16], ptr %185, i32 0, i32 %187
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, i32 noundef %187, i32 noundef %190, i32 noundef %193) #14
  %195 = add nuw nsw i32 %187, 1
  %196 = icmp eq i32 %195, 24
  br i1 %196, label %205, label %186

197:                                              ; preds = %8, %8
  %198 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef %198) #14
  br label %205

200:                                              ; preds = %8, %8
  %201 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %202 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %203 = load i32, ptr %202, align 1
  %204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, ptr noundef %201, i32 noundef %203) #14
  br label %205

205:                                              ; preds = %200, %197, %186, %160, %146, %125, %118, %111, %104, %97, %90, %83, %76, %53, %24, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = load i32, ptr %3, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %173

9:                                                ; preds = %4
  %10 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %173

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  %14 = add i32 %13, -9
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %18 = load i8, ptr %17, align 4
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 8) #13
  store i8 %19, ptr %17, align 4
  br label %29

20:                                               ; preds = %12
  %21 = add i32 %13, -1
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -17970434
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  store i32 -17970434, ptr %24, align 4
  %28 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %28, i8 0, i32 16, i1 false) #13
  br label %29

29:                                               ; preds = %27, %23, %20, %16
  switch i32 %13, label %173 [
    i32 1, label %30
    i32 9, label %46
    i32 3, label %65
    i32 4, label %73
    i32 6, label %81
    i32 2, label %89
    i32 10, label %98
    i32 8, label %117
    i32 5, label %125
    i32 7, label %133
    i32 11, label %141
    i32 12, label %149
    i32 13, label %157
    i32 14, label %165
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %173, label %34, !prof !20

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %3, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(152) %35, i8 0, i32 152, i1 false)
  %36 = load ptr, ptr %31, align 4
  %37 = tail call i32 %36(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %38, align 4
  %39 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %173

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 11, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false) #13
  br label %173

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 30
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %173, label %50, !prof !20

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %3, i32 189
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %51, i8 0, i32 15, i1 false)
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %55, %50
  %56 = phi i32 [ %58, %55 ], [ 0, %50 ]
  %57 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 %56, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %57, i8 0, i32 12, i1 false)
  %58 = add nuw nsw i32 %56, 1
  %59 = load i8, ptr %52, align 4
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %55, label %62

62:                                               ; preds = %55, %50
  %63 = load ptr, ptr %47, align 4
  %64 = tail call i32 %63(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

65:                                               ; preds = %29
  %66 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 23
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %173, label %69, !prof !20

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %3, i32 44
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(160) %70, i8 0, i32 160, i1 false)
  %71 = load ptr, ptr %66, align 4
  %72 = tail call i32 %71(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

73:                                               ; preds = %29
  %74 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 26
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %173, label %77, !prof !20

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %3, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(164) %78, i8 0, i32 164, i1 false)
  %79 = load ptr, ptr %74, align 4
  %80 = tail call i32 %79(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

81:                                               ; preds = %29
  %82 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 28
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %173, label %85, !prof !20

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %3, i32 108
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %86, i8 0, i32 96, i1 false)
  %87 = load ptr, ptr %82, align 4
  %88 = tail call i32 %87(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

89:                                               ; preds = %29
  %90 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 24
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %173, label %93, !prof !20

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %3, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(152) %94, i8 0, i32 152, i1 false)
  %95 = load ptr, ptr %90, align 4
  %96 = tail call i32 %95(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %97 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %97, align 4
  br label %173

98:                                               ; preds = %29
  %99 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 31
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %173, label %102, !prof !20

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %3, i32 189
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %103, i8 0, i32 15, i1 false)
  %104 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %105 = load i8, ptr %104, align 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %107, %102
  %108 = phi i32 [ %110, %107 ], [ 0, %102 ]
  %109 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 %108, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %109, i8 0, i32 12, i1 false)
  %110 = add nuw nsw i32 %108, 1
  %111 = load i8, ptr %104, align 4
  %112 = zext i8 %111 to i32
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %107, label %114

114:                                              ; preds = %107, %102
  %115 = load ptr, ptr %99, align 4
  %116 = tail call i32 %115(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

117:                                              ; preds = %29
  %118 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 25
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %173, label %121, !prof !20

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %3, i32 44
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(160) %122, i8 0, i32 160, i1 false)
  %123 = load ptr, ptr %118, align 4
  %124 = tail call i32 %123(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

125:                                              ; preds = %29
  %126 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 27
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %173, label %129, !prof !20

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %3, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(164) %130, i8 0, i32 164, i1 false)
  %131 = load ptr, ptr %126, align 4
  %132 = tail call i32 %131(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

133:                                              ; preds = %29
  %134 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 29
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %173, label %137, !prof !20

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %3, i32 108
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %138, i8 0, i32 96, i1 false)
  %139 = load ptr, ptr %134, align 4
  %140 = tail call i32 %139(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

141:                                              ; preds = %29
  %142 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 32
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %173, label %145, !prof !20

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %146, i8 0, i32 192, i1 false)
  %147 = load ptr, ptr %142, align 4
  %148 = tail call i32 %147(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

149:                                              ; preds = %29
  %150 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 33
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %173, label %153, !prof !20

153:                                              ; preds = %149
  %154 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %154, i8 0, i32 192, i1 false)
  %155 = load ptr, ptr %150, align 4
  %156 = tail call i32 %155(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

157:                                              ; preds = %29
  %158 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 34
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %173, label %161, !prof !20

161:                                              ; preds = %157
  %162 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %162, i8 0, i32 192, i1 false)
  %163 = load ptr, ptr %158, align 4
  %164 = tail call i32 %163(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

165:                                              ; preds = %29
  %166 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 35
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169, !prof !20

169:                                              ; preds = %165
  %170 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %170, i8 0, i32 192, i1 false)
  %171 = load ptr, ptr %166, align 4
  %172 = tail call i32 %171(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %173

173:                                              ; preds = %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %117, %114, %98, %93, %89, %85, %81, %77, %73, %69, %65, %62, %46, %42, %34, %30, %29, %9, %4
  %174 = phi i32 [ %172, %169 ], [ %164, %161 ], [ %156, %153 ], [ %148, %145 ], [ %140, %137 ], [ %132, %129 ], [ %124, %121 ], [ %116, %114 ], [ %96, %93 ], [ %88, %85 ], [ %80, %77 ], [ %72, %69 ], [ %64, %62 ], [ %7, %4 ], [ %10, %9 ], [ %37, %42 ], [ %37, %34 ], [ -22, %165 ], [ -22, %157 ], [ -22, %149 ], [ -22, %141 ], [ -22, %133 ], [ -22, %125 ], [ -22, %117 ], [ -22, %98 ], [ -22, %89 ], [ -22, %81 ], [ -22, %73 ], [ -22, %65 ], [ -22, %46 ], [ -22, %30 ], [ -22, %29 ]
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_reqbufs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %3, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %10, i8 0, i32 3, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 50
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ %13, %9 ], [ %7, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_requestbuffers(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 15
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ @.str.30, %2 ]
  %12 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr [5 x ptr], ptr @v4l2_memory_names, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ @.str.30, %10 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, i32 noundef %3, ptr noundef %11, ptr noundef %19) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_querybuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_buffer, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 51
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_buffer(ptr noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 3600
  %7 = freeze i32 %5
  %8 = sdiv i32 %7, 60
  %9 = srem i32 %8, 60
  %10 = mul i32 %8, 60
  %11 = sub i32 %7, %10
  %12 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 5, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, ptr %0, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %17
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi ptr [ %21, %19 ], [ @.str.30, %2 ]
  %24 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = getelementptr [10 x ptr], ptr @v4l2_field_names, i32 0, i32 %29
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi ptr [ %33, %31 ], [ @.str.30, %22 ]
  %36 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr [5 x ptr], ptr @v4l2_memory_names, i32 0, i32 %39
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi ptr [ %43, %41 ], [ @.str.30, %34 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.385, i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %14, i32 noundef %15, ptr noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef %35, i32 noundef %37, ptr noundef %45) #14
  %47 = load i32, ptr %16, align 4
  %48 = add i32 %47, -9
  %49 = icmp ult i32 %48, 2
  %50 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 9
  br i1 %49, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, ptr %50, align 8
  br label %77

53:                                               ; preds = %44
  %54 = load ptr, ptr %50, align 8
  %55 = icmp eq ptr %54, null
  %56 = ptrtoint ptr %54 to i32
  br i1 %55, label %77, label %57

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  %59 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %62, %57
  %63 = phi i32 [ %74, %62 ], [ 0, %57 ]
  %64 = load ptr, ptr %50, align 8
  %65 = getelementptr %struct.v4l2_plane, ptr %64, i32 %63
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.v4l2_plane, ptr %64, i32 %63, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.v4l2_plane, ptr %64, i32 %63, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr %struct.v4l2_plane, ptr %64, i32 %63, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, i32 noundef %63, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #14
  %74 = add nuw i32 %63, 1
  %75 = load i32, ptr %59, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %62, label %84

77:                                               ; preds = %53, %51
  %78 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %79 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, i32 noundef %80, i32 noundef %78, i32 noundef %82) #14
  br label %84

84:                                               ; preds = %77, %62, %57
  %85 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 5
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 4
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i32, ptr %85, align 4
  %96 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds %struct.v4l2_buffer, ptr %0, i32 0, i32 6, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389, i32 noundef %88, i32 noundef %91, i32 noundef %94, i32 noundef %95, i32 noundef %97, i32 noundef %100, i32 noundef %102) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_fbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 58
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_framebuffer(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3, i32 2
  %13 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_framebuffer, ptr %0, i32 0, i32 3, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, i32 noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_fbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_overlay(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 57
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 %6(ptr noundef %1, ptr noundef %2, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_u32(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.391, i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_qbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_buffer, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 52
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_expbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 53
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_exportbuffer(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_exportbuffer, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = icmp ult i32 %5, 15
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ @.str.30, %2 ]
  %12 = getelementptr inbounds %struct.v4l2_exportbuffer, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_exportbuffer, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_exportbuffer, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, i32 noundef %4, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_dqbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_buffer, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 54
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_streamon(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 60
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 %6(ptr noundef %1, ptr noundef %2, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_buftype(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.393, ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_streamoff(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 61
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 %6(ptr noundef %1, ptr noundef %2, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_parm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = tail call ptr @video_devdata(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !10
  %7 = load i32, ptr %3, align 4
  %8 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 97
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %38

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4
  switch i32 %17, label %38 [
    i32 1, label %18
    i32 9, label %18
  ]

18:                                               ; preds = %16, %16
  %19 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16777216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 4
  store i32 2, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 62
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i64, ptr %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 2
  %33 = and i64 %31, 63744
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, i32 1, i32 1001
  %36 = select i1 %34, i32 25, i32 30000
  store i32 %35, ptr %32, align 4
  %37 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %30, %25, %16, %14, %4
  %39 = phi i32 [ %15, %14 ], [ %8, %4 ], [ -22, %16 ], [ 0, %30 ], [ %28, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_streamparm(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, ptr noundef %9) #14
  %11 = load i32, ptr %0, align 4
  switch i32 %11, label %40 [
    i32 1, label %12
    i32 9, label %12
    i32 2, label %26
    i32 10, label %26
  ]

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #14
  br label %42

26:                                               ; preds = %8, %8
  %27 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_streamparm, ptr %0, i32 0, i32 1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.395, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #14
  br label %42

40:                                               ; preds = %8
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  br label %42

42:                                               ; preds = %40, %26, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_parm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  %6 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false)
  %10 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_streamparm, ptr %3, i32 0, i32 1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 98
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi i32 [ %16, %8 ], [ %6, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_std(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_std(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i64, ptr %0, align 8
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.396, i64 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_std(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = load i64, ptr %3, align 8
  %7 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 22
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, %6
  %13 = icmp eq i64 %11, 0
  %14 = icmp ne i64 %12, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 63
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %1, ptr noundef %2, i64 noundef %12) #13
  br label %20

20:                                               ; preds = %16, %9, %4
  %21 = phi i32 [ %19, %16 ], [ %7, %4 ], [ -22, %9 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_enumstd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 22
  %7 = load i64, ptr %6, align 8
  %8 = load i32, ptr %3, align 8
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %25, %4
  %11 = phi i32 [ %20, %25 ], [ 0, %4 ]
  %12 = phi i32 [ %27, %25 ], [ 0, %4 ]
  %13 = phi i64 [ %26, %25 ], [ %7, %4 ]
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %20, %14 ], [ %11, %10 ]
  %16 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %15
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, %13
  %19 = icmp eq i64 %18, %17
  %20 = add i32 %15, 1
  br i1 %19, label %21, label %14

21:                                               ; preds = %14
  switch i64 %17, label %22 [
    i64 0, label %50
    i64 16711680, label %25
    i64 45056, label %25
    i64 255, label %25
  ]

22:                                               ; preds = %21
  %23 = xor i64 %17, -1
  %24 = and i64 %13, %23
  br label %25

25:                                               ; preds = %22, %21, %21, %21
  %26 = phi i64 [ %24, %22 ], [ %13, %21 ], [ %13, %21 ], [ %13, %21 ]
  %27 = add i32 %12, 1
  %28 = icmp ule i32 %27, %8
  %29 = icmp ne i64 %26, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %10, label %31

31:                                               ; preds = %25
  br i1 %28, label %50, label %32

32:                                               ; preds = %31
  %33 = trunc i64 %17 to i32
  %34 = getelementptr [31 x %struct.std_descr], ptr @standards, i32 0, i32 %15, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds %struct.v4l2_standard, ptr %3, i32 0, i32 1
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.v4l2_standard, ptr %3, i32 0, i32 3
  %39 = and i32 %33, 63744
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 1001
  %42 = select i1 %40, i32 25, i32 30000
  store i32 %41, ptr %38, align 4
  %43 = getelementptr inbounds %struct.v4l2_standard, ptr %3, i32 0, i32 3, i32 1
  store i32 %42, ptr %43, align 4
  %44 = and i64 %36, 63744
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %45, i32 625, i32 525
  %47 = getelementptr inbounds %struct.v4l2_standard, ptr %3, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.v4l2_standard, ptr %3, i32 0, i32 2
  %49 = tail call i32 @strscpy(ptr noundef %48, ptr noundef %35, i32 noundef 24) #13
  br label %50

50:                                               ; preds = %32, %31, %21, %4
  %51 = phi i32 [ 0, %32 ], [ -61, %4 ], [ -22, %31 ], [ -22, %21 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_standard(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_standard, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, i32 noundef %3, i64 noundef %5, i32 noundef 24, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_enuminput(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 25
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.v4l2_input, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.v4l2_input, ptr %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %25 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %24, i32 noundef 32) #13
  %26 = getelementptr inbounds %struct.v4l2_input, ptr %3, i32 0, i32 2
  store i32 2, ptr %26, align 4
  br label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 65
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %31

31:                                               ; preds = %27, %22, %19
  %32 = phi i32 [ 0, %22 ], [ %30, %27 ], [ -22, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_enuminput(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_input, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.398, i32 noundef %3, i32 noundef 32, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i64 noundef %12, i32 noundef %14, i32 noundef %16) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_ctrl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.v4l2_ext_controls, align 4
  %6 = alloca %struct.v4l2_ext_control, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 17
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %12 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %13, i8 0, i32 16, i1 false), !annotation !10
  %14 = icmp eq ptr %2, null
  %15 = or i1 %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @v4l2_g_ctrl(ptr noundef nonnull %18, ptr noundef %3) #13
  br label %79

22:                                               ; preds = %16, %4
  %23 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @v4l2_g_ctrl(ptr noundef nonnull %24, ptr noundef %3) #13
  br label %79

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 73
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %79

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 75
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %79, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %3, align 4
  %40 = and i32 %39, 268369920
  store i32 %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 1
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 5
  store ptr %6, ptr %42, align 4
  store i32 %39, ptr %6, align 4
  %43 = getelementptr inbounds %struct.v4l2_control, ptr %3, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_ext_control, ptr %6, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_ext_control, ptr %6, i32 0, i32 2
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %41, align 4
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %38
  %51 = phi i32 [ %54, %50 ], [ 1, %38 ]
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr %struct.v4l2_ext_control, ptr %52, i32 %51, i32 2
  store i32 0, ptr %53, align 1
  %54 = add nuw i32 %51, 1
  %55 = load i32, ptr %41, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %38
  %58 = phi i32 [ %48, %38 ], [ %55, %50 ]
  %59 = load i32, ptr %5, align 4
  switch i32 %59, label %60 [
    i32 134217728, label %79
    i32 251658240, label %73
    i32 0, label %73
    i32 251723776, label %79
  ]

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %42, align 4
  br label %64

64:                                               ; preds = %70, %62
  %65 = phi i32 [ 0, %62 ], [ %71, %70 ]
  %66 = getelementptr %struct.v4l2_ext_control, ptr %63, i32 %65
  %67 = load i32, ptr %66, align 1
  %68 = and i32 %67, 268369920
  %69 = icmp eq i32 %68, %59
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = add nuw i32 %65, 1
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %73, label %64

73:                                               ; preds = %70, %60, %57, %57
  %74 = load ptr, ptr %35, align 4
  %75 = call i32 %74(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, ptr %45, align 4
  store i32 %78, ptr %43, align 4
  br label %79

79:                                               ; preds = %77, %73, %64, %57, %57, %34, %32, %26, %20
  %80 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %33, %32 ], [ -25, %34 ], [ 0, %77 ], [ %75, %73 ], [ -22, %57 ], [ -22, %57 ], [ -22, %64 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, ptr noundef nonnull %4) #14
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, ptr %0, align 4
  %10 = getelementptr inbounds %struct.v4l2_control, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.400, i32 noundef %9, i32 noundef %11) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_ctrl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.v4l2_ext_controls, align 4
  %6 = alloca %struct.v4l2_ext_control, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 17
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %12 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %13, i8 0, i32 16, i1 false), !annotation !10
  %14 = icmp eq ptr %2, null
  %15 = or i1 %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @v4l2_s_ctrl(ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef %3) #13
  br label %77

22:                                               ; preds = %16, %4
  %23 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @v4l2_s_ctrl(ptr noundef null, ptr noundef nonnull %24, ptr noundef %3) #13
  br label %77

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 74
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %77

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 76
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %3, align 4
  %40 = and i32 %39, 268369920
  store i32 %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 1
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 5
  store ptr %6, ptr %42, align 4
  store i32 %39, ptr %6, align 4
  %43 = getelementptr inbounds %struct.v4l2_control, ptr %3, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_ext_control, ptr %6, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %5, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_ext_control, ptr %6, i32 0, i32 2
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %41, align 4
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %38
  %51 = phi i32 [ %54, %50 ], [ 1, %38 ]
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr %struct.v4l2_ext_control, ptr %52, i32 %51, i32 2
  store i32 0, ptr %53, align 1
  %54 = add nuw i32 %51, 1
  %55 = load i32, ptr %41, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %50, label %57

57:                                               ; preds = %50, %38
  %58 = phi i32 [ %48, %38 ], [ %55, %50 ]
  %59 = load i32, ptr %5, align 4
  switch i32 %59, label %60 [
    i32 134217728, label %77
    i32 251658240, label %73
    i32 0, label %73
    i32 251723776, label %77
  ]

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %42, align 4
  br label %64

64:                                               ; preds = %70, %62
  %65 = phi i32 [ 0, %62 ], [ %71, %70 ]
  %66 = getelementptr %struct.v4l2_ext_control, ptr %63, i32 %65
  %67 = load i32, ptr %66, align 1
  %68 = and i32 %67, 268369920
  %69 = icmp eq i32 %68, %59
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = add nuw i32 %65, 1
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %73, label %64

73:                                               ; preds = %70, %60, %57, %57
  %74 = load ptr, ptr %35, align 4
  %75 = call i32 %74(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %76 = load i32, ptr %45, align 4
  store i32 %76, ptr %43, align 4
  br label %77

77:                                               ; preds = %73, %64, %57, %57, %34, %32, %26, %20
  %78 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %33, %32 ], [ %75, %73 ], [ -25, %34 ], [ -22, %57 ], [ -22, %57 ], [ -22, %64 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_tuner(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %8, i32 1, i32 2
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %3, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 99
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1024
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_tuner(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  br i1 %1, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.401, i32 noundef %3, i32 noundef %6) #14
  br label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_tuner, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, i32 noundef %3, i32 noundef 32, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #14
  br label %27

27:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_tuner(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 1, i32 2
  %13 = getelementptr inbounds %struct.v4l2_tuner, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 100
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi i32 [ %16, %8 ], [ %6, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_audio(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 80
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_audio(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  br i1 %1, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_audio, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.403, i32 noundef %3, i32 noundef %6) #14
  br label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_audio, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_audio, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_audio, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.404, i32 noundef %3, i32 noundef 32, ptr noundef %9, i32 noundef %11, i32 noundef %13) #14
  br label %15

15:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_audio(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 81
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_queryctrl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @v4l2_queryctrl(ptr noundef nonnull %14, ptr noundef %3) #13
  br label %30

18:                                               ; preds = %12, %4
  %19 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @v4l2_queryctrl(ptr noundef nonnull %20, ptr noundef %3) #13
  br label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 71
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %30

30:                                               ; preds = %28, %24, %22, %16
  %31 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ -25, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_queryctrl(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.405, i32 noundef %3, i32 noundef %5, i32 noundef 32, ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_querymenu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @v4l2_querymenu(ptr noundef nonnull %14, ptr noundef %3) #13
  br label %30

18:                                               ; preds = %12, %4
  %19 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @v4l2_querymenu(ptr noundef nonnull %20, ptr noundef %3) #13
  br label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 78
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %30

30:                                               ; preds = %28, %24, %22, %16
  %31 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ -25, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_querymenu(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 1
  %4 = getelementptr inbounds %struct.v4l2_querymenu, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.406, i32 noundef %3, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_input(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 536870912
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store i32 0, ptr %3, align 4
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 66
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_input(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 -22
  br label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 67
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %3, align 4
  %21 = tail call i32 %19(ptr noundef %1, ptr noundef %2, i32 noundef %20) #13
  br label %22

22:                                               ; preds = %17, %13, %4
  %23 = phi i32 [ %16, %13 ], [ %21, %17 ], [ %6, %4 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_edid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 114
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_edid(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_edid, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_edid, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.407, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_edid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_output(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 536870912
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store i32 0, ptr %3, align 4
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 69
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_output(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 536870912
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 -22
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 70
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %3, align 4
  %18 = tail call i32 %16(ptr noundef %1, ptr noundef %2, i32 noundef %17) #13
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ %13, %10 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_enumoutput(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 25
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.v4l2_output, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.v4l2_output, ptr %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %25 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %24, i32 noundef 32) #13
  %26 = getelementptr inbounds %struct.v4l2_output, ptr %3, i32 0, i32 2
  store i32 2, ptr %26, align 4
  br label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 68
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %31

31:                                               ; preds = %27, %22, %19
  %32 = phi i32 [ 0, %22 ], [ %30, %27 ], [ -22, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_enumoutput(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_output, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.408, i32 noundef %3, i32 noundef 32, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i64 noundef %12, i32 noundef %14) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_audout(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 83
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_audioout(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  br i1 %1, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409, i32 noundef %3) #14
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_audioout, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_audioout, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_audioout, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.404, i32 noundef %3, i32 noundef 32, ptr noundef %7, i32 noundef %9, i32 noundef %11) #14
  br label %13

13:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_audout(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 84
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_modulator(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_modulator, ptr %3, i32 0, i32 6
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 85
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.v4l2_modulator, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1024
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_modulator(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  br i1 %1, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.410, i32 noundef %3, i32 noundef %6) #14
  br label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_modulator, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.411, i32 noundef %3, i32 noundef 32, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #14
  br label %19

19:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_modulator(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_modulator, ptr %3, i32 0, i32 6
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 86
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_frequency(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 4
  %9 = icmp eq i32 %7, 2
  %10 = select i1 %9, i32 1, i32 2
  %11 = select i1 %8, i32 4, i32 %10
  %12 = getelementptr inbounds %struct.v4l2_frequency, ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 101
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_frequency(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_frequency, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_frequency, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.412, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_frequency(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.v4l2_frequency, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %23, label %27

17:                                               ; preds = %8
  %18 = icmp eq i32 %10, 2
  %19 = select i1 %18, i32 1, i32 2
  %20 = getelementptr inbounds %struct.v4l2_frequency, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %12
  %24 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 102
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %27

27:                                               ; preds = %23, %17, %12, %4
  %28 = phi i32 [ %26, %23 ], [ %6, %4 ], [ -22, %12 ], [ -22, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_cropcap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.v4l2_selection, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %7, i8 0, i64 60, i1 false)
  %8 = load i32, ptr %3, align 4
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.v4l2_cropcap, ptr %3, i32 0, i32 3
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_cropcap, ptr %3, i32 0, i32 3, i32 1
  store i32 1, ptr %10, align 4
  switch i32 %8, label %13 [
    i32 9, label %11
    i32 10, label %12
  ]

11:                                               ; preds = %4
  store i32 1, ptr %5, align 4
  br label %13

12:                                               ; preds = %4
  store i32 2, ptr %5, align 4
  br label %13

13:                                               ; preds = %12, %11, %4
  %14 = phi i32 [ %8, %4 ], [ 2, %12 ], [ 1, %11 ]
  %15 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 88
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !20

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.150, i32 noundef 2435, i32 noundef 9, ptr noundef null) #13
  br label %64

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 87
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %1, ptr noundef %2, i32 noundef %14, ptr noundef %9) #13
  switch i32 %24, label %64 [
    i32 -25, label %25
    i32 -515, label %25
    i32 0, label %25
  ]

25:                                               ; preds = %23, %23, %23, %19
  %26 = load i32, ptr %3, align 4
  %27 = add i32 %26, -2
  %28 = icmp ult i32 %27, 13
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds [13 x i32], ptr @switch.table.v4l_cropcap, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds [13 x i32], ptr @switch.table.v4l_cropcap.463, i32 0, i32 %27
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %31, %29 ], [ 2, %25 ]
  %36 = phi i32 [ %33, %29 ], [ 258, %25 ]
  %37 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  store i32 %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 17
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  store i32 %36, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load ptr, ptr %15, align 4
  %46 = call i32 %45(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  store i32 %14, ptr %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.v4l2_cropcap, ptr %3, i32 0, i32 1
  %50 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %49, ptr noundef align 4 dereferenceable(16) %50, i32 16, i1 false)
  %51 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 258
  %54 = select i1 %53, i32 257, i32 1
  store i32 %54, ptr %51, align 4
  switch i32 %14, label %58 [
    i32 9, label %56
    i32 10, label %55
  ]

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ 2, %55 ], [ 1, %48 ]
  store i32 %57, ptr %5, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load ptr, ptr %15, align 4
  %60 = call i32 %59(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.v4l2_cropcap, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %63, ptr noundef align 4 dereferenceable(16) %50, i32 16, i1 false)
  br label %64

64:                                               ; preds = %62, %58, %44, %23, %18
  %65 = phi i32 [ -25, %18 ], [ 0, %62 ], [ %24, %23 ], [ %46, %44 ], [ %60, %58 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_cropcap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 1, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %10, align 4
  %16 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %18, align 4
  %24 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_cropcap, ptr %0, i32 0, i32 3, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, ptr noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_crop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.v4l2_selection, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %7, i8 0, i64 60, i1 false)
  %8 = load i32, ptr %3, align 4
  store i32 %8, ptr %5, align 4
  switch i32 %8, label %11 [
    i32 2, label %9
    i32 10, label %9
    i32 3, label %9
    i32 8, label %9
    i32 5, label %9
    i32 7, label %9
    i32 12, label %9
    i32 14, label %9
  ]

9:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  store i32 256, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ 0, %9 ], [ 256, %4 ]
  %13 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 17
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  store i32 %12, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %11
  switch i32 %8, label %23 [
    i32 9, label %21
    i32 10, label %20
  ]

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ 2, %20 ], [ 1, %19 ]
  store i32 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 88
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.v4l2_crop, ptr %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %29, ptr noundef align 4 dereferenceable(16) %30, i32 16, i1 false)
  br label %31

31:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_crop(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = getelementptr inbounds %struct.v4l2_crop, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.v4l2_crop, ptr %0, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_crop, ptr %0, i32 0, i32 1, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %10, align 4
  %16 = getelementptr inbounds %struct.v4l2_crop, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, ptr noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %15, i32 noundef %17) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_crop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.v4l2_selection, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 3
  %11 = getelementptr inbounds %struct.v4l2_crop, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %10, ptr noundef align 4 dereferenceable(16) %11, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.v4l2_selection, ptr %5, i32 0, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %12, i8 0, i32 36, i1 false)
  %13 = add i32 %7, -2
  %14 = icmp ult i32 %13, 13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds [13 x i32], ptr @switch.table.v4l_s_crop, i32 0, i32 %13
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds [13 x i32], ptr @switch.table.v4l_s_crop.464, i32 0, i32 %13
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i32 [ %17, %15 ], [ 256, %4 ]
  %22 = phi i32 [ %19, %15 ], [ 0, %4 ]
  store i32 %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 17
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 %21, ptr %8, align 4
  br label %28

28:                                               ; preds = %27, %20
  switch i32 %7, label %32 [
    i32 9, label %30
    i32 10, label %29
  ]

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32 [ 2, %29 ], [ 1, %28 ]
  store i32 %31, ptr %5, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 89
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_jpegcomp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_jpegcompression(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_jpegcomp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 91
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_querystd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 22
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 64
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_try_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = load i32, ptr %3, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %170

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 4
  %11 = add i32 %10, -9
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 8) #13
  store i8 %16, ptr %14, align 4
  br label %26

17:                                               ; preds = %9
  %18 = add i32 %10, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -17970434
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  store i32 -17970434, ptr %21, align 4
  %25 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %25, i8 0, i32 16, i1 false) #13
  br label %26

26:                                               ; preds = %24, %20, %17, %13
  switch i32 %10, label %170 [
    i32 1, label %27
    i32 9, label %43
    i32 3, label %62
    i32 4, label %70
    i32 6, label %78
    i32 2, label %86
    i32 10, label %95
    i32 8, label %114
    i32 5, label %122
    i32 7, label %130
    i32 11, label %138
    i32 12, label %146
    i32 13, label %154
    i32 14, label %162
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 36
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %170, label %31, !prof !20

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %3, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(152) %32, i8 0, i32 152, i1 false)
  %33 = load ptr, ptr %28, align 4
  %34 = tail call i32 %33(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %35, align 4
  %36 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %170

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 11, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %42, i8 0, i64 16, i1 false) #13
  br label %170

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 44
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %170, label %47, !prof !20

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %3, i32 189
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %48, i8 0, i32 15, i1 false)
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %52, %47
  %53 = phi i32 [ %55, %52 ], [ 0, %47 ]
  %54 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 %53, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %54, i8 0, i32 12, i1 false)
  %55 = add nuw nsw i32 %53, 1
  %56 = load i8, ptr %49, align 4
  %57 = zext i8 %56 to i32
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %52, label %59

59:                                               ; preds = %52, %47
  %60 = load ptr, ptr %44, align 4
  %61 = tail call i32 %60(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

62:                                               ; preds = %26
  %63 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 37
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %170, label %66, !prof !20

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %3, i32 44
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(160) %67, i8 0, i32 160, i1 false)
  %68 = load ptr, ptr %63, align 4
  %69 = tail call i32 %68(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

70:                                               ; preds = %26
  %71 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 40
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %170, label %74, !prof !20

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %3, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(164) %75, i8 0, i32 164, i1 false)
  %76 = load ptr, ptr %71, align 4
  %77 = tail call i32 %76(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

78:                                               ; preds = %26
  %79 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 42
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %170, label %82, !prof !20

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %3, i32 108
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %83, i8 0, i32 96, i1 false)
  %84 = load ptr, ptr %79, align 4
  %85 = tail call i32 %84(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

86:                                               ; preds = %26
  %87 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 38
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %170, label %90, !prof !20

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %3, i32 52
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(152) %91, i8 0, i32 152, i1 false)
  %92 = load ptr, ptr %87, align 4
  %93 = tail call i32 %92(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %94 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %94, align 4
  br label %170

95:                                               ; preds = %26
  %96 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 45
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %170, label %99, !prof !20

99:                                               ; preds = %95
  %100 = getelementptr i8, ptr %3, i32 189
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %100, i8 0, i32 15, i1 false)
  %101 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 6
  %102 = load i8, ptr %101, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %104, %99
  %105 = phi i32 [ %107, %104 ], [ 0, %99 ]
  %106 = getelementptr %struct.v4l2_format, ptr %3, i32 0, i32 1, i32 0, i32 5, i32 %105, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %106, i8 0, i32 12, i1 false)
  %107 = add nuw nsw i32 %105, 1
  %108 = load i8, ptr %101, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %104, label %111

111:                                              ; preds = %104, %99
  %112 = load ptr, ptr %96, align 4
  %113 = tail call i32 %112(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

114:                                              ; preds = %26
  %115 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 39
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %170, label %118, !prof !20

118:                                              ; preds = %114
  %119 = getelementptr i8, ptr %3, i32 44
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(160) %119, i8 0, i32 160, i1 false)
  %120 = load ptr, ptr %115, align 4
  %121 = tail call i32 %120(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

122:                                              ; preds = %26
  %123 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 41
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %170, label %126, !prof !20

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %3, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(164) %127, i8 0, i32 164, i1 false)
  %128 = load ptr, ptr %123, align 4
  %129 = tail call i32 %128(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

130:                                              ; preds = %26
  %131 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 43
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %170, label %134, !prof !20

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %3, i32 108
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %135, i8 0, i32 96, i1 false)
  %136 = load ptr, ptr %131, align 4
  %137 = tail call i32 %136(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

138:                                              ; preds = %26
  %139 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 46
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %170, label %142, !prof !20

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %143, i8 0, i32 192, i1 false)
  %144 = load ptr, ptr %139, align 4
  %145 = tail call i32 %144(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

146:                                              ; preds = %26
  %147 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 47
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %170, label %150, !prof !20

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %151, i8 0, i32 192, i1 false)
  %152 = load ptr, ptr %147, align 4
  %153 = tail call i32 %152(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

154:                                              ; preds = %26
  %155 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 48
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %170, label %158, !prof !20

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %159, i8 0, i32 192, i1 false)
  %160 = load ptr, ptr %155, align 4
  %161 = tail call i32 %160(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

162:                                              ; preds = %26
  %163 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 49
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166, !prof !20

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %3, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(192) %167, i8 0, i32 192, i1 false)
  %168 = load ptr, ptr %163, align 4
  %169 = tail call i32 %168(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %170

170:                                              ; preds = %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %111, %95, %90, %86, %82, %78, %74, %70, %66, %62, %59, %43, %39, %31, %27, %26, %4
  %171 = phi i32 [ %169, %166 ], [ %161, %158 ], [ %153, %150 ], [ %145, %142 ], [ %137, %134 ], [ %129, %126 ], [ %121, %118 ], [ %113, %111 ], [ %93, %90 ], [ %85, %82 ], [ %77, %74 ], [ %69, %66 ], [ %61, %59 ], [ %7, %4 ], [ %34, %39 ], [ %34, %31 ], [ -22, %162 ], [ -22, %154 ], [ -22, %146 ], [ -22, %138 ], [ -22, %130 ], [ -22, %122 ], [ -22, %114 ], [ -22, %95 ], [ -22, %86 ], [ -22, %78 ], [ -22, %70 ], [ -22, %62 ], [ -22, %43 ], [ -22, %27 ], [ -22, %26 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_enumaudio(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 79
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_enumaudout(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 82
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_priority(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @v4l2_prio_max(ptr noundef %7) #13
  store i32 %8, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_priority(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fh, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %3, align 4
  %17 = tail call i32 @v4l2_prio_change(ptr noundef %14, ptr noundef %15, i32 noundef %16) #13
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %17, %10 ], [ -25, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_sliced_vbi_cap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(100) %3, i8 0, i32 100, i1 false)
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 104
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_sliced_vbi_cap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 15
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ @.str.30, %2 ]
  %11 = load i16, ptr %0, align 4
  %12 = zext i16 %11 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, ptr noundef %10, i32 noundef %12) #14
  %14 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %0, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi i32 [ 0, %9 ], [ %24, %15 ]
  %17 = getelementptr [24 x i16], ptr %14, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %0, i32 0, i32 1, i32 1, i32 %16
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, i32 noundef %16, i32 noundef %19, i32 noundef %22) #14
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %26, label %15

26:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_log_status(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, ptr noundef %10) #14
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 105
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %1, ptr noundef %2) #13
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.418, ptr noundef %19) #14
  br label %21

21:                                               ; preds = %18, %12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_newline(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_ext_ctrls(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = icmp eq ptr %2, null
  %14 = or i1 %13, %9
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @v4l2_g_ext_ctrls(ptr noundef nonnull %17, ptr noundef %5, ptr noundef %23, ptr noundef %3) #13
  br label %72

25:                                               ; preds = %15, %4
  %26 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_device, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @v4l2_g_ext_ctrls(ptr noundef nonnull %27, ptr noundef %5, ptr noundef %33, ptr noundef %3) #13
  br label %72

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 75
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = icmp eq i32 %11, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr %struct.v4l2_ext_control, ptr %46, i32 %45, i32 2
  store i32 0, ptr %47, align 1
  %48 = add nuw i32 %45, 1
  %49 = load i32, ptr %10, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %44, label %51

51:                                               ; preds = %44, %39
  %52 = phi i32 [ 0, %39 ], [ %49, %44 ]
  %53 = load i32, ptr %3, align 4
  switch i32 %53, label %54 [
    i32 251723776, label %68
    i32 251658240, label %69
    i32 0, label %69
  ]

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %65, %56
  %60 = phi i32 [ 0, %56 ], [ %66, %65 ]
  %61 = getelementptr %struct.v4l2_ext_control, ptr %58, i32 %60
  %62 = load i32, ptr %61, align 1
  %63 = and i32 %62, 268369920
  %64 = icmp eq i32 %63, %53
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = add nuw i32 %60, 1
  %67 = icmp eq i32 %66, %52
  br i1 %67, label %69, label %59

68:                                               ; preds = %59, %51
  store i32 %52, ptr %12, align 4
  br label %72

69:                                               ; preds = %65, %54, %51, %51
  %70 = load ptr, ptr %36, align 4
  %71 = tail call i32 %70(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %72

72:                                               ; preds = %69, %68, %35, %29, %19
  %73 = phi i32 [ %24, %19 ], [ %34, %29 ], [ -25, %35 ], [ %71, %69 ], [ -22, %68 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_ext_controls(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.419, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #14
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %0, i32 0, i32 5
  br label %15

15:                                               ; preds = %35, %13
  %16 = phi i32 [ 0, %13 ], [ %36, %35 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr %struct.v4l2_ext_control, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 1
  %20 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, ptr noundef nonnull %20) #14
  br label %24

24:                                               ; preds = %22, %15
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr %struct.v4l2_ext_control, ptr %25, i32 %16, i32 1
  %27 = load i32, ptr %26, align 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr %struct.v4l2_ext_control, ptr %25, i32 %16, i32 3
  %31 = load i32, ptr %30, align 1
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.421, i32 noundef %19, i32 noundef %31) #14
  br label %35

33:                                               ; preds = %24
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422, i32 noundef %19, i32 noundef %27) #14
  br label %35

35:                                               ; preds = %33, %29
  %36 = add nuw i32 %16, 1
  %37 = load i32, ptr %4, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %15, label %39

39:                                               ; preds = %35, %2
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_ext_ctrls(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = icmp eq ptr %2, null
  %14 = or i1 %13, %9
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @v4l2_s_ext_ctrls(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef %5, ptr noundef %23, ptr noundef %3) #13
  br label %72

25:                                               ; preds = %15, %4
  %26 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_device, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @v4l2_s_ext_ctrls(ptr noundef null, ptr noundef nonnull %27, ptr noundef %5, ptr noundef %33, ptr noundef %3) #13
  br label %72

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 76
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = icmp eq i32 %11, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr %struct.v4l2_ext_control, ptr %46, i32 %45, i32 2
  store i32 0, ptr %47, align 1
  %48 = add nuw i32 %45, 1
  %49 = load i32, ptr %10, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %44, label %51

51:                                               ; preds = %44, %39
  %52 = phi i32 [ 0, %39 ], [ %49, %44 ]
  %53 = load i32, ptr %3, align 4
  switch i32 %53, label %54 [
    i32 251723776, label %68
    i32 251658240, label %68
    i32 0, label %69
  ]

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %65, %56
  %60 = phi i32 [ 0, %56 ], [ %66, %65 ]
  %61 = getelementptr %struct.v4l2_ext_control, ptr %58, i32 %60
  %62 = load i32, ptr %61, align 1
  %63 = and i32 %62, 268369920
  %64 = icmp eq i32 %63, %53
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = add nuw i32 %60, 1
  %67 = icmp eq i32 %66, %52
  br i1 %67, label %69, label %59

68:                                               ; preds = %59, %51, %51
  store i32 %52, ptr %12, align 4
  br label %72

69:                                               ; preds = %65, %54, %51
  %70 = load ptr, ptr %36, align 4
  %71 = tail call i32 %70(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %72

72:                                               ; preds = %69, %68, %35, %29, %19
  %73 = phi i32 [ %24, %19 ], [ %34, %29 ], [ -25, %35 ], [ %71, %69 ], [ -22, %68 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_try_ext_ctrls(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = icmp eq ptr %2, null
  %14 = or i1 %13, %9
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @v4l2_try_ext_ctrls(ptr noundef nonnull %17, ptr noundef %5, ptr noundef %23, ptr noundef %3) #13
  br label %73

25:                                               ; preds = %15, %4
  %26 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_device, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @v4l2_try_ext_ctrls(ptr noundef nonnull %27, ptr noundef %5, ptr noundef %33, ptr noundef %3) #13
  br label %73

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 77
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = icmp eq i32 %11, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr %struct.v4l2_ext_control, ptr %46, i32 %45, i32 2
  store i32 0, ptr %47, align 1
  %48 = add nuw i32 %45, 1
  %49 = load i32, ptr %10, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %44, label %51

51:                                               ; preds = %44, %39
  %52 = phi i32 [ 0, %39 ], [ %49, %44 ]
  %53 = load i32, ptr %3, align 4
  switch i32 %53, label %54 [
    i32 251723776, label %68
    i32 251658240, label %68
    i32 0, label %70
  ]

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %3, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %65, %56
  %60 = phi i32 [ 0, %56 ], [ %66, %65 ]
  %61 = getelementptr %struct.v4l2_ext_control, ptr %58, i32 %60
  %62 = load i32, ptr %61, align 1
  %63 = and i32 %62, 268369920
  %64 = icmp eq i32 %63, %53
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = add nuw i32 %60, 1
  %67 = icmp eq i32 %66, %52
  br i1 %67, label %70, label %59

68:                                               ; preds = %59, %51, %51
  %69 = phi i32 [ %52, %51 ], [ %52, %51 ], [ %60, %59 ]
  store i32 %69, ptr %12, align 4
  br label %73

70:                                               ; preds = %65, %54, %51
  %71 = load ptr, ptr %36, align 4
  %72 = tail call i32 %71(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %73

73:                                               ; preds = %70, %68, %35, %29, %19
  %74 = phi i32 [ %24, %19 ], [ %34, %29 ], [ -25, %35 ], [ %72, %70 ], [ -22, %68 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_enum_framesizes(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 107
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_frmsizeenum(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.423, i32 noundef %3, ptr noundef %4, i32 noundef %6) #14
  %8 = load i32, ptr %5, align 4
  switch i32 %8, label %29 [
    i32 1, label %9
    i32 3, label %15
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424, i32 noundef %11, i32 noundef %13) #14
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %0, i32 0, i32 3, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #14
  br label %31

29:                                               ; preds = %2
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  br label %31

31:                                               ; preds = %29, %15, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_enum_frameintervals(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 108
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_frmivalenum(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, i32 noundef %3, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %12 = load i32, ptr %9, align 4
  switch i32 %12, label %33 [
    i32 1, label %13
    i32 3, label %19
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.427, i32 noundef %15, i32 noundef %17) #14
  br label %35

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %0, i32 0, i32 5, i32 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.428, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #14
  br label %35

33:                                               ; preds = %2
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386) #14
  br label %35

35:                                               ; preds = %33, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_enc_index(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 92
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_enc_idx(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_enc_idx, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.429, i32 noundef %3, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_encoder_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 93
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_encoder_cmd(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.430, i32 noundef %3, i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_try_encoder_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @v4l_dbg_s_register(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #7 {
  ret i32 -25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_dbg_register(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.431, i32 noundef %3) #14
  %5 = load i32, ptr %0, align 1
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %0, i32 0, i32 1
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.432, i32 noundef 32, ptr noundef %7) #14
  br label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %7, align 1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, i32 noundef %11) #14
  br label %13

13:                                               ; preds = %10, %8
  %14 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %0, i32 0, i32 3
  %17 = load i64, ptr %16, align 1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.434, i64 noundef %15, i64 noundef %17) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @v4l_dbg_g_register(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #7 {
  ret i32 -25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_hw_freq_seek(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = tail call i32 @v4l_enable_media_source(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %10, 2
  %14 = select i1 %13, i32 1, i32 2
  %15 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 106
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %22

22:                                               ; preds = %18, %12, %8, %4
  %23 = phi i32 [ %21, %18 ], [ %6, %4 ], [ -22, %8 ], [ -22, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_hw_freq_seek(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.435, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_s_dv_timings(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 109
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_dv_timings(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 1
  %9 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 4
  %10 = load i64, ptr %9, align 1
  %11 = load i32, ptr %6, align 1
  %12 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 1
  %14 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 3
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 6
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 7
  %19 = load i32, ptr %18, align 1
  %20 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 8
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 9
  %23 = load i32, ptr %22, align 1
  %24 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 10
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 11
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 12
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 13
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 14
  %33 = load i32, ptr %32, align 1
  %34 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 15
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %0, i32 0, i32 1, i32 0, i32 16
  %37 = load i32, ptr %36, align 1
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, i32 noundef %8, i64 noundef %10, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #14
  br label %41

39:                                               ; preds = %2
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.437, i32 noundef %3) #14
  br label %41

41:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_g_dv_timings(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 110
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_dqevent(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2048
  %8 = tail call i32 @v4l2_event_dequeue(ptr noundef %2, ptr noundef %3, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_event(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 4, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.438, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11, i64 noundef %13) #14
  %15 = load i32, ptr %0, align 8
  switch i32 %15, label %58 [
    i32 1, label %16
    i32 3, label %27
    i32 4, label %54
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 8
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = zext i8 %18 to i32
  %22 = getelementptr [10 x ptr], ptr @v4l2_field_names, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %23, %20 ], [ @.str.30, %16 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.439, ptr noundef %25) #14
  br label %58

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.440, i32 noundef %29, i32 noundef %31) #14
  %33 = load i32, ptr %30, align 4
  %34 = icmp eq i32 %33, 5
  %35 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 2
  br i1 %34, label %36, label %39

36:                                               ; preds = %27
  %37 = load i64, ptr %35, align 8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.441, i64 noundef %37) #14
  br label %42

39:                                               ; preds = %27
  %40 = load i32, ptr %35, align 8
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.442, i32 noundef %40) #14
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.443, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #14
  br label %58

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.v4l2_event, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.444, i32 noundef %56) #14
  br label %58

58:                                               ; preds = %54, %42, %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_subscribe_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 116
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_event_subscription(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_event_subscription, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_event_subscription, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.445, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_unsubscribe_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 117
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_create_bufs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %3, i32 224
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %10, i8 0, i32 24, i1 false)
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, -9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 8) #13
  store i8 %17, ptr %15, align 4
  br label %27

18:                                               ; preds = %9
  %19 = add i32 %11, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 5, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -17970434
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  store i32 -17970434, ptr %22, align 4
  %26 = getelementptr %struct.v4l2_create_buffers, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %26, i8 0, i32 16, i1 false) #13
  br label %27

27:                                               ; preds = %25, %21, %18, %14
  %28 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 55
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %3, i32 0, i32 3, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 -17970434, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %27, %4
  %37 = phi i32 [ %7, %4 ], [ %30, %27 ], [ %30, %34 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_create_buffers(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr [5 x ptr], ptr @v4l2_memory_names, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ @.str.30, %2 ]
  %14 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.446, i32 noundef %3, i32 noundef %5, ptr noundef %13, i32 noundef %15) #14
  %17 = getelementptr inbounds %struct.v4l2_create_buffers, ptr %0, i32 0, i32 3
  tail call void @v4l_print_format(ptr noundef %17, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_prepare_buf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_buffer, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @check_fmt(ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 56
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %12, %9 ], [ %7, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_g_selection(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  switch i32 %5, label %9 [
    i32 9, label %7
    i32 10, label %6
  ]

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i32 [ 2, %6 ], [ 1, %4 ]
  store i32 %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 88
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store i32 %5, ptr %3, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_selection(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr [15 x ptr], ptr @v4l2_type_names, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ @.str.30, %2 ]
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 3, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %14, align 4
  %20 = getelementptr inbounds %struct.v4l2_selection, ptr %0, i32 0, i32 3, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.447, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %19, i32 noundef %21) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_s_selection(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  switch i32 %5, label %9 [
    i32 9, label %7
    i32 10, label %6
  ]

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i32 [ 2, %6 ], [ 1, %4 ]
  store i32 %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 89
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store i32 %5, ptr %3, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_decoder_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 95
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_decoder_cmd(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.430, i32 noundef %3, i32 noundef %5) #14
  %7 = load i32, ptr %0, align 8
  switch i32 %7, label %18 [
    i32 0, label %8
    i32 1, label %14
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.anon.88, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.448, i32 noundef %10, i32 noundef %12) #14
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.449, i64 noundef %16) #14
  br label %18

18:                                               ; preds = %14, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_try_decoder_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 96
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_enum_dv_timings(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 112
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_enum_dv_timings(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.450, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1
  %10 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 4
  %13 = load i64, ptr %12, align 1
  %14 = load i32, ptr %9, align 1
  %15 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 3
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 6
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 7
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 8
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 9
  %26 = load i32, ptr %25, align 1
  %27 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 10
  %28 = load i32, ptr %27, align 1
  %29 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 11
  %30 = load i32, ptr %29, align 1
  %31 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 12
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 13
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 14
  %36 = load i32, ptr %35, align 1
  %37 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 15
  %38 = load i32, ptr %37, align 1
  %39 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 16
  %40 = load i32, ptr %39, align 1
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.436, i32 noundef %11, i64 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40) #14
  br label %44

42:                                               ; preds = %2
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.437, i32 noundef %6) #14
  br label %44

44:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_query_dv_timings(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 111
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_stub_dv_timings_cap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 113
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_dv_timings_cap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 4
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 5
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %0, i32 0, i32 3, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.451, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef %19, i32 noundef %21) #14
  br label %25

23:                                               ; preds = %2
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.452, i32 noundef %3) #14
  br label %25

25:                                               ; preds = %23, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_enum_freq_bands(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.v4l2_tuner, align 4
  %6 = alloca %struct.v4l2_modulator, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %22, label %95

16:                                               ; preds = %4
  %17 = icmp eq i32 %9, 2
  %18 = select i1 %17, i32 1, i32 2
  %19 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %16, %11
  %23 = phi i32 [ %18, %16 ], [ %13, %11 ]
  %24 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 103
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %29 = icmp eq i32 %28, -25
  br i1 %29, label %30, label %95

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 25
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 536870912
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #13
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(80) %36, i8 0, i64 80, i1 false)
  %37 = load i32, ptr %3, align 4
  store i32 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.v4l2_tuner, ptr %5, i32 0, i32 2
  store i32 %23, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 99
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.v4l2_tuner, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 1024
  %51 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.v4l2_tuner, ptr %5, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.v4l2_tuner, ptr %5, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  %58 = icmp eq i32 %23, 1
  %59 = select i1 %58, i32 4, i32 2
  %60 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %47, %42, %35
  %62 = phi i32 [ 0, %47 ], [ -22, %35 ], [ %45, %42 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #13
  br label %95

63:                                               ; preds = %30
  %64 = getelementptr %struct.video_device, ptr %7, i32 0, i32 25, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 4194304
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %95, label %68

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #13
  %69 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %69, i8 0, i64 64, i1 false)
  %70 = load i32, ptr %3, align 4
  store i32 %70, ptr %6, align 4
  %71 = icmp eq i32 %23, 1
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 85
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.v4l2_modulator, ptr %6, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 1024
  %85 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 3
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.v4l2_modulator, ptr %6, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 4
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.v4l2_modulator, ptr %6, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 5
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %3, i32 0, i32 6
  store i32 4, ptr %92, align 4
  br label %93

93:                                               ; preds = %81, %76, %72, %68
  %94 = phi i32 [ 0, %81 ], [ -22, %68 ], [ -22, %72 ], [ %79, %76 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #13
  br label %95

95:                                               ; preds = %93, %63, %61, %27, %16, %11
  %96 = phi i32 [ %62, %61 ], [ %94, %93 ], [ -22, %11 ], [ -22, %16 ], [ %28, %27 ], [ -25, %63 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_freq_band(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.453, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @v4l_dbg_g_chip_info(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #7 {
  ret i32 -25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_dbg_chip_info(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.431, i32 noundef %3) #14
  %5 = load i32, ptr %0, align 1
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %0, i32 0, i32 1
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.432, i32 noundef 32, ptr noundef %7) #14
  br label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %7, align 1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, i32 noundef %11) #14
  br label %13

13:                                               ; preds = %10, %8
  %14 = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %0, i32 0, i32 1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.454, i32 noundef 32, ptr noundef %14) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @v4l_query_ext_ctrl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @video_devdata(ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.v4l2_fh, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @v4l2_query_ext_ctrl(ptr noundef nonnull %14, ptr noundef %3) #13
  br label %30

18:                                               ; preds = %12, %4
  %19 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @v4l2_query_ext_ctrl(ptr noundef nonnull %20, ptr noundef %3) #13
  br label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %0, i32 0, i32 72
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  br label %30

30:                                               ; preds = %28, %24, %22, %16
  %31 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ -25, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_query_ext_ctrl(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 6
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 11, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 11, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr %struct.v4l2_query_ext_ctrl, ptr %0, i32 0, i32 11, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.455, i32 noundef %3, i32 noundef %5, i32 noundef 32, ptr noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_fmt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @video_devdata(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = icmp ne i32 %7, 1
  %11 = icmp ne i32 %7, 4
  %12 = icmp eq i32 %7, 5
  br label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 61443
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %15, 142606336
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i1 [ %12, %9 ], [ false, %13 ]
  %22 = phi i1 [ %11, %9 ], [ true, %13 ]
  %23 = phi i1 [ %10, %9 ], [ true, %13 ]
  %24 = phi i1 [ false, %9 ], [ %17, %13 ]
  %25 = phi i1 [ true, %9 ], [ %19, %13 ]
  %26 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  %29 = icmp eq i32 %27, 0
  %30 = icmp eq ptr %5, null
  br i1 %30, label %133, label %31

31:                                               ; preds = %20
  switch i32 %1, label %132 [
    i32 1, label %32
    i32 9, label %44
    i32 3, label %52
    i32 2, label %59
    i32 10, label %70
    i32 8, label %77
    i32 4, label %84
    i32 5, label %90
    i32 6, label %96
    i32 7, label %102
    i32 11, label %108
    i32 12, label %114
    i32 13, label %120
    i32 14, label %126
  ]

32:                                               ; preds = %31
  %33 = select i1 %24, i1 true, i1 %21
  %34 = xor i1 %33, true
  %35 = select i1 %34, i1 true, i1 %28
  br i1 %35, label %132, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %133

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %133

44:                                               ; preds = %31
  %45 = select i1 %24, i1 true, i1 %21
  %46 = xor i1 %45, true
  %47 = select i1 %46, i1 true, i1 %28
  br i1 %47, label %132, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %132, label %133

52:                                               ; preds = %31
  %53 = xor i1 %24, true
  %54 = select i1 %53, i1 true, i1 %28
  br i1 %54, label %132, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %133

59:                                               ; preds = %31
  %60 = xor i1 %24, true
  %61 = select i1 %60, i1 true, i1 %29
  br i1 %61, label %132, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %133

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %132, label %133

70:                                               ; preds = %31
  %71 = xor i1 %24, true
  %72 = select i1 %71, i1 true, i1 %29
  br i1 %72, label %132, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %132, label %133

77:                                               ; preds = %31
  %78 = xor i1 %24, true
  %79 = select i1 %78, i1 true, i1 %29
  br i1 %79, label %132, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %132, label %133

84:                                               ; preds = %31
  %85 = select i1 %23, i1 true, i1 %28
  br i1 %85, label %132, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %132, label %133

90:                                               ; preds = %31
  %91 = select i1 %23, i1 true, i1 %29
  br i1 %91, label %132, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 13
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %132, label %133

96:                                               ; preds = %31
  %97 = select i1 %23, i1 true, i1 %28
  br i1 %97, label %132, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 14
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %132, label %133

102:                                              ; preds = %31
  %103 = select i1 %23, i1 true, i1 %29
  br i1 %103, label %132, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %132, label %133

108:                                              ; preds = %31
  %109 = select i1 %22, i1 true, i1 %28
  br i1 %109, label %132, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 18
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %133

114:                                              ; preds = %31
  %115 = select i1 %22, i1 true, i1 %29
  br i1 %115, label %132, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 19
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %133

120:                                              ; preds = %31
  %121 = select i1 %25, i1 true, i1 %28
  br i1 %121, label %132, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 20
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %133

126:                                              ; preds = %31
  %127 = select i1 %25, i1 true, i1 %29
  br i1 %127, label %132, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.v4l2_ioctl_ops, ptr %5, i32 0, i32 21
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %126, %122, %120, %116, %114, %110, %108, %104, %102, %98, %96, %92, %90, %86, %84, %80, %77, %73, %70, %66, %59, %55, %52, %48, %44, %40, %32, %31
  br label %133

133:                                              ; preds = %132, %128, %122, %116, %110, %104, %98, %92, %86, %80, %73, %66, %62, %55, %48, %40, %36, %20
  %134 = phi i32 [ -22, %132 ], [ -22, %20 ], [ 0, %40 ], [ 0, %36 ], [ 0, %48 ], [ 0, %55 ], [ 0, %66 ], [ 0, %62 ], [ 0, %73 ], [ 0, %80 ], [ 0, %86 ], [ 0, %92 ], [ 0, %98 ], [ 0, %104 ], [ 0, %110 ], [ 0, %116 ], [ 0, %122 ], [ 0, %128 ]
  ret i32 %134
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l_enable_media_source(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_queryctrl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_querymenu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_prio_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_prio_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_try_ext_ctrls(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_dequeue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_query_ext_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v4l2_dqbuf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_v4l2_qbuf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_prio_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @v4l_print_default(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155314157, i64 2155314657, i64 2155314194, i64 2155314250, i64 2155314284, i64 2155314308, i64 2155314349, i64 2155314370, i64 2155314398, i64 2155314432}
!10 = !{!"auto-init"}
!11 = !{i64 2151167258, i64 2151167283}
!12 = !{i64 3663370}
!13 = !{i64 3663567}
!14 = !{i64 2151148846}
!15 = !{i64 2151167836, i64 2151167861}
!16 = !{i64 2155233181}
!17 = !{i64 2155233333}
!18 = !{i64 2155245592}
!19 = !{i64 2155245742}
!20 = !{!"branch_weights", i32 1, i32 2000}
