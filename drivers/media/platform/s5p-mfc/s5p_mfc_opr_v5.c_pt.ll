; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v5 = type { i32, i32, i32, i32 }
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
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }

@s5p_mfc_ops_v5 = internal global %struct.s5p_mfc_hw_ops { ptr @s5p_mfc_alloc_dec_temp_buffers_v5, ptr @s5p_mfc_release_dec_desc_buffer_v5, ptr @s5p_mfc_alloc_codec_buffers_v5, ptr @s5p_mfc_release_codec_buffers_v5, ptr @s5p_mfc_alloc_instance_buffer_v5, ptr @s5p_mfc_release_instance_buffer_v5, ptr @s5p_mfc_alloc_dev_context_buffer_v5, ptr @s5p_mfc_release_dev_context_buffer_v5, ptr @s5p_mfc_dec_calc_dpb_size_v5, ptr @s5p_mfc_enc_calc_src_size_v5, ptr @s5p_mfc_set_enc_stream_buffer_v5, ptr @s5p_mfc_set_enc_frame_buffer_v5, ptr @s5p_mfc_get_enc_frame_buffer_v5, ptr @s5p_mfc_try_run_v5, ptr @s5p_mfc_clear_int_flags_v5, ptr @s5p_mfc_get_dspl_y_adr_v5, ptr @s5p_mfc_get_dec_y_adr_v5, ptr @s5p_mfc_get_dspl_status_v5, ptr @s5p_mfc_get_dec_status_v5, ptr @s5p_mfc_get_dec_frame_type_v5, ptr @s5p_mfc_get_disp_frame_type_v5, ptr @s5p_mfc_get_consumed_stream_v5, ptr @s5p_mfc_get_int_reason_v5, ptr @s5p_mfc_get_int_err_v5, ptr @s5p_mfc_err_dec_v5, ptr @s5p_mfc_get_img_width_v5, ptr @s5p_mfc_get_img_height_v5, ptr @s5p_mfc_get_dpb_count_v5, ptr @s5p_mfc_get_mv_count_v5, ptr @s5p_mfc_get_inst_no_v5, ptr @s5p_mfc_get_enc_strm_size_v5, ptr @s5p_mfc_get_enc_slice_type_v5, ptr @s5p_mfc_get_enc_dpb_count_v5, ptr @s5p_mfc_get_pic_type_top_v5, ptr @s5p_mfc_get_pic_type_bot_v5, ptr @s5p_mfc_get_crop_info_h_v5, ptr @s5p_mfc_get_crop_info_v_v5, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [46 x i8] c"\013%s:%d: Failed to allocate temporary buffer\0A\00", align 1
@__func__.s5p_mfc_alloc_dec_temp_buffers_v5 = private unnamed_addr constant [34 x i8] c"s5p_mfc_alloc_dec_temp_buffers_v5\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\017%s:%d: Luma size:%d Chroma size:%d MV size:%d\0A\00", align 1
@__func__.s5p_mfc_alloc_codec_buffers_v5 = private unnamed_addr constant [31 x i8] c"s5p_mfc_alloc_codec_buffers_v5\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Totals bufs: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\017%s:%d: recon luma size: %d chroma size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\013%s:%d: Failed to allocate Bank1 temporary buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\013%s:%d: Failed to allocate Bank2 temporary buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\013%s:%d: Failed to allocate instance buffer\0A\00", align 1
@__func__.s5p_mfc_alloc_instance_buffer_v5 = private unnamed_addr constant [33 x i8] c"s5p_mfc_alloc_instance_buffer_v5\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Failed to allocate shared memory buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"\017%s:%d: SEQ Done: Movie dimensions %dx%d, buffer dimensions: %dx%d\0A\00", align 1
@__func__.s5p_mfc_dec_calc_dpb_size_v5 = private unnamed_addr constant [29 x i8] c"s5p_mfc_dec_calc_dpb_size_v5\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\017%s:%d: Entering suspend so do not schedule any jobs\0A\00", align 1
@__func__.s5p_mfc_try_run_v5 = private unnamed_addr constant [19 x i8] c"s5p_mfc_try_run_v5\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\017%s:%d: Couldn't lock HW\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\013%s:%d: Failed to unlock hardware\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\017%s:%d: No ctx is scheduled to be run\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\017%s:%d: head parsed\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"\017%s:%d: Finished remaining frames after resolution change\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Will re-init the codec\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\013%s:%d: Invalid context type: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\017%s:%d: No src buffers\0A\00", align 1
@__func__.s5p_mfc_run_dec_frame = private unnamed_addr constant [22 x i8] c"s5p_mfc_run_dec_frame\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\017%s:%d: Setting ctx->state to FINISHING\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Decoding a usual frame\0A\00", align 1
@__func__.s5p_mfc_decode_one_frame_v5 = private unnamed_addr constant [28 x i8] c"s5p_mfc_decode_one_frame_v5\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"\017%s:%d: Preparing to init decoding\0A\00", align 1
@__func__.s5p_mfc_run_init_dec = private unnamed_addr constant [21 x i8] c"s5p_mfc_run_init_dec\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"\017%s:%d: Header size: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [138 x i8] c"\013%s:%d: It seems that not all destination buffers were mmapped\0AMFC requires that all destination are mmapped before starting processing\0A\00", align 1
@__func__.s5p_mfc_run_init_dec_buffers = private unnamed_addr constant [29 x i8] c"s5p_mfc_run_init_dec_buffers\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"\013%s:%d: Header has been deallocated in the middle of initialization\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"\013%s:%d: Failed to alloc frame mem\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\013%s:%d: Unknown codec for decoding (%x)\0A\00", align 1
@__func__.s5p_mfc_set_dec_frame_buffer_v5 = private unnamed_addr constant [32 x i8] c"s5p_mfc_set_dec_frame_buffer_v5\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"\017%s:%d: Frm size: %d ch: %d mv: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\017%s:%d: Luma %d: %zx\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\017%s:%d: \09Chroma %d: %zx\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"\017%s:%d: \09Buf2: %zx, size: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"\017%s:%d: Buf1: %zu, buf_size1: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"\017%s:%d: Buf 1/2 size after: %d/%d (frames %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"\017%s:%d: Not enough memory has been allocated\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"\017%s:%d: no src buffers\0A\00", align 1
@__func__.s5p_mfc_run_enc_frame = private unnamed_addr constant [22 x i8] c"s5p_mfc_run_enc_frame\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"\017%s:%d: no dst buffers\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"\017%s:%d: encoding buffer with index=%d state=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"\017%s:%d: buf_size1: %zu, buf_size2: %zu\0A\00", align 1
@__func__.s5p_mfc_set_enc_ref_buffer_v5 = private unnamed_addr constant [30 x i8] c"s5p_mfc_set_enc_ref_buffer_v5\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"\013%s:%d: Unknown codec set for encoding: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"\013%s:%d: Unknown codec for encoding (%x)\0A\00", align 1
@__func__.s5p_mfc_init_encode_v5 = private unnamed_addr constant [23 x i8] c"s5p_mfc_init_encode_v5\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_ops_v5() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_ops_v5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_dec_temp_buffers_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50, i32 3
  store i32 %10, ptr %12, align 4
  %13 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 0, ptr noundef %11) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_alloc_dec_temp_buffers_v5, i32 noundef 43) #7
  br label %27

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8191
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %12, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %26, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  br label %27

27:                                               ; preds = %23, %15
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_dec_desc_buffer_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %2, ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_codec_buffers_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %136 [
    i32 1, label %5
    i32 2, label %22
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr @mfc_debug_level, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %51

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v5, i32 noundef 71, i32 noundef %10, i32 noundef %12, i32 noundef %14) #7
  %16 = load i32, ptr @mfc_debug_level, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %51

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v5, i32 noundef 72, i32 noundef %20) #7
  br label %51

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 127
  %26 = and i32 %25, -128
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 31
  %30 = and i32 %29, -32
  %31 = mul i32 %30, %26
  %32 = add i32 %31, 8191
  %33 = and i32 %32, -8192
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 20
  %37 = add i32 %24, 143
  %38 = and i32 %37, -128
  %39 = select i1 %36, i32 31, i32 35
  %40 = select i1 %36, i32 %26, i32 %38
  %41 = ashr i32 %28, 1
  %42 = add nsw i32 %41, %39
  %43 = and i32 %42, -32
  %44 = mul i32 %43, %40
  %45 = add i32 %44, 8191
  %46 = and i32 %45, -8192
  %47 = load i32, ptr @mfc_debug_level, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %22
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v5, i32 noundef 94, i32 noundef %33, i32 noundef %46) #7
  br label %51

51:                                               ; preds = %49, %22, %18, %8, %5
  %52 = phi i32 [ 0, %18 ], [ 0, %8 ], [ %46, %49 ], [ %46, %22 ], [ 0, %5 ]
  %53 = phi i32 [ 0, %18 ], [ 0, %8 ], [ %33, %49 ], [ %33, %22 ], [ 0, %5 ]
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %55 = load i32, ptr %54, align 4
  switch i32 %55, label %56 [
    i32 0, label %59
    i32 3, label %66
    i32 6, label %68
    i32 2, label %68
    i32 4, label %70
    i32 5, label %74
    i32 20, label %76
    i32 22, label %84
    i32 23, label %91
  ]

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %58 = load i32, ptr %57, align 4
  br label %102

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 49152, ptr %60, align 4
  %61 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, %62
  br label %98

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 327680, ptr %67, align 4
  br label %98

68:                                               ; preds = %51, %51
  %69 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 270336, ptr %69, align 4
  br label %98

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  br label %118

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 262144, ptr %75, align 4
  br label %98

76:                                               ; preds = %51
  %77 = shl i32 %53, 1
  %78 = add i32 %77, 262144
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %78, ptr %79, align 4
  %80 = shl i32 %52, 2
  %81 = or i32 %80, 16384
  %82 = add i32 %81, %77
  %83 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 %82, ptr %83, align 4
  br label %102

84:                                               ; preds = %51
  %85 = shl i32 %53, 1
  %86 = add i32 %85, 196608
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %86, ptr %87, align 4
  %88 = shl i32 %52, 2
  %89 = add i32 %85, %88
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 %89, ptr %90, align 4
  br label %102

91:                                               ; preds = %51
  %92 = shl i32 %53, 1
  %93 = add i32 %92, 131072
  %94 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  store i32 %93, ptr %94, align 4
  %95 = shl i32 %52, 2
  %96 = add i32 %92, %95
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 %96, ptr %97, align 4
  br label %102

98:                                               ; preds = %74, %68, %66, %59
  %99 = phi i32 [ 0, %74 ], [ 0, %68 ], [ 0, %66 ], [ %65, %59 ]
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  br label %106

