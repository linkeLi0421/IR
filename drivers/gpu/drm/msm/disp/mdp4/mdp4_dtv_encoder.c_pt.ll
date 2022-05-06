; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_dtv_encoder = type { %struct.drm_encoder, ptr, ptr, i32, i8, i32 }
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

@mdp4_dtv_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @mdp4_dtv_encoder_destroy, ptr null, ptr null }, align 4
@mdp4_dtv_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dtv_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dtv_encoder_disable, ptr @mdp4_dtv_encoder_enable, ptr null }, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdmi_clk\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to get hdmi_clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tv_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"*ERROR* failed to get tv_clk\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pixclock=%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"setting mdp_clk=%lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to set mdp_clk to %lu: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to enabled mdp_clk: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to enable hdmi_clk: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_dtv_round_pixclk(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_round_rate(ptr noundef %4, i32 noundef %1) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_dtv_encoder_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 92) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @mdp4_dtv_encoder_funcs, i32 noundef 2, ptr noundef null) #3
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 11
  store ptr @mdp4_dtv_encoder_helper_funcs, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str) #3
  %11 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = load ptr, ptr %8, align 4
  br i1 %12, label %14, label %15

14:                                               ; preds = %5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %21

15:                                               ; preds = %5
  %16 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.3) #3
  %17 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %3, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #3
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %17, %19 ], [ %11, %14 ]
  %23 = load ptr, ptr %22, align 4
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %3) #3
  tail call void @kfree(ptr noundef nonnull %3) #3
  br label %24

24:                                               ; preds = %21, %15, %1
  %25 = phi ptr [ %3, %15 ], [ %23, %21 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #3
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_mode_set(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %40) #3
  %41 = load i32, ptr %2, align 4
  %42 = mul i32 %41, 1000
  %43 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %42) #3
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
  %83 = getelementptr i8, ptr %82, i32 851972
  tail call void @msm_writel(i32 noundef %80, ptr noundef %83) #3
  %84 = load ptr, ptr %81, align 8
  %85 = getelementptr i8, ptr %84, i32 851976
  tail call void @msm_writel(i32 noundef %60, ptr noundef %85) #3
  %86 = load ptr, ptr %81, align 8
  %87 = getelementptr i8, ptr %86, i32 851980
  tail call void @msm_writel(i32 noundef %66, ptr noundef %87) #3
  %88 = and i32 %54, 65535
  %89 = shl i32 %57, 16
  %90 = add i32 %89, -65536
  %91 = or i32 %90, %88
  %92 = load ptr, ptr %81, align 8
  %93 = getelementptr i8, ptr %92, i32 851992
  tail call void @msm_writel(i32 noundef %91, ptr noundef %93) #3
  %94 = load ptr, ptr %81, align 8
  %95 = getelementptr i8, ptr %94, i32 851996
  tail call void @msm_writel(i32 noundef %68, ptr noundef %95) #3
  %96 = load ptr, ptr %81, align 8
  %97 = getelementptr i8, ptr %96, i32 852000
  tail call void @msm_writel(i32 noundef %74, ptr noundef %97) #3
  %98 = load ptr, ptr %81, align 8
  %99 = getelementptr i8, ptr %98, i32 852032
  tail call void @msm_writel(i32 noundef 0, ptr noundef %99) #3
  %100 = load ptr, ptr %81, align 8
  %101 = getelementptr i8, ptr %100, i32 852036
  tail call void @msm_writel(i32 noundef -2147483393, ptr noundef %101) #3
  %102 = load ptr, ptr %81, align 8
  %103 = getelementptr i8, ptr %102, i32 852040
  tail call void @msm_writel(i32 noundef 0, ptr noundef %103) #3
  %104 = load ptr, ptr %81, align 8
  %105 = getelementptr i8, ptr %104, i32 852048
  tail call void @msm_writel(i32 noundef %49, ptr noundef %105) #3
  %106 = load ptr, ptr %81, align 8
  %107 = getelementptr i8, ptr %106, i32 852012
  tail call void @msm_writel(i32 noundef 0, ptr noundef %107) #3
  %108 = load ptr, ptr %81, align 8
  %109 = getelementptr i8, ptr %108, i32 852016
  tail call void @msm_writel(i32 noundef 0, ptr noundef %109) #3
  %110 = load ptr, ptr %81, align 8
  %111 = getelementptr i8, ptr %110, i32 852024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %111) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_disable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 102, i32 noundef 9, ptr noundef null) #3
  br label %19

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 851968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #3
  tail call void @mdp_irq_wait(ptr noundef %11, i32 noundef 512) #3
  %15 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #3
  tail call void @clk_unprepare(ptr noundef %16) #3
  %17 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #3
  tail call void @clk_unprepare(ptr noundef %18) #3
  store i8 0, ptr %2, align 4
  br label %19

19:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_enable(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 131, i32 noundef 9, ptr noundef null) #3
  br label %53

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @mdp4_crtc_set_config(ptr noundef %15, i32 noundef 8511) #3
  %16 = load ptr, ptr %14, align 4
  tail call void @mdp4_crtc_set_intf(ptr noundef %16, i32 noundef 0, i32 noundef 1) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %8) #3
  %17 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %8) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %8, i32 noundef %19) #3
  br label %24

24:                                               ; preds = %21, %13
  %25 = load ptr, ptr %17, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call i32 @clk_enable(ptr noundef %25) #3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #3
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %29, %31 ], [ %26, %24 ]
  %34 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef %33) #3
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_prepare(ptr noundef %38) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = tail call i32 @clk_enable(ptr noundef %38) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %38) #3
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %42, %44 ], [ %39, %36 ]
  %47 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %48, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %46) #3
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.mdp4_kms, ptr %6, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i32 851968
  tail call void @msm_writel(i32 noundef 1, ptr noundef %52) #3
  store i8 1, ptr %9, align 4
  br label %53

53:                                               ; preds = %49, %12
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
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_intf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

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
