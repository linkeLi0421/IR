; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_dec.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_dec.c"
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
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.79, i32, i32, %union.anon.81 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
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
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89, [56 x i8] }
%struct.anon.89 = type { i64 }

@decoder_codec_ops = internal constant %struct.s5p_mfc_codec_ops zeroinitializer, align 4
@s5p_mfc_dec_qops = internal global %struct.vb2_ops { ptr @s5p_mfc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @s5p_mfc_buf_init, ptr null, ptr null, ptr null, ptr @s5p_mfc_start_streaming, ptr @s5p_mfc_stop_streaming, ptr @s5p_mfc_buf_queue, ptr null }, align 4
@s5p_mfc_dec_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_reqbufs, ptr @vidioc_querybuf, ptr @vidioc_qbuf, ptr @vidioc_expbuf, ptr @vidioc_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @vidioc_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%s:%d: v4l2_ctrl_handler_init failed\0A\00", align 1
@__func__.s5p_mfc_dec_ctrls_setup = private unnamed_addr constant [24 x i8] c"s5p_mfc_dec_ctrls_setup\00", align 1
@controls = internal global [7 x %struct.mfc_control] [%struct.mfc_control { i32 10031360, i32 1, [32 x i8] c"H264 Display Delay\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 16383, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029965, i32 1, [32 x i8] zeroinitializer, i32 0, i32 16383, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10031361, i32 2, [32 x i8] c"H264 Display Delay Enable\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029966, i32 2, [32 x i8] zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029525, i32 2, [32 x i8] c"Mpeg4 Loop Filter Enable\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 10029524, i32 2, [32 x i8] c"Slice Interface Enable\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i8 0 }, %struct.mfc_control { i32 9963815, i32 1, [32 x i8] c"Minimum number of cap bufs\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 0, i32 1, i32 0, [2 x i32] zeroinitializer, i8 1 }], align 4
@s5p_mfc_dec_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @s5p_mfc_dec_g_v_ctrl, ptr null, ptr @s5p_mfc_dec_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\013%s:%d: Adding control (%d) failed\0A\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"\017%s:%d: Default src_fmt is %p, dest_fmt is %p\0A\00", align 1
@__func__.s5p_mfc_dec_init = private unnamed_addr constant [17 x i8] c"s5p_mfc_dec_init\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\013%s:%d: State seems invalid. State = %d, vq->type = %d\0A\00", align 1
@__func__.s5p_mfc_queue_setup = private unnamed_addr constant [20 x i8] c"s5p_mfc_queue_setup\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\017%s:%d: Buffer count=%d, plane count=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"\013%s:%d: This video node is dedicated to decoding. Decoding not initialized\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013%s:%d: Plane mem not allocated\0A\00", align 1
@__func__.s5p_mfc_buf_init = private unnamed_addr constant [17 x i8] c"s5p_mfc_buf_init\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Plane buffer (CAPTURE) is too small\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013%s:%d: Plane memory not allocated\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\013%s:%d: Plane buffer (OUTPUT) is too small\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\013%s:%d: s5p_mfc_buf_init: unknown queue type\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\017%s:%d: ctx is not ready\0A\00", align 1
@__func__.s5p_mfc_ctx_ready = private unnamed_addr constant [18 x i8] c"s5p_mfc_ctx_ready\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\013%s:%d: Err flushing buffers\0A\00", align 1
@__func__.s5p_mfc_stop_streaming = private unnamed_addr constant [23 x i8] c"s5p_mfc_stop_streaming\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\013%s:%d: Unsupported buffer type (%d)\0A\00", align 1
@__func__.s5p_mfc_buf_queue = private unnamed_addr constant [18 x i8] c"s5p_mfc_buf_queue\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"s5p-mfc\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@formats = internal global [16 x %struct.s5p_mfc_fmt] [%struct.s5p_mfc_fmt { i32 842091862, i32 -1, i32 2, i32 2, i32 6 }, %struct.s5p_mfc_fmt { i32 842091860, i32 -1, i32 2, i32 2, i32 1 }, %struct.s5p_mfc_fmt { i32 842091854, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 825380174, i32 -1, i32 2, i32 2, i32 46 }, %struct.s5p_mfc_fmt { i32 875967048, i32 0, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 875967053, i32 1, i32 0, i32 1, i32 46 }, %struct.s5p_mfc_fmt { i32 859189832, i32 5, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 826757197, i32 4, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 843534413, i32 4, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 877088845, i32 3, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1145656920, i32 3, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1194410838, i32 2, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 1278296918, i32 6, i32 0, i32 1, i32 47 }, %struct.s5p_mfc_fmt { i32 808996950, i32 7, i32 0, i32 1, i32 46 }, %struct.s5p_mfc_fmt { i32 1129727304, i32 17, i32 0, i32 1, i32 32 }, %struct.s5p_mfc_fmt { i32 809062486, i32 18, i32 0, i32 1, i32 32 }], align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"\017%s:%d: enter\0A\00", align 1
@__func__.vidioc_g_fmt = private unnamed_addr constant [13 x i8] c"vidioc_g_fmt\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\013%s:%d: Format could not be read\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\017%s:%d: %s-- with error\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\017%s:%d: leave\0A\00", align 1
@__func__.vidioc_s_fmt = private unnamed_addr constant [13 x i8] c"vidioc_s_fmt\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\013%s: %s queue busy\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\017%s:%d: The codec number is: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\013%s:%d: Wrong type error for S_FMT : %d\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\017%s:%d: Type is %d\0A\00", align 1
@__func__.vidioc_try_fmt = private unnamed_addr constant [15 x i8] c"vidioc_try_fmt\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\013%s:%d: Unsupported format for source.\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"\013%s:%d: Unknown codec\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Unsupported format by this MFC version.\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Unsupported format for destination.\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"\017%s:%d: Only V4L2_MEMORY_MMAP is supported\0A\00", align 1
@__func__.vidioc_reqbufs = private unnamed_addr constant [15 x i8] c"vidioc_reqbufs\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\013%s:%d: Invalid type requested\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Freeing buffers\0A\00", align 1
@__func__.reqbufs_output = private unnamed_addr constant [15 x i8] c"reqbufs_output\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc_dec.c\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"\013%s:%d: Reqbufs called in an invalid state\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"\017%s:%d: Allocating %d buffers for OUTPUT queue\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Buffers have already been requested\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"\013%s:%d: Failed allocating buffers for OUTPUT queue\0A\00", align 1
@__func__.reqbufs_capture = private unnamed_addr constant [16 x i8] c"reqbufs_capture\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"\017%s:%d: Allocating %d buffers for CAPTURE queue\0A\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Failed to allocate decoding buffers\0A\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"\013%s:%d: Failed allocating buffers for CAPTURE queue\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"\013%s:%d: Only mmapped buffers can be used\0A\00", align 1
@__func__.vidioc_querybuf = private unnamed_addr constant [16 x i8] c"vidioc_querybuf\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"\017%s:%d: State: %d, buf->type: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"\013%s:%d: vidioc_querybuf called in an inappropriate state\0A\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"\013%s:%d: Call on QBUF after unrecoverable error\0A\00", align 1
@__func__.vidioc_qbuf = private unnamed_addr constant [12 x i8] c"vidioc_qbuf\00", align 1
@vidioc_dqbuf._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.vidioc_dqbuf = private unnamed_addr constant [13 x i8] c"vidioc_dqbuf\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Call on DQBUF after unrecoverable error\0A\00", align 1
@__func__.vidioc_streamon = private unnamed_addr constant [16 x i8] c"vidioc_streamon\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"\013%s:%d: Can not get compose information\0A\00", align 1
@__func__.vidioc_g_selection = private unnamed_addr constant [19 x i8] c"vidioc_g_selection\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c"\017%s:%d: Composing info [h264]: l=%d t=%d w=%d h=%d (r=%d b=%d fw=%d fh=%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"\017%s:%d: Composing info: w=%d h=%d fw=%d fh=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"\013%s:%d: EOS: empty src queue, entering finishing state\00", align 1
@__func__.vidioc_decoder_cmd = private unnamed_addr constant [19 x i8] c"vidioc_decoder_cmd\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"\013%s:%d: EOS: marking last buffer of stream\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"\013%s: Decoding not initialised\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"\013%s:%d: Invalid control 0x%08x\0A\00", align 1
@__func__.s5p_mfc_dec_s_ctrl = private unnamed_addr constant [19 x i8] c"s5p_mfc_dec_s_ctrl\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_codec_ops() local_unnamed_addr #0 {
  ret ptr @decoder_codec_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_queue_ops() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_dec_qops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @get_dec_v4l2_ioctl_ops() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_dec_ioctl_ops
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_dec_ctrls_setup(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.v4l2_ctrl_config, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65
  %4 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %3, i32 noundef 7, ptr noundef null, ptr noundef null) #9
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 5
  %11 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 6
  %12 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %2, i32 0, i32 7
  br label %18

16:                                               ; preds = %1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_dec_ctrls_setup, i32 noundef 1139) #10
  br label %78

18:                                               ; preds = %75, %8
  %19 = phi i32 [ 0, %8 ], [ %76, %75 ]
  %20 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 268369920
  %23 = icmp ne i32 %22, 10027008
  %24 = and i32 %21, 61440
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %23, %25
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false)
  store ptr @s5p_mfc_dec_ctrl_ops, ptr %2, align 8
  store i32 %21, ptr %9, align 8
  %28 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, ptr %10, align 8
  %31 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, ptr %11, align 8
  %34 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, ptr %12, align 8
  %37 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 2
  store ptr %37, ptr %13, align 4
  %38 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 1
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %14, align 8
  %40 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, ptr %15, align 8
  %43 = call ptr @v4l2_ctrl_new_custom(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null) #9
  br label %58

44:                                               ; preds = %18
  %45 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = sext i32 %55 to i64
  %57 = call ptr @v4l2_ctrl_new_std(ptr noundef %3, ptr noundef nonnull @s5p_mfc_dec_ctrl_ops, i32 noundef %21, i64 noundef %47, i64 noundef %50, i64 noundef %53, i64 noundef %56) #9
  br label %58

58:                                               ; preds = %44, %27
  %59 = phi ptr [ %57, %44 ], [ %43, %27 ]
  %60 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 64, i32 %19
  store ptr %59, ptr %60, align 4
  %61 = load i32, ptr %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_dec_ctrls_setup, i32 noundef 1167, i32 noundef %19) #10
  br label %78

