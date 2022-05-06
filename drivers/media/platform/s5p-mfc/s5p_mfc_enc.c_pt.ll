; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_enc.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_enc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_codec_ops = type { ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfc_control = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, [2 x i32], i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.s5p_mfc_fmt = type { i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.103, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.100, i32 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, i32 }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.102 }
%struct.anon.102 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.103 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.79, i32, i32, %union.anon.81 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.79 = type { i32 }
%union.anon.81 = type { i32 }
%struct.v4l2_plane = type { i32, i32, %union.anon.80, i32, [11 x i32] }
%union.anon.80 = type { i32 }
%struct.v4l2_event = type { i32, %union.anon.110, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.110 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.111, i32, i32, i32, i32, i32 }
%union.anon.111 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { [8 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@encoder_codec_ops = internal constant %struct.s5p_mfc_codec_ops { ptr @enc_pre_seq_start, ptr @enc_post_seq_start, ptr @enc_pre_frame_start, ptr @enc_post_frame_start }, align 4
@s5p_mfc_enc_qops = internal global %struct.vb2_ops { ptr @s5p_mfc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @s5p_mfc_buf_init, ptr @s5p_mfc_buf_prepare, ptr null, ptr null, ptr @s5p_mfc_start_streaming, ptr @s5p_mfc_stop_streaming, ptr @s5p_mfc_buf_queue, ptr null }, align 4
@s5p_mfc_enc_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr @vidioc_expbuf, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_encoder_cmd, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s:%d: v4l2_ctrl_handler_init failed\0A\00", align 1
@__func__.s5p_mfc_enc_ctrls_setup = private unnamed_addr constant [24 x i8] c"s5p_mfc_enc_ctrls_setup\00", align 1
@controls = internal global [116 x %struct.mfc_control] [%struct.mfc_control { i32 10029515, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 12, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029533, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029532, i32 1, [32 x i8] zeroinitializer, i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029531, i32 1, [32 x i8] zeroinitializer, i32 1900, i32 1073741823, i32 1, i32 0, i32 1900, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029526, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031364, i32 2, [32 x i8] c"Padding Control Enable\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031365, i32 1, [32 x i8] c"Padding Color YUV Value\00\00\00\00\00\00\00\00\00", i32 0, i32 33554431, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029527, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029519, i32 1, [32 x i8] zeroinitializer, i32 1, i32 1073741823, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031367, i32 1, [32 x i8] c"Rate Control Reaction Coeff.\00\00\00\00", i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031363, i32 3, [32 x i8] c"Force frame type\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029541, i32 4, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029534, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029539, i32 1, [32 x i8] c"Horizontal MV Search Range\00\00\00\00\00\00", i32 16, i32 128, i32 16, i32 0, i32 32, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029540, i32 1, [32 x i8] c"Vertical MV Search Range\00\00\00\00\00\00\00\00", i32 16, i32 128, i32 16, i32 0, i32 32, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029668, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029528, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031362, i32 3, [32 x i8] c"Frame Skip Enable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029958, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031366, i32 2, [32 x i8] c"Fixed Target Bit Enable\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029514, i32 1, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029675, i32 3, [32 x i8] zeroinitializer, i32 0, i32 16, i32 0, i32 -22, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029671, i32 3, [32 x i8] zeroinitializer, i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029717, i32 3, [32 x i8] zeroinitializer, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029674, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029672, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029673, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029669, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031414, i32 1, [32 x i8] c"The Number of Ref. Pic for P\00\00\00\00", i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029667, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029530, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029662, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029665, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029666, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 51, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029663, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029664, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029612, i32 1, [32 x i8] c"H263 I-Frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029615, i32 1, [32 x i8] c"H263 Minimum QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029616, i32 1, [32 x i8] c"H263 Maximum QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 31, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029613, i32 1, [32 x i8] c"H263 P frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029614, i32 1, [32 x i8] c"H263 B frame QP value\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029712, i32 1, [32 x i8] c"MPEG4 I-Frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029715, i32 1, [32 x i8] c"MPEG4 Minimum QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029716, i32 1, [32 x i8] c"MPEG4 Maximum QP value\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 51, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029713, i32 1, [32 x i8] c"MPEG4 P frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029714, i32 1, [32 x i8] c"MPEG4 B frame QP value\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031411, i32 2, [32 x i8] c"H264 Dark Reg Adaptive RC\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031412, i32 2, [32 x i8] c"H264 Smooth Reg Adaptive RC\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031413, i32 2, [32 x i8] c"H264 Static Reg Adaptive RC\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031410, i32 2, [32 x i8] c"H264 Activity Reg Adaptive RC\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029678, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029679, i32 3, [32 x i8] zeroinitializer, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029677, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029676, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029516, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029670, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029718, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029719, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029812, i32 9, [32 x i8] zeroinitializer, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029813, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029814, i32 9, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029815, i32 1, [32 x i8] zeroinitializer, i32 0, i32 63, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029816, i32 1, [32 x i8] zeroinitializer, i32 0, i32 7, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029817, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029818, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029820, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 127, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029819, i32 1, [32 x i8] zeroinitializer, i32 0, i32 11, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029821, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 10, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029822, i32 1, [32 x i8] zeroinitializer, i32 0, i32 127, i32 1, i32 0, i32 10, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029823, i32 3, [32 x i8] zeroinitializer, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029914, i32 1, [32 x i8] c"HEVC I Frame QP Value\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029915, i32 1, [32 x i8] c"HEVC P Frame QP Value\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029916, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029912, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029913, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029927, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029928, i32 3, [32 x i8] zeroinitializer, i32 0, i32 12, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029930, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029929, i32 1, [32 x i8] zeroinitializer, i32 1, i32 65535, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029931, i32 1, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029955, i32 1, [32 x i8] zeroinitializer, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029935, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029938, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029937, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029939, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029932, i32 3, [32 x i8] zeroinitializer, i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029917, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029918, i32 3, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029919, i32 1, [32 x i8] zeroinitializer, i32 0, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029920, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029921, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029922, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029923, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029924, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029925, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029926, i32 1, [32 x i8] zeroinitializer, i32 0, i32 51, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029948, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029949, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029950, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029951, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029952, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029953, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029954, i32 1, [32 x i8] zeroinitializer, i32 -2147483648, i32 2147483647, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029940, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029941, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029942, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029944, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029945, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029943, i32 1, [32 x i8] zeroinitializer, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029946, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029936, i32 1, [32 x i8] zeroinitializer, i32 0, i32 65535, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029933, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029934, i32 1, [32 x i8] zeroinitializer, i32 -6, i32 6, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029947, i32 3, [32 x i8] zeroinitializer, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029956, i32 1, [32 x i8] zeroinitializer, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 9963816, i32 1, [32 x i8] c"Minimum number of output bufs\00\00\00", i32 1, i32 32, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 1 }], align 4
@s5p_mfc_enc_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @s5p_mfc_enc_g_v_ctrl, ptr null, ptr @s5p_mfc_enc_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\013%s:%d: Adding control (%d) failed\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\017%s:%d: src=%d, dst=%d, state=%d\0A\00", align 1
@__func__.s5p_mfc_ctx_ready = private unnamed_addr constant [18 x i8] c"s5p_mfc_ctx_ready\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\017%s:%d: ctx is not ready\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Encoded slice type: %d\0A\00", align 1
@__func__.enc_post_frame_start = private unnamed_addr constant [21 x i8] c"enc_post_frame_start\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\017%s:%d: Encoded stream size: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\017%s:%d: Display order: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\017%s:%d: enc src count: %d, enc ref count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013%s:%d: invalid state: %d\0A\00", align 1
@__func__.s5p_mfc_queue_setup = private unnamed_addr constant [20 x i8] c"s5p_mfc_queue_setup\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%s:%d: invalid queue type: %d\0A\00", align 1
@__func__.s5p_mfc_buf_init = private unnamed_addr constant [17 x i8] c"s5p_mfc_buf_init\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\013%s:%d: invalid plane number for the format\0A\00", align 1
@__func__.check_vb_with_fmt = private unnamed_addr constant [18 x i8] c"check_vb_with_fmt\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\013%s:%d: failed to get plane cookie\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\017%s:%d: index: %d, plane[%d] cookie: %pad\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\017%s:%d: plane size: %ld, dst size: %zu\0A\00", align 1
@__func__.s5p_mfc_buf_prepare = private unnamed_addr constant [20 x i8] c"s5p_mfc_buf_prepare\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"\013%s:%d: plane size is too small for capture\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\017%s:%d: plane size: %ld, luma size: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\017%s:%d: plane size: %ld, chroma size: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"\013%s:%d: plane size is too small for output\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"\013%s:%d: Need minimum %d OUTPUT buffers\0A\00", align 1
@__func__.s5p_mfc_start_streaming = private unnamed_addr constant [24 x i8] c"s5p_mfc_start_streaming\00", align 1
@__func__.cleanup_ref_queue = private unnamed_addr constant [18 x i8] c"cleanup_ref_queue\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"\013%s:%d: unsupported buffer type (%d)\0A\00", align 1
@__func__.s5p_mfc_buf_queue = private unnamed_addr constant [18 x i8] c"s5p_mfc_buf_queue\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"s5p-mfc\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@formats = internal global [9 x %struct.s5p_mfc_fmt] [%struct.s5p_mfc_fmt { i32 842091862, i32 -1, i32 2, i32 2, i32 6 }, %struct.s5p_mfc_fmt { i32 842091860, i32 -1, i32 2, i32 2, i32 1 }, %struct.s5p_mfc_fmt { i32 842091854, i32 -1, i32 2, i32 2, i32 47 }, %struct.s5p_mfc_fmt { i32 825380174, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 875967048, i32 20, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 877088845, i32 22, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 859189832, i32 23, i32 1, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 808996950, i32 24, i32 1, i32 1, i32 44 }, %struct.s5p_mfc_fmt { i32 1129727304, i32 26, i32 1, i32 1, i32 32 }], align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"\017%s:%d: f->type = %d ctx->state = %d\0A\00", align 1
@__func__.vidioc_g_fmt = private unnamed_addr constant [13 x i8] c"vidioc_g_fmt\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\013%s:%d: invalid buf type\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\013%s: %s queue busy\0A\00", align 1
@__func__.vidioc_s_fmt = private unnamed_addr constant [13 x i8] c"vidioc_s_fmt\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"\017%s:%d: codec number: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"\017%s:%d: fmt - w: %d, h: %d, ctx - w: %d, h: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"\017%s:%d: leave\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\013%s:%d: failed to try output format\0A\00", align 1
@__func__.vidioc_try_fmt = private unnamed_addr constant [15 x i8] c"vidioc_try_fmt\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Unsupported format by this MFC version.\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Freeing buffers\0A\00", align 1
@__func__.vidioc_reqbufs = private unnamed_addr constant [15 x i8] c"vidioc_reqbufs\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"\013%s:%d: invalid capture state: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"\013%s:%d: error in vb2_reqbufs() for E(D)\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Failed to allocate encoding buffers\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"\013%s:%d: invalid output state: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"\017%s:%d: Minimum %d output buffers needed\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"\013%s:%d: error in vb2_reqbufs() for E(S)\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\013%s:%d: invalid context state: %d\0A\00", align 1
@__func__.vidioc_querybuf = private unnamed_addr constant [16 x i8] c"vidioc_querybuf\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"\013%s:%d: error in vb2_querybuf() for E(D)\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"\013%s:%d: error in vb2_querybuf() for E(S)\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"\013%s:%d: Call on QBUF after unrecoverable error\0A\00", align 1
@__func__.vidioc_qbuf = private unnamed_addr constant [12 x i8] c"vidioc_qbuf\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"\013%s:%d: Call on QBUF after EOS command\0A\00", align 1
@vidioc_dqbuf._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.vidioc_dqbuf = private unnamed_addr constant [13 x i8] c"vidioc_dqbuf\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Call on DQBUF after unrecoverable error\0A\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"\017%s:%d: EOS: empty src queue, entering finishing state\0A\00", align 1
@__func__.vidioc_encoder_cmd = private unnamed_addr constant [19 x i8] c"vidioc_encoder_cmd\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"\017%s:%d: EOS: marking last buffer of stream\0A\00", align 1
@.str.46 = private unnamed_addr constant [60 x i8] c"\013%s:%d: Setting FPS is only possible for the output queue\0A\00", align 1
@__func__.vidioc_g_parm = private unnamed_addr constant [14 x i8] c"vidioc_g_parm\00", align 1
@__func__.vidioc_s_parm = private unnamed_addr constant [14 x i8] c"vidioc_s_parm\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"\013%s: Encoding not initialised\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"\013%s: Invalid control, id=%d, val=%d\0A\00", align 1
@h264_level.t = internal unnamed_addr constant [12 x i32] [i32 10, i32 9, i32 11, i32 12, i32 13, i32 20, i32 21, i32 22, i32 30, i32 31, i32 32, i32 40], align 4
@mpeg4_level.t = internal unnamed_addr constant [8 x i32] [i32 0, i32 9, i32 1, i32 2, i32 3, i32 7, i32 4, i32 5], align 4
@vui_sar_idc.t = internal unnamed_addr constant [18 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 255], align 4
@__enc_update_hevc_qp_ctrls_range.__hevc_qp_ctrls = internal unnamed_addr constant [10 x i32] [i32 10029914, i32 10029915, i32 10029916, i32 10029920, i32 10029921, i32 10029922, i32 10029923, i32 10029924, i32 10029925, i32 10029926], align 4
@.str.50 = private unnamed_addr constant [45 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_enc.c\00", align 1
@hevc_level.t = internal unnamed_addr constant [13 x i32] [i32 10, i32 20, i32 21, i32 30, i32 31, i32 40, i32 41, i32 50, i32 51, i32 52, i32 60, i32 61, i32 62], align 4
@mfc51_get_menu.mfc51_video_frame_skip = internal constant [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr null], align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Level Limit\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"VBV/CPB Limit\00", align 1
@mfc51_get_menu.mfc51_video_force_frame = internal constant [4 x ptr] [ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr null], align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"I Frame\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Not Coded\00", align 1
@switch.table.enc_post_frame_start = private unnamed_addr constant [3 x i32] [i32 8, i32 16, i32 32], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_codec_ops() local_unnamed_addr #0 {
  ret ptr @encoder_codec_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_queue_ops() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_enc_qops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_enc_v4l2_ioctl_ops() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_enc_ioctl_ops
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_enc_ctrls_setup(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.v4l2_ctrl_config, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65
  %4 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %3, i32 noundef 116, ptr noundef null, ptr noundef null) #9
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 5
  %11 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 6
  %12 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 7
  %16 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 13
  %17 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 14
  br label %21

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_enc_ctrls_setup, i32 noundef 2627) #10
  %20 = load i32, ptr %5, align 4
  br label %106

21:                                               ; preds = %101, %8
  %22 = phi i32 [ 0, %8 ], [ %102, %101 ]
  %23 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 268369920
  %26 = icmp ne i32 %25, 10027008
  %27 = and i32 %24, 61440
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %26, %28
  br i1 %29, label %58, label %30

30:                                               ; preds = %21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false)
  store ptr @s5p_mfc_enc_ctrl_ops, ptr %2, align 8
  store i32 %24, ptr %9, align 8
  %31 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, ptr %10, align 8
  %34 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, ptr %11, align 8
  %37 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, ptr %12, align 8
  %40 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 2
  store ptr %40, ptr %13, align 4
  %41 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 1
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %14, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, ptr %16, align 8
  %48 = icmp eq i32 %24, 10031363
  %49 = select i1 %48, ptr @mfc51_get_menu.mfc51_video_force_frame, ptr null
  %50 = icmp eq i32 %24, 10031362
  %51 = select i1 %50, ptr @mfc51_get_menu.mfc51_video_frame_skip, ptr %49
  store ptr %51, ptr %17, align 8
  br label %56

52:                                               ; preds = %30
  %53 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, ptr %15, align 8
  br label %56

56:                                               ; preds = %52, %44
  %57 = call ptr @v4l2_ctrl_new_custom(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null) #9
  br label %83

58:                                               ; preds = %21
  %59 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 1
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %69 [
    i32 3, label %61
    i32 9, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = trunc i32 %63 to i8
  %65 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = trunc i32 %66 to i8
  %68 = call ptr @v4l2_ctrl_new_std_menu(ptr noundef %3, ptr noundef nonnull @s5p_mfc_enc_ctrl_ops, i32 noundef %24, i8 noundef zeroext %64, i64 noundef 0, i8 noundef zeroext %67) #9
  br label %83

69:                                               ; preds = %58
  %70 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = sext i32 %80 to i64
  %82 = call ptr @v4l2_ctrl_new_std(ptr noundef %3, ptr noundef nonnull @s5p_mfc_enc_ctrl_ops, i32 noundef %24, i64 noundef %72, i64 noundef %75, i64 noundef %78, i64 noundef %81) #9
  br label %83

83:                                               ; preds = %69, %61, %56
  %84 = phi ptr [ %68, %61 ], [ %82, %69 ], [ %57, %56 ]
  %85 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 64, i32 %22
  store ptr %84, ptr %85, align 4
  %86 = load i32, ptr %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_enc_ctrls_setup, i32 noundef 2671, i32 noundef %22) #10
  %90 = load i32, ptr %5, align 4
  br label %106

91:                                               ; preds = %83
  %92 = getelementptr [116 x %struct.mfc_control], ptr @controls, i32 0, i32 %22, i32 10
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 0
  %95 = icmp eq ptr %84, null
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.v4l2_ctrl, ptr %84, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, 128
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = add nuw nsw i32 %22, 1
  %103 = icmp eq i32 %102, 116
  br i1 %103, label %104, label %21

104:                                              ; preds = %101
  %105 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %3) #9
  br label %106

