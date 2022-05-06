; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mdp4_lcdc_encoder = type { %struct.drm_encoder, ptr, ptr, ptr, i32, [3 x ptr], i8, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@mdp4_lcdc_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @mdp4_lcdc_encoder_destroy, ptr null, ptr null }, align 4
@mdp4_lcdc_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_lcdc_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_lcdc_encoder_disable, ptr @mdp4_lcdc_encoder_enable, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to get lvds_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"lvds-vccs-3p3v\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to get lvds-vccs-3p3v: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lvds-pll-vdda\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to get lvds-pll-vdda: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lvds-vdda\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to get lvds-vdda: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"pixclock=%lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to disable regulator: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"qcom,lcdc-align-lsb\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to enable regulator: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"setting lcdc_clk=%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to configure lcdc_clk: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to enable lcdc_clk: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"*ERROR* unknown bpp: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_lcdc_round_pixclk(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_round_rate(ptr noundef %4, i32 noundef %1) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_lcdc_encoder_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 108) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @mdp4_lcdc_encoder_funcs, i32 noundef 3, ptr noundef null) #3
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %4, i32 0, i32 11
  store ptr @mdp4_lcdc_encoder_helper_funcs, ptr %9, align 4
  %10 = tail call ptr @mpd4_lvds_pll_init(ptr noundef %0) #3
  %11 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %4, i32 0, i32 3
  store ptr %10, ptr %11, align 8
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %15, label %18

15:                                               ; preds = %6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  %16 = load ptr, ptr %11, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %42

18:                                               ; preds = %6
  %19 = tail call ptr @devm_regulator_get(ptr noundef %14, ptr noundef nonnull @.str.2) #3
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  %23 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %22) #3
  br label %42

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %4, i32 0, i32 5
  store ptr %19, ptr %25, align 8
  %26 = load ptr, ptr %13, align 4
  %27 = tail call ptr @devm_regulator_get(ptr noundef %26, ptr noundef nonnull @.str.4) #3
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  %31 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %30) #3
  br label %42

32:                                               ; preds = %24
  %33 = getelementptr %struct.mdp4_lcdc_encoder, ptr %4, i32 0, i32 5, i32 1
  store ptr %27, ptr %33, align 4
  %34 = load ptr, ptr %13, align 4
  %35 = tail call ptr @devm_regulator_get(ptr noundef %34, ptr noundef nonnull @.str.6) #3
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = ptrtoint ptr %35 to i32
  %39 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %38) #3
  br label %42

40:                                               ; preds = %32
  %41 = getelementptr %struct.mdp4_lcdc_encoder, ptr %4, i32 0, i32 5, i32 2
  store ptr %35, ptr %41, align 8
  br label %47

