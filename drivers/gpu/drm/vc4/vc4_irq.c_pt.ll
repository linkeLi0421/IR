; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.76, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.77, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.76 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.77 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.66, i64, i64, i32, %struct.kref, i32 }
%union.anon.66 = type { i64 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@render_wait = dso_local global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @render_wait, i64 4), ptr getelementptr (i8, ptr @render_wait, i64 4) } }, align 4
@vc4_irq_prepare.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&vc4->job_wait_queue\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't allocate binner overflow mem\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_irq_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.vc4_v3d, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 3) #2, !srcloc !9
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_irq_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.vc4_v3d, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 7) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.vc4_v3d, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 7) #2, !srcloc !9
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void @disable_irq(i32 noundef %15) #2
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #2
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_irq_install(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -2147483648
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @vc4_irq_prepare.__key) #2
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29
  store i32 -32, ptr %10, align 8
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29, i32 2
  store ptr @vc4_overflow_mem_work, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.vc4_v3d, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 7) #2, !srcloc !9
  br label %18

18:                                               ; preds = %8, %4
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @vc4_irq, ptr noundef null, i32 noundef 0, ptr noundef %22, ptr noundef %0) #2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !8
  tail call void @arm_heavy_mb() #2
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.vc4_v3d, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3) #2, !srcloc !9
  br label %33

33:                                               ; preds = %28, %25, %18, %2
  %34 = phi i32 [ -107, %2 ], [ %23, %18 ], [ 0, %25 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_irq(i32 noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_v3d, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.vc4_v3d, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #2, !srcloc !9
  %13 = and i32 %8, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.vc4_v3d, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 4) #2, !srcloc !9
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 29
  %21 = load ptr, ptr @system_wq, align 4
  %22 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %20) #2
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i32 [ 1, %15 ], [ 0, %2 ]
  %25 = and i32 %8, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %28) #2
  %29 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 16
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  %32 = getelementptr i8, ptr %30, i32 -60
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %27
  tail call void @vc4_move_job_to_render(ptr noundef %1, ptr noundef nonnull %32) #2
  %36 = load volatile ptr, ptr %29, align 4
  %37 = icmp eq ptr %36, %29
  %38 = getelementptr i8, ptr %36, i32 -60
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %36, i32 108
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %30, i32 108
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void @vc4_submit_next_bin_job(ptr noundef %1) #2
  br label %48

48:                                               ; preds = %47, %41, %35, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !18
  %49 = load i16, ptr %28, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !21
  br label %51

51:                                               ; preds = %48, %23
  %52 = phi i32 [ 1, %48 ], [ %24, %23 ]
  %53 = and i32 %8, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %56) #2
  tail call fastcc void @vc4_irq_finish_render_job(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !18
  %57 = load i16, ptr %56, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !21
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ 1, %55 ], [ %52, %51 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_irq_uninstall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.vc4_v3d, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 7) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.vc4_v3d, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 7) #2, !srcloc !9
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void @disable_irq(i32 noundef %15) #2
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 29
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #2
  br label %18

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_irq_reset(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 7) #2, !srcloc !9
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #2
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  %16 = getelementptr i8, ptr %14, i32 -60
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %14, i32 108
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @vc4_perfmon_stop(ptr noundef %0, ptr noundef nonnull %21, i1 noundef zeroext false) #2
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %14, ptr %29, align 4
  store ptr %13, ptr %14, align 4
  store ptr %30, ptr %25, align 4
  store volatile ptr %14, ptr %30, align 4
  tail call void @vc4_submit_next_bin_job(ptr noundef %0) #2
  br label %31