65:                                               ; preds = %58
  %66 = getelementptr [7 x %struct.mfc_control], ptr @controls, i32 0, i32 %19, i32 10
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, 0
  %69 = icmp eq ptr %59, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.v4l2_ctrl, ptr %59, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 128
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = add nuw nsw i32 %19, 1
  %77 = icmp eq i32 %76, 7
  br i1 %77, label %80, label %18

78:                                               ; preds = %63, %16
  %79 = load i32, ptr %5, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32 [ %79, %78 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #9
  ret i32 %81
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
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_dec_ctrls_delete(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 65
  tail call void @v4l2_ctrl_handler_free(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 3040
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_dec_init(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.v4l2_format, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %2, i8 0, i32 204, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 875967048, ptr %3, align 4
  %4 = call fastcc ptr @find_format(ptr noundef nonnull %2, i32 noundef 0)
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 127
  %11 = icmp ugt i32 %9, 95
  %12 = select i1 %11, i32 842091862, i32 842091860
  %13 = select i1 %10, i32 842091854, i32 %12
  store i32 %13, ptr %3, align 4
  %14 = call fastcc ptr @find_format(ptr noundef nonnull %2, i32 noundef 2)
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 8
  store ptr %14, ptr %15, align 4
  %16 = load i32, ptr @mfc_debug_level, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_dec_init, i32 noundef 1198, ptr noundef %4, ptr noundef %14) #10
  br label %20

20:                                               ; preds = %18, %1
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @find_format(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @formats, align 4
  %6 = icmp eq i32 %5, %4
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  %8 = icmp eq i32 %7, %1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %101, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), align 4
  %12 = icmp eq i32 %11, %4
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  %14 = icmp eq i32 %13, %1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %101, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), align 4
  %18 = icmp eq i32 %17, %4
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  %20 = icmp eq i32 %19, %1
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %101, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), align 4
  %24 = icmp eq i32 %23, %4
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  %26 = icmp eq i32 %25, %1
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %101, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), align 4
  %30 = icmp eq i32 %29, %4
  %31 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  %32 = icmp eq i32 %31, %1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %101, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), align 4
  %36 = icmp eq i32 %35, %4
  %37 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  %38 = icmp eq i32 %37, %1
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %101, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), align 4
  %42 = icmp eq i32 %41, %4
  %43 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  %44 = icmp eq i32 %43, %1
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %101, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), align 4
  %48 = icmp eq i32 %47, %4
  %49 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  %50 = icmp eq i32 %49, %1
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %101, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), align 4
  %54 = icmp eq i32 %53, %4
  %55 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  %56 = icmp eq i32 %55, %1
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %101, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9), align 4
  %60 = icmp eq i32 %59, %4
  %61 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9, i32 2), align 4
  %62 = icmp eq i32 %61, %1
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %101, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10), align 4
  %66 = icmp eq i32 %65, %4
  %67 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10, i32 2), align 4
  %68 = icmp eq i32 %67, %1
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %101, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11), align 4
  %72 = icmp eq i32 %71, %4
  %73 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11, i32 2), align 4
  %74 = icmp eq i32 %73, %1
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %101, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12), align 4
  %78 = icmp eq i32 %77, %4
  %79 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12, i32 2), align 4
  %80 = icmp eq i32 %79, %1
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %101, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13), align 4
  %84 = icmp eq i32 %83, %4
  %85 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13, i32 2), align 4
  %86 = icmp eq i32 %85, %1
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %101, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14), align 4
  %90 = icmp eq i32 %89, %4
  %91 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14, i32 2), align 4
  %92 = icmp eq i32 %91, %1
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %101, label %94