42:                                               ; preds = %37, %29, %21, %15
  %43 = phi i32 [ %38, %37 ], [ %30, %29 ], [ %22, %21 ], [ %17, %15 ]
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %4) #3
  tail call void @kfree(ptr noundef nonnull %4) #3
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i32 [ %43, %42 ], [ -12, %2 ]
  %46 = inttoptr i32 %45 to ptr
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi ptr [ %46, %44 ], [ %4, %40 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpd4_lvds_pll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #3
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_mode_set(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 31
  %10 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #3
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 7
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 8
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 28
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %40) #3
  %41 = load i32, ptr %2, align 4
  %42 = mul i32 %41, 1000
  %43 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %42) #3
  %44 = load i32, ptr %39, align 4
  %45 = lshr i32 %44, 1
  %46 = and i32 %45, 1
  %47 = lshr i32 %44, 2
  %48 = and i32 %47, 2
  %49 = or i32 %48, %46
  %50 = load i16, ptr %21, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %15, align 2
  %53 = zext i16 %52 to i32
  %54 = sub nsw i32 %51, %53
  %55 = load i16, ptr %12, align 4
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = load i16, ptr %33, align 4
  %59 = zext i16 %58 to i32
  %60 = mul nuw i32 %59, %51
  %61 = load i16, ptr %30, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, ptr %27, align 4
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %62, %64
  %66 = mul i32 %65, %51
  %67 = sub nsw i32 %59, %64
  %68 = mul i32 %67, %51
  %69 = load i16, ptr %24, align 2
  %70 = zext i16 %69 to i32
  %71 = sub nsw i32 %70, %64
  %72 = mul i32 %71, %51
  %73 = add i32 %60, -1
  %74 = add i32 %73, %72
  %75 = load i16, ptr %18, align 4
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 %76, %53
  %78 = and i32 %77, 65535
  %79 = shl nuw i32 %51, 16
  %80 = or i32 %78, %79
  %81 = getelementptr inbounds %struct.mdp4_kms, ptr %8, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr i8, ptr %82, i32 786436
  tail call void @msm_writel(i32 noundef %80, ptr noundef %83) #3
  %84 = load ptr, ptr %81, align 8
  %85 = getelementptr i8, ptr %84, i32 786440
  tail call void @msm_writel(i32 noundef %60, ptr noundef %85) #3
  %86 = load ptr, ptr %81, align 8
  %87 = getelementptr i8, ptr %86, i32 786444
  tail call void @msm_writel(i32 noundef %66, ptr noundef %87) #3
  %88 = and i32 %54, 65535
  %89 = shl i32 %57, 16
  %90 = add i32 %89, -65536
  %91 = or i32 %90, %88
  %92 = load ptr, ptr %81, align 8
  %93 = getelementptr i8, ptr %92, i32 786448
  tail call void @msm_writel(i32 noundef %91, ptr noundef %93) #3
  %94 = load ptr, ptr %81, align 8
  %95 = getelementptr i8, ptr %94, i32 786452
  tail call void @msm_writel(i32 noundef %68, ptr noundef %95) #3
  %96 = load ptr, ptr %81, align 8
  %97 = getelementptr i8, ptr %96, i32 786456
  tail call void @msm_writel(i32 noundef %74, ptr noundef %97) #3
  %98 = load ptr, ptr %81, align 8
  %99 = getelementptr i8, ptr %98, i32 786472
  tail call void @msm_writel(i32 noundef 0, ptr noundef %99) #3
  %100 = load ptr, ptr %81, align 8
  %101 = getelementptr i8, ptr %100, i32 786476
  tail call void @msm_writel(i32 noundef -2147483393, ptr noundef %101) #3
  %102 = load ptr, ptr %81, align 8
  %103 = getelementptr i8, ptr %102, i32 786480
  tail call void @msm_writel(i32 noundef 0, ptr noundef %103) #3
  %104 = load ptr, ptr %81, align 8
  %105 = getelementptr i8, ptr %104, i32 786488
  tail call void @msm_writel(i32 noundef %49, ptr noundef %105) #3
  %106 = load ptr, ptr %81, align 8
  %107 = getelementptr i8, ptr %106, i32 786460
  tail call void @msm_writel(i32 noundef 0, ptr noundef %107) #3
  %108 = load ptr, ptr %81, align 8
  %109 = getelementptr i8, ptr %108, i32 786464
  tail call void @msm_writel(i32 noundef 0, ptr noundef %109) #3
  %110 = load ptr, ptr %81, align 8
  %111 = getelementptr i8, ptr %110, i32 786468
  tail call void @msm_writel(i32 noundef 0, ptr noundef %111) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_disable(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 281, i32 noundef 9, ptr noundef null) #3
  br label %47

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mdp4_kms, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 786432
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #3
  %15 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @of_drm_find_panel(ptr noundef %16) #3
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @drm_panel_disable(ptr noundef %17) #3
  %21 = tail call i32 @drm_panel_unprepare(ptr noundef %17) #3
  br label %22

22:                                               ; preds = %19, %11
  tail call void @mdp_irq_wait(ptr noundef %6, i32 noundef 128) #3
  %23 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #3
  tail call void @clk_unprepare(ptr noundef %24) #3
  %25 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %26 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 0
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regulator_disable(ptr noundef %27) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %28) #3
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regulator_disable(ptr noundef %34) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %35) #3
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @regulator_disable(ptr noundef %41) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %42) #3
  br label %46

46:                                               ; preds = %44, %39
  store i8 0, ptr %7, align 4
  br label %47

47:                                               ; preds = %46, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_lcdc_encoder_enable(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 324, i32 noundef 9, ptr noundef null) #3
  br label %146

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @of_find_property(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef null) #3
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 16785834, i32 16785706
  %21 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  tail call void @mdp4_crtc_set_config(ptr noundef %22, i32 noundef %20) #3
  %23 = load ptr, ptr %21, align 4
  tail call void @mdp4_crtc_set_intf(ptr noundef %23, i32 noundef 0, i32 noundef 0) #3
  %24 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 0
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_enable(ptr noundef %25) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %26) #3
  br label %30

30:                                               ; preds = %28, %13
  %31 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regulator_enable(ptr noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %33) #3
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 5, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @regulator_enable(ptr noundef %39) #3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %40) #3
  br label %44

44:                                               ; preds = %42, %37
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %4) #3
  %45 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @clk_set_rate(ptr noundef %46, i32 noundef %4) #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %47) #3
  br label %51

51:                                               ; preds = %49, %44
  %52 = load ptr, ptr %45, align 4
  %53 = tail call i32 @clk_prepare(ptr noundef %52) #3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = tail call i32 @clk_enable(ptr noundef %52) #3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  tail call void @clk_unprepare(ptr noundef %52) #3
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %56, %58 ], [ %53, %51 ]
  %61 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %61, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %60) #3
  br label %62

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.mdp4_lcdc_encoder, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = tail call ptr @of_drm_find_panel(ptr noundef %64) #3
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @drm_panel_prepare(ptr noundef %65) #3
  %69 = tail call i32 @drm_panel_enable(ptr noundef %65) #3
  br label %70

