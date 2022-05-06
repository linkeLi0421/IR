; ModuleID = '/llk/IR/drivers/media/platform/sti/hva/hva-h264.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-h264.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hva_enc = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.h264_profile = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_h264_ctx = type { ptr, ptr, ptr, ptr }
%struct.hva_buffer = type { ptr, i32, ptr, i32 }
%struct.hva_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.hva_frameinfo, i32, ptr, i8 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.hva_stream = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, i8, i32, i32 }
%struct.hva_h264_td = type { i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.hva_h264_task = type { %struct.hva_h264_td, %struct.hva_h264_po }
%struct.hva_h264_po = type { i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.hva_h264_slice_po] }
%struct.hva_h264_slice_po = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"H264(NV12)\00", align 1
@nv12h264enc = dso_local local_unnamed_addr constant %struct.hva_enc { ptr @.str, i32 875967048, i32 842094158, i32 1920, i32 1920, ptr @hva_h264_open, ptr @hva_h264_close, ptr @hva_h264_encode }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"H264(NV21)\00", align 1
@nv21h264enc = dso_local local_unnamed_addr constant %struct.hva_enc { ptr @.str.1, i32 875967048, i32 825382478, i32 1920, i32 1920, ptr @hva_h264_open, ptr @hva_h264_close, ptr @hva_h264_encode }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s   not enough esram (max:%d request:%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hva sequence info\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s   failed to allocate sequence info buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"hva reference frame\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s   failed to allocate reference frame buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"hva reconstructed frame\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"%s   failed to allocate reconstructed frame buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"hva task descriptor\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"%s   failed to allocate task descriptor\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s   width(%d) or height(%d) exceeds limits (%dx%d)\0A\00", align 1
@h264_infos_list = internal unnamed_addr constant [16 x %struct.h264_profile] [%struct.h264_profile { i32 0, i32 1485, i32 99, i32 64, i32 175, i32 2 }, %struct.h264_profile { i32 1, i32 1485, i32 99, i32 128, i32 350, i32 2 }, %struct.h264_profile { i32 2, i32 3000, i32 396, i32 192, i32 500, i32 2 }, %struct.h264_profile { i32 3, i32 6000, i32 396, i32 384, i32 1000, i32 2 }, %struct.h264_profile { i32 4, i32 11880, i32 396, i32 768, i32 2000, i32 2 }, %struct.h264_profile { i32 5, i32 11880, i32 396, i32 2000, i32 2000, i32 2 }, %struct.h264_profile { i32 6, i32 19800, i32 792, i32 4000, i32 4000, i32 2 }, %struct.h264_profile { i32 7, i32 20250, i32 1620, i32 4000, i32 4000, i32 2 }, %struct.h264_profile { i32 8, i32 40500, i32 1620, i32 10000, i32 10000, i32 2 }, %struct.h264_profile { i32 9, i32 108000, i32 3600, i32 14000, i32 14000, i32 4 }, %struct.h264_profile { i32 10, i32 216000, i32 5120, i32 20000, i32 20000, i32 4 }, %struct.h264_profile { i32 11, i32 245760, i32 8192, i32 20000, i32 25000, i32 4 }, %struct.h264_profile { i32 12, i32 245760, i32 8192, i32 50000, i32 62500, i32 2 }, %struct.h264_profile { i32 13, i32 522240, i32 8704, i32 50000, i32 62500, i32 2 }, %struct.h264_profile { i32 14, i32 589824, i32 22080, i32 135000, i32 135000, i32 2 }, %struct.h264_profile { i32 15, i32 983040, i32 36864, i32 240000, i32 240000, i32 2 }], align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"%s   invalid source pixel format\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%s   invalid framerate\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s   invalid sps/pps size %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_h264_open(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hva_dev, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 18, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 18, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, 15
  %10 = lshr i32 %9, 4
  %11 = mul i32 %10, 3072
  %12 = add i32 %11, 32256
  %13 = lshr exact i32 %12, 1
  %14 = shl i32 %10, 7
  %15 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %16 = shl i32 %15, 3
  %17 = add i32 %16, 120
  %18 = and i32 %17, -128
  %19 = and i32 %9, -16
  %20 = add i32 %14, %19
  %21 = add i32 %20, %13
  %22 = add i32 %21, %18
  %23 = getelementptr inbounds %struct.hva_dev, ptr %2, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %22
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %27, i32 noundef %24, i32 noundef %22) #5
  br label %73

