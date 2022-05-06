; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_intr.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_intr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
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

@.str = private unnamed_addr constant [61 x i8] c"\013%s:%d: Interrupt (dev->int_type:%d, command:%d) timed out\0A\00", align 1
@__func__.s5p_mfc_wait_for_done_dev = private unnamed_addr constant [26 x i8] c"s5p_mfc_wait_for_done_dev\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\013%s:%d: Interrupted by a signal\0A\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"\017%s:%d: Finished waiting (dev->int_type:%d, command: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\013%s:%d: Interrupt (ctx->int_type:%d, command:%d) timed out\0A\00", align 1
@__func__.s5p_mfc_wait_for_done_ctx = private unnamed_addr constant [26 x i8] c"s5p_mfc_wait_for_done_ctx\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"\017%s:%d: Finished waiting (ctx->int_type:%d, command: %d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  %11 = icmp eq i32 %9, 32
  %12 = or i1 %10, %11
  br i1 %12, label %46, label %13

13:                                               ; preds = %7, %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #6
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 18
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  br label %16

16:                                               ; preds = %36, %13
  %17 = phi i32 [ 200, %13 ], [ %37, %36 ]
  %18 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #6
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %15, align 4
  %23 = icmp eq i32 %22, %1
  %24 = icmp eq i32 %22, 32
  %25 = or i1 %23, %24
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  %28 = xor i1 %27, true
  %29 = icmp ne i32 %17, 0
  %30 = select i1 %28, i1 true, i1 %29
  %31 = select i1 %30, i32 %17, i32 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %27, i1 true, i1 %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = icmp eq i32 %18, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = call i32 @schedule_timeout(i32 noundef %31) #6
  br label %16

38:                                               ; preds = %26
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %3) #6
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %31, %38 ], [ %18, %34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  switch i32 %40, label %46 [
    i32 0, label %41
    i32 -512, label %44
  ]

41:                                               ; preds = %39
  %42 = load i32, ptr %15, align 4
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_dev, i32 noundef 31, i32 noundef %42, i32 noundef %1) #7
  br label %58

44:                                               ; preds = %39
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_dev, i32 noundef 34) #7
  br label %58

46:                                               ; preds = %39, %7
  %47 = load i32, ptr @mfc_debug_level, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_dev, i32 noundef 38, i32 noundef %51, i32 noundef %1) #7
  br label %53

53:                                               ; preds = %49, %46
  %54 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 32
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %53, %44, %41
  %59 = phi i32 [ 1, %41 ], [ 1, %44 ], [ %57, %53 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s5p_mfc_clean_dev_int_flags(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 17
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %6, label %45, label %10

10:                                               ; preds = %3
  br i1 %9, label %17, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  %15 = icmp eq i32 %13, 32
  %16 = or i1 %14, %15
  br i1 %16, label %84, label %17

17:                                               ; preds = %11, %10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #6
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  br label %20

20:                                               ; preds = %40, %17
  %21 = phi i32 [ 200, %17 ], [ %41, %40 ]
  %22 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 1) #6
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %19, align 4
  %27 = icmp eq i32 %26, %1
  %28 = icmp eq i32 %26, 32
  %29 = or i1 %27, %28
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  %32 = xor i1 %31, true
  %33 = icmp ne i32 %21, 0
  %34 = select i1 %32, i1 true, i1 %33
  %35 = select i1 %34, i32 %21, i32 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %31, i1 true, i1 %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = icmp eq i32 %22, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = call i32 @schedule_timeout(i32 noundef %35) #6
  br label %20

42:                                               ; preds = %30
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %4) #6
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %35, %42 ], [ %22, %38 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %76

45:                                               ; preds = %3
  br i1 %9, label %52, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %1
  %50 = icmp eq i32 %48, 32
  %51 = or i1 %49, %50
  br i1 %51, label %84, label %52

52:                                               ; preds = %46, %45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #6
  %53 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 6
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  br label %55

55:                                               ; preds = %73, %52
  %56 = phi i32 [ 200, %52 ], [ %74, %73 ]
  %57 = call i32 @prepare_to_wait_event(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 2) #6
  %58 = load i32, ptr %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %54, align 4
  %62 = icmp eq i32 %61, %1
  %63 = icmp eq i32 %61, 32
  %64 = or i1 %62, %63
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  %67 = xor i1 %66, true
  %68 = icmp ne i32 %56, 0
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, i32 %56, i32 1
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %66, i1 true, i1 %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = call i32 @schedule_timeout(i32 noundef %70) #6
  br label %55

75:                                               ; preds = %65
  call void @finish_wait(ptr noundef %53, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #6
  br label %76

76:                                               ; preds = %75, %43
  %77 = phi i32 [ %44, %43 ], [ %70, %75 ]
  switch i32 %77, label %84 [
    i32 0, label %78
    i32 -512, label %82
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_ctx, i32 noundef 69, i32 noundef %80, i32 noundef %1) #7
  br label %96

82:                                               ; preds = %76
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_ctx, i32 noundef 72) #7
  br label %96

84:                                               ; preds = %76, %46, %11
  %85 = load i32, ptr @mfc_debug_level, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_wait_for_done_ctx, i32 noundef 76, i32 noundef %89, i32 noundef %1) #7
  br label %91

91:                                               ; preds = %87, %84
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 32
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %91, %82, %78
  %97 = phi i32 [ 1, %78 ], [ 1, %82 ], [ %95, %91 ]
  ret i32 %97
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s5p_mfc_clean_ctx_int_flags(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