102:                                              ; preds = %91, %84, %76, %56
  %103 = phi i32 [ %58, %56 ], [ %93, %91 ], [ %86, %84 ], [ %78, %76 ]
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102, %98
  %107 = phi ptr [ %101, %98 ], [ %104, %102 ]
  %108 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 0, ptr noundef %107) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v5, i32 noundef 174) #7
  br label %136

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 8191
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117, !prof !8

117:                                              ; preds = %112
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

118:                                              ; preds = %112, %102, %70
  %119 = phi ptr [ %107, %112 ], [ %104, %102 ], [ %73, %70 ]
  %120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29
  %125 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 1, ptr noundef %124) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_alloc_codec_buffers_v5, i32 noundef 183) #7
  %129 = load ptr, ptr %0, align 4
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %129, ptr noundef %119) #6
  br label %136

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 8191
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !8

135:                                              ; preds = %130
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

136:                                              ; preds = %130, %127, %118, %110, %1
  %137 = phi i32 [ %108, %110 ], [ %125, %127 ], [ -22, %1 ], [ 0, %130 ], [ 0, %118 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_codec_buffers_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %2, ptr noundef %3) #6
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %4, ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_alloc_instance_buffer_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 20, label %13
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %8, i32 0, i32 1
  br label %13

13:                                               ; preds = %11, %1, %1
  %14 = phi ptr [ %12, %11 ], [ %8, %1 ], [ %8, %1 ]
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49
  %18 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 0, ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v5, i32 noundef 214) #7
  br label %53

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = lshr i32 %27, 11
  store i32 %28, ptr %17, align 4
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  %32 = load i32, ptr %31, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %32, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %33 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %8, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 3
  store i32 %34, ptr %36, align 4
  %37 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %2, i32 noundef 0, ptr noundef %35) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5p_mfc_alloc_instance_buffer_v5, i32 noundef 227) #7
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %2, ptr noundef %17) #6
  br label %53

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %25, align 4
  %45 = sub i32 %43, %44
  store i32 %45, ptr %35, align 4
  %46 = and i32 %45, 8191
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-mfc/s5p_mfc_opr_v5.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %33, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %52, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  br label %53

53:                                               ; preds = %49, %39, %20
  %54 = phi i32 [ %18, %20 ], [ %37, %39 ], [ 0, %49 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_release_instance_buffer_v5(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %2, ptr noundef %3) #6
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %4, ptr noundef %5) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_alloc_dev_context_buffer_v5(ptr nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_release_dev_context_buffer_v5(ptr nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_dec_calc_dpb_size_v5(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 127
  %5 = and i32 %4, -128
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 20
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 31
  %10 = and i32 %9, -32
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 21
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr @mfc_debug_level, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_dec_calc_dpb_size_v5, i32 noundef 283, i32 noundef %3, i32 noundef %8, i32 noundef %5, i32 noundef %10) #7
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %11, align 4
  %23 = mul i32 %22, %21
  %24 = load i32, ptr %7, align 4
  %25 = ashr i32 %24, 1
  %26 = add nsw i32 %25, 31
  %27 = and i32 %26, -32
  %28 = mul i32 %27, %21
  %29 = ashr i32 %22, 2
  %30 = add nsw i32 %29, 31
  %31 = and i32 %30, -32
  %32 = mul i32 %31, %21
  %33 = add i32 %32, 8191
  %34 = and i32 %33, -8192
  br label %49

35:                                               ; preds = %16
  %36 = load i32, ptr %2, align 4
  %37 = add i32 %36, 151
  %38 = and i32 %37, -128
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 47
  %41 = and i32 %40, -32
  %42 = mul i32 %41, %38
  %43 = add i32 %36, 143
  %44 = and i32 %43, -128
  %45 = ashr i32 %39, 1
  %46 = add nsw i32 %45, 35
  %47 = and i32 %46, -32
  %48 = mul i32 %47, %44
  br label %49

49:                                               ; preds = %35, %20
  %50 = phi i32 [ %23, %20 ], [ %42, %35 ]
  %51 = phi i32 [ %28, %20 ], [ %48, %35 ]
  %52 = phi i32 [ %34, %20 ], [ 0, %35 ]
  %53 = add i32 %51, 8191
  %54 = and i32 %53, -8192
  %55 = add i32 %50, 8191
  %56 = and i32 %55, -8192
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  store i32 %54, ptr %58, align 4
  %59 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  store i32 %52, ptr %59, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @s5p_mfc_enc_calc_src_size_v5(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %47 [
    i32 842091854, label %5
    i32 842091860, label %26
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 15
  %9 = and i32 %8, -16
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 20
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 15
  %14 = and i32 %13, -16
  %15 = mul i32 %14, %9
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %17 = ashr i32 %12, 1
  %18 = add nsw i32 %17, 7
  %19 = and i32 %18, -8
  %20 = mul i32 %19, %9
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %22 = add i32 %15, 2047
  %23 = and i32 %22, -2048
  store i32 %23, ptr %16, align 4
  %24 = add i32 %20, 2047
  %25 = and i32 %24, -2048
  store i32 %25, ptr %21, align 4
  br label %47

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 127
  %30 = and i32 %29, -128
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 20
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 31
  %35 = and i32 %34, -32
  %36 = mul i32 %35, %30
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %38 = ashr i32 %33, 1
  %39 = add nsw i32 %38, 31
  %40 = and i32 %39, -32
  %41 = mul i32 %40, %30
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %43 = add i32 %36, 8191
  %44 = and i32 %43, -8192
  store i32 %44, ptr %37, align 4
  %45 = add i32 %41, 8191
  %46 = and i32 %45, -8192
  store i32 %46, ptr %42, align 4
  br label %47

47:                                               ; preds = %26, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_set_enc_stream_buffer_v5(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %1, %6
  %8 = lshr i32 %7, 11
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %2) #6, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_set_enc_frame_buffer_v5(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %5 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %1, %6
  %8 = lshr i32 %7, 11
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %12 = load i32, ptr %5, align 4
  %13 = sub i32 %2, %12
  %14 = lshr i32 %13, 11
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_get_enc_frame_buffer_v5(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr %struct.s5p_mfc_dev, ptr %4, i32 0, i32 24, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8212
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %11 = shl i32 %10, 11
  %12 = add i32 %11, %6
  store i32 %12, ptr %1, align 4
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 8216
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %17 = shl i32 %16, 11
  %18 = add i32 %17, %13
  store i32 %18, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_try_run_v5(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 33
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @mfc_debug_level, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %146

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1323) #7
  br label %146

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 25
  %13 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr @mfc_debug_level, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %146

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1329) #7
  br label %146

20:                                               ; preds = %11
  %21 = tail call i32 @s5p_mfc_get_new_ctx(ptr noundef %0) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %12) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1337) #7
  br label %146

28:                                               ; preds = %23
  %29 = load i32, ptr @mfc_debug_level, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %146

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1340) #7
  br label %146

33:                                               ; preds = %20
  %34 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 26, i32 %21
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @s5p_mfc_clock_on() #6
  tail call void @s5p_mfc_clean_ctx_int_flags(ptr noundef %35) #6
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %135 [
    i32 1, label %39
    i32 2, label %109
  ]

39:                                               ; preds = %33
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 50, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %40, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %48, %50
  %52 = lshr i32 %51, 11
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %40, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %56 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %46, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %53, align 4
  %59 = getelementptr i8, ptr %58, i32 8284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #6, !srcloc !17
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 16
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %140 [
    i32 106, label %62
    i32 105, label %64
    i32 100, label %66
    i32 108, label %76
    i32 101, label %86
    i32 102, label %87
    i32 112, label %93
    i32 113, label %94
    i32 114, label %96
  ]

62:                                               ; preds = %39
  %63 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %35, i32 noundef 1)
  br label %146

64:                                               ; preds = %39
  %65 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %35, i32 noundef 0)
  br label %137

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %140, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %68, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %140, label %74

74:                                               ; preds = %70
  %75 = tail call i32 %72(ptr noundef %35) #6
  br label %137

76:                                               ; preds = %39
  %77 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %140, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %78, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %140, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %35) #6
  br label %137

86:                                               ; preds = %39
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %35)
  br label %146

87:                                               ; preds = %39
  %88 = tail call fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %35)
  %89 = load i32, ptr @mfc_debug_level, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %137

91:                                               ; preds = %87
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1374) #7
  br label %137

93:                                               ; preds = %39
  tail call fastcc void @s5p_mfc_run_res_change(ptr noundef %35)
  br label %146

94:                                               ; preds = %39
  %95 = tail call fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %35, i32 noundef 0)
  br label %146

96:                                               ; preds = %39
  %97 = load i32, ptr @mfc_debug_level, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 30
  store i32 0, ptr %100, align 4
  br label %108

101:                                              ; preds = %96
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1383) #7
  %103 = load i32, ptr @mfc_debug_level, align 4
  %104 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 30
  store i32 0, ptr %104, align 4
  %105 = icmp sgt i32 %103, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1385) #7
  br label %108

108:                                              ; preds = %106, %101, %99
  tail call fastcc void @s5p_mfc_run_init_dec(ptr noundef %35)
  br label %146

109:                                              ; preds = %33
  %110 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %35, i32 0, i32 16
  %111 = load i32, ptr %110, align 4
  switch i32 %111, label %140 [
    i32 106, label %112
    i32 105, label %112
    i32 100, label %114
    i32 108, label %124
    i32 101, label %134
  ]

112:                                              ; preds = %109, %109
  %113 = tail call fastcc i32 @s5p_mfc_run_enc_frame(ptr noundef %35)
  br label %137

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %140, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %116, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  %123 = tail call i32 %120(ptr noundef %35) #6
  br label %137

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %126, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = tail call i32 %130(ptr noundef %35) #6
  br label %137

134:                                              ; preds = %109
  tail call fastcc void @s5p_mfc_run_init_enc(ptr noundef %35)
  br label %146

135:                                              ; preds = %33
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1412, i32 noundef %38) #7
  br label %140

137:                                              ; preds = %132, %122, %112, %91, %87, %84, %74, %64
  %138 = phi i32 [ %88, %91 ], [ %88, %87 ], [ %65, %64 ], [ %113, %112 ], [ %75, %74 ], [ %85, %84 ], [ %123, %122 ], [ %133, %132 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %135, %128, %124, %118, %114, %109, %80, %76, %70, %66, %39
  %141 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %12) #6
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_try_run_v5, i32 noundef 1419) #7
  br label %145

145:                                              ; preds = %143, %140
  tail call void @s5p_mfc_clock_off() #6
  br label %146