94:                                               ; preds = %88
  %95 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15), align 4
  %96 = icmp eq i32 %95, %4
  %97 = load i32, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15, i32 2), align 4
  %98 = icmp eq i32 %97, %1
  %99 = select i1 %96, i1 %98, i1 false
  %100 = select i1 %99, ptr getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 15), ptr null
  br label %101

101:                                              ; preds = %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10, %2
  %102 = phi ptr [ @formats, %2 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 1), %10 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 2), %16 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 3), %22 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 4), %28 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 5), %34 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 6), %40 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 7), %46 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 8), %52 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 9), %58 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 10), %64 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 11), %70 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 12), %76 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 13), %82 ], [ getelementptr inbounds ([16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 14), %88 ], [ %100, %94 ]
  ret ptr %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #1 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 824
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 100, label %14
    i32 102, label %22
  ]

12:                                               ; preds = %5
  %13 = load i32, ptr %0, align 4
  br label %40

14:                                               ; preds = %5
  %15 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  store i32 1, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %17
  %21 = icmp ugt i32 %18, 32
  br i1 %21, label %45, label %47

22:                                               ; preds = %5
  %23 = load i32, ptr %0, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  store i32 2, ptr %2, align 4
  %26 = load i32, ptr %1, align 4
  %27 = getelementptr i8, ptr %7, i32 2504
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  store i32 %28, ptr %1, align 4
  %31 = load i32, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i32 [ %31, %30 ], [ %28, %25 ]
  %34 = phi i32 [ %28, %30 ], [ %26, %25 ]
  %35 = add i32 %33, 5
  %36 = icmp ugt i32 %34, %35
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %35)
  %38 = icmp ugt i32 %37, 32
  %39 = or i1 %36, %38
  br i1 %39, label %43, label %47

40:                                               ; preds = %22, %14, %12
  %41 = phi i32 [ %13, %12 ], [ %15, %14 ], [ %23, %22 ]
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_queue_setup, i32 noundef 933, i32 noundef %11, i32 noundef %41) #10
  br label %91

43:                                               ; preds = %32
  %44 = tail call i32 @llvm.umin.i32(i32 %37, i32 32)
  br label %45

45:                                               ; preds = %43, %20, %17
  %46 = phi i32 [ %44, %43 ], [ 1, %17 ], [ 32, %20 ]
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %45, %32, %20
  %48 = phi i32 [ %34, %32 ], [ %18, %20 ], [ %46, %45 ]
  %49 = load i32, ptr @mfc_debug_level, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, ptr %2, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_queue_setup, i32 noundef 937, i32 noundef %48, i32 noundef %52) #10
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, ptr %10, align 4
  %56 = icmp eq i32 %55, 102
  %57 = load i32, ptr %0, align 4
  br i1 %56, label %58, label %79

58:                                               ; preds = %54
  %59 = icmp eq i32 %57, 9
  br i1 %59, label %60, label %89

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %7, i32 848
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %3, align 4
  %63 = getelementptr i8, ptr %7, i32 852
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i32, ptr %3, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, 95
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr %struct.s5p_mfc_dev, ptr %70, i32 0, i32 4, i32 1
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %70, i32 0, i32 4
  %73 = select i1 %69, ptr %72, ptr %71
  %74 = load ptr, ptr %73, align 4
  store ptr %74, ptr %4, align 4
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr ptr, ptr %4, i32 1
  store ptr %77, ptr %78, align 4
  br label %91

79:                                               ; preds = %54
  %80 = icmp eq i32 %57, 10
  %81 = icmp eq i32 %55, 100
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %7, i32 2472
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %3, align 4
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %4, align 4
  br label %91

89:                                               ; preds = %79, %58
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_queue_setup, i32 noundef 953) #10
  br label %91

91:                                               ; preds = %89, %83, %60, %40
  %92 = phi i32 [ -22, %89 ], [ -22, %40 ], [ 0, %83 ], [ 0, %60 ]
  ret i32 %92
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
  switch i32 %5, label %106 [
    i32 9, label %6
    i32 10, label %72
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 912
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %108, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 112
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %22

16:                                               ; preds = %22
  %17 = add nuw i32 %23, 1
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16, %10
  %23 = phi i32 [ %17, %16 ], [ 0, %10 ]
  %24 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef %23) #9
  %25 = load i32, ptr %24, align 4
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq i32 %25, 0
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %16

