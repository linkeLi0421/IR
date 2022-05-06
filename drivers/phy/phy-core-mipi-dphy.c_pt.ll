; ModuleID = '/llk/IR/drivers/phy/phy-core-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/phy-core-mipi-dphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mipi_dphy_get_default_config:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mipi_dphy_get_default_config\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mipi_dphy_get_default_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mipi_dphy_config_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mipi_dphy_config_validate\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mipi_dphy_config_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__kstrtab_phy_mipi_dphy_get_default_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mipi_dphy_get_default_config = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mipi_dphy_get_default_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mipi_dphy_get_default_config to i32), ptr @__kstrtab_phy_mipi_dphy_get_default_config, ptr @__kstrtabns_phy_mipi_dphy_get_default_config }, section "___ksymtab+phy_mipi_dphy_get_default_config", align 4
@__kstrtab_phy_mipi_dphy_config_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mipi_dphy_config_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mipi_dphy_config_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mipi_dphy_config_validate to i32), ptr @__kstrtab_phy_mipi_dphy_config_validate, ptr @__kstrtabns_phy_mipi_dphy_config_validate }, section "___ksymtab+phy_mipi_dphy_config_validate", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_phy_mipi_dphy_config_validate, ptr @__ksymtab_phy_mipi_dphy_get_default_config], section "llvm.metadata"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %4
  %7 = mul i32 %1, %0
  %8 = udiv i32 %7, %2
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 999999999999
  %11 = sub nsw i64 0, %9
  %12 = and i64 %10, %11
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %14, label %18, !prof !8

14:                                               ; preds = %6
  %15 = trunc i64 %12 to i32
  %16 = udiv i32 %15, %8
  %17 = zext i32 %16 to i64
  br label %21

18:                                               ; preds = %6
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %12) #3, !srcloc !9
  %20 = extractvalue { i64, i64 } %19, 1
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i64 [ %17, %14 ], [ %20, %18 ]
  store i32 0, ptr %3, align 4
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %23, 52
  %25 = add i32 %24, 60000
  %26 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 2
  store i32 8, ptr %27, align 4
  %28 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 3
  store i32 38000, ptr %28, align 4
  %29 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 4
  store i32 95000, ptr %29, align 4
  %30 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 6
  store i32 60000, ptr %31, align 4
  %32 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 7
  store i32 262000, ptr %32, align 4
  %33 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 8
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 9
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 10
  store i32 100000, ptr %35, align 4
  %36 = shl i32 %23, 2
  %37 = add i32 %36, 40000
  %38 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = mul i32 %23, 6
  %40 = add i32 %39, 105000
  %41 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 15
  store i32 %40, ptr %41, align 4
  %42 = add i32 %39, 85000
  %43 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 12
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 13
  store i32 40000, ptr %44, align 4
  %45 = shl i64 %22, 5
  %46 = shl i64 %22, 4
  %47 = add i64 %46, 60000
  %48 = tail call i64 @llvm.umax.i64(i64 %45, i64 %47)
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 14
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 16
  store i32 100, ptr %51, align 4
  %52 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 17
  store i32 60000, ptr %52, align 4
  %53 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 18
  store i32 300000, ptr %53, align 4
  %54 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 19
  store i32 240000, ptr %54, align 4
  %55 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 20
  store i32 120000, ptr %55, align 4
  %56 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 21
  store i32 1000, ptr %56, align 4
  %57 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 22
  store i32 %8, ptr %57, align 4
  %58 = trunc i32 %2 to i8
  %59 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %3, i32 0, i32 24
  store i8 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %21, %4
  %61 = phi i32 [ 0, %21 ], [ -22, %4 ]
  ret i32 %61
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %145, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 999999999999
  %8 = sub nsw i64 0, %6
  %9 = and i64 %7, %8
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %3
  %12 = trunc i64 %9 to i32
  %13 = udiv i32 %12, %5
  %14 = zext i32 %13 to i64
  br label %18