106:                                              ; preds = %104, %88, %18
  %107 = phi i32 [ %20, %18 ], [ %90, %88 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #9
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_enc_ctrls_delete(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65
  tail call void @v4l2_ctrl_handler_free(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 3040
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(464) %3, i8 0, i32 464, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_enc_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  %2 = alloca %struct.v4l2_format, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %2, i8 0, i32 204, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 842091854, ptr %3, align 4
  %4 = call fastcc ptr @find_format(ptr noundef nonnull %2, i32 noundef 2)
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  store ptr %4, ptr %5, align 4
  store i32 875967048, ptr %3, align 4
  %6 = call fastcc ptr @find_format(ptr noundef nonnull %2, i32 noundef 1)
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @find_format(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @formats, align 4
  %6 = icmp eq i32 %5, %4
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  %8 = icmp eq i32 %7, %1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %59, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), align 4
  %12 = icmp eq i32 %11, %4
  %13 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  %14 = icmp eq i32 %13, %1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %59, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), align 4
  %18 = icmp eq i32 %17, %4
  %19 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  %20 = icmp eq i32 %19, %1
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %59, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), align 4
  %24 = icmp eq i32 %23, %4
  %25 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  %26 = icmp eq i32 %25, %1
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %59, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), align 4
  %30 = icmp eq i32 %29, %4
  %31 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  %32 = icmp eq i32 %31, %1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %59, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), align 4
  %36 = icmp eq i32 %35, %4
  %37 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  %38 = icmp eq i32 %37, %1
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), align 4
  %42 = icmp eq i32 %41, %4
  %43 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  %44 = icmp eq i32 %43, %1
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %59, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), align 4
  %48 = icmp eq i32 %47, %4
  %49 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  %50 = icmp eq i32 %49, %1
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), align 4
  %54 = icmp eq i32 %53, %4
  %55 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  %56 = icmp eq i32 %55, %1
  %57 = select i1 %54, i1 %56, i1 false
  %58 = select i1 %57, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), ptr null
  br label %59

59:                                               ; preds = %52, %46, %40, %34, %28, %22, %16, %10, %2
  %60 = phi ptr [ @formats, %2 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), %10 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), %16 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), %22 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), %28 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), %34 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), %40 ], [ getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), %46 ], [ %58, %52 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enc_pre_seq_start(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vb2_plane_cookie(ptr noundef %6, i32 noundef 0) #9
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr %struct.vb2_buffer, ptr %9, i32 0, i32 10, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %19, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %0, i32 noundef %8, i32 noundef %17) #9
  br label %27

27:                                               ; preds = %25, %21, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enc_post_seq_start(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -4
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %21, i32 0, i32 30
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %2) #9
  br label %29

29:                                               ; preds = %27, %23, %10
  %30 = phi i32 [ %28, %27 ], [ -19, %23 ], [ -19, %10 ]
  %31 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp ult i32 %36, %30
  %38 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %34
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %42

42:                                               ; preds = %41, %34
  br i1 %37, label %43, label %45

43:                                               ; preds = %42
  %44 = load i32, ptr %35, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ %44, %43 ], [ %30, %42 ]
  %47 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %29
  %49 = load ptr, ptr %11, align 4
  tail call void @vb2_buffer_done(ptr noundef %49, i32 noundef 5) #9
  br label %50

50:                                               ; preds = %48, %6, %1
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 95
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 105, ptr %56, align 4
  %57 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %0)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @set_work_bit_irqsave(ptr noundef %0) #9
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %106, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %62, i32 0, i32 13
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %106, label %68

68:                                               ; preds = %64
  tail call void %66(ptr noundef %2) #9
  br label %106

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %71, i32 0, i32 32
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %2) #9
  br label %79

79:                                               ; preds = %77, %73, %69
  %80 = phi i32 [ %78, %77 ], [ -19, %73 ], [ -19, %69 ]
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, %80
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 %80, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load ptr, ptr %51, align 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp ugt i32 %87, 159
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load ptr, ptr %70, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %90, i32 0, i32 38
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = tail call i32 %94(ptr noundef %2) #9
  br label %98

98:                                               ; preds = %96, %92, %89
  %99 = phi i32 [ %97, %96 ], [ -19, %92 ], [ -19, %89 ]
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %99
  store i32 %103, ptr %101, align 4
  br label %104

104:                                              ; preds = %98, %85
  %105 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 103, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %68, %64, %60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enc_pre_frame_start(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vb2_plane_cookie(ptr noundef %6, i32 noundef 0) #9
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = tail call ptr @vb2_plane_cookie(ptr noundef %9, i32 noundef 1) #9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 36
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %13, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0, i32 noundef %8, i32 noundef %11) #9
  br label %20

20:                                               ; preds = %19, %15, %1
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @vb2_plane_cookie(ptr noundef %24, i32 noundef 0) #9
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = getelementptr %struct.vb2_buffer, ptr %27, i32 0, i32 10, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %20
  %35 = phi i32 [ %33, %31 ], [ 0, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %36, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef %0, i32 noundef %26, i32 noundef %35) #9
  br label %44

44:                                               ; preds = %42, %38, %34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enc_post_frame_start(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %6, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %4) #9
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %13, %12 ], [ -19, %8 ]
  %18 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %19 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %18, i32 0, i32 30
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %4) #9
  br label %24

24:                                               ; preds = %22, %16, %12, %1
  %25 = phi i32 [ %17, %22 ], [ %17, %16 ], [ %13, %12 ], [ -19, %1 ]
  %26 = phi i32 [ %23, %22 ], [ -19, %16 ], [ -19, %12 ], [ -19, %1 ]
  %27 = load i32, ptr @mfc_debug_level, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.enc_post_frame_start, i32 noundef 1224, i32 noundef %25) #10
  %31 = load i32, ptr @mfc_debug_level, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.enc_post_frame_start, i32 noundef 1225, i32 noundef %26) #10
  %35 = load i32, ptr @mfc_debug_level, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 8200
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.enc_post_frame_start, i32 noundef 1227, i32 noundef %41) #10
  br label %43

43:                                               ; preds = %37, %33, %29, %24
  %44 = icmp sgt i32 %25, -1
  br i1 %44, label %45, label %111