30:                                               ; preds = %22
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 972) #10
  br label %108

32:                                               ; preds = %16, %10
  %33 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr i8, ptr %4, i32 848
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %56, label %46

42:                                               ; preds = %32
  %43 = getelementptr i8, ptr %4, i32 848
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %56

46:                                               ; preds = %36
  %47 = icmp ugt i32 %34, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 1, i32 4
  %50 = load i32, ptr %49, align 8
  br label %51

51:                                               ; preds = %48, %46, %42
  %52 = phi i32 [ %50, %48 ], [ 0, %46 ], [ 0, %42 ]
  %53 = getelementptr i8, ptr %4, i32 852
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %42, %36
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 978) #10
  br label %108

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %4, i32 1692
  %62 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %61, i32 0, i32 %60
  store ptr %0, ptr %62, align 4
  %63 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %62, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 1) #9
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %62, i32 0, i32 2, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %4, i32 2460
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %108

72:                                               ; preds = %1
  %73 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %74 = load i32, ptr %73, align 4
  %75 = inttoptr i32 %74 to ptr
  %76 = icmp eq i32 %74, 0
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 991) #10
  br label %108

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %87 = load i32, ptr %86, align 8
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i32 [ %87, %85 ], [ 0, %81 ]
  %90 = getelementptr i8, ptr %4, i32 2472
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 995) #10
  br label %108

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %4, i32 920
  %99 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %98, i32 0, i32 %97
  store ptr %0, ptr %99, align 4
  %100 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #9
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %99, i32 0, i32 2
  store i32 %101, ptr %102, align 4
  %103 = getelementptr i8, ptr %4, i32 1688
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 4
  br label %108

106:                                              ; preds = %1
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_buf_init, i32 noundef 1005) #10
  br label %108

108:                                              ; preds = %106, %95, %93, %79, %58, %56, %30, %6
  %109 = phi i32 [ -22, %30 ], [ -22, %56 ], [ -22, %79 ], [ -22, %93 ], [ -22, %106 ], [ 0, %6 ], [ 0, %95 ], [ 0, %58 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 3548
  %8 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %7) #9
  %9 = getelementptr i8, ptr %4, i32 824
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -2
  %12 = icmp eq i32 %11, 106
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 105, ptr %9, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %5)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @set_work_bit_irqsave(ptr noundef %5) #9
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %20, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %6) #9
  br label %27

27:                                               ; preds = %26, %22, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_stop_streaming(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr i8, ptr %3, i32 824
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -105
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 27
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %3, i32 80
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  store i32 110, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  %23 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 13, i32 noundef 0) #9
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  br label %25

25:                                               ; preds = %22, %18, %12, %1
  %26 = phi i1 [ false, %22 ], [ true, %18 ], [ true, %12 ], [ true, %1 ]
  %27 = phi i32 [ %24, %22 ], [ %7, %18 ], [ %7, %12 ], [ %7, %1 ]
  %28 = load i32, ptr %0, align 4
  switch i32 %28, label %64 [
    i32 9, label %29
    i32 10, label %59
  ]

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %3, i32 804
  %31 = getelementptr i8, ptr %3, i32 456
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %30, ptr noundef %31) #9
  store volatile ptr %30, ptr %30, align 4
  %32 = getelementptr i8, ptr %3, i32 808
  store ptr %30, ptr %32, align 4
  %33 = getelementptr i8, ptr %3, i32 816
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %3, i32 864
  store i32 1, ptr %34, align 4
  %35 = getelementptr i8, ptr %3, i32 2468
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 95
  br i1 %39, label %40, label %64

40:                                               ; preds = %29
  %41 = load i32, ptr %8, align 4
  %42 = icmp eq i32 %41, 105
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  store i32 111, ptr %8, align 4
  tail call void @set_work_bit_irqsave(ptr noundef %4) #9
  %44 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %45, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef %5) #9
  br label %52

52:                                               ; preds = %51, %47, %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %27) #9
  %53 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 10, i32 noundef 0) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_stop_streaming, i32 noundef 1058) #10
  br label %57

57:                                               ; preds = %55, %52
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  br label %64

59:                                               ; preds = %25
  %60 = getelementptr i8, ptr %3, i32 796
  %61 = getelementptr i8, ptr %3, i32 116
  tail call void @s5p_mfc_cleanup_queue(ptr noundef %60, ptr noundef %61) #9
  store volatile ptr %60, ptr %60, align 4
  %62 = getelementptr i8, ptr %3, i32 800
  store ptr %60, ptr %62, align 4
  %63 = getelementptr i8, ptr %3, i32 812
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %57, %40, %29, %25
  %65 = phi i32 [ %58, %57 ], [ %27, %40 ], [ %27, %29 ], [ %27, %59 ], [ %27, %25 ]
  br i1 %26, label %67, label %66

66:                                               ; preds = %64
  store i32 105, ptr %8, align 4
  br label %67

67:                                               ; preds = %66, %64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %65) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_buf_queue(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  switch i32 %7, label %46 [
    i32 10, label %8
    i32 9, label %26
  ]

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %4, i32 920
  %10 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %9, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -2
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 12
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %12, i32 0, i32 1
  %19 = getelementptr i8, ptr %4, i32 796
  %20 = getelementptr i8, ptr %4, i32 800
  %21 = load ptr, ptr %20, align 4
  store ptr %18, ptr %20, align 4
  store ptr %19, ptr %18, align 4
  %22 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %12, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %18, ptr %21, align 4
  %23 = getelementptr i8, ptr %4, i32 812
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  br label %48

26:                                               ; preds = %1
  %27 = getelementptr i8, ptr %4, i32 1692
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %27, i32 0, i32 %29
  %31 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -2
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 12
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #9
  %36 = load i32, ptr %28, align 4
  %37 = getelementptr i8, ptr %4, i32 2468
  tail call void @_set_bit(i32 noundef %36, ptr noundef %37) #9
  %38 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %30, i32 0, i32 1
  %39 = getelementptr i8, ptr %4, i32 804
  %40 = getelementptr i8, ptr %4, i32 808
  %41 = load ptr, ptr %40, align 4
  store ptr %38, ptr %40, align 4
  store ptr %39, ptr %38, align 4
  %42 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %30, i32 0, i32 1, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %38, ptr %41, align 4
  %43 = getelementptr i8, ptr %4, i32 816
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #9
  br label %48

46:                                               ; preds = %1
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_buf_queue, i32 noundef 1097, i32 noundef %7) #10
  br label %48

