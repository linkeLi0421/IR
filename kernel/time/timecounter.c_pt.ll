; ModuleID = '/llk/IR/kernel/time/timecounter.c_pt.bc'
source_filename = "../kernel/time/timecounter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_init\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_read\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timecounter_cyc2time:\09\09\09\09\09"
module asm "\09.asciz \09\22timecounter_cyc2time\22\09\09\09\09\09"
module asm "__kstrtabns_timecounter_cyc2time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }

@__kstrtab_timecounter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_init to i32), ptr @__kstrtab_timecounter_init, ptr @__kstrtabns_timecounter_init }, section "___ksymtab_gpl+timecounter_init", align 4
@__kstrtab_timecounter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_read to i32), ptr @__kstrtab_timecounter_read, ptr @__kstrtabns_timecounter_read }, section "___ksymtab_gpl+timecounter_read", align 4
@__kstrtab_timecounter_cyc2time = external dso_local constant [0 x i8], align 1
@__kstrtabns_timecounter_cyc2time = external dso_local constant [0 x i8], align 1
@__ksymtab_timecounter_cyc2time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timecounter_cyc2time to i32), ptr @__kstrtab_timecounter_cyc2time, ptr @__kstrtabns_timecounter_cyc2time }, section "___ksymtab_gpl+timecounter_cyc2time", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_timecounter_cyc2time, ptr @__ksymtab_timecounter_init, ptr @__ksymtab_timecounter_read], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timecounter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i64 noundef %2) #0 {
  store ptr %1, ptr %0, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = tail call i64 %4(ptr noundef %1) #2
  %6 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 1
  store i64 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 2
  store i64 %2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.cyclecounter, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = shl nsw i64 -1, %10
  %12 = xor i64 %11, -1
  %13 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 3
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 4
  store i64 0, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @timecounter_read(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i64 %3(ptr noundef %2) #2
  %5 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %4, %6
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.cyclecounter, ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, %7
  %12 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.cyclecounter, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = mul i64 %11, %17
  %19 = load i64, ptr %14, align 8
  %20 = add i64 %18, %19
  %21 = and i64 %20, %13
  store i64 %21, ptr %14, align 8
  %22 = getelementptr inbounds %struct.cyclecounter, ptr %8, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = lshr i64 %20, %24
  store i64 %4, ptr %5, align 8
  %26 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %25, %27
  store i64 %28, ptr %26, align 8
  ret i64 %28
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @timecounter_cyc2time(ptr nocapture noundef readonly %0, i64 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %1, %4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, %5
  %10 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.timecounter, ptr %0, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = lshr i64 %8, 1
  %15 = icmp ugt i64 %9, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = sub i64 %4, %1
  %18 = and i64 %8, %17
  %19 = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %20 to i64
  %22 = mul i64 %18, %21
  %23 = sub i64 %22, %13
  %24 = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %23, %26
  %28 = sub i64 %11, %27
  br label %40

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = zext i32 %31 to i64
  %33 = mul i64 %9, %32
  %34 = add i64 %33, %13
  %35 = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %34, %37
  %39 = add i64 %38, %11
  br label %40

40:                                               ; preds = %29, %16
  %41 = phi i64 [ %28, %16 ], [ %39, %29 ]
  ret i64 %41
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
