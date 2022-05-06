; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gp108.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.140 = type { ptr }
%struct.anon.141 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.129, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gp108_gr_gpccs_acr = dso_local constant %struct.nvkm_acr_lsf_func { i32 8, i32 84, ptr @gp108_gr_acr_bld_write, ptr @gp108_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, align 8
@gp108_gr_fecs_acr = dso_local constant %struct.nvkm_acr_lsf_func { i32 0, i32 84, ptr @gp108_gr_acr_bld_write, ptr @gp108_gr_acr_bld_patch, ptr null, i64 0, ptr null, ptr null }, align 8
@__UNIQUE_ID_firmware252 = internal constant [37 x i8] c"firmware=nvidia/gp108/gr/fecs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [39 x i8] c"firmware=nvidia/gp108/gr/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [39 x i8] c"firmware=nvidia/gp108/gr/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [38 x i8] c"firmware=nvidia/gp108/gr/fecs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [38 x i8] c"firmware=nvidia/gp108/gr/gpccs_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [40 x i8] c"firmware=nvidia/gp108/gr/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/gp108/gr/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [39 x i8] c"firmware=nvidia/gp108/gr/gpccs_sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [36 x i8] c"firmware=nvidia/gp108/gr/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [39 x i8] c"firmware=nvidia/gp108/gr/sw_nonctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [44 x i8] c"firmware=nvidia/gp108/gr/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [44 x i8] c"firmware=nvidia/gp108/gr/sw_method_init.bin\00", section ".modinfo", align 1
@gp108_gr_fwif = internal constant [3 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gm200_gr_load, ptr @gp107_gr, ptr @gp108_gr_fecs_acr, ptr @gp108_gr_gpccs_acr }, %struct.gf100_gr_fwif { i32 -1, ptr @gm200_gr_nofw, ptr null, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@gp107_gr = external dso_local constant %struct.gf100_gr_func, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp108_gr_acr_bld_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %10, %13
  %15 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, %10
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #4
  %19 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i64 %14, ptr %19, align 1
  %20 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 4
  store i32 %12, ptr %20, align 1
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 5
  %22 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 6
  store i32 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 7
  store i32 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 8
  %27 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 1
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 9
  store i64 %18, ptr %29, align 1
  %30 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 10
  %31 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 1
  %33 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 11
  store i32 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 12
  store i32 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = zext i32 %1 to i64
  tail call void %40(ptr noundef %36, i64 noundef %41, i32 noundef 0) #4
  br label %42

42:                                               ; preds = %42, %3
  %43 = phi i32 [ 20, %3 ], [ %49, %42 ]
  %44 = phi i32 [ %1, %3 ], [ %46, %42 ]
  %45 = phi ptr [ %4, %3 ], [ %47, %42 ]
  %46 = add i32 %44, 4
  %47 = getelementptr i32, ptr %45, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %43, -1
  %50 = load ptr, ptr %35, align 8
  %51 = getelementptr inbounds %struct.nvkm_memory, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = zext i32 %46 to i64
  tail call void %54(ptr noundef %50, i64 noundef %55, i32 noundef %48) #4
  %56 = icmp eq i32 %49, 0
  br i1 %56, label %57, label %42

57:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp108_gr_acr_bld_patch(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(84) %4, i8 0, i32 84, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %4, %3 ], [ %17, %6 ]
  %8 = phi i32 [ 21, %3 ], [ %10, %6 ]
  %9 = phi i32 [ %1, %3 ], [ %18, %6 ]
  %10 = add nsw i32 %8, -1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i32 %9 to i64
  %16 = tail call i32 %14(ptr noundef %11, i64 noundef %15) #4
  %17 = getelementptr i32, ptr %7, i32 1
  store i32 %16, ptr %7, align 4
  %18 = add i32 %9, 4
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %20, label %6

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 3
  %22 = load i64, ptr %21, align 1
  %23 = add i64 %22, %2
  store i64 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 9
  %25 = load i64, ptr %24, align 1
  %26 = add i64 %25, %2
  store i64 %26, ptr %24, align 1
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %4, %20 ], [ %38, %27 ]
  %29 = phi i32 [ 21, %20 ], [ %31, %27 ]
  %30 = phi i32 [ %1, %20 ], [ %40, %27 ]
  %31 = add nsw i32 %29, -1
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = zext i32 %30 to i64
  %38 = getelementptr i32, ptr %28, i32 1
  %39 = load i32, ptr %28, align 4
  tail call void %36(ptr noundef %32, i64 noundef %37, i32 noundef %39) #4
  %40 = add i32 %30, 4
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %43, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp108_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gp108_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_gr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