70:                                               ; preds = %67, %62
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 30, i32 12
  br label %73

73:                                               ; preds = %77, %70
  %74 = phi ptr [ %72, %70 ], [ %75, %77 ]
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %72
  br i1 %76, label %142, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %75, i32 732
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %0
  br i1 %80, label %81, label %73

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %75, i32 -16
  %83 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.msm_drm_private, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %82, null
  br i1 %87, label %142, label %88

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %75, i32 112
  %90 = load i32, ptr %89, align 8
  %91 = mul i32 %90, 3
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 18, i32 %91
  switch i32 %93, label %102 [
    i32 24, label %94
    i32 18, label %100
  ]

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.mdp4_kms, ptr %86, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr i8, ptr %96, i32 794644
  tail call void @msm_writel(i32 noundef 50595080, ptr noundef %97) #3
  %98 = load ptr, ptr %95, align 8
  %99 = getelementptr i8, ptr %98, i32 794648
  tail call void @msm_writel(i32 noundef 258, ptr noundef %99) #3
  br label %105

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.mdp4_kms, ptr %86, i32 0, i32 3
  br label %105

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %104, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %93) #3
  br label %142

105:                                              ; preds = %100, %94
  %106 = phi ptr [ %101, %100 ], [ %95, %94 ]
  %107 = phi i32 [ 794644, %100 ], [ 794652, %94 ]
  %108 = phi i32 [ 84281098, %100 ], [ 202182673, %94 ]
  %109 = phi i32 [ 794648, %100 ], [ 794656, %94 ]
  %110 = phi i32 [ 131844, %100 ], [ 592395, %94 ]
  %111 = phi i32 [ 794652, %100 ], [ 794660, %94 ]
  %112 = phi i32 [ 235868691, %100 ], [ 353900826, %94 ]
  %113 = phi i32 [ 794656, %100 ], [ 794664, %94 ]
  %114 = phi i32 [ 723981, %100 ], [ 1184532, %94 ]
  %115 = phi i32 [ 794660, %100 ], [ 794668, %94 ]
  %116 = phi i32 [ 387455258, %100 ], [ 253105947, %94 ]
  %117 = phi i32 [ 794664, %100 ], [ 794672, %94 ]
  %118 = phi i32 [ 1316118, %100 ], [ 395022, %94 ]
  %119 = phi i32 [ 67468, %100 ], [ 69508, %94 ]
  %120 = load ptr, ptr %106, align 8
  %121 = getelementptr i8, ptr %120, i32 %107
  tail call void @msm_writel(i32 noundef %108, ptr noundef %121) #3
  %122 = load ptr, ptr %106, align 8
  %123 = getelementptr i8, ptr %122, i32 %109
  tail call void @msm_writel(i32 noundef %110, ptr noundef %123) #3
  %124 = load ptr, ptr %106, align 8
  %125 = getelementptr i8, ptr %124, i32 %111
  tail call void @msm_writel(i32 noundef %112, ptr noundef %125) #3
  %126 = load ptr, ptr %106, align 8
  %127 = getelementptr i8, ptr %126, i32 %113
  tail call void @msm_writel(i32 noundef %114, ptr noundef %127) #3
  %128 = load ptr, ptr %106, align 8
  %129 = getelementptr i8, ptr %128, i32 %115
  tail call void @msm_writel(i32 noundef %116, ptr noundef %129) #3
  %130 = load ptr, ptr %106, align 8
  %131 = getelementptr i8, ptr %130, i32 %117
  tail call void @msm_writel(i32 noundef %118, ptr noundef %131) #3
  %132 = getelementptr inbounds %struct.mdp4_kms, ptr %86, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr i8, ptr %133, i32 798976
  tail call void @msm_writel(i32 noundef 64, ptr noundef %134) #3
  %135 = load ptr, ptr %132, align 8
  %136 = getelementptr i8, ptr %135, i32 794624
  tail call void @msm_writel(i32 noundef %119, ptr noundef %136) #3
  %137 = load ptr, ptr %132, align 8
  %138 = getelementptr i8, ptr %137, i32 798984
  tail call void @msm_writel(i32 noundef 48, ptr noundef %138) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748) #3
  %140 = load ptr, ptr %132, align 8
  %141 = getelementptr i8, ptr %140, i32 798976
  tail call void @msm_writel(i32 noundef 80, ptr noundef %141) #3
  br label %142

142:                                              ; preds = %105, %102, %81, %73
  %143 = getelementptr inbounds %struct.mdp4_kms, ptr %8, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr i8, ptr %144, i32 786432
  tail call void @msm_writel(i32 noundef 1, ptr noundef %145) #3
  store i8 1, ptr %9, align 4
  br label %146

146:                                              ; preds = %142, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_intf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155658621}
