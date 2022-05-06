; ModuleID = '/llk/IR/sound/core/pcm_timer.c_pt.bc'
source_filename = "../sound/core/pcm_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"pcm timer resolution out of range (rate = %u, period_size = %lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PCM %s %i-%i-%i\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@snd_pcm_timer = internal unnamed_addr constant %struct.snd_timer_hardware { i32 5, i32 0, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @snd_pcm_timer_resolution, ptr @snd_pcm_timer_start, ptr @snd_pcm_timer_stop, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_timer_resolution_change(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @gcd(i32 noundef 1000000000, i32 noundef %5) #10
  %13 = udiv i32 %5, %12
  %14 = udiv i32 1000000000, %12
  %15 = tail call i32 @gcd(i32 noundef %13, i32 noundef %9) #10
  %16 = udiv i32 %13, %15
  %17 = udiv i32 %9, %15
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 %14)
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %20, %11
  %21 = phi i32 [ %23, %20 ], [ %14, %11 ]
  %22 = phi i32 [ %24, %20 ], [ 1, %11 ]
  %23 = lshr i32 %21, 1
  %24 = shl i32 %22, 1
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 %23)
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %20, label %27

27:                                               ; preds = %20, %11
  %28 = phi { i32, i1 } [ %18, %11 ], [ %25, %20 ]
  %29 = phi i32 [ 1, %11 ], [ %24, %20 ]
  %30 = icmp ugt i32 %15, %13
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %9) #11
  br label %40

36:                                               ; preds = %27
  %37 = extractvalue { i32, i1 } %28, 0
  %38 = udiv i32 %37, %16
  %39 = mul i32 %38, %29
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %39, %36 ], [ -1, %31 ]
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 48
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_timer_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.snd_timer_id, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store i32 3, ptr %2, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 1
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = or i32 %17, %14
  %19 = getelementptr inbounds %struct.snd_timer_id, ptr %2, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = call i32 @snd_timer_new(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.snd_timer, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %15, align 4
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, ptr @.str.3, ptr @.str.4
  %29 = load i32, ptr %8, align 4
  %30 = load i32, ptr %11, align 4
  %31 = load i32, ptr %19, align 4
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull %28, i32 noundef %29, i32 noundef %30, i32 noundef %31)
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.snd_timer, ptr %33, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %34, ptr noundef nonnull align 4 dereferenceable(48) @snd_pcm_timer, i32 48, i1 false)
  %35 = getelementptr inbounds %struct.snd_timer, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @snd_device_register(ptr noundef %36, ptr noundef %33) #12
  %38 = icmp slt i32 %37, 0
  %39 = load ptr, ptr %3, align 4
  br i1 %38, label %40, label %43

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.snd_timer, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  call void @snd_device_free(ptr noundef %42, ptr noundef %39) #12
  br label %47

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.snd_timer, ptr %39, i32 0, i32 10
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.snd_timer, ptr %39, i32 0, i32 11
  store ptr @snd_pcm_timer_free, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  store ptr %39, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %40, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @snd_pcm_timer_free(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 12
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_timer_done(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 8
  tail call void @snd_device_free(ptr noundef %7, ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_timer_resolution(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 48
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_timer_start(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 13
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_pcm_timer_stop(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.snd_timer, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 13
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, -2
  store i8 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
