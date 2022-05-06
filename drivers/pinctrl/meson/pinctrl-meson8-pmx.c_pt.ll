; ModuleID = '/llk/IR/drivers/pinctrl/meson/pinctrl-meson8-pmx.c_pt.bc'
source_filename = "../drivers/pinctrl/meson/pinctrl-meson8-pmx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson8_pmx_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson8_pmx_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson8_pmx_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.meson_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr, %struct.gpio_chip, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
%struct.meson_pinctrl_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.meson_pmx_group = type { ptr, ptr, i32, ptr }
%struct.meson8_pmx_data = type { i8, i32, i32 }

@meson8_pmx_ops = dso_local constant %struct.pinmux_ops { ptr null, ptr null, ptr @meson_pmx_get_funcs_count, ptr @meson_pmx_get_func_name, ptr @meson_pmx_get_groups, ptr @meson8_pmx_set_mux, ptr @meson8_pmx_request_gpio, ptr null, ptr null, i8 0 }, align 4
@__kstrtab_meson8_pmx_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson8_pmx_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson8_pmx_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson8_pmx_ops to i32), ptr @__kstrtab_meson8_pmx_ops, ptr @__kstrtabns_meson8_pmx_ops }, section "___ksymtab_gpl+meson8_pmx_ops", align 4
@__UNIQUE_ID_file206 = internal constant [65 x i8] c"pinctrl_meson8_pmx.file=drivers/pinctrl/meson/pinctrl-meson8-pmx\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [34 x i8] c"pinctrl_meson8_pmx.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab_meson8_pmx_ops], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_pmx_get_funcs_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @meson_pmx_get_func_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_pmx_get_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #2
  %5 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.meson_pmx_group, ptr %8, i32 %2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.meson_pmx_group, ptr %8, i32 %2, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %3
  %15 = getelementptr %struct.meson_pmx_group, ptr %8, i32 %2, i32 1
  %16 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 4
  br label %17

17:                                               ; preds = %77, %14
  %18 = phi i32 [ %12, %14 ], [ %78, %77 ]
  %19 = phi ptr [ %6, %14 ], [ %79, %77 ]
  %20 = phi i32 [ 0, %14 ], [ %80, %77 ]
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr i32, ptr %21, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %68, %17
  %28 = phi ptr [ %69, %68 ], [ %19, %17 ]
  %29 = phi ptr [ %70, %68 ], [ %19, %17 ]
  %30 = phi i32 [ %71, %68 ], [ 0, %17 ]
  %31 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %29, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.meson_pmx_group, ptr %32, i32 %30, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp ne i8 %35, 0
  %37 = icmp eq i32 %30, %2
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %68, label %39

39:                                               ; preds = %27
  %40 = getelementptr %struct.meson_pmx_group, ptr %32, i32 %30, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.meson_pmx_group, ptr %32, i32 %30, i32 1
  %45 = getelementptr inbounds %struct.meson8_pmx_data, ptr %34, i32 0, i32 1
  %46 = getelementptr inbounds %struct.meson8_pmx_data, ptr %34, i32 0, i32 2
  br label %47

47:                                               ; preds = %62, %43
  %48 = phi i32 [ %41, %43 ], [ %63, %62 ]
  %49 = phi i32 [ 0, %43 ], [ %64, %62 ]
  %50 = load ptr, ptr %44, align 4
  %51 = getelementptr i32, ptr %50, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %23
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load ptr, ptr %16, align 4
  %56 = load i32, ptr %45, align 4
  %57 = shl i32 %56, 2
  %58 = load i32, ptr %46, align 4
  %59 = shl nuw i32 1, %58
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  %61 = load i32, ptr %40, align 4
  br label %62

62:                                               ; preds = %54, %47
  %63 = phi i32 [ %48, %47 ], [ %61, %54 ]
  %64 = add nuw i32 %49, 1
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %47, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %5, align 4
  br label %68

68:                                               ; preds = %66, %39, %27
  %69 = phi ptr [ %67, %66 ], [ %28, %39 ], [ %28, %27 ]
  %70 = phi ptr [ %67, %66 ], [ %29, %39 ], [ %29, %27 ]
  %71 = add nuw i32 %30, 1
  %72 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %70, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %27, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr %11, align 4
  br label %77

77:                                               ; preds = %75, %17
  %78 = phi i32 [ %76, %75 ], [ %18, %17 ]
  %79 = phi ptr [ %69, %75 ], [ %19, %17 ]
  %80 = add nuw i32 %20, 1
  %81 = icmp ult i32 %80, %78
  br i1 %81, label %17, label %82

82:                                               ; preds = %77, %3
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.meson8_pmx_data, ptr %10, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 2
  %90 = getelementptr inbounds %struct.meson8_pmx_data, ptr %10, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = shl nuw i32 1, %91
  %93 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef %89, i32 noundef %92, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  br label %94

94:                                               ; preds = %84, %82
  %95 = phi i32 [ %93, %84 ], [ 0, %82 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8_pmx_request_gpio(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #2
  %5 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 4
  br label %12

12:                                               ; preds = %50, %10
  %13 = phi ptr [ %6, %10 ], [ %51, %50 ]
  %14 = phi i32 [ 0, %10 ], [ %52, %50 ]
  %15 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %13, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.meson_pmx_group, ptr %16, i32 %14, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %12
  %22 = getelementptr %struct.meson_pmx_group, ptr %16, i32 %14, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.meson_pmx_group, ptr %16, i32 %14, i32 1
  %27 = getelementptr inbounds %struct.meson8_pmx_data, ptr %18, i32 0, i32 1
  %28 = getelementptr inbounds %struct.meson8_pmx_data, ptr %18, i32 0, i32 2
  br label %29

29:                                               ; preds = %44, %25
  %30 = phi i32 [ %23, %25 ], [ %45, %44 ]
  %31 = phi i32 [ 0, %25 ], [ %46, %44 ]
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i32, ptr %32, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load ptr, ptr %11, align 4
  %38 = load i32, ptr %27, align 4
  %39 = shl i32 %38, 2
  %40 = load i32, ptr %28, align 4
  %41 = shl nuw i32 1, %40
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  %43 = load i32, ptr %22, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = phi i32 [ %30, %29 ], [ %43, %36 ]
  %46 = add nuw i32 %31, 1
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %29, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 4
  br label %50

50:                                               ; preds = %48, %21, %12
  %51 = phi ptr [ %49, %48 ], [ %13, %21 ], [ %13, %12 ]
  %52 = add nuw i32 %14, 1
  %53 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %51, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %12, label %56

56:                                               ; preds = %50, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
