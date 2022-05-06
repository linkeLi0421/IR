; ModuleID = '/llk/IR/drivers/base/firmware_loader/builtin/main.c_pt.bc'
source_filename = "../drivers/base/firmware_loader/builtin/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_firmware_request_builtin:\09\09\09\09\09"
module asm "\09.asciz \09\22firmware_request_builtin\22\09\09\09\09\09"
module asm "__kstrtabns_firmware_request_builtin:\09\09\09\09\09"
module asm "\09.asciz \09\22TEST_FIRMWARE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.builtin_fw = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__start_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 4
@__end_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 4
@__kstrtab_firmware_request_builtin = external dso_local constant [0 x i8], align 1
@__kstrtabns_firmware_request_builtin = external dso_local constant [0 x i8], align 1
@__ksymtab_firmware_request_builtin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @firmware_request_builtin to i32), ptr @__kstrtab_firmware_request_builtin, ptr @__kstrtabns_firmware_request_builtin }, section "___ksymtab_gpl+firmware_request_builtin", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_firmware_request_builtin], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_request_builtin(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = or i1 %3, icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw)
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %17, %16 ], [ @__start_builtin_fw, %2 ]
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.builtin_fw, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %0, align 4
  %13 = getelementptr inbounds %struct.builtin_fw, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  br label %19

16:                                               ; preds = %5
  %17 = getelementptr %struct.builtin_fw, ptr %6, i32 1
  %18 = icmp eq ptr %17, @__end_builtin_fw
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %10, %2
  %20 = phi i1 [ true, %10 ], [ false, %2 ], [ false, %16 ]
  ret i1 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_request_builtin_buf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw)
  br i1 %6, label %25, label %7

7:                                                ; preds = %12, %4
  %8 = phi ptr [ %13, %12 ], [ @__start_builtin_fw, %4 ]
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.builtin_fw, ptr %8, i32 1
  %14 = icmp eq ptr %13, @__end_builtin_fw
  br i1 %14, label %25, label %7

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.builtin_fw, ptr %8, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %0, align 4
  %18 = getelementptr inbounds %struct.builtin_fw, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %2, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = icmp ugt i32 %17, %3
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %2, ptr align 1 %19, i32 %17, i1 false) #4
  br label %25

25:                                               ; preds = %24, %22, %15, %12, %4
  %26 = phi i1 [ true, %24 ], [ true, %15 ], [ false, %22 ], [ false, %4 ], [ false, %12 ]
  ret i1 %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @firmware_is_builtin(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  br i1 icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), label %15, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([0 x %struct.builtin_fw], ptr @__start_builtin_fw, i32 0, i32 0, i32 1), align 4
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %9, %11 ], [ @__start_builtin_fw, %2 ]
  %9 = getelementptr %struct.builtin_fw, ptr %8, i32 1
  %10 = icmp eq ptr %9, @__end_builtin_fw
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.builtin_fw, ptr %8, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %15, label %7

15:                                               ; preds = %11, %7, %2, %1
  %16 = phi i1 [ icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), %1 ], [ icmp eq (ptr @__start_builtin_fw, ptr @__end_builtin_fw), %2 ], [ %10, %11 ], [ %10, %7 ]
  %17 = xor i1 %16, true
  ret i1 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
