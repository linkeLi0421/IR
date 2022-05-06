; ModuleID = '/llk/IR/drivers/clk/tegra/clk-utils.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-utils.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @div_frac_get(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  %9 = zext i8 %3 to i32
  %10 = shl nuw i32 1, %9
  %11 = zext i8 %4 to i32
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %10, i32 1
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, %8
  %17 = and i32 %11, 1
  %18 = icmp eq i32 %17, 0
  %19 = add i32 %0, -1
  %20 = select i1 %18, i32 0, i32 %19
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %16, %21
  %23 = icmp ult i64 %22, 4294967296
  br i1 %23, label %24, label %28, !prof !8

24:                                               ; preds = %7
  %25 = trunc i64 %22 to i32
  %26 = udiv i32 %25, %0
  %27 = zext i32 %26 to i64
  br label %31

28:                                               ; preds = %7
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %0, i64 %22) #1, !srcloc !9
  %30 = extractvalue { i64, i64 } %29, 1
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i64 [ %27, %24 ], [ %30, %28 ]
  %33 = select i1 %13, i32 1, i32 %10
  %34 = sext i32 %33 to i64
  %35 = mul i64 %32, %34
  %36 = sext i32 %10 to i64
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = sub i64 %35, %36
  %40 = zext i8 %2 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %39, %43
  %45 = trunc i64 %39 to i32
  %46 = select i1 %44, i32 %42, i32 %45
  br label %47

47:                                               ; preds = %38, %31, %5
  %48 = phi i32 [ 0, %5 ], [ 0, %31 ], [ %46, %38 ]
  ret i32 %48
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind readnone }

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
!9 = !{i64 2147676082, i64 2147676362, i64 2147676696, i64 2147677030}