28:                                               ; preds = %1
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %28
  %32 = add i32 %8, 15
  %33 = lshr i32 %32, 4
  %34 = shl i32 %10, 5
  %35 = mul i32 %34, %33
  %36 = add i32 %35, 144
  %37 = tail call i32 @hva_mem_alloc(ptr noundef %0, i32 noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull %29) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %40) #5
  br label %71

41:                                               ; preds = %31
  %42 = mul i32 %6, 3
  %43 = mul i32 %42, %8
  %44 = lshr i32 %43, 1
  %45 = getelementptr inbounds %struct.hva_h264_ctx, ptr %29, i32 0, i32 1
  %46 = tail call i32 @hva_mem_alloc(ptr noundef %0, i32 noundef %44, ptr noundef nonnull @.str.5, ptr noundef %45) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %49) #5
  br label %68

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.hva_h264_ctx, ptr %29, i32 0, i32 2
  %52 = tail call i32 @hva_mem_alloc(ptr noundef %0, i32 noundef %44, ptr noundef nonnull @.str.7, ptr noundef %51) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %55) #5
  br label %65

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.hva_h264_ctx, ptr %29, i32 0, i32 3
  %58 = tail call i32 @hva_mem_alloc(ptr noundef %0, i32 noundef 496, ptr noundef nonnull @.str.9, ptr noundef %57) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %61) #5
  %62 = load ptr, ptr %51, align 4
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef %62) #6
  br label %65

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 20
  store ptr %29, ptr %64, align 4
  br label %78

65:                                               ; preds = %60, %54
  %66 = phi i32 [ %52, %54 ], [ %58, %60 ]
  %67 = load ptr, ptr %45, align 4
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef %67) #6
  br label %68

68:                                               ; preds = %65, %48
  %69 = phi i32 [ %46, %48 ], [ %66, %65 ]
  %70 = load ptr, ptr %29, align 4
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef %70) #6
  br label %71

71:                                               ; preds = %68, %39
  %72 = phi i32 [ %37, %39 ], [ %69, %68 ]
  tail call void @devm_kfree(ptr noundef %4, ptr noundef nonnull %29) #6
  br label %73

