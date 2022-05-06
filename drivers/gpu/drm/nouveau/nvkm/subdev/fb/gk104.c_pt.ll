; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.123, %struct.anon.124, ptr, i8, ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.anon.124 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_clkgate_pack = type { ptr }

@gk104_fb_clkgate_blcg_init_unk_0 = dso_local constant [6 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1051920, i8 1, i32 49732 }, %struct.nvkm_therm_clkgate_init { i32 1051952, i8 1, i32 49730 }, %struct.nvkm_therm_clkgate_init { i32 1051964, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init { i32 1051976, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init { i32 1051932, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init zeroinitializer], align 4
@gk104_fb_clkgate_blcg_init_vm_0 = dso_local constant [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1051800, i8 1, i32 578 }, %struct.nvkm_therm_clkgate_init zeroinitializer], align 4
@gk104_fb_clkgate_blcg_init_main_0 = dso_local constant [4 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1110016, i8 1, i32 66 }, %struct.nvkm_therm_clkgate_init { i32 1564720, i8 1, i32 68 }, %struct.nvkm_therm_clkgate_init { i32 1564736, i8 1, i32 68 }, %struct.nvkm_therm_clkgate_init zeroinitializer], align 4
@gk104_fb_clkgate_blcg_init_bcast_0 = dso_local constant [2 x %struct.nvkm_therm_clkgate_init] [%struct.nvkm_therm_clkgate_init { i32 1567328, i8 4, i32 68 }, %struct.nvkm_therm_clkgate_init zeroinitializer], align 4
@gk104_fb = internal constant %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gf100_fb_init, ptr null, ptr @gf100_fb_init_page, ptr null, ptr @gf100_fb_intr, %struct.anon.123 zeroinitializer, %struct.anon.124 zeroinitializer, ptr @gk104_ram_new, i8 17, ptr @gk104_fb_clkgate_pack }, align 4
@gk104_fb_clkgate_pack = internal constant [5 x %struct.nvkm_therm_clkgate_pack] [%struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_unk_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_vm_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_main_0 }, %struct.nvkm_therm_clkgate_pack { ptr @gk104_fb_clkgate_blcg_init_bcast_0 }, %struct.nvkm_therm_clkgate_pack zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gk104_fb, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_fb_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fb_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_init_page(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fb_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_new(ptr noundef, ptr noundef) #1

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
