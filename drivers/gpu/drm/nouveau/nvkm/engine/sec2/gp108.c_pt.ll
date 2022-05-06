; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }

@__UNIQUE_ID_firmware252 = internal constant [36 x i8] c"firmware=nvidia/gp108/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [37 x i8] c"firmware=nvidia/gp108/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [35 x i8] c"firmware=nvidia/gp108/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [36 x i8] c"firmware=nvidia/gv100/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [37 x i8] c"firmware=nvidia/gv100/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [35 x i8] c"firmware=nvidia/gv100/sec2/sig.bin\00", section ".modinfo", align 1
@gp108_sec2_fwif = internal constant [2 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif zeroinitializer], align 4
@gp102_sec2 = external dso_local constant %struct.nvkm_sec2_func, align 4
@gp102_sec2_acr_1 = external dso_local constant %struct.nvkm_acr_lsf_func, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp108_sec2_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @gp108_sec2_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_load(ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
