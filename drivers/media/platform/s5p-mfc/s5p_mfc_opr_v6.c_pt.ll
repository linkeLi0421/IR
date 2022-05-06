; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.103, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.100, i32 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.102 }
%struct.anon.102 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.103 = type { i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v6 = type { i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }

@mfc_regs = internal global %struct.s5p_mfc_regs zeroinitializer, align 4
@s5p_mfc_ops_v6 = internal global %struct.s5p_mfc_hw_ops { ptr @s5p_mfc_alloc_dec_temp_buffers_v6, ptr @s5p_mfc_release_dec_desc_buffer_v6, ptr @s5p_mfc_alloc_codec_buffers_v6, ptr @s5p_mfc_release_codec_buffers_v6, ptr @s5p_mfc_alloc_instance_buffer_v6, ptr @s5p_mfc_release_instance_buffer_v6, ptr @s5p_mfc_alloc_dev_context_buffer_v6, ptr @s5p_mfc_release_dev_context_buffer_v6, ptr @s5p_mfc_dec_calc_dpb_size_v6, ptr @s5p_mfc_enc_calc_src_size_v6, ptr @s5p_mfc_set_enc_stream_buffer_v6, ptr @s5p_mfc_set_enc_frame_buffer_v6, ptr @s5p_mfc_get_enc_frame_buffer_v6, ptr @s5p_mfc_try_run_v6, ptr @s5p_mfc_clear_int_flags_v6, ptr @s5p_mfc_get_dspl_y_adr_v6, ptr @s5p_mfc_get_dec_y_adr_v6, ptr @s5p_mfc_get_dspl_status_v6, ptr @s5p_mfc_get_dec_status_v6, ptr @s5p_mfc_get_dec_frame_type_v6, ptr @s5p_mfc_get_disp_frame_type_v6, ptr @s5p_mfc_get_consumed_stream_v6, ptr @s5p_mfc_get_int_reason_v6, ptr @s5p_mfc_get_int_err_v6, ptr @s5p_mfc_err_dec_v6, ptr @s5p_mfc_get_img_width_v6, ptr @s5p_mfc_get_img_height_v6, ptr @s5p_mfc_get_dpb_count_v6, ptr @s5p_mfc_get_mv_count_v6, ptr @s5p_mfc_get_inst_no_v6, ptr @s5p_mfc_get_enc_strm_size_v6, ptr @s5p_mfc_get_enc_slice_type_v6, ptr @s5p_mfc_get_enc_dpb_count_v6, ptr @s5p_mfc_get_pic_type_top_v6, ptr @s5p_mfc_get_pic_type_bot_v6, ptr @s5p_mfc_get_crop_info_h_v6, ptr @s5p_mfc_get_crop_info_v_v6, ptr @s5p_mfc_get_min_scratch_buf_size, ptr @s5p_mfc_get_e_min_scratch_buf_size }, align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [49 x i8] c"\017%s:%d: Luma size:%d Chroma size:%d MV size:%d\0A\00", align 1
@__func__.s5p_mfc_alloc_codec_buffers_v6 = private unnamed_addr constant [31 x i8] c"s5p_mfc_alloc_codec_buffers_v6\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Totals bufs: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\017%s:%d: recon luma size: %zu chroma size: %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\017%s:%d: Use min scratch buffer size\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\013%s:%d: Failed to allocate Bank1 memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\017%s:%d: enter\0A\00", align 1
@__func__.s5p_mfc_alloc_instance_buffer_v6 = private unnamed_addr constant [33 x i8] c"s5p_mfc_alloc_instance_buffer_v6\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\013%s:%d: Codec type(%d) should be checked!\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\013%s:%d: Failed to allocate instance buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\017%s:%d: leave\0A\00", align 1
@__func__.s5p_mfc_alloc_dev_context_buffer_v6 = private unnamed_addr constant [36 x i8] c"s5p_mfc_alloc_dev_context_buffer_v6\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\013%s:%d: Failed to allocate device context buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"\017%s:%d: SEQ Done: Movie dimensions %dx%d,\0Abuffer dimensions: %dx%d\0A\00", align 1
@__func__.s5p_mfc_dec_calc_dpb_size_v6 = private unnamed_addr constant [29 x i8] c"s5p_mfc_dec_calc_dpb_size_v6\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\017%s:%d: stream buf addr: 0x%08lx, size: 0x%x\0A\00", align 1
@__func__.s5p_mfc_set_enc_stream_buffer_v6 = private unnamed_addr constant [33 x i8] c"s5p_mfc_set_enc_stream_buffer_v6\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\017%s:%d: enc src y buf addr: 0x%08lx\0A\00", align 1
@__func__.s5p_mfc_set_enc_frame_buffer_v6 = private unnamed_addr constant [32 x i8] c"s5p_mfc_set_enc_frame_buffer_v6\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\017%s:%d: enc src c buf addr: 0x%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"\017%s:%d: recon y addr: 0x%08lx y_addr: 0x%08lx\0A\00", align 1
@__func__.s5p_mfc_get_enc_frame_buffer_v6 = private unnamed_addr constant [32 x i8] c"s5p_mfc_get_enc_frame_buffer_v6\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\017%s:%d: recon c addr: 0x%08lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Try run dev: %p\0A\00", align 1
@__func__.s5p_mfc_try_run_v6 = private unnamed_addr constant [19 x i8] c"s5p_mfc_try_run_v6\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\017%s:%d: Couldn't lock HW.\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\013%s:%d: Failed to unlock hardware.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"\017%s:%d: No ctx is scheduled to be run.\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\017%s:%d: New context: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"\017%s:%d: Setting new context to %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"\017%s:%d: ctx->dst_queue_cnt=%d ctx->dpb_count=%d ctx->src_queue_cnt=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"\017%s:%d: ctx->state=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"\017%s:%d: Finished remaining frames after resolution change.\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\017%s:%d: Will re-init the codec`.\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\013%s:%d: invalid context type: %d\0A\00", align 1
@__func__.s5p_mfc_set_dec_stream_buffer_v6 = private unnamed_addr constant [33 x i8] c"s5p_mfc_set_dec_stream_buffer_v6\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"\017%s:%d: inst_no: %d, buf_addr: 0x%08x,\0Abuf_size: 0x%08x (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"\013%s:%d: Unsupported last frame arg.\0A\00", align 1
@__func__.s5p_mfc_decode_one_frame_v6 = private unnamed_addr constant [28 x i8] c"s5p_mfc_decode_one_frame_v6\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"\017%s:%d: Decoding a usual frame.\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\017%s:%d: No src buffers.\0A\00", align 1
@__func__.s5p_mfc_run_dec_frame = private unnamed_addr constant [22 x i8] c"s5p_mfc_run_dec_frame\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"\017%s:%d: Setting ctx->state to FINISHING\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"\017%s:%d: Preparing to init decoding.\0A\00", align 1
@__func__.s5p_mfc_run_init_dec = private unnamed_addr constant [21 x i8] c"s5p_mfc_run_init_dec\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Header size: %d\0A\00", align 1
@__func__.s5p_mfc_init_decode_v6 = private unnamed_addr constant [23 x i8] c"s5p_mfc_init_decode_v6\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"\017%s:%d: InstNo: %d/%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"\017%s:%d: BUFs: %08x %08x %08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Set loop filter to: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [139 x i8] c"\013%s:%d: It seems that not all destination buffers were\0Ammapped.MFC requires that all destination are mmapped\0Abefore starting processing.\0A\00", align 1
@__func__.s5p_mfc_run_init_dec_buffers = private unnamed_addr constant [29 x i8] c"s5p_mfc_run_init_dec_buffers\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"\013%s:%d: Failed to alloc frame mem.\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"\017%s:%d: Buf1: %p (%d)\0A\00", align 1
@__func__.s5p_mfc_set_dec_frame_buffer_v6 = private unnamed_addr constant [32 x i8] c"s5p_mfc_set_dec_frame_buffer_v6\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\017%s:%d: Total DPB COUNT: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"\017%s:%d: Setting display delay to %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"\017%s:%d: Frame size: %d ch: %d mv: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"\017%s:%d: Luma %d: %zx\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"\017%s:%d: \09Chroma %d: %zx\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"\017%s:%d: \09Buf1: %zx, size: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"\017%s:%d: Buf1: %zx, buf_size1: %d (frames %d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"\017%s:%d: Not enough memory has been allocated.\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"\017%s:%d: After setting buffers.\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"\017%s:%d: no src buffers.\0A\00", align 1
@__func__.s5p_mfc_run_enc_frame = private unnamed_addr constant [22 x i8] c"s5p_mfc_run_enc_frame\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"\017%s:%d: no dst buffers.\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"\017%s:%d: enc src y addr: 0x%08lx\0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"\017%s:%d: enc src c addr: 0x%08lx\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"\017%s:%d: ++\0A\00", align 1
@__func__.s5p_mfc_encode_one_frame_v6 = private unnamed_addr constant [28 x i8] c"s5p_mfc_encode_one_frame_v6\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"\017%s:%d: --\0A\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"\013%s:%d: Unknown codec for encoding (%x).\0A\00", align 1
@__func__.s5p_mfc_init_encode_v6 = private unnamed_addr constant [23 x i8] c"s5p_mfc_init_encode_v6\00", align 1
@__func__.s5p_mfc_set_enc_params_h264 = private unnamed_addr constant [28 x i8] c"s5p_mfc_set_enc_params_h264\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"\013%s:%d: Unsupported map type for FMO: %d\0A\00", align 1
@__func__.s5p_mfc_set_enc_params = private unnamed_addr constant [23 x i8] c"s5p_mfc_set_enc_params\00", align 1
@__func__.s5p_mfc_set_enc_params_mpeg4 = private unnamed_addr constant [29 x i8] c"s5p_mfc_set_enc_params_mpeg4\00", align 1
@__func__.s5p_mfc_set_enc_params_h263 = private unnamed_addr constant [28 x i8] c"s5p_mfc_set_enc_params_h263\00", align 1
@__func__.s5p_mfc_set_enc_params_vp8 = private unnamed_addr constant [27 x i8] c"s5p_mfc_set_enc_params_vp8\00", align 1
@__func__.s5p_mfc_set_enc_params_hevc = private unnamed_addr constant [28 x i8] c"s5p_mfc_set_enc_params_hevc\00", align 1
@__func__.s5p_mfc_run_init_enc_buffers = private unnamed_addr constant [29 x i8] c"s5p_mfc_run_init_enc_buffers\00", align 1
@__func__.s5p_mfc_set_enc_ref_buffer_v6 = private unnamed_addr constant [30 x i8] c"s5p_mfc_set_enc_ref_buffer_v6\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"\017%s:%d: Buf1: %zu, buf_size1: %d (ref frames %d)\0A\00", align 1
@switch.table.s5p_mfc_run_init_enc = private unnamed_addr constant [3 x i32] [i32 16, i32 32, i32 64], align 4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_regs_v6_plus(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1024) @mfc_regs, i8 0, i32 1024, i1 false)
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr @mfc_regs, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  store ptr %4, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %3, i32 68
  store ptr %5, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 2), align 4
  %6 = getelementptr i8, ptr %3, i32 84
  store ptr %6, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 3), align 4
  %7 = getelementptr i8, ptr %3, i32 4208
  store ptr %7, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 4), align 4
  %8 = getelementptr i8, ptr %3, i32 4352
  store ptr %8, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 5), align 4
  %9 = getelementptr i8, ptr %3, i32 4356
  store ptr %9, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 6), align 4
  %10 = getelementptr i8, ptr %3, i32 61440
  store ptr %10, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 8), align 4
  %11 = getelementptr i8, ptr %3, i32 61448
  store ptr %11, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 9), align 4
  %12 = getelementptr i8, ptr %3, i32 61452
  store ptr %12, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 10), align 4
  %13 = getelementptr i8, ptr %3, i32 61460
  store ptr %13, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 11), align 4
  %14 = getelementptr i8, ptr %3, i32 61464
  store ptr %14, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 12), align 4
  %15 = getelementptr i8, ptr %3, i32 61472
  store ptr %15, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 13), align 4
  %16 = getelementptr i8, ptr %3, i32 61552
  store ptr %16, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 23), align 4
  %17 = getelementptr i8, ptr %3, i32 61556
  store ptr %17, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 24), align 4
  %18 = getelementptr i8, ptr %3, i32 61616
  store ptr %18, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 30), align 4
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 61620
  store ptr %20, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 31), align 4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 61624
  store ptr %22, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 32), align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 61636
  store ptr %24, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 35), align 4
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 61680
  store ptr %26, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 36), align 4
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 61696
  store ptr %28, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 40), align 4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 61692
  store ptr %30, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 41), align 4
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 61744
  store ptr %32, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 52), align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 62584
  store ptr %34, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 53), align 4
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 62588
  store ptr %36, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 54), align 4
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 61748
  store ptr %38, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 58), align 4
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 61752
  store ptr %40, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 59), align 4
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %41, i32 61756
  store ptr %42, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 61), align 4
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 61760
  store ptr %44, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 62), align 4
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 62016
  store ptr %46, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 63), align 4
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 62272
  store ptr %48, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 65), align 4
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr i8, ptr %49, i32 62528
  store ptr %50, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 66), align 4
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 62532
  store ptr %52, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 67), align 4
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr i8, ptr %53, i32 62640
  store ptr %54, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 71), align 4
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr i8, ptr %55, i32 62644
  store ptr %56, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 72), align 4
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 62652
  store ptr %58, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 74), align 4
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr i8, ptr %59, i32 62656
  store ptr %60, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 75), align 4
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr i8, ptr %61, i32 62660
  store ptr %62, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 76), align 4
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 62672
  store ptr %64, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 78), align 4
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr i8, ptr %65, i32 62720
  store ptr %66, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 81), align 4
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr i8, ptr %67, i32 62724
  store ptr %68, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 82), align 4
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr i8, ptr %69, i32 62728
  store ptr %70, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 83), align 4
  %71 = load ptr, ptr %2, align 4
  %72 = getelementptr i8, ptr %71, i32 62732
  store ptr %72, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 84), align 4
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr i8, ptr %73, i32 62736
  store ptr %74, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 85), align 4
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr i8, ptr %75, i32 62740
  store ptr %76, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 87), align 4
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr i8, ptr %77, i32 62744
  store ptr %78, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 88), align 4
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr i8, ptr %79, i32 62748
  store ptr %80, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 89), align 4
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 62772
  store ptr %82, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 98), align 4
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr i8, ptr %83, i32 62776
  store ptr %84, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 99), align 4
  %85 = load ptr, ptr %2, align 4
  %86 = getelementptr i8, ptr %85, i32 62788
  store ptr %86, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 102), align 4
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr i8, ptr %87, i32 62792
  store ptr %88, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 103), align 4
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr i8, ptr %89, i32 62796
  store ptr %90, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 104), align 4
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr i8, ptr %91, i32 62800
  store ptr %92, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 106), align 4
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr i8, ptr %93, i32 62816
  store ptr %94, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 110), align 4
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr i8, ptr %95, i32 62836
  store ptr %96, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 114), align 4
  %97 = load ptr, ptr %2, align 4
  %98 = getelementptr i8, ptr %97, i32 62840
  store ptr %98, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 115), align 4
  %99 = load ptr, ptr %2, align 4
  %100 = getelementptr i8, ptr %99, i32 62864
  store ptr %100, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 121), align 4
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr i8, ptr %101, i32 62900
  store ptr %102, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 132), align 4
  %103 = load ptr, ptr %2, align 4
  %104 = getelementptr i8, ptr %103, i32 62960
  store ptr %104, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 133), align 4
  %105 = load ptr, ptr %2, align 4
  %106 = getelementptr i8, ptr %105, i32 63344
  store ptr %106, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 150), align 4
  %107 = load ptr, ptr %2, align 4
  %108 = getelementptr i8, ptr %107, i32 63348
  store ptr %108, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 151), align 4
  %109 = load ptr, ptr %2, align 4
  %110 = getelementptr i8, ptr %109, i32 63352
  store ptr %110, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 152), align 4
  %111 = load ptr, ptr %2, align 4
  %112 = getelementptr i8, ptr %111, i32 63356
  store ptr %112, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 153), align 4
  %113 = load ptr, ptr %2, align 4
  %114 = getelementptr i8, ptr %113, i32 63360
  store ptr %114, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 154), align 4
  %115 = load ptr, ptr %2, align 4
  %116 = getelementptr i8, ptr %115, i32 63364
  store ptr %116, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 155), align 4
  %117 = load ptr, ptr %2, align 4
  %118 = getelementptr i8, ptr %117, i32 63368
  store ptr %118, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 156), align 4
  %119 = load ptr, ptr %2, align 4
  %120 = getelementptr i8, ptr %119, i32 63564
  store ptr %120, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 157), align 4
  %121 = load ptr, ptr %2, align 4
  %122 = getelementptr i8, ptr %121, i32 63568
  store ptr %122, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 158), align 4
  %123 = load ptr, ptr %2, align 4
  %124 = getelementptr i8, ptr %123, i32 63376
  store ptr %124, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 159), align 4
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr i8, ptr %125, i32 63380
  store ptr %126, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 160), align 4
  %127 = load ptr, ptr %2, align 4
  %128 = getelementptr i8, ptr %127, i32 63384
  store ptr %128, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 161), align 4
  %129 = load ptr, ptr %2, align 4
  %130 = getelementptr i8, ptr %129, i32 63388
  store ptr %130, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 163), align 4
  %131 = load ptr, ptr %2, align 4
  %132 = getelementptr i8, ptr %131, i32 63392
  store ptr %132, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 164), align 4
  %133 = load ptr, ptr %2, align 4
  %134 = getelementptr i8, ptr %133, i32 63396
  store ptr %134, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 165), align 4
  %135 = load ptr, ptr %2, align 4
  %136 = getelementptr i8, ptr %135, i32 63404
  store ptr %136, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 167), align 4
  %137 = load ptr, ptr %2, align 4
  %138 = getelementptr i8, ptr %137, i32 63408
  store ptr %138, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 168), align 4
  %139 = load ptr, ptr %2, align 4
  %140 = getelementptr i8, ptr %139, i32 63632
  store ptr %140, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 169), align 4
  %141 = load ptr, ptr %2, align 4
  %142 = getelementptr i8, ptr %141, i32 63680
  store ptr %142, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 170), align 4
  %143 = load ptr, ptr %2, align 4
  %144 = getelementptr i8, ptr %143, i32 63748
  store ptr %144, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 171), align 4
  %145 = load ptr, ptr %2, align 4
  %146 = getelementptr i8, ptr %145, i32 63816
  store ptr %146, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 172), align 4
  %147 = load ptr, ptr %2, align 4
  %148 = getelementptr i8, ptr %147, i32 63884
  store ptr %148, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 173), align 4
  %149 = load ptr, ptr %2, align 4
  %150 = getelementptr i8, ptr %149, i32 63888
  store ptr %150, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 174), align 4
  %151 = load ptr, ptr %2, align 4
  %152 = getelementptr i8, ptr %151, i32 63892
  store ptr %152, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 175), align 4
  %153 = load ptr, ptr %2, align 4
  %154 = getelementptr i8, ptr %153, i32 63896
  store ptr %154, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 176), align 4
  %155 = load ptr, ptr %2, align 4
  %156 = getelementptr i8, ptr %155, i32 63984
  store ptr %156, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 178), align 4
  %157 = load ptr, ptr %2, align 4
  %158 = getelementptr i8, ptr %157, i32 63988
  store ptr %158, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 179), align 4
  %159 = load ptr, ptr %2, align 4
  %160 = getelementptr i8, ptr %159, i32 63992
  store ptr %160, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 184), align 4
  %161 = load ptr, ptr %2, align 4
  %162 = getelementptr i8, ptr %161, i32 63996
  store ptr %162, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 185), align 4
  %163 = load ptr, ptr %2, align 4
  %164 = getelementptr i8, ptr %163, i32 64000
  store ptr %164, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 186), align 4
  %165 = load ptr, ptr %2, align 4
  %166 = getelementptr i8, ptr %165, i32 64004
  store ptr %166, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 187), align 4
  %167 = load ptr, ptr %2, align 4
  %168 = getelementptr i8, ptr %167, i32 64008
  store ptr %168, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 188), align 4
  %169 = load ptr, ptr %2, align 4
  %170 = getelementptr i8, ptr %169, i32 64012
  store ptr %170, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 189), align 4
  %171 = load ptr, ptr %2, align 4
  %172 = getelementptr i8, ptr %171, i32 64016
  store ptr %172, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 190), align 4
  %173 = load ptr, ptr %2, align 4
  %174 = getelementptr i8, ptr %173, i32 64020
  store ptr %174, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 191), align 4
  %175 = load ptr, ptr %2, align 4
  %176 = getelementptr i8, ptr %175, i32 64024
  store ptr %176, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 192), align 4
  %177 = load ptr, ptr %2, align 4
  %178 = getelementptr i8, ptr %177, i32 64028
  store ptr %178, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 193), align 4
  %179 = load ptr, ptr %2, align 4
  %180 = getelementptr i8, ptr %179, i32 64032
  store ptr %180, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 194), align 4
  %181 = load ptr, ptr %2, align 4
  %182 = getelementptr i8, ptr %181, i32 64036
  store ptr %182, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 195), align 4
  %183 = load ptr, ptr %2, align 4
  %184 = getelementptr i8, ptr %183, i32 64044
  store ptr %184, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 196), align 4
  %185 = load ptr, ptr %2, align 4
  %186 = getelementptr i8, ptr %185, i32 64048
  store ptr %186, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 197), align 4
  %187 = load ptr, ptr %2, align 4
  %188 = getelementptr i8, ptr %187, i32 64052
  store ptr %188, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 198), align 4
  %189 = load ptr, ptr %2, align 4
  %190 = getelementptr i8, ptr %189, i32 64056
  store ptr %190, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 199), align 4
  %191 = load ptr, ptr %2, align 4
  %192 = getelementptr i8, ptr %191, i32 64060
  store ptr %192, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 200), align 4
  %193 = load ptr, ptr %2, align 4
  %194 = getelementptr i8, ptr %193, i32 64064
  store ptr %194, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 201), align 4
  %195 = load ptr, ptr %2, align 4
  %196 = getelementptr i8, ptr %195, i32 64068
  store ptr %196, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 202), align 4
  %197 = load ptr, ptr %2, align 4
  %198 = getelementptr i8, ptr %197, i32 64148
  store ptr %198, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 203), align 4
  %199 = load ptr, ptr %2, align 4
  %200 = getelementptr i8, ptr %199, i32 64152
  store ptr %200, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 204), align 4
  %201 = load ptr, ptr %2, align 4
  %202 = getelementptr i8, ptr %201, i32 64128
  store ptr %202, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 206), align 4
  %203 = load ptr, ptr %2, align 4
  %204 = getelementptr i8, ptr %203, i32 64132
  store ptr %204, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 207), align 4
  %205 = load ptr, ptr %2, align 4
  %206 = getelementptr i8, ptr %205, i32 64136
  store ptr %206, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 208), align 4
  %207 = load ptr, ptr %2, align 4
  %208 = getelementptr i8, ptr %207, i32 64140
  store ptr %208, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 209), align 4
  %209 = load ptr, ptr %2, align 4
  %210 = getelementptr i8, ptr %209, i32 64156
  store ptr %210, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 211), align 4
  %211 = load ptr, ptr %2, align 4
  %212 = getelementptr i8, ptr %211, i32 64160
  store ptr %212, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 212), align 4
  %213 = load ptr, ptr %2, align 4
  %214 = getelementptr i8, ptr %213, i32 64272
  store ptr %214, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 215), align 4
  %215 = load ptr, ptr %2, align 4
  %216 = getelementptr i8, ptr %215, i32 64276
  store ptr %216, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 216), align 4
  %217 = load ptr, ptr %2, align 4
  %218 = getelementptr i8, ptr %217, i32 64336
  store ptr %218, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 217), align 4
  %219 = load ptr, ptr %2, align 4
  %220 = getelementptr i8, ptr %219, i32 64340
  store ptr %220, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 218), align 4
  %221 = load ptr, ptr %2, align 4
  %222 = getelementptr i8, ptr %221, i32 64344
  store ptr %222, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 219), align 4
  %223 = load ptr, ptr %2, align 4
  %224 = getelementptr i8, ptr %223, i32 64348
  store ptr %224, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 221), align 4
  %225 = load ptr, ptr %2, align 4
  %226 = getelementptr i8, ptr %225, i32 64352
  store ptr %226, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 222), align 4
  %227 = load ptr, ptr %2, align 4
  %228 = getelementptr i8, ptr %227, i32 64356
  store ptr %228, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 223), align 4
  %229 = load ptr, ptr %2, align 4
  %230 = getelementptr i8, ptr %229, i32 64360
  store ptr %230, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 224), align 4
  %231 = load ptr, ptr %2, align 4
  %232 = getelementptr i8, ptr %231, i32 64364
  store ptr %232, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 225), align 4
  %233 = load ptr, ptr %2, align 4
  %234 = getelementptr i8, ptr %233, i32 64368
  store ptr %234, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 226), align 4
  %235 = load ptr, ptr %2, align 4
  %236 = getelementptr i8, ptr %235, i32 64372
  store ptr %236, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 227), align 4
  %237 = load ptr, ptr %2, align 4
  %238 = getelementptr i8, ptr %237, i32 64376
  store ptr %238, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 228), align 4
  %239 = load ptr, ptr %2, align 4
  %240 = getelementptr i8, ptr %239, i32 64392
  store ptr %240, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 229), align 4
  %241 = load ptr, ptr %2, align 4
  %242 = getelementptr i8, ptr %241, i32 64428
  store ptr %242, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 231), align 4
  %243 = load ptr, ptr %2, align 4
  %244 = getelementptr i8, ptr %243, i32 64432
  store ptr %244, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 232), align 4
  %245 = load ptr, ptr %2, align 4
  %246 = getelementptr i8, ptr %245, i32 64588
  store ptr %246, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 233), align 4
  %247 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %248 = load ptr, ptr %247, align 4
  %249 = load i32, ptr %248, align 4
  %250 = icmp ugt i32 %249, 111
  br i1 %250, label %251, label %400

251:                                              ; preds = %1
  %252 = load ptr, ptr %2, align 4
  %253 = getelementptr i8, ptr %252, i32 63968
  store ptr %253, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 178), align 4
  %254 = load ptr, ptr %2, align 4
  %255 = getelementptr i8, ptr %254, i32 63972
  store ptr %255, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 179), align 4
  %256 = load ptr, ptr %2, align 4
  %257 = getelementptr i8, ptr %256, i32 63976
  store ptr %257, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 180), align 4
  %258 = load ptr, ptr %2, align 4
  %259 = getelementptr i8, ptr %258, i32 63980
  store ptr %259, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 181), align 4
  %260 = load ptr, ptr %2, align 4
  %261 = getelementptr i8, ptr %260, i32 63984
  store ptr %261, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 182), align 4
  %262 = load ptr, ptr %2, align 4
  %263 = getelementptr i8, ptr %262, i32 63988
  store ptr %263, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 183), align 4
  %264 = load ptr, ptr %2, align 4
  %265 = getelementptr i8, ptr %264, i32 64112
  store ptr %265, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 203), align 4
  %266 = load ptr, ptr %2, align 4
  %267 = getelementptr i8, ptr %266, i32 64116
  store ptr %267, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 204), align 4
  %268 = load ptr, ptr %2, align 4
  %269 = getelementptr i8, ptr %268, i32 64944
  store ptr %269, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 240), align 4
  %270 = load ptr, ptr %247, align 4
  %271 = load i32, ptr %270, align 4
  %272 = icmp ugt i32 %271, 127
  br i1 %272, label %273, label %400

273:                                              ; preds = %251
  %274 = load ptr, ptr %2, align 4
  %275 = getelementptr i8, ptr %274, i32 62928
  store ptr %275, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 78), align 4
  %276 = load ptr, ptr %2, align 4
  %277 = getelementptr i8, ptr %276, i32 62896
  store ptr %277, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 71), align 4
  %278 = load ptr, ptr %2, align 4
  %279 = getelementptr i8, ptr %278, i32 62900
  store ptr %279, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 72), align 4
  %280 = load ptr, ptr %2, align 4
  %281 = getelementptr i8, ptr %280, i32 62912
  store ptr %281, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 75), align 4
  %282 = load ptr, ptr %2, align 4
  %283 = getelementptr i8, ptr %282, i32 61764
  store ptr %283, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 58), align 4
  %284 = load ptr, ptr %2, align 4
  %285 = getelementptr i8, ptr %284, i32 61768
  store ptr %285, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 59), align 4
  %286 = load ptr, ptr %2, align 4
  %287 = getelementptr i8, ptr %286, i32 62816
  store ptr %287, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 66), align 4
  %288 = load ptr, ptr %2, align 4
  %289 = getelementptr i8, ptr %288, i32 62820
  store ptr %289, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 67), align 4
  %290 = load ptr, ptr %2, align 4
  %291 = getelementptr i8, ptr %290, i32 61752
  store ptr %291, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 55), align 4
  %292 = load ptr, ptr %2, align 4
  %293 = getelementptr i8, ptr %292, i32 61756
  store ptr %293, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 56), align 4
  %294 = load ptr, ptr %2, align 4
  %295 = getelementptr i8, ptr %294, i32 61776
  store ptr %295, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 61), align 4
  %296 = load ptr, ptr %2, align 4
  %297 = getelementptr i8, ptr %296, i32 61748
  store ptr %297, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 53), align 4
  %298 = load ptr, ptr %2, align 4
  %299 = getelementptr i8, ptr %298, i32 61792
  store ptr %299, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 62), align 4
  %300 = load ptr, ptr %2, align 4
  %301 = getelementptr i8, ptr %300, i32 62048
  store ptr %301, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 63), align 4
  %302 = load ptr, ptr %2, align 4
  %303 = getelementptr i8, ptr %302, i32 62560
  store ptr %303, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 65), align 4
  %304 = load ptr, ptr %2, align 4
  %305 = getelementptr i8, ptr %304, i32 61780
  store ptr %305, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 54), align 4
  %306 = load ptr, ptr %2, align 4
  %307 = getelementptr i8, ptr %306, i32 62908
  store ptr %307, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 74), align 4
  %308 = load ptr, ptr %2, align 4
  %309 = getelementptr i8, ptr %308, i32 62916
  store ptr %309, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 76), align 4
  %310 = load ptr, ptr %2, align 4
  %311 = getelementptr i8, ptr %310, i32 62988
  store ptr %311, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 84), align 4
  %312 = load ptr, ptr %2, align 4
  %313 = getelementptr i8, ptr %312, i32 62992
  store ptr %313, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 85), align 4
  %314 = load ptr, ptr %2, align 4
  %315 = getelementptr i8, ptr %314, i32 63048
  store ptr %315, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 103), align 4
  %316 = load ptr, ptr %2, align 4
  %317 = getelementptr i8, ptr %316, i32 63052
  store ptr %317, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 104), align 4
  %318 = load ptr, ptr %2, align 4
  %319 = getelementptr i8, ptr %318, i32 62984
  store ptr %319, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 83), align 4
  %320 = load ptr, ptr %2, align 4
  %321 = getelementptr i8, ptr %320, i32 63044
  store ptr %321, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 102), align 4
  %322 = load ptr, ptr %2, align 4
  %323 = getelementptr i8, ptr %322, i32 63060
  store ptr %323, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 106), align 4
  %324 = load ptr, ptr %2, align 4
  %325 = getelementptr i8, ptr %324, i32 63000
  store ptr %325, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 87), align 4
  %326 = load ptr, ptr %2, align 4
  %327 = getelementptr i8, ptr %326, i32 63076
  store ptr %327, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 110), align 4
  %328 = load ptr, ptr %2, align 4
  %329 = getelementptr i8, ptr %328, i32 62976
  store ptr %329, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 81), align 4
  %330 = load ptr, ptr %2, align 4
  %331 = getelementptr i8, ptr %330, i32 62980
  store ptr %331, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 82), align 4
  %332 = load ptr, ptr %2, align 4
  %333 = getelementptr i8, ptr %332, i32 63196
  store ptr %333, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 133), align 4
  %334 = load ptr, ptr %2, align 4
  %335 = getelementptr i8, ptr %334, i32 61700
  store ptr %335, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 41), align 4
  %336 = load ptr, ptr %2, align 4
  %337 = getelementptr i8, ptr %336, i32 63192
  store ptr %337, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 132), align 4
  %338 = load ptr, ptr %2, align 4
  %339 = getelementptr i8, ptr %338, i32 63092
  store ptr %339, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 114), align 4
  %340 = load ptr, ptr %2, align 4
  %341 = getelementptr i8, ptr %340, i32 63096
  store ptr %341, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 115), align 4
  %342 = load ptr, ptr %2, align 4
  %343 = getelementptr i8, ptr %342, i32 63004
  store ptr %343, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 88), align 4
  %344 = load ptr, ptr %2, align 4
  %345 = getelementptr i8, ptr %344, i32 63008
  store ptr %345, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 89), align 4
  %346 = load ptr, ptr %2, align 4
  %347 = getelementptr i8, ptr %346, i32 61704
  store ptr %347, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 147), align 4
  %348 = load ptr, ptr %2, align 4
  %349 = getelementptr i8, ptr %348, i32 63404
  store ptr %349, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 165), align 4
  %350 = load ptr, ptr %2, align 4
  %351 = getelementptr i8, ptr %350, i32 63384
  store ptr %351, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 160), align 4
  %352 = load ptr, ptr %2, align 4
  %353 = getelementptr i8, ptr %352, i32 63396
  store ptr %353, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 163), align 4
  %354 = load ptr, ptr %2, align 4
  %355 = getelementptr i8, ptr %354, i32 63412
  store ptr %355, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 167), align 4
  %356 = load ptr, ptr %2, align 4
  %357 = getelementptr i8, ptr %356, i32 63416
  store ptr %357, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 168), align 4
  %358 = load ptr, ptr %2, align 4
  %359 = getelementptr i8, ptr %358, i32 63388
  store ptr %359, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 161), align 4
  %360 = load ptr, ptr %2, align 4
  %361 = getelementptr i8, ptr %360, i32 63380
  store ptr %361, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 159), align 4
  %362 = load ptr, ptr %2, align 4
  %363 = getelementptr i8, ptr %362, i32 63372
  store ptr %363, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 157), align 4
  %364 = load ptr, ptr %2, align 4
  %365 = getelementptr i8, ptr %364, i32 63376
  store ptr %365, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 158), align 4
  %366 = load ptr, ptr %2, align 4
  %367 = getelementptr i8, ptr %366, i32 63400
  store ptr %367, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 164), align 4
  %368 = load ptr, ptr %2, align 4
  %369 = getelementptr i8, ptr %368, i32 64332
  store ptr %369, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 217), align 4
  %370 = load ptr, ptr %2, align 4
  %371 = getelementptr i8, ptr %370, i32 64336
  store ptr %371, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 218), align 4
  %372 = load ptr, ptr %2, align 4
  %373 = getelementptr i8, ptr %372, i32 64340
  store ptr %373, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 219), align 4
  %374 = load ptr, ptr %2, align 4
  %375 = getelementptr i8, ptr %374, i32 63636
  store ptr %375, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 247), align 4
  %376 = load ptr, ptr %247, align 4
  %377 = load i32, ptr %376, align 4
  %378 = icmp ugt i32 %377, 159
  br i1 %378, label %379, label %400

379:                                              ; preds = %273
  %380 = load ptr, ptr %2, align 4
  %381 = getelementptr i8, ptr %380, i32 62832
  store ptr %381, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 148), align 4
  %382 = load ptr, ptr %2, align 4
  %383 = getelementptr i8, ptr %382, i32 62836
  store ptr %383, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 149), align 4
  %384 = load ptr, ptr %2, align 4
  %385 = getelementptr i8, ptr %384, i32 64428
  store ptr %385, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 248), align 4
  %386 = load ptr, ptr %2, align 4
  %387 = getelementptr i8, ptr %386, i32 64432
  store ptr %387, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 249), align 4
  %388 = load ptr, ptr %2, align 4
  %389 = getelementptr i8, ptr %388, i32 64792
  store ptr %389, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 250), align 4
  %390 = load ptr, ptr %2, align 4
  %391 = getelementptr i8, ptr %390, i32 64980
  store ptr %391, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 251), align 4
  %392 = load ptr, ptr %2, align 4
  %393 = getelementptr i8, ptr %392, i32 64984
  store ptr %393, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 252), align 4
  %394 = load ptr, ptr %2, align 4
  %395 = getelementptr i8, ptr %394, i32 64992
  store ptr %395, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 253), align 4
  %396 = load ptr, ptr %2, align 4
  %397 = getelementptr i8, ptr %396, i32 64996
  store ptr %397, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 254), align 4
  %398 = load ptr, ptr %2, align 4
  %399 = getelementptr i8, ptr %398, i32 65000
  store ptr %399, ptr getelementptr inbounds (%struct.s5p_mfc_regs, ptr @mfc_regs, i32 0, i32 255), align 4
  br label %400

400:                                              ; preds = %379, %273, %251, %1
  ret ptr @mfc_regs
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_ops_v6() local_unnamed_addr #2 {
  ret ptr @s5p_mfc_ops_v6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_alloc_dec_temp_buffers_v6(ptr nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_release_dec_desc_buffer_v6(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_codec_buffers_v6(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 15
  %6 = sdiv i32 %5, 16
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 15
  %10 = sdiv i32 %9, 16
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %538 [
    i32 1, label %13
    i32 2, label %30
  ]

13:                                               ; preds = %1
  %14 = load i32, ptr @mfc_debug_level, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %140

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 72, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %140

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 73, i32 noundef %28) #8
  br label %140

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 159
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = icmp ugt i32 %33, 127
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = add nsw i32 %10, 1
  %39 = shl nsw i32 %6, 4
  %40 = add i32 %39, 16
  %41 = mul i32 %40, %38
  %42 = add i32 %41, 30
  %43 = and i32 %42, -32
  br label %51

44:                                               ; preds = %35
  %45 = add nsw i32 %10, 3
  %46 = shl nsw i32 %6, 4
  %47 = add i32 %46, 16
  %48 = mul i32 %47, %45
  %49 = add i32 %48, 30
  %50 = and i32 %49, -32
  br label %51

51:                                               ; preds = %44, %37, %30
  %52 = phi i32 [ %43, %37 ], [ %50, %44 ], [ 0, %30 ]
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %31, align 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 159
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = add i32 %4, 31
  %59 = sdiv i32 %58, 32
  %60 = add i32 %8, 31
  %61 = sdiv i32 %60, 32
  %62 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 26
  br i1 %64, label %78, label %65

65:                                               ; preds = %57
  %66 = shl nsw i32 %6, 4
  %67 = add i32 %66, 63
  %68 = and i32 %67, -64
  %69 = shl nsw i32 %10, 4
  %70 = add i32 %69, 31
  %71 = and i32 %70, -32
  %72 = mul i32 %71, %68
  %73 = or i32 %72, 64
  %74 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  store i32 %73, ptr %74, align 4
  %75 = shl nsw i32 %10, 3
  %76 = mul i32 %75, %68
  %77 = or i32 %76, 64
  br label %96

78:                                               ; preds = %57
  %79 = shl nsw i32 %59, 5
  %80 = add i32 %79, 63
  %81 = and i32 %80, -64
  %82 = shl nsw i32 %61, 5
  %83 = mul i32 %82, %81
  %84 = or i32 %83, 64
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  store i32 %84, ptr %85, align 4
  %86 = shl nsw i32 %61, 4
  %87 = mul i32 %86, %81
  %88 = or i32 %87, 64
  br label %96

89:                                               ; preds = %51
  %90 = mul i32 %10, %6
  %91 = shl i32 %90, 8
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  store i32 %91, ptr %92, align 4
  %93 = shl i32 %90, 7
  %94 = add i32 %93, 255
  %95 = and i32 %94, -256
  br label %96

96:                                               ; preds = %89, %78, %65
  %97 = phi i32 [ %77, %65 ], [ %88, %78 ], [ %95, %89 ]
  %98 = phi i32 [ %73, %65 ], [ %84, %78 ], [ %91, %89 ]
  %99 = phi i32 [ %61, %65 ], [ %61, %78 ], [ 0, %89 ]
  %100 = phi i32 [ %59, %65 ], [ %59, %78 ], [ 0, %89 ]
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  store i32 %97, ptr %101, align 4
  %102 = load ptr, ptr %31, align 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp ugt i32 %103, 127
  br i1 %104, label %105, label %119

105:                                              ; preds = %96
  %106 = shl i32 %6, 6
  %107 = shl nsw i32 %10, 4
  %108 = add i32 %107, 63
  %109 = lshr i32 %108, 6
  %110 = add i32 %106, 252
  %111 = and i32 %110, -256
  %112 = mul i32 %111, %109
  %113 = mul i32 %10, %6
  %114 = add i32 %113, 31
  %115 = lshr i32 %114, 1
  %116 = and i32 %115, 2147483632
  %117 = add nuw i32 %116, 255
  %118 = add i32 %117, %112
  br label %132

119:                                              ; preds = %96
  %120 = add i32 %4, 127
  %121 = sdiv i32 %120, 64
  %122 = add i32 %8, 63
  %123 = sdiv i32 %122, 64
  %124 = shl i32 %121, 12
  %125 = mul i32 %124, %123
  %126 = mul i32 %10, %6
  %127 = add i32 %126, 31
  %128 = lshr i32 %127, 1
  %129 = and i32 %128, 2147483632
  %130 = or i32 %125, 255
  %131 = add i32 %130, %129
  br label %132

132:                                              ; preds = %119, %105
  %133 = phi i32 [ %118, %105 ], [ %131, %119 ]
  %134 = and i32 %133, -256
  %135 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  store i32 %134, ptr %135, align 4
  %136 = load i32, ptr @mfc_debug_level, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 127, i32 noundef %98, i32 noundef %97) #8
  br label %140

140:                                              ; preds = %138, %132, %26, %16, %13
  %141 = phi i32 [ 0, %26 ], [ 0, %16 ], [ %99, %138 ], [ %99, %132 ], [ 0, %13 ]
  %142 = phi i32 [ 0, %26 ], [ 0, %16 ], [ %100, %138 ], [ %100, %132 ], [ 0, %13 ]
  %143 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %144 = load i32, ptr %143, align 4
  switch i32 %144, label %145 [
    i32 0, label %148
    i32 1, label %148
    i32 3, label %180
    i32 6, label %202
    i32 2, label %202
    i32 4, label %223
    i32 5, label %226
    i32 7, label %248
    i32 17, label %281
    i32 18, label %296
    i32 20, label %306
    i32 22, label %367
    i32 23, label %367
    i32 24, label %424
    i32 26, label %488
  ]

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %147 = load i32, ptr %146, align 4
  br label %523

148:                                              ; preds = %140, %140
  %149 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %150, align 4
  %152 = icmp ugt i32 %151, 159
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, ptr @mfc_debug_level, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 137) #8
  br label %168

158:                                              ; preds = %148
  %159 = icmp ugt i32 %151, 127
  br i1 %159, label %160, label %164

160:                                              ; preds = %158
  %161 = mul i32 %6, 704
  %162 = add i32 %161, 2176
  %163 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %162, ptr %163, align 4
  br label %168

164:                                              ; preds = %158
  %165 = mul i32 %6, 192
  %166 = add i32 %165, 64
  %167 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %166, ptr %167, align 4
  br label %168

168:                                              ; preds = %164, %160, %156, %153
  %169 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, 255
  %172 = and i32 %171, -256
  store i32 %172, ptr %169, align 4
  %173 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 48
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %176 = load i32, ptr %175, align 4
  %177 = mul i32 %176, %174
  %178 = add i32 %177, %172
  %179 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %178, ptr %179, align 4
  br label %523

180:                                              ; preds = %140
  %181 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %182 = load ptr, ptr %181, align 4
  %183 = load i32, ptr %182, align 4
  %184 = icmp ugt i32 %183, 159
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i32, ptr @mfc_debug_level, align 4
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 156) #8
  br label %196

190:                                              ; preds = %180
  %191 = mul i32 %6, 144
  %192 = shl i32 %10, 13
  %193 = add i32 %191, 1097792
  %194 = add i32 %193, %192
  %195 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %194, ptr %195, align 4
  br label %196

196:                                              ; preds = %190, %188, %185
  %197 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 255
  %200 = and i32 %199, -256
  store i32 %200, ptr %197, align 4
  %201 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %200, ptr %201, align 4
  br label %523

202:                                              ; preds = %140, %140
  %203 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %204 = load ptr, ptr %203, align 4
  %205 = load i32, ptr %204, align 4
  %206 = icmp ugt i32 %205, 159
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load i32, ptr @mfc_debug_level, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 176) #8
  br label %217

212:                                              ; preds = %202
  %213 = add nsw i32 %10, %6
  %214 = mul i32 %213, 2096
  %215 = add i32 %214, 2096
  %216 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %215, ptr %216, align 4
  br label %217

217:                                              ; preds = %212, %210, %207
  %218 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, 255
  %221 = and i32 %220, -256
  store i32 %221, ptr %218, align 4
  %222 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %221, ptr %222, align 4
  br label %523

223:                                              ; preds = %140
  %224 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %225, align 4
  br label %538

226:                                              ; preds = %140
  %227 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %228 = load ptr, ptr %227, align 4
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, 159
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32, ptr @mfc_debug_level, align 4
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 193) #8
  br label %242

236:                                              ; preds = %226
  %237 = mul i32 %6, 144
  %238 = shl i32 %10, 13
  %239 = add i32 %237, 1097792
  %240 = add i32 %239, %238
  %241 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %240, ptr %241, align 4
  br label %242

242:                                              ; preds = %236, %234, %231
  %243 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %244 = load i32, ptr %243, align 4
  %245 = add i32 %244, 255
  %246 = and i32 %245, -256
  store i32 %246, ptr %243, align 4
  %247 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %246, ptr %247, align 4
  br label %523

248:                                              ; preds = %140
  %249 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %250 = load ptr, ptr %249, align 4
  %251 = load i32, ptr %250, align 4
  %252 = icmp ugt i32 %251, 159
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i32, ptr @mfc_debug_level, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %256, label %275

256:                                              ; preds = %253
  %257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 205) #8
  br label %275

258:                                              ; preds = %248
  %259 = icmp ugt i32 %251, 127
  br i1 %259, label %260, label %266

260:                                              ; preds = %258
  %261 = mul i32 %6, 576
  %262 = shl i32 %10, 7
  %263 = add i32 %261, 4128
  %264 = add i32 %263, %262
  %265 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %264, ptr %265, align 4
  br label %275

266:                                              ; preds = %258
  %267 = shl i32 %6, 5
  %268 = shl i32 %10, 7
  %269 = add i32 %267, 32
  %270 = and i32 %269, -64
  %271 = add i32 %267, 2112
  %272 = add i32 %271, %268
  %273 = add i32 %272, %270
  %274 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  store i32 %273, ptr %274, align 4
  br label %275

275:                                              ; preds = %266, %260, %256, %253
  %276 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 255
  %279 = and i32 %278, -256
  store i32 %279, ptr %276, align 4
  %280 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %279, ptr %280, align 4
  br label %523

281:                                              ; preds = %140
  %282 = load i32, ptr @mfc_debug_level, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 221) #8
  br label %286

286:                                              ; preds = %284, %281
  %287 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 48
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %292 = load i32, ptr %291, align 4
  %293 = mul i32 %292, %290
  %294 = add i32 %293, %288
  %295 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %294, ptr %295, align 4
  br label %523

296:                                              ; preds = %140
  %297 = load i32, ptr @mfc_debug_level, align 4
  %298 = icmp sgt i32 %297, 1
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 227) #8
  br label %301

301:                                              ; preds = %299, %296
  %302 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %303 = load i32, ptr %302, align 4
  %304 = add i32 %303, 20480
  %305 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %304, ptr %305, align 4
  br label %523

306:                                              ; preds = %140
  %307 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %308 = load ptr, ptr %307, align 4
  %309 = load i32, ptr %308, align 4
  %310 = icmp ugt i32 %309, 159
  br i1 %310, label %311, label %337

311:                                              ; preds = %306
  %312 = load i32, ptr @mfc_debug_level, align 4
  %313 = icmp sgt i32 %312, 1
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 234) #8
  br label %316

316:                                              ; preds = %314, %311
  %317 = add nsw i32 %10, 3
  %318 = shl nsw i32 %6, 3
  %319 = add nsw i32 %318, 24
  %320 = mul i32 %319, %317
  %321 = shl i32 %10, 6
  %322 = add i32 %321, 1280
  %323 = add nsw i32 %6, 7
  %324 = lshr i32 %323, 3
  %325 = mul i32 %322, %324
  %326 = mul i32 %10, %6
  %327 = add i32 %326, 63
  %328 = lshr i32 %327, 1
  %329 = and i32 %328, 2147483616
  %330 = add i32 %320, 15
  %331 = add i32 %330, %325
  %332 = add i32 %331, %329
  %333 = and i32 %332, -16
  %334 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  store i32 %333, ptr %334, align 4
  %335 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %336 = load i32, ptr %335, align 4
  br label %345

337:                                              ; preds = %306
  %338 = icmp ugt i32 %309, 127
  br i1 %338, label %339, label %342

339:                                              ; preds = %337
  %340 = mul i32 %6, 592
  %341 = add i32 %340, 2336
  br label %345

342:                                              ; preds = %337
  %343 = mul i32 %6, 80
  %344 = add i32 %343, 65552
  br label %345

345:                                              ; preds = %342, %339, %316
  %346 = phi i32 [ %341, %339 ], [ %344, %342 ], [ %336, %316 ]
  %347 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %348 = add i32 %346, 255
  %349 = and i32 %348, -256
  store i32 %349, ptr %347, align 4
  %350 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %349, %351
  %353 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  %358 = load i32, ptr %357, align 4
  %359 = add i32 %358, %356
  %360 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  %361 = load i32, ptr %360, align 4
  %362 = add i32 %359, %361
  %363 = mul i32 %362, %354
  %364 = add i32 %352, %363
  %365 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %364, ptr %365, align 4
  %366 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %366, align 4
  br label %523

367:                                              ; preds = %140, %140
  %368 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %369 = load ptr, ptr %368, align 4
  %370 = load i32, ptr %369, align 4
  %371 = icmp ugt i32 %370, 159
  br i1 %371, label %372, label %398

372:                                              ; preds = %367
  %373 = load i32, ptr @mfc_debug_level, align 4
  %374 = icmp sgt i32 %373, 1
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 258) #8
  br label %377

377:                                              ; preds = %375, %372
  %378 = add nsw i32 %10, 3
  %379 = shl nsw i32 %6, 3
  %380 = add nsw i32 %379, 24
  %381 = mul i32 %380, %378
  %382 = shl i32 %10, 6
  %383 = add i32 %382, 1280
  %384 = add nsw i32 %6, 7
  %385 = lshr i32 %384, 3
  %386 = mul i32 %383, %385
  %387 = mul i32 %10, %6
  %388 = add i32 %387, 127
  %389 = lshr i32 %388, 3
  %390 = and i32 %389, 536870896
  %391 = add i32 %381, 15
  %392 = add i32 %391, %386
  %393 = add i32 %392, %390
  %394 = and i32 %393, -16
  %395 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  store i32 %394, ptr %395, align 4
  %396 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %397 = load i32, ptr %396, align 4
  br label %403

398:                                              ; preds = %367
  %399 = shl i32 %6, 5
  %400 = or i32 %399, 16
  %401 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  %402 = load i32, ptr %401, align 4
  br label %403

403:                                              ; preds = %398, %377
  %404 = phi i32 [ %402, %398 ], [ %394, %377 ]
  %405 = phi i32 [ %400, %398 ], [ %397, %377 ]
  %406 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %407 = add i32 %405, 255
  %408 = and i32 %407, -256
  store i32 %408, ptr %406, align 4
  %409 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  %410 = load i32, ptr %409, align 4
  %411 = add i32 %408, %410
  %412 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %413 = load i32, ptr %412, align 4
  %414 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  %415 = load i32, ptr %414, align 4
  %416 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  %417 = load i32, ptr %416, align 4
  %418 = add i32 %417, %415
  %419 = add i32 %418, %404
  %420 = mul i32 %419, %413
  %421 = add i32 %411, %420
  %422 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %421, ptr %422, align 4
  %423 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %423, align 4
  br label %523

424:                                              ; preds = %140
  %425 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %426 = load ptr, ptr %425, align 4
  %427 = load i32, ptr %426, align 4
  %428 = icmp ugt i32 %427, 159
  br i1 %428, label %429, label %450

429:                                              ; preds = %424
  %430 = load i32, ptr @mfc_debug_level, align 4
  %431 = icmp sgt i32 %430, 1
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 277) #8
  br label %434

434:                                              ; preds = %432, %429
  %435 = add nsw i32 %10, 3
  %436 = shl nsw i32 %6, 3
  %437 = add nsw i32 %436, 24
  %438 = mul i32 %437, %435
  %439 = shl i32 %10, 6
  %440 = add i32 %439, 1280
  %441 = add nsw i32 %6, 7
  %442 = lshr i32 %441, 3
  %443 = mul i32 %440, %442
  %444 = add i32 %438, 15
  %445 = add i32 %444, %443
  %446 = and i32 %445, -16
  %447 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  store i32 %446, ptr %447, align 4
  %448 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %449 = load i32, ptr %448, align 4
  br label %466

450:                                              ; preds = %424
  %451 = icmp ugt i32 %427, 127
  br i1 %451, label %452, label %457

452:                                              ; preds = %450
  %453 = mul i32 %10, 1536
  %454 = add i32 %453, 576
  %455 = mul i32 %454, %6
  %456 = add i32 %455, 10512
  br label %466

457:                                              ; preds = %450
  %458 = shl i32 %6, 6
  %459 = add i32 %458, 64
  %460 = and i32 %459, -128
  %461 = mul i32 %10, 1536
  %462 = or i32 %461, 48
  %463 = mul i32 %462, %6
  %464 = add i32 %460, 8336
  %465 = add i32 %464, %463
  br label %466

466:                                              ; preds = %457, %452, %434
  %467 = phi i32 [ %456, %452 ], [ %465, %457 ], [ %449, %434 ]
  %468 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %469 = add i32 %467, 255
  %470 = and i32 %469, -256
  store i32 %470, ptr %468, align 4
  %471 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  %472 = load i32, ptr %471, align 4
  %473 = add i32 %470, %472
  %474 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %475 = load i32, ptr %474, align 4
  %476 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  %479 = load i32, ptr %478, align 4
  %480 = add i32 %479, %477
  %481 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  %482 = load i32, ptr %481, align 4
  %483 = add i32 %480, %482
  %484 = mul i32 %483, %475
  %485 = add i32 %473, %484
  %486 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %485, ptr %486, align 4
  %487 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %487, align 4
  br label %523

488:                                              ; preds = %140
  %489 = load i32, ptr @mfc_debug_level, align 4
  %490 = icmp sgt i32 %489, 1
  br i1 %490, label %491, label %493

491:                                              ; preds = %488
  %492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 300) #8
  br label %493

493:                                              ; preds = %491, %488
  %494 = add nsw i32 %142, 3
  %495 = shl nsw i32 %141, 5
  %496 = add i32 %495, 96
  %497 = mul i32 %496, %494
  %498 = shl i32 %141, 7
  %499 = add i32 %498, 1280
  %500 = lshr i32 %494, 2
  %501 = mul i32 %500, %499
  %502 = add i32 %501, %497
  %503 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  store i32 %502, ptr %503, align 4
  %504 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %505 = load i32, ptr %504, align 4
  %506 = add i32 %505, 255
  %507 = and i32 %506, -256
  store i32 %507, ptr %504, align 4
  %508 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  %509 = load i32, ptr %508, align 4
  %510 = add i32 %507, %509
  %511 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %512 = load i32, ptr %511, align 4
  %513 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  %514 = load i32, ptr %513, align 4
  %515 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  %516 = load i32, ptr %515, align 4
  %517 = add i32 %514, %502
  %518 = add i32 %517, %516
  %519 = mul i32 %518, %512
  %520 = add i32 %510, %519
  %521 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %520, ptr %521, align 4
  %522 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %522, align 4
  br label %523

523:                                              ; preds = %493, %466, %403, %345, %301, %286, %275, %242, %217, %196, %168, %145
  %524 = phi i32 [ %147, %145 ], [ %520, %493 ], [ %485, %466 ], [ %421, %403 ], [ %364, %345 ], [ %304, %301 ], [ %294, %286 ], [ %279, %275 ], [ %246, %242 ], [ %221, %217 ], [ %200, %196 ], [ %178, %168 ]
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %538, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  %528 = tail call i32 @s5p_mfc_alloc_generic_buf(ptr noundef %2, i32 noundef 0, ptr noundef %527) #9
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %526
  %531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v6, i32 noundef 318) #8
  br label %538

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %534 = load i32, ptr %533, align 4
  %535 = and i32 %534, 8191
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %538, label %537, !prof !8

537:                                              ; preds = %532
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

538:                                              ; preds = %532, %530, %523, %223, %1
  %539 = phi i32 [ %528, %530 ], [ -22, %1 ], [ 0, %532 ], [ 0, %523 ], [ 0, %223 ]
  ret i32 %539
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_codec_buffers_v6(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  tail call void @s5p_mfc_release_generic_buf(ptr noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_instance_buffer_v6(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @mfc_debug_level, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v6, i32 noundef 339) #8
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %36 [
    i32 0, label %16
    i32 1, label %16
    i32 17, label %16
    i32 3, label %20
    i32 5, label %20
    i32 6, label %20
    i32 2, label %20
    i32 4, label %20
    i32 7, label %20
    i32 18, label %20
    i32 20, label %24
    i32 26, label %28
    i32 22, label %32
    i32 23, label %32
    i32 24, label %32
  ]

16:                                               ; preds = %13, %13, %13
  %17 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %8, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %18, ptr %19, align 4
  br label %39

20:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  %21 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %8, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %22, ptr %23, align 4
  br label %39

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %8, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %26, ptr %27, align 4
  br label %39

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %8, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %30, ptr %31, align 4
  br label %39

32:                                               ; preds = %13, %13, %13
  %33 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, ptr %8, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %34, ptr %35, align 4
  br label %39

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 0, ptr %37, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v6, i32 noundef 369, i32 noundef %15) #8
  br label %39

39:                                               ; preds = %36, %32, %28, %24, %20, %16
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49
  %41 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 0, ptr noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v6, i32 noundef 375) #8
  br label %54

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  %49 = load i32, ptr %48, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %47, i8 0, i32 %49, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %50 = load i32, ptr @mfc_debug_level, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v6, i32 noundef 382) #8
  br label %54

54:                                               ; preds = %52, %45, %43
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_instance_buffer_v6(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_dev_context_buffer_v6(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @mfc_debug_level, align 4
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_alloc_dev_context_buffer_v6, i32 noundef 399) #8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, ptr %7, align 4
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 34
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 34, i32 3
  store i32 %13, ptr %15, align 4
  %16 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %0, i32 noundef 0, ptr noundef %14) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_alloc_dev_context_buffer_v6, i32 noundef 404) #8
  br label %28

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 34, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %7, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %23, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_alloc_dev_context_buffer_v6, i32 noundef 411) #8
  br label %28

28:                                               ; preds = %26, %20, %18
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_dev_context_buffer_v6(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 34
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %0, ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_dec_calc_dpb_size_v6(ptr nocapture noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 15
  %6 = and i32 %5, -16
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 20
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 15
  %11 = and i32 %10, -16
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 21
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr @mfc_debug_level, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_dec_calc_dpb_size_v6, i32 noundef 443, i32 noundef %4, i32 noundef %9, i32 noundef %6, i32 noundef %11) #8
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %8, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = add i32 %18, 15
  %21 = add i32 %17, 15
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i32 [ %21, %15 ], [ %5, %1 ]
  %24 = phi i32 [ %20, %15 ], [ %10, %1 ]
  %25 = phi ptr [ %19, %15 ], [ %2, %1 ]
  %26 = phi i32 [ %18, %15 ], [ %9, %1 ]
  %27 = phi i32 [ %17, %15 ], [ %4, %1 ]
  %28 = sdiv i32 %24, 16
  %29 = mul i32 %26, %27
  %30 = icmp slt i32 %29, 2097152
  %31 = add nsw i32 %28, 1
  %32 = sdiv i32 %31, 2
  %33 = shl nsw i32 %32, 1
  %34 = select i1 %30, i32 %33, i32 %28
  %35 = sdiv i32 %23, 16
  %36 = shl i32 %35, 8
  %37 = mul i32 %34, %36
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  store i32 %37, ptr %38, align 4
  %39 = ashr i32 %26, 1
  %40 = add nsw i32 %39, 15
  %41 = sdiv i32 %40, 16
  %42 = mul i32 %39, %27
  %43 = icmp slt i32 %42, 2097152
  %44 = add nsw i32 %41, 1
  %45 = sdiv i32 %44, 2
  %46 = shl nsw i32 %45, 1
  %47 = select i1 %43, i32 %46, i32 %41
  %48 = mul i32 %47, %36
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %25, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 127
  br i1 %53, label %54, label %57

54:                                               ; preds = %22
  %55 = or i32 %37, 64
  store i32 %55, ptr %38, align 4
  %56 = or i32 %48, 64
  store i32 %56, ptr %49, align 4
  br label %57

57:                                               ; preds = %54, %22
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %83 [
    i32 0, label %60
    i32 1, label %60
    i32 17, label %73
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 159
  %65 = mul i32 %33, %35
  %66 = shl i32 %65, 6
  br i1 %64, label %67, label %70

67:                                               ; preds = %60
  %68 = add i32 %66, 512
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  store i32 %68, ptr %69, align 4
  br label %85

70:                                               ; preds = %60
  %71 = add i32 %66, 128
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  store i32 %71, ptr %72, align 4
  br label %85

73:                                               ; preds = %57
  %74 = add i32 %27, 63
  %75 = sdiv i32 %74, 64
  %76 = add i32 %26, 63
  %77 = sdiv i32 %76, 64
  %78 = shl i32 %75, 8
  %79 = mul i32 %78, %77
  %80 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %81 = add i32 %79, 543
  %82 = and i32 %81, -256
  store i32 %82, ptr %80, align 4
  br label %85

83:                                               ; preds = %57
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %73, %70, %67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_enc_calc_src_size_v6(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 15
  %5 = sdiv i32 %4, 16
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 15
  %9 = sdiv i32 %8, 16
  %10 = and i32 %4, -16
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 20
  store i32 %10, ptr %11, align 4
  %12 = mul i32 %9, %5
  %13 = shl i32 %12, 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  store i32 %13, ptr %14, align 4
  %15 = shl i32 %12, 7
  %16 = add i32 %15, 255
  %17 = and i32 %16, -256
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 111
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = add i32 %13, 256
  store i32 %25, ptr %14, align 4
  %26 = or i32 %17, 128
  store i32 %26, ptr %18, align 4
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_set_enc_stream_buffer_v6(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 38
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 184
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 185
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #9, !srcloc !13
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_set_enc_stream_buffer_v6, i32 noundef 621, i32 noundef %1, i32 noundef %2) #8
  br label %15

15:                                               ; preds = %13, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_set_enc_frame_buffer_v6(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 38
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 178
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 179
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #9, !srcloc !13
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 635, i32 noundef %1) #8
  %15 = load i32, ptr @mfc_debug_level, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 636, i32 noundef %2) #8
  br label %19

19:                                               ; preds = %17, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_get_enc_frame_buffer_v6(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 38
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 203
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 204
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  store i32 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 211
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %16 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %6, i32 0, i32 212
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %19 = load i32, ptr @mfc_debug_level, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, ptr %1, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5p_mfc_get_enc_frame_buffer_v6, i32 noundef 652, i32 noundef %15, i32 noundef %22) #8
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5p_mfc_get_enc_frame_buffer_v6, i32 noundef 653, i32 noundef %18) #8
  br label %28

28:                                               ; preds = %26, %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_try_run_v6(ptr noundef %0) #3 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1963, ptr noundef %0) #8
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 25
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %360

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1968) #8
  br label %360

15:                                               ; preds = %6
  %16 = tail call i32 @s5p_mfc_get_new_ctx(ptr noundef %0) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1977) #8
  br label %360

23:                                               ; preds = %18
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %360

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1981) #8
  br label %360

28:                                               ; preds = %15
  %29 = load i32, ptr @mfc_debug_level, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 26, i32 %16
  %33 = load ptr, ptr %32, align 4
  br label %58

34:                                               ; preds = %28
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1985, i32 noundef %16) #8
  %36 = load i32, ptr @mfc_debug_level, align 4
  %37 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 26, i32 %16
  %38 = load ptr, ptr %37, align 4
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1987, ptr noundef %38) #8
  %42 = load i32, ptr @mfc_debug_level, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %38, i32 0, i32 14
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %38, i32 0, i32 46
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %38, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1990, i32 noundef %46, i32 noundef %48, i32 noundef %50) #8
  %52 = load i32, ptr @mfc_debug_level, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %38, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 1991, i32 noundef %56) #8
  br label %58

58:                                               ; preds = %54, %44, %40, %34, %31
  %59 = phi ptr [ %38, %54 ], [ %38, %44 ], [ %38, %40 ], [ %33, %31 ], [ %38, %34 ]
  %60 = tail call i32 @s5p_mfc_clock_on() #9
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %59) #9
  %61 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 15
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %349 [
    i32 1, label %63
    i32 2, label %110
  ]

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %354 [
    i32 106, label %66
    i32 105, label %67
    i32 100, label %69
    i32 108, label %79
    i32 101, label %89
    i32 102, label %90
    i32 111, label %92
    i32 112, label %95
    i32 113, label %96
    i32 114, label %97
  ]

66:                                               ; preds = %63
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %59)
  br label %360

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %59)
  br label %351

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %354, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %71, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %354, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %59) #9
  br label %351

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %354, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %81, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %354, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef %59) #9
  br label %351

89:                                               ; preds = %63
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %59)
  br label %360

90:                                               ; preds = %63
  %91 = tail call fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %59)
  br label %351

92:                                               ; preds = %63
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 26
  %94 = load i32, ptr %93, align 4
  tail call fastcc void @s5p_mfc_set_flush(ptr noundef %59, i32 noundef %94)
  br label %360

95:                                               ; preds = %63
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %59)
  br label %360

96:                                               ; preds = %63
  tail call fastcc void @s5p_mfc_run_dec_last_frames(ptr noundef %59)
  br label %360

97:                                               ; preds = %63
  %98 = load i32, ptr @mfc_debug_level, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 30
  store i32 0, ptr %101, align 4
  br label %109

102:                                              ; preds = %97
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 2030) #8
  %104 = load i32, ptr @mfc_debug_level, align 4
  %105 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 30
  store i32 0, ptr %105, align 4
  %106 = icmp sgt i32 %104, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 2032) #8
  br label %109

109:                                              ; preds = %107, %102, %100
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %59)
  br label %360

110:                                              ; preds = %58
  %111 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 16
  %112 = load i32, ptr %111, align 4
  switch i32 %112, label %354 [
    i32 106, label %113
    i32 105, label %113
    i32 100, label %326
    i32 108, label %336
    i32 101, label %346
    i32 103, label %347
  ]

113:                                              ; preds = %110, %110
  %114 = load ptr, ptr %59, align 4
  %115 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 11
  %116 = load volatile ptr, ptr %115, align 4
  %117 = icmp ne ptr %116, %115
  %118 = icmp eq i32 %112, 106
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load i32, ptr @mfc_debug_level, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %354

123:                                              ; preds = %120
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1842) #8
  br label %354

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 12
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, ptr @mfc_debug_level, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %354

132:                                              ; preds = %129
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1847) #8
  br label %354

134:                                              ; preds = %125
  %135 = load volatile ptr, ptr %115, align 4
  %136 = icmp eq ptr %135, %115
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %114, i32 0, i32 38
  %139 = load ptr, ptr %138, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %140 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %139, i32 0, i32 178
  %141 = load ptr, ptr %140, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %142 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %139, i32 0, i32 179
  %143 = load ptr, ptr %142, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 0) #9, !srcloc !13
  %144 = load i32, ptr @mfc_debug_level, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %213

146:                                              ; preds = %137
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 635, i32 noundef 0) #8
  %148 = load i32, ptr @mfc_debug_level, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %213

150:                                              ; preds = %146
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 636, i32 noundef 0) #8
  br label %213

152:                                              ; preds = %134
  %153 = getelementptr i8, ptr %135, i32 -4
  %154 = getelementptr i8, ptr %135, i32 16
  %155 = load i32, ptr %154, align 4
  %156 = or i32 %155, 1
  store i32 %156, ptr %154, align 4
  %157 = load ptr, ptr %153, align 4
  %158 = getelementptr inbounds %struct.vb2_buffer, ptr %157, i32 0, i32 10, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %152
  %162 = load ptr, ptr %59, align 4
  %163 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %162, i32 0, i32 38
  %164 = load ptr, ptr %163, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %165 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %164, i32 0, i32 178
  %166 = load ptr, ptr %165, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %167 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %164, i32 0, i32 179
  %168 = load ptr, ptr %167, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 0) #9, !srcloc !13
  %169 = load i32, ptr @mfc_debug_level, align 4
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %177

171:                                              ; preds = %161
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 635, i32 noundef 0) #8
  %173 = load i32, ptr @mfc_debug_level, align 4
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 636, i32 noundef 0) #8
  br label %177

177:                                              ; preds = %175, %171, %161
  store i32 106, ptr %111, align 4
  br label %213

178:                                              ; preds = %152
  %179 = tail call ptr @vb2_plane_cookie(ptr noundef %157, i32 noundef 0) #9
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr %153, align 4
  %182 = tail call ptr @vb2_plane_cookie(ptr noundef %181, i32 noundef 1) #9
  %183 = load i32, ptr %182, align 4
  %184 = load i32, ptr @mfc_debug_level, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1865, i32 noundef %180) #8
  %188 = load i32, ptr @mfc_debug_level, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1866, i32 noundef %183) #8
  br label %192

192:                                              ; preds = %190, %186, %178
  %193 = load ptr, ptr %59, align 4
  %194 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %193, i32 0, i32 38
  %195 = load ptr, ptr %194, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %196 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %195, i32 0, i32 178
  %197 = load ptr, ptr %196, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %180) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %198 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %195, i32 0, i32 179
  %199 = load ptr, ptr %198, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %183) #9, !srcloc !13
  %200 = load i32, ptr @mfc_debug_level, align 4
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %202, label %208

202:                                              ; preds = %192
  %203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 635, i32 noundef %180) #8
  %204 = load i32, ptr @mfc_debug_level, align 4
  %205 = icmp sgt i32 %204, 1
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_set_enc_frame_buffer_v6, i32 noundef 636, i32 noundef %183) #8
  br label %208

208:                                              ; preds = %206, %202, %192
  %209 = load i32, ptr %154, align 4
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  store i32 106, ptr %111, align 4
  br label %213

213:                                              ; preds = %212, %208, %177, %150, %146, %137
  %214 = load ptr, ptr %126, align 4
  %215 = getelementptr i8, ptr %214, i32 -4
  %216 = getelementptr i8, ptr %214, i32 16
  %217 = load i32, ptr %216, align 4
  %218 = or i32 %217, 1
  store i32 %218, ptr %216, align 4
  %219 = load ptr, ptr %215, align 4
  %220 = tail call ptr @vb2_plane_cookie(ptr noundef %219, i32 noundef 0) #9
  %221 = load i32, ptr %220, align 4
  %222 = load ptr, ptr %215, align 4
  %223 = getelementptr inbounds %struct.vb2_buffer, ptr %222, i32 0, i32 4
  %224 = load i32, ptr %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %213
  %227 = getelementptr inbounds %struct.vb2_buffer, ptr %222, i32 0, i32 10, i32 0, i32 4
  %228 = load i32, ptr %227, align 8
  br label %229

229:                                              ; preds = %226, %213
  %230 = phi i32 [ %228, %226 ], [ 0, %213 ]
  %231 = load ptr, ptr %59, align 4
  %232 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %231, i32 0, i32 38
  %233 = load ptr, ptr %232, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %234 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %233, i32 0, i32 184
  %235 = load ptr, ptr %234, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %221) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %236 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %233, i32 0, i32 185
  %237 = load ptr, ptr %236, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %230) #9, !srcloc !13
  %238 = load i32, ptr @mfc_debug_level, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %247, label %240

240:                                              ; preds = %229
  %241 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %114, i32 0, i32 27
  store i32 %242, ptr %243, align 4
  %244 = load ptr, ptr %59, align 4
  %245 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %244, i32 0, i32 38
  %246 = load ptr, ptr %245, align 4
  br label %259

247:                                              ; preds = %229
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_set_enc_stream_buffer_v6, i32 noundef 621, i32 noundef %221, i32 noundef %230) #8
  %249 = load i32, ptr @mfc_debug_level, align 4
  %250 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %114, i32 0, i32 27
  store i32 %251, ptr %252, align 4
  %253 = load ptr, ptr %59, align 4
  %254 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %253, i32 0, i32 38
  %255 = load ptr, ptr %254, align 4
  %256 = icmp sgt i32 %249, 1
  br i1 %256, label %257, label %259

257:                                              ; preds = %247
  %258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.s5p_mfc_encode_one_frame_v6, i32 noundef 1760) #8
  br label %259

259:                                              ; preds = %257, %247, %240
  %260 = phi ptr [ %246, %240 ], [ %255, %257 ], [ %255, %247 ]
  %261 = phi ptr [ %244, %240 ], [ %253, %257 ], [ %253, %247 ]
  %262 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 39
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 20
  br i1 %264, label %265, label %305

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 40
  %267 = load i8, ptr %266, align 4
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %305, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr %59, align 4
  %271 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %270, i32 0, i32 38
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %272, i32 0, i32 229
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %274 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 0
  %275 = load i32, ptr %274, align 4
  %276 = load ptr, ptr %273, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %275) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %277 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %273, align 4
  %280 = getelementptr i8, ptr %279, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %281 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 2
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %273, align 4
  %284 = getelementptr i8, ptr %283, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %282) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %285 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 3
  %286 = load i32, ptr %285, align 4
  %287 = load ptr, ptr %273, align 4
  %288 = getelementptr i8, ptr %287, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %289 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 4
  %290 = load i32, ptr %289, align 4
  %291 = load ptr, ptr %273, align 4
  %292 = getelementptr i8, ptr %291, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %290) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %293 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 5
  %294 = load i32, ptr %293, align 4
  %295 = load ptr, ptr %273, align 4
  %296 = getelementptr i8, ptr %295, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %294) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %297 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 6
  %298 = load i32, ptr %297, align 4
  %299 = load ptr, ptr %273, align 4
  %300 = getelementptr i8, ptr %299, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %298) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %301 = getelementptr %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 52, i32 25, i32 0, i32 41, i32 7
  %302 = load i32, ptr %301, align 4
  %303 = load ptr, ptr %273, align 4
  %304 = getelementptr i8, ptr %303, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #9, !srcloc !13
  br label %305

305:                                              ; preds = %269, %265, %259
  tail call fastcc void @s5p_mfc_set_slice_mode(ptr noundef %59) #9
  %306 = load i32, ptr %111, align 4
  %307 = icmp eq i32 %306, 106
  %308 = select i1 %307, i32 9, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %309 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %59, i32 0, i32 17
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %260, i32 0, i32 9
  %312 = load ptr, ptr %311, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %310) #9, !srcloc !13
  %313 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %261, i32 0, i32 37
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %316

316:                                              ; preds = %305
  %317 = load ptr, ptr %314, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = tail call i32 %317(ptr noundef %261, i32 noundef %308, ptr noundef null) #9
  br label %321

321:                                              ; preds = %319, %316, %305
  %322 = load i32, ptr @mfc_debug_level, align 4
  %323 = icmp sgt i32 %322, 1
  br i1 %323, label %324, label %360

324:                                              ; preds = %321
  %325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.s5p_mfc_encode_one_frame_v6, i32 noundef 1777) #8
  br label %360

326:                                              ; preds = %110
  %327 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %354, label %330

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %328, i32 0, i32 4
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %354, label %334

334:                                              ; preds = %330
  %335 = tail call i32 %332(ptr noundef %59) #9
  br label %351

336:                                              ; preds = %110
  %337 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %354, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %338, i32 0, i32 5
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %354, label %344

344:                                              ; preds = %340
  %345 = tail call i32 %342(ptr noundef %59) #9
  br label %351

346:                                              ; preds = %110
  tail call fastcc void @s5p_mfc_run_init_enc(ptr noundef %59)
  br label %360

347:                                              ; preds = %110
  %348 = tail call fastcc i32 @s5p_mfc_run_init_enc_buffers(ptr noundef %59)
  br label %351

349:                                              ; preds = %58
  %350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 2062, i32 noundef %62) #8
  br label %354

351:                                              ; preds = %347, %344, %334, %90, %87, %77, %67
  %352 = phi i32 [ %91, %90 ], [ %68, %67 ], [ %348, %347 ], [ %78, %77 ], [ %88, %87 ], [ %335, %334 ], [ %345, %344 ]
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %351, %349, %340, %336, %330, %326, %132, %129, %123, %120, %110, %83, %79, %73, %69, %63
  %355 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #9
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5p_mfc_try_run_v6, i32 noundef 2069) #8
  br label %359

359:                                              ; preds = %357, %354
  tail call void @s5p_mfc_clock_off() #9
  br label %360

360:                                              ; preds = %359, %351, %346, %324, %321, %109, %96, %95, %92, %89, %66, %26, %23, %21, %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_clear_int_flags_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_y_adr_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_y_adr_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 103
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_status_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_status_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 102
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_frame_type_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 106
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %7 = and i32 %6, 7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_disp_frame_type_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 87
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %8 = and i32 %7, 7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_consumed_stream_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 110
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_reason_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %7 = and i32 %6, 131071
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_err_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_err_dec_v6(i32 noundef %0) #2 {
  %2 = and i32 %0, 65535
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_width_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 81
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_height_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 82
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dpb_count_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_mv_count_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_inst_no_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_strm_size_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 206
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_slice_type_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 207
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !41
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_dpb_count_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 169
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !42
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_top_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 114
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @s5p_mfc_clock_on() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  tail call void @s5p_mfc_clock_off() #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_bot_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @s5p_mfc_clock_on() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  tail call void @s5p_mfc_clock_off() #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_h_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 88
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @s5p_mfc_clock_on() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  tail call void @s5p_mfc_clock_off() #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_v_v6(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 89
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @s5p_mfc_clock_on() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  tail call void @s5p_mfc_clock_off() #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_min_scratch_buf_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 147
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !44
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_e_min_scratch_buf_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %3, i32 0, i32 247
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  ret i32 %6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_generic_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_generic_buf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_ctx_int_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_dec_last_frames(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %4, ptr %5, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 106
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %8, ptr %9, align 4
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %0) #9
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %0, i32 noundef 1)
  br label %47

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, ptr @mfc_debug_level, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.s5p_mfc_run_dec_frame, i32 noundef 1808) #8
  br label %47

19:                                               ; preds = %10
  %20 = getelementptr i8, ptr %12, i32 -4
  %21 = getelementptr i8, ptr %12, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = tail call ptr @vb2_plane_cookie(ptr noundef %24, i32 noundef 0) #9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 25
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.vb2_buffer, ptr %29, i32 0, i32 10, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %0, i32 noundef %26, i32 noundef %28, i32 noundef %31)
  %32 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.vb2_buffer, ptr %35, i32 0, i32 10, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %19
  %40 = load i32, ptr @mfc_debug_level, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.s5p_mfc_run_dec_frame, i32 noundef 1822) #8
  br label %44

44:                                               ; preds = %42, %39
  store i32 106, ptr %3, align 4
  br label %45

45:                                               ; preds = %44, %19
  %46 = phi i32 [ 1, %44 ], [ 0, %19 ]
  tail call fastcc void @s5p_mfc_decode_one_frame_v6(ptr noundef %0, i32 noundef %46)
  br label %47

47:                                               ; preds = %45, %17, %14, %6
  %48 = phi i32 [ 0, %6 ], [ 0, %45 ], [ -11, %17 ], [ -11, %14 ]
  ret i32 %48
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_dec(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 4
  %3 = load i32, ptr @mfc_debug_level, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -4
  br label %21

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec, i32 noundef 1893) #8
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = icmp sgt i32 %11, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 10, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec, i32 noundef 1895, i32 noundef %19) #8
  br label %21

21:                                               ; preds = %16, %9, %5
  %22 = phi ptr [ %8, %5 ], [ %14, %16 ], [ %14, %9 ]
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @vb2_plane_cookie(ptr noundef %23, i32 noundef 0) #9
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 10, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  tail call fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr noundef %0, i32 noundef %25, i32 noundef 0, i32 noundef %28)
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %32, i32 0, i32 38
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr @mfc_debug_level, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_init_decode_v6, i32 noundef 1604) #8
  %39 = load i32, ptr @mfc_debug_level, align 4
  br label %40

40:                                               ; preds = %37, %21
  %41 = phi i32 [ %35, %21 ], [ %39, %37 ]
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.s5p_mfc_init_decode_v6, i32 noundef 1606, i32 noundef %45, i32 noundef 3) #8
  %47 = load i32, ptr @mfc_debug_level, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 71
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %53 = load ptr, ptr %50, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !47
  %55 = load ptr, ptr %50, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.s5p_mfc_init_decode_v6, i32 noundef 1610, i32 noundef %52, i32 noundef %54, i32 noundef %56) #8
  br label %58

58:                                               ; preds = %49, %43, %40
  %59 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 43
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 42
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 32
  %66 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !13
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ 8, %62 ], [ 0, %58 ]
  %69 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %32, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 111
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %32, i32 0, i32 39
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %78 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 31
  %79 = load ptr, ptr %78, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %68) #9, !srcloc !13
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ 0, %77 ], [ %68, %73 ]
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, ptr @mfc_debug_level, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 41
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_init_decode_v6, i32 noundef 1628, i32 noundef %90) #8
  br label %92

92:                                               ; preds = %88, %85
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 41
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %94, 1
  %96 = or i32 %95, %81
  br label %97

97:                                               ; preds = %92, %80
  %98 = phi i32 [ %96, %92 ], [ %81, %80 ]
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 842091862
  %103 = zext i1 %102 to i32
  %104 = or i32 %98, %103
  %105 = load ptr, ptr %69, align 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %106, 111
  br i1 %107, label %112, label %108

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %32, i32 0, i32 39
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %108, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %113 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 54
  %114 = load ptr, ptr %113, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %104) #9, !srcloc !13
  br label %118

115:                                              ; preds = %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %116 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 31
  %117 = load ptr, ptr %116, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %104) #9, !srcloc !13
  br label %118

118:                                              ; preds = %115, %112
  %119 = load ptr, ptr %99, align 4
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 825380174
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %122 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 13
  %123 = load ptr, ptr %122, align 4
  br i1 %121, label %124, label %125

124:                                              ; preds = %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 1) #9, !srcloc !13
  br label %126

125:                                              ; preds = %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 0) #9, !srcloc !13
  br label %126

126:                                              ; preds = %125, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %127 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 45
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 35
  %131 = load ptr, ptr %130, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %132 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %34, i32 0, i32 9
  %135 = load ptr, ptr %134, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #9, !srcloc !13
  %136 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %32, i32 0, i32 37
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %126
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = tail call i32 %140(ptr noundef %32, i32 noundef 3, ptr noundef null) #9
  br label %144

144:                                              ; preds = %142, %139, %126
  %145 = load i32, ptr @mfc_debug_level, align 4
  %146 = icmp sgt i32 %145, 4
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_init_decode_v6, i32 noundef 1654) #8
  br label %149

149:                                              ; preds = %147, %144
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 30
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1929) #8
  br label %204

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %8, i32 0, i32 27
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %12, i32 0, i32 38
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @mfc_debug_level, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %7
  %22 = inttoptr i32 %16 to ptr
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 525, ptr noundef %22, i32 noundef %18) #8
  %24 = load i32, ptr @mfc_debug_level, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 526, i32 noundef %28) #8
  %30 = load i32, ptr @mfc_debug_level, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 42
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 527, i32 noundef %34) #8
  br label %36

36:                                               ; preds = %32, %26, %21, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 52
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 58
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %45 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 59
  %48 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %49 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 66
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %16) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 67
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !13
  %55 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %12, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, 127
  br i1 %58, label %59, label %67

59:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 55
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %64 = load i32, ptr %60, align 4
  %65 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 56
  %66 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !13
  br label %67

67:                                               ; preds = %59, %36
  %68 = load i32, ptr %51, align 4
  %69 = add i32 %68, %16
  %70 = sub i32 %18, %68
  %71 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %82 [
    i32 0, label %73
    i32 -1, label %73
    i32 17, label %73
  ]

73:                                               ; preds = %67, %67, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !62
  tail call void @arm_heavy_mb() #9
  %74 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 61
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !63
  tail call void @arm_heavy_mb() #9
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 48
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 53
  %81 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #9, !srcloc !13
  br label %82

82:                                               ; preds = %73, %67
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr @mfc_debug_level, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, ptr %45, align 4
  %89 = load i32, ptr %41, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 557, i32 noundef %89, i32 noundef %88, i32 noundef %84) #8
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, ptr %37, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 62
  %96 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 63
  br label %97

97:                                               ; preds = %117, %94
  %98 = phi i32 [ 0, %94 ], [ %122, %117 ]
  %99 = load i32, ptr @mfc_debug_level, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 34, i32 %98, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 562, i32 noundef %98, i32 noundef %103) #8
  br label %105

105:                                              ; preds = %101, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %106 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 34, i32 %98, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %95, align 4
  %109 = shl i32 %98, 2
  %110 = getelementptr i8, ptr %108, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #9, !srcloc !13
  %111 = load i32, ptr @mfc_debug_level, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.anon.101, ptr %106, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 566, i32 noundef %98, i32 noundef %115) #8
  br label %117

117:                                              ; preds = %113, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !65
  tail call void @arm_heavy_mb() #9
  %118 = getelementptr inbounds %struct.anon.101, ptr %106, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %96, align 4
  %121 = getelementptr i8, ptr %120, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #9, !srcloc !13
  %122 = add nuw i32 %98, 1
  %123 = load i32, ptr %37, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %97, label %125

125:                                              ; preds = %117, %91
  %126 = load i32, ptr %71, align 4
  switch i32 %126, label %156 [
    i32 0, label %127
    i32 1, label %127
    i32 17, label %127
  ]

127:                                              ; preds = %125, %125, %125
  %128 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 48
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 65
  br label %133

133:                                              ; preds = %145, %131
  %134 = phi i32 [ 0, %131 ], [ %151, %145 ]
  %135 = phi i32 [ %69, %131 ], [ %149, %145 ]
  %136 = phi i32 [ %70, %131 ], [ %150, %145 ]
  %137 = add i32 %135, 15
  %138 = and i32 %137, -16
  %139 = sub i32 %135, %138
  %140 = add i32 %139, %136
  %141 = load i32, ptr @mfc_debug_level, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 581, i32 noundef %138, i32 noundef %140) #8
  br label %145

145:                                              ; preds = %143, %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %146 = load ptr, ptr %132, align 4
  %147 = shl i32 %134, 2
  %148 = getelementptr i8, ptr %146, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %138) #9, !srcloc !13
  %149 = add i32 %138, %84
  %150 = sub i32 %140, %84
  %151 = add nuw i32 %134, 1
  %152 = load i32, ptr %128, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %133, label %154

154:                                              ; preds = %145
  %155 = load i32, ptr %71, align 4
  br label %156

156:                                              ; preds = %154, %125
  %157 = phi i32 [ %126, %125 ], [ %155, %154 ]
  %158 = phi i32 [ %70, %125 ], [ %150, %154 ]
  %159 = phi i32 [ %69, %125 ], [ %149, %154 ]
  %160 = icmp eq i32 %157, 18
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %162 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 148
  %163 = load ptr, ptr %162, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %159) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %164 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 149
  %165 = load ptr, ptr %164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 20480) #9, !srcloc !13
  %166 = add i32 %159, 20480
  %167 = add i32 %158, -20480
  br label %168

168:                                              ; preds = %161, %156, %127
  %169 = phi i32 [ %167, %161 ], [ %158, %156 ], [ %70, %127 ]
  %170 = phi i32 [ %166, %161 ], [ %159, %156 ], [ %69, %127 ]
  %171 = load i32, ptr @mfc_debug_level, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, ptr %37, align 4
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 596, i32 noundef %170, i32 noundef %169, i32 noundef %174) #8
  br label %176

176:                                              ; preds = %173, %168
  %177 = icmp slt i32 %169, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  %179 = load i32, ptr @mfc_debug_level, align 4
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %201

181:                                              ; preds = %178
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 598) #8
  br label %201

183:                                              ; preds = %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !69
  tail call void @arm_heavy_mb() #9
  %184 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %14, i32 0, i32 9
  %187 = load ptr, ptr %186, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #9, !srcloc !13
  %188 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %12, i32 0, i32 37
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %183
  %192 = load ptr, ptr %189, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = tail call i32 %192(ptr noundef %12, i32 noundef 4, ptr noundef null) #9
  br label %196

196:                                              ; preds = %194, %191, %183
  %197 = load i32, ptr @mfc_debug_level, align 4
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v6, i32 noundef 606) #8
  br label %204

201:                                              ; preds = %181, %178
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1936) #8
  %203 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 109, ptr %203, align 4
  br label %204

204:                                              ; preds = %201, %199, %196, %5
  %205 = phi i32 [ -11, %5 ], [ -12, %201 ], [ 0, %199 ], [ 0, %196 ]
  ret i32 %205
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_flush(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  store i32 %9, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !70
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !13
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 37
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 %19(ptr noundef %3, i32 noundef 10, ptr noundef null) #9
  br label %23

23:                                               ; preds = %21, %18, %5, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_enc(ptr noundef %0) unnamed_addr #7 {
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
  %14 = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 10, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %18, i32 0, i32 38
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %21 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %20, i32 0, i32 184
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %8) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %20, i32 0, i32 185
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %17) #9, !srcloc !13
  %25 = load i32, ptr @mfc_debug_level, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_set_enc_stream_buffer_v6, i32 noundef 621, i32 noundef %8, i32 noundef %17) #8
  br label %29

29:                                               ; preds = %27, %16
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %33, i32 0, i32 38
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %1192 [
    i32 20, label %38
    i32 22, label %507
    i32 23, label %630
    i32 24, label %730
    i32 26, label %862
  ]

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25
  %40 = load i32, ptr @mfc_debug_level, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_h264, i32 noundef 923) #8
  br label %44

44:                                               ; preds = %42, %38
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #9
  %45 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 189
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !71
  %48 = and i32 %47, -196609
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 3
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #9, !srcloc !13
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 24
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 8
  %59 = and i32 %58, 65280
  %60 = load i32, ptr %39, align 4
  %61 = and i32 %60, 63
  %62 = or i32 %59, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %63 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 156
  %64 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !13
  %65 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 160
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !74
  %68 = and i32 %67, -257
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 8
  %72 = and i32 %71, 256
  %73 = or i32 %72, %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %73) #9, !srcloc !13
  %75 = and i32 %73, -64
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 18
  %77 = load i8, ptr %76, align 2
  %78 = and i8 %77, 63
  %79 = zext i8 %78 to i32
  %80 = or i32 %75, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %81 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %80) #9, !srcloc !13
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 20
  %83 = load i8, ptr %82, align 4
  %84 = and i8 %83, 63
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 19
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, 63
  %90 = zext i8 %89 to i32
  %91 = or i32 %86, %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %92 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 161
  %93 = load ptr, ptr %92, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %94 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 159
  %95 = load ptr, ptr %94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #9, !srcloc !13
  %96 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %44
  %100 = load i32, ptr %69, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 22
  %104 = load i8, ptr %103, align 2
  %105 = and i8 %104, 63
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 21
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, 63
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or i32 %112, %107
  %114 = load i8, ptr %76, align 2
  %115 = and i8 %114, 63
  %116 = zext i8 %115 to i32
  %117 = or i32 %113, %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %118 = load ptr, ptr %94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #9, !srcloc !13
  %119 = load i32, ptr %96, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %102, %44
  %122 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = shl i32 %123, 16
  %131 = and i32 %127, 65535
  %132 = or i32 %131, %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %133 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 194
  %134 = load ptr, ptr %133, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #9, !srcloc !13
  br label %135

135:                                              ; preds = %129, %125, %121, %102, %99
  %136 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %140 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 25
  %141 = load i16, ptr %140, align 4
  %142 = zext i16 %141 to i32
  %143 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 157
  %144 = load ptr, ptr %143, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #9, !srcloc !13
  %145 = load i32, ptr %96, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %148 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 18
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 158
  %151 = load ptr, ptr %150, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #9, !srcloc !13
  br label %152

152:                                              ; preds = %147, %139, %135
  %153 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 26
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 %154, 3
  %156 = and i32 %155, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %157 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 219
  %158 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #9, !srcloc !13
  %159 = load i32, ptr %153, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %162 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %163 = load i32, ptr %162, align 4
  %164 = ashr i32 %163, 1
  %165 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 151
  %166 = load ptr, ptr %165, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !85
  tail call void @arm_heavy_mb() #9
  %167 = load i32, ptr %162, align 4
  %168 = ashr i32 %167, 1
  %169 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 153
  %170 = load ptr, ptr %169, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #9, !srcloc !13
  br label %171

171:                                              ; preds = %161, %152
  %172 = load ptr, ptr %157, align 4
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !86
  %174 = and i32 %173, -7
  %175 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = shl i32 %176, 1
  %178 = and i32 %177, 6
  %179 = or i32 %178, %174
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %180 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %179) #9, !srcloc !13
  %181 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 2
  %182 = load i8, ptr %181, align 4
  %183 = sext i8 %182 to i32
  %184 = icmp slt i8 %182, 0
  %185 = sub nsw i32 256, %183
  %186 = or i32 %185, 16
  %187 = and i32 %183, 15
  %188 = select i1 %184, i32 %186, i32 %187
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  %189 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 221
  %190 = load ptr, ptr %189, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #9, !srcloc !13
  %191 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 3
  %192 = load i8, ptr %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp slt i8 %192, 0
  %195 = sub nsw i32 256, %193
  %196 = or i32 %195, 16
  %197 = and i32 %193, 15
  %198 = select i1 %194, i32 %196, i32 %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %199 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 222
  %200 = load ptr, ptr %199, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #9, !srcloc !13
  %201 = load ptr, ptr %157, align 4
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !90
  %203 = and i32 %202, -2
  %204 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 4
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 1
  %207 = or i32 %206, %203
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %208 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %207) #9, !srcloc !13
  %209 = load ptr, ptr %157, align 4
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !92
  %211 = and i32 %210, -129
  %212 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 6
  %213 = load i8, ptr %212, align 1
  %214 = xor i8 %213, -1
  %215 = shl i8 %214, 7
  %216 = zext i8 %215 to i32
  %217 = or i32 %211, %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %218 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %217) #9, !srcloc !13
  %219 = load ptr, ptr %157, align 4
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !94
  %221 = and i32 %220, -12289
  %222 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 7
  %223 = load i32, ptr %222, align 4
  %224 = shl i32 %223, 12
  %225 = and i32 %224, 12288
  %226 = or i32 %225, %221
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %227 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %226) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %228 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 164
  %229 = load ptr, ptr %228, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 0) #9, !srcloc !13
  %230 = load i32, ptr %69, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %252, label %232

232:                                              ; preds = %171
  %233 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 8
  %234 = load i32, ptr %233, align 4
  %235 = shl i32 %234, 3
  %236 = and i32 %235, 8
  %237 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 9
  %238 = load i32, ptr %237, align 4
  %239 = shl i32 %238, 2
  %240 = and i32 %239, 4
  %241 = or i32 %240, %236
  %242 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 10
  %243 = load i32, ptr %242, align 4
  %244 = shl i32 %243, 1
  %245 = and i32 %244, 2
  %246 = or i32 %241, %245
  %247 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 11
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 1
  %250 = or i32 %246, %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %251 = load ptr, ptr %228, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %250) #9, !srcloc !13
  br label %252

252:                                              ; preds = %232, %171
  %253 = phi i32 [ %250, %232 ], [ %226, %171 ]
  %254 = load ptr, ptr %157, align 4
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !98
  %256 = and i32 %253, -33
  %257 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 12
  %258 = load i32, ptr %257, align 4
  %259 = shl i32 %258, 5
  %260 = and i32 %259, 32
  %261 = or i32 %260, %256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %262 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %261) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %263 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 217
  %264 = load ptr, ptr %263, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %265 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 218
  %266 = load ptr, ptr %265, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 0) #9, !srcloc !13
  %267 = load i32, ptr %257, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %286, label %269

269:                                              ; preds = %252
  %270 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 13
  %271 = load i8, ptr %270, align 4
  %272 = zext i8 %271 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %273 = load ptr, ptr %263, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %272) #9, !srcloc !13
  %274 = load i8, ptr %270, align 4
  %275 = icmp eq i8 %274, -1
  br i1 %275, label %276, label %286

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 14
  %278 = load i16, ptr %277, align 2
  %279 = zext i16 %278 to i32
  %280 = shl nuw i32 %279, 16
  %281 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 15
  %282 = load i16, ptr %281, align 4
  %283 = zext i16 %282 to i32
  %284 = or i32 %280, %283
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %285 = load ptr, ptr %265, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 %284) #9, !srcloc !13
  br label %286

286:                                              ; preds = %276, %269, %252
  %287 = phi i32 [ %284, %276 ], [ %272, %269 ], [ %261, %252 ]
  %288 = load ptr, ptr %157, align 4
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !104
  %290 = and i32 %287, -17
  %291 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 16
  %292 = load i32, ptr %291, align 4
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 16
  %295 = or i32 %294, %290
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %296 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %295) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %297 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 223
  %298 = load ptr, ptr %297, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 0) #9, !srcloc !13
  %299 = load i32, ptr %291, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %286
  %302 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 17
  %303 = load i16, ptr %302, align 4
  %304 = zext i16 %303 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %305 = load ptr, ptr %297, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %304) #9, !srcloc !13
  br label %306

306:                                              ; preds = %301, %286
  %307 = phi i32 [ %304, %301 ], [ %295, %286 ]
  %308 = load ptr, ptr %157, align 4
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !108
  %310 = and i32 %307, -1537
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %311 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %310) #9, !srcloc !13
  %312 = load ptr, ptr %157, align 4
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !110
  %314 = and i32 %307, -17921
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %315 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %314) #9, !srcloc !13
  %316 = load ptr, ptr %157, align 4
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !112
  %318 = and i32 %307, -17985
  %319 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 40
  %320 = load i8, ptr %319, align 4
  %321 = shl i8 %320, 6
  %322 = and i8 %321, 64
  %323 = zext i8 %322 to i32
  %324 = or i32 %318, %323
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %325 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 %324) #9, !srcloc !13
  %326 = load ptr, ptr %157, align 4
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !114
  %328 = and i32 %324, -18177
  %329 = load i32, ptr %291, align 4
  %330 = shl i32 %329, 8
  %331 = and i32 %330, 256
  %332 = or i32 %331, %328
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %333 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %333, i32 %332) #9, !srcloc !13
  %334 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 27
  %335 = load i8, ptr %334, align 4
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %407, label %337

337:                                              ; preds = %306
  %338 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 29
  %339 = load i8, ptr %338, align 2
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %407, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 28
  %343 = load i8, ptr %342, align 1
  %344 = shl i8 %343, 3
  %345 = and i8 %344, 8
  %346 = and i8 %339, 7
  %347 = or i8 %345, %346
  %348 = zext i8 %347 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %349 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 231
  %350 = load ptr, ptr %349, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 %348) #9, !srcloc !13
  %351 = load i8, ptr %338, align 2
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %407, label %353

353:                                              ; preds = %341
  %354 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 232
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %355 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 0
  %356 = load i8, ptr %355, align 1
  %357 = zext i8 %356 to i32
  %358 = load ptr, ptr %354, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %357) #9, !srcloc !13
  %359 = load i8, ptr %338, align 2
  %360 = icmp ugt i8 %359, 1
  br i1 %360, label %361, label %407

361:                                              ; preds = %353
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %362 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 1
  %363 = load i8, ptr %362, align 1
  %364 = zext i8 %363 to i32
  %365 = load ptr, ptr %354, align 4
  %366 = getelementptr i8, ptr %365, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %364) #9, !srcloc !13
  %367 = load i8, ptr %338, align 2
  %368 = icmp ugt i8 %367, 2
  br i1 %368, label %369, label %407

369:                                              ; preds = %361
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %370 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 2
  %371 = load i8, ptr %370, align 1
  %372 = zext i8 %371 to i32
  %373 = load ptr, ptr %354, align 4
  %374 = getelementptr i8, ptr %373, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %372) #9, !srcloc !13
  %375 = load i8, ptr %338, align 2
  %376 = icmp ugt i8 %375, 3
  br i1 %376, label %377, label %407

377:                                              ; preds = %369
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %378 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 3
  %379 = load i8, ptr %378, align 1
  %380 = zext i8 %379 to i32
  %381 = load ptr, ptr %354, align 4
  %382 = getelementptr i8, ptr %381, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %380) #9, !srcloc !13
  %383 = load i8, ptr %338, align 2
  %384 = icmp ugt i8 %383, 4
  br i1 %384, label %385, label %407

385:                                              ; preds = %377
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %386 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 4
  %387 = load i8, ptr %386, align 1
  %388 = zext i8 %387 to i32
  %389 = load ptr, ptr %354, align 4
  %390 = getelementptr i8, ptr %389, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %388) #9, !srcloc !13
  %391 = load i8, ptr %338, align 2
  %392 = icmp ugt i8 %391, 5
  br i1 %392, label %393, label %407

393:                                              ; preds = %385
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %394 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 5
  %395 = load i8, ptr %394, align 1
  %396 = zext i8 %395 to i32
  %397 = load ptr, ptr %354, align 4
  %398 = getelementptr i8, ptr %397, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %396) #9, !srcloc !13
  %399 = load i8, ptr %338, align 2
  %400 = icmp ugt i8 %399, 6
  br i1 %400, label %401, label %407

401:                                              ; preds = %393
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %402 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 30, i32 6
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = load ptr, ptr %354, align 4
  %406 = getelementptr i8, ptr %405, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 %404) #9, !srcloc !13
  br label %407

407:                                              ; preds = %401, %393, %385, %377, %369, %361, %353, %341, %337, %306
  %408 = phi i32 [ 0, %337 ], [ 0, %306 ], [ %348, %341 ], [ %348, %401 ], [ %348, %393 ], [ %348, %385 ], [ %348, %377 ], [ %348, %369 ], [ %348, %361 ], [ %348, %353 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %409 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 231
  %410 = load ptr, ptr %409, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %410, i32 %408) #9, !srcloc !13
  %411 = load ptr, ptr %157, align 4
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !119
  %413 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 31
  %414 = load i8, ptr %413, align 2
  %415 = and i8 %414, 1
  %416 = zext i8 %415 to i32
  %417 = shl nuw nsw i32 %416, 25
  %418 = or i32 %417, %408
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %419 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %418) #9, !srcloc !13
  %420 = load i8, ptr %413, align 2
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %434, label %422

422:                                              ; preds = %407
  %423 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 32
  %424 = load i8, ptr %423, align 1
  %425 = shl i8 %424, 2
  %426 = and i8 %425, 4
  %427 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 33
  %428 = load i8, ptr %427, align 4
  %429 = and i8 %428, 3
  %430 = or i8 %426, %429
  %431 = zext i8 %430 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %432 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 233
  %433 = load ptr, ptr %432, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 %431) #9, !srcloc !13
  br label %434

434:                                              ; preds = %422, %407
  %435 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 34
  %436 = load i8, ptr %435, align 1
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %499, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 35
  %440 = load i8, ptr %439, align 2
  switch i8 %440, label %484 [
    i8 0, label %441
    i8 1, label %463
    i8 4, label %468
    i8 5, label %468
  ]

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 36
  %443 = load i8, ptr %442, align 1
  %444 = icmp ugt i8 %443, 4
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  store i8 4, ptr %442, align 1
  br label %448

446:                                              ; preds = %441
  %447 = icmp eq i8 %443, 0
  br i1 %447, label %488, label %448

448:                                              ; preds = %446, %445
  %449 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 228
  br label %450

450:                                              ; preds = %450, %448
  %451 = phi i32 [ 0, %448 ], [ %458, %450 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %452 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 39, i32 %451
  %453 = load i32, ptr %452, align 4
  %454 = add i32 %453, -1
  %455 = load ptr, ptr %449, align 4
  %456 = shl i32 %451, 2
  %457 = getelementptr i8, ptr %455, i32 %456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %454) #9, !srcloc !13
  %458 = add nuw nsw i32 %451, 1
  %459 = load i8, ptr %442, align 1
  %460 = and i8 %459, 15
  %461 = zext i8 %460 to i32
  %462 = icmp ult i32 %458, %461
  br i1 %462, label %450, label %488

463:                                              ; preds = %438
  %464 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 36
  %465 = load i8, ptr %464, align 1
  %466 = icmp ugt i8 %465, 4
  br i1 %466, label %467, label %488

467:                                              ; preds = %463
  store i8 4, ptr %464, align 1
  br label %488

468:                                              ; preds = %438, %438
  %469 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 36
  %470 = load i8, ptr %469, align 1
  %471 = icmp ugt i8 %470, 2
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  store i8 2, ptr %469, align 1
  br label %473

473:                                              ; preds = %472, %468
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %474 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 37
  %475 = load i8, ptr %474, align 4
  %476 = and i8 %475, 1
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 226
  %479 = load ptr, ptr %478, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 %477) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %480 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 38
  %481 = load i32, ptr %480, align 4
  %482 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 227
  %483 = load ptr, ptr %482, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %483, i32 %481) #9, !srcloc !13
  br label %488

484:                                              ; preds = %438
  %485 = zext i8 %440 to i32
  %486 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_h264, i32 noundef 1176, i32 noundef %485) #8
  store i8 0, ptr %439, align 2
  %487 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 36
  store i8 1, ptr %487, align 1
  br label %488

488:                                              ; preds = %484, %473, %467, %463, %450, %446
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %489 = load i8, ptr %439, align 2
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 224
  %492 = load ptr, ptr %491, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %492, i32 %490) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %493 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 36
  %494 = load i8, ptr %493, align 1
  %495 = zext i8 %494 to i32
  %496 = add nsw i32 %495, -1
  %497 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 225
  %498 = load ptr, ptr %497, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 %496) #9, !srcloc !13
  br label %502

499:                                              ; preds = %434
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %500 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 225
  %501 = load ptr, ptr %500, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %501, i32 0) #9, !srcloc !13
  br label %502

502:                                              ; preds = %499, %488
  %503 = load i32, ptr @mfc_debug_level, align 4
  %504 = icmp sgt i32 %503, 4
  br i1 %504, label %505, label %1194

505:                                              ; preds = %502
  %506 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_h264, i32 noundef 1190) #8
  br label %1194

507:                                              ; preds = %29
  %508 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1
  %509 = load i32, ptr @mfc_debug_level, align 4
  %510 = icmp sgt i32 %509, 4
  br i1 %510, label %511, label %513

511:                                              ; preds = %507
  %512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_mpeg4, i32 noundef 1203) #8
  br label %513

513:                                              ; preds = %511, %507
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #9
  %514 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 189
  %515 = load ptr, ptr %514, align 4
  %516 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %515) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !128
  %517 = and i32 %516, -196609
  %518 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %519 = load i8, ptr %518, align 4
  %520 = and i8 %519, 3
  %521 = zext i8 %520 to i32
  %522 = shl nuw nsw i32 %521, 16
  %523 = or i32 %522, %517
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %524 = load ptr, ptr %514, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %524, i32 %523) #9, !srcloc !13
  %525 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 10
  %526 = load i32, ptr %525, align 4
  %527 = shl i32 %526, 8
  %528 = and i32 %527, 65280
  %529 = load i32, ptr %508, align 4
  %530 = and i32 %529, 63
  %531 = or i32 %528, %530
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %532 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 156
  %533 = load ptr, ptr %532, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %533, i32 %531) #9, !srcloc !13
  %534 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 160
  %535 = load ptr, ptr %534, align 4
  %536 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %535) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !131
  %537 = and i32 %536, -257
  %538 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %539 = load i32, ptr %538, align 4
  %540 = shl i32 %539, 8
  %541 = and i32 %540, 256
  %542 = or i32 %541, %537
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %543 = load ptr, ptr %534, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %543, i32 %542) #9, !srcloc !13
  %544 = and i32 %542, -64
  %545 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 4
  %546 = load i8, ptr %545, align 4
  %547 = and i8 %546, 63
  %548 = zext i8 %547 to i32
  %549 = or i32 %544, %548
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %550 = load ptr, ptr %534, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %550, i32 %549) #9, !srcloc !13
  %551 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 6
  %552 = load i8, ptr %551, align 2
  %553 = and i8 %552, 63
  %554 = zext i8 %553 to i32
  %555 = shl nuw nsw i32 %554, 8
  %556 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 5
  %557 = load i8, ptr %556, align 1
  %558 = and i8 %557, 63
  %559 = zext i8 %558 to i32
  %560 = or i32 %555, %559
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %561 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 161
  %562 = load ptr, ptr %561, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %562, i32 %560) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %563 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 159
  %564 = load ptr, ptr %563, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %564, i32 0) #9, !srcloc !13
  %565 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %566 = load i32, ptr %565, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %590

568:                                              ; preds = %513
  %569 = load i32, ptr %538, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %604

571:                                              ; preds = %568
  %572 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 8
  %573 = load i8, ptr %572, align 4
  %574 = and i8 %573, 63
  %575 = zext i8 %574 to i32
  %576 = shl nuw nsw i32 %575, 16
  %577 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 7
  %578 = load i8, ptr %577, align 1
  %579 = and i8 %578, 63
  %580 = zext i8 %579 to i32
  %581 = shl nuw nsw i32 %580, 8
  %582 = or i32 %581, %576
  %583 = load i8, ptr %545, align 4
  %584 = and i8 %583, 63
  %585 = zext i8 %584 to i32
  %586 = or i32 %582, %585
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %587 = load ptr, ptr %563, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %587, i32 %586) #9, !srcloc !13
  %588 = load i32, ptr %565, align 4
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %604, label %590

590:                                              ; preds = %571, %513
  %591 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %592 = load i32, ptr %591, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %604, label %594

594:                                              ; preds = %590
  %595 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %596 = load i32, ptr %595, align 4
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %604, label %598

598:                                              ; preds = %594
  %599 = shl i32 %592, 16
  %600 = and i32 %596, 65535
  %601 = or i32 %600, %599
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %602 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 194
  %603 = load ptr, ptr %602, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %603, i32 %601) #9, !srcloc !13
  br label %604

604:                                              ; preds = %598, %594, %590, %571, %568
  %605 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %606 = load i32, ptr %605, align 4
  %607 = icmp eq i32 %606, 2
  br i1 %607, label %608, label %621

608:                                              ; preds = %604
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %609 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 17
  %610 = load i16, ptr %609, align 2
  %611 = zext i16 %610 to i32
  %612 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 157
  %613 = load ptr, ptr %612, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %613, i32 %611) #9, !srcloc !13
  %614 = load i32, ptr %565, align 4
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %621, label %616

616:                                              ; preds = %608
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %617 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 18
  %618 = load i32, ptr %617, align 4
  %619 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 158
  %620 = load ptr, ptr %619, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %618) #9, !srcloc !13
  br label %621

621:                                              ; preds = %616, %608, %604
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %622 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 215
  %623 = load ptr, ptr %622, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %623, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %624 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 216
  %625 = load ptr, ptr %624, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %625, i32 0) #9, !srcloc !13
  %626 = load i32, ptr @mfc_debug_level, align 4
  %627 = icmp sgt i32 %626, 4
  br i1 %627, label %628, label %1194

628:                                              ; preds = %621
  %629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_mpeg4, i32 noundef 1272) #8
  br label %1194

630:                                              ; preds = %29
  %631 = load i32, ptr @mfc_debug_level, align 4
  %632 = icmp sgt i32 %631, 4
  br i1 %632, label %633, label %635

633:                                              ; preds = %630
  %634 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_h263, i32 noundef 1285) #8
  br label %635

635:                                              ; preds = %633, %630
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %636 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 156
  %637 = load ptr, ptr %636, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %637, i32 16) #9, !srcloc !13
  %638 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 160
  %639 = load ptr, ptr %638, align 4
  %640 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %639) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !143
  %641 = and i32 %640, -257
  %642 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %643 = load i32, ptr %642, align 4
  %644 = shl i32 %643, 8
  %645 = and i32 %644, 256
  %646 = or i32 %645, %641
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %647 = load ptr, ptr %638, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %647, i32 %646) #9, !srcloc !13
  %648 = and i32 %646, -64
  %649 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 4
  %650 = load i8, ptr %649, align 4
  %651 = and i8 %650, 63
  %652 = zext i8 %651 to i32
  %653 = or i32 %648, %652
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %654 = load ptr, ptr %638, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %654, i32 %653) #9, !srcloc !13
  %655 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 6
  %656 = load i8, ptr %655, align 2
  %657 = and i8 %656, 63
  %658 = zext i8 %657 to i32
  %659 = shl nuw nsw i32 %658, 8
  %660 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 5
  %661 = load i8, ptr %660, align 1
  %662 = and i8 %661, 63
  %663 = zext i8 %662 to i32
  %664 = or i32 %659, %663
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %665 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 161
  %666 = load ptr, ptr %665, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %666, i32 %664) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %667 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 159
  %668 = load ptr, ptr %667, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %668, i32 0) #9, !srcloc !13
  %669 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %670 = load i32, ptr %669, align 4
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %694

672:                                              ; preds = %635
  %673 = load i32, ptr %642, align 4
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %708

675:                                              ; preds = %672
  %676 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 8
  %677 = load i8, ptr %676, align 4
  %678 = and i8 %677, 63
  %679 = zext i8 %678 to i32
  %680 = shl nuw nsw i32 %679, 16
  %681 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 7
  %682 = load i8, ptr %681, align 1
  %683 = and i8 %682, 63
  %684 = zext i8 %683 to i32
  %685 = shl nuw nsw i32 %684, 8
  %686 = or i32 %685, %680
  %687 = load i8, ptr %649, align 4
  %688 = and i8 %687, 63
  %689 = zext i8 %688 to i32
  %690 = or i32 %686, %689
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %691 = load ptr, ptr %667, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %691, i32 %690) #9, !srcloc !13
  %692 = load i32, ptr %669, align 4
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %708, label %694

694:                                              ; preds = %675, %635
  %695 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %696 = load i32, ptr %695, align 4
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %708, label %698

698:                                              ; preds = %694
  %699 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %700 = load i32, ptr %699, align 4
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %708, label %702

702:                                              ; preds = %698
  %703 = shl i32 %696, 16
  %704 = and i32 %700, 65535
  %705 = or i32 %704, %703
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %706 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 194
  %707 = load ptr, ptr %706, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %707, i32 %705) #9, !srcloc !13
  br label %708

708:                                              ; preds = %702, %698, %694, %675, %672
  %709 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %710 = load i32, ptr %709, align 4
  %711 = icmp eq i32 %710, 2
  br i1 %711, label %712, label %725

712:                                              ; preds = %708
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %713 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 17
  %714 = load i16, ptr %713, align 2
  %715 = zext i16 %714 to i32
  %716 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 157
  %717 = load ptr, ptr %716, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %717, i32 %715) #9, !srcloc !13
  %718 = load i32, ptr %669, align 4
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %725, label %720

720:                                              ; preds = %712
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %721 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 18
  %722 = load i32, ptr %721, align 4
  %723 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 158
  %724 = load ptr, ptr %723, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %724, i32 %722) #9, !srcloc !13
  br label %725

725:                                              ; preds = %720, %712, %708
  %726 = load i32, ptr @mfc_debug_level, align 4
  %727 = icmp sgt i32 %726, 4
  br i1 %727, label %728, label %1194

728:                                              ; preds = %725
  %729 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_h263, i32 noundef 1342) #8
  br label %1194

730:                                              ; preds = %29
  %731 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2
  %732 = load i32, ptr @mfc_debug_level, align 4
  %733 = icmp sgt i32 %732, 4
  br i1 %733, label %734, label %736

734:                                              ; preds = %730
  %735 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_vp8, i32 noundef 1356) #8
  br label %736

736:                                              ; preds = %734, %730
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #9
  %737 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 189
  %738 = load ptr, ptr %737, align 4
  %739 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %738) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !152
  %740 = and i32 %739, -196609
  %741 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %742 = load i8, ptr %741, align 4
  %743 = and i8 %742, 3
  %744 = zext i8 %743 to i32
  %745 = shl nuw nsw i32 %744, 16
  %746 = or i32 %745, %740
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %747 = load ptr, ptr %737, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %747, i32 %746) #9, !srcloc !13
  %748 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 13
  %749 = load i8, ptr %748, align 4
  %750 = and i8 %749, 3
  %751 = zext i8 %750 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %752 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 156
  %753 = load ptr, ptr %752, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %753, i32 %751) #9, !srcloc !13
  %754 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 160
  %755 = load ptr, ptr %754, align 4
  %756 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %755) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !155
  %757 = and i32 %756, -257
  %758 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %759 = load i32, ptr %758, align 4
  %760 = shl i32 %759, 8
  %761 = and i32 %760, 256
  %762 = or i32 %761, %757
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %763 = load ptr, ptr %754, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %763, i32 %762) #9, !srcloc !13
  %764 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %765 = load i32, ptr %764, align 4
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %781, label %767

767:                                              ; preds = %736
  %768 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %769 = load i32, ptr %768, align 4
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %781, label %771

771:                                              ; preds = %767
  %772 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %773 = load i32, ptr %772, align 4
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %781, label %775

775:                                              ; preds = %771
  %776 = shl i32 %769, 16
  %777 = and i32 %773, 65535
  %778 = or i32 %777, %776
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %779 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 194
  %780 = load ptr, ptr %779, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %780, i32 %778) #9, !srcloc !13
  br label %781

781:                                              ; preds = %775, %771, %767, %736
  %782 = phi i32 [ %778, %775 ], [ %762, %771 ], [ %762, %767 ], [ %762, %736 ]
  %783 = and i32 %782, -128
  %784 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 11
  %785 = load i8, ptr %784, align 2
  %786 = and i8 %785, 127
  %787 = zext i8 %786 to i32
  %788 = or i32 %783, %787
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %789 = load ptr, ptr %754, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %789, i32 %788) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %790 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 159
  %791 = load ptr, ptr %790, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %791, i32 0) #9, !srcloc !13
  %792 = load i32, ptr %764, align 4
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %808

794:                                              ; preds = %781
  %795 = load i32, ptr %758, align 4
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %808

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 12
  %799 = load i8, ptr %798, align 1
  %800 = and i8 %799, 127
  %801 = zext i8 %800 to i32
  %802 = shl nuw nsw i32 %801, 8
  %803 = load i8, ptr %784, align 2
  %804 = and i8 %803, 127
  %805 = zext i8 %804 to i32
  %806 = or i32 %802, %805
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %807 = load ptr, ptr %790, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %807, i32 %806) #9, !srcloc !13
  br label %808

808:                                              ; preds = %797, %794, %781
  %809 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 10
  %810 = load i8, ptr %809, align 1
  %811 = and i8 %810, 127
  %812 = zext i8 %811 to i32
  %813 = shl nuw nsw i32 %812, 8
  %814 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 9
  %815 = load i8, ptr %814, align 4
  %816 = and i8 %815, 127
  %817 = zext i8 %816 to i32
  %818 = or i32 %813, %817
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %819 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 161
  %820 = load ptr, ptr %819, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %820, i32 %818) #9, !srcloc !13
  %821 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %822 = load i32, ptr %821, align 4
  %823 = icmp eq i32 %822, 2
  br i1 %823, label %824, label %837

824:                                              ; preds = %808
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %825 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 17
  %826 = load i16, ptr %825, align 2
  %827 = zext i16 %826 to i32
  %828 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 157
  %829 = load ptr, ptr %828, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %829, i32 %827) #9, !srcloc !13
  %830 = load i32, ptr %764, align 4
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %837, label %832

832:                                              ; preds = %824
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %833 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 18
  %834 = load i32, ptr %833, align 4
  %835 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 158
  %836 = load ptr, ptr %835, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %836, i32 %834) #9, !srcloc !13
  br label %837

837:                                              ; preds = %832, %824, %808
  %838 = load i8, ptr %731, align 4
  %839 = and i8 %838, 1
  %840 = zext i8 %839 to i32
  %841 = shl nuw nsw i32 %840, 10
  %842 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 1
  %843 = load i32, ptr %842, align 4
  %844 = add i32 %843, -1
  %845 = icmp ult i32 %844, 3
  br i1 %845, label %846, label %849

846:                                              ; preds = %837
  %847 = getelementptr inbounds [3 x i32], ptr @switch.table.s5p_mfc_run_init_enc, i32 0, i32 %844
  %848 = load i32, ptr %847, align 4
  br label %849

849:                                              ; preds = %846, %837
  %850 = phi i32 [ 0, %837 ], [ %848, %846 ]
  %851 = or i32 %850, %841
  %852 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 2, i32 2
  %853 = load i32, ptr %852, align 4
  %854 = and i32 %853, 2
  %855 = or i32 %854, %851
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %856 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 240
  %857 = load ptr, ptr %856, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %857, i32 %855) #9, !srcloc !13
  %858 = load i32, ptr @mfc_debug_level, align 4
  %859 = icmp sgt i32 %858, 4
  br i1 %859, label %860, label %1194

860:                                              ; preds = %849
  %861 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_vp8, i32 noundef 1435) #8
  br label %1194

862:                                              ; preds = %29
  %863 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3
  %864 = load i32, ptr @mfc_debug_level, align 4
  %865 = icmp sgt i32 %864, 4
  br i1 %865, label %866, label %868

866:                                              ; preds = %862
  %867 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_hevc, i32 noundef 1449) #8
  br label %868

868:                                              ; preds = %866, %862
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #9
  %869 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 189
  %870 = load ptr, ptr %869, align 4
  %871 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %870) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !165
  %872 = and i32 %871, -196609
  %873 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %874 = load i8, ptr %873, align 4
  %875 = zext i8 %874 to i32
  %876 = shl nuw nsw i32 %875, 16
  %877 = or i32 %876, %872
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %878 = load ptr, ptr %869, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %878, i32 %877) #9, !srcloc !13
  %879 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %880 = load i32, ptr %879, align 4
  %881 = icmp eq i32 %880, 3840
  br i1 %881, label %882, label %889

882:                                              ; preds = %868
  %883 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %884 = load i32, ptr %883, align 4
  %885 = icmp eq i32 %884, 2160
  br i1 %885, label %886, label %889

886:                                              ; preds = %882
  %887 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 1
  store i32 51, ptr %887, align 4
  %888 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 3
  store i8 0, ptr %888, align 4
  br label %889

889:                                              ; preds = %886, %882, %868
  %890 = load i32, ptr %863, align 4
  %891 = and i32 %890, 3
  %892 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 1
  %893 = load i32, ptr %892, align 4
  %894 = shl i32 %893, 8
  %895 = or i32 %894, %891
  %896 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 3
  %897 = load i8, ptr %896, align 4
  %898 = zext i8 %897 to i32
  %899 = shl nuw nsw i32 %898, 16
  %900 = or i32 %899, %895
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %901 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 156
  %902 = load ptr, ptr %901, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %902, i32 %900) #9, !srcloc !13
  %903 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 20
  %904 = load i8, ptr %903, align 4
  switch i8 %904, label %905 [
    i8 0, label %911
    i8 1, label %913
    i8 2, label %916
  ]

905:                                              ; preds = %889
  %906 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 21
  %907 = load i8, ptr %906, align 1
  %908 = and i8 %907, 1
  %909 = zext i8 %908 to i32
  %910 = shl nuw nsw i32 %909, 8
  br label %919

911:                                              ; preds = %889
  %912 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 21
  store i8 1, ptr %912, align 1
  br label %919

913:                                              ; preds = %889
  %914 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 21
  store i8 0, ptr %914, align 1
  %915 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 22
  store i8 1, ptr %915, align 2
  br label %919

916:                                              ; preds = %889
  %917 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 21
  store i8 0, ptr %917, align 1
  %918 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 22
  store i8 0, ptr %918, align 2
  br label %919

919:                                              ; preds = %916, %913, %911, %905
  %920 = phi i32 [ %910, %905 ], [ 0, %916 ], [ 0, %913 ], [ 256, %911 ]
  %921 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 14
  %922 = load i8, ptr %921, align 1
  %923 = and i8 %922, 1
  %924 = zext i8 %923 to i32
  %925 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 15
  %926 = load i8, ptr %925, align 2
  %927 = zext i8 %926 to i32
  %928 = shl nuw nsw i32 %927, 2
  %929 = add nsw i32 %928, -4
  %930 = or i32 %929, %924
  %931 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 16
  %932 = load i8, ptr %931, align 1
  %933 = shl i8 %932, 3
  %934 = and i8 %933, 24
  %935 = zext i8 %934 to i32
  %936 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 26
  %937 = load i8, ptr %936, align 2
  %938 = shl i8 %937, 5
  %939 = and i8 %938, 32
  %940 = zext i8 %939 to i32
  %941 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 27
  %942 = load i8, ptr %941, align 1
  %943 = shl i8 %942, 6
  %944 = and i8 %943, 64
  %945 = zext i8 %944 to i32
  %946 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 28
  %947 = load i8, ptr %946, align 4
  %948 = shl i8 %947, 7
  %949 = zext i8 %948 to i32
  %950 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 21
  %951 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 22
  %952 = load i8, ptr %951, align 2
  %953 = and i8 %952, 1
  %954 = zext i8 %953 to i32
  %955 = shl nuw nsw i32 %954, 9
  %956 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 29
  %957 = load i8, ptr %956, align 1
  %958 = and i8 %957, 1
  %959 = zext i8 %958 to i32
  %960 = shl nuw nsw i32 %959, 10
  %961 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 30
  %962 = load i8, ptr %961, align 2
  %963 = and i8 %962, 1
  %964 = zext i8 %963 to i32
  %965 = shl nuw nsw i32 %964, 11
  %966 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 36
  %967 = load i8, ptr %966, align 1
  %968 = and i8 %967, 1
  %969 = zext i8 %968 to i32
  %970 = shl nuw nsw i32 %969, 13
  %971 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 37
  %972 = load i8, ptr %971, align 2
  %973 = and i8 %972, 1
  %974 = zext i8 %973 to i32
  %975 = shl nuw nsw i32 %974, 14
  %976 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 38
  %977 = load i8, ptr %976, align 1
  %978 = and i8 %977, 1
  %979 = zext i8 %978 to i32
  %980 = shl nuw nsw i32 %979, 15
  %981 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 39
  %982 = load i8, ptr %981, align 4
  %983 = and i8 %982, 1
  %984 = zext i8 %983 to i32
  %985 = shl nuw nsw i32 %984, 16
  %986 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 40
  %987 = load i8, ptr %986, align 1
  %988 = and i8 %987, 1
  %989 = zext i8 %988 to i32
  %990 = shl nuw nsw i32 %989, 17
  %991 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 41
  %992 = load i8, ptr %991, align 2
  %993 = and i8 %992, 7
  %994 = zext i8 %993 to i32
  %995 = shl nuw nsw i32 %994, 18
  %996 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 43
  %997 = load i8, ptr %996, align 4
  %998 = and i8 %997, 1
  %999 = zext i8 %998 to i32
  %1000 = shl nuw nsw i32 %999, 23
  %1001 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 45
  %1002 = load i8, ptr %1001, align 2
  %1003 = zext i8 %1002 to i32
  %1004 = shl i32 %1003, 26
  %1005 = or i32 %920, %935
  %1006 = or i32 %1005, %930
  %1007 = or i32 %1006, %940
  %1008 = or i32 %1007, %945
  %1009 = or i32 %1008, %949
  %1010 = or i32 %1009, %955
  %1011 = or i32 %1010, %960
  %1012 = or i32 %1011, %965
  %1013 = or i32 %1012, %970
  %1014 = or i32 %1013, %975
  %1015 = or i32 %1014, %980
  %1016 = or i32 %1015, %985
  %1017 = or i32 %1016, %990
  %1018 = or i32 %1017, %995
  %1019 = or i32 %1018, %1000
  %1020 = or i32 %1019, %1004
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %1021 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 251
  %1022 = load ptr, ptr %1021, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1022, i32 %1020) #9, !srcloc !13
  %1023 = load i8, ptr %931, align 1
  %1024 = icmp eq i8 %1023, 0
  br i1 %1024, label %1031, label %1025

1025:                                             ; preds = %919
  %1026 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 17
  %1027 = load i16, ptr %1026, align 4
  %1028 = zext i16 %1027 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %1029 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 252
  %1030 = load ptr, ptr %1029, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1030, i32 %1028) #9, !srcloc !13
  br label %1031

1031:                                             ; preds = %1025, %919
  %1032 = load i8, ptr %950, align 1
  %1033 = and i8 %1032, 1
  %1034 = icmp eq i8 %1033, 0
  br i1 %1034, label %1035, label %1044

1035:                                             ; preds = %1031
  %1036 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 18
  %1037 = load i32, ptr %1036, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %1038 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 253
  %1039 = load ptr, ptr %1038, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1039, i32 %1037) #9, !srcloc !13
  %1040 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 19
  %1041 = load i32, ptr %1040, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %1042 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 254
  %1043 = load ptr, ptr %1042, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1043, i32 %1041) #9, !srcloc !13
  br label %1044

1044:                                             ; preds = %1035, %1031
  %1045 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 32
  %1046 = load i8, ptr %1045, align 4
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1129, label %1048

1048:                                             ; preds = %1044
  %1049 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 31
  %1050 = load i32, ptr %1049, align 4
  %1051 = shl i32 %1050, 3
  %1052 = and i32 %1051, 8
  %1053 = and i8 %1046, 7
  %1054 = zext i8 %1053 to i32
  %1055 = or i32 %1052, %1054
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %1056 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 248
  %1057 = load ptr, ptr %1056, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1057, i32 %1055) #9, !srcloc !13
  %1058 = load i8, ptr %961, align 2
  %1059 = icmp eq i8 %1058, 0
  br i1 %1059, label %1096, label %1060

1060:                                             ; preds = %1048
  %1061 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 249
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1062 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 0
  %1063 = load i8, ptr %1062, align 1
  %1064 = zext i8 %1063 to i32
  %1065 = load ptr, ptr %1061, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1065, i32 %1064) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1066 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 1
  %1067 = load i8, ptr %1066, align 1
  %1068 = zext i8 %1067 to i32
  %1069 = load ptr, ptr %1061, align 4
  %1070 = getelementptr i8, ptr %1069, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1070, i32 %1068) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1071 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 2
  %1072 = load i8, ptr %1071, align 1
  %1073 = zext i8 %1072 to i32
  %1074 = load ptr, ptr %1061, align 4
  %1075 = getelementptr i8, ptr %1074, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1075, i32 %1073) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1076 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 3
  %1077 = load i8, ptr %1076, align 1
  %1078 = zext i8 %1077 to i32
  %1079 = load ptr, ptr %1061, align 4
  %1080 = getelementptr i8, ptr %1079, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1080, i32 %1078) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1081 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 4
  %1082 = load i8, ptr %1081, align 1
  %1083 = zext i8 %1082 to i32
  %1084 = load ptr, ptr %1061, align 4
  %1085 = getelementptr i8, ptr %1084, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1085, i32 %1083) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1086 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 5
  %1087 = load i8, ptr %1086, align 1
  %1088 = zext i8 %1087 to i32
  %1089 = load ptr, ptr %1061, align 4
  %1090 = getelementptr i8, ptr %1089, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1090, i32 %1088) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %1091 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 33, i32 6
  %1092 = load i8, ptr %1091, align 1
  %1093 = zext i8 %1092 to i32
  %1094 = load ptr, ptr %1061, align 4
  %1095 = getelementptr i8, ptr %1094, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1095, i32 %1093) #9, !srcloc !13
  br label %1096

1096:                                             ; preds = %1060, %1048
  %1097 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %1098 = load i32, ptr %1097, align 4
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1129, label %1100

1100:                                             ; preds = %1096
  %1101 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 250
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1102 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 0
  %1103 = load i32, ptr %1102, align 4
  %1104 = load ptr, ptr %1101, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1104, i32 %1103) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1105 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 1
  %1106 = load i32, ptr %1105, align 4
  %1107 = load ptr, ptr %1101, align 4
  %1108 = getelementptr i8, ptr %1107, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1108, i32 %1106) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1109 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 2
  %1110 = load i32, ptr %1109, align 4
  %1111 = load ptr, ptr %1101, align 4
  %1112 = getelementptr i8, ptr %1111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1112, i32 %1110) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1113 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 3
  %1114 = load i32, ptr %1113, align 4
  %1115 = load ptr, ptr %1101, align 4
  %1116 = getelementptr i8, ptr %1115, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1116, i32 %1114) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1117 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 4
  %1118 = load i32, ptr %1117, align 4
  %1119 = load ptr, ptr %1101, align 4
  %1120 = getelementptr i8, ptr %1119, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1120, i32 %1118) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1121 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 5
  %1122 = load i32, ptr %1121, align 4
  %1123 = load ptr, ptr %1101, align 4
  %1124 = getelementptr i8, ptr %1123, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1124, i32 %1122) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %1125 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 34, i32 6
  %1126 = load i32, ptr %1125, align 4
  %1127 = load ptr, ptr %1101, align 4
  %1128 = getelementptr i8, ptr %1127, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1128, i32 %1126) #9, !srcloc !13
  br label %1129

1129:                                             ; preds = %1100, %1096, %1044
  %1130 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 160
  %1131 = load ptr, ptr %1130, align 4
  %1132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1131) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !175
  %1133 = and i32 %1132, -257
  %1134 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %1135 = load i32, ptr %1134, align 4
  %1136 = shl i32 %1135, 8
  %1137 = or i32 %1136, %1133
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %1138 = load ptr, ptr %1130, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1138, i32 %1137) #9, !srcloc !13
  %1139 = and i32 %1137, -256
  %1140 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 11
  %1141 = load i8, ptr %1140, align 2
  %1142 = zext i8 %1141 to i32
  %1143 = or i32 %1139, %1142
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %1144 = load ptr, ptr %1130, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1144, i32 %1143) #9, !srcloc !13
  %1145 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %1146 = load i32, ptr %1145, align 4
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1155, label %1148

1148:                                             ; preds = %1129
  %1149 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 4
  %1150 = load i32, ptr %1149, align 4
  %1151 = shl i32 %1150, 16
  %1152 = or i32 %1151, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !178
  tail call void @arm_heavy_mb() #9
  %1153 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 194
  %1154 = load ptr, ptr %1153, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1154, i32 %1152) #9, !srcloc !13
  br label %1155

1155:                                             ; preds = %1148, %1129
  %1156 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 6
  %1157 = load i8, ptr %1156, align 1
  %1158 = zext i8 %1157 to i32
  %1159 = shl nuw nsw i32 %1158, 8
  %1160 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 5
  %1161 = load i8, ptr %1160, align 4
  %1162 = zext i8 %1161 to i32
  %1163 = or i32 %1159, %1162
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %1164 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 161
  %1165 = load ptr, ptr %1164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1165, i32 %1163) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %1166 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 159
  %1167 = load ptr, ptr %1166, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1167, i32 0) #9, !srcloc !13
  %1168 = load i32, ptr %1145, align 4
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1187

1170:                                             ; preds = %1155
  %1171 = load i32, ptr %1134, align 4
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1187

1173:                                             ; preds = %1170
  %1174 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 13
  %1175 = load i8, ptr %1174, align 4
  %1176 = zext i8 %1175 to i32
  %1177 = shl nuw nsw i32 %1176, 16
  %1178 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 3, i32 12
  %1179 = load i8, ptr %1178, align 1
  %1180 = zext i8 %1179 to i32
  %1181 = shl nuw nsw i32 %1180, 8
  %1182 = or i32 %1181, %1177
  %1183 = load i8, ptr %1140, align 2
  %1184 = zext i8 %1183 to i32
  %1185 = or i32 %1182, %1184
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %1186 = load ptr, ptr %1166, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1186, i32 %1185) #9, !srcloc !13
  br label %1187

1187:                                             ; preds = %1173, %1170, %1155
  %1188 = load i32, ptr @mfc_debug_level, align 4
  %1189 = icmp sgt i32 %1188, 4
  br i1 %1189, label %1190, label %1194

1190:                                             ; preds = %1187
  %1191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params_hevc, i32 noundef 1591) #8
  br label %1194

1192:                                             ; preds = %29
  %1193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.s5p_mfc_init_encode_v6, i32 noundef 1719, i32 noundef %37) #8
  br label %1220

1194:                                             ; preds = %1190, %1187, %860, %849, %728, %725, %628, %621, %505, %502
  %1195 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %33, i32 0, i32 10
  %1196 = load ptr, ptr %1195, align 4
  %1197 = load i32, ptr %1196, align 4
  %1198 = icmp ugt i32 %1197, 111
  br i1 %1198, label %1199, label %1207

1199:                                             ; preds = %1194
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %1200 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %1201 = load i32, ptr %1200, align 4
  %1202 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 181
  %1203 = load ptr, ptr %1202, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1203, i32 %1201) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %1204 = load i32, ptr %1200, align 4
  %1205 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 182
  %1206 = load ptr, ptr %1205, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1206, i32 %1204) #9, !srcloc !13
  br label %1207

1207:                                             ; preds = %1199, %1194
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %1208 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %1209 = load i32, ptr %1208, align 4
  %1210 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %35, i32 0, i32 9
  %1211 = load ptr, ptr %1210, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1211, i32 %1209) #9, !srcloc !13
  %1212 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %33, i32 0, i32 37
  %1213 = load ptr, ptr %1212, align 4
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1220, label %1215

1215:                                             ; preds = %1207
  %1216 = load ptr, ptr %1213, align 4
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1220, label %1218

1218:                                             ; preds = %1215
  %1219 = tail call i32 %1216(ptr noundef %33, i32 noundef 3, ptr noundef null) #9
  br label %1220

1220:                                             ; preds = %1218, %1215, %1207, %1192
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_enc_buffers(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 38
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @mfc_debug_level, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v6, i32 noundef 664) #8
  %13 = load i32, ptr @mfc_debug_level, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %9, %1 ]
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %15, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = inttoptr i32 %17 to ptr
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v6, i32 noundef 669, ptr noundef %22, i32 noundef %19) #8
  br label %24

24:                                               ; preds = %21, %14
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 159
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 46
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %28, label %40, label %32

32:                                               ; preds = %24
  br i1 %31, label %33, label %118

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 170
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  %36 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 171
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  %38 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 172
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  br label %93

40:                                               ; preds = %24
  br i1 %31, label %41, label %118

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 170
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 54
  br label %49

44:                                               ; preds = %49
  %45 = icmp sgt i32 %60, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 171
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 55
  br label %67

49:                                               ; preds = %49, %41
  %50 = phi i32 [ %17, %41 ], [ %57, %49 ]
  %51 = phi i32 [ 0, %41 ], [ %59, %49 ]
  %52 = phi i32 [ %19, %41 ], [ %58, %49 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %53 = load ptr, ptr %42, align 4
  %54 = shl i32 %51, 2
  %55 = getelementptr i8, ptr %53, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %50) #9, !srcloc !13
  %56 = load i32, ptr %43, align 4
  %57 = add i32 %56, %50
  %58 = sub i32 %52, %56
  %59 = add nuw nsw i32 %51, 1
  %60 = load i32, ptr %29, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %49, label %44

62:                                               ; preds = %67
  %63 = icmp sgt i32 %78, 0
  br i1 %63, label %64, label %118

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 172
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 56
  br label %80

67:                                               ; preds = %67, %46
  %68 = phi i32 [ %57, %46 ], [ %75, %67 ]
  %69 = phi i32 [ 0, %46 ], [ %77, %67 ]
  %70 = phi i32 [ %58, %46 ], [ %76, %67 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %71 = load ptr, ptr %47, align 4
  %72 = shl i32 %69, 2
  %73 = getelementptr i8, ptr %71, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %68) #9, !srcloc !13
  %74 = load i32, ptr %48, align 4
  %75 = add i32 %74, %68
  %76 = sub i32 %70, %74
  %77 = add nuw nsw i32 %69, 1
  %78 = load i32, ptr %29, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %67, label %62

80:                                               ; preds = %80, %64
  %81 = phi i32 [ %75, %64 ], [ %88, %80 ]
  %82 = phi i32 [ 0, %64 ], [ %90, %80 ]
  %83 = phi i32 [ %76, %64 ], [ %89, %80 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %65, align 4
  %85 = shl i32 %82, 2
  %86 = getelementptr i8, ptr %84, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %81) #9, !srcloc !13
  %87 = load i32, ptr %66, align 4
  %88 = add i32 %87, %81
  %89 = sub i32 %83, %87
  %90 = add nuw nsw i32 %82, 1
  %91 = load i32, ptr %29, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %80, label %118

93:                                               ; preds = %93, %33
  %94 = phi i32 [ %17, %33 ], [ %109, %93 ]
  %95 = phi i32 [ 0, %33 ], [ %115, %93 ]
  %96 = phi i32 [ %19, %33 ], [ %114, %93 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %34, align 4
  %98 = shl i32 %95, 2
  %99 = getelementptr i8, ptr %97, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %94) #9, !srcloc !13
  %100 = load i32, ptr %35, align 4
  %101 = add i32 %100, %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !189
  tail call void @arm_heavy_mb() #9
  %102 = load ptr, ptr %36, align 4
  %103 = getelementptr i8, ptr %102, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #9, !srcloc !13
  %104 = load i32, ptr %37, align 4
  %105 = add i32 %104, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %106 = load ptr, ptr %38, align 4
  %107 = getelementptr i8, ptr %106, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #9, !srcloc !13
  %108 = load i32, ptr %39, align 4
  %109 = add i32 %108, %105
  %110 = load i32, ptr %35, align 4
  %111 = load i32, ptr %37, align 4
  %112 = add i32 %108, %110
  %113 = add i32 %112, %111
  %114 = sub i32 %96, %113
  %115 = add nuw nsw i32 %95, 1
  %116 = load i32, ptr %29, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %93, label %118

118:                                              ; preds = %93, %80, %62, %44, %40, %32
  %119 = phi i32 [ %76, %62 ], [ %19, %32 ], [ %58, %44 ], [ %19, %40 ], [ %89, %80 ], [ %114, %93 ]
  %120 = phi i32 [ %75, %62 ], [ %17, %32 ], [ %57, %44 ], [ %17, %40 ], [ %88, %80 ], [ %109, %93 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %121 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 173
  %122 = load ptr, ptr %121, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %123 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 66
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 174
  %126 = load ptr, ptr %125, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #9, !srcloc !13
  %127 = load i32, ptr %123, align 4
  %128 = add i32 %127, %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !193
  tail call void @arm_heavy_mb() #9
  %129 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 175
  %130 = load ptr, ptr %129, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #9, !srcloc !13
  %131 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 57
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 1
  %134 = add i32 %133, %128
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %135 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 176
  %136 = load ptr, ptr %135, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #9, !srcloc !13
  %137 = load i32, ptr %131, align 4
  %138 = add i32 %127, %137
  %139 = sub i32 %119, %138
  %140 = load i32, ptr @mfc_debug_level, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %118
  %143 = lshr i32 %137, 1
  %144 = add i32 %143, %134
  %145 = load i32, ptr %29, align 4
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v6, i32 noundef 713, i32 noundef %144, i32 noundef %139, i32 noundef %145) #8
  br label %147

147:                                              ; preds = %142, %118
  %148 = icmp slt i32 %139, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %147
  %150 = load i32, ptr @mfc_debug_level, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v6, i32 noundef 715) #8
  br label %172

154:                                              ; preds = %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  %155 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %8, i32 0, i32 9
  %158 = load ptr, ptr %157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #9, !srcloc !13
  %159 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 37
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %154
  %163 = load ptr, ptr %160, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = tail call i32 %163(ptr noundef %6, i32 noundef 4, ptr noundef null) #9
  br label %167

167:                                              ; preds = %165, %162, %154
  %168 = load i32, ptr @mfc_debug_level, align 4
  %169 = icmp sgt i32 %168, 4
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v6, i32 noundef 723) #8
  br label %175

172:                                              ; preds = %152, %149
  %173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.s5p_mfc_run_init_enc_buffers, i32 noundef 1950) #8
  %174 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 109, ptr %174, align 4
  br label %175

175:                                              ; preds = %172, %170, %167
  %176 = phi i32 [ -12, %172 ], [ 0, %170 ], [ 0, %167 ]
  ret i32 %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_dec_stream_buffer_v6(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %5, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @mfc_debug_level, align 4
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_dec_stream_buffer_v6, i32 noundef 498) #8
  %16 = load i32, ptr @mfc_debug_level, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %12, %4 ], [ %16, %14 ]
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.s5p_mfc_set_dec_stream_buffer_v6, i32 noundef 501, i32 noundef %22, i32 noundef %1, i32 noundef %3, i32 noundef %3) #8
  br label %24

24:                                               ; preds = %20, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %25 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 78
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %3) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  %27 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 71
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %29 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %11, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 72
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %33 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %7, i32 0, i32 75
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %2) #9, !srcloc !13
  %35 = load i32, ptr @mfc_debug_level, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_dec_stream_buffer_v6, i32 noundef 507) #8
  br label %39

39:                                               ; preds = %37, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_decode_one_frame_v6(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 37
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %5, i32 0, i32 74
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %5, i32 0, i32 76
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !202
  tail call void @arm_heavy_mb() #9
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %5, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !13
  switch i32 %1, label %37 [
    i32 0, label %19
    i32 1, label %28
  ]

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = tail call i32 %24(ptr noundef %3, i32 noundef 5, ptr noundef null) #9
  br label %39

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 37
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = tail call i32 %33(ptr noundef %3, i32 noundef 9, ptr noundef null) #9
  br label %39

37:                                               ; preds = %2
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.s5p_mfc_decode_one_frame_v6, i32 noundef 1694) #8
  br label %44

39:                                               ; preds = %35, %32, %28, %26, %23, %19
  %40 = load i32, ptr @mfc_debug_level, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_decode_one_frame_v6, i32 noundef 1698) #8
  br label %44

44:                                               ; preds = %42, %39, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_slice_mode(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 61
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 190
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !13
  %9 = load i32, ptr %5, align 4
  switch i32 %9, label %20 [
    i32 1, label %10
    i32 2, label %15
  ]

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 62
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 191
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !13
  br label %25

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 62
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 192
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !13
  br label %25

20:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %21 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 191
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !207
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 192
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #9, !srcloc !13
  br label %25

25:                                               ; preds = %20, %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @mfc_debug_level, align 4
  %6 = icmp sgt i32 %5, 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params, i32 noundef 756) #8
  br label %9

9:                                                ; preds = %7, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 150
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !209
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 151
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %18 = load i32, ptr %10, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 152
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 153
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 154
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #9, !srcloc !13
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !213
  tail call void @arm_heavy_mb() #9
  %29 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 189
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !13
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 61
  store i32 %32, ptr %33, align 4
  switch i32 %32, label %47 [
    i32 1, label %34
    i32 2, label %41
  ]

34:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %35 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 155
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 8) #9, !srcloc !13
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 6
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 62
  store i32 %39, ptr %40, align 4
  br label %50

41:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !215
  tail call void @arm_heavy_mb() #9
  %42 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 155
  %43 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 8) #9, !srcloc !13
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 62
  store i32 %45, ptr %46, align 4
  br label %50

47:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %48 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 155
  %49 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #9, !srcloc !13
  br label %50

50:                                               ; preds = %47, %41, %34
  tail call fastcc void @s5p_mfc_set_slice_mode(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 8
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 188
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !13
  %56 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 155
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !218
  %59 = load i16, ptr %51, align 4
  %60 = icmp eq i16 %59, 0
  %61 = and i32 %58, -17
  %62 = select i1 %60, i32 0, i32 16
  %63 = or i32 %62, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #9, !srcloc !13
  %65 = load ptr, ptr %56, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !220
  %67 = and i32 %66, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %68 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #9, !srcloc !13
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %93 [
    i32 842091854, label %72
    i32 825380174, label %79
    i32 842091862, label %86
  ]

72:                                               ; preds = %50
  %73 = load ptr, ptr %56, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !222
  %75 = and i32 %74, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %76 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %75) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %77 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 13
  %78 = load ptr, ptr %77, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #9, !srcloc !13
  br label %93

79:                                               ; preds = %50
  %80 = load ptr, ptr %56, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !225
  %82 = and i32 %81, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %83 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %84 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 13
  %85 = load ptr, ptr %84, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 1) #9, !srcloc !13
  br label %93

86:                                               ; preds = %50
  %87 = load ptr, ptr %56, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !228
  %89 = or i32 %88, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %91 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 13
  %92 = load ptr, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #9, !srcloc !13
  br label %93

93:                                               ; preds = %86, %79, %72, %50
  %94 = load ptr, ptr %56, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !231
  %96 = or i32 %95, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %96) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %98 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 165
  %99 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #9, !srcloc !13
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 9
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 12
  %105 = load i8, ptr %104, align 2
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 11
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 10
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i32
  %115 = or i32 %107, %111
  %116 = or i32 %115, %114
  %117 = or i32 %116, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %118 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #9, !srcloc !13
  br label %119

119:                                              ; preds = %103, %93
  %120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %121 = load i32, ptr %120, align 4
  %122 = shl i32 %121, 9
  %123 = and i32 %122, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %124 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 160
  %125 = load ptr, ptr %124, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #9, !srcloc !13
  %126 = load i32, ptr %120, align 4
  %127 = icmp eq i32 %126, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %127, label %133, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 15
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 195
  %132 = load ptr, ptr %131, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #9, !srcloc !13
  br label %136

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 195
  %135 = load ptr, ptr %134, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 1) #9, !srcloc !13
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, ptr %120, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 16
  %141 = load i16, ptr %140, align 4
  %142 = icmp ult i16 %141, 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %143 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 163
  %144 = load ptr, ptr %143, align 4
  br i1 %142, label %145, label %146

145:                                              ; preds = %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 1) #9, !srcloc !13
  br label %147

146:                                              ; preds = %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 2) #9, !srcloc !13
  br label %147

147:                                              ; preds = %146, %145, %136
  %148 = load ptr, ptr %56, align 4
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !236
  %150 = and i32 %149, -8
  %151 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 19
  %152 = load i32, ptr %151, align 4
  %153 = shl i32 %152, 2
  %154 = and i32 %153, 4
  %155 = or i32 %154, %150
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 3
  %159 = or i32 %155, %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %160 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %159) #9, !srcloc !13
  %161 = load ptr, ptr %124, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #9, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !238
  %163 = and i32 %162, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %164 = load ptr, ptr %124, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %163) #9, !srcloc !13
  %165 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 16383
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %168 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 167
  %169 = load ptr, ptr %168, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #9, !srcloc !13
  %170 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 16383
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  %173 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 168
  %174 = load ptr, ptr %173, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !242
  tail call void @arm_heavy_mb() #9
  %175 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 193
  %176 = load ptr, ptr %175, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  %177 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 186
  %178 = load ptr, ptr %177, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %179 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 187
  %180 = load ptr, ptr %179, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %181 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 196
  %182 = load ptr, ptr %181, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %183 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 197
  %184 = load ptr, ptr %183, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !247
  tail call void @arm_heavy_mb() #9
  %185 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 198
  %186 = load ptr, ptr %185, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !248
  tail call void @arm_heavy_mb() #9
  %187 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 199
  %188 = load ptr, ptr %187, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  %189 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 200
  %190 = load ptr, ptr %189, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %191 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 201
  %192 = load ptr, ptr %191, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %193 = getelementptr inbounds %struct.s5p_mfc_regs, ptr %4, i32 0, i32 202
  %194 = load ptr, ptr %193, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 0) #9, !srcloc !13
  %195 = load i32, ptr @mfc_debug_level, align 4
  %196 = icmp sgt i32 %195, 4
  br i1 %196, label %197, label %199

197:                                              ; preds = %147
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_set_enc_params, i32 noundef 909) #8
  br label %199

199:                                              ; preds = %197, %147
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

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
!9 = !{i64 2155103342, i64 2155103854, i64 2155103379, i64 2155103435, i64 2155103469, i64 2155103493, i64 2155103534, i64 2155103555, i64 2155103583, i64 2155103617}
!10 = !{i64 2155105880}
!11 = !{i64 2155107568}
!12 = !{i64 2155128005}
!13 = !{i64 4594886}
!14 = !{i64 2155128348}
!15 = !{i64 2155129328}
!16 = !{i64 2155129688}
!17 = !{i64 4595304}
!18 = !{i64 2155131418}
!19 = !{i64 2155131833}
!20 = !{i64 2155132209}
!21 = !{i64 2155132591}
!22 = !{i64 2155222649}
!23 = !{i64 2155223514}
!24 = !{i64 2155247246}
!25 = !{i64 2155247570}
!26 = !{i64 2155248447}
!27 = !{i64 2155248853}
!28 = !{i64 2155249229}
!29 = !{i64 2155249605}
!30 = !{i64 2155249993}
!31 = !{i64 2155250383}
!32 = !{i64 2155250767}
!33 = !{i64 2155251146}
!34 = !{i64 2155251512}
!35 = !{i64 2155251912}
!36 = !{i64 2155252306}
!37 = !{i64 2155252673}
!38 = !{i64 2155253037}
!39 = !{i64 2155254216}
!40 = !{i64 2155254938}
!41 = !{i64 2155255302}
!42 = !{i64 2155254571}
!43 = !{i64 2155248041}
!44 = !{i64 2155253440}
!45 = !{i64 2155253843}
!46 = !{i64 2155211184}
!47 = !{i64 2155211548}
!48 = !{i64 2155211912}
!49 = !{i64 2155212124}
!50 = !{i64 2155212628}
!51 = !{i64 2155213848}
!52 = !{i64 2155214182}
!53 = !{i64 2155215298}
!54 = !{i64 2155215670}
!55 = !{i64 2155117382}
!56 = !{i64 2155117758}
!57 = !{i64 2155118138}
!58 = !{i64 2155118514}
!59 = !{i64 2155118886}
!60 = !{i64 2155119327}
!61 = !{i64 2155119719}
!62 = !{i64 2155120104}
!63 = !{i64 2155120456}
!64 = !{i64 2155122150}
!65 = !{i64 2155123236}
!66 = !{i64 2155124493}
!67 = !{i64 2155124853}
!68 = !{i64 2155125213}
!69 = !{i64 2155126897}
!70 = !{i64 2155216903}
!71 = !{i64 2155161129}
!72 = !{i64 2155161319}
!73 = !{i64 2155161648}
!74 = !{i64 2155162133}
!75 = !{i64 2155162322}
!76 = !{i64 2155162644}
!77 = !{i64 2155162968}
!78 = !{i64 2155163299}
!79 = !{i64 2155163635}
!80 = !{i64 2155163968}
!81 = !{i64 2155164322}
!82 = !{i64 2155168769}
!83 = !{i64 2155169117}
!84 = !{i64 2155169462}
!85 = !{i64 2155169849}
!86 = !{i64 2155170382}
!87 = !{i64 2155170574}
!88 = !{i64 2155170910}
!89 = !{i64 2155171253}
!90 = !{i64 2155171751}
!91 = !{i64 2155171943}
!92 = !{i64 2155172434}
!93 = !{i64 2155172626}
!94 = !{i64 2155173117}
!95 = !{i64 2155173309}
!96 = !{i64 2155173637}
!97 = !{i64 2155173965}
!98 = !{i64 2155174456}
!99 = !{i64 2155174648}
!100 = !{i64 2155174976}
!101 = !{i64 2155175304}
!102 = !{i64 2155175632}
!103 = !{i64 2155175960}
!104 = !{i64 2155176451}
!105 = !{i64 2155176643}
!106 = !{i64 2155176972}
!107 = !{i64 2155177302}
!108 = !{i64 2155177794}
!109 = !{i64 2155177986}
!110 = !{i64 2155178477}
!111 = !{i64 2155178669}
!112 = !{i64 2155179160}
!113 = !{i64 2155179352}
!114 = !{i64 2155179843}
!115 = !{i64 2155180035}
!116 = !{i64 2155180367}
!117 = !{i64 2155181244}
!118 = !{i64 2155181651}
!119 = !{i64 2155182146}
!120 = !{i64 2155182338}
!121 = !{i64 2155182681}
!122 = !{i64 2155183076}
!123 = !{i64 2155183518}
!124 = !{i64 2155183949}
!125 = !{i64 2155184977}
!126 = !{i64 2155185393}
!127 = !{i64 2155185797}
!128 = !{i64 2155187287}
!129 = !{i64 2155187477}
!130 = !{i64 2155187806}
!131 = !{i64 2155188291}
!132 = !{i64 2155188480}
!133 = !{i64 2155188802}
!134 = !{i64 2155189126}
!135 = !{i64 2155189457}
!136 = !{i64 2155189793}
!137 = !{i64 2155190126}
!138 = !{i64 2155190475}
!139 = !{i64 2155190851}
!140 = !{i64 2155191200}
!141 = !{i64 2155191533}
!142 = !{i64 2155192860}
!143 = !{i64 2155193345}
!144 = !{i64 2155193534}
!145 = !{i64 2155193856}
!146 = !{i64 2155194180}
!147 = !{i64 2155194511}
!148 = !{i64 2155194847}
!149 = !{i64 2155195180}
!150 = !{i64 2155195529}
!151 = !{i64 2155195905}
!152 = !{i64 2155197402}
!153 = !{i64 2155197592}
!154 = !{i64 2155197921}
!155 = !{i64 2155198406}
!156 = !{i64 2155198595}
!157 = !{i64 2155198921}
!158 = !{i64 2155199247}
!159 = !{i64 2155199576}
!160 = !{i64 2155199912}
!161 = !{i64 2155200243}
!162 = !{i64 2155200590}
!163 = !{i64 2155200966}
!164 = !{i64 2155201313}
!165 = !{i64 2155202789}
!166 = !{i64 2155202979}
!167 = !{i64 2155203308}
!168 = !{i64 2155203639}
!169 = !{i64 2155203974}
!170 = !{i64 2155204321}
!171 = !{i64 2155204671}
!172 = !{i64 2155205008}
!173 = !{i64 2155205366}
!174 = !{i64 2155205790}
!175 = !{i64 2155206338}
!176 = !{i64 2155206527}
!177 = !{i64 2155206849}
!178 = !{i64 2155207177}
!179 = !{i64 2155207505}
!180 = !{i64 2155207836}
!181 = !{i64 2155208172}
!182 = !{i64 2155220803}
!183 = !{i64 2155221191}
!184 = !{i64 2155221561}
!185 = !{i64 2155135193}
!186 = !{i64 2155135553}
!187 = !{i64 2155135914}
!188 = !{i64 2155136273}
!189 = !{i64 2155136633}
!190 = !{i64 2155136994}
!191 = !{i64 2155137354}
!192 = !{i64 2155137726}
!193 = !{i64 2155138102}
!194 = !{i64 2155138446}
!195 = !{i64 2155140114}
!196 = !{i64 2155113645}
!197 = !{i64 2155113997}
!198 = !{i64 2155114351}
!199 = !{i64 2155114718}
!200 = !{i64 2155217494}
!201 = !{i64 2155217888}
!202 = !{i64 2155218271}
!203 = !{i64 2155141182}
!204 = !{i64 2155141550}
!205 = !{i64 2155141931}
!206 = !{i64 2155142299}
!207 = !{i64 2155142633}
!208 = !{i64 2155143470}
!209 = !{i64 2155143831}
!210 = !{i64 2155144201}
!211 = !{i64 2155144578}
!212 = !{i64 2155144943}
!213 = !{i64 2155145274}
!214 = !{i64 2155145599}
!215 = !{i64 2155145925}
!216 = !{i64 2155146251}
!217 = !{i64 2155146589}
!218 = !{i64 2155147104}
!219 = !{i64 2155147295}
!220 = !{i64 2155147782}
!221 = !{i64 2155147973}
!222 = !{i64 2155148583}
!223 = !{i64 2155148774}
!224 = !{i64 2155149099}
!225 = !{i64 2155149708}
!226 = !{i64 2155149899}
!227 = !{i64 2155150224}
!228 = !{i64 2155150833}
!229 = !{i64 2155151024}
!230 = !{i64 2155151349}
!231 = !{i64 2155151835}
!232 = !{i64 2155152026}
!233 = !{i64 2155152353}
!234 = !{i64 2155152681}
!235 = !{i64 2155153006}
!236 = !{i64 2155154794}
!237 = !{i64 2155154985}
!238 = !{i64 2155155466}
!239 = !{i64 2155155655}
!240 = !{i64 2155155987}
!241 = !{i64 2155156322}
!242 = !{i64 2155156653}
!243 = !{i64 2155156987}
!244 = !{i64 2155157318}
!245 = !{i64 2155157645}
!246 = !{i64 2155157971}
!247 = !{i64 2155158302}
!248 = !{i64 2155158635}
!249 = !{i64 2155158965}
!250 = !{i64 2155159302}
!251 = !{i64 2155159646}
