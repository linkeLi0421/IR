; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_20nm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@dsi_phy_20nm_cfgs = dso_local local_unnamed_addr constant %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr null, ptr @dsi_20nm_phy_enable, ptr @dsi_20nm_phy_disable, ptr null, ptr null, ptr null }, i32 0, i32 0, [2 x i32] [i32 -40270592, i32 -40237824], i32 2, i32 0, i8 1, i8 0 }, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", align 1
@__func__.dsi_20nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_20nm_phy_enable\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsi_20nm_phy_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #2
  %6 = tail call i32 @msm_dsi_dphy_timing_calc(ptr noundef %3, ptr noundef %1) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dsi_20nm_phy_enable) #2
  br label %130

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 15
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 476
  tail call void @msm_writel(i32 noundef 29, ptr noundef %17) #2
  br label %28

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %21) #2
  %22 = getelementptr i8, ptr %20, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %22) #2
  %23 = getelementptr i8, ptr %20, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %23) #2
  %24 = getelementptr i8, ptr %20, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %24) #2
  %25 = getelementptr i8, ptr %20, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %25) #2
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 476
  tail call void @msm_writel(i32 noundef 0, ptr noundef %27) #2
  tail call void @msm_writel(i32 noundef 3, ptr noundef %20) #2
  br label %28

28:                                               ; preds = %18, %15
  %29 = getelementptr i8, ptr %5, i32 388
  tail call void @msm_writel(i32 noundef 255, ptr noundef %29) #2
  %30 = getelementptr i8, ptr %5, i32 468
  %31 = tail call i32 @msm_readl(ptr noundef %30) #2
  %32 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = or i32 %31, 1
  br label %43

41:                                               ; preds = %35, %28
  %42 = and i32 %31, -2
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  tail call void @msm_writel(i32 noundef %44, ptr noundef %30) #2
  %45 = getelementptr i8, ptr %5, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %45) #2
  %46 = getelementptr i8, ptr %5, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %46) #2
  %47 = getelementptr i8, ptr %5, i32 32
  tail call void @msm_writel(i32 noundef 70, ptr noundef %47) #2
  tail call void @msm_writel(i32 noundef 2, ptr noundef %5) #2
  %48 = getelementptr i8, ptr %5, i32 4
  tail call void @msm_writel(i32 noundef 160, ptr noundef %48) #2
  %49 = getelementptr i8, ptr %5, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %49) #2
  %50 = getelementptr i8, ptr %5, i32 76
  tail call void @msm_writel(i32 noundef 0, ptr noundef %50) #2
  %51 = getelementptr i8, ptr %5, i32 92
  tail call void @msm_writel(i32 noundef 1, ptr noundef %51) #2
  %52 = getelementptr i8, ptr %5, i32 96
  tail call void @msm_writel(i32 noundef 70, ptr noundef %52) #2
  %53 = getelementptr i8, ptr %5, i32 64
  tail call void @msm_writel(i32 noundef 2, ptr noundef %53) #2
  %54 = getelementptr i8, ptr %5, i32 68
  tail call void @msm_writel(i32 noundef 160, ptr noundef %54) #2
  %55 = getelementptr i8, ptr %5, i32 80
  tail call void @msm_writel(i32 noundef 64, ptr noundef %55) #2
  %56 = getelementptr i8, ptr %5, i32 140
  tail call void @msm_writel(i32 noundef 64, ptr noundef %56) #2
  %57 = getelementptr i8, ptr %5, i32 156
  tail call void @msm_writel(i32 noundef 1, ptr noundef %57) #2
  %58 = getelementptr i8, ptr %5, i32 160
  tail call void @msm_writel(i32 noundef 70, ptr noundef %58) #2
  %59 = getelementptr i8, ptr %5, i32 128
  tail call void @msm_writel(i32 noundef 2, ptr noundef %59) #2
  %60 = getelementptr i8, ptr %5, i32 132
  tail call void @msm_writel(i32 noundef 160, ptr noundef %60) #2
  %61 = getelementptr i8, ptr %5, i32 144
  tail call void @msm_writel(i32 noundef 32, ptr noundef %61) #2
  %62 = getelementptr i8, ptr %5, i32 204
  tail call void @msm_writel(i32 noundef 64, ptr noundef %62) #2
  %63 = getelementptr i8, ptr %5, i32 220
  tail call void @msm_writel(i32 noundef 1, ptr noundef %63) #2
  %64 = getelementptr i8, ptr %5, i32 224
  tail call void @msm_writel(i32 noundef 70, ptr noundef %64) #2
  %65 = getelementptr i8, ptr %5, i32 192
  tail call void @msm_writel(i32 noundef 2, ptr noundef %65) #2
  %66 = getelementptr i8, ptr %5, i32 196
  tail call void @msm_writel(i32 noundef 160, ptr noundef %66) #2
  %67 = getelementptr i8, ptr %5, i32 208
  tail call void @msm_writel(i32 noundef 0, ptr noundef %67) #2
  %68 = getelementptr i8, ptr %5, i32 268
  tail call void @msm_writel(i32 noundef 128, ptr noundef %68) #2
  %69 = getelementptr i8, ptr %5, i32 284
  tail call void @msm_writel(i32 noundef 1, ptr noundef %69) #2
  %70 = getelementptr i8, ptr %5, i32 288
  tail call void @msm_writel(i32 noundef 70, ptr noundef %70) #2
  %71 = getelementptr i8, ptr %5, i32 256
  tail call void @msm_writel(i32 noundef 0, ptr noundef %71) #2
  %72 = getelementptr i8, ptr %5, i32 260
  tail call void @msm_writel(i32 noundef 160, ptr noundef %72) #2
  %73 = getelementptr i8, ptr %5, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %73) #2
  %74 = getelementptr i8, ptr %5, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %74) #2
  %75 = load ptr, ptr %4, align 4
  %76 = load i32, ptr %3, align 4
  %77 = and i32 %76, 255
  %78 = getelementptr i8, ptr %75, i32 320
  tail call void @msm_writel(i32 noundef %77, ptr noundef %78) #2
  %79 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 255
  %82 = getelementptr i8, ptr %75, i32 324
  tail call void @msm_writel(i32 noundef %81, ptr noundef %82) #2
  %83 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr i8, ptr %75, i32 328
  tail call void @msm_writel(i32 noundef %85, ptr noundef %86) #2
  %87 = load i32, ptr %3, align 4
  %88 = and i32 %87, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %43
  %91 = getelementptr i8, ptr %75, i32 332
  tail call void @msm_writel(i32 noundef 1, ptr noundef %91) #2
  br label %92