146:                                              ; preds = %145, %137, %134, %108, %94, %93, %86, %62, %31, %28, %26, %18, %15, %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_mfc_clear_int_flags_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 65535) #6, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_y_adr_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8208
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %6 = shl i32 %5, 11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_y_adr_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8228
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %6 = shl i32 %5, 11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dspl_status_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8220
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_status_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dec_frame_type_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8224
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %6 = and i32 %5, 7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_disp_frame_type_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 192
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_consumed_stream_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8216
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_reason_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  %6 = and i32 %5, 131071
  switch i32 %6, label %18 [
    i32 1, label %19
    i32 2, label %7
    i32 4, label %8
    i32 5, label %9
    i32 6, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
    i32 15, label %15
    i32 7, label %16
    i32 32, label %17
  ]

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  br label %19

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  br label %19

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %1
  %20 = phi i32 [ 0, %18 ], [ 32, %17 ], [ 9, %16 ], [ 4, %15 ], [ 8, %14 ], [ 7, %13 ], [ 12, %12 ], [ 1, %11 ], [ 15, %10 ], [ 13, %9 ], [ 3, %8 ], [ 6, %7 ], [ 2, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_int_err_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_err_dec_v5(i32 noundef %0) #0 {
  %2 = and i32 %0, 65535
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_width_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8200
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_img_height_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8196
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_dpb_count_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8204
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_get_mv_count_v5(ptr nocapture noundef readnone %0) #0 {
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_inst_no_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_strm_size_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8196
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_enc_slice_type_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8208
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !43
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s5p_mfc_get_enc_dpb_count_v5(ptr nocapture noundef readnone %0) #0 {
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_top_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_pic_type_bot_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_h_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_get_crop_info_v_v5(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_ctx_int_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_dec_frame(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 106
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 0, %9
  %11 = lshr i32 %10, 11
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 38
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #6, !srcloc !17
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  store i32 0, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  store i32 %25, ptr %26, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %0, i32 noundef 1)
  br label %81

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, ptr @mfc_debug_level, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.s5p_mfc_run_dec_frame, i32 noundef 1175) #7
  br label %81

36:                                               ; preds = %27
  %37 = getelementptr i8, ptr %29, i32 -4
  %38 = getelementptr i8, ptr %29, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = tail call ptr @vb2_plane_cookie(ptr noundef %41, i32 noundef 0) #6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 25
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr inbounds %struct.vb2_buffer, ptr %46, i32 0, i32 10, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %49, i32 0, i32 24
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %43, %51
  %53 = lshr i32 %52, 11
  %54 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %49, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 38
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %61 = load ptr, ptr %54, align 4
  %62 = getelementptr i8, ptr %61, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %48) #6, !srcloc !17
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 24
  store i32 %45, ptr %65, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  store i32 %67, ptr %68, align 4
  %69 = load ptr, ptr %37, align 4
  %70 = getelementptr inbounds %struct.vb2_buffer, ptr %69, i32 0, i32 10, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %36
  %74 = load i32, ptr @mfc_debug_level, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5p_mfc_run_dec_frame, i32 noundef 1187) #7
  br label %78

78:                                               ; preds = %76, %73
  store i32 106, ptr %4, align 4
  br label %79

79:                                               ; preds = %78, %36
  %80 = phi i32 [ 1, %78 ], [ %1, %36 ]
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %0, i32 noundef %80)
  br label %81

81:                                               ; preds = %79, %34, %31, %7
  %82 = phi i32 [ 0, %7 ], [ 0, %79 ], [ -11, %34 ], [ -11, %31 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_dec(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = load i32, ptr @mfc_debug_level, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec, i32 noundef 1254) #7
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s5p_mfc_buf_size, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 50, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = lshr i32 %23, 11
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %28 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 8284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !17
  %32 = load i32, ptr @mfc_debug_level, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %8
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr inbounds %struct.vb2_buffer, ptr %35, i32 0, i32 10, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec, i32 noundef 1258, i32 noundef %37) #7
  br label %39

39:                                               ; preds = %34, %8
  %40 = load ptr, ptr %12, align 4
  %41 = tail call ptr @vb2_plane_cookie(ptr noundef %40, i32 noundef 0) #6
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %43, i32 0, i32 10, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %47 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %46, i32 0, i32 24
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %42, %48
  %50 = lshr i32 %49, 11
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %46, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 38
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr i8, ptr %56, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %58 = load ptr, ptr %51, align 4
  %59 = getelementptr i8, ptr %58, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %45) #6, !srcloc !17
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 24
  store i32 0, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %64, ptr %65, align 4
  %66 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %66, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #6, !srcloc !17
  %72 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %74, label %75, label %80

75:                                               ; preds = %39
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 41
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %69, align 4
  %79 = getelementptr i8, ptr %78, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #6, !srcloc !17
  br label %83

80:                                               ; preds = %39
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr i8, ptr %81, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #6, !srcloc !17
  br label %83

83:                                               ; preds = %80, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 40
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 31
  %87 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 43
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 30
  %90 = or i32 %89, %86
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 42
  %92 = load i32, ptr %91, align 4
  %93 = shl i32 %92, 16
  %94 = and i32 %93, 16711680
  %95 = or i32 %90, %94
  %96 = load ptr, ptr %69, align 4
  %97 = getelementptr i8, ptr %96, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %98 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, 65536
  %101 = load ptr, ptr %69, align 4
  %102 = getelementptr i8, ptr %101, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #6, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_init_dec_buffers(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1293) #7
  br label %315

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1297) #7
  br label %315

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %10, i32 -4
  %16 = load i32, ptr @mfc_debug_level, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1302, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %18, %14
  %24 = load ptr, ptr %15, align 4
  %25 = tail call ptr @vb2_plane_cookie(ptr noundef %24, i32 noundef 0) #6
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %27, i32 0, i32 10, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %30, i32 0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %26, %32
  %34 = lshr i32 %33, 11
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %30, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %38 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 38
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr i8, ptr %40, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %42 = load ptr, ptr %35, align 4
  %43 = getelementptr i8, ptr %42, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %29) #6, !srcloc !17
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  store i32 0, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 8296
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !51
  %63 = and i32 %62, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 47
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, %63
  %67 = load ptr, ptr %59, align 4
  %68 = getelementptr i8, ptr %67, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #6, !srcloc !17
  %69 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %69, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #6, !srcloc !17
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %76 = load i32, ptr %75, align 4
  switch i32 %76, label %197 [
    i32 0, label %77
    i32 3, label %92
    i32 5, label %125
    i32 2, label %152
    i32 6, label %152
    i32 4, label %199
  ]

77:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %78 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %52, %79
  %81 = lshr i32 %80, 11
  %82 = load ptr, ptr %59, align 4
  %83 = getelementptr i8, ptr %82, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #6, !srcloc !17
  %84 = add i32 %52, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %85 = load i32, ptr %78, align 4
  %86 = sub i32 %84, %85
  %87 = lshr i32 %86, 11
  %88 = load ptr, ptr %59, align 4
  %89 = getelementptr i8, ptr %88, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #6, !srcloc !17
  %90 = add i32 %52, 49152
  %91 = add i32 %54, -49152
  br label %199

92:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %93 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 %52, %94
  %96 = lshr i32 %95, 11
  %97 = load ptr, ptr %59, align 4
  %98 = getelementptr i8, ptr %97, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #6, !srcloc !17
  %99 = add i32 %52, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %100 = load i32, ptr %93, align 4
  %101 = sub i32 %99, %100
  %102 = lshr i32 %101, 11
  %103 = load ptr, ptr %59, align 4
  %104 = getelementptr i8, ptr %103, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #6, !srcloc !17
  %105 = add i32 %52, 86016
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %106 = load i32, ptr %93, align 4
  %107 = sub i32 %105, %106
  %108 = lshr i32 %107, 11
  %109 = load ptr, ptr %59, align 4
  %110 = getelementptr i8, ptr %109, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #6, !srcloc !17
  %111 = add i32 %52, 225280
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %112 = load i32, ptr %93, align 4
  %113 = sub i32 %111, %112
  %114 = lshr i32 %113, 11
  %115 = load ptr, ptr %59, align 4
  %116 = getelementptr i8, ptr %115, i32 1704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #6, !srcloc !17
  %117 = add i32 %52, 294912
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %118 = load i32, ptr %93, align 4
  %119 = sub i32 %117, %118
  %120 = lshr i32 %119, 11
  %121 = load ptr, ptr %59, align 4
  %122 = getelementptr i8, ptr %121, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #6, !srcloc !17
  %123 = add i32 %52, 327680
  %124 = add i32 %54, -327680
  br label %199

125:                                              ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %126 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24
  %127 = load i32, ptr %126, align 4
  %128 = sub i32 %52, %127
  %129 = lshr i32 %128, 11
  %130 = load ptr, ptr %59, align 4
  %131 = getelementptr i8, ptr %130, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #6, !srcloc !17
  %132 = add i32 %52, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %133 = load i32, ptr %126, align 4
  %134 = sub i32 %132, %133
  %135 = lshr i32 %134, 11
  %136 = load ptr, ptr %59, align 4
  %137 = getelementptr i8, ptr %136, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #6, !srcloc !17
  %138 = add i32 %52, 102400
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %139 = load i32, ptr %126, align 4
  %140 = sub i32 %138, %139
  %141 = lshr i32 %140, 11
  %142 = load ptr, ptr %59, align 4
  %143 = getelementptr i8, ptr %142, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #6, !srcloc !17
  %144 = add i32 %52, 241664
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %145 = load i32, ptr %126, align 4
  %146 = sub i32 %144, %145
  %147 = lshr i32 %146, 11
  %148 = load ptr, ptr %59, align 4
  %149 = getelementptr i8, ptr %148, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #6, !srcloc !17
  %150 = add i32 %52, 258048
  %151 = add i32 %54, -258048
  br label %199

152:                                              ; preds = %23, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %153 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24
  %154 = load i32, ptr %153, align 4
  %155 = sub i32 %52, %154
  %156 = lshr i32 %155, 11
  %157 = load ptr, ptr %59, align 4
  %158 = getelementptr i8, ptr %157, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #6, !srcloc !17
  %159 = add i32 %52, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %160 = load i32, ptr %153, align 4
  %161 = sub i32 %159, %160
  %162 = lshr i32 %161, 11
  %163 = load ptr, ptr %59, align 4
  %164 = getelementptr i8, ptr %163, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #6, !srcloc !17
  %165 = add i32 %52, 49152
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %166 = load i32, ptr %153, align 4
  %167 = sub i32 %165, %166
  %168 = lshr i32 %167, 11
  %169 = load ptr, ptr %59, align 4
  %170 = getelementptr i8, ptr %169, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #6, !srcloc !17
  %171 = add i32 %52, 118784
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %172 = load i32, ptr %153, align 4
  %173 = sub i32 %171, %172
  %174 = lshr i32 %173, 11
  %175 = load ptr, ptr %59, align 4
  %176 = getelementptr i8, ptr %175, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #6, !srcloc !17
  %177 = add i32 %52, 258048
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %178 = load i32, ptr %153, align 4
  %179 = sub i32 %177, %178
  %180 = lshr i32 %179, 11
  %181 = load ptr, ptr %59, align 4
  %182 = getelementptr i8, ptr %181, i32 1692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #6, !srcloc !17
  %183 = add i32 %52, 260096
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %184 = load i32, ptr %153, align 4
  %185 = sub i32 %183, %184
  %186 = lshr i32 %185, 11
  %187 = load ptr, ptr %59, align 4
  %188 = getelementptr i8, ptr %187, i32 1696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #6, !srcloc !17
  %189 = add i32 %52, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %190 = load i32, ptr %153, align 4
  %191 = sub i32 %189, %190
  %192 = lshr i32 %191, 11
  %193 = load ptr, ptr %59, align 4
  %194 = getelementptr i8, ptr %193, i32 1700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #6, !srcloc !17
  %195 = add i32 %52, 264192
  %196 = add i32 %54, -264192
  br label %199

