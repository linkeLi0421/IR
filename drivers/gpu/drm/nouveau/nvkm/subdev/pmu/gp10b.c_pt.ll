; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gp10b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.128, %struct.anon.129, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.128 = type { ptr, i32 }
%struct.anon.129 = type { ptr, i32 }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.123, %struct.anon.124, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, %struct.anon.127, [0 x %struct.nvkm_sclass] }
%struct.anon.123 = type { ptr, i32 }
%struct.anon.124 = type { ptr, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd = type { %struct.nv_pmu_acr_cmd, i32, i32, i32, i32, i32 }
%struct.nv_pmu_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nv_pmu_acr_bootstrap_multiple_falcons_msg = type { %struct.nv_pmu_acr_msg, i32 }
%struct.nv_pmu_acr_msg = type { %struct.nvfw_falcon_msg, i8 }

@gp10b_pmu_fwif = internal constant [3 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 0, ptr @gm20b_pmu_load, ptr @gp10b_pmu, ptr @gp10b_pmu_acr }, %struct.nvkm_pmu_fwif { i32 -1, ptr @gm200_pmu_nofw, ptr @gp10b_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], align 4
@gp10b_pmu = internal constant %struct.nvkm_pmu_func { ptr @gm200_pmu_flcn, %struct.anon.128 zeroinitializer, %struct.anon.129 zeroinitializer, ptr @gf100_pmu_enabled, ptr null, ptr null, ptr null, ptr @gt215_pmu_intr, ptr null, ptr @gm20b_pmu_recv, ptr @gm20b_pmu_initmsg, ptr null }, align 4
@gp10b_pmu_acr = internal constant %struct.nvkm_acr_lsf_func { i32 4, i32 52, ptr @gm20b_pmu_acr_bld_write, ptr @gm20b_pmu_acr_bld_patch, ptr @gm20b_pmu_acr_boot, i64 13, ptr @gm20b_pmu_acr_bootstrap_falcon, ptr @gp10b_pmu_acr_bootstrap_multiple_falcons }, align 8
@gm200_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp10b_pmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gp10b_pmu_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_recv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_initmsg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_acr_bld_write(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm20b_pmu_acr_bld_patch(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_acr_boot(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm20b_pmu_acr_bootstrap_falcon(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp10b_pmu_acr_bootstrap_multiple_falcons(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  store i8 10, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 1
  store i8 28, ptr %4, align 1
  %5 = getelementptr inbounds %struct.nv_pmu_acr_cmd, ptr %3, i32 0, i32 1
  store i8 3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_multiple_falcons_cmd, ptr %3, i32 0, i32 2
  store i32 %1, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 200
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -52
  %10 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull @gp10b_pmu_acr_bootstrap_multiple_falcons_cb, ptr noundef %9, i32 noundef 100) #5
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %10, %11
  %13 = select i1 %12, i32 0, i32 -5
  %14 = icmp slt i32 %10, 0
  %15 = select i1 %14, i32 %10, i32 %13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #5
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gp10b_pmu_acr_bootstrap_multiple_falcons_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.nv_pmu_acr_bootstrap_multiple_falcons_msg, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
