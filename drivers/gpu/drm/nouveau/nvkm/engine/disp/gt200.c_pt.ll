; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/gt200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/gt200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.134, %struct.anon.134, %struct.anon.134, %struct.anon.134, %struct.anon.134, i16 }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gt200_disp = internal constant %struct.nv50_disp_func { ptr @nv50_disp_init, ptr @nv50_disp_fini, ptr @nv50_disp_intr, ptr null, ptr @nv50_disp_chan_uevent, ptr @nv50_disp_super, ptr @gt200_disp_root_oclass, %struct.anon.134 zeroinitializer, %struct.anon.134 { ptr @nv50_head_cnt, ptr @nv50_head_new }, %struct.anon.134 { ptr @nv50_dac_cnt, ptr @nv50_dac_new }, %struct.anon.134 { ptr @nv50_sor_cnt, ptr @g84_sor_new }, %struct.anon.134 { ptr @nv50_pior_cnt, ptr @nv50_pior_new }, i16 0 }, align 4
@nv50_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@gt200_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt200_disp_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_disp_new_(ptr noundef nonnull @gt200_disp, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_cnt(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_new(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_cnt(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_new(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sor_cnt(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_sor_new(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_cnt(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_new(ptr noundef, i32 noundef) #1

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
