; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-mjpeg-dec.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-mjpeg-dec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delta_dec = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_mjpeg_ctx = type { %struct.mjpeg_header, ptr, ptr, ptr, ptr, [3000 x i8] }
%struct.mjpeg_header = type { i32, i32, i32, i32, i32, [5 x %struct.mjpeg_component] }
%struct.mjpeg_component = type { i32, i32, i32, i32 }
%struct.delta_ipc_param = type { i32, ptr }
%struct.jpeg_video_decode_init_params_t = type { i32, i32, i32 }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decode_params_t = type { i32, i32, %struct.jpeg_decoded_buffer_address_t, %struct.jpeg_display_buffer_address_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jpeg_decoded_buffer_address_t = type { i32, i32 }
%struct.jpeg_display_buffer_address_t = type { i32, i32, i32, i32, i32 }
%struct.delta_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.delta_frameinfo, i8, i32, ptr, i32, i32, i32, i64, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.77, i32 }
%union.anon.77 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"MJPEG\00", align 1
@mjpegdec = dso_local local_unnamed_addr constant %struct.delta_dec { ptr @.str, i32 1196444237, i32 842094158, i32 0, i32 0, i8 0, ptr @delta_mjpeg_open, ptr @delta_mjpeg_close, ptr null, ptr @delta_mjpeg_get_streaminfo, ptr @delta_get_frameinfo_default, ptr null, ptr @delta_mjpeg_decode, ptr @delta_mjpeg_get_frame, ptr @delta_recycle_default, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s  stream resolution too large: %dx%d > %d pixels budget\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"JPEG_DECODER_HW0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s  dumping command %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"jpeg_video_decode_init_params_t\0Acircular_buffer_begin_addr_p 0x%x\0Acircular_buffer_end_addr_p   0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [415 x i8] c"jpeg_decode_params_t\0Apicture_start_addr_p                  0x%x\0Apicture_end_addr_p                    0x%x\0Adecoding_mode                        %d\0Adisplay_buffer_addr.display_decimated_luma_p   0x%x\0Adisplay_buffer_addr.display_decimated_chroma_p 0x%x\0Amain_aux_enable                       %d\0Aadditional_flags                     0x%x\0Afield_flag                           %x\0Ais_jpeg_image                        %x\0A\00", align 1
@delta_mjpeg_check_status._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.delta_mjpeg_check_status = private unnamed_addr constant [25 x i8] c"delta_mjpeg_check_status\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s  firmware: stream error @ frame %d (%s)\0A\00", align 1
@delta_mjpeg_check_status._rs.8 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"%s  firmware: decode error @ frame %d (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"JPEG_DECODER_NO_ERROR\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"JPEG_DECODER_UNDEFINED_HUFF_TABLE\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"JPEG_DECODER_UNSUPPORTED_MARKER\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"JPEG_DECODER_UNABLE_ALLOCATE_MEMORY\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"JPEG_DECODER_NON_SUPPORTED_SAMP_FACTORS\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"JPEG_DECODER_BAD_PARAMETER\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"JPEG_DECODER_DECODE_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"JPEG_DECODER_BAD_RESTART_MARKER\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"JPEG_DECODER_UNSUPPORTED_COLORSPACE\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"JPEG_DECODER_BAD_SOS_SPECTRAL\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"JPEG_DECODER_BAD_SOS_SUCCESSIVE\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"JPEG_DECODER_BAD_HEADER_LENGTH\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"JPEG_DECODER_BAD_COUNT_VALUE\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"JPEG_DECODER_BAD_DHT_MARKER\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"JPEG_DECODER_BAD_INDEX_VALUE\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"JPEG_DECODER_BAD_NUMBER_HUFFMAN_TABLES\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"JPEG_DECODER_BAD_QUANT_TABLE_LENGTH\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"JPEG_DECODER_BAD_NUMBER_QUANT_TABLES\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"JPEG_DECODER_BAD_COMPONENT_COUNT\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"JPEG_DECODER_DIVIDE_BY_ZERO_ERROR\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"JPEG_DECODER_NOT_JPG_IMAGE\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"JPEG_DECODER_UNSUPPORTED_ROTATION_ANGLE\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"JPEG_DECODER_UNSUPPORTED_SCALING\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"JPEG_DECODER_INSUFFICIENT_OUTPUTBUFFER_SIZE\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"JPEG_DECODER_BAD_HWCFG_GP_VERSION_VALUE\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"JPEG_DECODER_BAD_VALUE_FROM_RED\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"JPEG_DECODER_BAD_SUBREGION_PARAMETERS\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"JPEG_DECODER_PROGRESSIVE_DECODE_NOT_SUPPORTED\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"JPEG_DECODER_ERROR_TASK_TIMEOUT\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"JPEG_DECODER_ERROR_FEATURE_NOT_SUPPORTED\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"!unknown MJPEG error!\00", align 1
@switch.table.delta_mjpeg_decode.41 = private unnamed_addr constant [30 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_open(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3116) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 24
  store ptr %3, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @delta_ipc_close(ptr noundef nonnull %5) #9
  store ptr null, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @kfree(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_mjpeg_get_streaminfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.delta_streaminfo, ptr %1, i32 0, i32 1
  store i32 1196444237, ptr %9, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.mjpeg_header, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_streaminfo, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.mjpeg_header, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.delta_streaminfo, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.delta_streaminfo, ptr %1, i32 0, i32 7
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.delta_streaminfo, ptr %1, i32 0, i32 4
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %8, %2
  %21 = phi i32 [ 0, %8 ], [ -61, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_get_frameinfo_default(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_decode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.delta_ipc_param, align 8
  %5 = alloca %struct.delta_ipc_param, align 8
  %6 = alloca %struct.jpeg_video_decode_init_params_t, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.delta_ipc_param, align 8
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds i8, ptr %1, i32 652
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %1, i32 656
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %1, i32 660
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  %21 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = call i32 @delta_mjpeg_read_header(ptr noundef %0, ptr noundef %18, i32 noundef %16, ptr noundef %14, ptr noundef nonnull %10) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %209

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.mjpeg_header, ptr %14, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mjpeg_header, ptr %14, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %33
  %37 = icmp ugt i32 %36, 9830400
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.delta_dev, ptr %12, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef %41, i32 noundef %33, i32 noundef %35, i32 noundef 9830400) #10
  br label %209

42:                                               ; preds = %31
  store ptr %14, ptr %21, align 4
  br label %209

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %14, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 12, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store ptr null, ptr %9, align 4, !annotation !8
  %48 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #9
  store i32 -1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.delta_ipc_param, ptr %8, i32 0, i32 1
  store ptr %6, ptr %49, align 4
  %50 = call i32 @delta_ipc_open(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %8, i32 noundef 240, ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %14, i32 0, i32 3
  store ptr %53, ptr %54, align 4
  %55 = load ptr, ptr %9, align 4
  store ptr %55, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  %56 = load ptr, ptr %21, align 4
  br label %65

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.delta_dev, ptr %12, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %61 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %14, i32 0, i32 5
  %62 = load i32, ptr %6, align 4
  %63 = load i32, ptr %48, align 4
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %61, i32 noundef 3000, ptr noundef nonnull @.str.5, i32 noundef %62, i32 noundef %63) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60, ptr noundef %61) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %209

65:                                               ; preds = %52, %43
  %66 = phi ptr [ %56, %52 ], [ %22, %43 ]
  %67 = call i32 @delta_mjpeg_read_header(ptr noundef %0, ptr noundef %18, i32 noundef %16, ptr noundef %66, ptr noundef nonnull %10) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 16
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %209

73:                                               ; preds = %65
  %74 = load i32, ptr %10, align 4
  %75 = load ptr, ptr %11, align 4
  %76 = load ptr, ptr %13, align 4
  %77 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.delta_buf, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 84, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 156, ptr %5, align 8, !annotation !8
  %81 = call i32 @delta_get_free_frame(ptr noundef %0, ptr noundef nonnull %3) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %199

83:                                               ; preds = %73
  %84 = add i32 %74, %20
  %85 = getelementptr i8, ptr %80, i32 84
  %86 = getelementptr inbounds i8, ptr %80, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(84) %86, i8 0, i32 76, i1 false) #9
  store i32 %84, ptr %80, align 4
  %87 = add i32 %16, -1
  %88 = add i32 %87, %84
  %89 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 1
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 4
  store i32 16, ptr %90, align 4
  %91 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 12
  store i32 128, ptr %91, align 4
  %92 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 6
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 11
  %94 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 3
  store i32 20, ptr %94, align 4
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr inbounds %struct.delta_frame, ptr %95, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 3, i32 3
  store i32 %97, ptr %98, align 4
  %99 = load i32, ptr %96, align 4
  %100 = getelementptr inbounds %struct.delta_frame, ptr %95, i32 0, i32 2, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = getelementptr inbounds %struct.delta_frame, ptr %95, i32 0, i32 2, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, %101
  %105 = add i32 %104, %99
  %106 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 3, i32 4
  store i32 %105, ptr %106, align 4
  %107 = getelementptr i8, ptr %80, i32 108
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(156) %85, i8 0, i64 156, i1 false) #9
  %108 = getelementptr inbounds %struct.delta_ipc_param, ptr %4, i32 0, i32 1
  store ptr %80, ptr %108, align 4
  %109 = getelementptr inbounds %struct.delta_ipc_param, ptr %5, i32 0, i32 1
  store ptr %85, ptr %109, align 4
  %110 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %76, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @delta_ipc_decode(ptr noundef %111, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %83
  %115 = getelementptr inbounds %struct.delta_dev, ptr %75, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %118 = icmp eq ptr %80, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %76, i32 0, i32 5
  %121 = load i32, ptr %80, align 4
  %122 = load i32, ptr %89, align 4
  %123 = load i32, ptr %93, align 4
  %124 = load i32, ptr %98, align 4
  %125 = load i32, ptr %106, align 4
  %126 = load i32, ptr %90, align 4
  %127 = load i32, ptr %91, align 4
  %128 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 13
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 15
  %131 = load i32, ptr %130, align 4
  %132 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %120, i32 noundef 3000, ptr noundef nonnull @.str.6, i32 noundef %121, i32 noundef %122, i32 noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127, i32 noundef %129, i32 noundef %131) #9
  br label %133

133:                                              ; preds = %119, %114
  %134 = phi ptr [ %120, %119 ], [ @.str.4, %114 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.3, ptr noundef %117, ptr noundef %134) #10
  br label %199

135:                                              ; preds = %83
  %136 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 13
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  %139 = load ptr, ptr %11, align 4
  %140 = load i32, ptr %107, align 4
  switch i32 %140, label %156 [
    i32 0, label %201
    i32 1, label %141
    i32 7, label %141
    i32 9, label %141
    i32 10, label %141
    i32 11, label %141
    i32 12, label %141
    i32 13, label %141
    i32 14, label %141
    i32 15, label %141
    i32 16, label %141
    i32 17, label %141
    i32 18, label %141
  ]

141:                                              ; preds = %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135, %135
  %142 = call i32 @___ratelimit(ptr noundef nonnull @delta_mjpeg_check_status._rs, ptr noundef nonnull @__func__.delta_mjpeg_check_status) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %171, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.delta_dev, ptr %139, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %148 = load i32, ptr %136, align 4
  %149 = load i32, ptr %107, align 4
  %150 = icmp ult i32 %149, 30
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = getelementptr inbounds [30 x ptr], ptr @switch.table.delta_mjpeg_decode.41, i32 0, i32 %149
  %153 = load ptr, ptr %152, align 4
  br label %154

154:                                              ; preds = %151, %144
  %155 = phi ptr [ %153, %151 ], [ @.str.40, %144 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.7, ptr noundef %147, i32 noundef %148, ptr noundef nonnull %155) #10
  br label %171

156:                                              ; preds = %135
  %157 = call i32 @___ratelimit(ptr noundef nonnull @delta_mjpeg_check_status._rs.8, ptr noundef nonnull @__func__.delta_mjpeg_check_status) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.delta_dev, ptr %139, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %163 = load i32, ptr %136, align 4
  %164 = load i32, ptr %107, align 4
  %165 = icmp ult i32 %164, 30
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = getelementptr inbounds [30 x ptr], ptr @switch.table.delta_mjpeg_decode.41, i32 0, i32 %164
  %168 = load ptr, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %159
  %170 = phi ptr [ %168, %166 ], [ @.str.40, %159 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.9, ptr noundef %162, i32 noundef %163, ptr noundef nonnull %170) #10
  br label %175

171:                                              ; preds = %154, %141
  %172 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 16
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  br label %201

175:                                              ; preds = %169, %156
  %176 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 17
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.delta_dev, ptr %75, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %182 = icmp eq ptr %80, null
  br i1 %182, label %197, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %76, i32 0, i32 5
  %185 = load i32, ptr %80, align 4
  %186 = load i32, ptr %89, align 4
  %187 = load i32, ptr %93, align 4
  %188 = load i32, ptr %98, align 4
  %189 = load i32, ptr %106, align 4
  %190 = load i32, ptr %90, align 4
  %191 = load i32, ptr %91, align 4
  %192 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 13
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %80, i32 0, i32 15
  %195 = load i32, ptr %194, align 4
  %196 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %184, i32 noundef 3000, ptr noundef nonnull @.str.6, i32 noundef %185, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, i32 noundef %190, i32 noundef %191, i32 noundef %193, i32 noundef %195) #9
  br label %197