197:                                              ; preds = %23
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 463, i32 noundef %76) #7
  br label %311

199:                                              ; preds = %152, %125, %92, %77, %23
  %200 = phi i32 [ %54, %23 ], [ %196, %152 ], [ %151, %125 ], [ %124, %92 ], [ %91, %77 ]
  %201 = phi i32 [ %52, %23 ], [ %195, %152 ], [ %150, %125 ], [ %123, %92 ], [ %90, %77 ]
  %202 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 22
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 23
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 24
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr @mfc_debug_level, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 470, i32 noundef %203, i32 noundef %205, i32 noundef %207) #7
  br label %212

212:                                              ; preds = %210, %199
  %213 = load i32, ptr %64, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %275, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24
  %217 = getelementptr %struct.s5p_mfc_dev, ptr %50, i32 0, i32 24, i32 1
  br label %218

218:                                              ; preds = %269, %215
  %219 = phi i32 [ 0, %215 ], [ %272, %269 ]
  %220 = phi i32 [ %56, %215 ], [ %271, %269 ]
  %221 = phi i32 [ %58, %215 ], [ %270, %269 ]
  %222 = load i32, ptr @mfc_debug_level, align 4
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 34, i32 %219, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 474, i32 noundef %219, i32 noundef %226) #7
  br label %228

228:                                              ; preds = %224, %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %229 = getelementptr %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 34, i32 %219, i32 2
  %230 = load i32, ptr %229, align 4
  %231 = load i32, ptr %217, align 4
  %232 = sub i32 %230, %231
  %233 = lshr i32 %232, 11
  %234 = load ptr, ptr %59, align 4
  %235 = shl i32 %219, 2
  %236 = add i32 %235, 1792
  %237 = getelementptr i8, ptr %234, i32 %236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %233) #6, !srcloc !17
  %238 = load i32, ptr @mfc_debug_level, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %244

240:                                              ; preds = %228
  %241 = getelementptr inbounds %struct.anon.101, ptr %229, i32 0, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 478, i32 noundef %219, i32 noundef %242) #7
  br label %244

244:                                              ; preds = %240, %228
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %245 = getelementptr inbounds %struct.anon.101, ptr %229, i32 0, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = load i32, ptr %216, align 4
  %248 = sub i32 %246, %247
  %249 = lshr i32 %248, 11
  %250 = load ptr, ptr %59, align 4
  %251 = add i32 %235, 1536
  %252 = getelementptr i8, ptr %250, i32 %251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %249) #6, !srcloc !17
  %253 = load i32, ptr %75, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %244
  %256 = load i32, ptr @mfc_debug_level, align 4
  %257 = icmp sgt i32 %256, 1
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 483, i32 noundef %220, i32 noundef %221) #7
  br label %260

260:                                              ; preds = %258, %255
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %261 = load i32, ptr %217, align 4
  %262 = sub i32 %220, %261
  %263 = lshr i32 %262, 11
  %264 = load ptr, ptr %59, align 4
  %265 = add i32 %235, 1920
  %266 = getelementptr i8, ptr %264, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %263) #6, !srcloc !17
  %267 = add i32 %220, %207
  %268 = sub i32 %221, %207
  br label %269

269:                                              ; preds = %260, %244
  %270 = phi i32 [ %268, %260 ], [ %221, %244 ]
  %271 = phi i32 [ %267, %260 ], [ %220, %244 ]
  %272 = add nuw i32 %219, 1
  %273 = load i32, ptr %64, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %218, label %275

275:                                              ; preds = %269, %212
  %276 = phi i32 [ %58, %212 ], [ %270, %269 ]
  %277 = load i32, ptr @mfc_debug_level, align 4
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 490, i32 noundef %201, i32 noundef %200) #7
  %281 = load i32, ptr @mfc_debug_level, align 4
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, ptr %64, align 4
  %285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 492, i32 noundef %200, i32 noundef %276, i32 noundef %284) #7
  br label %286

286:                                              ; preds = %283, %279, %275
  %287 = icmp slt i32 %200, 0
  %288 = icmp slt i32 %276, 0
  %289 = select i1 %287, i1 true, i1 %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32, ptr @mfc_debug_level, align 4
  %292 = icmp sgt i32 %291, 1
  br i1 %292, label %293, label %311

293:                                              ; preds = %290
  %294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.s5p_mfc_set_dec_frame_buffer_v5, i32 noundef 494) #7
  br label %311

295:                                              ; preds = %286
  %296 = load ptr, ptr %44, align 4
  %297 = getelementptr i8, ptr %296, i32 100
  store i32 %203, ptr %297, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %298 = load ptr, ptr %44, align 4
  %299 = getelementptr i8, ptr %298, i32 104
  store i32 %205, ptr %299, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %300 = load i32, ptr %75, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %295
  %303 = load ptr, ptr %44, align 4
  %304 = getelementptr i8, ptr %303, i32 108
  store i32 %207, ptr %304, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  br label %305

305:                                              ; preds = %302, %295
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %306 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %307 = load i32, ptr %306, align 4
  %308 = or i32 %307, 262144
  %309 = load ptr, ptr %59, align 4
  %310 = getelementptr i8, ptr %309, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %308) #6, !srcloc !17
  br label %315

311:                                              ; preds = %293, %290, %197
  %312 = phi i32 [ -12, %290 ], [ -12, %293 ], [ -22, %197 ]
  %313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.s5p_mfc_run_init_dec_buffers, i32 noundef 1309) #7
  %314 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 109, ptr %314, align 4
  br label %315

315:                                              ; preds = %311, %305, %12, %6
  %316 = phi i32 [ -11, %6 ], [ -5, %12 ], [ %312, %311 ], [ 0, %305 ]
  ret i32 %316
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_res_change(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 0, %4
  %6 = lshr i32 %5, 11
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 38
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !17
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  store i32 0, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %20, ptr %21, align 4
  tail call fastcc void @s5p_mfc_decode_one_frame_v5(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_mfc_run_enc_frame(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 11
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 106
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %166

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1203) #7
  br label %166

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, ptr @mfc_debug_level, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %166

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1207) #7
  br label %166

24:                                               ; preds = %15
  %25 = load volatile ptr, ptr %3, align 4
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = getelementptr %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %30 = load i32, ptr %28, align 4
  %31 = sub i32 %29, %30
  %32 = lshr i32 %31, 11
  %33 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %36 = load i32, ptr %28, align 4
  %37 = sub i32 %29, %36
  %38 = lshr i32 %37, 11
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr i8, ptr %39, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !17
  br label %91

41:                                               ; preds = %24
  %42 = getelementptr i8, ptr %25, i32 -4
  %43 = getelementptr i8, ptr %25, i32 16
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = load ptr, ptr %42, align 4
  %47 = getelementptr inbounds %struct.vb2_buffer, ptr %46, i32 0, i32 10, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = getelementptr %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %54 = getelementptr %struct.s5p_mfc_dev, ptr %53, i32 0, i32 24, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %52, %55
  %57 = lshr i32 %56, 11
  %58 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %53, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %61 = load i32, ptr %54, align 4
  %62 = sub i32 %52, %61
  %63 = lshr i32 %62, 11
  %64 = load ptr, ptr %58, align 4
  %65 = getelementptr i8, ptr %64, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !17
  %66 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 106, ptr %66, align 4
  br label %91

67:                                               ; preds = %41
  %68 = tail call ptr @vb2_plane_cookie(ptr noundef %46, i32 noundef 0) #6
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %42, align 4
  %71 = tail call ptr @vb2_plane_cookie(ptr noundef %70, i32 noundef 1) #6
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %74 = getelementptr %struct.s5p_mfc_dev, ptr %73, i32 0, i32 24, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %69, %75
  %77 = lshr i32 %76, 11
  %78 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %73, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %81 = load i32, ptr %74, align 4
  %82 = sub i32 %72, %81
  %83 = lshr i32 %82, 11
  %84 = load ptr, ptr %78, align 4
  %85 = getelementptr i8, ptr %84, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #6, !srcloc !17
  %86 = load i32, ptr %43, align 4
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 106, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %67, %50, %27
  %92 = phi ptr [ null, %27 ], [ %42, %50 ], [ %42, %89 ], [ %42, %67 ]
  %93 = load ptr, ptr %16, align 4
  %94 = getelementptr i8, ptr %93, i32 -4
  %95 = getelementptr i8, ptr %93, i32 16
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = load ptr, ptr %94, align 4
  %99 = tail call ptr @vb2_plane_cookie(ptr noundef %98, i32 noundef 0) #6
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %94, align 4
  %102 = getelementptr inbounds %struct.vb2_buffer, ptr %101, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.vb2_buffer, ptr %101, i32 0, i32 10, i32 0, i32 4
  %107 = load i32, ptr %106, align 8
  br label %108

108:                                              ; preds = %105, %91
  %109 = phi i32 [ %107, %105 ], [ 0, %91 ]
  %110 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %111 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %110, i32 0, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %100, %112
  %114 = lshr i32 %113, 11
  %115 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %110, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %114) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %118 = load ptr, ptr %115, align 4
  %119 = getelementptr i8, ptr %118, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %109) #6, !srcloc !17
  %120 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %121, ptr %122, align 4
  %123 = load i32, ptr @mfc_debug_level, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %136

125:                                              ; preds = %108
  %126 = icmp eq ptr %92, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %92, align 4
  %129 = getelementptr inbounds %struct.vb2_buffer, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32 [ %130, %127 ], [ -1, %125 ]
  %133 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %134 = load i32, ptr %133, align 4
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.s5p_mfc_run_enc_frame, i32 noundef 1243, i32 noundef %132, i32 noundef %134) #7
  br label %136

136:                                              ; preds = %131, %108
  %137 = load ptr, ptr %0, align 4
  %138 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %139, align 4
  switch i32 %140, label %149 [
    i32 842091854, label %141
    i32 842091860, label %145
  ]

141:                                              ; preds = %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %142 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %137, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 0) #6, !srcloc !17
  br label %149

145:                                              ; preds = %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %146 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %137, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %147, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 3) #6, !srcloc !17
  br label %149

