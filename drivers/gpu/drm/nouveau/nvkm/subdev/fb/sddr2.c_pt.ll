; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ramxlat = type { i32, i8 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.127, i32, i32, i32, i32, i32, i32, %union.anon.131, i32, i32, [11 x i32], %union.anon.135 }>
%union.anon.127 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i32, i8 }
%union.anon.135 = type <{ %struct.anon.137, [12 x i8] }>
%struct.anon.137 = type { i48 }

@ramddr2_cl = internal unnamed_addr constant [7 x %struct.ramxlat] [%struct.ramxlat { i32 2, i8 2 }, %struct.ramxlat { i32 3, i8 3 }, %struct.ramxlat { i32 4, i8 4 }, %struct.ramxlat { i32 5, i8 5 }, %struct.ramxlat { i32 6, i8 6 }, %struct.ramxlat { i32 7, i8 7 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@ramddr2_wr = internal unnamed_addr constant [7 x %struct.ramxlat] [%struct.ramxlat { i32 2, i8 1 }, %struct.ramxlat { i32 3, i8 2 }, %struct.ramxlat { i32 4, i8 3 }, %struct.ramxlat { i32 5, i8 4 }, %struct.ramxlat { i32 6, i8 5 }, %struct.ramxlat { i32 7, i8 6 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@switch.table.nvkm_sddr2_calc = private unnamed_addr constant [6 x ptr] [ptr @ramddr2_cl, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 5)], align 4
@switch.table.nvkm_sddr2_calc.1 = private unnamed_addr constant [6 x ptr] [ptr @ramddr2_wr, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 5)], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_sddr2_calc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %86 [
    i32 16, label %14
    i32 32, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 31
  %10 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 127
  br label %31

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15
  %16 = load i96, ptr %15, align 4
  %17 = trunc i96 %16 to i32
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = and i32 %17, 255
  %21 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = lshr i96 %16, 88
  %26 = trunc i96 %25 to i32
  %27 = and i32 %26, 3
  %28 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %42

31:                                               ; preds = %14, %6
  %32 = phi i32 [ 1, %6 ], [ %24, %14 ]
  %33 = phi i32 [ %13, %6 ], [ %20, %14 ]
  %34 = phi i32 [ %9, %6 ], [ %19, %14 ]
  %35 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 2
  %38 = and i32 %37, 1
  %39 = lshr i32 %36, 5
  %40 = and i32 %39, 2
  %41 = or i32 %38, %40
  br label %42

42:                                               ; preds = %31, %14
  %43 = phi i32 [ %32, %31 ], [ %24, %14 ]
  %44 = phi i32 [ %33, %31 ], [ %20, %14 ]
  %45 = phi i32 [ %34, %31 ], [ %19, %14 ]
  %46 = phi i32 [ %41, %31 ], [ %27, %14 ]
  %47 = add nsw i32 %45, -2
  %48 = icmp ult i32 %47, 6
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr2_calc, i32 0, i32 %47
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ramxlat, ptr %51, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %49, %42
  %56 = phi i32 [ %54, %49 ], [ -22, %42 ]
  %57 = add nsw i32 %44, -2
  %58 = icmp uge i32 %57, 6
  %59 = icmp slt i32 %56, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %86, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr2_calc.1, i32 0, i32 %57
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ramxlat, ptr %63, i32 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -3953
  %70 = shl nuw nsw i32 %66, 9
  %71 = and i32 %70, 3584
  %72 = shl nuw nsw i32 %56, 4
  %73 = and i32 %72, 112
  %74 = or i32 %69, %73
  %75 = or i32 %74, %71
  store i32 %75, ptr %67, align 4
  %76 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, -70
  %79 = shl nsw i32 %46, 2
  %80 = and i32 %79, 4
  %81 = shl nsw i32 %46, 5
  %82 = and i32 %81, 64
  %83 = or i32 %80, %43
  %84 = or i32 %83, %82
  %85 = or i32 %84, %78
  store i32 %85, ptr %76, align 4
  br label %86

86:                                               ; preds = %61, %55, %1
  %87 = phi i32 [ 0, %61 ], [ -38, %1 ], [ -22, %55 ]
  ret i32 %87
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