45:                                               ; preds = %43
  %46 = load ptr, ptr %5, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %46, i32 0, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void %50(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  br label %53

53:                                               ; preds = %52, %48, %45
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  br label %55

55:                                               ; preds = %59, %53
  %56 = phi ptr [ %54, %53 ], [ %57, %59 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %54
  br i1 %58, label %82, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %57, i32 -4
  %61 = load ptr, ptr %60, align 4
  %62 = call ptr @vb2_plane_cookie(ptr noundef %61, i32 noundef 0) #9
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %60, align 4
  %65 = call ptr @vb2_plane_cookie(ptr noundef %64, i32 noundef 1) #9
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %2, align 4
  %68 = icmp eq i32 %67, %63
  %69 = load i32, ptr %3, align 4
  %70 = icmp eq i32 %69, %66
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %55

72:                                               ; preds = %59
  %73 = getelementptr i8, ptr %57, i32 -4
  %74 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %57, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store volatile ptr %76, ptr %75, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %74, align 4
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  %81 = load ptr, ptr %73, align 4
  call void @vb2_buffer_done(ptr noundef %81, i32 noundef 5) #9
  br label %82

82:                                               ; preds = %72, %55
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 59
  br label %84

84:                                               ; preds = %88, %82
  %85 = phi ptr [ %83, %82 ], [ %86, %88 ]
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %83
  br i1 %87, label %111, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %86, i32 -4
  %90 = load ptr, ptr %89, align 4
  %91 = call ptr @vb2_plane_cookie(ptr noundef %90, i32 noundef 0) #9
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %89, align 4
  %94 = call ptr @vb2_plane_cookie(ptr noundef %93, i32 noundef 1) #9
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %2, align 4
  %97 = icmp eq i32 %96, %92
  %98 = load i32, ptr %3, align 4
  %99 = icmp eq i32 %98, %95
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %84

101:                                              ; preds = %88
  %102 = getelementptr i8, ptr %86, i32 -4
  %103 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %86, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  store volatile ptr %105, ptr %104, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %103, align 4
  %107 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 60
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -1
  store i32 %109, ptr %107, align 4
  %110 = load ptr, ptr %102, align 4
  call void @vb2_buffer_done(ptr noundef %110, i32 noundef 5) #9
  br label %111

111:                                              ; preds = %101, %84, %43
  %112 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 105
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 16
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %121, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  store volatile ptr %129, ptr %128, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %121, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %127, align 4
  %131 = load i32, ptr %112, align 4
  %132 = add i32 %131, -1
  store i32 %132, ptr %112, align 4
  %133 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 59
  %134 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 59, i32 1
  %135 = load ptr, ptr %134, align 4
  store ptr %121, ptr %134, align 4
  store ptr %133, ptr %121, align 4
  store ptr %135, ptr %127, align 4
  store volatile ptr %121, ptr %135, align 4
  %136 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 60
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  br label %139

139:                                              ; preds = %126, %119, %115, %111
  %140 = load i32, ptr @mfc_debug_level, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, ptr %112, align 4
  %144 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 60
  %145 = load i32, ptr %144, align 4
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.enc_post_frame_start, i32 noundef 1271, i32 noundef %143, i32 noundef %145) #10
  br label %147

147:                                              ; preds = %142, %139
  %148 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %149 = load i32, ptr %148, align 4
  %150 = icmp ne i32 %149, 0
  %151 = icmp ne i32 %26, 0
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %194

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 -4
  %157 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %155, align 4
  %160 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %160, align 4
  store volatile ptr %159, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  %161 = load i32, ptr %148, align 4
  %162 = add i32 %161, -1
  store i32 %162, ptr %148, align 4
  %163 = add i32 %25, -1
  %164 = icmp ult i32 %163, 3
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = getelementptr inbounds [3 x i32], ptr @switch.table.enc_post_frame_start, i32 0, i32 %163
  %167 = load i32, ptr %166, align 4
  %168 = load ptr, ptr %156, align 4
  %169 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, ptr %169, align 8
  br label %172

172:                                              ; preds = %165, %153
  %173 = load ptr, ptr %156, align 4
  %174 = getelementptr inbounds %struct.vb2_buffer, ptr %173, i32 0, i32 4
  %175 = load i32, ptr %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.vb2_buffer, ptr %173, i32 0, i32 10, i32 0, i32 4
  %179 = load i32, ptr %178, align 8
  %180 = icmp ult i32 %179, %26
  %181 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %182 = xor i1 %181, true
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %185, !prof !9

184:                                              ; preds = %177
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %185

185:                                              ; preds = %184, %177
  br i1 %180, label %186, label %188

186:                                              ; preds = %185
  %187 = load i32, ptr %178, align 8
  br label %188

188:                                              ; preds = %186, %185
  %189 = phi i32 [ %187, %186 ], [ %26, %185 ]
  %190 = getelementptr inbounds %struct.vb2_buffer, ptr %173, i32 0, i32 10, i32 0, i32 3
  store i32 %189, ptr %190, align 4
  %191 = load ptr, ptr %156, align 4
  br label %192

192:                                              ; preds = %188, %172
  %193 = phi ptr [ %173, %172 ], [ %191, %188 ]
  call void @vb2_buffer_done(ptr noundef %193, i32 noundef 5) #9
  br label %194

194:                                              ; preds = %192, %147
  %195 = load i32, ptr %112, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %148, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197, %194
  call void @clear_work_bit(ptr noundef %0) #9
  br label %201

201:                                              ; preds = %200, %197
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_ctx_ready(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_ctx_ready, i32 noundef 1097, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  br label %12

12:                                               ; preds = %4, %1
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %31 [
    i32 101, label %15
    i32 105, label %19
    i32 103, label %19
    i32 106, label %27
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %36

19:                                               ; preds = %12, %12
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %36

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23, %19, %15, %12
  %32 = load i32, ptr @mfc_debug_level, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_ctx_ready, i32 noundef 1110) #10
  br label %36

36:                                               ; preds = %34, %31, %27, %23, %15
  %37 = phi i32 [ 1, %15 ], [ 1, %23 ], [ 1, %27 ], [ 0, %31 ], [ 0, %34 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_work_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #1 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  switch i32 %10, label %78 [
    i32 9, label %11
    i32 10, label %38
  ]

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %7, i32 824
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 101
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_queue_setup, i32 noundef 2383, i32 noundef %13) #10
  br label %80

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %7, i32 112
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %19, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 1, %17 ]
  store i32 %25, ptr %2, align 4
  %26 = load i32, ptr %1, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = icmp ugt i32 %26, 32
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 1, %24 ], [ 32, %28 ]
  store i32 %31, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr i8, ptr %7, i32 2988
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %3, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %4, align 4
  br label %80

38:                                               ; preds = %5
  %39 = getelementptr i8, ptr %7, i32 108
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %40, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ 2, %38 ]
  store i32 %46, ptr %2, align 4
  %47 = load i32, ptr %1, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = icmp ugt i32 %47, 32
  br i1 %50, label %51, label %53

51:                                               ; preds = %49, %45
  %52 = phi i32 [ 1, %45 ], [ 32, %49 ]
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = getelementptr i8, ptr %7, i32 848
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %3, align 4
  %56 = getelementptr i8, ptr %7, i32 852
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i32, ptr %3, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 95
  %63 = load ptr, ptr %8, align 4
  br i1 %62, label %64, label %71

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %63, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  store ptr %66, ptr %4, align 4
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr ptr, ptr %4, i32 1
  store ptr %69, ptr %70, align 4
  br label %80

71:                                               ; preds = %53
  %72 = getelementptr %struct.s5p_mfc_dev, ptr %63, i32 0, i32 4, i32 1
  %73 = load ptr, ptr %72, align 4
  store ptr %73, ptr %4, align 4
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr %struct.s5p_mfc_dev, ptr %74, i32 0, i32 4, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr ptr, ptr %4, i32 1
  store ptr %76, ptr %77, align 4
  br label %80

78:                                               ; preds = %5
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_queue_setup, i32 noundef 2419, i32 noundef %10) #10
  br label %80

80:                                               ; preds = %78, %71, %64, %32, %15
  %81 = phi i32 [ -22, %15 ], [ -22, %78 ], [ 0, %71 ], [ 0, %64 ], [ 0, %32 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_buf_init(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %41 [
    i32 9, label %6
    i32 10, label %22
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 112
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %8, ptr noundef %0)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %4, i32 1692
  %15 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %14, i32 0, i32 %13
  store ptr %0, ptr %15, align 4
  %16 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %15, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %4, i32 2460
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  br label %43

22:                                               ; preds = %1
  %23 = getelementptr i8, ptr %4, i32 108
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %24, ptr noundef %0)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %4, i32 920
  %31 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %30, i32 0, i32 %29
  store ptr %0, ptr %31, align 4
  %32 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %31, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 1) #9
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %31, i32 0, i32 2, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %4, i32 1688
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %43

41:                                               ; preds = %1
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 2454, i32 noundef %5) #10
  br label %43

43:                                               ; preds = %41, %27, %22, %11, %6
  %44 = phi i32 [ -22, %41 ], [ %9, %6 ], [ %25, %22 ], [ 0, %27 ], [ 0, %11 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_buf_prepare(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %99 [
    i32 9, label %6
    i32 10, label %40
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 112
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %8, ptr noundef %0)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %101, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr @mfc_debug_level, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ]
  %23 = getelementptr i8, ptr %4, i32 2988
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2471, i32 noundef %22, i32 noundef %24) #10
  br label %26

26:                                               ; preds = %21, %11
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %32, %30 ], [ 0, %26 ]
  %35 = getelementptr i8, ptr %4, i32 2988
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %101

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2473) #10
  br label %101

40:                                               ; preds = %1
  %41 = getelementptr i8, ptr %4, i32 108
  %42 = load ptr, ptr %41, align 4
  %43 = tail call fastcc i32 @check_vb_with_fmt(ptr noundef %42, ptr noundef %0)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr @mfc_debug_level, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %54, %52 ], [ 0, %48 ]
  %57 = getelementptr i8, ptr %4, i32 848
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2481, i32 noundef %56, i32 noundef %58) #10
  %60 = load i32, ptr @mfc_debug_level, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load i32, ptr %49, align 8
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 1, i32 4
  %67 = load i32, ptr %66, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %67, %65 ], [ 0, %62 ]
  %70 = getelementptr i8, ptr %4, i32 852
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2483, i32 noundef %69, i32 noundef %71) #10
  br label %73

73:                                               ; preds = %68, %55, %45
  %74 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr i8, ptr %4, i32 848
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %97, label %87

83:                                               ; preds = %73
  %84 = getelementptr i8, ptr %4, i32 848
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %97

87:                                               ; preds = %77
  %88 = icmp ugt i32 %75, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 1, i32 4
  %91 = load i32, ptr %90, align 8
  br label %92

92:                                               ; preds = %89, %87, %83
  %93 = phi i32 [ %91, %89 ], [ 0, %87 ], [ 0, %83 ]
  %94 = getelementptr i8, ptr %4, i32 852
  %95 = load i32, ptr %94, align 4
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %83, %77
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2486) #10
  br label %101

99:                                               ; preds = %1
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_buf_prepare, i32 noundef 2490, i32 noundef %5) #10
  br label %101

101:                                              ; preds = %99, %97, %92, %40, %38, %33, %6
  %102 = phi i32 [ -22, %38 ], [ -22, %97 ], [ -22, %99 ], [ %9, %6 ], [ %43, %40 ], [ 0, %92 ], [ 0, %33 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 95
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 4
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %4, i32 824
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 101
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 27
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %4, i32 80
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 25
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %5, i32 noundef 3, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %28, %24, %18, %14
  %31 = getelementptr i8, ptr %4, i32 1688
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %4, i32 2504
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.s5p_mfc_start_streaming, i32 noundef 2513, i32 noundef %34) #10
  br label %51

38:                                               ; preds = %30, %11, %2
  %39 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %5)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @set_work_bit_irqsave(ptr noundef %5) #9
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %44, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void %48(ptr noundef %6) #9
  br label %51

51:                                               ; preds = %50, %46, %42, %36
  %52 = phi i32 [ -105, %36 ], [ 0, %42 ], [ 0, %46 ], [ 0, %50 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_stop_streaming(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 824
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -105
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 27
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %3, i32 80
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  store i32 110, ptr %6, align 4
  %21 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 13, i32 noundef 0) #9
  br label %22

22:                                               ; preds = %20, %16, %10, %1
  store i32 107, ptr %6, align 4
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #9
  %25 = load i32, ptr %0, align 4
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %3, i32 804
  %29 = getelementptr i8, ptr %3, i32 456
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %28, ptr noundef %29) #9
  store volatile ptr %28, ptr %28, align 4
  %30 = getelementptr i8, ptr %3, i32 808
  store ptr %28, ptr %30, align 4
  %31 = getelementptr i8, ptr %3, i32 816
  store i32 0, ptr %31, align 4
  %32 = load i32, ptr %0, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = phi i32 [ %32, %27 ], [ %25, %22 ]
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %3, i32 3012
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %3, i32 3020
  %42 = getelementptr i8, ptr %3, i32 796
  %43 = getelementptr i8, ptr %3, i32 800
  %44 = getelementptr i8, ptr %3, i32 812
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi ptr [ %38, %40 ], [ %56, %45 ]
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = load i32, ptr %41, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %41, align 4
  %53 = load ptr, ptr %43, align 4
  store ptr %46, ptr %43, align 4
  store ptr %42, ptr %46, align 4
  store ptr %53, ptr %47, align 4
  store volatile ptr %46, ptr %53, align 4
  %54 = load i32, ptr %44, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %44, align 4
  %56 = load volatile ptr, ptr %37, align 4
  %57 = icmp eq ptr %56, %37
  br i1 %57, label %58, label %45