15:                                               ; preds = %3
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %9) #3, !srcloc !9
  %17 = extractvalue { i64, i64 } %16, 1
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i64 [ %14, %11 ], [ %17, %15 ]
  %20 = load i32, ptr %0, align 4
  %21 = icmp ugt i32 %20, 60000
  br i1 %21, label %145, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %19, 52
  %27 = add i64 %26, 60000
  %28 = icmp ugt i64 %27, %25
  br i1 %28, label %145, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %145, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -95001
  %37 = icmp ult i32 %36, -57001
  br i1 %37, label %145, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -300001
  %42 = icmp ult i32 %41, -205001
  br i1 %42, label %145, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 38000
  br i1 %46, label %145, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, 60000
  br i1 %50, label %145, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %35
  %55 = icmp ult i32 %54, 300000
  br i1 %55, label %145, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 %19, 2
  %61 = add i64 %60, 35000
  %62 = icmp ult i64 %61, %59
  br i1 %62, label %145, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %19, 12
  %68 = add i64 %67, 105000
  %69 = icmp ult i64 %68, %66
  br i1 %69, label %145, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 100000
  br i1 %73, label %145, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = add i64 %60, 40000
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %145, label %80

80:                                               ; preds = %74
  %81 = mul i64 %19, 6
  %82 = add i64 %81, 85000
  %83 = icmp ult i64 %82, %77
  br i1 %83, label %145, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 15
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %76
  %88 = zext i32 %87 to i64
  %89 = mul i64 %19, 10
  %90 = add i64 %89, 145000
  %91 = icmp ugt i64 %90, %88
  br i1 %91, label %145, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 12
  %94 = load i32, ptr %93, align 4
  %95 = zext i32 %94 to i64
  %96 = icmp ugt i64 %82, %95
  %97 = icmp ult i64 %90, %95
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %145, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 13
  %101 = load i32, ptr %100, align 4
  %102 = icmp ult i32 %101, 40000
  br i1 %102, label %145, label %103

103:                                              ; preds = %99
  %104 = zext i32 %101 to i64
  %105 = add i64 %60, 55000
  %106 = icmp ult i64 %105, %104
  br i1 %106, label %145, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 14
  %109 = load i32, ptr %108, align 4
  %110 = zext i32 %109 to i64
  %111 = shl i64 %19, 3
  %112 = add i64 %60, 60000
  %113 = tail call i64 @llvm.umax.i64(i64 %111, i64 %112)
  %114 = icmp ugt i64 %113, %110
  br i1 %114, label %145, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 16
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %117, 100
  br i1 %118, label %145, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 17
  %121 = load i32, ptr %120, align 4
  %122 = icmp ult i32 %121, 50000
  br i1 %122, label %145, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 18
  %125 = load i32, ptr %124, align 4
  %126 = mul i32 %121, 5
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 19
  %130 = load i32, ptr %129, align 4
  %131 = shl i32 %121, 2
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 20
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %135, %121
  %137 = shl i32 %121, 1
  %138 = icmp ugt i32 %135, %137
  %139 = or i1 %136, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %0, i32 0, i32 21
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %142, 1000
  %144 = select i1 %143, i32 -22, i32 0
  br label %145

145:                                              ; preds = %140, %133, %128, %123, %119, %115, %107, %103, %99, %92, %84, %80, %74, %70, %63, %56, %51, %47, %43, %38, %33, %29, %22, %18, %1
  %146 = phi i32 [ -22, %1 ], [ -22, %18 ], [ -22, %22 ], [ -22, %29 ], [ -22, %33 ], [ -22, %38 ], [ -22, %43 ], [ -22, %47 ], [ -22, %51 ], [ -22, %56 ], [ -22, %63 ], [ -22, %70 ], [ -22, %80 ], [ -22, %74 ], [ -22, %84 ], [ -22, %92 ], [ -22, %103 ], [ -22, %99 ], [ -22, %107 ], [ -22, %115 ], [ -22, %119 ], [ -22, %123 ], [ -22, %128 ], [ -22, %133 ], [ %144, %140 ]
  ret i32 %146
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148329165, i64 2148329445, i64 2148329779, i64 2148330113}
