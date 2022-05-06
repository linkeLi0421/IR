; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_gddr5_calc(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 1000000
  %6 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 17
  br i1 %13, label %14, label %126

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 6
  %18 = and i32 %17, 1
  %19 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 11, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %126

26:                                               ; preds = %14
  %27 = getelementptr %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 14, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 7
  %30 = and i32 %29, 31
  %31 = and i32 %28, 31
  %32 = getelementptr %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 14, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 127
  %36 = add nsw i32 %30, -8
  %37 = icmp ult i32 %36, -7
  %38 = icmp ult i32 %31, 5
  %39 = select i1 %37, i1 true, i1 %38
  %40 = icmp ult i32 %35, 4
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ugt i32 %35, 35
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %126, label %44

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.nvkm_ram_data, ptr %7, i32 0, i32 1, i32 15
  %46 = load i64, ptr %45, align 4
  %47 = trunc i64 %46 to i32
  %48 = lshr i32 %47, 6
  %49 = and i32 %48, 3
  %50 = and i32 %47, 48
  %51 = add nsw i32 %31, -5
  %52 = add nsw i32 %35, -4
  %53 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -3968
  %56 = shl nuw nsw i32 %52, 8
  %57 = and i32 %56, 3840
  %58 = shl nuw nsw i32 %51, 3
  %59 = and i32 %58, 120
  %60 = and i32 %29, 7
  %61 = or i32 %59, %60
  %62 = or i32 %61, %57
  %63 = or i32 %62, %55
  store i32 %63, ptr %53, align 4
  %64 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -192
  %67 = select i1 %10, i32 128, i32 0
  %68 = shl i32 %47, 2
  %69 = and i32 %68, 12
  %70 = or i32 %50, %67
  %71 = or i32 %70, %69
  %72 = or i32 %71, %49
  %73 = or i32 %72, %66
  store i32 %73, ptr %64, align 4
  %74 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 12
  store i32 %73, ptr %74, align 4
  br i1 %1, label %75, label %79

75:                                               ; preds = %44
  %76 = and i32 %73, -49
  %77 = and i32 %68, 48
  %78 = or i32 %76, %77
  store i32 %78, ptr %64, align 4
  br label %79

79:                                               ; preds = %75, %44
  %80 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -33
  %83 = select i1 %5, i32 32, i32 0
  %84 = or i32 %82, %83
  store i32 %84, ptr %80, align 4
  %85 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -5
  %88 = lshr i32 %20, 14
  %89 = and i32 %88, 4
  %90 = or i32 %87, %89
  %91 = xor i32 %90, 4
  store i32 %91, ptr %85, align 4
  %92 = icmp eq i32 %22, 0
  %93 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 4
  %96 = and i32 %95, 255
  %97 = select i1 %92, i32 %96, i32 %22
  %98 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 6
  %99 = and i32 %94, 1
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 %18, i32 1
  %102 = and i32 %94, -4082
  %103 = shl nuw nsw i32 %97, 4
  %104 = or i32 %102, %103
  %105 = or i32 %101, %104
  store i32 %105, ptr %98, align 4
  %106 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, -905
  %109 = lshr i32 %16, 1
  %110 = and i32 %109, 256
  %111 = lshr i32 %16, 4
  %112 = and i32 %111, 128
  %113 = lshr i32 %16, 2
  %114 = and i32 %113, 8
  %115 = or i32 %112, %110
  %116 = or i32 %115, %114
  %117 = or i32 %116, %108
  store i32 %117, ptr %106, align 4
  %118 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -4
  %121 = lshr i32 %52, 3
  %122 = and i32 %121, 2
  %123 = lshr i32 %51, 4
  %124 = or i32 %122, %123
  %125 = or i32 %124, %120
  store i32 %125, ptr %118, align 4
  br label %126

126:                                              ; preds = %79, %26, %14, %2
  %127 = phi i32 [ 0, %79 ], [ -38, %2 ], [ -38, %14 ], [ -22, %26 ]
  ret i32 %127
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
