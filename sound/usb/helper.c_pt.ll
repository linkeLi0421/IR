; ModuleID = '/llk/IR/sound/usb/helper.c_pt.bc'
source_filename = "../sound/usb/helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_usb_combine_bytes(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %45 [
    i32 1, label %3
    i32 2, label %6
    i32 3, label %14
    i32 4, label %27
  ]

3:                                                ; preds = %2
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %45

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or i32 %12, %8
  br label %45

14:                                               ; preds = %2
  %15 = load i8, ptr %0, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %20, %16
  %22 = getelementptr i8, ptr %0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or i32 %21, %25
  br label %45

27:                                               ; preds = %2
  %28 = load i8, ptr %0, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %33, %29
  %35 = getelementptr i8, ptr %0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %34, %38
  %40 = getelementptr i8, ptr %0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = or i32 %39, %43
  br label %45

45:                                               ; preds = %27, %14, %6, %3, %2
  %46 = phi i32 [ %44, %27 ], [ %26, %14 ], [ %13, %6 ], [ %5, %3 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_desc(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %0, %7 ], [ %15, %24 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = zext i8 %11 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = icmp ugt ptr %15, %5
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %10, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %3
  %21 = icmp ugt ptr %10, %2
  %22 = or i1 %8, %21
  %23 = and i1 %20, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = icmp ult ptr %15, %5
  br i1 %25, label %9, label %26

26:                                               ; preds = %24, %17, %13, %9, %4
  %27 = phi ptr [ null, %4 ], [ null, %24 ], [ %10, %17 ], [ null, %13 ], [ null, %9 ]
  ret ptr %27
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_csint_desc(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %36

7:                                                ; preds = %31, %4
  %8 = phi ptr [ %11, %31 ], [ %2, %4 ]
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %25, %7
  %11 = phi ptr [ %0, %7 ], [ %16, %25 ]
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = zext i8 %12 to i32
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = icmp ugt ptr %16, %5
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %11, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 36
  %22 = icmp ugt ptr %11, %8
  %23 = or i1 %9, %22
  %24 = and i1 %23, %21
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = icmp ult ptr %16, %5
  br i1 %26, label %10, label %36

27:                                               ; preds = %18
  %28 = icmp eq ptr %11, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i8 %12, 2
  br i1 %30, label %32, label %31

31:                                               ; preds = %32, %29
  br label %7

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %11, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, %3
  br i1 %35, label %36, label %31

36:                                               ; preds = %32, %27, %25, %14, %10, %4
  %37 = phi ptr [ null, %4 ], [ null, %25 ], [ null, %14 ], [ null, %10 ], [ null, %27 ], [ %11, %32 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_ctl_msg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7) local_unnamed_addr #2 {
  %9 = tail call i32 @usb_pipe_type_check(ptr noundef %0, i32 noundef %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = zext i16 %7 to i32
  %13 = icmp eq i16 %7, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  br label %21

16:                                               ; preds = %11
  %17 = tail call ptr @kmemdup(ptr noundef %6, i32 noundef %12, i32 noundef 3264) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef nonnull %17, i16 noundef zeroext %7, i32 noundef 5000) #6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr nonnull align 1 %17, i32 %12, i1 false)
  tail call void @kfree(ptr noundef nonnull %17) #6
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %19 ]
  tail call void @snd_usb_ctl_msg_quirk(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7) #6
  br label %23

23:                                               ; preds = %21, %16, %8
  %24 = phi i32 [ %22, %21 ], [ -22, %8 ], [ -12, %16 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_pipe_type_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_ctl_msg_quirk(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @snd_usb_parse_datainterval(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -3
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 5
  %13 = load i8, ptr %12, align 2
  %14 = add i8 %13, -1
  %15 = icmp ult i8 %14, 4
  %16 = select i1 %15, i8 %14, i8 0
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i8 [ 0, %2 ], [ %16, %9 ]
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_usb_get_host_interface(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef %1) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %6, i32 noundef %2) #6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