48:                                               ; preds = %46, %26, %8
  %49 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %5)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @set_work_bit_irqsave(ptr noundef %5) #9
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %54, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef %6) #9
  br label %61

61:                                               ; preds = %60, %56, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_ctx_ready(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  br i1 %4, label %14, label %7

7:                                                ; preds = %1
  switch i32 %6, label %32 [
    i32 101, label %49
    i32 105, label %8
    i32 106, label %16
    i32 102, label %28
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %44, label %49

14:                                               ; preds = %1
  %15 = icmp eq i32 %6, 106
  br i1 %15, label %22, label %32

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %44, label %49

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %44, label %49

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %49, label %44

32:                                               ; preds = %14, %7
  %33 = and i32 %6, -2
  %34 = icmp eq i32 %33, 112
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %44, label %49

41:                                               ; preds = %32
  %42 = icmp ne i32 %6, 114
  %43 = select i1 %42, i1 true, i1 %4
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %35, %28, %22, %16, %8
  %45 = load i32, ptr @mfc_debug_level, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_ctx_ready, i32 noundef 254) #10
  br label %49

49:                                               ; preds = %47, %44, %41, %35, %28, %22, %16, %8, %7
  %50 = phi i32 [ 1, %7 ], [ 1, %8 ], [ 1, %16 ], [ 1, %28 ], [ 1, %35 ], [ 0, %44 ], [ 0, %47 ], [ 1, %22 ], [ 1, %41 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_cleanup_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 16) #9
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 1
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
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef %22)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  br label %8

8:                                                ; preds = %27, %3
  %9 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %10 = phi i32 [ 0, %3 ], [ %29, %27 ]
  %11 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %9, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = add i32 %9, 1
  br label %27

27:                                               ; preds = %25, %14, %8
  %28 = phi i32 [ %9, %14 ], [ %26, %25 ], [ %9, %8 ]
  %29 = add nuw nsw i32 %10, 1
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %35, label %8

31:                                               ; preds = %22
  %32 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 0, %31 ], [ -22, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  br label %8

8:                                                ; preds = %27, %3
  %9 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %10 = phi i32 [ 0, %3 ], [ %29, %27 ]
  %11 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %9, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = add i32 %9, 1
  br label %27

27:                                               ; preds = %25, %14, %8
  %28 = phi i32 [ %9, %8 ], [ %9, %14 ], [ %26, %25 ]
  %29 = add nuw nsw i32 %10, 1
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %35, label %8

31:                                               ; preds = %22
  %32 = getelementptr [16 x %struct.s5p_mfc_fmt], ptr @formats, i32 0, i32 %10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 0, %31 ], [ -22, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load i32, ptr @mfc_debug_level, align 4
  %6 = icmp sgt i32 %5, 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 321) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 824
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %22 [
    i32 101, label %16
    i32 114, label %16
  ]

16:                                               ; preds = %13, %13
  %17 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 3, i32 noundef 0) #9
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i32, ptr %14, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %21, %20 ], [ %15, %13 ]
  %24 = add i32 %23, -102
  %25 = icmp ult i32 %24, 8
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %1, i32 840
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %10, align 1
  %29 = getelementptr i8, ptr %1, i32 844
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 2, ptr %33, align 1
  %34 = getelementptr i8, ptr %1, i32 112
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %36, ptr %37, align 1
  %38 = load i32, ptr %27, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %38, ptr %40, align 1
  %41 = getelementptr i8, ptr %1, i32 848
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 1
  %43 = load i32, ptr %27, align 4
  %44 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %45 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %43, ptr %45, align 1
  %46 = getelementptr i8, ptr %1, i32 852
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %44, align 1
  br label %74

48:                                               ; preds = %16, %9
  %49 = phi i32 [ %18, %16 ], [ %11, %9 ]
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  store i32 0, ptr %10, align 1
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %53, align 1
  %54 = getelementptr i8, ptr %1, i32 2472
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %57 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %55, ptr %57, align 1
  %58 = load i32, ptr %54, align 4
  store i32 %58, ptr %56, align 1
  %59 = getelementptr i8, ptr %1, i32 108
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %61, ptr %62, align 1
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %66, ptr %67, align 1
  br label %74

68:                                               ; preds = %48, %22
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 362) #10
  %70 = load i32, ptr @mfc_debug_level, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 363, ptr noundef nonnull @__func__.vidioc_g_fmt) #10
  br label %79

74:                                               ; preds = %51, %26
  %75 = load i32, ptr @mfc_debug_level, align 4
  %76 = icmp sgt i32 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.vidioc_g_fmt, i32 noundef 366) #10
  br label %79

79:                                               ; preds = %77, %74, %72, %68
  %80 = phi i32 [ -22, %72 ], [ -22, %68 ], [ 0, %77 ], [ 0, %74 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 415) #10
  br label %15

15:                                               ; preds = %13, %3
  %16 = tail call i32 @vidioc_try_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %1, i32 412
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %1, i32 752
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %30, ptr noundef nonnull @__func__.vidioc_s_fmt) #10
  br label %66

32:                                               ; preds = %24
  %33 = load i32, ptr %2, align 4
  switch i32 %33, label %64 [
    i32 9, label %34
    i32 10, label %37
  ]

34:                                               ; preds = %32
  %35 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 2)
  %36 = getelementptr i8, ptr %1, i32 112
  store ptr %35, ptr %36, align 4
  br label %66

