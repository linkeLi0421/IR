; ModuleID = '/llk/IR/arch/arm/lib/delay.c_pt.bc'
source_filename = "../arch/arm/lib/delay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_current_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22read_current_timer\22\09\09\09\09\09"
module asm "__kstrtabns_read_current_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@arm_delay_ops = dso_local local_unnamed_addr global %struct.arm_delay_ops { ptr @__loop_delay, ptr @__loop_const_udelay, ptr @__loop_udelay, i32 0 }, section ".data..ro_after_init", align 4
@delay_timer = internal unnamed_addr global ptr null, align 4
@__kstrtab_read_current_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_current_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_read_current_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_current_timer to i32), ptr @__kstrtab_read_current_timer, ptr @__kstrtabns_read_current_timer }, section "___ksymtab_gpl+read_current_timer", align 4
@.str = private unnamed_addr constant [73 x i8] c"\013Ignoring delay timer %ps, which has insufficient resolution of %lluns\0A\00", align 1
@delay_calibrated = internal unnamed_addr global i1 false, align 1
@delay_res = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"\016Switching to timer-based delay loop, resolution %lluns\0A\00", align 1
@lpj_fine = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"\016Ignoring duplicate/late registration of read_current_timer delay\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_read_current_timer], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_delay(i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_const_udelay(i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__loop_udelay(i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @read_current_timer(ptr nocapture noundef writeonly %0) #1 {
  %2 = load ptr, ptr @delay_timer, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5() #6
  store i32 %6, ptr %0, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %4 ], [ -6, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @register_current_timer_delay(ptr noundef %0) local_unnamed_addr #2 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.delay_timer, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  call void @clocks_calc_mult_shift(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 1000000000, i32 noundef 3600) #6
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %3, align 4
  %8 = zext i32 %6 to i64
  %9 = zext i32 %7 to i64
  %10 = lshr i64 %8, %9
  %11 = icmp ugt i64 %10, 1000
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, i64 noundef %10) #7
  br label %27

14:                                               ; preds = %1
  %15 = load i1, ptr @delay_calibrated, align 1
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load i64, ptr @delay_res, align 8
  %18 = icmp eq i64 %17, 0
  %19 = icmp ult i64 %10, %17
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %10) #7
  store ptr %0, ptr @delay_timer, align 4
  %23 = load i32, ptr %4, align 4
  %24 = udiv i32 %23, 100
  store i32 %24, ptr @lpj_fine, align 4
  store i64 %10, ptr @delay_res, align 8
  store i32 %24, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  store ptr @__timer_delay, ptr @arm_delay_ops, align 4
  store ptr @__timer_const_udelay, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  store ptr @__timer_udelay, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  br label %27

25:                                               ; preds = %16, %14
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %27

27:                                               ; preds = %25, %21, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__timer_delay(i32 noundef %0) #1 {
  %2 = load ptr, ptr @delay_timer, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5() #6
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %19, %7
  %10 = load ptr, ptr @delay_timer, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 %13() #6
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ %14, %12 ], [ 0, %9 ]
  %17 = sub i32 %16, %8
  %18 = icmp ult i32 %17, %0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !10
  br label %9

20:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__timer_const_udelay(i32 noundef %0) #1 {
  %2 = zext i32 %0 to i64
  %3 = load i32, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  %4 = zext i32 %3 to i64
  %5 = mul nuw i64 %4, %2
  %6 = lshr i64 %5, 31
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr @delay_timer, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 %11() #6
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ]
  br label %15

15:                                               ; preds = %25, %13
  %16 = load ptr, ptr @delay_timer, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 %19() #6
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ 0, %15 ]
  %23 = sub i32 %22, %14
  %24 = icmp ult i32 %23, %7
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !10
  br label %15

26:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__timer_udelay(i32 noundef %0) #1 {
  %2 = mul i32 %0, 214748
  %3 = zext i32 %2 to i64
  %4 = load i32, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 3), align 4
  %5 = zext i32 %4 to i64
  %6 = mul nuw i64 %5, %3
  %7 = lshr i64 %6, 31
  %8 = trunc i64 %7 to i32
  %9 = load ptr, ptr @delay_timer, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 %12() #6
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ 0, %1 ]
  br label %16

16:                                               ; preds = %26, %14
  %17 = load ptr, ptr @delay_timer, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 %20() #6
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ 0, %16 ]
  %24 = sub i32 %23, %15
  %25 = icmp ult i32 %24, %8
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !10
  br label %16

27:                                               ; preds = %22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @calibrate_delay_is_known() local_unnamed_addr #5 {
  store i1 true, ptr @delay_calibrated, align 1
  %1 = load i32, ptr @lpj_fine, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @calibration_delay_done() local_unnamed_addr #1 {
  store i1 true, ptr @delay_calibrated, align 1
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2151066925}
!10 = !{i64 2151066767}
