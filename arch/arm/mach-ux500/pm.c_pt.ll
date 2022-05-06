; ModuleID = '/llk/IR/arch/arm/mach-ux500/pm.c_pt.bc'
source_filename = "../arch/arm/mach-ux500/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@prcmu_base = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dist_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [42 x i8] c"\013could not remap PRCMU for PM functions\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-gic\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\013could not remap GIC dist base for PM functions\0A\00", align 1
@ux500_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @ux500_suspend_valid, ptr null, ptr null, ptr null, ptr @ux500_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_gic_decouple() local_unnamed_addr #0 {
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 808
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %4 = or i32 %3, 1
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !11
  %7 = load ptr, ptr @prcmu_base, align 4
  %8 = getelementptr i8, ptr %7, i32 808
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_gic_recouple() local_unnamed_addr #0 {
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 808
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %4 = and i32 %3, -2
  %5 = load ptr, ptr @prcmu_base, align 4
  %6 = getelementptr i8, ptr %5, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prcmu_gic_pending_irq() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dist_base, align 4
  %2 = getelementptr i8, ptr %1, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = load ptr, ptr @dist_base, align 4
  %5 = getelementptr i8, ptr %4, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  %7 = and i32 %6, %3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %0
  %10 = load ptr, ptr @dist_base, align 4
  %11 = getelementptr i8, ptr %10, i32 516
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  %13 = load ptr, ptr @dist_base, align 4
  %14 = getelementptr i8, ptr %13, i32 260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = and i32 %15, %12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %9
  %19 = load ptr, ptr @dist_base, align 4
  %20 = getelementptr i8, ptr %19, i32 520
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  %22 = load ptr, ptr @dist_base, align 4
  %23 = getelementptr i8, ptr %22, i32 264
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  %28 = load ptr, ptr @dist_base, align 4
  %29 = getelementptr i8, ptr %28, i32 524
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  %31 = load ptr, ptr @dist_base, align 4
  %32 = getelementptr i8, ptr %31, i32 268
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  %34 = and i32 %33, %30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load ptr, ptr @dist_base, align 4
  %38 = getelementptr i8, ptr %37, i32 528
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  %40 = load ptr, ptr @dist_base, align 4
  %41 = getelementptr i8, ptr %40, i32 272
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  %43 = and i32 %42, %39
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %36, %27, %18, %9, %0
  %46 = phi i1 [ true, %0 ], [ true, %9 ], [ true, %18 ], [ true, %27 ], [ %44, %36 ]
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prcmu_pending_irq() local_unnamed_addr #0 {
  %1 = load ptr, ptr @prcmu_base, align 4
  %2 = getelementptr i8, ptr %1, i32 608
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 284
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %7 = and i32 %6, %3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %0
  %10 = load ptr, ptr @prcmu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 612
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %13 = load ptr, ptr @prcmu_base, align 4
  %14 = getelementptr i8, ptr %13, i32 288
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %16 = and i32 %15, %12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %9
  %19 = load ptr, ptr @prcmu_base, align 4
  %20 = getelementptr i8, ptr %19, i32 616
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %22 = load ptr, ptr @prcmu_base, align 4
  %23 = getelementptr i8, ptr %22, i32 292
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load ptr, ptr @prcmu_base, align 4
  %29 = getelementptr i8, ptr %28, i32 620
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %31 = load ptr, ptr @prcmu_base, align 4
  %32 = getelementptr i8, ptr %31, i32 296
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %34 = and i32 %33, %30
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %18, %9, %0
  %37 = phi i1 [ true, %0 ], [ true, %9 ], [ true, %18 ], [ %35, %27 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prcmu_is_cpu_in_wfi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @prcmu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 304
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %5 = icmp eq i32 %0, 0
  %6 = select i1 %5, i32 8, i32 16
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prcmu_copy_gic_settings() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dist_base, align 4
  %2 = getelementptr i8, ptr %1, i32 260
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr @prcmu_base, align 4
  %5 = getelementptr i8, ptr %4, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !11
  %6 = load ptr, ptr @dist_base, align 4
  %7 = getelementptr i8, ptr %6, i32 264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr @prcmu_base, align 4
  %10 = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !11
  %11 = load ptr, ptr @dist_base, align 4
  %12 = getelementptr i8, ptr %11, i32 268
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr @prcmu_base, align 4
  %15 = getelementptr i8, ptr %14, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !11
  %16 = load ptr, ptr @dist_base, align 4
  %17 = getelementptr i8, ptr %16, i32 272
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr @prcmu_base, align 4
  %20 = getelementptr i8, ptr %19, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ux500_pm_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 section ".init.text" {
  %3 = tail call ptr @ioremap(i32 noundef %0, i32 noundef %1) #5
  store ptr %3, ptr @prcmu_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %21

7:                                                ; preds = %2
  %8 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #5
  %9 = tail call ptr @of_iomap(ptr noundef %8, i32 noundef 0) #5
  store ptr %9, ptr @dist_base, align 4
  tail call void @of_node_put(ptr noundef %8) #5
  %10 = load ptr, ptr @dist_base, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %21

14:                                               ; preds = %7
  %15 = load ptr, ptr @prcmu_base, align 4
  %16 = getelementptr i8, ptr %15, i32 808
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %18 = and i32 %17, -2
  %19 = load ptr, ptr @prcmu_base, align 4
  %20 = getelementptr i8, ptr %19, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  tail call void @suspend_set_ops(ptr noundef nonnull @ux500_suspend_ops) #5
  br label %21

21:                                               ; preds = %14, %12, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ux500_suspend_valid(i32 noundef %0) #4 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_suspend_enter(i32 noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %3 = tail call i32 %2() #5
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3340308}
!9 = !{i64 2153504541}
!10 = !{i64 2153504760}
!11 = !{i64 3339890}
!12 = !{i64 2153505268}
!13 = !{i64 2153506168}
!14 = !{i64 2153506389}
!15 = !{i64 2153507369}
!16 = !{i64 2153507757}
!17 = !{i64 2153508121}
!18 = !{i64 2153508581}