37:                                               ; preds = %32
  %38 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 0)
  %39 = getelementptr i8, ptr %1, i32 108
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %38, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %1, i32 2476
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr @mfc_debug_level, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 434, i32 noundef %41) #10
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %48, align 1
  store i32 0, ptr %17, align 1
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %50 = load i32, ptr %49, align 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %1, i32 2472
  store i32 262144, ptr %53, align 4
  store i32 262144, ptr %49, align 1
  br label %61

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %10, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %50, %56
  %58 = getelementptr i8, ptr %1, i32 2472
  br i1 %57, label %59, label %60

59:                                               ; preds = %54
  store i32 %56, ptr %58, align 4
  br label %61

60:                                               ; preds = %54
  store i32 %50, ptr %58, align 4
  br label %61

61:                                               ; preds = %60, %59, %52
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %62, align 1
  %63 = getelementptr i8, ptr %1, i32 824
  store i32 100, ptr %63, align 4
  br label %66

64:                                               ; preds = %32
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 449, i32 noundef %33) #10
  br label %66

66:                                               ; preds = %64, %61, %34, %29
  %67 = phi i32 [ -16, %29 ], [ 0, %34 ], [ 0, %61 ], [ -22, %64 ]
  %68 = load i32, ptr @mfc_debug_level, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.vidioc_s_fmt, i32 noundef 455) #10
  br label %72

72:                                               ; preds = %70, %66, %15
  %73 = phi i32 [ %16, %15 ], [ %67, %70 ], [ %67, %66 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @mfc_debug_level, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 376, i32 noundef %10) #10
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, ptr %2, align 4
  switch i32 %13, label %52 [
    i32 10, label %14
    i32 9, label %36
  ]

14:                                               ; preds = %12
  %15 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 0)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 380) #10
  br label %52

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %15, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 384) #10
  br label %52

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %15, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 388) #10
  br label %52

36:                                               ; preds = %12
  %37 = tail call fastcc ptr @find_format(ptr noundef %2, i32 noundef 2)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 394) #10
  br label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.s5p_mfc_fmt, ptr %37, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.vidioc_try_fmt, i32 noundef 398) #10
  br label %52

52:                                               ; preds = %50, %41, %39, %34, %25, %23, %17, %12
  %53 = phi i32 [ -22, %23 ], [ -22, %34 ], [ -22, %17 ], [ -22, %50 ], [ -22, %39 ], [ 0, %12 ], [ 0, %41 ], [ 0, %25 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -4
  %8 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr @mfc_debug_level, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %158

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 569) #10
  br label %158

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %156 [
    i32 10, label %19
    i32 9, label %72
  ]

19:                                               ; preds = %16
  %20 = tail call i32 @s5p_mfc_clock_on() #9
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.reqbufs_output, i32 noundef 467) #10
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr i8, ptr %1, i32 116
  %30 = tail call i32 @vb2_reqbufs(ptr noundef %29, ptr noundef %2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 1688
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %1, i32 916
  store i32 0, ptr %34, align 4
  br label %68

35:                                               ; preds = %19
  %36 = getelementptr i8, ptr %1, i32 916
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %1, i32 1688
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 475, i32 noundef 9, ptr noundef null) #9
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr i8, ptr %1, i32 824
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 100
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.reqbufs_output, i32 noundef 477) #10
  br label %69

50:                                               ; preds = %44
  %51 = load i32, ptr @mfc_debug_level, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.reqbufs_output, i32 noundef 483, i32 noundef %54) #10
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr i8, ptr %1, i32 116
  %58 = tail call i32 @vb2_reqbufs(ptr noundef %57, ptr noundef %2) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = tail call i32 @s5p_mfc_open_mfc_inst(ptr noundef %6, ptr noundef %7) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  store i32 0, ptr %2, align 4
  %64 = tail call i32 @vb2_reqbufs(ptr noundef %57, ptr noundef %2) #9
  br label %69

65:                                               ; preds = %60
  store i32 1, ptr %36, align 4
  br label %68

66:                                               ; preds = %35
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.reqbufs_output, i32 noundef 497) #10
  br label %69

68:                                               ; preds = %65, %32
  tail call void @s5p_mfc_clock_off() #9
  br label %158

69:                                               ; preds = %66, %63, %56, %48, %28
  %70 = phi i32 [ -22, %66 ], [ %61, %63 ], [ %58, %56 ], [ -22, %48 ], [ %30, %28 ]
  tail call void @s5p_mfc_clock_off() #9
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.reqbufs_output, i32 noundef 503) #10
  br label %158

72:                                               ; preds = %16
  %73 = tail call i32 @s5p_mfc_clock_on() #9
  %74 = load i32, ptr %2, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load i32, ptr @mfc_debug_level, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.reqbufs_capture, i32 noundef 515) #10
  br label %81

81:                                               ; preds = %79, %76
  %82 = getelementptr i8, ptr %1, i32 456
  %83 = tail call i32 @vb2_reqbufs(ptr noundef %82, ptr noundef %2) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %153

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %87, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void %91(ptr noundef %7) #9
  br label %94

94:                                               ; preds = %93, %89, %85
  %95 = getelementptr i8, ptr %1, i32 2460
  store i32 0, ptr %95, align 4
  br label %152

96:                                               ; preds = %72
  %97 = getelementptr i8, ptr %1, i32 912
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %1, i32 2460
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104, !prof !9

104:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 522, i32 noundef 9, ptr noundef null) #9
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, ptr @mfc_debug_level, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, ptr %2, align 4
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.reqbufs_capture, i32 noundef 524, i32 noundef %109) #10
  br label %111

111:                                              ; preds = %108, %105
  %112 = getelementptr i8, ptr %1, i32 456
  %113 = tail call i32 @vb2_reqbufs(ptr noundef %112, ptr noundef %2) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %153

115:                                              ; preds = %111
  store i32 1, ptr %97, align 4
  %116 = load i32, ptr %2, align 4
  %117 = getelementptr i8, ptr %1, i32 2508
  store i32 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 36
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %119, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = tail call i32 %123(ptr noundef %7) #9
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125, %121, %115
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.reqbufs_capture, i32 noundef 534) #10
  store i32 0, ptr %2, align 4
  %130 = tail call i32 @vb2_reqbufs(ptr noundef %112, ptr noundef %2) #9
  store i32 0, ptr %97, align 4
  br label %153

