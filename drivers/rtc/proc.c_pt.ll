; ModuleID = '/llk/IR/drivers/rtc/proc.c_pt.bc'
source_filename = "../drivers/rtc/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"driver/rtc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"rtc_time\09: %ptRt\0Artc_date\09: %ptRd\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"alrm_time\09: %ptRt\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"alrm_date\09: %ptRd\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"alarm_IRQ\09: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"alrm_pending\09: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"update IRQ enabled\09: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"periodic IRQ enabled\09: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"periodic IRQ frequency\09: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"max user IRQ frequency\09: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"24hr\09\09: yes\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_proc_add_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false) #6, !annotation !8
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %4) #6
  %6 = icmp sgt i32 %5, 9
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #6
  br label %13

8:                                                ; preds = %1
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull dereferenceable(5) @.str.2, i32 5) #6
  %10 = icmp eq i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #6
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @rtc_proc_show, ptr noundef %0) #6
  br label %13

13:                                               ; preds = %11, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.rtc_wkalrm, align 4
  %4 = alloca %struct.rtc_time, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  %9 = call i32 @rtc_read_time(ptr noundef %6, ptr noundef nonnull %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, ptr noundef nonnull %4) #6
  br label %12

12:                                               ; preds = %11, %2
  %13 = call i32 @rtc_read_alarm(ptr noundef %6, ptr noundef nonnull %3) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %3, i32 0, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %16) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %16) #6
  %17 = load i8, ptr %3, align 4
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %19) #6
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %3, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %23) #6
  %24 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 15, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %27) #6
  %28 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 17
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %31) #6
  %32 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 11
  %33 = load i32, ptr %32, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %33) #6
  %34 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 12
  %35 = load i32, ptr %34, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %35) #6
  br label %36

36:                                               ; preds = %15, %12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  %37 = getelementptr inbounds %struct.rtc_class_ops, ptr %8, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %38(ptr noundef %42, ptr noundef %0) #6
  br label %44

44:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_proc_del_device(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false) #6, !annotation !8
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %4) #6
  %6 = icmp sgt i32 %5, 9
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #6
  br label %12

8:                                                ; preds = %1
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull dereferenceable(5) @.str.2, i32 5) #6
  %10 = icmp eq i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #6
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #6
  br label %12

12:                                               ; preds = %11, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
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