149:                                              ; preds = %145, %141, %136
  %150 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %151 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %150, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %152) #6, !srcloc !17
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 106
  %159 = select i1 %158, i32 196608, i32 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %160 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, %159
  %163 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %137, i32 0, i32 5
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %164, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %162) #6, !srcloc !17
  br label %166

166:                                              ; preds = %149, %22, %19, %13, %10
  %167 = phi i32 [ 0, %149 ], [ -11, %13 ], [ -11, %10 ], [ -11, %22 ], [ -11, %19 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_run_init_enc(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 28, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 29, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 127
  %14 = and i32 %13, -128
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 31
  %18 = and i32 %17, -32
  %19 = mul i32 %18, %14
  %20 = add i32 %19, 8191
  %21 = and i32 %20, -8192
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 20
  %25 = add i32 %12, 143
  %26 = and i32 %25, -128
  %27 = select i1 %24, i32 31, i32 35
  %28 = select i1 %24, i32 %14, i32 %26
  %29 = ashr i32 %16, 1
  %30 = add nsw i32 %27, %29
  %31 = and i32 %30, -32
  %32 = mul i32 %31, %28
  %33 = add i32 %32, 8191
  %34 = and i32 %33, -8192
  %35 = load i32, ptr @mfc_debug_level, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v5, i32 noundef 567, i32 noundef %6, i32 noundef %10) #7
  %39 = load i32, ptr %22, align 4
  br label %40

40:                                               ; preds = %37, %1
  %41 = phi i32 [ %39, %37 ], [ %23, %1 ]
  switch i32 %41, label %286 [
    i32 20, label %176
    i32 22, label %106
    i32 23, label %42
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24
  %44 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %45 = getelementptr %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %46 = load i32, ptr %43, align 4
  %47 = sub i32 %4, %46
  %48 = lshr i32 %47, 11
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr i8, ptr %49, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #6, !srcloc !17
  %51 = add i32 %21, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %52 = load i32, ptr %45, align 4
  %53 = sub i32 %8, %52
  %54 = lshr i32 %53, 11
  %55 = load ptr, ptr %44, align 4
  %56 = getelementptr i8, ptr %55, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #6, !srcloc !17
  %57 = add i32 %21, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %58 = load i32, ptr %43, align 4
  %59 = sub i32 %51, %58
  %60 = lshr i32 %59, 11
  %61 = load ptr, ptr %44, align 4
  %62 = getelementptr i8, ptr %61, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %63 = load i32, ptr %45, align 4
  %64 = sub i32 %57, %63
  %65 = lshr i32 %64, 11
  %66 = load ptr, ptr %44, align 4
  %67 = getelementptr i8, ptr %66, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #6, !srcloc !17
  %68 = add i32 %57, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %69 = load i32, ptr %45, align 4
  %70 = sub i32 %68, %69
  %71 = lshr i32 %70, 11
  %72 = load ptr, ptr %44, align 4
  %73 = getelementptr i8, ptr %72, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !17
  %74 = add i32 %34, %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %75 = load i32, ptr %45, align 4
  %76 = sub i32 %74, %75
  %77 = lshr i32 %76, 11
  %78 = load ptr, ptr %44, align 4
  %79 = getelementptr i8, ptr %78, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #6, !srcloc !17
  %80 = add i32 %74, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %81 = load i32, ptr %45, align 4
  %82 = sub i32 %80, %81
  %83 = lshr i32 %82, 11
  %84 = load ptr, ptr %44, align 4
  %85 = getelementptr i8, ptr %84, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #6, !srcloc !17
  %86 = add i32 %80, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %87 = load i32, ptr %45, align 4
  %88 = sub i32 %86, %87
  %89 = lshr i32 %88, 11
  %90 = load ptr, ptr %44, align 4
  %91 = getelementptr i8, ptr %90, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #6, !srcloc !17
  %92 = add i32 %51, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %93 = load i32, ptr %43, align 4
  %94 = sub i32 %92, %93
  %95 = lshr i32 %94, 11
  %96 = load ptr, ptr %44, align 4
  %97 = getelementptr i8, ptr %96, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !17
  %98 = add i32 %92, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %99 = load i32, ptr %43, align 4
  %100 = sub i32 %98, %99
  %101 = lshr i32 %100, 11
  %102 = load ptr, ptr %44, align 4
  %103 = getelementptr i8, ptr %102, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #6, !srcloc !17
  %104 = load i32, ptr @mfc_debug_level, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %277, label %288

106:                                              ; preds = %40
  %107 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24
  %108 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %109 = getelementptr %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %110 = load i32, ptr %107, align 4
  %111 = sub i32 %4, %110
  %112 = lshr i32 %111, 11
  %113 = load ptr, ptr %108, align 4
  %114 = getelementptr i8, ptr %113, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #6, !srcloc !17
  %115 = add i32 %21, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %116 = load i32, ptr %109, align 4
  %117 = sub i32 %8, %116
  %118 = lshr i32 %117, 11
  %119 = load ptr, ptr %108, align 4
  %120 = getelementptr i8, ptr %119, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #6, !srcloc !17
  %121 = add i32 %21, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %122 = load i32, ptr %107, align 4
  %123 = sub i32 %115, %122
  %124 = lshr i32 %123, 11
  %125 = load ptr, ptr %108, align 4
  %126 = getelementptr i8, ptr %125, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %127 = load i32, ptr %109, align 4
  %128 = sub i32 %121, %127
  %129 = lshr i32 %128, 11
  %130 = load ptr, ptr %108, align 4
  %131 = getelementptr i8, ptr %130, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #6, !srcloc !17
  %132 = add i32 %121, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %133 = load i32, ptr %109, align 4
  %134 = sub i32 %132, %133
  %135 = lshr i32 %134, 11
  %136 = load ptr, ptr %108, align 4
  %137 = getelementptr i8, ptr %136, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #6, !srcloc !17
  %138 = add i32 %34, %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %139 = load i32, ptr %109, align 4
  %140 = sub i32 %138, %139
  %141 = lshr i32 %140, 11
  %142 = load ptr, ptr %108, align 4
  %143 = getelementptr i8, ptr %142, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #6, !srcloc !17
  %144 = add i32 %138, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %145 = load i32, ptr %109, align 4
  %146 = sub i32 %144, %145
  %147 = lshr i32 %146, 11
  %148 = load ptr, ptr %108, align 4
  %149 = getelementptr i8, ptr %148, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #6, !srcloc !17
  %150 = add i32 %144, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %151 = load i32, ptr %109, align 4
  %152 = sub i32 %150, %151
  %153 = lshr i32 %152, 11
  %154 = load ptr, ptr %108, align 4
  %155 = getelementptr i8, ptr %154, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #6, !srcloc !17
  %156 = add i32 %115, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %157 = load i32, ptr %107, align 4
  %158 = sub i32 %156, %157
  %159 = lshr i32 %158, 11
  %160 = load ptr, ptr %108, align 4
  %161 = getelementptr i8, ptr %160, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #6, !srcloc !17
  %162 = add i32 %156, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %163 = load i32, ptr %107, align 4
  %164 = sub i32 %162, %163
  %165 = lshr i32 %164, 11
  %166 = load ptr, ptr %108, align 4
  %167 = getelementptr i8, ptr %166, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #6, !srcloc !17
  %168 = add i32 %156, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %169 = load i32, ptr %107, align 4
  %170 = sub i32 %168, %169
  %171 = lshr i32 %170, 11
  %172 = load ptr, ptr %108, align 4
  %173 = getelementptr i8, ptr %172, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #6, !srcloc !17
  %174 = load i32, ptr @mfc_debug_level, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %268, label %288

176:                                              ; preds = %40
  %177 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24
  %178 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %179 = getelementptr %struct.s5p_mfc_dev, ptr %2, i32 0, i32 24, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %180 = load i32, ptr %177, align 4
  %181 = sub i32 %4, %180
  %182 = lshr i32 %181, 11
  %183 = load ptr, ptr %178, align 4
  %184 = getelementptr i8, ptr %183, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #6, !srcloc !17
  %185 = add i32 %21, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %186 = load i32, ptr %179, align 4
  %187 = sub i32 %8, %186
  %188 = lshr i32 %187, 11
  %189 = load ptr, ptr %178, align 4
  %190 = getelementptr i8, ptr %189, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #6, !srcloc !17
  %191 = add i32 %21, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %192 = load i32, ptr %177, align 4
  %193 = sub i32 %185, %192
  %194 = lshr i32 %193, 11
  %195 = load ptr, ptr %178, align 4
  %196 = getelementptr i8, ptr %195, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %197 = load i32, ptr %179, align 4
  %198 = sub i32 %191, %197
  %199 = lshr i32 %198, 11
  %200 = load ptr, ptr %178, align 4
  %201 = getelementptr i8, ptr %200, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #6, !srcloc !17
  %202 = add i32 %191, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %203 = load i32, ptr %179, align 4
  %204 = sub i32 %202, %203
  %205 = lshr i32 %204, 11
  %206 = load ptr, ptr %178, align 4
  %207 = getelementptr i8, ptr %206, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #6, !srcloc !17
  %208 = add i32 %34, %202
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %209 = load i32, ptr %179, align 4
  %210 = sub i32 %208, %209
  %211 = lshr i32 %210, 11
  %212 = load ptr, ptr %178, align 4
  %213 = getelementptr i8, ptr %212, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #6, !srcloc !17
  %214 = add i32 %208, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %215 = load i32, ptr %179, align 4
  %216 = sub i32 %214, %215
  %217 = lshr i32 %216, 11
  %218 = load ptr, ptr %178, align 4
  %219 = getelementptr i8, ptr %218, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %217) #6, !srcloc !17
  %220 = add i32 %214, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %221 = load i32, ptr %179, align 4
  %222 = sub i32 %220, %221
  %223 = lshr i32 %222, 11
  %224 = load ptr, ptr %178, align 4
  %225 = getelementptr i8, ptr %224, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #6, !srcloc !17
  %226 = add i32 %220, %34
  %227 = add i32 %185, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %228 = load i32, ptr %177, align 4
  %229 = sub i32 %227, %228
  %230 = lshr i32 %229, 11
  %231 = load ptr, ptr %178, align 4
  %232 = getelementptr i8, ptr %231, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #6, !srcloc !17
  %233 = add i32 %227, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %234 = load i32, ptr %177, align 4
  %235 = sub i32 %233, %234
  %236 = lshr i32 %235, 11
  %237 = load ptr, ptr %178, align 4
  %238 = getelementptr i8, ptr %237, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #6, !srcloc !17
  %239 = add i32 %227, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %240 = load i32, ptr %177, align 4
  %241 = sub i32 %239, %240
  %242 = lshr i32 %241, 11
  %243 = load ptr, ptr %178, align 4
  %244 = getelementptr i8, ptr %243, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #6, !srcloc !17
  %245 = add i32 %227, 196608
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %246 = load i32, ptr %179, align 4
  %247 = sub i32 %226, %246
  %248 = lshr i32 %247, 11
  %249 = load ptr, ptr %178, align 4
  %250 = getelementptr i8, ptr %249, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %251 = load i32, ptr %177, align 4
  %252 = sub i32 %245, %251
  %253 = lshr i32 %252, 11
  %254 = load ptr, ptr %178, align 4
  %255 = getelementptr i8, ptr %254, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %253) #6, !srcloc !17
  %256 = load i32, ptr @mfc_debug_level, align 4
  %257 = icmp sgt i32 %256, 1
  br i1 %257, label %258, label %288