73:                                               ; preds = %71, %28, %26
  %74 = phi i32 [ -22, %26 ], [ %72, %71 ], [ -12, %28 ]
  %75 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 23
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %73, %63
  %79 = phi i32 [ %74, %73 ], [ 0, %63 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_h264_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.hva_h264_ctx, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.hva_h264_ctx, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.hva_h264_ctx, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @hva_mem_free(ptr noundef %0, ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %24, %20
  tail call void @devm_kfree(ptr noundef %6, ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_h264_encode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hva_buffer, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.hva_dev, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.hva_dev, ptr %10, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.hva_frame, ptr %1, i32 0, i32 2
  %24 = getelementptr inbounds %struct.hva_frame, ptr %1, i32 0, i32 2, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.hva_frame, ptr %1, i32 0, i32 2, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.hva_stream, ptr %2, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %25, 1920
  %31 = icmp ugt i32 %27, 1920
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef %34, i32 noundef %25, i32 noundef %27, i32 noundef 1920, i32 noundef 1920) #5
  br label %394

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %9, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(208) %38, i8 0, i32 204, i1 false) #6
  %39 = trunc i32 %25 to i16
  store i16 %39, ptr %9, align 4
  %40 = trunc i32 %27 to i16
  %41 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 1
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 50
  store i16 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 51
  store i16 %40, ptr %43, align 2
  %44 = icmp eq i32 %20, 0
  %45 = zext i1 %44 to i16
  %46 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 6
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 5
  store i16 2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  %51 = select i1 %50, i16 1, i16 2
  %52 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 20
  store i16 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i16
  %57 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 19
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 24
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %18, align 4
  %62 = icmp ugt i32 %61, 535
  br i1 %62, label %63, label %80

63:                                               ; preds = %35
  %64 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 28
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %18, align 4
  %68 = lshr i32 %67, 1
  %69 = add i32 %66, -1
  %70 = add i32 %69, %68
  %71 = udiv i32 %70, %67
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 27
  store i16 %72, ptr %73, align 4
  %74 = load i32, ptr %18, align 4
  %75 = udiv i32 %59, %74
  store i32 %75, ptr %60, align 4
  %76 = load i32, ptr %65, align 4
  %77 = mul i32 %76, %75
  %78 = and i32 %71, 65535
  %79 = udiv i32 %77, %78
  store i32 %79, ptr %60, align 4
  br label %87

80:                                               ; preds = %35
  %81 = trunc i32 %61 to i16
  %82 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 28
  store i16 %81, ptr %82, align 2
  %83 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 27
  store i16 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %80, %63
  %88 = phi i16 [ %85, %80 ], [ %72, %63 ]
  %89 = phi i16 [ %81, %80 ], [ 1, %63 ]
  %90 = phi i32 [ %59, %80 ], [ %79, %63 ]
  %91 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 3
  %94 = getelementptr [16 x %struct.h264_profile], ptr @h264_infos_list, i32 0, i32 %37, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = select i1 %93, i32 1200, i32 1000
  %97 = mul i32 %96, %95
  %98 = icmp ugt i32 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i32 %97, ptr %60, align 4
  br label %100

100:                                              ; preds = %99, %87
  %101 = phi i32 [ %97, %99 ], [ %90, %87 ]
  %102 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, 8000
  %105 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 23
  store i32 %104, ptr %105, align 4
  %106 = load i32, ptr %91, align 4
  %107 = icmp ugt i32 %106, 3
  %108 = getelementptr [16 x %struct.h264_profile], ptr @h264_infos_list, i32 0, i32 %37, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = select i1 %107, i32 1200, i32 1000
  %111 = mul i32 %110, %109
  %112 = tail call i32 @llvm.umin.i32(i32 %104, i32 %111) #6
  store i32 %112, ptr %105, align 4
  %113 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 71
  store i16 0, ptr %113, align 2
  %114 = load i32, ptr %48, align 4
  %115 = icmp ne i32 %114, 1
  %116 = icmp eq i32 %101, 0
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %100
  %119 = udiv i32 %112, %101
  %120 = trunc i32 %119 to i16
  %121 = mul i16 %120, 1000
  br label %122

122:                                              ; preds = %118, %100
  %123 = phi i16 [ %121, %118 ], [ 0, %100 ]
  %124 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 29
  store i16 %123, ptr %124, align 4
  %125 = load i32, ptr %23, align 8
  switch i32 %125, label %127 [
    i32 842094158, label %129
    i32 825382478, label %126
  ]

126:                                              ; preds = %122
  br label %129

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %128) #5
  br label %394

129:                                              ; preds = %126, %122
  %130 = phi i16 [ 8, %126 ], [ 0, %122 ]
  %131 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 41
  store i16 %130, ptr %131, align 2
  %132 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 66
  store i32 302190600, ptr %132, align 4
  %133 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 67
  store i32 -2146502661, ptr %133, align 4
  %134 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 68
  store i32 -2130775026, ptr %134, align 4
  %135 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 9
  %136 = load i8, ptr %135, align 4, !range !8
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 13
  store i16 %137, ptr %138, align 2
  %139 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 17
  store i16 2, ptr %139, align 2
  %140 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 21
  store i16 28, ptr %140, align 2
  %141 = icmp eq i16 %89, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %143) #5
  br label %394

144:                                              ; preds = %129
  %145 = icmp eq i16 %88, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  store i16 0, ptr %52, align 4
  br label %147

147:                                              ; preds = %146, %144
  %148 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 30
  store i16 1, ptr %148, align 2
  %149 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 10
  %150 = load i32, ptr %149, align 4
  %151 = tail call i32 @llvm.umin.i32(i32 %150, i32 51) #6
  %152 = trunc i32 %151 to i16
  %153 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 25
  store i16 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 11
  %155 = load i32, ptr %154, align 4
  %156 = tail call i32 @llvm.umin.i32(i32 %155, i32 51) #6
  %157 = trunc i32 %156 to i16
  %158 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 26
  store i16 %157, ptr %158, align 2
  %159 = getelementptr inbounds %struct.hva_frame, ptr %1, i32 0, i32 3
  %160 = load i32, ptr %159, align 8
  %161 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 31
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.hva_buffer, ptr %15, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 32
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.hva_buffer, ptr %17, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 33
  store i32 %166, ptr %167, align 4
  %168 = getelementptr inbounds %struct.hva_stream, ptr %2, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = getelementptr inbounds %struct.hva_stream, ptr %2, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, %169
  %173 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 35
  store i32 %172, ptr %173, align 4
  %174 = load i32, ptr %168, align 8
  %175 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 34
  store i32 %174, ptr %175, align 4
  %176 = load i32, ptr %168, align 8
  %177 = trunc i32 %176 to i16
  %178 = shl i16 %177, 3
  %179 = and i16 %178, 120
  %180 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 40
  store i16 %179, ptr %180, align 4
  %181 = load ptr, ptr %6, align 4
  %182 = getelementptr inbounds %struct.hva_buffer, ptr %181, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 208
  %185 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 42
  store i32 %184, ptr %185, align 4
  %186 = and i32 %20, 1
  %187 = icmp eq i32 %186, 0
  %188 = getelementptr inbounds %struct.hva_buffer, ptr %13, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 255
  %191 = and i32 %190, -256
  br i1 %187, label %204, label %192

