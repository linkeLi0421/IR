; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mdp4_dsi_encoder = type { %struct.drm_encoder, ptr, i8 }

@mdp4_dsi_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @mdp4_dsi_encoder_destroy, ptr null, ptr null }, align 4
@mdp4_dsi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dsi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dsi_encoder_disable, ptr @mdp4_dsi_encoder_enable, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_dsi_encoder_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @mdp4_dsi_encoder_funcs, i32 noundef 6, ptr noundef null) #4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 11
  store ptr @mdp4_dsi_encoder_helper_funcs, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dsi_encoder_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dsi_encoder_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 31
  %10 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #4
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %40) #4
  %41 = load i32, ptr %39, align 4
  %42 = lshr i32 %41, 1
  %43 = and i32 %42, 1
  %44 = lshr i32 %41, 2
  %45 = and i32 %44, 2
  %46 = or i32 %45, %43
  %47 = load i16, ptr %21, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr %15, align 2
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %48, %50
  %52 = load i16, ptr %12, align 4
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = load i16, ptr %33, align 4
  %56 = zext i16 %55 to i32
  %57 = mul nuw i32 %56, %48
  %58 = load i16, ptr %30, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, ptr %27, align 4
  %61 = zext i16 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = mul i32 %62, %48
  %64 = sub nsw i32 %56, %61
  %65 = mul i32 %64, %48
  %66 = load i16, ptr %24, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %67, %61
  %69 = mul i32 %68, %48
  %70 = add i32 %57, -1
  %71 = add i32 %70, %69
  %72 = load i16, ptr %18, align 4
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %73, %50
  %75 = and i32 %74, 65535
  %76 = shl nuw i32 %48, 16
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.mdp4_kms, ptr %8, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %79, i32 917508
  tail call void @msm_writel(i32 noundef %77, ptr noundef %80) #4
  %81 = load ptr, ptr %78, align 8
  %82 = getelementptr i8, ptr %81, i32 917512
  tail call void @msm_writel(i32 noundef %57, ptr noundef %82) #4
  %83 = load ptr, ptr %78, align 8
  %84 = getelementptr i8, ptr %83, i32 917516
  tail call void @msm_writel(i32 noundef %63, ptr noundef %84) #4
  %85 = and i32 %51, 65535
  %86 = shl i32 %54, 16
  %87 = add i32 %86, -65536
  %88 = or i32 %87, %85
  %89 = load ptr, ptr %78, align 8
  %90 = getelementptr i8, ptr %89, i32 917520
  tail call void @msm_writel(i32 noundef %88, ptr noundef %90) #4
  %91 = load ptr, ptr %78, align 8
  %92 = getelementptr i8, ptr %91, i32 917524
  tail call void @msm_writel(i32 noundef %65, ptr noundef %92) #4
  %93 = load ptr, ptr %78, align 8
  %94 = getelementptr i8, ptr %93, i32 917528
  tail call void @msm_writel(i32 noundef %71, ptr noundef %94) #4
  %95 = load ptr, ptr %78, align 8
  %96 = getelementptr i8, ptr %95, i32 917560
  tail call void @msm_writel(i32 noundef %46, ptr noundef %96) #4
  %97 = load ptr, ptr %78, align 8
  %98 = getelementptr i8, ptr %97, i32 917548
  tail call void @msm_writel(i32 noundef -2147483393, ptr noundef %98) #4
  %99 = load ptr, ptr %78, align 8
  %100 = getelementptr i8, ptr %99, i32 917532
  tail call void @msm_writel(i32 noundef 0, ptr noundef %100) #4
  %101 = load ptr, ptr %78, align 8
  %102 = getelementptr i8, ptr %101, i32 917552
  tail call void @msm_writel(i32 noundef 0, ptr noundef %102) #4
  %103 = load ptr, ptr %78, align 8
  %104 = getelementptr i8, ptr %103, i32 917544
  tail call void @msm_writel(i32 noundef 0, ptr noundef %104) #4
  %105 = load ptr, ptr %78, align 8
  %106 = getelementptr i8, ptr %105, i32 917536
  tail call void @msm_writel(i32 noundef 0, ptr noundef %106) #4
  %107 = load ptr, ptr %78, align 8
  %108 = getelementptr i8, ptr %107, i32 917540
  tail call void @msm_writel(i32 noundef 0, ptr noundef %108) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dsi_encoder_disable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_dsi_encoder, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp4_kms, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 917504
  tail call void @msm_writel(i32 noundef 0, ptr noundef %13) #4
  tail call void @mdp_irq_wait(ptr noundef %10, i32 noundef 128) #4
  store i8 0, ptr %2, align 4
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_dsi_encoder_enable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_dsi_encoder, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  tail call void @mdp4_crtc_set_config(ptr noundef %12, i32 noundef 16785855) #4
  %13 = load ptr, ptr %11, align 4
  tail call void @mdp4_crtc_set_intf(ptr noundef %13, i32 noundef 1, i32 noundef 0) #4
  %14 = getelementptr inbounds %struct.mdp4_kms, ptr %10, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 917504
  tail call void @msm_writel(i32 noundef 1, ptr noundef %16) #4
  store i8 1, ptr %2, align 4
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_intf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
attributes #4 = { nounwind }

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
