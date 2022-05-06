; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-common.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\016GIC: enabling workaround for %s\0A\00", align 1
@irq_controller_lock = internal global %struct.raw_spinlock zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_enable_of_quirks(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %19, %3
  %7 = phi ptr [ %20, %19 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef %9) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %14(ptr noundef %2) #3
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17) #4
  br label %19

19:                                               ; preds = %16, %12, %6
  %20 = getelementptr %struct.gic_quirk, ptr %7, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6

23:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_enable_quirks(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %25, %3
  %7 = phi ptr [ %26, %25 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %0
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gic_quirk, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 %20(ptr noundef %2) #3
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %23) #4
  br label %25

25:                                               ; preds = %22, %18, %11, %6
  %26 = getelementptr %struct.gic_quirk, ptr %7, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6

29:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gic_configure_irq(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = shl i32 %0, 1
  %6 = and i32 %5, 30
  %7 = shl nuw i32 2, %6
  %8 = lshr i32 %0, 2
  %9 = and i32 %8, 1073741820
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @irq_controller_lock) #3
  %11 = getelementptr i8, ptr %2, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  %13 = and i32 %1, 12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = xor i32 %7, -1
  %17 = and i32 %12, %16
  br label %23

18:                                               ; preds = %4
  %19 = and i32 %1, 3
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 %7
  %22 = or i32 %12, %21
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %10) #3
  br label %33

27:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %24) #3, !srcloc !9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  %29 = icmp eq i32 %28, %24
  %30 = select i1 %29, i32 0, i32 -22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %10) #3
  %31 = icmp eq ptr %3, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %3() #3
  br label %33

33:                                               ; preds = %32, %27, %26
  %34 = phi i32 [ 0, %26 ], [ %30, %32 ], [ %30, %27 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_dist_config(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 32
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 3072
  br label %10

7:                                                ; preds = %10
  br i1 %4, label %8, label %32

8:                                                ; preds = %7
  %9 = getelementptr i8, ptr %0, i32 1024
  br label %20

10:                                               ; preds = %10, %5
  %11 = phi i32 [ 32, %5 ], [ %14, %10 ]
  %12 = lshr exact i32 %11, 2
  %13 = getelementptr i8, ptr %6, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #3, !srcloc !9
  %14 = add i32 %11, 16
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %10, label %7

16:                                               ; preds = %20
  br i1 %4, label %17, label %32

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %0, i32 896
  %19 = getelementptr i8, ptr %0, i32 384
  br label %25

20:                                               ; preds = %20, %8
  %21 = phi i32 [ 32, %8 ], [ %23, %20 ]
  %22 = getelementptr i8, ptr %9, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1600085856) #3, !srcloc !9
  %23 = add i32 %21, 4
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %20, label %16

25:                                               ; preds = %25, %17
  %26 = phi i32 [ 32, %17 ], [ %30, %25 ]
  %27 = lshr exact i32 %26, 3
  %28 = getelementptr i8, ptr %18, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #3, !srcloc !9
  %29 = getelementptr i8, ptr %19, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #3, !srcloc !9
  %30 = add i32 %26, 32
  %31 = icmp ult i32 %30, %1
  br i1 %31, label %25, label %32

32:                                               ; preds = %25, %16, %7, %3
  %33 = icmp eq ptr %2, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void %2() #3
  br label %35

35:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gic_cpu_config(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 896
  %7 = getelementptr i8, ptr %0, i32 384
  br label %11

8:                                                ; preds = %11
  br i1 %4, label %9, label %25

9:                                                ; preds = %8
  %10 = getelementptr i8, ptr %0, i32 1024
  br label %18

11:                                               ; preds = %11, %5
  %12 = phi i32 [ 0, %5 ], [ %16, %11 ]
  %13 = sdiv i32 %12, 8
  %14 = getelementptr i8, ptr %6, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #3, !srcloc !9
  %15 = getelementptr i8, ptr %7, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1) #3, !srcloc !9
  %16 = add i32 %12, 32
  %17 = icmp slt i32 %16, %1
  br i1 %17, label %11, label %8

18:                                               ; preds = %18, %9
  %19 = phi i32 [ 0, %9 ], [ %23, %18 ]
  %20 = shl i32 %19, 2
  %21 = sdiv i32 %20, 4
  %22 = getelementptr i8, ptr %10, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1600085856) #3, !srcloc !9
  %23 = add i32 %19, 4
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %18, label %25

25:                                               ; preds = %18, %8, %3
  %26 = icmp eq ptr %2, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void %2() #3
  br label %28

28:                                               ; preds = %27, %25
  ret void
}

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
!8 = !{i64 3052451}
!9 = !{i64 3052033}
