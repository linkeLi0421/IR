; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllgt215.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.127, %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: unable to find matching pll values\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_pll_calc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %9, %2
  store i32 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @llvm.smin.i32(i32 %10, i32 %13)
  store i32 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = tail call i32 @llvm.smax.i32(i32 %14, i32 %17)
  store i32 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = udiv i32 %23, %22
  %25 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @llvm.smax.i32(i32 %24, i32 %27)
  %29 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %20
  %32 = udiv i32 %31, %30
  %33 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = tail call i32 @llvm.smin.i32(i32 %32, i32 %35)
  %37 = tail call i32 @llvm.smin.i32(i32 %28, i32 %36)
  %38 = icmp eq ptr %4, null
  %39 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 6
  %40 = getelementptr inbounds %struct.nvbios_pll, ptr %1, i32 0, i32 7, i32 7
  br label %41

41:                                               ; preds = %95, %7
  %42 = phi i32 [ %20, %7 ], [ %98, %95 ]
  %43 = phi i32 [ %18, %7 ], [ %97, %95 ]
  %44 = phi i32 [ -1, %7 ], [ %93, %95 ]
  %45 = phi i32 [ %37, %7 ], [ %96, %95 ]
  %46 = mul i32 %45, %2
  %47 = mul i32 %46, %43
  %48 = freeze i32 %47
  %49 = freeze i32 %42
  %50 = udiv i32 %48, %49
  %51 = mul i32 %50, %49
  %52 = sub i32 %48, %51
  %53 = lshr i32 %42, 1
  br i1 %38, label %54, label %58

54:                                               ; preds = %41
  %55 = icmp uge i32 %52, %53
  %56 = zext i1 %55 to i32
  %57 = add i32 %50, %56
  br label %64

58:                                               ; preds = %41
  %59 = icmp ult i32 %52, %53
  %60 = sext i1 %59 to i32
  %61 = add i32 %50, %60
  %62 = mul i32 %61, %42
  %63 = sub i32 %47, %62
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i32 [ %63, %58 ], [ %52, %54 ]
  %66 = phi i32 [ %61, %58 ], [ %57, %54 ]
  %67 = load i8, ptr %39, align 2
  %68 = zext i8 %67 to i32
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %92, label %70

70:                                               ; preds = %64
  %71 = load i8, ptr %40, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sgt i32 %66, %72
  br i1 %73, label %99, label %74

74:                                               ; preds = %70
  %75 = mul i32 %66, %42
  %76 = udiv i32 %75, %45
  %77 = udiv i32 %76, %43
  %78 = sub i32 %2, %77
  %79 = tail call i32 @llvm.abs.i32(i32 %78, i1 false)
  %80 = icmp ult i32 %79, %44
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 %66, ptr %3, align 4
  store i32 %45, ptr %5, align 4
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i32 [ %79, %81 ], [ %44, %74 ]
  br i1 %38, label %92, label %84

84:                                               ; preds = %82
  %85 = shl i32 %65, 13
  %86 = load i32, ptr %19, align 4
  %87 = lshr i32 %86, 1
  %88 = add i32 %87, %85
  %89 = udiv i32 %88, %86
  %90 = add i32 %89, 61440
  %91 = and i32 %90, 65535
  store i32 %91, ptr %4, align 4
  br label %120

92:                                               ; preds = %82, %64
  %93 = phi i32 [ %83, %82 ], [ %44, %64 ]
  %94 = icmp slt i32 %45, %36
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = add nsw i32 %45, 1
  %97 = load i32, ptr %6, align 4
  %98 = load i32, ptr %19, align 4
  br label %41

99:                                               ; preds = %92, %70
  %100 = phi i32 [ %44, %70 ], [ %93, %92 ]
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %112, !prof !8

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str, ptr noundef %111) #3
  br label %120

112:                                              ; preds = %99
  %113 = load i32, ptr %19, align 4
  %114 = load i32, ptr %3, align 4
  %115 = mul i32 %114, %113
  %116 = load i32, ptr %5, align 4
  %117 = udiv i32 %115, %116
  %118 = load i32, ptr %6, align 4
  %119 = udiv i32 %117, %118
  br label %120

120:                                              ; preds = %112, %106, %102, %84
  %121 = phi i32 [ %119, %112 ], [ -22, %106 ], [ -22, %102 ], [ %2, %84 ]
  ret i32 %121
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
