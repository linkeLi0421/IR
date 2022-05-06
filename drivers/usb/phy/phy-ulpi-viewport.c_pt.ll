; ModuleID = '/llk/IR/drivers/usb/phy/phy-ulpi-viewport.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ulpi-viewport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_viewport_access_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_viewport_access_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_viewport_access_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.usb_phy_io_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }

@ulpi_viewport_access_ops = dso_local global %struct.usb_phy_io_ops { ptr @ulpi_viewport_read, ptr @ulpi_viewport_write }, align 4
@__kstrtab_ulpi_viewport_access_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_viewport_access_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_viewport_access_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_viewport_access_ops to i32), ptr @__kstrtab_ulpi_viewport_access_ops, ptr @__kstrtabns_ulpi_viewport_access_ops }, section "___ksymtab_gpl+ulpi_viewport_access_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ulpi_viewport_access_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_viewport_read(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1610612736) #2, !srcloc !9
  %5 = tail call i64 @ktime_get() #2
  %6 = add i64 %5, 2000000
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %19, label %9

9:                                                ; preds = %12, %2
  %10 = tail call i64 @ktime_get() #2
  %11 = icmp sgt i64 %10, %6
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %19, label %9

16:                                               ; preds = %9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16, %12, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %20 = shl i32 %1, 16
  %21 = and i32 %20, 16711680
  %22 = or i32 %21, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %22) #2, !srcloc !9
  %23 = tail call i64 @ktime_get() #2
  %24 = add i64 %23, 2000000
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %26 = and i32 %25, 1073741824
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %31, %19
  %29 = tail call i64 @ktime_get() #2
  %30 = icmp sgt i64 %29, %24
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #2
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %28

36:                                               ; preds = %28
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %38 = and i32 %37, 1073741824
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %31, %19
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %40, %36, %16
  %45 = phi i32 [ %43, %40 ], [ -110, %16 ], [ -110, %36 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ulpi_viewport_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1610612736) #2, !srcloc !9
  %6 = tail call i64 @ktime_get() #2
  %7 = add i64 %6, 2000000
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %20, label %10

10:                                               ; preds = %13, %3
  %11 = tail call i64 @ktime_get() #2
  %12 = icmp sgt i64 %11, %7
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %20, label %10

17:                                               ; preds = %10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %44

20:                                               ; preds = %17, %13, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %21 = and i32 %1, 255
  %22 = shl i32 %2, 16
  %23 = and i32 %22, 16711680
  %24 = or i32 %21, %23
  %25 = or i32 %24, 1610612736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %25) #2, !srcloc !9
  %26 = tail call i64 @ktime_get() #2
  %27 = add i64 %26, 2000000
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %29 = and i32 %28, 1073741824
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %34, %20
  %32 = tail call i64 @ktime_get() #2
  %33 = icmp sgt i64 %32, %27
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #2
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !11
  %37 = and i32 %36, 1073741824
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %31

39:                                               ; preds = %31
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %41 = and i32 %40, 1073741824
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %34, %20
  br label %44

44:                                               ; preds = %43, %39, %17
  %45 = phi i32 [ -110, %17 ], [ 0, %43 ], [ -110, %39 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2153715227}
!9 = !{i64 3211823}
!10 = !{i64 3212241}
!11 = !{i64 2153714128}
!12 = !{i64 2153714423}
!13 = !{i64 2153715651}
!14 = !{i64 2153716343}
!15 = !{i64 2153716555}
!16 = !{i64 2153717015}