192:                                              ; preds = %147
  %193 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 39
  store i32 %191, ptr %193, align 4
  %194 = load i32, ptr %188, align 4
  %195 = add nuw nsw i32 %25, 15
  %196 = and i32 %195, -16
  %197 = add nuw nsw i32 %27, 15
  %198 = lshr i32 %197, 4
  %199 = mul nuw nsw i32 %198, %196
  %200 = add nuw nsw i32 %199, 255
  %201 = add i32 %200, %194
  %202 = and i32 %201, -256
  %203 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 72
  store i32 %202, ptr %203, align 4
  br label %216

204:                                              ; preds = %147
  %205 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 72
  store i32 %191, ptr %205, align 4
  %206 = load i32, ptr %188, align 4
  %207 = add nuw nsw i32 %25, 15
  %208 = and i32 %207, -16
  %209 = add nuw nsw i32 %27, 15
  %210 = lshr i32 %209, 4
  %211 = mul nuw nsw i32 %210, %208
  %212 = add nuw nsw i32 %211, 255
  %213 = add i32 %212, %206
  %214 = and i32 %213, -256
  %215 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 39
  store i32 %214, ptr %215, align 4
  br label %216

216:                                              ; preds = %204, %192
  %217 = phi i32 [ %210, %204 ], [ %198, %192 ]
  %218 = phi i32 [ %207, %204 ], [ %195, %192 ]
  %219 = load i32, ptr %188, align 4
  %220 = lshr i32 %218, 4
  %221 = shl nuw nsw i32 %217, 5
  %222 = mul nuw nsw i32 %221, %220
  %223 = add i32 %219, 255
  %224 = add i32 %223, %222
  %225 = and i32 %224, -256
  %226 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 73
  store i32 %225, ptr %226, align 4
  %227 = add i32 %225, 335
  %228 = and i32 %227, -256
  %229 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 55
  store i32 %228, ptr %229, align 4
  %230 = add i32 %22, 255
  %231 = and i32 %230, -256
  %232 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 36
  store i32 %231, ptr %232, align 4
  %233 = mul nuw nsw i32 %220, 3072
  %234 = add nuw nsw i32 %233, 32256
  %235 = lshr exact i32 %234, 1
  %236 = add i32 %235, %22
  %237 = add i32 %236, 255
  %238 = and i32 %237, -256
  %239 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 38
  store i32 %238, ptr %239, align 4
  %240 = shl nuw nsw i32 %220, 7
  %241 = add i32 %237, %240
  %242 = and i32 %241, -256
  %243 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 37
  store i32 %242, ptr %243, align 4
  %244 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27) #6
  %245 = shl nuw nsw i32 %244, 3
  %246 = add nuw nsw i32 %245, 120
  %247 = and i32 %246, -128
  %248 = add i32 %241, %247
  %249 = and i32 %248, -256
  %250 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 45
  store i32 %249, ptr %250, align 4
  %251 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = urem i32 %20, %252
  %254 = icmp eq i32 %253, 0
  %255 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 3
  br i1 %254, label %256, label %260

256:                                              ; preds = %216
  store i16 0, ptr %255, align 4
  %257 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %2, i32 0, i32 1
  %258 = load i32, ptr %257, align 8
  %259 = or i32 %258, 8
  store i32 %259, ptr %257, align 8
  br label %264

260:                                              ; preds = %216
  store i16 1, ptr %255, align 4
  %261 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %2, i32 0, i32 1
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, -9
  store i32 %263, ptr %261, align 8
  br label %264

