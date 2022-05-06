; ModuleID = '/llk/IR/lib/dim/dim.c_pt.bc'
source_filename = "../lib/dim/dim.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_on_top\22\09\09\09\09\09"
module asm "__kstrtabns_dim_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_turn:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_turn\22\09\09\09\09\09"
module asm "__kstrtabns_dim_turn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_park_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_park_on_top\22\09\09\09\09\09"
module asm "__kstrtabns_dim_park_on_top:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_park_tired:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_park_tired\22\09\09\09\09\09"
module asm "__kstrtabns_dim_park_tired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dim_calc_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22dim_calc_stats\22\09\09\09\09\09"
module asm "__kstrtabns_dim_calc_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }

@__kstrtab_dim_on_top = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_on_top = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_on_top = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_on_top to i32), ptr @__kstrtab_dim_on_top, ptr @__kstrtabns_dim_on_top }, section "___ksymtab+dim_on_top", align 4
@__kstrtab_dim_turn = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_turn = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_turn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_turn to i32), ptr @__kstrtab_dim_turn, ptr @__kstrtabns_dim_turn }, section "___ksymtab+dim_turn", align 4
@__kstrtab_dim_park_on_top = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_park_on_top = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_park_on_top = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_park_on_top to i32), ptr @__kstrtab_dim_park_on_top, ptr @__kstrtabns_dim_park_on_top }, section "___ksymtab+dim_park_on_top", align 4
@__kstrtab_dim_park_tired = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_park_tired = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_park_tired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_park_tired to i32), ptr @__kstrtab_dim_park_tired, ptr @__kstrtabns_dim_park_tired }, section "___ksymtab+dim_park_tired", align 4
@__kstrtab_dim_calc_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_dim_calc_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_dim_calc_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dim_calc_stats to i32), ptr @__kstrtab_dim_calc_stats, ptr @__kstrtabns_dim_calc_stats }, section "___ksymtab+dim_calc_stats", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_dim_calc_stats, ptr @__ksymtab_dim_on_top, ptr @__ksymtab_dim_park_on_top, ptr @__ksymtab_dim_park_tired, ptr @__ksymtab_dim_turn], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dim_on_top(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %12 [
    i8 0, label %20
    i8 1, label %20
    i8 2, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %6 = load i8, ptr %5, align 8
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 1
  br label %20

20:                                               ; preds = %16, %12, %8, %4, %1, %1
  %21 = phi i1 [ true, %1 ], [ true, %1 ], [ false, %4 ], [ %11, %8 ], [ false, %12 ], [ %19, %16 ]
  ret i1 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dim_turn(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %8 [
    i8 3, label %6
    i8 2, label %4
  ]

4:                                                ; preds = %1
  store i8 3, ptr %2, align 2
  %5 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  store i8 0, ptr %5, align 8
  br label %8

6:                                                ; preds = %1
  store i8 2, ptr %2, align 2
  %7 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  store i8 0, ptr %7, align 1
  br label %8

8:                                                ; preds = %6, %4, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dim_park_on_top(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  store i32 0, ptr %2, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dim_park_tired(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 9
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 10
  store i8 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.dim, ptr %0, i32 0, i32 8
  store i8 1, ptr %4, align 2
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dim_calc_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #3 {
  %4 = load i64, ptr %1, align 8
  %5 = load i64, ptr %0, align 8
  %6 = sub i64 %4, %5
  %7 = tail call i64 @llvm.abs.i64(i64 %6, i1 false) #5
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %7, i32 0) #6, !srcloc !8
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = extractvalue { i64, i32 } %8, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %7, i64 %9, i32 %10) #6, !srcloc !9
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = icmp slt i64 %6, 0
  %14 = lshr i64 %12, 9
  %15 = sub nsw i64 0, %14
  %16 = select i1 %13, i64 %15, i64 %14
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.dim_sample, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dim_sample, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.dim_sample, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dim_sample, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = getelementptr inbounds %struct.dim_sample, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.dim_sample, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %31, %33
  %35 = mul i32 %34, 1000
  %36 = add i32 %17, -1
  %37 = add i32 %36, %35
  %38 = udiv i32 %37, %17
  store i32 %38, ptr %2, align 4
  %39 = mul i32 %29, 1000
  %40 = add i32 %36, %39
  %41 = udiv i32 %40, %17
  %42 = getelementptr inbounds %struct.dim_stats, ptr %2, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = add i32 %17, 63999
  %44 = udiv i32 %43, %17
  %45 = getelementptr inbounds %struct.dim_stats, ptr %2, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = mul i32 %24, 1000
  %47 = add i32 %36, %46
  %48 = udiv i32 %47, %17
  %49 = getelementptr inbounds %struct.dim_stats, ptr %2, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = icmp ugt i32 %17, -64000
  br i1 %50, label %61, label %51

51:                                               ; preds = %19
  %52 = mul i32 %48, 100
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %56, !prof !10

54:                                               ; preds = %51
  %55 = udiv i32 %52, %44
  br label %61

56:                                               ; preds = %51
  %57 = sext i32 %52 to i64
  %58 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %57) #6, !srcloc !11
  %59 = extractvalue { i64, i64 } %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %56, %54, %19
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ], [ 0, %19 ]
  %63 = getelementptr inbounds %struct.dim_stats, ptr %2, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 849654, i64 849681, i64 849703, i64 849731}
!9 = !{i64 850062, i64 850089, i64 850122, i64 850143, i64 850170, i64 850196}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148335198, i64 2148335478, i64 2148335812, i64 2148336146}
