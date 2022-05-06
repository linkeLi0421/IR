; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memnv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_mem_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i64 %12(ptr noundef %1) #2
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.nvkm_device_func, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %9, i32 noundef 1) #2
  %20 = zext i32 %19 to i64
  %21 = add i64 %13, %20
  store i64 %21, ptr %4, align 8
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i64 %24(ptr noundef %1) #2
  store i64 %25, ptr %5, align 8
  store ptr inttoptr (i32 -19 to ptr), ptr %6, align 4
  br label %26

26:                                               ; preds = %15, %7
  %27 = phi i32 [ 0, %15 ], [ -38, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_mem_new(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %1
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 32
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i8 2, i8 1
  %15 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @nvkm_ram_get(ptr noundef %16, i8 noundef zeroext %14, i8 noundef zeroext 1, i8 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %6) #2
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ %17, %9 ], [ -38, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

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
