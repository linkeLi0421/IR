; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.79 = type { i32, ptr }
%struct.mdp4_lvds_pll = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }

@pll_init = internal global %struct.clk_init_data { ptr @.str, ptr @mpd4_lvds_pll_ops, ptr @mpd4_lvds_pll_parents, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"mpd4_lvds_pll\00", align 1
@mpd4_lvds_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mpd4_lvds_pll_enable, ptr @mpd4_lvds_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @mpd4_lvds_pll_recalc_rate, ptr @mpd4_lvds_pll_round_rate, ptr null, ptr null, ptr null, ptr @mpd4_lvds_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mpd4_lvds_pll_parents = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"pixclk=%lu (%lu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpd4_lvds_pll_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.clk_hw, ptr %4, i32 0, i32 2
  store ptr @pll_init, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call ptr @devm_clk_register(ptr noundef %9, ptr noundef nonnull %4) #5
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ inttoptr (i32 -12 to ptr), %1 ], [ %10, %6 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpd4_lvds_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef 72000000) #5
  %10 = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 794676
  tail call void @msm_writel(i32 noundef 51, ptr noundef %12) #5
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr i8, ptr %13, i32 798724
  tail call void @msm_writel(i32 noundef 143, ptr noundef %14) #5
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr i8, ptr %15, i32 798728
  tail call void @msm_writel(i32 noundef 48, ptr noundef %16) #5
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr i8, ptr %17, i32 798732
  tail call void @msm_writel(i32 noundef 198, ptr noundef %18) #5
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr i8, ptr %19, i32 798740
  tail call void @msm_writel(i32 noundef 16, ptr noundef %20) #5
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr i8, ptr %21, i32 798744
  tail call void @msm_writel(i32 noundef 7, ptr noundef %22) #5
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr i8, ptr %23, i32 798748
  tail call void @msm_writel(i32 noundef 98, ptr noundef %24) #5
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr i8, ptr %25, i32 798752
  tail call void @msm_writel(i32 noundef 65, ptr noundef %26) #5
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr i8, ptr %27, i32 798756
  tail call void @msm_writel(i32 noundef 13, ptr noundef %28) #5
  %29 = load ptr, ptr %10, align 8
  %30 = getelementptr i8, ptr %29, i32 798720
  tail call void @msm_writel(i32 noundef 1, ptr noundef %30) #5
  %31 = load ptr, ptr %10, align 8
  %32 = getelementptr i8, ptr %31, i32 798848
  %33 = tail call i32 @msm_readl(ptr noundef %32) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %35, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %36 = load ptr, ptr %10, align 8
  %37 = getelementptr i8, ptr %36, i32 798848
  %38 = tail call i32 @msm_readl(ptr noundef %37) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %35, label %40

40:                                               ; preds = %35, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mpd4_lvds_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #5
  %8 = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 798976
  tail call void @msm_writel(i32 noundef 0, ptr noundef %10) #5
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr i8, ptr %11, i32 798720
  tail call void @msm_writel(i32 noundef 0, ptr noundef %12) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mpd4_lvds_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mpd4_lvds_pll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  ret i32 72000000
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mpd4_lvds_pll_set_rate(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.mdp4_lvds_pll, ptr %0, i32 0, i32 2
  store i32 %1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{i64 2155697144}
!9 = !{i64 2155696986}