58:                                               ; preds = %45, %36
  %59 = load i32, ptr @mfc_debug_level, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %3, i32 812
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %3, i32 3020
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cleanup_ref_queue, i32 noundef 1128, i32 noundef %63, i32 noundef %65) #10
  br label %67

67:                                               ; preds = %61, %58
  store volatile ptr %37, ptr %37, align 4
  %68 = getelementptr i8, ptr %3, i32 3016
  store ptr %37, ptr %68, align 4
  %69 = getelementptr i8, ptr %3, i32 3020
  store i32 0, ptr %69, align 4
  %70 = getelementptr i8, ptr %3, i32 796
  %71 = getelementptr i8, ptr %3, i32 116
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %70, ptr noundef %71) #9
  store volatile ptr %70, ptr %70, align 4
  %72 = getelementptr i8, ptr %3, i32 800
  store ptr %70, ptr %72, align 4
  %73 = getelementptr i8, ptr %3, i32 812
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %67, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_buf_queue(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 824
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 109
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #9
  %11 = getelementptr i8, ptr %4, i32 3012
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %4, i32 3020
  %16 = getelementptr i8, ptr %4, i32 796
  %17 = getelementptr i8, ptr %4, i32 800
  %18 = getelementptr i8, ptr %4, i32 812
  br label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %12, %14 ], [ %30, %19 ]
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = load i32, ptr %15, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %15, align 4
  %27 = load ptr, ptr %17, align 4
  store ptr %20, ptr %17, align 4
  store ptr %16, ptr %20, align 4
  store ptr %27, ptr %21, align 4
  store volatile ptr %20, ptr %27, align 4
  %28 = load i32, ptr %18, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %18, align 4
  %30 = load volatile ptr, ptr %11, align 4
  %31 = icmp eq ptr %30, %11
  br i1 %31, label %32, label %19

32:                                               ; preds = %19, %10
  %33 = load i32, ptr @mfc_debug_level, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %4, i32 812
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %4, i32 3020
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cleanup_ref_queue, i32 noundef 1128, i32 noundef %37, i32 noundef %39) #10
  br label %41

41:                                               ; preds = %35, %32
  store volatile ptr %11, ptr %11, align 4
  %42 = getelementptr i8, ptr %4, i32 3016
  store ptr %11, ptr %42, align 4
  %43 = getelementptr i8, ptr %4, i32 3020
  store i32 0, ptr %43, align 4
  br label %97

44:                                               ; preds = %1
  %45 = load i32, ptr %2, align 4
  switch i32 %45, label %82 [
    i32 9, label %46
    i32 10, label %64
  ]

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %4, i32 1692
  %48 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %47, i32 0, i32 %49
  %51 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -2
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 12
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #9
  %56 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %50, i32 0, i32 1
  %57 = getelementptr i8, ptr %4, i32 804
  %58 = getelementptr i8, ptr %4, i32 808
  %59 = load ptr, ptr %58, align 4
  store ptr %56, ptr %58, align 4
  store ptr %57, ptr %56, align 4
  %60 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %50, i32 0, i32 1, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %56, ptr %59, align 4
  %61 = getelementptr i8, ptr %4, i32 816
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #9
  br label %84

64:                                               ; preds = %44
  %65 = getelementptr i8, ptr %4, i32 920
  %66 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %65, i32 0, i32 %67
  %69 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -2
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 12
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %72) #9
  %74 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %68, i32 0, i32 1
  %75 = getelementptr i8, ptr %4, i32 796
  %76 = getelementptr i8, ptr %4, i32 800
  %77 = load ptr, ptr %76, align 4
  store ptr %74, ptr %76, align 4
  store ptr %75, ptr %74, align 4
  %78 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %68, i32 0, i32 1, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %74, ptr %77, align 4
  %79 = getelementptr i8, ptr %4, i32 812
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %73) #9
  br label %84

82:                                               ; preds = %44
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.s5p_mfc_buf_queue, i32 noundef 2584, i32 noundef %45) #10
  br label %84

84:                                               ; preds = %82, %64, %46
  %85 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %5)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @set_work_bit_irqsave(ptr noundef %5) #9
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %90, i32 0, i32 13
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call void %94(ptr noundef %6) #9
  br label %97

97:                                               ; preds = %96, %92, %88, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_vb_with_fmt(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 1
  br label %17

15:                                               ; preds = %5
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_vb_with_fmt, i32 noundef 2359) #10
  br label %35

17:                                               ; preds = %31, %13
  %18 = phi i32 [ 0, %13 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %19 = call ptr @vb2_plane_cookie(ptr noundef %1, i32 noundef %18) #9
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.check_vb_with_fmt, i32 noundef 2365) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %35

24:                                               ; preds = %17
  %25 = load i32, ptr @mfc_debug_level, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr %14, align 4
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.check_vb_with_fmt, i32 noundef 2369, i32 noundef %28, i32 noundef %18, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %31

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %31

31:                                               ; preds = %30, %27
  %32 = add nuw i32 %18, 1
  %33 = load i32, ptr %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %17, label %35

35:                                               ; preds = %31, %22, %15, %11, %2
  %36 = phi i32 [ -22, %15 ], [ -22, %2 ], [ -22, %22 ], [ 0, %11 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_cleanup_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 16) #9
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.video_device, ptr %10, i32 0, i32 12
  %12 = tail call i32 @strscpy(ptr noundef %8, ptr noundef %11, i32 noundef 32) #9
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ %16, %3 ]
  %23 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %22)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 4), align 4
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %148, %132, %116, %100, %84, %68, %52, %36, %17
  %21 = phi i32 [ 0, %17 ], [ 1, %36 ], [ 2, %52 ], [ 3, %68 ], [ 4, %84 ], [ 5, %100 ], [ 6, %116 ], [ 7, %132 ], [ 8, %148 ]
  %22 = getelementptr [9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  br label %151

25:                                               ; preds = %17, %10, %3
  %26 = phi i32 [ 0, %10 ], [ 0, %3 ], [ 1, %17 ]
  %27 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 4), align 4
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %26, %37
  br i1 %38, label %20, label %39

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %26, 1
  br label %41

41:                                               ; preds = %39, %29, %25
  %42 = phi i32 [ %26, %29 ], [ %40, %39 ], [ %26, %25 ]
  %43 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 4), align 4
  %50 = and i32 %49, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %42, %53
  br i1 %54, label %20, label %55

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %42, 1
  br label %57

57:                                               ; preds = %55, %45, %41
  %58 = phi i32 [ %42, %45 ], [ %56, %55 ], [ %42, %41 ]
  %59 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 4), align 4
  %66 = and i32 %65, %64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, ptr %2, align 4
  %70 = icmp eq i32 %58, %69
  br i1 %70, label %20, label %71

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %58, 1
  br label %73

73:                                               ; preds = %71, %61, %57
  %74 = phi i32 [ %58, %61 ], [ %72, %71 ], [ %58, %57 ]
  %75 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 4), align 4
  %82 = and i32 %81, %80
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i32, ptr %2, align 4
  %86 = icmp eq i32 %74, %85
  br i1 %86, label %20, label %87

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %74, 1
  br label %89

89:                                               ; preds = %87, %77, %73
  %90 = phi i32 [ %74, %77 ], [ %88, %87 ], [ %74, %73 ]
  %91 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 4), align 4
  %98 = and i32 %97, %96
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load i32, ptr %2, align 4
  %102 = icmp eq i32 %90, %101
  br i1 %102, label %20, label %103

103:                                              ; preds = %100
  %104 = add nuw nsw i32 %90, 1
  br label %105

105:                                              ; preds = %103, %93, %89
  %106 = phi i32 [ %90, %93 ], [ %104, %103 ], [ %90, %89 ]
  %107 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 4), align 4
  %114 = and i32 %113, %112
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %2, align 4
  %118 = icmp eq i32 %106, %117
  br i1 %118, label %20, label %119

119:                                              ; preds = %116
  %120 = add nuw nsw i32 %106, 1
  br label %121

121:                                              ; preds = %119, %109, %105
  %122 = phi i32 [ %106, %109 ], [ %120, %119 ], [ %106, %105 ]
  %123 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load ptr, ptr %7, align 4
  %127 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 4), align 4
  %130 = and i32 %129, %128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr %2, align 4
  %134 = icmp eq i32 %122, %133
  br i1 %134, label %20, label %135

135:                                              ; preds = %132
  %136 = add nuw nsw i32 %122, 1
  br label %137

137:                                              ; preds = %135, %125, %121
  %138 = phi i32 [ %122, %125 ], [ %136, %135 ], [ %122, %121 ]
  %139 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 4), align 4
  %146 = and i32 %145, %144
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, ptr %2, align 4
  %150 = icmp eq i32 %138, %149
  br i1 %150, label %20, label %151

151:                                              ; preds = %148, %141, %137, %20
  %152 = phi i32 [ 0, %20 ], [ -22, %148 ], [ -22, %141 ], [ -22, %137 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 4), align 4
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %148, %132, %116, %100, %84, %68, %52, %36, %17
  %21 = phi i32 [ 0, %17 ], [ 1, %36 ], [ 2, %52 ], [ 3, %68 ], [ 4, %84 ], [ 5, %100 ], [ 6, %116 ], [ 7, %132 ], [ 8, %148 ]
  %22 = getelementptr [9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  br label %151

25:                                               ; preds = %17, %10, %3
  %26 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 1, %17 ]
  %27 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 4), align 4
  %34 = and i32 %33, %32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %2, align 4
  %38 = icmp eq i32 %26, %37
  br i1 %38, label %20, label %39

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %26, 1
  br label %41

41:                                               ; preds = %39, %29, %25
  %42 = phi i32 [ %26, %25 ], [ %26, %29 ], [ %40, %39 ]
  %43 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 4), align 4
  %50 = and i32 %49, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %42, %53
  br i1 %54, label %20, label %55

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %42, 1
  br label %57

57:                                               ; preds = %55, %45, %41
  %58 = phi i32 [ %42, %41 ], [ %42, %45 ], [ %56, %55 ]
  %59 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 4), align 4
  %66 = and i32 %65, %64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, ptr %2, align 4
  %70 = icmp eq i32 %58, %69
  br i1 %70, label %20, label %71

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %58, 1
  br label %73

73:                                               ; preds = %71, %61, %57
  %74 = phi i32 [ %58, %57 ], [ %58, %61 ], [ %72, %71 ]
  %75 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 4), align 4
  %82 = and i32 %81, %80
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load i32, ptr %2, align 4
  %86 = icmp eq i32 %74, %85
  br i1 %86, label %20, label %87

87:                                               ; preds = %84
  %88 = add nuw nsw i32 %74, 1
  br label %89

89:                                               ; preds = %87, %77, %73
  %90 = phi i32 [ %74, %73 ], [ %74, %77 ], [ %88, %87 ]
  %91 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 4), align 4
  %98 = and i32 %97, %96
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load i32, ptr %2, align 4
  %102 = icmp eq i32 %90, %101
  br i1 %102, label %20, label %103

103:                                              ; preds = %100
  %104 = add nuw nsw i32 %90, 1
  br label %105

105:                                              ; preds = %103, %93, %89
  %106 = phi i32 [ %90, %89 ], [ %90, %93 ], [ %104, %103 ]
  %107 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 4), align 4
  %114 = and i32 %113, %112
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %2, align 4
  %118 = icmp eq i32 %106, %117
  br i1 %118, label %20, label %119

119:                                              ; preds = %116
  %120 = add nuw nsw i32 %106, 1
  br label %121