131:                                              ; preds = %125
  %132 = load i32, ptr %101, align 4
  %133 = load i32, ptr %117, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %136, label %135, !prof !9

135:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 542, i32 noundef 9, ptr noundef null) #9
  br label %136

136:                                              ; preds = %135, %131
  store i32 3, ptr %97, align 4
  %137 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %7) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  tail call void @set_work_bit_irqsave(ptr noundef %7) #9
  br label %140

140:                                              ; preds = %139, %136
  %141 = load ptr, ptr %118, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %141, i32 0, i32 13
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call void %145(ptr noundef %6) #9
  br label %148

148:                                              ; preds = %147, %143, %140
  %149 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %7, i32 noundef 4, i32 noundef 0) #9
  br label %152

150:                                              ; preds = %96
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.reqbufs_capture, i32 noundef 551) #10
  br label %153

152:                                              ; preds = %148, %94
  tail call void @s5p_mfc_clock_off() #9
  br label %158

153:                                              ; preds = %150, %128, %111, %81
  %154 = phi i32 [ -22, %150 ], [ -12, %128 ], [ %113, %111 ], [ %83, %81 ]
  tail call void @s5p_mfc_clock_off() #9
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.reqbufs_capture, i32 noundef 557) #10
  br label %158

156:                                              ; preds = %16
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.vidioc_reqbufs, i32 noundef 578) #10
  br label %158

158:                                              ; preds = %156, %153, %152, %69, %68, %14, %11
  %159 = phi i32 [ -22, %156 ], [ -22, %14 ], [ -22, %11 ], [ %70, %69 ], [ 0, %68 ], [ %154, %153 ], [ 0, %152 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_querybuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 592) #10
  br label %57

9:                                                ; preds = %3
  %10 = load i32, ptr @mfc_debug_level, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %1, i32 824
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 595, i32 noundef %14, i32 noundef %16) #10
  br label %18

18:                                               ; preds = %12, %9
  %19 = getelementptr i8, ptr %1, i32 824
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %49 [
    i32 101, label %21
    i32 105, label %28
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %1, i32 116
  %27 = tail call i32 @vb2_querybuf(ptr noundef %26, ptr noundef %2) #9
  br label %51

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 456
  %34 = tail call i32 @vb2_querybuf(ptr noundef %33, ptr noundef %2) #9
  %35 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 9
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %46, %40 ]
  %42 = load ptr, ptr %39, align 8
  %43 = getelementptr %struct.v4l2_plane, ptr %42, i32 %41, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1073741824
  store i32 %45, ptr %43, align 4
  %46 = add nuw i32 %41, 1
  %47 = load i32, ptr %35, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %40, label %51

49:                                               ; preds = %28, %21, %18
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 605) #10
  br label %51

51:                                               ; preds = %49, %40, %32, %25
  %52 = phi i32 [ %27, %25 ], [ -22, %49 ], [ %34, %32 ], [ %34, %40 ]
  %53 = load i32, ptr @mfc_debug_level, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.vidioc_querybuf, i32 noundef 608) #10
  br label %57

57:                                               ; preds = %55, %51, %7
  %58 = phi i32 [ -22, %7 ], [ %52, %55 ], [ %52, %51 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_qbuf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 824
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 109
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.vidioc_qbuf, i32 noundef 618) #10
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %18 [
    i32 10, label %12
    i32 9, label %15
  ]

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %1, i32 116
  %14 = tail call i32 @vb2_qbuf(ptr noundef %13, ptr noundef null, ptr noundef %2) #9
  br label %18

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %1, i32 456
  %17 = tail call i32 @vb2_qbuf(ptr noundef %16, ptr noundef null, ptr noundef %2) #9
  br label %18

18:                                               ; preds = %15, %12, %9, %7
  %19 = phi i32 [ -5, %7 ], [ %14, %12 ], [ %17, %15 ], [ -22, %9 ]
  ret i32 %19
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
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.vidioc_dqbuf, i32 noundef 638) #10
  br label %43

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %43 [
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
  br label %43

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %1, i32 456
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  %29 = tail call i32 @vb2_dqbuf(ptr noundef %24, ptr noundef %2, i1 noundef zeroext %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 107
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %1, i32 1692
  %36 = load i32, ptr %2, align 8
  %37 = getelementptr [32 x %struct.s5p_mfc_buf], ptr %35, i32 0, i32 %36
  %38 = getelementptr inbounds %struct.s5p_mfc_buf, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull %4) #9
  br label %43

43:                                               ; preds = %42, %34, %31, %23, %16, %13, %11, %8
  %44 = phi i32 [ %22, %16 ], [ -5, %11 ], [ -5, %8 ], [ %29, %23 ], [ 0, %42 ], [ 0, %34 ], [ 0, %31 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #9
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr @mfc_debug_level, align 4
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.vidioc_streamon, i32 noundef 679) #10
  br label %8

8:                                                ; preds = %6, %3
  switch i32 %2, label %14 [
    i32 10, label %10
    i32 9, label %9
  ]

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %8
  %11 = phi i32 [ 456, %9 ], [ 116, %8 ]
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = tail call i32 @vb2_streamon(ptr noundef %12, i32 noundef %2) #9
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ -22, %8 ], [ %13, %10 ]
  %16 = load i32, ptr @mfc_debug_level, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.vidioc_streamon, i32 noundef 684) #10
  br label %20

20:                                               ; preds = %18, %14
  ret i32 %15
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
define internal i32 @vidioc_g_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %98

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 824
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 102, label %13
    i32 105, label %13
    i32 106, label %13
    i32 107, label %13
  ]

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.vidioc_g_selection, i32 noundef 781) #10
  br label %98