197:                                              ; preds = %183, %175
  %198 = phi ptr [ %184, %183 ], [ @.str.4, %175 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.3, ptr noundef %181, ptr noundef %198) #10
  br label %201

199:                                              ; preds = %133, %73
  %200 = phi i32 [ %81, %73 ], [ %112, %133 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %209

201:                                              ; preds = %197, %171, %135
  %202 = load ptr, ptr %3, align 4
  %203 = getelementptr inbounds %struct.delta_frame, ptr %202, i32 0, i32 10
  store i32 1, ptr %203, align 8
  %204 = getelementptr inbounds %struct.delta_frame, ptr %202, i32 0, i32 8
  store i32 8, ptr %204, align 4
  %205 = getelementptr inbounds %struct.delta_frame, ptr %202, i32 0, i32 7
  %206 = load i32, ptr %205, align 8
  %207 = or i32 %206, 4
  store i32 %207, ptr %205, align 8
  %208 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %76, i32 0, i32 4
  store ptr %202, ptr %208, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %209

209:                                              ; preds = %201, %199, %69, %57, %42, %38, %27
  %210 = phi i32 [ 0, %201 ], [ 0, %42 ], [ %67, %69 ], [ %50, %57 ], [ %25, %27 ], [ -22, %38 ], [ %200, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  ret i32 %210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_mjpeg_get_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store ptr %6, ptr %1, align 4
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = phi i32 [ 0, %8 ], [ -61, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_recycle_default(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_ipc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_mjpeg_read_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_get_free_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
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