121:                                              ; preds = %119, %109, %105
  %122 = phi i32 [ %106, %105 ], [ %106, %109 ], [ %120, %119 ]
  %123 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load ptr, ptr %7, align 4
  %127 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 4), align 4
  %130 = and i32 %129, %128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr %2, align 4
  %134 = icmp eq i32 %122, %133
  br i1 %134, label %20, label %135

135:                                              ; preds = %132
  %136 = add nuw nsw i32 %122, 1
  br label %137

137:                                              ; preds = %135, %125, %121
  %138 = phi i32 [ %122, %121 ], [ %122, %125 ], [ %136, %135 ]
  %139 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr getelementptr inbounds ([9 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 4), align 4
  %146 = and i32 %145, %144
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, ptr %2, align 4
  %150 = icmp eq i32 %138, %149
  br i1 %150, label %20, label %151

151:                                              ; preds = %148, %141, %137, %20
  %152 = phi i32 [ 0, %20 ], [ -22, %148 ], [ -22, %141 ], [ -22, %137 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr @mfc_debug_level, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %1, i32 824
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 1357, i32 noundef %8, i32 noundef %10) #10
  br label %12

12:                                               ; preds = %7, %3
  %13 = load i32, ptr %2, align 4
  switch i32 %13, label %58 [
    i32 9, label %14
    i32 10, label %31
  ]

14:                                               ; preds = %12
  store i32 0, ptr %4, align 1
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %16, align 1
  %17 = getelementptr i8, ptr %1, i32 112
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %19, ptr %20, align 1
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %24, ptr %25, align 1
  %26 = getelementptr i8, ptr %1, i32 2988
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %27, ptr %29, align 1
  %30 = load i32, ptr %26, align 4
  store i32 %30, ptr %28, align 1
  br label %60

31:                                               ; preds = %12
  %32 = getelementptr i8, ptr %1, i32 832
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %4, align 1
  %34 = getelementptr i8, ptr %1, i32 836
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %37, align 1
  %38 = getelementptr i8, ptr %1, i32 108
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %40, ptr %41, align 1
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %45, ptr %46, align 1
  %47 = getelementptr i8, ptr %1, i32 840
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %48, ptr %50, align 1
  %51 = getelementptr i8, ptr %1, i32 848
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %49, align 1
  %53 = load i32, ptr %47, align 4
  %54 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %55 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %53, ptr %55, align 1
  %56 = getelementptr i8, ptr %1, i32 852
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %54, align 1
  br label %60

58:                                               ; preds = %12
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 1382) #10
  br label %60

60:                                               ; preds = %58, %31, %14
  %61 = phi i32 [ -22, %58 ], [ 0, %31 ], [ 0, %14 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -4
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %9 = tail call i32 @vidioc_try_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %93

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 412
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %1, i32 752
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11
  %22 = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %22, ptr noundef nonnull @__func__.vidioc_s_fmt) #10
  br label %87

24:                                               ; preds = %16
  %25 = load i32, ptr %2, align 4
  switch i32 %25, label %85 [
    i32 9, label %26
    i32 10, label %40
  ]

26:                                               ; preds = %24
  %27 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 1)
  %28 = getelementptr i8, ptr %1, i32 112
  store ptr %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %1, i32 824
  store i32 100, ptr %29, align 4
  %30 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %1, i32 2476
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr i8, ptr %1, i32 2988
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %36, align 1
  %37 = getelementptr i8, ptr %1, i32 2460
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %1, i32 912
  store i32 0, ptr %38, align 4
  %39 = tail call i32 @s5p_mfc_open_mfc_inst(ptr noundef %6, ptr noundef %7) #9
  br label %87

40:                                               ; preds = %24
  %41 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 2)
  %42 = getelementptr i8, ptr %1, i32 108
  store ptr %41, ptr %42, align 4
  %43 = load i32, ptr %8, align 1
  %44 = getelementptr i8, ptr %1, i32 832
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %46 = load i32, ptr %45, align 1
  %47 = getelementptr i8, ptr %1, i32 836
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr @mfc_debug_level, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %41, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 1457, i32 noundef %52) #10
  %54 = load i32, ptr @mfc_debug_level, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, ptr %8, align 1
  %58 = load i32, ptr %45, align 1
  %59 = load i32, ptr %44, align 4
  %60 = load i32, ptr %47, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 1460, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #10
  br label %62

62:                                               ; preds = %56, %50, %40
  %63 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %64, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void %68(ptr noundef %7) #9
  br label %71

71:                                               ; preds = %70, %66, %62
  %72 = getelementptr i8, ptr %1, i32 848
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %73, ptr %74, align 1
  %75 = getelementptr i8, ptr %1, i32 840
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %76, ptr %77, align 1
  %78 = getelementptr i8, ptr %1, i32 852
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %79, ptr %80, align 1
  %81 = load i32, ptr %75, align 4
  %82 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %81, ptr %82, align 1
  %83 = getelementptr i8, ptr %1, i32 1688
  store i32 0, ptr %83, align 4
  %84 = getelementptr i8, ptr %1, i32 916
  store i32 0, ptr %84, align 4
  br label %87

85:                                               ; preds = %24
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 1471) #10
  br label %87

87:                                               ; preds = %85, %71, %26, %21
  %88 = phi i32 [ -16, %21 ], [ %39, %26 ], [ 0, %71 ], [ -22, %85 ]
  %89 = load i32, ptr @mfc_debug_level, align 4
  %90 = icmp sgt i32 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 1475) #10
  br label %93

93:                                               ; preds = %91, %87, %3
  %94 = phi i32 [ %9, %3 ], [ %88, %91 ], [ %88, %87 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %2, align 4
  switch i32 %8, label %47 [
    i32 9, label %9
    i32 10, label %29
  ]

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 1397) #10
  br label %49

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %10, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 1401) #10
  br label %49

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %27, ptr %28, align 1
  br label %49

29:                                               ; preds = %3
  %30 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 2)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 1410) #10
  br label %49

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %30, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 1414) #10
  br label %49

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef 8, i32 noundef 1920, i32 noundef 1, ptr noundef %46, i32 noundef 4, i32 noundef 1080, i32 noundef 1, i32 noundef 0) #9
  br label %49

47:                                               ; preds = %3
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 1421) #10
  br label %49

49:                                               ; preds = %47, %45, %43, %32, %25, %23, %12
  %50 = phi i32 [ -22, %23 ], [ -22, %12 ], [ -22, %43 ], [ -22, %32 ], [ -22, %47 ], [ 0, %45 ], [ 0, %25 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -4
  %8 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %117

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %115 [
    i32 9, label %15
    i32 10, label %63
  ]

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i32, ptr @mfc_debug_level, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1492) #10
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr i8, ptr %1, i32 456
  %25 = tail call i32 @vb2_reqbufs(ptr noundef %24, ptr noundef %2) #9
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %7) #9
  br label %34

34:                                               ; preds = %33, %29, %23
  %35 = getelementptr i8, ptr %1, i32 912
  store i32 0, ptr %35, align 4
  br label %117

36:                                               ; preds = %15
  %37 = getelementptr i8, ptr %1, i32 912
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1501, i32 noundef %38) #10
  br label %117

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %1, i32 456
  %44 = tail call i32 @vb2_reqbufs(ptr noundef %43, ptr noundef %2) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1506) #10
  br label %117

48:                                               ; preds = %42
  store i32 1, ptr %37, align 4
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %49, i32 0, i32 36
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %7) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %57, %53, %48
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1514) #10
  store i32 0, ptr %2, align 4
  %62 = tail call i32 @vb2_reqbufs(ptr noundef %43, ptr noundef %2) #9
  br label %117

63:                                               ; preds = %12
  %64 = load i32, ptr %2, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, ptr @mfc_debug_level, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1521) #10
  br label %71

71:                                               ; preds = %69, %66
  %72 = getelementptr i8, ptr %1, i32 116
  %73 = tail call i32 @vb2_reqbufs(ptr noundef %72, ptr noundef %2) #9
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %75, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(ptr noundef %7) #9
  br label %82

82:                                               ; preds = %81, %77, %71
  %83 = getelementptr i8, ptr %1, i32 916
  store i32 0, ptr %83, align 4
  br label %117

84:                                               ; preds = %63
  %85 = getelementptr i8, ptr %1, i32 916
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1530, i32 noundef %86) #10
  br label %117

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %93, 95
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = getelementptr i8, ptr %1, i32 2504
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp ult i32 %64, %97
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  store i32 %97, ptr %2, align 4
  %102 = load i32, ptr @mfc_debug_level, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, ptr %96, align 4
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1540, i32 noundef %105) #10
  br label %108

107:                                              ; preds = %95
  store i32 %64, ptr %96, align 4
  br label %108

108:                                              ; preds = %107, %104, %101, %90
  %109 = getelementptr i8, ptr %1, i32 116
  %110 = tail call i32 @vb2_reqbufs(ptr noundef %109, ptr noundef %2) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1548) #10
  br label %117

114:                                              ; preds = %108
  store i32 1, ptr %85, align 4
  br label %117

115:                                              ; preds = %12
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 1553) #10
  br label %117

117:                                              ; preds = %115, %114, %112, %88, %82, %60, %57, %46, %40, %34, %3
  %118 = phi i32 [ %25, %34 ], [ -22, %40 ], [ %44, %46 ], [ -12, %60 ], [ %73, %82 ], [ -22, %88 ], [ %110, %112 ], [ -22, %115 ], [ -22, %3 ], [ 0, %57 ], [ 0, %114 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %35 [
    i32 9, label %11
    i32 10, label %29
  ]

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 824
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 101
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 1571, i32 noundef %13) #10
  br label %37

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %1, i32 456
  %19 = tail call i32 @vb2_querybuf(ptr noundef %18, ptr noundef %2) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 1576) #10
  br label %37

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 9
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.v4l2_plane, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1073741824
  store i32 %28, ptr %26, align 4
  br label %37

29:                                               ; preds = %8
  %30 = getelementptr i8, ptr %1, i32 116
  %31 = tail call i32 @vb2_querybuf(ptr noundef %30, ptr noundef %2) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 1583) #10
  br label %37

35:                                               ; preds = %8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 1587) #10
  br label %37

37:                                               ; preds = %35, %33, %29, %23, %21, %15, %3
  %38 = phi i32 [ -22, %15 ], [ %19, %21 ], [ %31, %33 ], [ -22, %35 ], [ -22, %3 ], [ 0, %29 ], [ 0, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 824
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 109
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.vidioc_qbuf, i32 noundef 1599) #10
  br label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %22 [
    i32 10, label %12
    i32 9, label %19
  ]

12:                                               ; preds = %9
  %13 = icmp eq i32 %5, 106
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.vidioc_qbuf, i32 noundef 1604) #10
  br label %22

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 116
  %18 = tail call i32 @vb2_qbuf(ptr noundef %17, ptr noundef null, ptr noundef %2) #9
  br label %22

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %1, i32 456
  %21 = tail call i32 @vb2_qbuf(ptr noundef %20, ptr noundef null, ptr noundef %2) #9
  br label %22

22:                                               ; preds = %19, %16, %14, %9, %7
  %23 = phi i32 [ -5, %7 ], [ -5, %14 ], [ %18, %16 ], [ %21, %19 ], [ -22, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_expbuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %10 [
    i32 10, label %6
    i32 9, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 456, %5 ], [ 116, %3 ]
  %8 = getelementptr i8, ptr %1, i32 %7
  %9 = tail call i32 @vb2_expbuf(ptr noundef %8, ptr noundef %2) #9
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ -22, %3 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_dqbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.v4l2_event, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false)
  store i32 2, ptr %4, align 8
  %5 = getelementptr i8, ptr %1, i32 824
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 109
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = tail call i32 @___ratelimit(ptr noundef nonnull @vidioc_dqbuf._rs, ptr noundef nonnull @__func__.vidioc_dqbuf) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.vidioc_dqbuf, i32 noundef 1624) #10
  br label %39

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %39 [
    i32 10, label %16
    i32 9, label %23
  ]

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %1, i32 116
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp ne i32 %20, 0
  %22 = tail call i32 @vb2_dqbuf(ptr noundef %17, ptr noundef %2, i1 noundef zeroext %21) #9
  br label %39

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %1, i32 456
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  %29 = tail call i32 @vb2_dqbuf(ptr noundef %24, ptr noundef %2, i1 noundef zeroext %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 107
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %1, i32 728
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull %4) #9
  br label %39

