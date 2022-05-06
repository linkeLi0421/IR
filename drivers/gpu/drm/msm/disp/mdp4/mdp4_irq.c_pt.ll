; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }

@mdp4_irq_error_handler.rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@mdp4_irq_error_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.mdp4_irq_error_handler = private unnamed_addr constant [23 x i8] c"mdp4_irq_error_handler\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"*ERROR* errors: %08x\0A\00", align 1
@dumpstate = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_set_irqmask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 88
  tail call void @msm_writel(i32 noundef %5, ptr noundef %8) #3
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 80
  tail call void @msm_writel(i32 noundef %1, ptr noundef %10) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_irq_preinstall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @mdp4_enable(ptr noundef %0) #3
  %3 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 88
  tail call void @msm_writel(i32 noundef -1, ptr noundef %5) #3
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #3
  %8 = tail call i32 @mdp4_disable(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_irq_postinstall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 9, i32 3
  store ptr @mdp4_irq_error_handler, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 9, i32 1
  store i32 1280, ptr %4, align 4
  tail call void @mdp_irq_register(ptr noundef %0, ptr noundef %2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_irq_error_handler(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = tail call i32 @___ratelimit(ptr noundef nonnull @mdp4_irq_error_handler._rs, ptr noundef nonnull @__func__.mdp4_irq_error_handler) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %1) #3
  br label %7

7:                                                ; preds = %6, %2
  %8 = load i8, ptr @dumpstate, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @___ratelimit(ptr noundef nonnull @mdp4_irq_error_handler.rs, ptr noundef nonnull @__func__.mdp4_irq_error_handler) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  %14 = getelementptr i8, ptr %0, i32 -32
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  store ptr @__drm_printfn_info, ptr %3, align 4, !alias.scope !9
  %18 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr null, ptr %18, align 4, !alias.scope !9
  %19 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %17, ptr %19, align 4, !alias.scope !9
  %20 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %20, align 4, !alias.scope !9
  call void @drm_state_dump(ptr noundef %15, ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  br label %21

21:                                               ; preds = %13, %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_irq_uninstall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @mdp4_enable(ptr noundef %0) #3
  %3 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %5) #3
  %6 = tail call i32 @mdp4_disable(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 80
  %9 = tail call i32 @msm_readl(ptr noundef %8) #3
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr i8, ptr %10, i32 84
  %12 = tail call i32 @msm_readl(ptr noundef %11) #3
  %13 = and i32 %12, %9
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %14, i32 88
  tail call void @msm_writel(i32 noundef %13, ptr noundef %15) #3
  tail call void @mdp_dispatch_irqs(ptr noundef %0, i32 noundef %13) #3
  %16 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 25
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %28, %1
  %20 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %21 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 26, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @mdp4_crtc_vblank(ptr noundef %22) #3
  %24 = and i32 %23, %13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %3, i32 noundef %20) #3
  br label %28

28:                                               ; preds = %26, %19
  %29 = add nuw i32 %20, 1
  %30 = load i32, ptr %16, align 8
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %19, label %32

32:                                               ; preds = %28, %1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_dispatch_irqs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_crtc_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_enable_vblank(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @mdp4_enable(ptr noundef %0) #3
  %4 = tail call i32 @mdp4_crtc_vblank(ptr noundef %1) #3
  tail call void @mdp_update_vblank_mask(ptr noundef %0, i32 noundef %4, i1 noundef zeroext true) #3
  %5 = tail call i32 @mdp4_disable(ptr noundef %0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_update_vblank_mask(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp4_disable_vblank(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @mdp4_enable(ptr noundef %0) #3
  %4 = tail call i32 @mdp4_crtc_vblank(ptr noundef %1) #3
  tail call void @mdp_update_vblank_mask(ptr noundef %0, i32 noundef %4, i1 noundef zeroext false) #3
  %5 = tail call i32 @mdp4_disable(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_state_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"drm_info_printer: argument 0"}
!11 = distinct !{!11, !"drm_info_printer"}
