; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/headgf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/headgf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_head = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_head_state, %struct.nvkm_head_state }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_head_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.anon }
%struct.anon = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gf119_head = internal constant %struct.nvkm_head_func { ptr @gf119_head_state, ptr @nv50_head_rgpos, ptr @gf119_head_rgclk, ptr @gf119_head_vblank_get, ptr @gf119_head_vblank_put }, align 4
@.str = private unnamed_addr constant [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/headgf119.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_head_rgclk(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 11
  %10 = add i32 %9, 6365696
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %15 = and i32 %14, -16
  %16 = or i32 %15, %1
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_head_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @nvkm_head_new_(ptr noundef nonnull @gf119_head, ptr noundef %0, i32 noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_head_new_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_head_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6365188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %9 = and i32 %8, 15
  store i32 %9, ptr %1, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 140360
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf119_head_state(ptr noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 5
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, i32 131072, i32 0
  %10 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 768
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = add i32 %13, 6554644
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %19 = lshr i32 %18, 16
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 4
  store i16 %20, ptr %21, align 4
  %22 = trunc i32 %18 to i16
  store i16 %22, ptr %1, align 4
  %23 = load ptr, ptr %14, align 4
  %24 = add i32 %13, 6554648
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 5
  store i16 %28, ptr %29, align 2
  %30 = trunc i32 %26 to i16
  %31 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load ptr, ptr %14, align 4
  %33 = add i32 %13, 6554652
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %36 = lshr i32 %35, 16
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 6
  store i16 %37, ptr %38, align 4
  %39 = trunc i32 %35 to i16
  %40 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 2
  store i16 %39, ptr %40, align 4
  %41 = load ptr, ptr %14, align 4
  %42 = add i32 %13, 6554656
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %45 = lshr i32 %44, 16
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 7
  store i16 %46, ptr %47, align 2
  %48 = trunc i32 %44 to i16
  %49 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 3
  store i16 %48, ptr %49, align 2
  %50 = load ptr, ptr %14, align 4
  %51 = add i32 %13, 6554704
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %54 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 8
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %14, align 4
  %56 = add i32 %13, 6554628
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %59 = lshr i32 %58, 6
  %60 = and i32 %59, 15
  switch i32 %60, label %69 [
    i32 6, label %61
    i32 5, label %63
    i32 2, label %65
    i32 0, label %67
  ]

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 9
  store i8 30, ptr %62, align 4
  br label %71

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 9
  store i8 24, ptr %64, align 4
  br label %71

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 9
  store i8 18, ptr %66, align 4
  br label %71

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 9
  store i8 18, ptr %68, align 4
  br label %71

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.nvkm_head_state, ptr %1, i32 0, i32 9
  store i8 18, ptr %70, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef null) #2
  br label %71

71:                                               ; preds = %69, %67, %65, %63, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_rgpos(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf119_head_vblank_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 11
  %9 = add i32 %8, 6357184
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf119_head_vblank_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_head, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 11
  %9 = add i32 %8, 6357184
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %14 = and i32 %13, -2
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #2, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
!8 = !{i64 3946171}
!9 = !{i64 2151485624}
!10 = !{i64 2151486846}
!11 = !{i64 3945753}
