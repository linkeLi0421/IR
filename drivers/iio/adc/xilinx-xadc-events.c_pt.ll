; ModuleID = '/llk/IR/drivers/iio/adc/xilinx-xadc-events.c_pt.bc'
source_filename = "../drivers/iio/adc/xilinx-xadc-events.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.xadc = type { ptr, ptr, ptr, [16 x i16], i16, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work, %struct.mutex, %struct.spinlock, %struct.completion }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.xadc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@switch.table.xadc_write_event_config = private unnamed_addr constant [6 x i32] [i32 2, i32 4, i32 16, i32 32, i32 64, i32 128], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xadc_handle_events(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef 0) #6
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi i32 [ %4, %6 ], [ %43, %41 ]
  switch i32 %9, label %15 [
    i32 0, label %41
    i32 3, label %10
    i32 2, label %12
    i32 1, label %12
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr %7, align 8
  br label %19

12:                                               ; preds = %8, %8
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr %struct.iio_chan_spec, ptr %13, i32 %9
  br label %19

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8
  %17 = add nsw i32 %9, -1
  %18 = getelementptr %struct.iio_chan_spec, ptr %16, i32 %17
  br label %19

19:                                               ; preds = %15, %12, %10
  %20 = phi ptr [ %18, %15 ], [ %14, %12 ], [ %11, %10 ]
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = zext i32 %26 to i64
  br label %35

28:                                               ; preds = %19
  %29 = zext i32 %21 to i64
  %30 = shl nuw i64 %29, 32
  %31 = getelementptr inbounds %struct.iio_chan_spec, ptr %20, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 65535
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %28, %23
  %36 = phi i64 [ 281513631416320, %23 ], [ %34, %28 ]
  %37 = phi i64 [ %27, %23 ], [ %30, %28 ]
  %38 = or i64 %37, %36
  %39 = call i64 @iio_get_time_ns(ptr noundef %0) #6
  %40 = call i32 @iio_push_event(ptr noundef %0, i64 noundef %38, i64 noundef %39) #6
  br label %41

41:                                               ; preds = %35, %8
  %42 = add nuw nsw i32 %9, 1
  %43 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef %42) #6
  %44 = icmp ult i32 %43, 8
  br i1 %44, label %8, label %45

45:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xadc_read_event_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.xadc, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 6
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds [6 x i32], ptr @switch.table.xadc_write_event_config, i32 0, i32 %13
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %11, %4
  %19 = phi i32 [ 8, %4 ], [ %17, %15 ], [ 0, %11 ]
  %20 = and i32 %19, %8
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xadc_write_event_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i16, align 2
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 6
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds [6 x i32], ptr @switch.table.xadc_write_event_config, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 8, %5 ], [ %15, %13 ], [ 0, %9 ]
  %18 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !8
  %20 = getelementptr inbounds %struct.xadc, ptr %19, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %20) #6
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.xadc, ptr %19, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %17
  store i32 %25, ptr %23, align 4
  br label %31

26:                                               ; preds = %16
  %27 = xor i32 %17, -1
  %28 = getelementptr inbounds %struct.xadc, ptr %19, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ %25, %22 ]
  %33 = getelementptr inbounds %struct.xadc, ptr %19, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.xadc_ops, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %19, i32 noundef %32) #6
  %37 = load ptr, ptr %33, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %19, i32 noundef 65, ptr noundef nonnull %6) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.xadc, ptr %19, i32 0, i32 5
  %43 = load i16, ptr %6, align 2
  %44 = or i16 %43, 3855
  %45 = load i32, ptr %42, align 4
  %46 = trunc i32 %45 to i16
  %47 = shl i16 %46, 4
  %48 = and i16 %47, 3840
  %49 = lshr i16 %46, 3
  %50 = and i16 %49, 1
  %51 = or i16 %48, %50
  %52 = shl i16 %46, 1
  %53 = and i16 %52, 14
  %54 = or i16 %51, %53
  %55 = xor i16 %54, -1
  %56 = and i16 %44, %55
  store i16 %56, ptr %6, align 2
  %57 = icmp eq i16 %43, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %41
  %59 = load ptr, ptr %33, align 4
  %60 = getelementptr inbounds %struct.xadc_ops, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %19, i32 noundef 65, i16 noundef zeroext %56) #6
  br label %63

