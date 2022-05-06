; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_math.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_math.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intlog2:\09\09\09\09\09"
module asm "\09.asciz \09\22intlog2\22\09\09\09\09\09"
module asm "__kstrtabns_intlog2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intlog10:\09\09\09\09\09"
module asm "\09.asciz \09\22intlog10\22\09\09\09\09\09"
module asm "__kstrtabns_intlog10:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"drivers/media/dvb-core/dvb_math.c\00", align 1
@logtable = internal unnamed_addr constant [256 x i16] [i16 0, i16 369, i16 736, i16 1102, i16 1466, i16 1829, i16 2190, i16 2551, i16 2909, i16 3267, i16 3623, i16 3978, i16 4331, i16 4683, i16 5034, i16 5384, i16 5732, i16 6079, i16 6425, i16 6769, i16 7112, i16 7454, i16 7795, i16 8134, i16 8473, i16 8810, i16 9146, i16 9480, i16 9814, i16 10146, i16 10477, i16 10807, i16 11136, i16 11464, i16 11791, i16 12116, i16 12440, i16 12764, i16 13086, i16 13407, i16 13727, i16 14046, i16 14363, i16 14680, i16 14996, i16 15310, i16 15624, i16 15937, i16 16248, i16 16559, i16 16868, i16 17177, i16 17484, i16 17791, i16 18096, i16 18401, i16 18704, i16 19007, i16 19308, i16 19609, i16 19909, i16 20207, i16 20505, i16 20802, i16 21098, i16 21393, i16 21687, i16 21980, i16 22272, i16 22564, i16 22854, i16 23144, i16 23433, i16 23720, i16 24007, i16 24293, i16 24579, i16 24863, i16 25146, i16 25429, i16 25711, i16 25992, i16 26272, i16 26551, i16 26830, i16 27108, i16 27384, i16 27660, i16 27936, i16 28210, i16 28484, i16 28757, i16 29029, i16 29300, i16 29571, i16 29840, i16 30109, i16 30378, i16 30645, i16 30912, i16 31178, i16 31443, i16 31707, i16 31971, i16 32234, i16 32496, i16 32758, i16 -32517, i16 -32257, i16 -31998, i16 -31739, i16 -31481, i16 -31224, i16 -30967, i16 -30711, i16 -30456, i16 -30202, i16 -29948, i16 -29695, i16 -29442, i16 -29190, i16 -28939, i16 -28689, i16 -28439, i16 -28190, i16 -27941, i16 -27694, i16 -27446, i16 -27200, i16 -26954, i16 -26709, i16 -26464, i16 -26220, i16 -25977, i16 -25734, i16 -25492, i16 -25250, i16 -25009, i16 -24769, i16 -24530, i16 -24290, i16 -24052, i16 -23814, i16 -23577, i16 -23340, i16 -23104, i16 -22869, i16 -22634, i16 -22399, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21236, i16 -21006, i16 -20775, i16 -20546, i16 -20316, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18727, i16 -18502, i16 -18278, i16 -18054, i16 -17831, i16 -17608, i16 -17386, i16 -17164, i16 -16943, i16 -16723, i16 -16502, i16 -16283, i16 -16064, i16 -15845, i16 -15627, i16 -15409, i16 -15192, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14114, i16 -13900, i16 -13686, i16 -13473, i16 -13260, i16 -13048, i16 -12836, i16 -12625, i16 -12414, i16 -12204, i16 -11994, i16 -11785, i16 -11576, i16 -11367, i16 -11159, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9511, i16 -9307, i16 -9104, i16 -8901, i16 -8698, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7691, i16 -7491, i16 -7291, i16 -7092, i16 -6893, i16 -6695, i16 -6497, i16 -6299, i16 -6102, i16 -5905, i16 -5709, i16 -5513, i16 -5317, i16 -5122, i16 -4927, i16 -4733, i16 -4539, i16 -4346, i16 -4152, i16 -3960, i16 -3767, i16 -3575, i16 -3384, i16 -3193, i16 -3002, i16 -2811, i16 -2621, i16 -2432, i16 -2242, i16 -2053, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -370, i16 -185], align 2
@__kstrtab_intlog2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_intlog2 = external dso_local constant [0 x i8], align 1
@__ksymtab_intlog2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intlog2 to i32), ptr @__kstrtab_intlog2, ptr @__kstrtabns_intlog2 }, section "___ksymtab+intlog2", align 4
@__kstrtab_intlog10 = external dso_local constant [0 x i8], align 1
@__kstrtabns_intlog10 = external dso_local constant [0 x i8], align 1
@__ksymtab_intlog10 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intlog10 to i32), ptr @__kstrtab_intlog10, ptr @__kstrtabns_intlog10 }, section "___ksymtab+intlog10", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_intlog10, ptr @__ksymtab_intlog2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @intlog2(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #3
  br label %27

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #3, !range !9
  %6 = shl i32 %0, %5
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = and i32 %6, 8388607
  %10 = add nuw nsw i32 %7, 1
  %11 = and i32 %10, 255
  %12 = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %8
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %14, %17
  %19 = and i32 %18, 65535
  %20 = mul i32 %19, %9
  %21 = lshr i32 %20, 15
  %22 = mul nsw i32 %5, -16777216
  %23 = add nsw i32 %22, 520093696
  %24 = shl nuw nsw i32 %17, 8
  %25 = or i32 %23, %24
  %26 = add i32 %25, %21
  br label %27

27:                                               ; preds = %4, %3
  %28 = phi i32 [ 0, %3 ], [ %26, %4 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @intlog10(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #3
  br label %31

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #3, !range !9
  %6 = shl i32 %0, %5
  %7 = lshr i32 %6, 23
  %8 = and i32 %7, 255
  %9 = and i32 %6, 8388607
  %10 = add nuw nsw i32 %7, 1
  %11 = and i32 %10, 255
  %12 = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %8
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %14, %17
  %19 = and i32 %18, 65535
  %20 = mul i32 %19, %9
  %21 = lshr i32 %20, 15
  %22 = mul nsw i32 %5, -16777216
  %23 = add nsw i32 %22, 520093696
  %24 = shl nuw nsw i32 %17, 8
  %25 = or i32 %23, %24
  %26 = add i32 %25, %21
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 646456993
  %29 = lshr i64 %28, 31
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %4, %3
  %32 = phi i32 [ 0, %3 ], [ %30, %4 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