258:                                              ; preds = %176
  %259 = shl i32 %20, 1
  %260 = and i32 %259, -16384
  %261 = mul i32 %34, -4
  %262 = add i32 %6, -262144
  %263 = sub i32 %262, %260
  %264 = add i32 %10, -16384
  %265 = sub i32 %264, %260
  %266 = add i32 %265, %261
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v5, i32 noundef 607, i32 noundef %263, i32 noundef %266) #7
  br label %288

268:                                              ; preds = %106
  %269 = shl i32 %20, 1
  %270 = and i32 %269, -16384
  %271 = mul i32 %34, -4
  %272 = sub i32 %10, %270
  %273 = add i32 %272, %271
  %274 = add i32 %6, -196608
  %275 = sub i32 %274, %270
  %276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v5, i32 noundef 638, i32 noundef %275, i32 noundef %273) #7
  br label %288

277:                                              ; preds = %42
  %278 = shl i32 %20, 1
  %279 = and i32 %278, -16384
  %280 = mul i32 %34, -4
  %281 = sub i32 %10, %279
  %282 = add i32 %281, %280
  %283 = add i32 %6, -131072
  %284 = sub i32 %283, %279
  %285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v5, i32 noundef 664, i32 noundef %284, i32 noundef %282) #7
  br label %288

286:                                              ; preds = %40
  %287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.s5p_mfc_set_enc_ref_buffer_v5, i32 noundef 668, i32 noundef %41) #7
  br label %288

288:                                              ; preds = %286, %277, %268, %258, %176, %106, %42
  %289 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 12
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr i8, ptr %290, i32 -4
  %292 = load ptr, ptr %291, align 4
  %293 = tail call ptr @vb2_plane_cookie(ptr noundef %292, i32 noundef 0) #6
  %294 = load i32, ptr %293, align 4
  %295 = load ptr, ptr %291, align 4
  %296 = getelementptr inbounds %struct.vb2_buffer, ptr %295, i32 0, i32 4
  %297 = load i32, ptr %296, align 8
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %288
  %300 = getelementptr inbounds %struct.vb2_buffer, ptr %295, i32 0, i32 10, i32 0, i32 4
  %301 = load i32, ptr %300, align 8
  br label %302

302:                                              ; preds = %299, %288
  %303 = phi i32 [ %301, %299 ], [ 0, %288 ]
  %304 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %305 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %304, i32 0, i32 24
  %306 = load i32, ptr %305, align 4
  %307 = sub i32 %294, %306
  %308 = lshr i32 %307, 11
  %309 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %304, i32 0, i32 5
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %308) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %312 = load ptr, ptr %309, align 4
  %313 = getelementptr i8, ptr %312, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %303) #6, !srcloc !17
  %314 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 27
  store i32 %315, ptr %316, align 4
  %317 = load ptr, ptr %0, align 4
  %318 = load i32, ptr %22, align 4
  switch i32 %318, label %764 [
    i32 20, label %319
    i32 22, label %570
    i32 23, label %687
  ]

319:                                              ; preds = %302
  %320 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #6
  %321 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr i8, ptr %322, i32 50436
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !97
  %325 = and i32 %324, -196609
  %326 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %327 = load i8, ptr %326, align 4
  %328 = zext i8 %327 to i32
  %329 = shl nuw nsw i32 %328, 16
  %330 = or i32 %329, %325
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %331 = load ptr, ptr %321, align 4
  %332 = getelementptr i8, ptr %331, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 %330) #6, !srcloc !17
  %333 = load ptr, ptr %321, align 4
  %334 = getelementptr i8, ptr %333, i32 2096
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !99
  %336 = and i32 %335, -65344
  %337 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 24
  %338 = load i32, ptr %337, align 4
  %339 = shl i32 %338, 8
  %340 = or i32 %339, %336
  %341 = load i32, ptr %320, align 4
  %342 = or i32 %340, %341
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %343 = load ptr, ptr %321, align 4
  %344 = getelementptr i8, ptr %343, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 %342) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %345 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 26
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %321, align 4
  %348 = getelementptr i8, ptr %347, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %346) #6, !srcloc !17
  %349 = load i32, ptr %345, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %319
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %352 = load i32, ptr %15, align 4
  %353 = ashr i32 %352, 1
  %354 = load ptr, ptr %321, align 4
  %355 = getelementptr i8, ptr %354, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %353) #6, !srcloc !17
  br label %356

356:                                              ; preds = %351, %319
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %357 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 1
  %358 = load i32, ptr %357, align 4
  %359 = load ptr, ptr %321, align 4
  %360 = getelementptr i8, ptr %359, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %358) #6, !srcloc !17
  %361 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 2
  %362 = load i8, ptr %361, align 4
  %363 = sext i8 %362 to i32
  %364 = icmp slt i8 %362, 0
  %365 = sub nsw i32 256, %363
  %366 = or i32 %365, 16
  %367 = and i32 %363, 15
  %368 = select i1 %364, i32 %366, i32 %367
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %369 = load ptr, ptr %321, align 4
  %370 = getelementptr i8, ptr %369, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %368) #6, !srcloc !17
  %371 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 3
  %372 = load i8, ptr %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp slt i8 %372, 0
  %375 = sub nsw i32 256, %373
  %376 = or i32 %375, 16
  %377 = and i32 %373, 15
  %378 = select i1 %374, i32 %376, i32 %377
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %379 = load ptr, ptr %321, align 4
  %380 = getelementptr i8, ptr %379, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %378) #6, !srcloc !17
  %381 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = icmp eq i32 %382, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %384 = load ptr, ptr %321, align 4
  %385 = getelementptr i8, ptr %384, i32 53252
  br i1 %383, label %386, label %387

386:                                              ; preds = %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 1) #6, !srcloc !17
  br label %388

387:                                              ; preds = %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 0) #6, !srcloc !17
  br label %388

388:                                              ; preds = %387, %386
  %389 = load ptr, ptr %321, align 4
  %390 = getelementptr i8, ptr %389, i32 53264
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !106
  %392 = and i32 %391, -128
  %393 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 6
  %394 = load i8, ptr %393, align 1
  %395 = zext i8 %394 to i32
  %396 = shl nuw nsw i32 %395, 5
  %397 = or i32 %396, %392
  %398 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 5
  %399 = load i8, ptr %398, align 4
  %400 = zext i8 %399 to i32
  %401 = or i32 %397, %400
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %402 = load ptr, ptr %321, align 4
  %403 = getelementptr i8, ptr %402, i32 53264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %401) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %404 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 7
  %405 = load i32, ptr %404, align 4
  %406 = load ptr, ptr %321, align 4
  %407 = getelementptr i8, ptr %406, i32 53300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %407, i32 %405) #6, !srcloc !17
  %408 = load ptr, ptr %321, align 4
  %409 = getelementptr i8, ptr %408, i32 50592
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %409) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !109
  %411 = and i32 %410, -320
  %412 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 14
  %413 = load i32, ptr %412, align 4
  %414 = shl i32 %413, 8
  %415 = or i32 %414, %411
  %416 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 18
  %417 = load i8, ptr %416, align 2
  %418 = zext i8 %417 to i32
  %419 = or i32 %415, %418
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %420 = load ptr, ptr %321, align 4
  %421 = getelementptr i8, ptr %420, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 %419) #6, !srcloc !17
  %422 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %423 = load i32, ptr %422, align 4
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %437, label %425

425:                                              ; preds = %388
  %426 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %425
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %430 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %431 = load i32, ptr %430, align 4
  %432 = mul i32 %431, 1000
  %433 = load i32, ptr %426, align 4
  %434 = udiv i32 %432, %433
  %435 = load ptr, ptr %321, align 4
  %436 = getelementptr i8, ptr %435, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %436, i32 %434) #6, !srcloc !17
  br label %440

437:                                              ; preds = %425, %388
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %438 = load ptr, ptr %321, align 4
  %439 = getelementptr i8, ptr %438, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 0) #6, !srcloc !17
  br label %440

440:                                              ; preds = %437, %429
  %441 = load ptr, ptr %321, align 4
  %442 = getelementptr i8, ptr %441, i32 50604
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %442) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !113
  %444 = and i32 %443, -16192
  %445 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 20
  %446 = load i8, ptr %445, align 4
  %447 = zext i8 %446 to i32
  %448 = shl nuw nsw i32 %447, 8
  %449 = or i32 %448, %444
  %450 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 19
  %451 = load i8, ptr %450, align 1
  %452 = zext i8 %451 to i32
  %453 = or i32 %449, %452
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %454 = load ptr, ptr %321, align 4
  %455 = getelementptr i8, ptr %454, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %453) #6, !srcloc !17
  %456 = load i32, ptr %412, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %480, label %458

458:                                              ; preds = %440
  %459 = load ptr, ptr %321, align 4
  %460 = getelementptr i8, ptr %459, i32 50612
  %461 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !115
  %462 = and i32 %461, -16
  %463 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 8
  %464 = load i32, ptr %463, align 4
  %465 = shl i32 %464, 3
  %466 = or i32 %465, %462
  %467 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 9
  %468 = load i32, ptr %467, align 4
  %469 = shl i32 %468, 2
  %470 = or i32 %466, %469
  %471 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 10
  %472 = load i32, ptr %471, align 4
  %473 = shl i32 %472, 1
  %474 = or i32 %470, %473
  %475 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 11
  %476 = load i32, ptr %475, align 4
  %477 = or i32 %474, %476
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %478 = load ptr, ptr %321, align 4
  %479 = getelementptr i8, ptr %478, i32 50612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %479, i32 %477) #6, !srcloc !17
  br label %480

480:                                              ; preds = %458, %440
  %481 = load i32, ptr %422, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %503

483:                                              ; preds = %480
  %484 = load i32, ptr %412, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %503

486:                                              ; preds = %483
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %487 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %488 = load ptr, ptr %487, align 4
  %489 = getelementptr i8, ptr %488, i32 112
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, -4096
  %492 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 22
  %493 = load i8, ptr %492, align 2
  %494 = and i8 %493, 63
  %495 = zext i8 %494 to i32
  %496 = shl nuw nsw i32 %495, 6
  %497 = or i32 %496, %491
  %498 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 21
  %499 = load i8, ptr %498, align 1
  %500 = and i8 %499, 63
  %501 = zext i8 %500 to i32
  %502 = or i32 %497, %501
  store i32 %502, ptr %489, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  br label %503

