; ModuleID = '/llk/IR/arch/arm/kernel/irq.c_pt.bc'
source_filename = "../arch/arm/kernel/irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"%*s: %10lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Err\00", align 1
@irq_err_count = dso_local local_unnamed_addr global i32 0, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@machine_desc = external dso_local local_unnamed_addr global ptr, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013L2C: failed to init: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\012unexpected IRQ trap at vector %02x\0A\00", align 1
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_show_interrupts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @show_ipi_list(ptr noundef %0, i32 noundef %1) #6
  %3 = load i32, ptr @irq_err_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @.str.1, i32 noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_ipi_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_IRQ(i32 noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  %4 = load i32, ptr @nr_irqs, align 4
  %5 = icmp ule i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !9
  br i1 %6, label %12, label %7, !prof !9

7:                                                ; preds = %2
  %8 = tail call ptr @irq_to_desc(i32 noundef %0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %7
  %11 = tail call i32 @handle_irq_desc(ptr noundef nonnull %8) #6
  br label %16

12:                                               ; preds = %7, %2
  %13 = load i32, ptr @irq_err_count, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr @irq_err_count, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0) #7
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @asm_do_IRQ(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @irq_enter() #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #5, !srcloc !10
  %6 = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  store ptr %1, ptr %7, align 4
  %9 = icmp eq i32 %0, 0
  %10 = load i32, ptr @nr_irqs, align 4
  %11 = icmp ule i32 %10, %0
  %12 = select i1 %9, i1 true, i1 %11, !prof !9
  br i1 %12, label %18, label %13, !prof !9

13:                                               ; preds = %2
  %14 = tail call ptr @irq_to_desc(i32 noundef %0) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %13
  %17 = tail call i32 @handle_irq_desc(ptr noundef nonnull %14) #6
  br label %22

18:                                               ; preds = %13, %2
  %19 = load i32, ptr @irq_err_count, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr @irq_err_count, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0) #7
  br label %22

22:                                               ; preds = %18, %16
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #5, !srcloc !10
  %26 = add i32 %25, ptrtoint (ptr @__irq_regs to i32)
  %27 = inttoptr i32 %26 to ptr
  store ptr %8, ptr %27, align 4
  tail call void @irq_exit() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_IRQ() local_unnamed_addr #2 section ".init.text" {
  %1 = load ptr, ptr @machine_desc, align 4
  %2 = getelementptr inbounds %struct.machine_desc, ptr %1, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @irqchip_init() #6
  br label %7

6:                                                ; preds = %0
  tail call void %3() #6
  br label %7

7:                                                ; preds = %6, %5
  %8 = load ptr, ptr @machine_desc, align 4
  %9 = getelementptr inbounds %struct.machine_desc, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.machine_desc, ptr %8, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.machine_desc, ptr %8, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds %struct.machine_desc, ptr %8, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @l2x0_of_init(i32 noundef %24, i32 noundef %10) #6
  switch i32 %25, label %26 [
    i32 -19, label %28
    i32 0, label %28
  ]

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %25) #7
  br label %28

28:                                               ; preds = %26, %22, %22, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2x0_of_init(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #4 section ".init.text" {
  %1 = load ptr, ptr @machine_desc, align 4
  %2 = getelementptr inbounds %struct.machine_desc, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 16, i32 %3
  store i32 %5, ptr @nr_irqs, align 4
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 552537}