92:                                               ; preds = %90, %43
  %93 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 255
  %96 = getelementptr i8, ptr %75, i32 336
  tail call void @msm_writel(i32 noundef %95, ptr noundef %96) #2
  %97 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 255
  %100 = getelementptr i8, ptr %75, i32 340
  tail call void @msm_writel(i32 noundef %99, ptr noundef %100) #2
  %101 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 255
  %104 = getelementptr i8, ptr %75, i32 344
  tail call void @msm_writel(i32 noundef %103, ptr noundef %104) #2
  %105 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 255
  %108 = getelementptr i8, ptr %75, i32 348
  tail call void @msm_writel(i32 noundef %107, ptr noundef %108) #2
  %109 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 255
  %112 = getelementptr i8, ptr %75, i32 352
  tail call void @msm_writel(i32 noundef %111, ptr noundef %112) #2
  %113 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 8
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 7
  %116 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 4
  %119 = and i32 %118, 112
  %120 = or i32 %119, %115
  %121 = getelementptr i8, ptr %75, i32 356
  tail call void @msm_writel(i32 noundef %120, ptr noundef %121) #2
  %122 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 12, i32 10
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 7
  %125 = getelementptr i8, ptr %75, i32 360
  tail call void @msm_writel(i32 noundef %124, ptr noundef %125) #2
  %126 = getelementptr i8, ptr %75, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %126) #2
  %127 = getelementptr i8, ptr %5, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %127) #2
  %128 = getelementptr i8, ptr %5, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %128) #2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  %129 = getelementptr i8, ptr %5, i32 368
  tail call void @msm_writel(i32 noundef 127, ptr noundef %129) #2
  br label %130

130:                                              ; preds = %92, %8
  %131 = phi i32 [ -22, %8 ], [ 0, %92 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsi_20nm_phy_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %4) #2
  %5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2155794840}
