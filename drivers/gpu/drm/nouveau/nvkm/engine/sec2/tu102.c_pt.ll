; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.123, %struct.anon.124, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, %struct.anon.127, [0 x %struct.nvkm_sclass] }
%struct.anon.123 = type { ptr, i32 }
%struct.anon.124 = type { ptr, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@__UNIQUE_ID_firmware252 = internal constant [36 x i8] c"firmware=nvidia/tu102/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [37 x i8] c"firmware=nvidia/tu102/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [35 x i8] c"firmware=nvidia/tu102/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [36 x i8] c"firmware=nvidia/tu104/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [37 x i8] c"firmware=nvidia/tu104/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [35 x i8] c"firmware=nvidia/tu104/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [36 x i8] c"firmware=nvidia/tu106/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [37 x i8] c"firmware=nvidia/tu106/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [35 x i8] c"firmware=nvidia/tu106/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [36 x i8] c"firmware=nvidia/tu116/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [37 x i8] c"firmware=nvidia/tu116/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [35 x i8] c"firmware=nvidia/tu116/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [36 x i8] c"firmware=nvidia/tu117/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [37 x i8] c"firmware=nvidia/tu117/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [35 x i8] c"firmware=nvidia/tu117/sec2/sig.bin\00", section ".modinfo", align 1
@tu102_sec2_fwif = internal constant [2 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @tu102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif { i32 -1, ptr @gp102_sec2_nofw, ptr @tu102_sec2, ptr null }], align 4
@tu102_sec2 = internal constant %struct.nvkm_sec2_func { ptr @tu102_sec2_flcn, i8 7, ptr @gp102_sec2_intr, ptr @gp102_sec2_initmsg }, align 4
@gp102_sec2_acr_1 = external dso_local constant %struct.nvkm_acr_lsf_func, align 8
@tu102_sec2_flcn = internal constant %struct.nvkm_falcon_func { %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, ptr null, ptr null, i32 1032, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 16777216, ptr @gp102_sec2_flcn_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.127 { i32 3072, i32 3076, i32 8 }, %struct.anon.127 { i32 3200, i32 3204, i32 8 }, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_sec2_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @tu102_sec2_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 8650752, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_sec2_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_initmsg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_sec2_flcn_bind_context(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #1

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
