; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv17.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.71 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.71 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.68, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.68 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nv17_fifo_dma_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv17_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr null, ptr null, ptr null, ptr @nv17_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv17_fifo_dma_oclass, ptr null] }, align 4
@nv17_fifo_ramfc = internal constant [15 x { i8, i8, i8, i32 }] [{ i8, i8, i8, i32 } { i8 32, i8 0, i8 0, i32 12864 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 0, i32 12868 }, { i8, i8, i8, i32 } { i8 32, i8 64, i8 0, i32 12872 }, { i8, i8, i8, i32 } { i8 16, i8 96, i8 0, i32 12844 }, { i8, i8, i8, i32 } { i8 16, i8 100, i8 0, i32 12960 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 0, i32 12840 }, { i8, i8, i8, i32 } { i8 32, i8 -96, i8 0, i32 12836 }, { i8, i8, i8, i32 } { i8 32, i8 -64, i8 0, i32 12928 }, { i8, i8, i8, i32 } { i8 32, i8 -32, i8 0, i32 12884 }, { i8, i8, i8, i32 } { i8 32, i8 0, i8 1, i32 12904 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 1, i32 12900 }, { i8, i8, i8, i32 } { i8 32, i8 64, i8 1, i32 12896 }, { i8, i8, i8, i32 } { i8 32, i8 96, i8 1, i32 12908 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 1, i32 12876 }, { i8, i8, i8, i32 } zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv17_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv04_fifo_new_(ptr noundef nonnull @nv17_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 32, ptr noundef nonnull @nv17_fifo_ramfc, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_fifo_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8256
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 255) #2, !srcloc !9
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 8260
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16908287) #2, !srcloc !9
  %17 = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 16
  %20 = add i32 %19, -589824
  %21 = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %22, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = lshr i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = or i32 %20, %26
  %28 = or i32 %27, 50331648
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 8720
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #2, !srcloc !9
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i64 %33(ptr noundef %9) #2
  %35 = lshr i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 8728
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #2, !srcloc !9
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i64 %41(ptr noundef %11) #2
  %43 = lshr i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = or i32 %44, 65536
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 8724
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #2, !srcloc !9
  %48 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr i8, ptr %51, i32 12804
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #2, !srcloc !9
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr i8, ptr %53, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 -1) #2, !srcloc !9
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr i8, ptr %55, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -1) #2, !srcloc !9
  %57 = load ptr, ptr %12, align 4
  %58 = getelementptr i8, ptr %57, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #2, !srcloc !9
  %59 = load ptr, ptr %12, align 4
  %60 = getelementptr i8, ptr %59, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 1) #2, !srcloc !9
  %61 = load ptr, ptr %12, align 4
  %62 = getelementptr i8, ptr %61, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 1) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_engine_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_id_engine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_pause(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_start(ptr noundef, ptr noundef) #1

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
!8 = !{i64 2151487813}
!9 = !{i64 3946720}
