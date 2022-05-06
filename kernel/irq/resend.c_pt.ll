; ModuleID = '/llk/IR/kernel/irq/resend.c_pt.bc'
source_filename = "../kernel/irq/resend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.39, i32 }
%struct.atomic_t = type { i32 }
%union.anon.39 = type { ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@irqs_resend = internal global [257 x i32] zeroinitializer, align 4
@resend_tasklet = internal global %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 1, %union.anon.39 { ptr @resend_irqs }, i32 0 }, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @check_irq_resend(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %6, label %11, label %9

9:                                                ; preds = %2
  %10 = and i32 %8, -513
  br label %51

11:                                               ; preds = %2
  %12 = and i32 %8, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = and i32 %8, 512
  %16 = icmp ne i32 %15, 0
  %17 = or i1 %16, %1
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = and i32 %8, -513
  store i32 %19, ptr %7, align 8
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.irq_chip, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = tail call i32 %24(ptr noundef %20) #2
  br label %30

28:                                               ; preds = %18
  %29 = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %20) #2
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %3, align 4
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 31
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39, %33
  %44 = phi i32 [ %35, %33 ], [ %41, %39 ]
  tail call void @_set_bit(i32 noundef %44, ptr noundef nonnull @irqs_resend) #2
  %45 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @resend_tasklet, i32 0, i32 1)) #2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @__tasklet_schedule(ptr noundef nonnull @resend_tasklet) #2
  br label %48

48:                                               ; preds = %47, %43, %30
  %49 = load i32, ptr %7, align 8
  %50 = or i32 %49, 64
  br label %51

51:                                               ; preds = %48, %9
  %52 = phi i32 [ %50, %48 ], [ %10, %9 ]
  %53 = phi i32 [ 0, %48 ], [ -22, %9 ]
  store i32 %52, ptr %7, align 8
  br label %54

54:                                               ; preds = %51, %39, %14, %11
  %55 = phi i32 [ -16, %11 ], [ 0, %14 ], [ -22, %39 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @resend_irqs(ptr nocapture noundef readnone %0) #0 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @irqs_resend, i32 noundef %3) #2
  %5 = icmp eq i32 %4, %3
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @nr_irqs, align 4
  %8 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @irqs_resend, i32 noundef %7) #2
  tail call void @_clear_bit(i32 noundef %8, ptr noundef nonnull @irqs_resend) #2
  %9 = tail call ptr @irq_to_desc(i32 noundef %8) #2
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #2, !srcloc !8
  %12 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef nonnull %9) #2
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !9
  br label %14

14:                                               ; preds = %11, %6
  br label %2

15:                                               ; preds = %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 603924}
!9 = !{i64 603734}
