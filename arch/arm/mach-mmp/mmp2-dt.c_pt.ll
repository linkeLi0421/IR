; ModuleID = '/llk/IR/arch/arm/mach-mmp/mmp2-dt.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/mmp2-dt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"Marvell MMP2 (Device Tree Support)\00", align 1
@mmp2_dt_board_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_MMP2_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @mmp2_dt_board_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp2_map_io, ptr null, ptr null, ptr @mmp_init_time, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mrvl,mmp2\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_MMP2_DT], section "llvm.metadata"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp2_map_io() #0 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmp_init_time() #1 section ".init.text" {
  tail call void @tauros2_init(i32 noundef 0) #3
  tail call void @of_clk_init(ptr noundef null) #4
  tail call void @timer_probe() #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tauros2_init(i32 noundef) local_unnamed_addr #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #2

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
