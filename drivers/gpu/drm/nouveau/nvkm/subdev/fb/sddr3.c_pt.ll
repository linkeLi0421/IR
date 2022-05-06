; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c"
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

@ramddr3_cwl = internal unnamed_addr constant [7 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 0 }, %struct.ramxlat { i32 6, i8 1 }, %struct.ramxlat { i32 7, i8 2 }, %struct.ramxlat { i32 8, i8 3 }, %struct.ramxlat { i32 9, i8 4 }, %struct.ramxlat { i32 10, i8 5 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@ramddr3_cl = internal unnamed_addr constant [11 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 2 }, %struct.ramxlat { i32 6, i8 4 }, %struct.ramxlat { i32 7, i8 6 }, %struct.ramxlat { i32 8, i8 8 }, %struct.ramxlat { i32 9, i8 10 }, %struct.ramxlat { i32 10, i8 12 }, %struct.ramxlat { i32 11, i8 14 }, %struct.ramxlat { i32 12, i8 1 }, %struct.ramxlat { i32 13, i8 3 }, %struct.ramxlat { i32 14, i8 5 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@ramddr3_wr = internal unnamed_addr constant [10 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 1 }, %struct.ramxlat { i32 6, i8 2 }, %struct.ramxlat { i32 7, i8 3 }, %struct.ramxlat { i32 8, i8 4 }, %struct.ramxlat { i32 10, i8 5 }, %struct.ramxlat { i32 12, i8 6 }, %struct.ramxlat { i32 14, i8 7 }, %struct.ramxlat { i32 15, i8 7 }, %struct.ramxlat { i32 16, i8 0 }, %struct.ramxlat { i32 -1, i8 0 }], align 4
@switch.table.nvkm_sddr3_calc = private unnamed_addr constant [6 x ptr] [ptr @ramddr3_cwl, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 5)], align 4
@switch.table.nvkm_sddr3_calc.1 = private unnamed_addr constant [10 x ptr] [ptr @ramddr3_cl, ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 1), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 2), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 3), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 4), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 5), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 6), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 7), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 8), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 9)], align 4
@switch.table.nvkm_sddr3_calc.2 = private unnamed_addr constant [12 x ptr] [ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 1), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 2), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 3), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 4), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 5), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 6), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 7), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 8)], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_sddr3_calc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 12
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %128 [
    i32 16, label %9
    i32 32, label %28
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 23
  br i1 %12, label %128, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15
  %15 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15, i32 1, i32 4
  %16 = load i64, ptr %15, align 4
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = load i96, ptr %14, align 4
  %21 = trunc i96 %20 to i32
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = and i32 %21, 255
  %25 = lshr i96 %20, 88
  %26 = trunc i96 %25 to i32
  %27 = and i32 %26, 7
  br label %48

28:                                               ; preds = %1
  %29 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 7
  %32 = and i32 %31, 31
  %33 = and i32 %30, 31
  %34 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 127
  %38 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 2
  %41 = and i32 %40, 1
  %42 = lshr i32 %39, 5
  %43 = and i32 %42, 2
  %44 = or i32 %41, %43
  %45 = lshr i32 %39, 7
  %46 = and i32 %45, 4
  %47 = or i32 %44, %46
  br label %48

48:                                               ; preds = %28, %13
  %49 = phi i32 [ %32, %28 ], [ %19, %13 ]
  %50 = phi i32 [ %33, %28 ], [ %23, %13 ]
  %51 = phi i32 [ %37, %28 ], [ %24, %13 ]
  %52 = phi i32 [ %47, %28 ], [ %27, %13 ]
  %53 = trunc i32 %49 to i8
  %54 = add i8 %53, -5
  %55 = icmp ult i8 %54, 6
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = sext i8 %54 to i32
  %58 = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr3_calc, i32 0, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ramxlat, ptr %59, i32 0, i32 1
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %56, %48
  %64 = phi i32 [ %62, %56 ], [ -22, %48 ]
  %65 = trunc i32 %50 to i8
  %66 = add i8 %65, -5
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = sext i8 %66 to i32
  %70 = getelementptr inbounds [10 x ptr], ptr @switch.table.nvkm_sddr3_calc.1, i32 0, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ramxlat, ptr %71, i32 0, i32 1
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i32 [ %74, %68 ], [ -22, %63 ]
  %77 = trunc i32 %51 to i8
  %78 = add i8 %77, -5
  %79 = icmp ult i8 %78, 12
  br i1 %79, label %80, label %128

80:                                               ; preds = %75
  %81 = zext i8 %78 to i16
  %82 = lshr i16 3759, %81
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %128, label %85

85:                                               ; preds = %80
  %86 = icmp slt i32 %76, 0
  %87 = icmp slt i32 %64, 0
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %128, label %89

89:                                               ; preds = %85
  %90 = sext i8 %78 to i32
  %91 = getelementptr inbounds [12 x ptr], ptr @switch.table.nvkm_sddr3_calc.2, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ramxlat, ptr %92, i32 0, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -3957
  %99 = shl nuw nsw i32 %95, 9
  %100 = and i32 %99, 3584
  %101 = shl nuw nsw i32 %76, 3
  %102 = and i32 %101, 112
  %103 = shl nuw nsw i32 %76, 2
  %104 = and i32 %103, 4
  %105 = or i32 %104, %102
  %106 = or i32 %105, %98
  %107 = or i32 %106, %100
  store i32 %107, ptr %96, align 4
  %108 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, -582
  %111 = shl nsw i32 %52, 2
  %112 = and i32 %111, 4
  %113 = shl nsw i32 %52, 5
  %114 = and i32 %113, 64
  %115 = shl nsw i32 %52, 7
  %116 = and i32 %115, 512
  %117 = zext i1 %6 to i32
  %118 = or i32 %112, %117
  %119 = or i32 %118, %114
  %120 = or i32 %119, %116
  %121 = or i32 %120, %110
  store i32 %121, ptr %108, align 4
  %122 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, -57
  %125 = shl nuw nsw i32 %64, 3
  %126 = and i32 %125, 56
  %127 = or i32 %124, %126
  store i32 %127, ptr %122, align 4
  br label %128

128:                                              ; preds = %89, %85, %80, %75, %9, %1
  %129 = phi i32 [ 0, %89 ], [ -38, %9 ], [ -38, %1 ], [ -22, %85 ], [ -22, %75 ], [ -22, %80 ]
  ret i32 %129
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
