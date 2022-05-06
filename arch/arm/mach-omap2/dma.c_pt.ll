; ModuleID = '/llk/IR/arch/arm/mach-omap2/dma.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_dma_reg = type { i16, i8, i8 }
%struct.omap_dma_dev_attr = type { i32, i16, i16 }
%struct.omap_system_dma_plat_info = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@reg_map = internal constant [53 x %struct.omap_dma_reg] [%struct.omap_dma_reg { i16 120, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 100, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 108, i8 0, i8 3 }, %struct.omap_dma_reg { i16 112, i8 0, i8 3 }, %struct.omap_dma_reg { i16 116, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 0, i8 0, i8 3 }, %struct.omap_dma_reg { i16 8, i8 0, i8 3 }, %struct.omap_dma_reg { i16 12, i8 0, i8 3 }, %struct.omap_dma_reg { i16 16, i8 0, i8 3 }, %struct.omap_dma_reg { i16 20, i8 0, i8 3 }, %struct.omap_dma_reg { i16 24, i8 0, i8 3 }, %struct.omap_dma_reg { i16 28, i8 0, i8 3 }, %struct.omap_dma_reg { i16 32, i8 0, i8 3 }, %struct.omap_dma_reg { i16 36, i8 0, i8 3 }, %struct.omap_dma_reg { i16 40, i8 0, i8 3 }, %struct.omap_dma_reg { i16 44, i8 0, i8 3 }, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg zeroinitializer, %struct.omap_dma_reg { i16 144, i8 96, i8 3 }, %struct.omap_dma_reg { i16 128, i8 96, i8 3 }, %struct.omap_dma_reg { i16 136, i8 96, i8 3 }, %struct.omap_dma_reg { i16 140, i8 96, i8 3 }, %struct.omap_dma_reg { i16 148, i8 96, i8 3 }, %struct.omap_dma_reg { i16 152, i8 96, i8 3 }, %struct.omap_dma_reg { i16 168, i8 96, i8 3 }, %struct.omap_dma_reg { i16 164, i8 96, i8 3 }, %struct.omap_dma_reg { i16 180, i8 96, i8 3 }, %struct.omap_dma_reg { i16 184, i8 96, i8 3 }, %struct.omap_dma_reg { i16 172, i8 96, i8 3 }, %struct.omap_dma_reg { i16 176, i8 96, i8 3 }, %struct.omap_dma_reg { i16 132, i8 96, i8 3 }, %struct.omap_dma_reg { i16 156, i8 96, i8 3 }, %struct.omap_dma_reg { i16 160, i8 96, i8 3 }, %struct.omap_dma_reg { i16 196, i8 96, i8 3 }, %struct.omap_dma_reg { i16 188, i8 96, i8 3 }, %struct.omap_dma_reg { i16 192, i8 96, i8 3 }, %struct.omap_dma_reg { i16 208, i8 96, i8 3 }, %struct.omap_dma_reg { i16 212, i8 96, i8 3 }, %struct.omap_dma_reg { i16 216, i8 96, i8 3 }], align 2
@dma_attr = internal global %struct.omap_dma_dev_attr { i32 31, i16 32, i16 0 }, align 4
@dma_plat_info = dso_local local_unnamed_addr global %struct.omap_system_dma_plat_info { ptr @reg_map, i32 96, ptr @dma_attr, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@__initcall__kmod_dma__224_205___omap2_system_dma_init3 = internal global ptr @__omap2_system_dma_init, section ".initcall3.init", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_dma__224_205___omap2_system_dma_init3, ptr @__omap2_system_dma_init], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap2_system_dma_init() #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @omap2_system_dma_init() #3
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap2_system_dma_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #2
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  %4 = select i1 %3, i32 12, i32 4
  %5 = tail call i32 @omap_type() #2
  %6 = icmp eq i32 %5, 875561012
  %7 = or i32 %4, 16
  %8 = select i1 %6, i32 %7, i32 %4
  %9 = or i32 %8, 32
  %10 = tail call i32 @omap_rev() #2
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 52
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = tail call i32 @omap_type() #2
  %15 = icmp eq i32 %14, 3
  %16 = or i32 %8, 96
  %17 = select i1 %15, i32 %9, i32 %16
  br label %18

18:                                               ; preds = %13, %0
  %19 = phi i32 [ %9, %0 ], [ %17, %13 ]
  store i32 %19, ptr getelementptr inbounds (%struct.omap_system_dma_plat_info, ptr @dma_plat_info, i32 0, i32 3), align 4
  %20 = load i32, ptr @dma_attr, align 4
  %21 = or i32 %20, 32
  store i32 %21, ptr @dma_attr, align 4
  %22 = tail call i32 @omap_rev() #2
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 52
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = tail call i32 @omap_type() #2
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr @dma_attr, align 4
  %30 = or i32 %29, 32768
  store i32 %30, ptr @dma_attr, align 4
  br label %31

31:                                               ; preds = %28, %25, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold }

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
