; ModuleID = '/llk/IR/drivers/usb/chipidea/ulpi.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ulpi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to register ULPI interface\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_ulpi_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  tail call void @hw_phymode_configure(ptr noundef %0) #3
  %8 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 35
  store ptr @ci_ulpi_read, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 35, i32 1
  store ptr @ci_ulpi_write, ptr %9, align 4
  %10 = load ptr, ptr %0, align 8
  %11 = tail call ptr @ulpi_register_interface(ptr noundef %10, ptr noundef %8) #3
  %12 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 34
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #4
  %16 = load ptr, ptr %12, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %16, %14 ], [ %11, %7 ]
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %18 to i32
  %21 = select i1 %19, i32 %20, i32 0
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i32 [ %21, %17 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_phymode_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_ulpi_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %4, i32 0, i32 41
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 11
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1610612736) #3, !srcloc !10
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr %struct.ci_hdrc, ptr %4, i32 0, i32 2, i32 6, i32 11
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi i32 [ 9999, %11 ], [ %20, %18 ]
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #3
  %20 = add nsw i32 %14, -1
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %46, label %13

22:                                               ; preds = %13
  %23 = load i8, ptr %5, align 2, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = zext i8 %1 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %27, 1073741824
  %29 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #3, !srcloc !10
  br label %30

30:                                               ; preds = %25, %22
  br label %31

31:                                               ; preds = %37, %30
  %32 = phi i32 [ %39, %37 ], [ 9999, %30 ]
  %33 = load ptr, ptr %12, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %35 = and i32 %34, 1073741824
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #3
  %39 = add nsw i32 %32, -1
  %40 = icmp eq i32 %32, 0
  br i1 %40, label %46, label %31

41:                                               ; preds = %31
  %42 = load ptr, ptr %12, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 255
  br label %46

46:                                               ; preds = %41, %37, %18
  %47 = phi i32 [ %45, %41 ], [ -110, %37 ], [ -110, %18 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ci_ulpi_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %5, i32 0, i32 41
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr %struct.ci_hdrc, ptr %5, i32 0, i32 2, i32 6, i32 11
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1610612736) #3, !srcloc !10
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr %struct.ci_hdrc, ptr %5, i32 0, i32 2, i32 6, i32 11
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi i32 [ 9999, %12 ], [ %21, %19 ]
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #3
  %21 = add nsw i32 %15, -1
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %44, label %14

23:                                               ; preds = %14
  %24 = load i8, ptr %6, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = zext i8 %1 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = zext i8 %2 to i32
  %30 = or i32 %28, %29
  %31 = or i32 %30, 1610612736
  %32 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #3, !srcloc !10
  br label %33

33:                                               ; preds = %26, %23
  br label %34

34:                                               ; preds = %40, %33
  %35 = phi i32 [ %42, %40 ], [ 9999, %33 ]
  %36 = load ptr, ptr %13, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %38 = and i32 %37, 1073741824
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #3
  %42 = add nsw i32 %35, -1
  %43 = icmp eq i32 %35, 0
  br i1 %43, label %44, label %34

44:                                               ; preds = %40, %34, %19
  %45 = phi i32 [ -110, %40 ], [ 0, %34 ], [ -110, %19 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ulpi_register_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_ulpi_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ulpi_unregister_interface(ptr noundef nonnull %3) #3
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulpi_unregister_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_ulpi_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 11
  br label %9

9:                                                ; preds = %15, %7
  %10 = phi i32 [ 99999, %7 ], [ %17, %15 ]
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %13 = and i32 %12, 134217728
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #3
  %17 = add nsw i32 %10, -1
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %19, label %9

19:                                               ; preds = %15, %9, %1
  %20 = phi i32 [ 0, %1 ], [ -110, %15 ], [ 0, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!9 = !{i64 2152286698}
!10 = !{i64 4753095}
!11 = !{i64 4753513}
!12 = !{i64 2152285476}
