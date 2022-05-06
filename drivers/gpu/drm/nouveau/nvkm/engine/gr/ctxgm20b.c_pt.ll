; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gm20b_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gm20b_grctx_generate_main, ptr @gk104_grctx_generate_unkn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gm107_grctx_generate_bundle, i32 6144, i32 386, i32 448, ptr @gm107_grctx_generate_pagepool, i32 32768, ptr @gm107_grctx_generate_attrib, i32 1536, i32 1024, i32 3072, i32 2048, i32 0, ptr null, ptr @gm107_grctx_generate_sm_id, ptr null, i8 0, ptr null, ptr @gf117_grctx_generate_rop_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm20b_grctx_generate_main(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.gf100_gr_func, ptr %5, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %9) #2
  %10 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #2
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4211028
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 4211028
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #2, !srcloc !11
  %17 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %1) #2
  %19 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #2
  tail call void @gf100_grctx_generate_floorsweep(ptr noundef %0) #2
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 4220112
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #2, !srcloc !11
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 4220116
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #2, !srcloc !11
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 4220120
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #2, !srcloc !11
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 4220124
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #2, !srcloc !11
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 4220128
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #2, !srcloc !11
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr i8, ptr %31, i32 4220132
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #2, !srcloc !11
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr i8, ptr %33, i32 4220136
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #2, !srcloc !11
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr i8, ptr %35, i32 4220140
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #2, !srcloc !11
  %37 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr i8, ptr %45, i32 4217600
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #2, !srcloc !11
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 4260104
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %50 = or i32 %49, -2147483648
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr i8, ptr %51, i32 4229384
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #2, !srcloc !11
  %53 = load i8, ptr %41, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %56, %2
  %57 = phi i32 [ %67, %56 ], [ 0, %2 ]
  %58 = phi i32 [ %66, %56 ], [ 0, %2 ]
  %59 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %57
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = shl i32 %57, 2
  %65 = shl i32 %63, %64
  %66 = or i32 %65, %58
  %67 = add nuw nsw i32 %57, 1
  %68 = icmp eq i32 %67, %54
  br i1 %68, label %69, label %56

69:                                               ; preds = %56, %2
  %70 = phi i32 [ 0, %2 ], [ %66, %56 ]
  %71 = load ptr, ptr %11, align 4
  %72 = getelementptr i8, ptr %71, i32 4211140
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #2, !srcloc !11
  tail call void @gm200_grctx_generate_smid_config(ptr noundef %0) #2
  %73 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #2
  %74 = load ptr, ptr %11, align 4
  %75 = getelementptr i8, ptr %74, i32 4211028
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %14) #2, !srcloc !11
  %76 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #2
  %77 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  tail call void @gf100_gr_mthd(ptr noundef %0, ptr noundef %78) #2
  %79 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #2
  %80 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  tail call void @gf100_gr_icmd(ptr noundef %0, ptr noundef %81) #2
  %82 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 16
  %83 = load ptr, ptr %82, align 4
  tail call void %83(ptr noundef %1) #2
  %84 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 12
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_grctx_generate_unkn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_bundle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_pagepool(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_attrib(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_grctx_generate_sm_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_grctx_generate_rop_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_grctx_generate_floorsweep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_grctx_generate_smid_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mthd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_icmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 3971361}
!9 = !{i64 2151510814}
!10 = !{i64 2151512036}
!11 = !{i64 3970943}
