; ModuleID = '/llk/IR/drivers/net/phy/linkmode.c_pt.bc'
source_filename = "../drivers/net/phy/linkmode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkmode_resolve_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22linkmode_resolve_pause\22\09\09\09\09\09"
module asm "__kstrtabns_linkmode_resolve_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkmode_set_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22linkmode_set_pause\22\09\09\09\09\09"
module asm "__kstrtabns_linkmode_set_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_linkmode_resolve_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkmode_resolve_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_linkmode_resolve_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkmode_resolve_pause to i32), ptr @__kstrtab_linkmode_resolve_pause, ptr @__kstrtabns_linkmode_resolve_pause }, section "___ksymtab_gpl+linkmode_resolve_pause", align 4
@__kstrtab_linkmode_set_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkmode_set_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_linkmode_set_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkmode_set_pause to i32), ptr @__kstrtab_linkmode_set_pause, ptr @__kstrtabns_linkmode_set_pause }, section "___ksymtab_gpl+linkmode_set_pause", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_linkmode_resolve_pause, ptr @__ksymtab_linkmode_set_pause], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @linkmode_resolve_pause(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = call i32 @__bitmap_and(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef 92) #5
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store i8 1, ptr %2, align 1
  br label %25

11:                                               ; preds = %4
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load volatile i32, ptr %1, align 4
  %17 = lshr i32 %16, 13
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, ptr %2, align 1
  %20 = load volatile i32, ptr %0, align 4
  %21 = lshr i32 %20, 13
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  br label %25

24:                                               ; preds = %11
  store i8 0, ptr %2, align 1
  br label %25

25:                                               ; preds = %24, %15, %10
  %26 = phi i8 [ %23, %15 ], [ 0, %24 ], [ 1, %10 ]
  store i8 %26, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @linkmode_set_pause(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #3 {
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, -24577
  %6 = select i1 %2, i32 8192, i32 0
  %7 = or i32 %5, %6
  %8 = xor i1 %1, %2
  %9 = select i1 %8, i32 16384, i32 0
  %10 = or i32 %7, %9
  store i32 %10, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
