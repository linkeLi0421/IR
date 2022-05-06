; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c"
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.68, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.68 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.98, %struct.anon.99, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.98 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.99 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.87, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32, [11 x i32], %union.anon.95 }>
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { i64 }
%union.anon.91 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i32, i8 }
%union.anon.95 = type <{ %struct.anon.97, [12 x i8] }>
%struct.anon.97 = type { i48 }

@nv40_fifo_dma_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv40_fifo = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr null, ptr null, ptr null, ptr @nv40_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv40_fifo_dma_oclass, ptr null] }, align 4
@nv40_fifo_ramfc = internal constant [23 x { i8, i8, i8, i32 }] [{ i8, i8, i8, i32 } { i8 32, i8 0, i8 0, i32 12864 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 0, i32 12868 }, { i8, i8, i8, i32 } { i8 32, i8 64, i8 0, i32 12872 }, { i8, i8, i8, i32 } { i8 32, i8 96, i8 0, i32 12844 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 0, i32 12960 }, { i8, i8, i8, i32 } { i8 32, i8 -96, i8 0, i32 12840 }, { i8, i8, i8, i32 } { i8 28, i8 -64, i8 0, i32 12836 }, { i8, i8, i8, i32 } { i8 2, i8 -57, i8 -32, i32 8280 }, { i8, i8, i8, i32 } { i8 32, i8 -32, i8 0, i32 12928 }, { i8, i8, i8, i32 } { i8 32, i8 0, i8 1, i32 12884 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 1, i32 12904 }, { i8, i8, i8, i32 } { i8 32, i8 64, i8 1, i32 12900 }, { i8, i8, i8, i32 } { i8 32, i8 96, i8 1, i32 12896 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 1, i32 12908 }, { i8, i8, i8, i32 } { i8 32, i8 -96, i8 1, i32 12876 }, { i8, i8, i8, i32 } { i8 32, i8 -64, i8 1, i32 13024 }, { i8, i8, i8, i32 } { i8 17, i8 -32, i8 1, i32 8260 }, { i8, i8, i8, i32 } { i8 32, i8 0, i8 2, i32 13028 }, { i8, i8, i8, i32 } { i8 32, i8 32, i8 2, i32 13032 }, { i8, i8, i8, i32 } { i8 32, i8 96, i8 2, i32 8328 }, { i8, i8, i8, i32 } { i8 32, i8 -128, i8 2, i32 13056 }, { i8, i8, i8, i32 } { i8 32, i8 -96, i8 2, i32 13068 }, { i8, i8, i8, i32 } zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv04_fifo_new_(ptr noundef nonnull @nv40_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 32, ptr noundef nonnull @nv40_fifo_ramfc, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_fifo_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8256
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 255) #2, !srcloc !9
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 8260
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 553779199) #2, !srcloc !9
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 8280
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #2, !srcloc !9
  %21 = getelementptr inbounds %struct.nvkm_ramht, ptr %9, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 16
  %24 = add i32 %23, -589824
  %25 = getelementptr inbounds %struct.nvkm_ramht, ptr %9, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %26, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = lshr i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = or i32 %24, %30
  %32 = or i32 %31, 50331648
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr i8, ptr %33, i32 8720
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #2, !srcloc !9
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i64 %37(ptr noundef %11) #2
  %39 = lshr i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 8728
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #2, !srcloc !9
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %51 [
    i32 71, label %45
    i32 73, label %45
    i32 75, label %45
    i32 64, label %48
    i32 65, label %48
    i32 66, label %48
    i32 67, label %48
    i32 69, label %48
    i32 72, label %48
  ]

45:                                               ; preds = %1, %1, %1
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 8752
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #2, !srcloc !9
  br label %48

48:                                               ; preds = %45, %1, %1, %1, %1, %1, %1
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr i8, ptr %49, i32 8736
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 196610) #2, !srcloc !9
  br label %69

51:                                               ; preds = %1
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr i8, ptr %52, i32 8752
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #2, !srcloc !9
  %54 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_ram, ptr %55, i32 0, i32 3
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, 281474976186368
  %59 = load ptr, ptr %13, align 4
  %60 = getelementptr inbounds %struct.nvkm_memory_func, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i64 %61(ptr noundef %13) #2
  %63 = add i64 %58, %62
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = or i32 %65, 196608
  %67 = load ptr, ptr %14, align 4
  %68 = getelementptr i8, ptr %67, i32 8736
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #2, !srcloc !9
  br label %69

69:                                               ; preds = %51, %48
  %70 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr i8, ptr %73, i32 12804
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #2, !srcloc !9
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr i8, ptr %75, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 -1) #2, !srcloc !9
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr i8, ptr %77, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 -1) #2, !srcloc !9
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr i8, ptr %79, i32 12800
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 1) #2, !srcloc !9
  %81 = load ptr, ptr %14, align 4
  %82 = getelementptr i8, ptr %81, i32 12880
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #2, !srcloc !9
  %83 = load ptr, ptr %14, align 4
  %84 = getelementptr i8, ptr %83, i32 9472
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 1) #2, !srcloc !9
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
!8 = !{i64 2151488533}
!9 = !{i64 3947440}