264:                                              ; preds = %260, %256
  %265 = getelementptr inbounds %struct.hva_buffer, ptr %13, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = load i32, ptr %229, align 4
  %268 = load i32, ptr %188, align 4
  %269 = sub i32 %267, %268
  %270 = getelementptr i8, ptr %266, i32 %269
  %271 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 56
  %272 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 57
  %273 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 58
  %274 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 59
  %275 = load i32, ptr %251, align 4
  %276 = urem i32 %20, %275
  %277 = icmp eq i32 %276, 0
  store i64 2027778631270400, ptr %270, align 1
  store i16 56, ptr %271, align 2
  store i16 40, ptr %272, align 2
  store i16 13, ptr %273, align 2
  store i16 0, ptr %274, align 2
  br i1 %277, label %278, label %298

278:                                              ; preds = %264
  %279 = getelementptr i8, ptr %270, i32 4
  store i8 101, ptr %279, align 1
  %280 = getelementptr i8, ptr %270, i32 5
  store i8 17, ptr %280, align 1
  %281 = load i32, ptr %251, align 4
  %282 = udiv i32 %20, %281
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  %285 = load i16, ptr %271, align 2
  br i1 %284, label %292, label %286

286:                                              ; preds = %278
  %287 = add i16 %285, 4
  store i16 %287, ptr %271, align 2
  %288 = load i16, ptr %273, align 2
  %289 = add i16 %288, 4
  store i16 %289, ptr %273, align 2
  %290 = getelementptr i8, ptr %270, i32 6
  store i8 4, ptr %290, align 1
  %291 = getelementptr i8, ptr %270, i32 7
  store i8 112, ptr %291, align 1
  br label %314

292:                                              ; preds = %278
  %293 = add i16 %285, 2
  store i16 %293, ptr %271, align 2
  %294 = load i16, ptr %273, align 2
  %295 = add i16 %294, 2
  store i16 %295, ptr %273, align 2
  %296 = getelementptr i8, ptr %270, i32 6
  store i8 9, ptr %296, align 1
  %297 = getelementptr i8, ptr %270, i32 7
  store i8 -64, ptr %297, align 1
  br label %314

298:                                              ; preds = %264
  %299 = load i32, ptr %53, align 4
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  store i16 57, ptr %271, align 2
  store i16 14, ptr %273, align 2
  %302 = getelementptr i8, ptr %270, i32 7
  store i8 -128, ptr %302, align 1
  br label %303

303:                                              ; preds = %301, %298
  %304 = getelementptr i8, ptr %270, i32 5
  %305 = load i8, ptr %304, align 1
  %306 = trunc i32 %276 to i8
  %307 = lshr i8 %306, 2
  %308 = and i8 %307, 3
  %309 = add i8 %305, %308
  store i8 %309, ptr %304, align 1
  %310 = getelementptr i8, ptr %270, i32 6
  %311 = load i8, ptr %310, align 1
  %312 = shl i8 %306, 6
  %313 = add i8 %311, %312
  store i8 %313, ptr %310, align 1
  br label %314

314:                                              ; preds = %303, %292, %286
  %315 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 18
  store i16 2, ptr %315, align 4
  %316 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 64
  store i16 0, ptr %316, align 4
  %317 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 65
  store i16 1, ptr %317, align 2
  %318 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %2, i32 0, i32 1
  %319 = load i32, ptr %318, align 8
  %320 = icmp eq i32 %319, 8
  %321 = icmp ugt i32 %29, 128
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %323, label %325

323:                                              ; preds = %314
  %324 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef %324, i32 noundef %29) #5
  br label %394

325:                                              ; preds = %314
  %326 = select i1 %320, i32 %29, i32 0
  %327 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 3, i32 14
  %328 = load i8, ptr %327, align 4, !range !8
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %345, label %330

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.hva_stream, ptr %2, i32 0, i32 3
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr i8, ptr %332, i32 %326
  store i32 16777216, ptr %333, align 1
  %334 = add i32 %326, 4
  %335 = getelementptr i8, ptr %332, i32 %334
  store i8 6, ptr %335, align 1
  %336 = add i32 %326, 5
  %337 = getelementptr i8, ptr %332, i32 %336
  store i8 21, ptr %337, align 1
  %338 = add i32 %326, 6
  %339 = getelementptr i8, ptr %332, i32 %338
  store i8 1, ptr %339, align 1
  %340 = add i32 %326, 7
  %341 = getelementptr i8, ptr %332, i32 %340
  store i8 -64, ptr %341, align 1
  %342 = add i32 %326, 8
  %343 = getelementptr i8, ptr %332, i32 %342
  store i8 -128, ptr %343, align 1
  %344 = add i32 %326, 9
  br label %345

