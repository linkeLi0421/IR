; ModuleID = '/llk/IR/sound/usb/power.c_pt.bc'
source_filename = "../sound/usb/power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_power_domain_descriptor = type <{ i8, i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.snd_usb_power_domain = type { i32, i32, i32 }
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

@.str = private unnamed_addr constant [38 x i8] c"Can't get UAC3 power state for id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't set UAC3 power state to %d for id %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_power_domain(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_host_interface, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.usb_host_interface, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %7, align 4
  %10 = load i32, ptr %8, align 4
  %11 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %9, i32 noundef %10, ptr noundef null, i8 noundef zeroext 16) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %41, %6
  %14 = phi ptr [ %44, %41 ], [ %11, %6 ]
  %15 = tail call zeroext i1 @snd_usb_validate_audio_desc(ptr noundef nonnull %14, i32 noundef 48) #6
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %14, i32 0, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %41, label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, %19
  br i1 %23, label %41, label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %26 = getelementptr %struct.uac3_power_domain_descriptor, ptr %14, i32 0, i32 7, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, %1
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %14, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %4, align 8
  %33 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %14, i32 0, i32 4
  %34 = load i16, ptr %33, align 1
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %4, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uac3_power_domain_descriptor, ptr %14, i32 0, i32 5
  %38 = load i16, ptr %37, align 1
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %4, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  br label %47

41:                                               ; preds = %21, %16, %13
  %42 = load ptr, ptr %7, align 4
  %43 = load i32, ptr %8, align 4
  %44 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %42, i32 noundef %43, ptr noundef %14, i8 noundef zeroext 16) #6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %13

46:                                               ; preds = %41, %6
  tail call void @kfree(ptr noundef nonnull %4) #6
  br label %47

47:                                               ; preds = %46, %29, %2
  %48 = phi ptr [ null, %46 ], [ null, %2 ], [ %4, %29 ]
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_power_domain_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %2, ptr %4, align 1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = load i32, ptr %1, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %14, %12
  %16 = load i32, ptr %7, align 8
  %17 = shl i32 %16, 8
  %18 = or i32 %17, -2147483520
  %19 = trunc i32 %15 to i16
  %20 = call i32 @snd_usb_ctl_msg(ptr noundef %7, i32 noundef %18, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %19, ptr noundef nonnull %5, i16 noundef zeroext 1) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %24 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %24) #7
  br label %55

25:                                               ; preds = %3
  %26 = load i8, ptr %5, align 1
  %27 = icmp eq i8 %26, %2
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 4
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %31, -2147483648
  %33 = call i32 @snd_usb_ctl_msg(ptr noundef %29, i32 noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 512, i16 noundef zeroext %19, ptr noundef nonnull %4, i16 noundef zeroext 1) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %37 = load i8, ptr %4, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef %39) #7
  br label %55

40:                                               ; preds = %28
  %41 = load i8, ptr %4, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i8, ptr %5, align 1
  switch i8 %44, label %55 [
    i8 2, label %45
    i8 1, label %50
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, 50
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %49(i32 noundef %48) #6
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.snd_usb_power_domain, ptr %1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, 50
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %54(i32 noundef %53) #6
  br label %55

55:                                               ; preds = %50, %45, %43, %40, %35, %25, %22
  %56 = phi i32 [ %20, %22 ], [ %33, %35 ], [ 0, %25 ], [ -22, %43 ], [ 0, %45 ], [ 0, %50 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
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
