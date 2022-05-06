; ModuleID = '/llk/IR/drivers/clk/mmp/reset.c_pt.bc'
source_filename = "../drivers/clk/mmp/reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mmp_clk_reset_unit = type { %struct.reset_controller_dev, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mmp_clk_reset_cell = type { i32, ptr, i32, i32, ptr }

@mmp_clk_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @mmp_clk_reset_assert, ptr @mmp_clk_reset_deassert, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/clk/mmp/reset.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_clk_reset_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 48) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mmp_clk_reset_unit, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 6
  store i32 1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 8
  store i32 %2, ptr %10, align 8
  store ptr @mmp_clk_reset_ops, ptr %5, align 8
  %11 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 5
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.reset_controller_dev, ptr %5, i32 0, i32 7
  store ptr @mmp_of_reset_xlate, ptr %12, align 4
  %13 = tail call i32 @reset_controller_register(ptr noundef nonnull %5) #4
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_of_reset_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %17, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmp_clk_reset_unit, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %18

17:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 19, i32 noundef 9, ptr noundef null) #4
  br label %30

18:                                               ; preds = %23, %12
  %19 = phi i32 [ 0, %12 ], [ %24, %23 ]
  %20 = getelementptr %struct.mmp_clk_reset_cell, ptr %14, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %16
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nuw i32 %19, 1
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %18

26:                                               ; preds = %23, %18, %8
  %27 = phi i32 [ 0, %8 ], [ %19, %18 ], [ %10, %23 ]
  %28 = icmp eq i32 %27, %10
  %29 = select i1 %28, i32 -22, i32 %27
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi i32 [ -22, %17 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_reset_unit, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %15 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %18 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #4, !srcloc !12
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %11) #4
  br label %22

22:                                               ; preds = %21, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_reset_unit, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %15 = getelementptr %struct.mmp_clk_reset_cell, ptr %4, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #4, !srcloc !12
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %11) #4
  br label %23

23:                                               ; preds = %22, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2597214}
!10 = !{i64 2150514323}
!11 = !{i64 2150514500}
!12 = !{i64 2596796}
!13 = !{i64 2150516597}
!14 = !{i64 2150516774}
