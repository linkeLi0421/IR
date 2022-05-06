; ModuleID = '/llk/IR/drivers/clk/ux500/reset-prcc.c_pt.bc'
source_filename = "../drivers/clk/ux500/reset-prcc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.u8500_prcc_reset = type { %struct.reset_controller_dev, [5 x i32], [5 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [49 x i8] c"\013PRCC failed to remap for reset base %d (%08x)\0A\00", align 1
@u8500_prcc_reset_ops = internal constant %struct.reset_control_ops { ptr @u8500_prcc_reset, ptr @u8500_prcc_reset_assert, ptr @u8500_prcc_reset_deassert, ptr @u8500_prcc_reset_status }, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\013PRCC failed to register reset controller\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\013%s: invalid PRCC %d\0A\00", align 1
@__func__.u8500_prcc_reset_xlate = private unnamed_addr constant [23 x i8] c"u8500_prcc_reset_xlate\00", align 1
@switch.table.u8500_prcc_reset_status = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @u8500_prcc_reset_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 1, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @ioremap(i32 noundef %4, i32 noundef 4096) #3
  %6 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 2, i32 0
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %9) #4
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @ioremap(i32 noundef %13, i32 noundef 4096) #3
  %15 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, ptr %12, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %18) #4
  br label %20

20:                                               ; preds = %17, %11
  %21 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 1, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @ioremap(i32 noundef %22, i32 noundef 4096) #3
  %24 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 2, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, ptr %21, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %27) #4
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 1, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call ptr @ioremap(i32 noundef %31, i32 noundef 4096) #3
  %33 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 2, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, ptr %30, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef %36) #4
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @ioremap(i32 noundef %40, i32 noundef 4096) #3
  %42 = getelementptr %struct.u8500_prcc_reset, ptr %1, i32 0, i32 2, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, ptr %39, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4, i32 noundef %45) #4
  br label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 1
  store ptr null, ptr %48, align 4
  store ptr @u8500_prcc_reset_ops, ptr %1, align 4
  %49 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 5
  store ptr %0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 6
  store i32 2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 7
  store ptr @u8500_prcc_reset_xlate, ptr %51, align 4
  %52 = tail call i32 @reset_controller_register(ptr noundef %1) #3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #4
  br label %56

56:                                               ; preds = %54, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 6, label %11
    i32 5, label %11
    i32 3, label %11
    i32 2, label %11
    i32 1, label %11
  ]

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.u8500_prcc_reset_xlate, i32 noundef %8) #4
  br label %16

11:                                               ; preds = %6, %6, %6, %6, %6
  %12 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw nsw i32 %8, 5
  %15 = add i32 %13, %14
  br label %16

16:                                               ; preds = %11, %9, %2
  %17 = phi i32 [ -22, %9 ], [ %15, %11 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = lshr i8 55, %7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_status, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.u8500_prcc_reset, ptr %0, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %6, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ], [ null, %6 ]
  %18 = and i32 %1, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %19 = shl nuw i32 1, %18
  %20 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #3, !srcloc !9
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %22 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #3, !srcloc !9
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = lshr i8 55, %7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_status, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.u8500_prcc_reset, ptr %0, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %6, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ], [ null, %6 ]
  %18 = and i32 %1, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %19 = shl nuw i32 1, %18
  %20 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #3, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = lshr i8 55, %7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_status, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.u8500_prcc_reset, ptr %0, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %6, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ], [ null, %6 ]
  %18 = and i32 %1, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %19 = shl nuw i32 1, %18
  %20 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #3, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 5
  %4 = add nsw i32 %3, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i8
  %8 = lshr i8 55, %7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_status, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.u8500_prcc_reset, ptr %0, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %6, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ], [ null, %6 ]
  %18 = and i32 %1, 31
  %19 = getelementptr i8, ptr %17, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %21 = xor i32 %20, -1
  %22 = lshr i32 %21, %18
  %23 = and i32 %22, 1
  ret i32 %23
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
!8 = !{i64 2151037940}
!9 = !{i64 2808576}
!10 = !{i64 2151038941}
!11 = !{i64 2151041886}
!12 = !{i64 2151044307}
!13 = !{i64 2808994}
!14 = !{i64 2151046836}
