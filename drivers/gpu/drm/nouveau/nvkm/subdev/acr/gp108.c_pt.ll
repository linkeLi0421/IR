; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gp108.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }

@gp108_acr_unload_0 = dso_local constant %struct.nvkm_acr_hsf_func { ptr @gm200_acr_unload_load, ptr @gm200_acr_unload_boot, ptr @gp108_acr_hsfw_bld }, align 4
@__UNIQUE_ID_firmware252 = internal constant [40 x i8] c"firmware=nvidia/gp108/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [43 x i8] c"firmware=nvidia/gp108/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [40 x i8] c"firmware=nvidia/gv100/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [43 x i8] c"firmware=nvidia/gv100/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [33 x i8] c"firmware=nvidia/gp108/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [41 x i8] c"firmware=nvidia/gp108/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [33 x i8] c"firmware=nvidia/gv100/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [41 x i8] c"firmware=nvidia/gv100/acr/ucode_load.bin\00", section ".modinfo", align 1
@gp108_acr_fwif = internal constant [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gp102_acr_load, ptr @gp108_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], align 4
@gp108_acr = internal constant %struct.nvkm_acr_func { ptr @gp108_acr_load_fwif, ptr null, ptr null, ptr @gp108_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @gp102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 0 }, align 8
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@gp108_acr_load_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gp108_acr_unload_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gp108_acr_load_0 = internal constant %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @gm200_acr_load_boot, ptr @gp108_acr_hsfw_bld }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp108_acr_hsfw_bld(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_vma, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %5, align 1
  %10 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 4
  %11 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 1
  %13 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 5
  %14 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 1
  %19 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 7
  %20 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 1
  %22 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 8
  store i32 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 9
  %24 = load i64, ptr %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %24, %27
  store i64 %28, ptr %23, align 1
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 10
  %30 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 1
  %32 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 11
  store i32 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %3, i32 0, i32 12
  store i32 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %34, ptr noundef nonnull %3) #4
  %35 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 84, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_unload_load(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_unload_boot(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp108_acr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gp108_acr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_layout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_alloc(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_build(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_acr_wpr_patch(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load_load(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_load_boot(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