31:                                               ; preds = %24, %1
  tail call fastcc void @vc4_irq_finish_render_job(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_irq_finish_render_job(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -60
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %73, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 15
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 18
  %13 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 18, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %3, ptr %17, align 4
  store ptr %12, ptr %3, align 4
  store ptr %18, ptr %13, align 4
  store volatile ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  %22 = getelementptr i8, ptr %20, i32 -60
  %23 = select i1 %21, ptr null, ptr %22
  %24 = load volatile ptr, ptr %2, align 4
  %25 = icmp ne ptr %24, %2
  %26 = getelementptr i8, ptr %24, i32 -60
  %27 = getelementptr i8, ptr %3, i32 108
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = icmp ne ptr %26, null
  %31 = and i1 %25, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %8
  %34 = icmp eq ptr %23, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.vc4_exec_info, ptr %23, i32 0, i32 38
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, %28
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %33
  tail call void @vc4_perfmon_stop(ptr noundef %0, ptr noundef nonnull %28, i1 noundef zeroext true) #2
  br label %40

40:                                               ; preds = %39, %35, %8
  br i1 %31, label %41, label %42

41:                                               ; preds = %40
  tail call void @vc4_submit_next_render_job(ptr noundef %0) #2
  br label %50

42:                                               ; preds = %40
  %43 = icmp eq ptr %23, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.vc4_exec_info, ptr %23, i32 0, i32 38
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %27, align 8
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @vc4_submit_next_bin_job(ptr noundef %0) #2
  br label %50

50:                                               ; preds = %49, %44, %42, %41
  %51 = getelementptr i8, ptr %3, i32 -44
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @dma_fence_signal_locked(ptr noundef nonnull %52) #2
  %56 = load ptr, ptr %51, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dma_fence, ptr %56, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #2, !srcloc !25
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #2, !srcloc !26
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %67, label %65, !prof !27

65:                                               ; preds = %63
  tail call void @refcount_warn_saturate(ptr noundef %59, i32 noundef 3) #2
  br label %67

66:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !28
  tail call void @dma_fence_release(ptr noundef %59) #2
  br label %67

67:                                               ; preds = %66, %65, %63, %54
  store ptr null, ptr %51, align 8
  br label %68

68:                                               ; preds = %67, %50
  %69 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %69, i32 noundef 3, i32 noundef 0, ptr noundef null) #2
  %70 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 21
  %71 = load ptr, ptr @system_wq, align 4
  %72 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %70) #2
  br label %73

73:                                               ; preds = %68, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_overflow_mem_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 264
  tail call void @mutex_lock(ptr noundef %2) #2
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -1280
  %8 = tail call i32 @vc4_v3d_get_bin_slot(ptr noundef %7) #2
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #2
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -64
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #2
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %0, i32 -88
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  %21 = getelementptr i8, ptr %19, i32 -60
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %0, i32 -80
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 -76
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %17
  %34 = phi ptr [ %30, %28 ], [ %19, %17 ]
  %35 = getelementptr i8, ptr %34, i32 52
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, %15
  store i32 %37, ptr %35, align 8
  br label %43

38:                                               ; preds = %28, %24
  %39 = xor i32 %15, -1
  %40 = getelementptr i8, ptr %0, i32 -12
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %38, %33, %11
  %44 = shl nuw i32 1, %8
  store i32 %44, ptr %14, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !29
  tail call void @arm_heavy_mb() #2
  %45 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %4, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr i8, ptr %0, i32 -16
  %48 = load i32, ptr %47, align 8
  %49 = mul i32 %48, %8
  %50 = add i32 %49, %46
  %51 = getelementptr i8, ptr %0, i32 -260
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vc4_v3d, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %50) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !30
  tail call void @arm_heavy_mb() #2
  %56 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = load ptr, ptr %51, align 4
  %59 = getelementptr inbounds %struct.vc4_v3d, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  %62 = load ptr, ptr %51, align 4
  %63 = getelementptr inbounds %struct.vc4_v3d, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 4) #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !32
  tail call void @arm_heavy_mb() #2
  %66 = load ptr, ptr %51, align 4
  %67 = getelementptr inbounds %struct.vc4_v3d, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 4) #2, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #2
  br label %70

70:                                               ; preds = %43, %10, %1
  tail call void @mutex_unlock(ptr noundef %2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_move_job_to_render(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_submit_next_bin_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_stop(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_submit_next_render_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
!8 = !{i64 2155296110}
!9 = !{i64 5699005}
!10 = !{i64 2155297089}
!11 = !{i64 2155298136}
!12 = !{i64 2155295277}
!13 = !{i64 2155292211}
!14 = !{i64 5699423}
!15 = !{i64 2155292596}
!16 = !{i64 2155292851}
!17 = !{i64 2155293454}
!18 = !{i64 2149229047}
!19 = !{i64 2149224871}
!20 = !{i64 2149224946, i64 2149224973, i64 2149225020, i64 2149225042, i64 2149225070, i64 2149225090}
!21 = !{i64 2149252050}
!22 = !{i64 2155299198}
!23 = !{i64 2155300245}
!24 = !{i64 2148258998}
!25 = !{i64 592490, i64 2148094056, i64 2148094082, i64 2148094129, i64 2148094151, i64 2148094179, i64 2148094199}
!26 = !{i64 2148161133, i64 2148161165, i64 2148161194, i64 2148161228, i64 2148161259, i64 2148161282}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2149302962}
!29 = !{i64 2155290217}
!30 = !{i64 2155290726}
!31 = !{i64 2155291271}
!32 = !{i64 2155291834}
