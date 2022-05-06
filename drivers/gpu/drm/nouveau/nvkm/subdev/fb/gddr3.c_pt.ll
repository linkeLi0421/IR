; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c"
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

@ramgddr3_cl_hi = internal unnamed_addr constant [9 x %struct.ramxlat] [%struct.ramxlat { i32 10, i8 2 }, %struct.ramxlat { i32 11, i8 3 }, %struct.ramxlat { i32 12, i8 4 }, %struct.ramxlat { i32 13, i8 5 }, %struct.ramxlat { i32 14, i8 6 }, %struct.ramxlat { i32 15, i8 7 }, %struct.ramxlat { i32 16, i8 0 }, %struct.ramxlat { i32 17, i8 1 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@ramgddr3_cl_lo = internal unnamed_addr constant [10 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 5 }, %struct.ramxlat { i32 7, i8 7 }, %struct.ramxlat { i32 8, i8 0 }, %struct.ramxlat { i32 9, i8 1 }, %struct.ramxlat { i32 10, i8 2 }, %struct.ramxlat { i32 11, i8 3 }, %struct.ramxlat { i32 12, i8 8 }, %struct.ramxlat { i32 13, i8 9 }, %struct.ramxlat { i32 14, i8 6 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@ramgddr3_wr_lo = internal unnamed_addr constant [11 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 2 }, %struct.ramxlat { i32 7, i8 4 }, %struct.ramxlat { i32 8, i8 5 }, %struct.ramxlat { i32 9, i8 6 }, %struct.ramxlat { i32 10, i8 7 }, %struct.ramxlat { i32 11, i8 0 }, %struct.ramxlat { i32 13, i8 1 }, %struct.ramxlat { i32 4, i8 0 }, %struct.ramxlat { i32 6, i8 3 }, %struct.ramxlat { i32 12, i8 1 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@switch.table.nvkm_gddr3_calc = private unnamed_addr constant [10 x ptr] [ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 7), ptr @ramgddr3_wr_lo, ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 8), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 1), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 2), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 3), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 4), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 5), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 9), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 6)], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gddr3_calc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %135 [
    i32 16, label %23
    i32 32, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 7
  %10 = and i32 %9, 31
  %11 = and i32 %8, 31
  %12 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 127
  %16 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = and i32 %17, 768
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %50

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15
  %25 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15, i32 1, i32 4
  %26 = load i64, ptr %25, align 4
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load i96, ptr %24, align 4
  %31 = trunc i96 %30 to i32
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = and i32 %31, 255
  %35 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = lshr i96 %30, 88
  %40 = trunc i96 %39 to i32
  %41 = and i32 %40, 7
  %42 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %59

47:                                               ; preds = %23
  %48 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %6
  %51 = phi i32 [ %17, %6 ], [ %49, %47 ]
  %52 = phi i32 [ %22, %6 ], [ %43, %47 ]
  %53 = phi i32 [ %19, %6 ], [ %38, %47 ]
  %54 = phi i32 [ %10, %6 ], [ %29, %47 ]
  %55 = phi i32 [ %15, %6 ], [ %34, %47 ]
  %56 = phi i32 [ %11, %6 ], [ %33, %47 ]
  %57 = lshr i32 %51, 2
  %58 = and i32 %57, 3
  br label %59

59:                                               ; preds = %50, %23
  %60 = phi i32 [ %52, %50 ], [ %43, %23 ]
  %61 = phi i32 [ %53, %50 ], [ %38, %23 ]
  %62 = phi i32 [ %54, %50 ], [ %29, %23 ]
  %63 = phi i32 [ %55, %50 ], [ %34, %23 ]
  %64 = phi i32 [ %56, %50 ], [ %33, %23 ]
  %65 = phi i32 [ %58, %50 ], [ %41, %23 ]
  %66 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @ramgddr3_cl_lo, ptr @ramgddr3_cl_hi
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %85

73:                                               ; preds = %81, %59
  %74 = phi i32 [ %83, %81 ], [ %71, %59 ]
  %75 = phi ptr [ %82, %81 ], [ %70, %59 ]
  %76 = icmp eq i32 %74, %64
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ramxlat, ptr %75, i32 0, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i32
  br label %85

81:                                               ; preds = %73
  %82 = getelementptr %struct.ramxlat, ptr %75, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %73, label %85

85:                                               ; preds = %81, %77, %59
  %86 = phi i32 [ %80, %77 ], [ -22, %59 ], [ -22, %81 ]
  %87 = add nsw i32 %63, -4
  %88 = icmp ult i32 %87, 10
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds [10 x ptr], ptr @switch.table.nvkm_gddr3_calc, i32 0, i32 %87
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ramxlat, ptr %91, i32 0, i32 1
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i32 [ %94, %89 ], [ -22, %85 ]
  %97 = icmp slt i32 %86, 0
  %98 = icmp eq i32 %62, 0
  %99 = select i1 %97, i1 true, i1 %98
  %100 = icmp ugt i32 %62, 7
  %101 = select i1 %99, i1 true, i1 %100
  %102 = icmp slt i32 %96, 0
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %135, label %104

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, -3957
  %108 = shl nuw nsw i32 %62, 9
  %109 = and i32 %108, 3584
  %110 = shl nuw nsw i32 %86, 4
  %111 = and i32 %110, 112
  %112 = lshr i32 %86, 1
  %113 = and i32 %112, 4
  %114 = or i32 %111, %109
  %115 = or i32 %114, %113
  %116 = or i32 %115, %107
  store i32 %116, ptr %105, align 4
  %117 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, -1021
  %120 = shl nuw nsw i32 %65, 2
  %121 = and i32 %120, 12
  %122 = shl i32 %60, 8
  %123 = and i32 %122, 768
  %124 = shl nuw nsw i32 %96, 4
  %125 = and i32 %124, 48
  %126 = shl nuw nsw i32 %96, 5
  %127 = and i32 %126, 128
  %128 = icmp eq i32 %61, 0
  %129 = select i1 %128, i32 64, i32 0
  %130 = or i32 %129, %123
  %131 = or i32 %130, %121
  %132 = or i32 %131, %125
  %133 = or i32 %132, %127
  %134 = or i32 %133, %119
  store i32 %134, ptr %117, align 4
  br label %135

135:                                              ; preds = %104, %95, %1
  %136 = phi i32 [ 0, %104 ], [ -38, %1 ], [ -22, %95 ]
  ret i32 %136
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