503:                                              ; preds = %486, %483, %480
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %504 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %505 = load ptr, ptr %504, align 4
  %506 = getelementptr i8, ptr %505, i32 40
  %507 = load i32, ptr %506, align 4
  %508 = and i32 %507, -32769
  %509 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 12
  %510 = load i32, ptr %509, align 4
  %511 = shl i32 %510, 1
  %512 = or i32 %511, %508
  store i32 %512, ptr %506, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %513 = load i32, ptr %509, align 4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %537, label %515

515:                                              ; preds = %503
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %516 = load ptr, ptr %504, align 4
  %517 = getelementptr i8, ptr %516, i32 116
  %518 = load i32, ptr %517, align 4
  %519 = and i32 %518, -256
  %520 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 13
  %521 = load i8, ptr %520, align 4
  %522 = zext i8 %521 to i32
  %523 = or i32 %519, %522
  store i32 %523, ptr %517, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %524 = load i8, ptr %520, align 4
  %525 = icmp eq i8 %524, -1
  br i1 %525, label %526, label %537

526:                                              ; preds = %515
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %527 = load ptr, ptr %504, align 4
  %528 = getelementptr i8, ptr %527, i32 120
  %529 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 14
  %530 = load i16, ptr %529, align 2
  %531 = zext i16 %530 to i32
  %532 = shl nuw i32 %531, 16
  %533 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 15
  %534 = load i16, ptr %533, align 4
  %535 = zext i16 %534 to i32
  %536 = or i32 %532, %535
  store i32 %536, ptr %528, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  br label %537

537:                                              ; preds = %526, %515, %503
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %538 = load ptr, ptr %504, align 4
  %539 = getelementptr i8, ptr %538, i32 156
  %540 = load i32, ptr %539, align 4
  %541 = and i32 %540, -65537
  %542 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 16
  %543 = load i32, ptr %542, align 4
  %544 = shl i32 %543, 16
  %545 = or i32 %544, %541
  %546 = icmp eq i32 %543, 0
  br i1 %546, label %553, label %547

547:                                              ; preds = %537
  %548 = and i32 %545, -65536
  %549 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 17
  %550 = load i16, ptr %549, align 4
  %551 = zext i16 %550 to i32
  %552 = or i32 %548, %551
  br label %553

553:                                              ; preds = %547, %537
  %554 = phi i32 [ %552, %547 ], [ %545, %537 ]
  store i32 %554, ptr %539, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %555 = load ptr, ptr %504, align 4
  %556 = getelementptr i8, ptr %555, i32 40
  %557 = load i32, ptr %556, align 4
  %558 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %559 = load i32, ptr %558, align 4
  %560 = icmp eq i32 %559, 2
  br i1 %560, label %561, label %568

561:                                              ; preds = %553
  %562 = and i32 %557, 65535
  %563 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 0, i32 25
  %564 = load i16, ptr %563, align 4
  %565 = zext i16 %564 to i32
  %566 = shl nuw i32 %565, 16
  %567 = or i32 %566, %562
  br label %568

568:                                              ; preds = %561, %553
  %569 = phi i32 [ %567, %561 ], [ %557, %553 ]
  store i32 %569, ptr %556, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  br label %766

570:                                              ; preds = %302
  %571 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #6
  %572 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr i8, ptr %573, i32 50436
  %575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %574) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !117
  %576 = and i32 %575, -196609
  %577 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 22
  %578 = load i8, ptr %577, align 4
  %579 = zext i8 %578 to i32
  %580 = shl nuw nsw i32 %579, 16
  %581 = or i32 %580, %576
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %582 = load ptr, ptr %572, align 4
  %583 = getelementptr i8, ptr %582, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %583, i32 %581) #6, !srcloc !17
  %584 = load ptr, ptr %572, align 4
  %585 = getelementptr i8, ptr %584, i32 2096
  %586 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %585) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !119
  %587 = and i32 %586, -65344
  %588 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 10
  %589 = load i32, ptr %588, align 4
  %590 = shl i32 %589, 8
  %591 = or i32 %590, %587
  %592 = load i32, ptr %571, align 4
  %593 = or i32 %591, %592
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %594 = load ptr, ptr %572, align 4
  %595 = getelementptr i8, ptr %594, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %595, i32 %593) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %596 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 1
  %597 = load i32, ptr %596, align 4
  %598 = load ptr, ptr %572, align 4
  %599 = getelementptr i8, ptr %598, i32 57352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %599, i32 %597) #6, !srcloc !17
  %600 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %601 = load i32, ptr %600, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %622

603:                                              ; preds = %570
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %604 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %605 = load ptr, ptr %604, align 4
  %606 = getelementptr i8, ptr %605, i32 112
  %607 = load i32, ptr %606, align 4
  %608 = and i32 %607, -4096
  %609 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 8
  %610 = load i8, ptr %609, align 4
  %611 = and i8 %610, 63
  %612 = zext i8 %611 to i32
  %613 = shl nuw nsw i32 %612, 6
  %614 = or i32 %613, %608
  %615 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 7
  %616 = load i8, ptr %615, align 1
  %617 = and i8 %616, 63
  %618 = zext i8 %617 to i32
  %619 = or i32 %614, %618
  store i32 %619, ptr %606, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %620 = load i32, ptr %600, align 4
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %642, label %622

622:                                              ; preds = %603, %570
  %623 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %624 = load i32, ptr %623, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %645, label %626

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %628 = load i32, ptr %627, align 4
  %629 = mul i32 %628, 1000
  %630 = udiv i32 %629, %624
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %631 = load ptr, ptr %572, align 4
  %632 = getelementptr i8, ptr %631, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 %630) #6, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %633 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %634 = load ptr, ptr %633, align 4
  %635 = getelementptr i8, ptr %634, i32 48
  %636 = load i32, ptr %627, align 4
  %637 = shl i32 %636, 16
  %638 = load i32, ptr %623, align 4
  %639 = and i32 %638, 65535
  %640 = or i32 %639, %637
  %641 = or i32 %640, -2147483648
  store i32 %641, ptr %635, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  br label %645

642:                                              ; preds = %603
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %643 = load ptr, ptr %572, align 4
  %644 = getelementptr i8, ptr %643, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %644, i32 0) #6, !srcloc !17
  br label %645

645:                                              ; preds = %642, %626, %622
  %646 = load ptr, ptr %572, align 4
  %647 = getelementptr i8, ptr %646, i32 50592
  %648 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %647) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !124
  %649 = and i32 %648, -64
  %650 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 4
  %651 = load i8, ptr %650, align 4
  %652 = zext i8 %651 to i32
  %653 = or i32 %649, %652
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %654 = load ptr, ptr %572, align 4
  %655 = getelementptr i8, ptr %654, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %655, i32 %653) #6, !srcloc !17
  %656 = load ptr, ptr %572, align 4
  %657 = getelementptr i8, ptr %656, i32 50604
  %658 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %657) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !126
  %659 = and i32 %658, -16192
  %660 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 6
  %661 = load i8, ptr %660, align 2
  %662 = zext i8 %661 to i32
  %663 = shl nuw nsw i32 %662, 8
  %664 = or i32 %663, %659
  %665 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 5
  %666 = load i8, ptr %665, align 1
  %667 = zext i8 %666 to i32
  %668 = or i32 %664, %667
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %669 = load ptr, ptr %572, align 4
  %670 = getelementptr i8, ptr %669, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %670, i32 %668) #6, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %671 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %672 = load ptr, ptr %671, align 4
  %673 = getelementptr i8, ptr %672, i32 40
  %674 = load i32, ptr %673, align 4
  %675 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %676 = load i32, ptr %675, align 4
  %677 = icmp eq i32 %676, 2
  br i1 %677, label %678, label %685

678:                                              ; preds = %645
  %679 = and i32 %674, 65535
  %680 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 17
  %681 = load i16, ptr %680, align 2
  %682 = zext i16 %681 to i32
  %683 = shl nuw i32 %682, 16
  %684 = or i32 %683, %679
  br label %685

685:                                              ; preds = %678, %645
  %686 = phi i32 [ %684, %678 ], [ %674, %645 ]
  store i32 %686, ptr %673, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  br label %766

687:                                              ; preds = %302
  tail call fastcc void @s5p_mfc_set_enc_params(ptr noundef %0) #6
  %688 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %689 = load i32, ptr %688, align 4
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %704

691:                                              ; preds = %687
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %692 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %693 = load ptr, ptr %692, align 4
  %694 = getelementptr i8, ptr %693, i32 112
  %695 = load i32, ptr %694, align 4
  %696 = and i32 %695, -4096
  %697 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 7
  %698 = load i8, ptr %697, align 1
  %699 = and i8 %698, 63
  %700 = zext i8 %699 to i32
  %701 = or i32 %696, %700
  store i32 %701, ptr %694, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %702 = load i32, ptr %688, align 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %691, %687
  %705 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 24
  %706 = load i32, ptr %705, align 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %717, label %708

708:                                              ; preds = %704
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %709 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 23
  %710 = load i32, ptr %709, align 4
  %711 = mul i32 %710, 1000
  %712 = load i32, ptr %705, align 4
  %713 = udiv i32 %711, %712
  %714 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr i8, ptr %715, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %716, i32 %713) #6, !srcloc !17
  br label %721

717:                                              ; preds = %704, %691
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %718 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %719 = load ptr, ptr %718, align 4
  %720 = getelementptr i8, ptr %719, i32 53456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %720, i32 0) #6, !srcloc !17
  br label %721

721:                                              ; preds = %717, %708
  %722 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %723 = load ptr, ptr %722, align 4
  %724 = getelementptr i8, ptr %723, i32 50592
  %725 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %724) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !130
  %726 = and i32 %725, -64
  %727 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 4
  %728 = load i8, ptr %727, align 4
  %729 = zext i8 %728 to i32
  %730 = or i32 %726, %729
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %731 = load ptr, ptr %722, align 4
  %732 = getelementptr i8, ptr %731, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %732, i32 %730) #6, !srcloc !17
  %733 = load ptr, ptr %722, align 4
  %734 = getelementptr i8, ptr %733, i32 50604
  %735 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %734) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !132
  %736 = and i32 %735, -16192
  %737 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 6
  %738 = load i8, ptr %737, align 2
  %739 = zext i8 %738 to i32
  %740 = shl nuw nsw i32 %739, 8
  %741 = or i32 %740, %736
  %742 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 25, i32 1, i32 5
  %743 = load i8, ptr %742, align 1
  %744 = zext i8 %743 to i32
  %745 = or i32 %741, %744
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %746 = load ptr, ptr %722, align 4
  %747 = getelementptr i8, ptr %746, i32 50604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %747, i32 %745) #6, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %748 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %749 = load ptr, ptr %748, align 4
  %750 = getelementptr i8, ptr %749, i32 40
  %751 = load i32, ptr %750, align 4
  %752 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %753 = load i32, ptr %752, align 4
  %754 = icmp eq i32 %753, 2
  br i1 %754, label %755, label %762

