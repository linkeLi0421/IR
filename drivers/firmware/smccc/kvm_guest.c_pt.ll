; ModuleID = '/llk/IR/drivers/firmware/smccc/kvm_guest.c_pt.bc'
source_filename = "../drivers/firmware/smccc/kvm_guest.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvm_arm_hyp_service_available:\09\09\09\09\09"
module asm "\09.asciz \09\22kvm_arm_hyp_service_available\22\09\09\09\09\09"
module asm "__kstrtabns_kvm_arm_hyp_service_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kvm_arm_hyp_services = internal global [4 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [78 x i8] c"\016smccc: KVM: hypervisor services detected (0x%08lx 0x%08lx 0x%08lx 0x%08lx)\0A\00", align 1
@__kstrtab_kvm_arm_hyp_service_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvm_arm_hyp_service_available = external dso_local constant [0 x i8], align 1
@__ksymtab_kvm_arm_hyp_service_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvm_arm_hyp_service_available to i32), ptr @__kstrtab_kvm_arm_hyp_service_available, ptr @__kstrtabns_kvm_arm_hyp_service_available }, section "___ksymtab_gpl+kvm_arm_hyp_service_available", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_kvm_arm_hyp_service_available], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kvm_init_hyp_services() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %3, label %51

3:                                                ; preds = %0
  %4 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  switch i32 %4, label %17 [
    i32 2, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %3
  %6 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046755071) #4, !srcloc !8
  %7 = extractvalue { i32, i32, i32, i32 } %6, 3
  %8 = extractvalue { i32, i32, i32, i32 } %6, 2
  %9 = extractvalue { i32, i32, i32, i32 } %6, 1
  %10 = extractvalue { i32, i32, i32, i32 } %6, 0
  br label %18

11:                                               ; preds = %3
  %12 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046755071) #4, !srcloc !9
  %13 = extractvalue { i32, i32, i32, i32 } %12, 3
  %14 = extractvalue { i32, i32, i32, i32 } %12, 2
  %15 = extractvalue { i32, i32, i32, i32 } %12, 1
  %16 = extractvalue { i32, i32, i32, i32 } %12, 0
  br label %18

17:                                               ; preds = %3
  tail call void asm sideeffect "", "{r0},~{memory}"(i32 -2046755071) #4, !srcloc !10
  br label %18

18:                                               ; preds = %17, %11, %5
  %19 = phi i32 [ -1, %17 ], [ %16, %11 ], [ %10, %5 ]
  %20 = phi i32 [ 0, %17 ], [ %15, %11 ], [ %9, %5 ]
  %21 = phi i32 [ 0, %17 ], [ %14, %11 ], [ %8, %5 ]
  %22 = phi i32 [ 0, %17 ], [ %13, %11 ], [ %7, %5 ]
  %23 = icmp ne i32 %19, -1234193368
  %24 = icmp ne i32 %20, -384711378
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp ne i32 %21, 1447807657
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp ne i32 %22, 1949958221
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %51, label %30

30:                                               ; preds = %18
  %31 = tail call i32 @arm_smccc_1_1_get_conduit() #4
  switch i32 %31, label %44 [
    i32 2, label %32
    i32 1, label %38
  ]

32:                                               ; preds = %30
  %33 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046820352) #4, !srcloc !11
  %34 = extractvalue { i32, i32, i32, i32 } %33, 3
  %35 = extractvalue { i32, i32, i32, i32 } %33, 2
  %36 = extractvalue { i32, i32, i32, i32 } %33, 1
  %37 = extractvalue { i32, i32, i32, i32 } %33, 0
  br label %45

38:                                               ; preds = %30
  %39 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},~{memory}"(i32 -2046820352) #4, !srcloc !12
  %40 = extractvalue { i32, i32, i32, i32 } %39, 3
  %41 = extractvalue { i32, i32, i32, i32 } %39, 2
  %42 = extractvalue { i32, i32, i32, i32 } %39, 1
  %43 = extractvalue { i32, i32, i32, i32 } %39, 0
  br label %45

44:                                               ; preds = %30
  tail call void asm sideeffect "", "{r0},~{memory}"(i32 -2046820352) #4, !srcloc !13
  br label %45

45:                                               ; preds = %44, %38, %32
  %46 = phi i32 [ -1, %44 ], [ %43, %38 ], [ %37, %32 ]
  %47 = phi i32 [ 0, %44 ], [ %42, %38 ], [ %36, %32 ]
  %48 = phi i32 [ 0, %44 ], [ %41, %38 ], [ %35, %32 ]
  %49 = phi i32 [ 0, %44 ], [ %40, %38 ], [ %34, %32 ]
  store i32 %46, ptr @__kvm_arm_hyp_services, align 4
  store i32 %47, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 1), align 4
  store i32 %48, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 2), align 4
  store i32 %49, ptr getelementptr inbounds ([4 x i32], ptr @__kvm_arm_hyp_services, i32 0, i32 3), align 4
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %49, i32 noundef %48, i32 noundef %47, i32 noundef %46) #5
  br label %51

51:                                               ; preds = %45, %18, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @kvm_arm_hyp_service_available(i32 noundef %0) #3 {
  %2 = icmp ugt i32 %0, 127
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5
  %5 = getelementptr i32, ptr @__kvm_arm_hyp_services, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %0, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i1 [ %10, %3 ], [ false, %1 ]
  ret i1 %12
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2148489061, i64 2148489144}
!9 = !{i64 2148491651, i64 2148491714}
!10 = !{i64 2148492858}
!11 = !{i64 2148501126, i64 2148501209}
!12 = !{i64 2148503671, i64 2148503734}
!13 = !{i64 2148504848}
