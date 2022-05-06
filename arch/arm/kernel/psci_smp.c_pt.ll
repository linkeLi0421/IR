; ModuleID = '/llk/IR/arch/arm/kernel/psci_smp.c_pt.bc'
source_filename = "../arch/arm/kernel/psci_smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@psci_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @psci_boot_secondary, ptr @psci_cpu_kill, ptr @psci_cpu_die, ptr null, ptr @psci_cpu_disable }, section ".init.rodata", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [17 x i8] c"\016CPU%d killed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\016Retrying again to check for CPU kill\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"\014CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"psci: cpu %d failed to shutdown\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_smp_available() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  %2 = icmp ne ptr %1, null
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %9 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %10 = trunc i64 %9 to i32
  %11 = add i32 %8, %10
  %12 = tail call i32 %3(i32 noundef %7, i32 noundef %11) #7
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ %12, %5 ], [ -19, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_cpu_kill(i32 noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 %2(i32 noundef %6, i32 noundef 0) #7
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %59, %53, %47, %41, %35, %29, %23, %17, %11, %4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #8
  br label %68

11:                                               ; preds = %4
  tail call void @msleep(i32 noundef 10) #7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %13 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %14 = load i32, ptr %5, align 4
  %15 = tail call i32 %13(i32 noundef %14, i32 noundef 0) #7
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %9, label %17

17:                                               ; preds = %11
  tail call void @msleep(i32 noundef 10) #7
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %19 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %20 = load i32, ptr %5, align 4
  %21 = tail call i32 %19(i32 noundef %20, i32 noundef 0) #7
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %9, label %23

23:                                               ; preds = %17
  tail call void @msleep(i32 noundef 10) #7
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %25 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %26 = load i32, ptr %5, align 4
  %27 = tail call i32 %25(i32 noundef %26, i32 noundef 0) #7
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %9, label %29

29:                                               ; preds = %23
  tail call void @msleep(i32 noundef 10) #7
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %31 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %32 = load i32, ptr %5, align 4
  %33 = tail call i32 %31(i32 noundef %32, i32 noundef 0) #7
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %9, label %35

35:                                               ; preds = %29
  tail call void @msleep(i32 noundef 10) #7
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %37 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %38 = load i32, ptr %5, align 4
  %39 = tail call i32 %37(i32 noundef %38, i32 noundef 0) #7
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %9, label %41

41:                                               ; preds = %35
  tail call void @msleep(i32 noundef 10) #7
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %43 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %44 = load i32, ptr %5, align 4
  %45 = tail call i32 %43(i32 noundef %44, i32 noundef 0) #7
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %9, label %47

47:                                               ; preds = %41
  tail call void @msleep(i32 noundef 10) #7
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %49 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %50 = load i32, ptr %5, align 4
  %51 = tail call i32 %49(i32 noundef %50, i32 noundef 0) #7
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %9, label %53

53:                                               ; preds = %47
  tail call void @msleep(i32 noundef 10) #7
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %55 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %56 = load i32, ptr %5, align 4
  %57 = tail call i32 %55(i32 noundef %56, i32 noundef 0) #7
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %9, label %59

59:                                               ; preds = %53
  tail call void @msleep(i32 noundef 10) #7
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %61 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  %62 = load i32, ptr %5, align 4
  %63 = tail call i32 %61(i32 noundef %62, i32 noundef 0) #7
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %9, label %65

65:                                               ; preds = %59
  tail call void @msleep(i32 noundef 10) #7
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %0, i32 noundef %63) #8
  br label %68

68:                                               ; preds = %65, %9, %1
  %69 = phi i32 [ 1, %9 ], [ 0, %65 ], [ 1, %1 ]
  ret i32 %69
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psci_cpu_die(i32 noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 %2(i32 noundef 65536) #7
  br label %6

6:                                                ; preds = %4, %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, i32 noundef %0) #9
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psci_cpu_disable(i32 noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @psci_tos_resident_on(i32 noundef %0) #7
  %6 = sext i1 %5 to i32
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ -95, %1 ], [ %6, %4 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_tos_resident_on(i32 noundef) local_unnamed_addr #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

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
!8 = !{i64 2148740339, i64 2148740362, i64 2148740394, i64 2148740426, i64 2148740464, i64 2148740494}
