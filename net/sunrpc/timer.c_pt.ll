; ModuleID = '/llk/IR/net/sunrpc/timer.c_pt.bc'
source_filename = "../net/sunrpc/timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_init_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_init_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_init_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_update_rtt\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_update_rtt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_calc_rto:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_calc_rto\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_calc_rto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }

@__kstrtab_rpc_init_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_init_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_init_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_init_rtt to i32), ptr @__kstrtab_rpc_init_rtt, ptr @__kstrtabns_rpc_init_rtt }, section "___ksymtab_gpl+rpc_init_rtt", align 4
@__kstrtab_rpc_update_rtt = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_update_rtt = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_update_rtt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_update_rtt to i32), ptr @__kstrtab_rpc_update_rtt, ptr @__kstrtabns_rpc_update_rtt }, section "___ksymtab_gpl+rpc_update_rtt", align 4
@__kstrtab_rpc_calc_rto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_calc_rto = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_calc_rto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_calc_rto to i32), ptr @__kstrtab_rpc_calc_rto, ptr @__kstrtabns_rpc_calc_rto }, section "___ksymtab_gpl+rpc_calc_rto", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_rpc_calc_rto, ptr @__ksymtab_rpc_init_rtt, ptr @__ksymtab_rpc_update_rtt], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @rpc_init_rtt(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  store i32 %1, ptr %0, align 4
  %3 = icmp ugt i32 %1, 20
  %4 = shl i32 %1, 3
  %5 = add i32 %4, -160
  %6 = select i1 %3, i32 %5, i32 0
  %7 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 0
  store i32 %6, ptr %7, align 4
  %8 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 0
  store i32 20, ptr %8, align 4
  %9 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 3, i32 0
  store i32 0, ptr %9, align 4
  %10 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 1
  store i32 %6, ptr %10, align 4
  %11 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 1
  store i32 20, ptr %11, align 4
  %12 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 2
  store i32 %6, ptr %13, align 4
  %14 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 2
  store i32 20, ptr %14, align 4
  %15 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 3, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 3
  store i32 %6, ptr %16, align 4
  %17 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 3
  store i32 20, ptr %17, align 4
  %18 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 3, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 4
  store i32 %6, ptr %19, align 4
  %20 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 4
  store i32 20, ptr %20, align 4
  %21 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 3, i32 4
  store i32 0, ptr %21, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rpc_update_rtt(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  %5 = icmp slt i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 1, i32 %2
  %11 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = ashr i32 %12, 3
  %14 = sub i32 %10, %13
  %15 = add i32 %14, %12
  store i32 %15, ptr %11, align 4
  %16 = tail call i32 @llvm.abs.i32(i32 %14, i1 false)
  %17 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 %8
  %18 = load i32, ptr %17, align 4
  %19 = ashr i32 %18, 2
  %20 = sub i32 %18, %19
  %21 = add i32 %20, %16
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 10)
  store i32 %22, ptr %17, align 4
  br label %23

23:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rpc_calc_rto(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4
  br label %16

6:                                                ; preds = %2
  %7 = add i32 %1, -1
  %8 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 1, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 7
  %11 = lshr i32 %10, 3
  %12 = getelementptr %struct.rpc_rtt, ptr %0, i32 0, i32 2, i32 %7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 6000)
  br label %16

16:                                               ; preds = %6, %4
  %17 = phi i32 [ %5, %4 ], [ %15, %6 ]
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