345:                                              ; preds = %330, %325
  %346 = phi i32 [ %326, %325 ], [ %344, %330 ]
  %347 = shl i32 %346, 3
  %348 = getelementptr inbounds %struct.hva_h264_td, ptr %9, i32 0, i32 22
  store i32 %347, ptr %348, align 4
  %349 = and i32 %346, -16
  %350 = load i32, ptr %175, align 4
  %351 = add i32 %350, %349
  store i32 %351, ptr %175, align 4
  %352 = load i16, ptr %180, align 4
  %353 = trunc i32 %346 to i16
  %354 = shl i16 %353, 3
  %355 = and i16 %354, 120
  %356 = add i16 %352, %355
  store i16 %356, ptr %180, align 4
  store i32 %346, ptr %28, align 8
  %357 = load ptr, ptr %6, align 4
  %358 = tail call i32 @hva_hw_execute_task(ptr noundef %0, i32 noundef 2, ptr noundef %357) #6
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %398

360:                                              ; preds = %345
  %361 = load i32, ptr %19, align 4
  %362 = add i32 %361, 1
  store i32 %362, ptr %19, align 4
  %363 = getelementptr inbounds %struct.hva_h264_task, ptr %9, i32 0, i32 1
  %364 = load i32, ptr %363, align 4
  %365 = load i32, ptr %28, align 8
  %366 = add i32 %365, %364
  store i32 %366, ptr %28, align 8
  %367 = getelementptr inbounds %struct.hva_h264_task, ptr %9, i32 0, i32 1, i32 2
  %368 = load i32, ptr %367, align 4
  %369 = lshr i32 %368, 3
  %370 = icmp ult i32 %368, 8
  br i1 %370, label %391, label %371

371:                                              ; preds = %360
  %372 = load i32, ptr %170, align 4
  %373 = add i32 %366, 6
  %374 = add i32 %373, %369
  %375 = icmp ugt i32 %374, %372
  br i1 %375, label %391, label %376

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.hva_stream, ptr %2, i32 0, i32 3
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr i8, ptr %378, i32 %366
  store i32 16777216, ptr %379, align 1
  %380 = load i32, ptr %28, align 4
  %381 = add i32 %380, 4
  store i32 %381, ptr %28, align 4
  %382 = getelementptr i8, ptr %378, i32 %381
  store i8 12, ptr %382, align 1
  %383 = load i32, ptr %28, align 4
  %384 = add i32 %383, 1
  store i32 %384, ptr %28, align 4
  %385 = getelementptr i8, ptr %378, i32 %384
  tail call void @llvm.memset.p0.i32(ptr align 1 %385, i8 -1, i32 %369, i1 false) #6
  %386 = load i32, ptr %28, align 4
  %387 = add i32 %386, %369
  store i32 %387, ptr %28, align 4
  %388 = getelementptr i8, ptr %378, i32 %387
  store i8 -128, ptr %388, align 1
  %389 = load i32, ptr %28, align 4
  %390 = add i32 %389, 1
  store i32 %390, ptr %28, align 4
  br label %391

391:                                              ; preds = %376, %371, %360
  %392 = load ptr, ptr %14, align 4
  %393 = load ptr, ptr %16, align 4
  store ptr %393, ptr %14, align 4
  store ptr %392, ptr %16, align 4
  br label %400

394:                                              ; preds = %323, %142, %127, %33
  %395 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 25
  %396 = load i32, ptr %395, align 4
  %397 = add i32 %396, 1
  store i32 %397, ptr %395, align 4
  br label %398

398:                                              ; preds = %394, %345
  %399 = phi i32 [ %358, %345 ], [ -22, %394 ]
  store i32 0, ptr %28, align 8
  br label %400

400:                                              ; preds = %398, %391
  %401 = phi i32 [ %399, %398 ], [ 0, %391 ]
  ret i32 %401
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_mem_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_execute_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
