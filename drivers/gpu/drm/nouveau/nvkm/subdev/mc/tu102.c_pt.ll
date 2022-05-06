; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mc/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.tu102_mc = type { %struct.nvkm_mc, %struct.spinlock, i8, i32 }
%struct.nvkm_mc = type { ptr, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@tu102_mc = internal constant %struct.nvkm_mc_func { ptr @nv50_mc_init, ptr @gp100_mc_intr, ptr @tu102_mc_intr_unarm, ptr @tu102_mc_intr_rearm, ptr @tu102_mc_intr_mask, ptr @tu102_mc_intr_stat, ptr @gk104_mc_reset, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gp100_mc_intr = external dso_local constant [0 x %struct.nvkm_mc_map], align 4
@gk104_mc_reset = external dso_local constant [0 x %struct.nvkm_mc_map], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_mc_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  tail call void @nvkm_mc_ctor(ptr noundef nonnull @tu102_mc, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #4
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.tu102_mc, ptr %6, i32 0, i32 1
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.tu102_mc, ptr %6, i32 0, i32 2
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tu102_mc, ptr %6, i32 0, i32 3
  store i32 2147483647, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mc_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_mc_intr_unarm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 2
  store i8 0, ptr %4, align 4
  tail call fastcc void @tu102_mc_intr_update(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_mc_intr_rearm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 2
  store i8 1, ptr %4, align 4
  tail call fastcc void @tu102_mc_intr_update(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_mc_intr_mask(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #4
  %6 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = or i32 %9, %2
  store i32 %10, ptr %6, align 4
  tail call fastcc void @tu102_mc_intr_update(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_mc_intr_stat(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_mc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 260
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 12064256
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, 6
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %7, 512
  %17 = select i1 %15, i32 %7, i32 %16
  %18 = or i32 %17, %10
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tu102_mc_intr_update(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tu102_mc, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 384
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !12
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 352
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %11) #4, !srcloc !12
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 388
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #4, !srcloc !12
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 356
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %11) #4, !srcloc !12
  %22 = and i32 %11, 512
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %13, align 4
  br i1 %23, label %27, label %25

25:                                               ; preds = %10
  %26 = getelementptr i8, ptr %24, i32 12064264
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 6) #4, !srcloc !12
  br label %29

27:                                               ; preds = %10
  %28 = getelementptr i8, ptr %24, i32 12064272
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 6) #4, !srcloc !12
  br label %29

29:                                               ; preds = %27, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
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
!8 = !{i64 3943827}
!9 = !{i64 2151483280}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151484502}
!12 = !{i64 3943409}