755:                                              ; preds = %721
  %756 = and i32 %751, 65535
  %757 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 17
  %758 = load i16, ptr %757, align 2
  %759 = zext i16 %758 to i32
  %760 = shl nuw i32 %759, 16
  %761 = or i32 %760, %756
  br label %762

762:                                              ; preds = %755, %721
  %763 = phi i32 [ %761, %755 ], [ %751, %721 ]
  store i32 %763, ptr %750, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  br label %766

764:                                              ; preds = %302
  %765 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.s5p_mfc_init_encode_v5, i32 noundef 1120, i32 noundef %318) #7
  br label %779

766:                                              ; preds = %762, %685, %568
  tail call void @arm_heavy_mb() #6
  %767 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %768 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %769 = load i32, ptr %768, align 4
  %770 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %767, i32 0, i32 5
  %771 = load ptr, ptr %770, align 4
  %772 = getelementptr i8, ptr %771, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %772, i32 %769) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %773 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %774 = load i32, ptr %773, align 4
  %775 = or i32 %774, 65536
  %776 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %317, i32 0, i32 5
  %777 = load ptr, ptr %776, align 4
  %778 = getelementptr i8, ptr %777, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %778, i32 %775) #6, !srcloc !17
  br label %779

779:                                              ; preds = %766, %764
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_decode_one_frame_v5(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 37
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #6, !srcloc !17
  %9 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !17
  %15 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq i32 %16, 0
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %17, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 8296
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6
  %23 = and i32 %22, -16385
  %24 = select i1 %18, i32 0, i32 16384
  %25 = or i32 %23, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !17
  switch i32 %1, label %46 [
    i32 0, label %28
    i32 1, label %34
    i32 2, label %40
  ]

28:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %29 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 131072
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !17
  br label %46

34:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 196608
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !17
  br label %46

40:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 327680
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr i8, ptr %44, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !17
  br label %46

46:                                               ; preds = %40, %34, %28, %2
  %47 = load i32, ptr @mfc_debug_level, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.s5p_mfc_decode_one_frame_v5, i32 noundef 1104) #7
  br label %51

51:                                               ; preds = %49, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_set_enc_params(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !17
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 50436
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !142
  %15 = and i32 %14, -327680
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 4
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = or i32 %15, %18
  %20 = or i32 %19, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 50436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 50440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 50444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !17
  %29 = load i32, ptr %25, align 4
  switch i32 %29, label %41 [
    i32 1, label %30
    i32 2, label %36
  ]

30:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 6
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 50448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !17
  br label %46

36:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 50452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !17
  br label %46

41:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 50448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr i8, ptr %44, i32 50452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #6, !srcloc !17
  br label %46

46:                                               ; preds = %41, %36, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 8
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 50456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !17
  %52 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %61 [
    i32 842091854, label %55
    i32 842091860, label %58
  ]

55:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #6, !srcloc !17
  br label %61

58:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 50460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 3) #6, !srcloc !17
  br label %61

61:                                               ; preds = %58, %55, %46
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 50464
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !153
  %65 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %61
  %69 = and i32 %64, 2130706432
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 12
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 11
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 10
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = or i32 %83, -2147483648
  br label %85

85:                                               ; preds = %68, %61
  %86 = phi i32 [ %84, %68 ], [ 0, %61 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %87 = load ptr, ptr %5, align 4
  %88 = getelementptr i8, ptr %87, i32 50464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #6, !srcloc !17
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr i8, ptr %89, i32 50592
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !155
  %92 = and i32 %91, -513
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %94, 9
  %96 = or i32 %95, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr i8, ptr %97, i32 50592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #6, !srcloc !17
  %99 = load i32, ptr %93, align 4
  %100 = icmp eq i32 %99, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %100, label %106, label %101

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 15
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr i8, ptr %104, i32 50600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #6, !srcloc !17
  br label %109

106:                                              ; preds = %85
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 50600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #6, !srcloc !17
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, ptr %93, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %113 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 16
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  %116 = load ptr, ptr %5, align 4
  %117 = getelementptr i8, ptr %116, i32 50608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #6, !srcloc !17
  br label %118

118:                                              ; preds = %112, %109
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %119 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 51, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 40
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, -15
  %124 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 19
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 3
  %127 = or i32 %126, %123
  %128 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 20
  %129 = load i32, ptr %128, align 4
  %130 = shl i32 %129, 1
  %131 = or i32 %127, %130
  store i32 %131, ptr %121, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %132 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 52, i32 21
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %119, align 4
  %135 = getelementptr i8, ptr %134, i32 160
  store i32 %133, ptr %135, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2155055099, i64 2155055610, i64 2155055136, i64 2155055192, i64 2155055226, i64 2155055250, i64 2155055291, i64 2155055312, i64 2155055340, i64 2155055374}
!10 = !{i64 2155055954}
!11 = !{i64 2155064201, i64 2155064713, i64 2155064238, i64 2155064294, i64 2155064328, i64 2155064352, i64 2155064393, i64 2155064414, i64 2155064442, i64 2155064476}
!12 = !{i64 2155065927, i64 2155066439, i64 2155065964, i64 2155066020, i64 2155066054, i64 2155066078, i64 2155066119, i64 2155066140, i64 2155066168, i64 2155066202}
!13 = !{i64 2155067415}
!14 = !{i64 2155068396, i64 2155068908, i64 2155068433, i64 2155068489, i64 2155068523, i64 2155068547, i64 2155068588, i64 2155068609, i64 2155068637, i64 2155068671}
!15 = !{i64 2155069252}
!16 = !{i64 2155107371}
!17 = !{i64 5947997}
!18 = !{i64 2155107889}
!19 = !{i64 2155108479}
!20 = !{i64 2155109145}
!21 = !{i64 5948415}
!22 = !{i64 2155109801}
!23 = !{i64 2155110224}
!24 = !{i64 2155081100}
!25 = !{i64 2155081652}
!26 = !{i64 2155192598}
!27 = !{i64 2155193032}
!28 = !{i64 2155193476}
!29 = !{i64 2155194058}
!30 = !{i64 2155194479}
!31 = !{i64 2155194900}
!32 = !{i64 2155195318}
!33 = !{i64 2155195736}
!34 = !{i64 2155069437}
!35 = !{i64 2155196160}
!36 = !{i64 2155196578}
!37 = !{i64 2155197062}
!38 = !{i64 2155197489}
!39 = !{i64 2155197907}
!40 = !{i64 2155198325}
!41 = !{i64 2155198743}
!42 = !{i64 2155199161}
!43 = !{i64 2155199579}
!44 = !{i64 2155082744}
!45 = !{i64 2155083304}
!46 = !{i64 2155083792}
!47 = !{i64 2155069373}
!48 = !{i64 2155082132}
!49 = !{i64 2155158979}
!50 = !{i64 2155159720}
!51 = !{i64 2155084378}
!52 = !{i64 2155084715}
!53 = !{i64 2155085412}
!54 = !{i64 2155086179}
!55 = !{i64 2155086948}
!56 = !{i64 2155087715}
!57 = !{i64 2155088482}
!58 = !{i64 2155089251}
!59 = !{i64 2155090018}
!60 = !{i64 2155090787}
!61 = !{i64 2155091554}
!62 = !{i64 2155092321}
!63 = !{i64 2155093090}
!64 = !{i64 2155093861}
!65 = !{i64 2155094628}
!66 = !{i64 2155095395}
!67 = !{i64 2155096162}
!68 = !{i64 2155096931}
!69 = !{i64 2155097696}
!70 = !{i64 2155098461}
!71 = !{i64 2155101223}
!72 = !{i64 2155102732}
!73 = !{i64 2155104145}
!74 = !{i64 2155106715}
!75 = !{i64 2155165608}
!76 = !{i64 2155166165}
!77 = !{i64 2155166686}
!78 = !{i64 2155125969}
!79 = !{i64 2155126742}
!80 = !{i64 2155127496}
!81 = !{i64 2155128224}
!82 = !{i64 2155128977}
!83 = !{i64 2155120784}
!84 = !{i64 2155121557}
!85 = !{i64 2155122311}
!86 = !{i64 2155123039}
!87 = !{i64 2155123792}
!88 = !{i64 2155124551}
!89 = !{i64 2155114083}
!90 = !{i64 2155114856}
!91 = !{i64 2155115610}
!92 = !{i64 2155116338}
!93 = !{i64 2155117091}
!94 = !{i64 2155117850}
!95 = !{i64 2155118609}
!96 = !{i64 2155119366}
!97 = !{i64 2155140241}
!98 = !{i64 2155140525}
!99 = !{i64 2155141101}
!100 = !{i64 2155141385}
!101 = !{i64 2155141853}
!102 = !{i64 2155142355}
!103 = !{i64 2155142871}
!104 = !{i64 2155143353}
!105 = !{i64 2155143795}
!106 = !{i64 2155145239}
!107 = !{i64 2155145523}
!108 = !{i64 2155146001}
!109 = !{i64 2155146613}
!110 = !{i64 2155146897}
!111 = !{i64 2155147439}
!112 = !{i64 2155147977}
!113 = !{i64 2155148549}
!114 = !{i64 2155148833}
!115 = !{i64 2155149409}
!116 = !{i64 2155149693}
!117 = !{i64 2155150269}
!118 = !{i64 2155150553}
!119 = !{i64 2155151129}
!120 = !{i64 2155151413}
!121 = !{i64 2155151893}
!122 = !{i64 2155152385}
!123 = !{i64 2155152835}
!124 = !{i64 2155153407}
!125 = !{i64 2155153691}
!126 = !{i64 2155154267}
!127 = !{i64 2155154551}
!128 = !{i64 2155155093}
!129 = !{i64 2155155631}
!130 = !{i64 2155156203}
!131 = !{i64 2155156487}
!132 = !{i64 2155157063}
!133 = !{i64 2155157347}
!134 = !{i64 2155164971}
!135 = !{i64 2155161550}
!136 = !{i64 2155161080}
!137 = !{i64 2155162091}
!138 = !{i64 2155162668}
!139 = !{i64 2155163245}
!140 = !{i64 2155130791}
!141 = !{i64 2155131279}
!142 = !{i64 2155131879}
!143 = !{i64 2155132163}
!144 = !{i64 2155132601}
!145 = !{i64 2155133059}
!146 = !{i64 2155133537}
!147 = !{i64 2155134013}
!148 = !{i64 2155134469}
!149 = !{i64 2155134903}
!150 = !{i64 2155135373}
!151 = !{i64 2155135966}
!152 = !{i64 2155136523}
!153 = !{i64 2155137095}
!154 = !{i64 2155137379}
!155 = !{i64 2155137955}
!156 = !{i64 2155138239}
!157 = !{i64 2155139631}