39:                                               ; preds = %38, %34, %31, %23, %16, %13, %11, %8
  %40 = phi i32 [ -5, %11 ], [ -5, %8 ], [ %22, %16 ], [ 0, %38 ], [ 0, %34 ], [ 0, %31 ], [ %29, %23 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #9
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  switch i32 %2, label %9 [
    i32 10, label %5
    i32 9, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 456, %4 ], [ 116, %3 ]
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = tail call i32 @vb2_streamon(ptr noundef %7, i32 noundef %2) #9
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ -22, %3 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_streamoff(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  switch i32 %2, label %9 [
    i32 10, label %5
    i32 9, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 456, %4 ], [ 116, %3 ]
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = tail call i32 @vb2_streamoff(ptr noundef %7, i32 noundef %2) #9
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ -22, %3 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_encoder_cmd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %57

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 412
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #9
  %20 = getelementptr i8, ptr %1, i32 796
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  %23 = load i32, ptr @mfc_debug_level, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %22, label %25, label %42

25:                                               ; preds = %17
  br i1 %24, label %26, label %28

26:                                               ; preds = %25
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.vidioc_encoder_cmd, i32 noundef 2293) #10
  br label %28

28:                                               ; preds = %26, %25
  %29 = getelementptr i8, ptr %1, i32 824
  store i32 106, ptr %29, align 4
  %30 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %4)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @set_work_bit_irqsave(ptr noundef %4) #9
  br label %33

33:                                               ; preds = %32, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %35, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %5) #9
  br label %57

42:                                               ; preds = %17
  br i1 %24, label %43, label %45

43:                                               ; preds = %42
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.vidioc_encoder_cmd, i32 noundef 2300) #10
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr i8, ptr %1, i32 800
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 16
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %1, i32 824
  store i32 106, ptr %53, align 4
  br label %56

54:                                               ; preds = %45
  %55 = or i32 %49, 2
  store i32 %55, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  br label %57

57:                                               ; preds = %56, %41, %37, %33, %12, %8, %3
  %58 = phi i32 [ -22, %8 ], [ -22, %12 ], [ -22, %3 ], [ 0, %56 ], [ 0, %33 ], [ 0, %37 ], [ 0, %41 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 2652
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %8, ptr %10, align 4
  %11 = getelementptr i8, ptr %1, i32 2656
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %9, align 4
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.vidioc_g_parm, i32 noundef 2269) #10
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ 0, %6 ], [ -22, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 2652
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr i8, ptr %1, i32 2656
  store i32 %11, ptr %12, align 4
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.vidioc_s_parm, i32 noundef 2252) #10
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ 0, %6 ], [ -22, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_subscribe_event(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_enc_g_v_ctrl(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -3552
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 9963816
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 -2724
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -102
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %3, i32 -1044
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 %16, ptr %17, align 4
  br label %35

18:                                               ; preds = %9
  %19 = icmp eq i32 %11, 100
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %21) #10
  br label %35

23:                                               ; preds = %18
  %24 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 3, i32 noundef 0) #9
  %25 = load i32, ptr %10, align 4
  %26 = add i32 %25, -102
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %3, i32 -1044
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 %30, ptr %31, align 4
  br label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %33) #10
  br label %35