63:                                               ; preds = %58, %41, %31
  %64 = phi i32 [ %39, %31 ], [ %62, %58 ], [ 0, %41 ]
  call void @mutex_unlock(ptr noundef %20) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xadc_read_event_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readnone %6) local_unnamed_addr #4 {
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = add nsw i32 %12, 1
  br label %18

16:                                               ; preds = %10
  %17 = add nuw i32 %12, 6
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ 3, %7 ]
  %20 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %21 = load ptr, ptr %20, align 8
  switch i32 %4, label %38 [
    i32 1, label %22
    i32 2, label %27
  ]

22:                                               ; preds = %18
  %23 = icmp eq i32 %3, 2
  %24 = add i32 %19, 4
  %25 = select i1 %23, i32 %24, i32 %19
  %26 = getelementptr %struct.xadc, ptr %21, i32 0, i32 3, i32 %25
  br label %29

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.xadc, ptr %21, i32 0, i32 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %26, %22 ]
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  store i32 %32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = sub nsw i32 16, %35
  %37 = lshr i32 %32, %36
  store i32 %37, ptr %5, align 4
  br label %38

38:                                               ; preds = %29, %18
  %39 = phi i32 [ 1, %29 ], [ -22, %18 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xadc_write_event_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = add nsw i32 %12, 1
  br label %18

16:                                               ; preds = %10
  %17 = add nuw i32 %12, 6
  br label %18

18:                                               ; preds = %16, %14, %7
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ 3, %7 ]
  %20 = icmp eq i32 %3, 2
  %21 = add i32 %19, 4
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 16, %27
  %29 = shl i32 %5, %28
  %30 = icmp ugt i32 %29, 65535
  br i1 %30, label %77, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.xadc, ptr %24, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %32) #6
  switch i32 %4, label %75 [
    i32 1, label %33
    i32 2, label %41
  ]

33:                                               ; preds = %31
  %34 = trunc i32 %29 to i16
  %35 = getelementptr %struct.xadc, ptr %24, i32 0, i32 3, i32 %22
  store i16 %34, ptr %35, align 2
  %36 = load i32, ptr %1, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.xadc, ptr %24, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  br label %49

41:                                               ; preds = %31
  %42 = trunc i32 %29 to i16
  %43 = getelementptr inbounds %struct.xadc, ptr %24, i32 0, i32 4
  store i16 %42, ptr %43, align 4
  %44 = load i32, ptr %1, align 4
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = getelementptr %struct.xadc, ptr %24, i32 0, i32 3, i32 %22
  %48 = load i16, ptr %47, align 2
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i16 [ %42, %46 ], [ %40, %38 ]
  %51 = phi i16 [ %48, %46 ], [ %34, %38 ]
  %52 = call i16 @llvm.usub.sat.i16(i16 %51, i16 %50)
  %53 = add i32 %22, 4
  %54 = getelementptr %struct.xadc, ptr %24, i32 0, i32 3, i32 %53
  store i16 %52, ptr %54, align 2
  %55 = add i32 %22, 84
  %56 = getelementptr inbounds %struct.xadc, ptr %24, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.xadc_ops, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %24, i32 noundef %55, i16 noundef zeroext %52) #6
  %61 = icmp eq i32 %60, 0
  %62 = icmp eq i32 %4, 1
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = trunc i32 %29 to i16
  %66 = or i16 %65, 3
  br label %67

67:                                               ; preds = %64, %33
  %68 = phi i16 [ %66, %64 ], [ %34, %33 ]
  %69 = add i32 %22, 80
  %70 = getelementptr inbounds %struct.xadc, ptr %24, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.xadc_ops, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef %24, i32 noundef %69, i16 noundef zeroext %68) #6
  br label %75

75:                                               ; preds = %67, %49, %41, %31
  %76 = phi i32 [ -22, %31 ], [ %74, %67 ], [ %60, %49 ], [ 0, %41 ]
  tail call void @mutex_unlock(ptr noundef %32) #6
  br label %77

77:                                               ; preds = %75, %18
  %78 = phi i32 [ -22, %18 ], [ %76, %75 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
