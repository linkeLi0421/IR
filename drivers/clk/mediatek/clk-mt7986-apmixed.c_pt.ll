; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt7986-apmixed.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7986-apmixed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
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

@__initcall__kmod_clk_mt7986_apmixed__162_100_clk_mt7986_apmixed_drv_init6 = internal global ptr @clk_mt7986_apmixed_drv_init, section ".initcall6.init", align 4
@clk_mt7986_apmixed_drv = internal global %struct.platform_driver { ptr @clk_mt7986_apmixed_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7986_apmixed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"clk-mt7986-apmixed\00", align 1
@of_match_clk_mt7986_apmixed = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@plls = internal constant [8 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.2, i32 512, i32 524, i32 1, i32 512, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 516, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.4, i32 528, i32 540, i32 1, i32 528, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 532, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.5, i32 544, i32 556, i32 1, i32 544, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 548, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.6, i32 560, i32 572, i32 1, i32 560, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 564, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.7, i32 576, i32 588, i32 1, i32 576, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 580, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.8, i32 592, i32 604, i32 1, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 596, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.9, i32 608, i32 624, i32 1, i32 608, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 612, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.10, i32 632, i32 648, i32 1, i32 632, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 32, i32 0, i32 636, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }], align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@__func__.clk_mt7986_apmixed_probe = private unnamed_addr constant [25 x i8] c"clk_mt7986_apmixed_probe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"armpll\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clkxtal\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"net2pll\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sgmpll\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wedmcupll\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"net1pll\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"apll2\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_mt7986_apmixed__162_100_clk_mt7986_apmixed_drv_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_mt7986_apmixed_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7986_apmixed_drv, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt7986_apmixed_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @mtk_alloc_clk_data(i32 noundef 8) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  tail call void @mtk_clk_register_plls(ptr noundef %3, ptr noundef nonnull @plls, i32 noundef 8, ptr noundef nonnull %4) #4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = tail call i32 @clk_enable(ptr noundef %8) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %15

15:                                               ; preds = %14, %11, %6
  %16 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %4) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_mt7986_apmixed_probe, i32 noundef %16) #5
  tail call void @mtk_free_clk_data(ptr noundef nonnull %4) #4
  br label %20

20:                                               ; preds = %18, %15, %1
  %21 = phi i32 [ %16, %18 ], [ -12, %1 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_free_clk_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
