; ModuleID = '/llk/IR/lib/fonts/fonts.c_pt.bc'
source_filename = "../lib/fonts/fonts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_font:\09\09\09\09\09"
module asm "\09.asciz \09\22find_font\22\09\09\09\09\09"
module asm "__kstrtabns_find_font:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_default_font:\09\09\09\09\09"
module asm "\09.asciz \09\22get_default_font\22\09\09\09\09\09"
module asm "__kstrtabns_get_default_font:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@__kstrtab_find_font = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_font = external dso_local constant [0 x i8], align 1
@__ksymtab_find_font = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_font to i32), ptr @__kstrtab_find_font, ptr @__kstrtabns_find_font }, section "___ksymtab+find_font", align 4
@__kstrtab_get_default_font = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_default_font = external dso_local constant [0 x i8], align 1
@__ksymtab_get_default_font = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_default_font to i32), ptr @__kstrtab_get_default_font, ptr @__kstrtabns_get_default_font }, section "___ksymtab+get_default_font", align 4
@__UNIQUE_ID_author101 = internal constant [50 x i8] c"font.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description102 = internal constant [31 x i8] c"font.description=Console Fonts\00", section ".modinfo", align 1
@__UNIQUE_ID_file103 = internal constant [25 x i8] c"font.file=lib/fonts/font\00", section ".modinfo", align 1
@__UNIQUE_ID_license104 = internal constant [17 x i8] c"font.license=GPL\00", section ".modinfo", align 1
@font_vga_8x8 = external dso_local constant %struct.font_desc, align 4
@font_vga_8x16 = external dso_local constant %struct.font_desc, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author101, ptr @__UNIQUE_ID_description102, ptr @__UNIQUE_ID_file103, ptr @__UNIQUE_ID_license104, ptr @__ksymtab_find_font, ptr @__ksymtab_get_default_font], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_font(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 1), align 4
  %3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 1), align 4
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @font_vga_8x16, ptr null
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ @font_vga_8x8, %1 ], [ %9, %5 ]
  ret ptr %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @get_default_font(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp sgt i32 %1, 399
  %6 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 6), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 3), align 4
  %8 = icmp ult i32 %7, 9
  %9 = xor i1 %5, %8
  %10 = add i32 %6, 1000
  %11 = select i1 %9, i32 %10, i32 %6
  %12 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x8, i32 0, i32 2), align 4
  %13 = udiv i32 %0, %12
  %14 = udiv i32 %1, %7
  %15 = mul i32 %14, %13
  %16 = icmp ugt i32 %15, 20999
  %17 = udiv i32 %15, 1000
  %18 = sub nsw i32 20, %17
  %19 = select i1 %16, i32 %18, i32 0
  %20 = add i32 %19, %11
  %21 = add i32 %12, -1
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = add i32 %7, -1
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %3
  %29 = icmp eq i32 %28, 0
  %30 = add i32 %20, 1000
  %31 = select i1 %29, i32 %20, i32 %30
  br label %32

32:                                               ; preds = %25, %4
  %33 = phi i32 [ %20, %4 ], [ %31, %25 ]
  %34 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 6), align 4
  %35 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 3), align 4
  %36 = icmp ult i32 %35, 9
  %37 = xor i1 %5, %36
  %38 = add i32 %34, 1000
  %39 = select i1 %37, i32 %38, i32 %34
  %40 = load i32, ptr getelementptr inbounds (%struct.font_desc, ptr @font_vga_8x16, i32 0, i32 2), align 4
  %41 = udiv i32 %0, %40
  %42 = udiv i32 %1, %35
  %43 = mul i32 %42, %41
  %44 = icmp ugt i32 %43, 20999
  %45 = udiv i32 %43, 1000
  %46 = sub nsw i32 20, %45
  %47 = select i1 %44, i32 %46, i32 0
  %48 = add i32 %47, %39
  %49 = add i32 %40, -1
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %32
  %54 = add i32 %35, -1
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %3
  %57 = icmp eq i32 %56, 0
  %58 = add i32 %48, 1000
  %59 = select i1 %57, i32 %48, i32 %58
  br label %60

60:                                               ; preds = %53, %32
  %61 = phi i32 [ %48, %32 ], [ %59, %53 ]
  %62 = icmp sgt i32 %33, -10000
  %63 = select i1 %62, ptr @font_vga_8x8, ptr null
  %64 = tail call i32 @llvm.smax.i32(i32 %33, i32 -10000)
  %65 = icmp sgt i32 %61, %64
  %66 = select i1 %65, ptr @font_vga_8x16, ptr %63
  ret ptr %66
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