35:                                               ; preds = %32, %28, %20, %14, %1
  %36 = phi i32 [ -22, %20 ], [ -22, %32 ], [ 0, %1 ], [ 0, %28 ], [ 0, %14 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_enc_s_ctrl(ptr noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -3552
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %559 [
    i32 10029515, label %8
    i32 10029533, label %13
    i32 10029532, label %17
    i32 10029531, label %22
    i32 10029526, label %27
    i32 10031364, label %32
    i32 10031365, label %36
    i32 10029527, label %49
    i32 10029519, label %53
    i32 10031367, label %57
    i32 10031363, label %62
    i32 10029541, label %66
    i32 10029534, label %68
    i32 10029539, label %73
    i32 10029540, label %77
    i32 10029668, label %81
    i32 10029528, label %86
    i32 10031362, label %90
    i32 10029958, label %90
    i32 10031366, label %94
    i32 10029514, label %98
    i32 10029675, label %103
    i32 10029671, label %119
    i32 10029717, label %127
    i32 10029674, label %135
    i32 10029672, label %139
    i32 10029673, label %144
    i32 10029669, label %149
    i32 10031414, label %153
    i32 10029667, label %158
    i32 10029530, label %162
    i32 10029662, label %166
    i32 10029665, label %171
    i32 10029666, label %176
    i32 10029663, label %181
    i32 10029664, label %186
    i32 10029712, label %191
    i32 10029612, label %191
    i32 10029715, label %196
    i32 10029615, label %196
    i32 10029716, label %201
    i32 10029616, label %201
    i32 10029713, label %206
    i32 10029613, label %206
    i32 10029714, label %211
    i32 10029614, label %211
    i32 10031411, label %216
    i32 10031412, label %220
    i32 10031413, label %224
    i32 10031410, label %228
    i32 10029678, label %232
    i32 10029679, label %236
    i32 10029677, label %243
    i32 10029676, label %248
    i32 10029516, label %253
    i32 10029670, label %259
    i32 10029718, label %264
    i32 10029719, label %271
    i32 10029812, label %275
    i32 10029813, label %279
    i32 10029814, label %284
    i32 10029815, label %288
    i32 10029816, label %293
    i32 10029817, label %298
    i32 10029818, label %302
    i32 10029819, label %306
    i32 10029820, label %311
    i32 10029821, label %316
    i32 10029822, label %321
    i32 10029823, label %326
    i32 10029914, label %331
    i32 10029915, label %336
    i32 10029916, label %341
    i32 10029929, label %346
    i32 10029912, label %350
    i32 10029913, label %359
    i32 10029928, label %368
    i32 10029927, label %376
    i32 10029930, label %383
    i32 10029931, label %388
    i32 10029955, label %393
    i32 10029935, label %398
    i32 10029938, label %403
    i32 10029937, label %408
    i32 10029939, label %413
    i32 10029932, label %418
    i32 10029917, label %423
    i32 10029918, label %428
    i32 10029919, label %432
    i32 10029920, label %437
    i32 10029921, label %442
    i32 10029922, label %447
    i32 10029923, label %452
    i32 10029924, label %457
    i32 10029925, label %462
    i32 10029926, label %467
    i32 10029948, label %472
    i32 10029949, label %476
    i32 10029950, label %480
    i32 10029951, label %484
    i32 10029952, label %488
    i32 10029953, label %492
    i32 10029954, label %496
    i32 10029940, label %500
    i32 10029941, label %505
    i32 10029942, label %510
    i32 10029944, label %515
    i32 10029945, label %520
    i32 10029943, label %526
    i32 10029946, label %531
    i32 10029936, label %536
    i32 10029933, label %541
    i32 10029934, label %545
    i32 10029947, label %549
    i32 10029956, label %554
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i16
  %12 = getelementptr i8, ptr %3, i32 -960
  store i16 %11, ptr %12, align 4
  br label %564

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %3, i32 -956
  store i32 %15, ptr %16, align 4
  br label %564

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr i8, ptr %3, i32 -952
  store i16 %20, ptr %21, align 4
  br label %564

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = getelementptr i8, ptr %3, i32 -948
  store i32 %25, ptr %26, align 4
  br label %564

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr i8, ptr %3, i32 -944
  store i16 %30, ptr %31, align 4
  br label %564

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %3, i32 -940
  store i32 %34, ptr %35, align 4
  br label %564

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr i8, ptr %3, i32 -936
  store i8 %40, ptr %41, align 4
  %42 = load i32, ptr %37, align 4
  %43 = lshr i32 %42, 8
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %3, i32 -935
  store i8 %44, ptr %45, align 1
  %46 = load i32, ptr %37, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %3, i32 -934
  store i8 %47, ptr %48, align 2
  br label %564

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %3, i32 -932
  store i32 %51, ptr %52, align 4
  br label %564

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %3, i32 -924
  store i32 %55, ptr %56, align 4
  br label %564

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr i8, ptr %3, i32 -920
  store i16 %60, ptr %61, align 4
  br label %564

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %3, i32 -540
  store i32 %64, ptr %65, align 4
  br label %564

66:                                               ; preds = %1
  %67 = getelementptr i8, ptr %3, i32 -540
  store i32 1, ptr %67, align 4
  br label %564

68:                                               ; preds = %1
  %69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %70 = load i32, ptr %69, align 4
  %71 = trunc i32 %70 to i16
  %72 = getelementptr i8, ptr %3, i32 -918
  store i16 %71, ptr %72, align 2
  br label %564

73:                                               ; preds = %1
  %74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %3, i32 -968
  store i32 %75, ptr %76, align 4
  br label %564

77:                                               ; preds = %1
  %78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %3, i32 -964
  store i32 %79, ptr %80, align 4
  br label %564

81:                                               ; preds = %1
  %82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %83 = load i32, ptr %82, align 4
  %84 = trunc i32 %83 to i16
  %85 = getelementptr i8, ptr %3, i32 -816
  store i16 %84, ptr %85, align 4
  br label %564

86:                                               ; preds = %1
  %87 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %3, i32 -912
  store i32 %88, ptr %89, align 4
  br label %564

90:                                               ; preds = %1, %1
  %91 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %3, i32 -908
  store i32 %92, ptr %93, align 4
  br label %564

94:                                               ; preds = %1
  %95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %3, i32 -904
  store i32 %96, ptr %97, align 4
  br label %564

98:                                               ; preds = %1
  %99 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %100 = load i32, ptr %99, align 4
  %101 = trunc i32 %100 to i8
  %102 = getelementptr i8, ptr %3, i32 -900
  store i8 %101, ptr %102, align 4
  br label %564

103:                                              ; preds = %1
  %104 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %105 = load i32, ptr %104, align 4
  switch i32 %105, label %564 [
    i32 2, label %106
    i32 4, label %108
    i32 0, label %110
    i32 1, label %112
  ]

106:                                              ; preds = %103
  %107 = getelementptr i8, ptr %3, i32 -888
  store i32 0, ptr %107, align 4
  br label %564

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %3, i32 -888
  store i32 1, ptr %109, align 4
  br label %564

110:                                              ; preds = %103
  %111 = getelementptr i8, ptr %3, i32 -888
  store i32 2, ptr %111, align 4
  br label %564

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp ugt i32 %115, 95
  br i1 %116, label %117, label %564

117:                                              ; preds = %112
  %118 = getelementptr i8, ptr %3, i32 -888
  store i32 3, ptr %118, align 4
  br label %564

119:                                              ; preds = %1
  %120 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %3, i32 -824
  store i32 %121, ptr %122, align 4
  %123 = load i32, ptr %120, align 4
  %124 = getelementptr [12 x i32], ptr @h264_level.t, i32 0, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr i8, ptr %3, i32 -820
  store i32 %125, ptr %126, align 4
  br label %564

127:                                              ; preds = %1
  %128 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i8, ptr %3, i32 -712
  store i32 %129, ptr %130, align 4
  %131 = load i32, ptr %128, align 4
  %132 = getelementptr [8 x i32], ptr @mpeg4_level.t, i32 0, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %3, i32 -708
  store i32 %133, ptr %134, align 4
  br label %564

135:                                              ; preds = %1
  %136 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %3, i32 -884
  store i32 %137, ptr %138, align 4
  br label %564

139:                                              ; preds = %1
  %140 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %141 = load i32, ptr %140, align 4
  %142 = trunc i32 %141 to i8
  %143 = getelementptr i8, ptr %3, i32 -880
  store i8 %142, ptr %143, align 4
  br label %564

144:                                              ; preds = %1
  %145 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %146 = load i32, ptr %145, align 4
  %147 = trunc i32 %146 to i8
  %148 = getelementptr i8, ptr %3, i32 -879
  store i8 %147, ptr %148, align 1
  br label %564

149:                                              ; preds = %1
  %150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr i8, ptr %3, i32 -876
  store i32 %151, ptr %152, align 4
  br label %564

153:                                              ; preds = %1
  %154 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %155 = load i32, ptr %154, align 4
  %156 = trunc i32 %155 to i8
  %157 = getelementptr i8, ptr %3, i32 -871
  store i8 %156, ptr %157, align 1
  br label %564

158:                                              ; preds = %1
  %159 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %3, i32 -868
  store i32 %160, ptr %161, align 4
  br label %564

162:                                              ; preds = %1
  %163 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i8, ptr %3, i32 -928
  store i32 %164, ptr %165, align 4
  br label %564

166:                                              ; preds = %1
  %167 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %168 = load i32, ptr %167, align 4
  %169 = trunc i32 %168 to i8
  %170 = getelementptr i8, ptr %3, i32 -830
  store i8 %169, ptr %170, align 2
  br label %564

171:                                              ; preds = %1
  %172 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %173 = load i32, ptr %172, align 4
  %174 = trunc i32 %173 to i8
  %175 = getelementptr i8, ptr %3, i32 -829
  store i8 %174, ptr %175, align 1
  br label %564

176:                                              ; preds = %1
  %177 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %178 = load i32, ptr %177, align 4
  %179 = trunc i32 %178 to i8
  %180 = getelementptr i8, ptr %3, i32 -828
  store i8 %179, ptr %180, align 4
  br label %564

181:                                              ; preds = %1
  %182 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %183 = load i32, ptr %182, align 4
  %184 = trunc i32 %183 to i8
  %185 = getelementptr i8, ptr %3, i32 -827
  store i8 %184, ptr %185, align 1
  br label %564

186:                                              ; preds = %1
  %187 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %188 = load i32, ptr %187, align 4
  %189 = trunc i32 %188 to i8
  %190 = getelementptr i8, ptr %3, i32 -826
  store i8 %189, ptr %190, align 2
  br label %564

191:                                              ; preds = %1, %1
  %192 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %193 = load i32, ptr %192, align 4
  %194 = trunc i32 %193 to i8
  %195 = getelementptr i8, ptr %3, i32 -720
  store i8 %194, ptr %195, align 4
  br label %564

196:                                              ; preds = %1, %1
  %197 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %198 = load i32, ptr %197, align 4
  %199 = trunc i32 %198 to i8
  %200 = getelementptr i8, ptr %3, i32 -719
  store i8 %199, ptr %200, align 1
  br label %564

201:                                              ; preds = %1, %1
  %202 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %203 = load i32, ptr %202, align 4
  %204 = trunc i32 %203 to i8
  %205 = getelementptr i8, ptr %3, i32 -718
  store i8 %204, ptr %205, align 2
  br label %564

206:                                              ; preds = %1, %1
  %207 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %208 = load i32, ptr %207, align 4
  %209 = trunc i32 %208 to i8
  %210 = getelementptr i8, ptr %3, i32 -717
  store i8 %209, ptr %210, align 1
  br label %564

211:                                              ; preds = %1, %1
  %212 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %213 = load i32, ptr %212, align 4
  %214 = trunc i32 %213 to i8
  %215 = getelementptr i8, ptr %3, i32 -716
  store i8 %214, ptr %215, align 4
  br label %564

216:                                              ; preds = %1
  %217 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr i8, ptr %3, i32 -864
  store i32 %218, ptr %219, align 4
  br label %564

220:                                              ; preds = %1
  %221 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr i8, ptr %3, i32 -860
  store i32 %222, ptr %223, align 4
  br label %564

224:                                              ; preds = %1
  %225 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr i8, ptr %3, i32 -856
  store i32 %226, ptr %227, align 4
  br label %564

228:                                              ; preds = %1
  %229 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr i8, ptr %3, i32 -852
  store i32 %230, ptr %231, align 4
  br label %564

232:                                              ; preds = %1
  %233 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr i8, ptr %3, i32 -848
  store i32 %234, ptr %235, align 4
  br label %564

236:                                              ; preds = %1
  %237 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr [18 x i32], ptr @vui_sar_idc.t, i32 0, i32 %238
  %240 = load i32, ptr %239, align 4
  %241 = trunc i32 %240 to i8
  %242 = getelementptr i8, ptr %3, i32 -844
  store i8 %241, ptr %242, align 4
  br label %564

243:                                              ; preds = %1
  %244 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %245 = load i32, ptr %244, align 4
  %246 = trunc i32 %245 to i16
  %247 = getelementptr i8, ptr %3, i32 -842
  store i16 %246, ptr %247, align 2
  br label %564

248:                                              ; preds = %1
  %249 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %250 = load i32, ptr %249, align 4
  %251 = trunc i32 %250 to i16
  %252 = getelementptr i8, ptr %3, i32 -840
  store i16 %251, ptr %252, align 4
  br label %564

253:                                              ; preds = %1
  %254 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = getelementptr i8, ptr %3, i32 -836
  store i32 %257, ptr %258, align 4
  br label %564

259:                                              ; preds = %1
  %260 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %261 = load i32, ptr %260, align 4
  %262 = trunc i32 %261 to i16
  %263 = getelementptr i8, ptr %3, i32 -832
  store i16 %262, ptr %263, align 4
  br label %564

264:                                              ; preds = %1
  %265 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %266 = load i32, ptr %265, align 4
  switch i32 %266, label %564 [
    i32 0, label %267
    i32 1, label %269
  ]

267:                                              ; preds = %264
  %268 = getelementptr i8, ptr %3, i32 -732
  store i32 0, ptr %268, align 4
  br label %564

269:                                              ; preds = %264
  %270 = getelementptr i8, ptr %3, i32 -732
  store i32 1, ptr %270, align 4
  br label %564

271:                                              ; preds = %1
  %272 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i8, ptr %3, i32 -728
  store i32 %273, ptr %274, align 4
  br label %564

275:                                              ; preds = %1
  %276 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr i8, ptr %3, i32 -700
  store i32 %277, ptr %278, align 4
  br label %564

279:                                              ; preds = %1
  %280 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %281 = load i32, ptr %280, align 4
  %282 = trunc i32 %281 to i8
  %283 = getelementptr i8, ptr %3, i32 -704
  store i8 %282, ptr %283, align 4
  br label %564

284:                                              ; preds = %1
  %285 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr i8, ptr %3, i32 -696
  store i32 %286, ptr %287, align 4
  br label %564

288:                                              ; preds = %1
  %289 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %290 = load i32, ptr %289, align 4
  %291 = trunc i32 %290 to i8
  %292 = getelementptr i8, ptr %3, i32 -692
  store i8 %291, ptr %292, align 4
  br label %564

293:                                              ; preds = %1
  %294 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %295 = load i32, ptr %294, align 4
  %296 = trunc i32 %295 to i8
  %297 = getelementptr i8, ptr %3, i32 -691
  store i8 %296, ptr %297, align 1
  br label %564

298:                                              ; preds = %1
  %299 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr i8, ptr %3, i32 -688
  store i32 %300, ptr %301, align 4
  br label %564

302:                                              ; preds = %1
  %303 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr i8, ptr %3, i32 -684
  store i32 %304, ptr %305, align 4
  br label %564

306:                                              ; preds = %1
  %307 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %308 = load i32, ptr %307, align 4
  %309 = trunc i32 %308 to i8
  %310 = getelementptr i8, ptr %3, i32 -676
  store i8 %309, ptr %310, align 4
  br label %564

311:                                              ; preds = %1
  %312 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %313 = load i32, ptr %312, align 4
  %314 = trunc i32 %313 to i8
  %315 = getelementptr i8, ptr %3, i32 -675
  store i8 %314, ptr %315, align 1
  br label %564

316:                                              ; preds = %1
  %317 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %318 = load i32, ptr %317, align 4
  %319 = trunc i32 %318 to i8
  %320 = getelementptr i8, ptr %3, i32 -674
  store i8 %319, ptr %320, align 2
  br label %564

321:                                              ; preds = %1
  %322 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %323 = load i32, ptr %322, align 4
  %324 = trunc i32 %323 to i8
  %325 = getelementptr i8, ptr %3, i32 -673
  store i8 %324, ptr %325, align 1
  br label %564

326:                                              ; preds = %1
  %327 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %328 = load i32, ptr %327, align 4
  %329 = trunc i32 %328 to i8
  %330 = getelementptr i8, ptr %3, i32 -672
  store i8 %329, ptr %330, align 4
  br label %564

331:                                              ; preds = %1
  %332 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %333 = load i32, ptr %332, align 4
  %334 = trunc i32 %333 to i8
  %335 = getelementptr i8, ptr %3, i32 -642
  store i8 %334, ptr %335, align 2
  br label %564

336:                                              ; preds = %1
  %337 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %338 = load i32, ptr %337, align 4
  %339 = trunc i32 %338 to i8
  %340 = getelementptr i8, ptr %3, i32 -641
  store i8 %339, ptr %340, align 1
  br label %564

341:                                              ; preds = %1
  %342 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %343 = load i32, ptr %342, align 4
  %344 = trunc i32 %343 to i8
  %345 = getelementptr i8, ptr %3, i32 -640
  store i8 %344, ptr %345, align 4
  br label %564

346:                                              ; preds = %1
  %347 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr i8, ptr %3, i32 -652
  store i32 %348, ptr %349, align 4
  br label %564

350:                                              ; preds = %1
  %351 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %352 = load i32, ptr %351, align 4
  %353 = trunc i32 %352 to i8
  %354 = getelementptr i8, ptr %3, i32 -648
  store i8 %353, ptr %354, align 4
  %355 = load i32, ptr %351, align 4
  %356 = getelementptr i8, ptr %3, i32 -647
  %357 = load i8, ptr %356, align 1
  %358 = zext i8 %357 to i32
  tail call fastcc void @__enc_update_hevc_qp_ctrls_range(ptr noundef %4, i32 noundef %355, i32 noundef %358)
  br label %564

359:                                              ; preds = %1
  %360 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %361 = load i32, ptr %360, align 4
  %362 = trunc i32 %361 to i8
  %363 = getelementptr i8, ptr %3, i32 -647
  store i8 %362, ptr %363, align 1
  %364 = getelementptr i8, ptr %3, i32 -648
  %365 = load i8, ptr %364, align 4
  %366 = zext i8 %365 to i32
  %367 = load i32, ptr %360, align 4
  tail call fastcc void @__enc_update_hevc_qp_ctrls_range(ptr noundef %4, i32 noundef %366, i32 noundef %367)
  br label %564

368:                                              ; preds = %1
  %369 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr i8, ptr %3, i32 -660
  store i32 %370, ptr %371, align 4
  %372 = load i32, ptr %369, align 4
  %373 = getelementptr [13 x i32], ptr @hevc_level.t, i32 0, i32 %372
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i8, ptr %3, i32 -664
  store i32 %374, ptr %375, align 4
  br label %564

376:                                              ; preds = %1
  %377 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %378 = load i32, ptr %377, align 4
  switch i32 %378, label %564 [
    i32 0, label %379
    i32 1, label %381
  ]

379:                                              ; preds = %376
  %380 = getelementptr i8, ptr %3, i32 -668
  store i32 0, ptr %380, align 4
  br label %564

381:                                              ; preds = %376
  %382 = getelementptr i8, ptr %3, i32 -668
  store i32 1, ptr %382, align 4
  br label %564

383:                                              ; preds = %1
  %384 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %385 = load i32, ptr %384, align 4
  %386 = trunc i32 %385 to i8
  %387 = getelementptr i8, ptr %3, i32 -656
  store i8 %386, ptr %387, align 4
  br label %564

388:                                              ; preds = %1
  %389 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %390 = load i32, ptr %389, align 4
  %391 = trunc i32 %390 to i8
  %392 = getelementptr i8, ptr %3, i32 -639
  store i8 %391, ptr %392, align 1
  br label %564

393:                                              ; preds = %1
  %394 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %395 = load i32, ptr %394, align 4
  %396 = trunc i32 %395 to i8
  %397 = getelementptr i8, ptr %3, i32 -638
  store i8 %396, ptr %397, align 2
  br label %564

398:                                              ; preds = %1
  %399 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %400 = load i32, ptr %399, align 4
  %401 = trunc i32 %400 to i8
  %402 = getelementptr i8, ptr %3, i32 -637
  store i8 %401, ptr %402, align 1
  br label %564

403:                                              ; preds = %1
  %404 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %405 = load i32, ptr %404, align 4
  %406 = trunc i32 %405 to i8
  %407 = getelementptr i8, ptr %3, i32 -618
  store i8 %406, ptr %407, align 2
  br label %564

408:                                              ; preds = %1
  %409 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %410 = load i32, ptr %409, align 4
  %411 = trunc i32 %410 to i8
  %412 = getelementptr i8, ptr %3, i32 -617
  store i8 %411, ptr %412, align 1
  br label %564

413:                                              ; preds = %1
  %414 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %415 = load i32, ptr %414, align 4
  %416 = trunc i32 %415 to i8
  %417 = getelementptr i8, ptr %3, i32 -616
  store i8 %416, ptr %417, align 4
  br label %564

418:                                              ; preds = %1
  %419 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %420 = load i32, ptr %419, align 4
  %421 = trunc i32 %420 to i8
  %422 = getelementptr i8, ptr %3, i32 -624
  store i8 %421, ptr %422, align 4
  br label %564

423:                                              ; preds = %1
  %424 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %425 = load i32, ptr %424, align 4
  %426 = trunc i32 %425 to i8
  %427 = getelementptr i8, ptr %3, i32 -614
  store i8 %426, ptr %427, align 2
  br label %564

428:                                              ; preds = %1
  %429 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %430 = load i32, ptr %429, align 4
  %431 = getelementptr i8, ptr %3, i32 -612
  store i32 %430, ptr %431, align 4
  br label %564

432:                                              ; preds = %1
  %433 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %434 = load i32, ptr %433, align 4
  %435 = trunc i32 %434 to i8
  %436 = getelementptr i8, ptr %3, i32 -608
  store i8 %435, ptr %436, align 4
  br label %564

437:                                              ; preds = %1
  %438 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %439 = load i32, ptr %438, align 4
  %440 = trunc i32 %439 to i8
  %441 = getelementptr i8, ptr %3, i32 -607
  store i8 %440, ptr %441, align 1
  br label %564

442:                                              ; preds = %1
  %443 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %444 = load i32, ptr %443, align 4
  %445 = trunc i32 %444 to i8
  %446 = getelementptr i8, ptr %3, i32 -606
  store i8 %445, ptr %446, align 1
  br label %564

447:                                              ; preds = %1
  %448 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %449 = load i32, ptr %448, align 4
  %450 = trunc i32 %449 to i8
  %451 = getelementptr i8, ptr %3, i32 -605
  store i8 %450, ptr %451, align 1
  br label %564

452:                                              ; preds = %1
  %453 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %454 = load i32, ptr %453, align 4
  %455 = trunc i32 %454 to i8
  %456 = getelementptr i8, ptr %3, i32 -604
  store i8 %455, ptr %456, align 1
  br label %564

457:                                              ; preds = %1
  %458 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %459 = load i32, ptr %458, align 4
  %460 = trunc i32 %459 to i8
  %461 = getelementptr i8, ptr %3, i32 -603
  store i8 %460, ptr %461, align 1
  br label %564

462:                                              ; preds = %1
  %463 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %464 = load i32, ptr %463, align 4
  %465 = trunc i32 %464 to i8
  %466 = getelementptr i8, ptr %3, i32 -602
  store i8 %465, ptr %466, align 1
  br label %564

467:                                              ; preds = %1
  %468 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %469 = load i32, ptr %468, align 4
  %470 = trunc i32 %469 to i8
  %471 = getelementptr i8, ptr %3, i32 -601
  store i8 %470, ptr %471, align 1
  br label %564

472:                                              ; preds = %1
  %473 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %474 = load i32, ptr %473, align 4
  %475 = getelementptr i8, ptr %3, i32 -600
  store i32 %474, ptr %475, align 4
  br label %564

476:                                              ; preds = %1
  %477 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %478 = load i32, ptr %477, align 4
  %479 = getelementptr i8, ptr %3, i32 -596
  store i32 %478, ptr %479, align 4
  br label %564

480:                                              ; preds = %1
  %481 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %482 = load i32, ptr %481, align 4
  %483 = getelementptr i8, ptr %3, i32 -592
  store i32 %482, ptr %483, align 4
  br label %564

484:                                              ; preds = %1
  %485 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %486 = load i32, ptr %485, align 4
  %487 = getelementptr i8, ptr %3, i32 -588
  store i32 %486, ptr %487, align 4
  br label %564

488:                                              ; preds = %1
  %489 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr i8, ptr %3, i32 -584
  store i32 %490, ptr %491, align 4
  br label %564

492:                                              ; preds = %1
  %493 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr i8, ptr %3, i32 -580
  store i32 %494, ptr %495, align 4
  br label %564

496:                                              ; preds = %1
  %497 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr i8, ptr %3, i32 -576
  store i32 %498, ptr %499, align 4
  br label %564

500:                                              ; preds = %1
  %501 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %502 = load i32, ptr %501, align 4
  %503 = trunc i32 %502 to i8
  %504 = getelementptr i8, ptr %3, i32 -571
  store i8 %503, ptr %504, align 1
  br label %564

505:                                              ; preds = %1
  %506 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %507 = load i32, ptr %506, align 4
  %508 = trunc i32 %507 to i8
  %509 = getelementptr i8, ptr %3, i32 -570
  store i8 %508, ptr %509, align 2
  br label %564

510:                                              ; preds = %1
  %511 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %512 = load i32, ptr %511, align 4
  %513 = trunc i32 %512 to i8
  %514 = getelementptr i8, ptr %3, i32 -569
  store i8 %513, ptr %514, align 1
  br label %564

515:                                              ; preds = %1
  %516 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %517 = load i32, ptr %516, align 4
  %518 = trunc i32 %517 to i8
  %519 = getelementptr i8, ptr %3, i32 -568
  store i8 %518, ptr %519, align 4
  br label %564

520:                                              ; preds = %1
  %521 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %522 = load i32, ptr %521, align 4
  %523 = icmp eq i32 %522, 0
  %524 = zext i1 %523 to i8
  %525 = getelementptr i8, ptr %3, i32 -567
  store i8 %524, ptr %525, align 1
  br label %564

526:                                              ; preds = %1
  %527 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %528 = load i32, ptr %527, align 4
  %529 = trunc i32 %528 to i8
  %530 = getelementptr i8, ptr %3, i32 -566
  store i8 %529, ptr %530, align 2
  br label %564

531:                                              ; preds = %1
  %532 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %533 = load i32, ptr %532, align 4
  %534 = trunc i32 %533 to i8
  %535 = getelementptr i8, ptr %3, i32 -564
  store i8 %534, ptr %535, align 4
  br label %564

536:                                              ; preds = %1
  %537 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %538 = load i32, ptr %537, align 4
  %539 = trunc i32 %538 to i16
  %540 = getelementptr i8, ptr %3, i32 -636
  store i16 %539, ptr %540, align 4
  br label %564

541:                                              ; preds = %1
  %542 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %543 = load i32, ptr %542, align 4
  %544 = getelementptr i8, ptr %3, i32 -632
  store i32 %543, ptr %544, align 4
  br label %564

545:                                              ; preds = %1
  %546 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %547 = load i32, ptr %546, align 4
  %548 = getelementptr i8, ptr %3, i32 -628
  store i32 %547, ptr %548, align 4
  br label %564

549:                                              ; preds = %1
  %550 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %551 = load i32, ptr %550, align 4
  %552 = trunc i32 %551 to i8
  %553 = getelementptr i8, ptr %3, i32 -563
  store i8 %552, ptr %553, align 1
  br label %564

554:                                              ; preds = %1
  %555 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %556 = load i32, ptr %555, align 4
  %557 = trunc i32 %556 to i8
  %558 = getelementptr i8, ptr %3, i32 -562
  store i8 %557, ptr %558, align 2
  br label %564

559:                                              ; preds = %1
  %560 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %561 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %562 = load i32, ptr %561, align 4
  %563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %560, i32 noundef %7, i32 noundef %562) #10
  br label %564

564:                                              ; preds = %559, %554, %549, %545, %541, %536, %531, %526, %520, %515, %510, %505, %500, %496, %492, %488, %484, %480, %476, %472, %467, %462, %457, %452, %447, %442, %437, %432, %428, %423, %418, %413, %408, %403, %398, %393, %388, %383, %381, %379, %376, %368, %359, %350, %346, %341, %336, %331, %326, %321, %316, %311, %306, %302, %298, %293, %288, %284, %279, %275, %271, %269, %267, %264, %259, %253, %248, %243, %236, %232, %228, %224, %220, %216, %211, %206, %201, %196, %191, %186, %181, %176, %171, %166, %162, %158, %153, %149, %144, %139, %135, %127, %119, %117, %112, %110, %108, %106, %103, %98, %94, %90, %86, %81, %77, %73, %68, %66, %62, %57, %53, %49, %36, %32, %27, %22, %17, %13, %8
  %565 = phi i32 [ -22, %559 ], [ 0, %554 ], [ 0, %549 ], [ 0, %545 ], [ 0, %541 ], [ 0, %536 ], [ 0, %531 ], [ 0, %526 ], [ 0, %520 ], [ 0, %515 ], [ 0, %510 ], [ 0, %505 ], [ 0, %500 ], [ 0, %496 ], [ 0, %492 ], [ 0, %488 ], [ 0, %484 ], [ 0, %480 ], [ 0, %476 ], [ 0, %472 ], [ 0, %467 ], [ 0, %462 ], [ 0, %457 ], [ 0, %452 ], [ 0, %447 ], [ 0, %442 ], [ 0, %437 ], [ 0, %432 ], [ 0, %428 ], [ 0, %423 ], [ 0, %418 ], [ 0, %413 ], [ 0, %408 ], [ 0, %403 ], [ 0, %398 ], [ 0, %393 ], [ 0, %388 ], [ 0, %383 ], [ 0, %381 ], [ 0, %379 ], [ 0, %368 ], [ 0, %359 ], [ 0, %350 ], [ 0, %346 ], [ 0, %341 ], [ 0, %336 ], [ 0, %331 ], [ 0, %326 ], [ 0, %321 ], [ 0, %316 ], [ 0, %311 ], [ 0, %306 ], [ 0, %302 ], [ 0, %298 ], [ 0, %293 ], [ 0, %288 ], [ 0, %284 ], [ 0, %279 ], [ 0, %275 ], [ 0, %271 ], [ 0, %269 ], [ 0, %267 ], [ 0, %259 ], [ 0, %253 ], [ 0, %248 ], [ 0, %243 ], [ 0, %236 ], [ 0, %232 ], [ 0, %228 ], [ 0, %224 ], [ 0, %220 ], [ 0, %216 ], [ 0, %211 ], [ 0, %206 ], [ 0, %201 ], [ 0, %196 ], [ 0, %191 ], [ 0, %186 ], [ 0, %181 ], [ 0, %176 ], [ 0, %171 ], [ 0, %166 ], [ 0, %162 ], [ 0, %158 ], [ 0, %153 ], [ 0, %149 ], [ 0, %144 ], [ 0, %139 ], [ 0, %135 ], [ 0, %127 ], [ 0, %119 ], [ 0, %117 ], [ 0, %110 ], [ 0, %108 ], [ 0, %106 ], [ 0, %98 ], [ 0, %94 ], [ 0, %90 ], [ 0, %86 ], [ 0, %81 ], [ 0, %77 ], [ 0, %73 ], [ 0, %68 ], [ 0, %66 ], [ 0, %62 ], [ 0, %57 ], [ 0, %53 ], [ 0, %49 ], [ 0, %36 ], [ 0, %32 ], [ 0, %27 ], [ 0, %22 ], [ 0, %17 ], [ 0, %13 ], [ 0, %8 ], [ -22, %112 ], [ -22, %103 ], [ -22, %264 ], [ -22, %376 ]
  ret i32 %565
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__enc_update_hevc_qp_ctrls_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = sext i32 %1 to i64
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %25, %3
  %7 = phi ptr [ null, %3 ], [ %22, %25 ]
  %8 = phi i32 [ 0, %3 ], [ %29, %25 ]
  %9 = getelementptr [10 x i32], ptr @__enc_update_hevc_qp_ctrls_range.__hevc_qp_ctrls, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i32 %15, 1
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ 0, %6 ], [ %12, %11 ]
  %16 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 64, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %21, label %11

21:                                               ; preds = %14, %11
  %22 = phi ptr [ %7, %11 ], [ %17, %14 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 1788, i32 noundef 9, ptr noundef null) #9
  br label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 18
  %27 = load i64, ptr %26, align 8
  %28 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef nonnull %22, i64 noundef %4, i64 noundef %5, i64 noundef %27, i64 noundef %4) #9
  %29 = add nuw nsw i32 %8, 1
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %6

31:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 3153514}
!11 = !{i64 2155125995}