13:                                               ; preds = %8, %8, %8, %8
  %14 = getelementptr i8, ptr %1, i32 108
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 875967048
  br i1 %17, label %18, label %67

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %20, i32 0, i32 35
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %4) #9
  %28 = load ptr, ptr %19, align 4
  %29 = lshr i32 %27, 16
  %30 = and i32 %27, 65535
  %31 = icmp eq ptr %28, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26, %22
  %33 = phi i32 [ %30, %26 ], [ 65517, %22 ]
  %34 = phi i32 [ %29, %26 ], [ 65535, %22 ]
  %35 = phi ptr [ %28, %26 ], [ %20, %22 ]
  %36 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %35, i32 0, i32 36
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = tail call i32 %37(ptr noundef %4) #9
  br label %41

41:                                               ; preds = %39, %32, %26, %18
  %42 = phi i32 [ %33, %39 ], [ %33, %32 ], [ %30, %26 ], [ 65517, %18 ]
  %43 = phi i32 [ %34, %39 ], [ %34, %32 ], [ %29, %26 ], [ 65535, %18 ]
  %44 = phi i32 [ %40, %39 ], [ -19, %32 ], [ -19, %26 ], [ -19, %18 ]
  %45 = lshr i32 %44, 16
  %46 = and i32 %44, 65535
  %47 = getelementptr i8, ptr %1, i32 832
  %48 = load i32, ptr %47, align 4
  %49 = add nuw nsw i32 %43, %42
  %50 = sub i32 %48, %49
  %51 = getelementptr i8, ptr %1, i32 836
  %52 = load i32, ptr %51, align 4
  %53 = add nuw nsw i32 %46, %45
  %54 = sub i32 %52, %53
  %55 = load i32, ptr @mfc_debug_level, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %84

57:                                               ; preds = %41
  %58 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %1, i32 840
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %1, i32 844
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.vidioc_g_selection, i32 noundef 795, i32 noundef %42, i32 noundef %46, i32 noundef %59, i32 noundef %61, i32 noundef %43, i32 noundef %45, i32 noundef %63, i32 noundef %65) #10
  br label %84

67:                                               ; preds = %13
  %68 = getelementptr i8, ptr %1, i32 832
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %1, i32 836
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr @mfc_debug_level, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %1, i32 840
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %1, i32 844
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.vidioc_g_selection, i32 noundef 803, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82) #10
  br label %84

84:                                               ; preds = %74, %67, %57, %41
  %85 = phi i32 [ %42, %57 ], [ %42, %41 ], [ 0, %74 ], [ 0, %67 ]
  %86 = phi i32 [ %46, %57 ], [ %46, %41 ], [ 0, %74 ], [ 0, %67 ]
  %87 = phi i32 [ %50, %57 ], [ %50, %41 ], [ %69, %74 ], [ %69, %67 ]
  %88 = phi i32 [ %54, %57 ], [ %54, %41 ], [ %71, %74 ], [ %71, %67 ]
  %89 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -256
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 %85, ptr %94, align 4
  %95 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 %86, ptr %95, align 4
  %96 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %87, ptr %96, align 4
  %97 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %88, ptr %97, align 4
  br label %98

98:                                               ; preds = %93, %84, %11, %3
  %99 = phi i32 [ -22, %11 ], [ 0, %93 ], [ -22, %3 ], [ -22, %84 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_decoder_cmd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 412
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 12
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #9
  %20 = getelementptr i8, ptr %1, i32 796
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.vidioc_decoder_cmd, i32 noundef 839) #10
  %25 = getelementptr i8, ptr %1, i32 824
  store i32 106, ptr %25, align 4
  %26 = tail call fastcc i32 @s5p_mfc_ctx_ready(ptr noundef %4)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @set_work_bit_irqsave(ptr noundef %4) #9
  br label %29

29:                                               ; preds = %28, %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 36
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %31, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %5) #9
  br label %51

38:                                               ; preds = %17
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.vidioc_decoder_cmd, i32 noundef 846) #10
  %40 = getelementptr i8, ptr %1, i32 800
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %1, i32 824
  store i32 106, ptr %47, align 4
  br label %50

48:                                               ; preds = %38
  %49 = or i32 %43, 2
  store i32 %49, ptr %42, align 4
  br label %50

50:                                               ; preds = %48, %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  br label %51

51:                                               ; preds = %50, %37, %33, %29, %12, %8, %3
  %52 = phi i32 [ -22, %8 ], [ -22, %12 ], [ -22, %3 ], [ 0, %50 ], [ 0, %29 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vidioc_subscribe_event(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %8 [
    i32 2, label %4
    i32 5, label %6
  ]

4:                                                ; preds = %2
  %5 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null) #9
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %0, ptr noundef %1) #9
  br label %8

8:                                                ; preds = %6, %4, %2
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_dec_g_v_ctrl(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -3552
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 9963815
  br i1 %8, label %9, label %34

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
  br label %34

18:                                               ; preds = %9
  switch i32 %11, label %19 [
    i32 100, label %22
    i32 114, label %22
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %20) #10
  br label %34

22:                                               ; preds = %18, %18
  %23 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %4, i32 noundef 3, i32 noundef 0) #9
  %24 = load i32, ptr %10, align 4
  %25 = add i32 %24, -102
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %3, i32 -1044
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 %29, ptr %30, align 4
  br label %34

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %32) #10
  br label %34

34:                                               ; preds = %31, %27, %19, %14, %1
  %35 = phi i32 [ -22, %19 ], [ -22, %31 ], [ 0, %1 ], [ 0, %27 ], [ 0, %14 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_dec_s_ctrl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %22 [
    i32 10031360, label %6
    i32 10029965, label %6
    i32 10031361, label %10
    i32 10029966, label %10
    i32 10029525, label %14
    i32 10029524, label %18
  ]

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %3, i32 -1060
  store i32 %8, ptr %9, align 4
  br label %24

10:                                               ; preds = %1, %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %3, i32 -1056
  store i32 %12, ptr %13, align 4
  br label %24

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %3, i32 -1064
  store i32 %16, ptr %17, align 4
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %3, i32 -1068
  store i32 %20, ptr %21, align 4
  br label %24

22:                                               ; preds = %1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.s5p_mfc_dec_s_ctrl, i32 noundef 722, i32 noundef %5) #10
  br label %24

24:                                               ; preds = %22, %18, %14, %10, %6
  %25 = phi i32 [ -22, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
