; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_sysfs.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@.str = private unnamed_addr constant [11 x i8] c"remoteproc\00", align 1
@rproc_devgroups = internal global [2 x ptr] [ptr @rproc_devgroup, ptr null], align 4
@rproc_class = dso_local global %struct.class { ptr @.str, ptr null, ptr null, ptr @rproc_devgroups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rproc_init_sysfs.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013remoteproc: unable to register class\0A\00", align 1
@rproc_devgroup = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rproc_attrs, ptr null }, align 4
@rproc_attrs = internal global [6 x ptr] [ptr @dev_attr_coredump, ptr @dev_attr_recovery, ptr @dev_attr_firmware, ptr @dev_attr_state, ptr @dev_attr_name, ptr null], align 4
@dev_attr_coredump = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @coredump_show, ptr @coredump_store }, align 4
@dev_attr_recovery = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @recovery_show, ptr @recovery_store }, align 4
@dev_attr_firmware = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @firmware_show, ptr @firmware_store }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @state_show, ptr @state_store }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @name_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@rproc_coredump_str = internal unnamed_addr constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"can't change coredump configuration\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid coredump configuration\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@rproc_state_string = internal unnamed_addr constant [8 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"crashed\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Boot failed: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Unrecognised option: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @rproc_exit_sysfs], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rproc_init_sysfs() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @rproc_class, ptr noundef nonnull @rproc_init_sysfs.__key) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rproc_exit_sysfs() #0 section ".exit.text" {
  tail call void @class_unregister(ptr noundef nonnull @rproc_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coredump_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [3 x ptr], ptr @rproc_coredump_str, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %7) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coredump_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 476
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  br label %22

9:                                                ; preds = %4
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 480
  store i32 0, ptr %12, align 8
  br label %22

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i32 480
  store i32 1, ptr %16, align 8
  br label %22

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %0, i32 480
  store i32 2, ptr %20, align 8
  br label %22

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %22

22:                                               ; preds = %21, %19, %15, %11, %8
  %23 = phi i32 [ -16, %8 ], [ -22, %21 ], [ %3, %15 ], [ %3, %19 ], [ %3, %11 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @recovery_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 604
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @.str.12, ptr @.str.11
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @recovery_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 604
  store i8 0, ptr %8, align 4
  %9 = tail call i32 @rproc_trigger_recovery(ptr noundef %5) #7
  br label %18

10:                                               ; preds = %4
  %11 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %0, i32 604
  store i8 1, ptr %13, align 4
  br label %18

14:                                               ; preds = %10
  %15 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.13) #7
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @rproc_trigger_recovery(ptr noundef %5) #7
  br label %18

18:                                               ; preds = %16, %14, %12, %7
  %19 = phi i32 [ -22, %14 ], [ %3, %12 ], [ %3, %16 ], [ %3, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_trigger_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 476
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 5
  %9 = select i1 %8, ptr @.str.15, ptr %5
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = tail call i32 @rproc_set_firmware(ptr noundef %5, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %3, i32 %6
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_set_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 7)
  %7 = getelementptr [8 x ptr], ptr @rproc_state_string, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.25) #7
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 476
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %10 [
    i32 2, label %31
    i32 5, label %31
  ]

10:                                               ; preds = %7
  %11 = tail call i32 @rproc_boot(ptr noundef %5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %11) #8
  br label %31

14:                                               ; preds = %4
  %15 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.27) #7
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 476
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %31 [
    i32 2, label %19
    i32 5, label %19
  ]

19:                                               ; preds = %16, %16
  tail call void @rproc_shutdown(ptr noundef %5) #7
  br label %30

20:                                               ; preds = %14
  %21 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.28) #7
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %0, i32 476
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %27, label %31

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %2) #8
  br label %31

27:                                               ; preds = %22
  %28 = tail call i32 @rproc_detach(ptr noundef %5) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %19, %10
  br label %31

31:                                               ; preds = %30, %27, %26, %22, %16, %13, %7, %7
  %32 = phi i32 [ -16, %7 ], [ -16, %7 ], [ -22, %16 ], [ -22, %22 ], [ %3, %30 ], [ %28, %27 ], [ -22, %26 ], [ %11, %13 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
