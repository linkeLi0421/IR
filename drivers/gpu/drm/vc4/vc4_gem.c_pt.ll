; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.77 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vc4_get_hang_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }
%struct.vc4_hang_state = type { %struct.drm_vc4_get_hang_state, i32, ptr }
%struct.drm_vc4_get_hang_state_bo = type { i32, i32, i32, i32 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.71, i64, i64, i32, %struct.kref, i32 }
%union.anon.71 = type { i64 }
%struct.vc4_seqno_cb = type { %struct.work_struct, i64, ptr }
%struct.drm_vc4_wait_seqno = type { i64, i64 }
%struct.drm_vc4_wait_bo = type { i32, i32, i64 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.vc4_fence = type { %struct.dma_fence, ptr, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_vc4_gem_madvise = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"VC4_GET_HANG_STATE with no VC4 V3D probed\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"VC4_SUBMIT_CL with no VC4 V3D probed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown flags: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid pad: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"malloc failure on exec struct\0A\00", align 1
@vc4_gem_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&vc4->power_lock\00", align 1
@vc4_gem_init.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"&vc4->purgeable.lock\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"vc4_gem_destroy\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"madvise not supported on this BO\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"madvise not supported on imported BOs\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@__tracepoint_vc4_wait_for_seqno_begin = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_vc4_wait_for_seqno_end = external dso_local global %struct.tracepoint, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_gem.c\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"Rendering requires BOs to validate\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Failed to allocate validated BO pointers\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Failed to allocate incoming GEM handles\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Failed to copy in GEM handles\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Failed to look up GEM BO %d: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"overflow in exec arguments\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"Failed to allocate storage for copying in bin/render CLs.\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Couldn't allocate BO for binning\0A\00", align 1
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@vc4_fence_ops = external dso_local constant %struct.dma_fence_ops, align 4
@vc4_save_hang_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"\016[drm] Resetting GPU.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_get_hang_state_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #11
  br label %136

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br label %136

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %13, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 %20, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br label %136

23:                                               ; preds = %16
  store ptr null, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  %24 = load i64, ptr %1, align 8
  store i64 %24, ptr %13, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(160) %13, i32 160, i1 false)
  %25 = load i32, ptr %19, align 8
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 16) #11
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %111, label %28, !prof !8

28:                                               ; preds = %23
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %102, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %19, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, ptr %1, align 8
  %37 = trunc i64 %36 to i32
  br label %71

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.vc4_hang_state, ptr %13, i32 0, i32 2
  br label %40

40:                                               ; preds = %49, %38
  %41 = phi i32 [ 0, %38 ], [ %58, %49 ]
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr ptr, ptr %42, i32 %41
  %44 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %45 = load ptr, ptr %43, align 4
  %46 = call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef %45, ptr noundef nonnull %4) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 %41, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %90

49:                                               ; preds = %40
  %50 = load i32, ptr %4, align 4
  %51 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %30, i32 %41
  store i32 %50, ptr %51, align 16
  %52 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %44, i32 0, i32 1
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %30, i32 %41, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_gem_object, ptr %44, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %30, i32 %41, i32 2
  store i32 %56, ptr %57, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %58 = add nuw i32 %41, 1
  %59 = load i32, ptr %19, align 8
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %40, label %61

61:                                               ; preds = %49
  %62 = shl i32 %59, 4
  %63 = icmp slt i32 %62, 0
  %64 = load i1, ptr @check_copy_size.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %61
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %88

68:                                               ; preds = %61
  %69 = load i64, ptr %1, align 8
  %70 = trunc i64 %69 to i32
  br i1 %63, label %88, label %71, !prof !8

71:                                               ; preds = %68, %35
  %72 = phi i32 [ %37, %35 ], [ %70, %68 ]
  %73 = phi i32 [ 0, %35 ], [ %62, %68 ]
  %74 = inttoptr i32 %72 to ptr
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 %73, i32 -1090519040) #13, !srcloc !10
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = tail call ptr @llvm.thread.pointer() #11
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %80) #14, !srcloc !11
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %84 = call i32 @arm_copy_to_user(ptr noundef %74, ptr noundef nonnull %30, i32 noundef %73) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #11, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %85

85:                                               ; preds = %78, %71
  %86 = phi i32 [ %84, %78 ], [ %73, %71 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %85, %68, %67
  %89 = load i32, ptr %19, align 8
  br label %90

90:                                               ; preds = %88, %48
  %91 = phi i32 [ %89, %88 ], [ %41, %48 ]
  %92 = phi i32 [ -14, %88 ], [ %46, %48 ]
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %133, label %94

94:                                               ; preds = %94, %90
  %95 = phi i32 [ %99, %94 ], [ 0, %90 ]
  %96 = getelementptr %struct.drm_vc4_get_hang_state_bo, ptr %30, i32 %95
  %97 = load i32, ptr %96, align 16
  %98 = call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %97) #11
  %99 = add nuw i32 %95, 1
  %100 = load i32, ptr %19, align 8
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %94, label %106

102:                                              ; preds = %85, %28
  %103 = phi ptr [ null, %28 ], [ %30, %85 ]
  %104 = phi i32 [ -12, %28 ], [ 0, %85 ]
  %105 = load i32, ptr %19, align 8
  br label %106

106:                                              ; preds = %102, %94
  %107 = phi i32 [ %105, %102 ], [ %100, %94 ]
  %108 = phi ptr [ %103, %102 ], [ %30, %94 ]
  %109 = phi i32 [ %104, %102 ], [ %92, %94 ]
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %106, %23
  %112 = phi i32 [ %109, %106 ], [ -12, %23 ]
  %113 = phi ptr [ %108, %106 ], [ null, %23 ]
  %114 = getelementptr inbounds %struct.vc4_hang_state, ptr %13, i32 0, i32 2
  br label %115

115:                                              ; preds = %129, %111
  %116 = phi i32 [ 0, %111 ], [ %130, %129 ]
  %117 = load ptr, ptr %114, align 4
  %118 = getelementptr ptr, ptr %117, i32 %116
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %115
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %119) #11, !srcloc !15
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %119, ptr nonnull %119, i32 1, ptr nonnull elementtype(i32) %119) #11, !srcloc !16
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = icmp sgt i32 %123, 0
  br i1 %126, label %129, label %127, !prof !17

127:                                              ; preds = %125
  call void @refcount_warn_saturate(ptr noundef nonnull %119, i32 noundef 3) #11
  br label %129

128:                                              ; preds = %121
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void @drm_gem_object_free(ptr noundef nonnull %119) #11, !callees !19
  br label %129

129:                                              ; preds = %128, %127, %125, %115
  %130 = add nuw i32 %116, 1
  %131 = load i32, ptr %19, align 8
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %115, label %133

133:                                              ; preds = %129, %106, %90
  %134 = phi i32 [ %109, %106 ], [ %92, %90 ], [ %112, %129 ]
  %135 = phi ptr [ %108, %106 ], [ %30, %90 ], [ %113, %129 ]
  call void @kfree(ptr noundef nonnull %13) #11
  call void @kfree(ptr noundef %135) #11
  br label %136

136:                                              ; preds = %133, %22, %15, %8
  %137 = phi i32 [ 0, %22 ], [ %134, %133 ], [ -2, %15 ], [ -19, %8 ]
  ret i32 %137
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_for_seqno(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 15
  %12 = load i64, ptr %11, align 8
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %77

14:                                               ; preds = %4
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %14
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = call i32 @nsecs_to_jiffies(i64 noundef %2) #11
  %19 = add i32 %18, %17
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_begin, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %33 = call i32 @__traceiter_vc4_wait_for_seqno_begin(ptr noundef null, ptr noundef %0, i64 noundef %1, i64 noundef %2) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %34

34:                                               ; preds = %32, %22, %16
  %35 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 20
  %36 = select i1 %3, i32 1, i32 2
  %37 = icmp eq i64 %2, -1
  br label %38

38:                                               ; preds = %60, %34
  call void @prepare_to_wait(ptr noundef %35, ptr noundef nonnull %5, i32 noundef %36) #11
  br i1 %3, label %39, label %47

39:                                               ; preds = %38
  %40 = load volatile i32, ptr %7, align 4
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61, !prof !17

43:                                               ; preds = %39
  %44 = load volatile i32, ptr %7, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43, %38
  %48 = load i64, ptr %11, align 8
  %49 = icmp ult i64 %48, %1
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  br i1 %37, label %59, label %51

51:                                               ; preds = %50
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = sub i32 %52, %19
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = sub i32 %19, %56
  %58 = call i32 @schedule_timeout(i32 noundef %57) #11
  br label %60

59:                                               ; preds = %50
  call void @schedule() #11
  br label %60

60:                                               ; preds = %59, %55
  br label %38

61:                                               ; preds = %51, %47, %43, %39
  %62 = phi i32 [ 0, %47 ], [ -512, %43 ], [ -62, %51 ], [ -512, %39 ]
  call void @finish_wait(ptr noundef %35, ptr noundef nonnull %5) #11
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_end, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %76 = call i32 @__traceiter_vc4_wait_for_seqno_end(ptr noundef null, ptr noundef %0, i64 noundef %1) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %77

77:                                               ; preds = %75, %65, %61, %14, %4
  %78 = phi i32 [ 0, %4 ], [ -62, %14 ], [ %62, %61 ], [ %62, %65 ], [ %62, %75 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %78
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_submit_next_bin_job(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 22
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17, i32 1
  br label %7

7:                                                ; preds = %59, %1
  %8 = load volatile ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, %2
  %10 = getelementptr i8, ptr %8, i32 -60
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %64, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.vc4_v3d, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 4) #11, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.vc4_v3d, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 252645135) #11, !srcloc !25
  %22 = getelementptr i8, ptr %8, i32 108
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @vc4_perfmon_start(ptr noundef %0, ptr noundef nonnull %23) #11
  br label %29

29:                                               ; preds = %28, %25, %13
  %30 = getelementptr i8, ptr %8, i32 56
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %8, i32 60
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.vc4_v3d, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %31) #11, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.vc4_v3d, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %33) #11, !srcloc !25
  br label %64

44:                                               ; preds = %29
  %45 = load volatile ptr, ptr %5, align 4
  %46 = icmp eq ptr %45, %5
  %47 = getelementptr i8, ptr %8, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  %51 = load ptr, ptr %6, align 4
  store ptr %8, ptr %6, align 4
  store ptr %5, ptr %8, align 4
  store ptr %51, ptr %47, align 4
  store volatile ptr %8, ptr %51, align 4
  br i1 %46, label %52, label %53

52:                                               ; preds = %44
  tail call void @vc4_submit_next_render_job(ptr noundef %0) #11
  br label %53

53:                                               ; preds = %52, %44
  %54 = load volatile ptr, ptr %2, align 4
  %55 = icmp eq ptr %54, %2
  %56 = getelementptr i8, ptr %54, i32 -60
  %57 = icmp eq ptr %56, null
  %58 = or i1 %55, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %54, i32 108
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %22, align 8
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %7, label %64

64:                                               ; preds = %59, %53, %35, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_move_job_to_render(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 10
  %7 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 10, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %6, ptr %11, align 4
  store ptr %3, ptr %6, align 4
  store ptr %12, ptr %7, align 4
  store volatile ptr %6, ptr %12, align 4
  br i1 %5, label %13, label %14

13:                                               ; preds = %2
  tail call void @vc4_submit_next_render_job(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_submit_next_render_job(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -60
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !29
  tail call void @arm_heavy_mb() #11
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vc4_v3d, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4) #11, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.vc4_v3d, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 252641280) #11, !srcloc !25
  %18 = getelementptr i8, ptr %3, i32 64
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %3, i32 68
  %21 = load i32, ptr %20, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.vc4_v3d, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %19) #11, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.vc4_v3d, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %21) #11, !srcloc !25
  br label %30

30:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_job_handle_completed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 18
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %18, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %16, %7 ], [ %5, %1 ]
  %9 = phi i32 [ %15, %7 ], [ %3, %1 ]
  %10 = getelementptr i8, ptr %8, i32 -60
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %9) #11
  tail call fastcc void @vc4_complete_exec(ptr noundef %0, ptr noundef %10)
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %16 = load volatile ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %18, label %7

18:                                               ; preds = %7, %1
  %19 = phi i32 [ %3, %1 ], [ %15, %7 ]
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 23
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 15
  br label %25

25:                                               ; preds = %39, %23
  %26 = phi ptr [ %21, %23 ], [ %27, %39 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %26, i32 12
  %29 = load i64, ptr %28, align 8
  %30 = load i64, ptr %24, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %26, i32 -4
  %34 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %27, ptr %35, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %34, align 4
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %33) #11
  br label %39

39:                                               ; preds = %32, %25
  %40 = icmp eq ptr %27, %20
  br i1 %40, label %41, label %25

41:                                               ; preds = %39, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %19) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_complete_exec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @dma_fence_signal(ptr noundef nonnull %4) #11
  %8 = load ptr, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #11, !srcloc !15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #11, !srcloc !16
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !17

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #11
  br label %19

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %11) #11, !callees !19
  br label %19

19:                                               ; preds = %18, %17, %15, %6, %2
  %20 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %44, %23
  %28 = phi ptr [ %48, %44 ], [ %21, %23 ]
  %29 = phi i32 [ %45, %44 ], [ 0, %23 ]
  %30 = getelementptr ptr, ptr %28, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @vc4_bo_dec_usecnt(ptr noundef %31) #11
  %32 = load ptr, ptr %20, align 8
  %33 = getelementptr ptr, ptr %32, i32 %29
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %34) #11, !srcloc !15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %34, ptr nonnull %34, i32 1, ptr nonnull elementtype(i32) %34) #11, !srcloc !16
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !17

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef nonnull %34, i32 noundef 3) #11
  br label %44

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %34) #11, !callees !19
  br label %44

44:                                               ; preds = %43, %42, %40, %27
  %45 = add nuw i32 %29, 1
  %46 = load i32, ptr %24, align 4
  %47 = icmp ult i32 %45, %46
  %48 = load ptr, ptr %20, align 8
  br i1 %47, label %27, label %49

49:                                               ; preds = %44, %23
  %50 = phi ptr [ %21, %23 ], [ %48, %44 ]
  tail call void @kvfree(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %49, %19
  %52 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %74, label %55

55:                                               ; preds = %71, %51
  %56 = phi ptr [ %72, %71 ], [ %53, %51 ]
  %57 = getelementptr i8, ptr %56, i32 -244
  %58 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = icmp eq ptr %57, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %57) #11, !srcloc !15
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #11, !srcloc !16
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %71, label %69, !prof !17

69:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef nonnull %57, i32 noundef 3) #11
  br label %71

70:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %57) #11, !callees !19
  br label %71

71:                                               ; preds = %70, %69, %67, %55
  %72 = load volatile ptr, ptr %52, align 4
  %73 = icmp eq ptr %72, %52
  br i1 %73, label %74, label %55

74:                                               ; preds = %71, %51
  %75 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #11
  %77 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 24
  %78 = load i32, ptr %77, align 8
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 26
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, %79
  store i32 %82, ptr %80, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #11
  %83 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 39
  %84 = load i8, ptr %83, align 4, !range !31
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %74
  tail call void @vc4_v3d_bin_bo_put(ptr noundef %0) #11
  br label %87

87:                                               ; preds = %86, %74
  %88 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 38
  %89 = load ptr, ptr %88, align 8
  tail call void @vc4_perfmon_put(ptr noundef %89) #11
  tail call void @vc4_v3d_pm_put(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_queue_seqno_cb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vc4_seqno_cb, ptr %1, i32 0, i32 2
  store ptr %3, ptr %5, align 8
  store i32 -32, ptr %1, align 8
  %6 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.work_struct, ptr %1, i32 0, i32 2
  store ptr @vc4_seqno_cb_work, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 15
  %12 = load i64, ptr %11, align 8
  %13 = icmp ult i64 %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.vc4_seqno_cb, ptr %1, i32 0, i32 1
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 23
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 23, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %6, ptr %17, align 4
  store ptr %16, ptr %6, align 4
  store ptr %18, ptr %7, align 4
  store volatile ptr %6, ptr %18, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %1) #11
  br label %22

22:                                               ; preds = %19, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_seqno_cb_work(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_seqno_cb, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_seqno_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds %struct.drm_vc4_wait_seqno, ptr %1, i32 0, i32 1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = load i64, ptr %5, align 8
  %8 = tail call i32 @vc4_wait_for_seqno(ptr noundef %0, i64 noundef %4, i64 noundef %7, i1 noundef zeroext true) #11
  switch i32 %8, label %22 [
    i32 -4, label %9
    i32 -512, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = load i64, ptr %5, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %13, %6
  %15 = tail call i32 @jiffies_to_usecs(i32 noundef %14) #11
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 1000
  %18 = load i64, ptr %5, align 8
  %19 = icmp ult i64 %18, %17
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = sub i64 %18, %17
  store i64 %21, ptr %5, align 8
  br label %22

22:                                               ; preds = %20, %12, %9, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_wait_bo_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_wait_bo, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %12) #11
  br label %41

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vc4_bo, ptr %9, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_vc4_wait_bo, ptr %1, i32 0, i32 2
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = load i64, ptr %16, align 8
  %19 = tail call i32 @vc4_wait_for_seqno(ptr noundef %0, i64 noundef %15, i64 noundef %18, i1 noundef zeroext true) #11
  switch i32 %19, label %33 [
    i32 -4, label %20
    i32 -512, label %20
  ]

20:                                               ; preds = %13, %13
  %21 = load i64, ptr %16, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = sub i32 %24, %17
  %26 = tail call i32 @jiffies_to_usecs(i32 noundef %25) #11
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 1000
  %29 = load i64, ptr %16, align 8
  %30 = icmp ult i64 %29, %28
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = sub i64 %29, %28
  store i64 %32, ptr %16, align 8
  br label %33

33:                                               ; preds = %31, %23, %20, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #11, !srcloc !15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #11, !srcloc !16
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !17

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #11
  br label %41

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #11, !callees !19
  br label %41

41:                                               ; preds = %40, %39, %37, %11, %3
  %42 = phi i32 [ -22, %11 ], [ -22, %3 ], [ %19, %37 ], [ %19, %39 ], [ %19, %40 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_submit_cl_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ww_acquire_ctx, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #11
  br label %246

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %14) #11
  br label %246

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 30
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %19) #11
  br label %246

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 176) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #11
  br label %246

27:                                               ; preds = %22
  %28 = tail call i32 @vc4_v3d_pm_get(ptr noundef %0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %24) #11
  br label %246

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 5
  store ptr %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 11
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 11, i32 1
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 7
  store i32 %36, ptr %37, align 4
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #11
  br label %244

40:                                               ; preds = %31
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4) #11
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %45, !prof !8

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 6
  store ptr null, ptr %44, align 8
  br label %50

45:                                               ; preds = %40
  %46 = extractvalue { i32, i1 } %41, 0
  %47 = tail call noalias ptr @kvmalloc_node(i32 noundef %46, i32 noundef 3520, i32 noundef -1) #12
  %48 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 6
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %43
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #11
  br label %244

51:                                               ; preds = %45
  %52 = load i32, ptr %37, align 4
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #11
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %172, label %55, !prof !8

55:                                               ; preds = %51
  %56 = extractvalue { i32, i1 } %53, 0
  %57 = tail call noalias ptr @kvmalloc_node(i32 noundef %56, i32 noundef 3264, i32 noundef -1) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %172, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 3
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %37, align 4
  %65 = shl i32 %64, 2
  %66 = icmp slt i32 %65, 0
  %67 = load i1, ptr @check_copy_size.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %59
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %71

71:                                               ; preds = %70, %59
  br i1 %66, label %172, label %72, !prof !8

72:                                               ; preds = %71
  %73 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %65, i32 -1090519040) #13, !srcloc !32
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83, !prof !17

76:                                               ; preds = %72
  %77 = tail call ptr @llvm.thread.pointer() #11
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #14, !srcloc !11
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %82 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %57, ptr noundef %63, i32 noundef %65) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %83

83:                                               ; preds = %76, %72
  %84 = phi i32 [ %82, %76 ], [ %65, %72 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86, !prof !17

86:                                               ; preds = %83
  %87 = sub i32 %65, %84
  %88 = getelementptr i8, ptr %57, i32 %87
  tail call void @llvm.memset.p0.i32(ptr align 1 %88, i8 0, i32 %84, i1 false) #11
  br label %172

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %90) #11
  %91 = load i32, ptr %37, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 14
  br label %95

95:                                               ; preds = %114, %93
  %96 = phi i32 [ 0, %93 ], [ %117, %114 ]
  %97 = getelementptr i32, ptr %57, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = tail call ptr @idr_find(ptr noundef %94, i32 noundef %98) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %99) #11, !srcloc !15
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %99, ptr nonnull %99, i32 1, ptr nonnull elementtype(i32) %99) #11, !srcloc !33
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105, !prof !8

105:                                              ; preds = %101
  %106 = add i32 %103, 1
  %107 = or i32 %106, %103
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %114, label %109, !prof !17

109:                                              ; preds = %105, %101
  %110 = phi i32 [ 2, %101 ], [ 1, %105 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %99, i32 noundef %110) #11
  br label %114

111:                                              ; preds = %95
  %112 = getelementptr i32, ptr %57, i32 %96
  %113 = load i32, ptr %112, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %96, i32 noundef %113) #11
  br label %120

114:                                              ; preds = %109, %105
  %115 = load ptr, ptr %48, align 8
  %116 = getelementptr ptr, ptr %115, i32 %96
  store ptr %99, ptr %116, align 4
  %117 = add nuw i32 %96, 1
  %118 = load i32, ptr %37, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %95, label %120

120:                                              ; preds = %114, %111, %89
  %121 = phi i1 [ true, %111 ], [ false, %89 ], [ false, %114 ]
  %122 = phi i32 [ -22, %111 ], [ 0, %89 ], [ 0, %114 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !34
  %123 = load i16, ptr %90, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %90, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  br i1 %121, label %150, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %37, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %138, %125
  %129 = phi i32 [ %139, %138 ], [ 0, %125 ]
  %130 = load ptr, ptr %48, align 8
  %131 = getelementptr ptr, ptr %130, i32 %129
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %132) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = add i32 %129, -1
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %143, label %150

138:                                              ; preds = %128
  %139 = add nuw i32 %129, 1
  %140 = load i32, ptr %37, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %128, label %142

142:                                              ; preds = %138, %125
  tail call void @kvfree(ptr noundef nonnull %57) #11
  br label %181

143:                                              ; preds = %143, %135
  %144 = phi i32 [ %148, %143 ], [ %136, %135 ]
  %145 = load ptr, ptr %48, align 8
  %146 = getelementptr ptr, ptr %145, i32 %144
  %147 = load ptr, ptr %146, align 4
  tail call void @vc4_bo_dec_usecnt(ptr noundef %147) #11
  %148 = add nsw i32 %144, -1
  %149 = icmp eq i32 %144, 0
  br i1 %149, label %150, label %143

150:                                              ; preds = %143, %135, %120
  %151 = phi i32 [ %122, %120 ], [ %133, %135 ], [ %133, %143 ]
  %152 = load i32, ptr %37, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %168, %150
  %155 = phi i32 [ %169, %168 ], [ 0, %150 ]
  %156 = load ptr, ptr %48, align 8
  %157 = getelementptr ptr, ptr %156, i32 %155
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %176, label %160

160:                                              ; preds = %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %158) #11, !srcloc !15
  %161 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %158, ptr nonnull %158, i32 1, ptr nonnull elementtype(i32) %158) #11, !srcloc !16
  %162 = extractvalue { i32, i32, i32 } %161, 0
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = icmp sgt i32 %162, 0
  br i1 %165, label %168, label %166, !prof !17

166:                                              ; preds = %164
  tail call void @refcount_warn_saturate(ptr noundef nonnull %158, i32 noundef 3) #11
  br label %168

167:                                              ; preds = %160
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %158) #11, !callees !19
  br label %168

168:                                              ; preds = %167, %166, %164
  %169 = add nuw i32 %155, 1
  %170 = load i32, ptr %37, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %154, label %176

172:                                              ; preds = %86, %71, %55, %51
  %173 = phi ptr [ @.str.18, %51 ], [ @.str.18, %55 ], [ @.str.19, %71 ], [ @.str.19, %86 ]
  %174 = phi ptr [ null, %51 ], [ null, %55 ], [ %57, %71 ], [ %57, %86 ]
  %175 = phi i32 [ -12, %51 ], [ -12, %55 ], [ -14, %71 ], [ -14, %86 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %173) #11
  br label %176

176:                                              ; preds = %172, %168, %154, %150
  %177 = phi ptr [ %57, %150 ], [ %174, %172 ], [ %57, %168 ], [ %57, %154 ]
  %178 = phi i32 [ %151, %150 ], [ %175, %172 ], [ %151, %168 ], [ %151, %154 ]
  tail call void @kvfree(ptr noundef %177) #11
  %179 = load ptr, ptr %48, align 8
  tail call void @kvfree(ptr noundef %179) #11
  store ptr null, ptr %48, align 8
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %181, label %244

181:                                              ; preds = %176, %142
  %182 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 27
  %183 = load i32, ptr %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = tail call ptr @vc4_perfmon_find(ptr noundef %7, i32 noundef %183) #11
  %187 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 38
  store ptr %186, ptr %187, align 8
  %188 = icmp eq ptr %186, null
  br i1 %188, label %244, label %189

189:                                              ; preds = %185, %181
  %190 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 28
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %209, label %193

193:                                              ; preds = %189
  %194 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %191, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %5) #11
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %244

196:                                              ; preds = %193
  %197 = load ptr, ptr %5, align 4
  %198 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 13
  %199 = load i64, ptr %198, align 8
  %200 = call zeroext i1 @dma_fence_match_context(ptr noundef %197, i64 noundef %199) #11
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = load ptr, ptr %5, align 4
  %203 = call i32 @dma_fence_wait_timeout(ptr noundef %202, i1 noundef zeroext true, i32 noundef 2147483647) #11
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr %5, align 4
  call fastcc void @dma_fence_put(ptr noundef %206)
  br label %244

207:                                              ; preds = %201, %196
  %208 = load ptr, ptr %5, align 4
  call fastcc void @dma_fence_put(ptr noundef %208)
  br label %209

209:                                              ; preds = %207, %189
  %210 = load ptr, ptr %32, align 4
  %211 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %210, i32 0, i32 4
  %212 = load i32, ptr %211, align 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = call fastcc i32 @vc4_get_bcl(ptr noundef %0, ptr noundef nonnull %24)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %244

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 25
  store i32 0, ptr %218, align 4
  %219 = getelementptr inbounds %struct.vc4_exec_info, ptr %24, i32 0, i32 26
  store i32 0, ptr %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = call i32 @vc4_get_rcl(ptr noundef %0, ptr noundef nonnull %24) #11
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %220
  %224 = call fastcc i32 @vc4_lock_bo_reservations(ptr noundef nonnull %24, ptr noundef nonnull %4)
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 29
  %228 = load i32, ptr %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  store ptr null, ptr %32, align 4
  %231 = call fastcc i32 @vc4_queue_submit(ptr noundef %0, ptr noundef nonnull %24, ptr noundef null)
  br label %237

232:                                              ; preds = %226
  %233 = call ptr @drm_syncobj_find(ptr noundef %2, i32 noundef %228) #11
  %234 = icmp eq ptr %233, null
  br i1 %234, label %244, label %235

235:                                              ; preds = %232
  store ptr null, ptr %32, align 4
  %236 = call fastcc i32 @vc4_queue_submit(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %233)
  call fastcc void @drm_syncobj_put(ptr noundef nonnull %233)
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi i32 [ %231, %230 ], [ %236, %235 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 14
  %242 = load i64, ptr %241, align 8
  %243 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 26
  store i64 %242, ptr %243, align 8
  br label %246

244:                                              ; preds = %237, %232, %223, %220, %214, %205, %193, %185, %176, %50, %39
  %245 = phi i32 [ %178, %176 ], [ %194, %193 ], [ %215, %214 ], [ %221, %220 ], [ %224, %223 ], [ %238, %237 ], [ %203, %205 ], [ -2, %185 ], [ -22, %232 ], [ -22, %39 ], [ -12, %50 ]
  call fastcc void @vc4_complete_exec(ptr noundef %0, ptr noundef nonnull %24)
  br label %246

246:                                              ; preds = %244, %240, %30, %26, %21, %16, %11
  %247 = phi i32 [ -22, %16 ], [ -22, %21 ], [ %28, %30 ], [ %245, %244 ], [ 0, %240 ], [ -12, %26 ], [ -19, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %247
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_perfmon_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_match_context(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !16
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !17

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #11
  br label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %4) #11, !callees !19
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_get_bcl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 15
  %8 = and i32 %7, -16
  %9 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %8, %10
  %12 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %16, 3
  %18 = add i32 %14, %17
  %19 = icmp ult i32 %8, %6
  %20 = icmp ult i32 %11, %8
  %21 = select i1 %19, i1 true, i1 %20
  %22 = icmp ult i32 %14, %11
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp ugt i32 %16, 536870910
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp ult i32 %18, %14
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #11
  br label %181

29:                                               ; preds = %2
  %30 = tail call noalias ptr @kvmalloc_node(i32 noundef %18, i32 noundef 3264, i32 noundef -1) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #11
  br label %181

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %30, i32 %8
  %35 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 30
  store ptr %34, ptr %35, align 8
  %36 = getelementptr i8, ptr %30, i32 %11
  %37 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 34
  store ptr %36, ptr %37, align 8
  %38 = getelementptr i8, ptr %30, i32 %14
  %39 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 14
  store ptr %38, ptr %39, align 8
  %40 = load i32, ptr %15, align 8
  %41 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 15
  store i32 %40, ptr %41, align 4
  %42 = load i64, ptr %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %5, align 8
  %46 = icmp slt i32 %45, 0
  %47 = load i1, ptr @check_copy_size.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %33
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %51

51:                                               ; preds = %50, %33
  br i1 %46, label %181, label %52, !prof !8

52:                                               ; preds = %51
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 %45, i32 -1090519040) #13, !srcloc !32
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63, !prof !17

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #11
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #14, !srcloc !11
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %62 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %30, ptr noundef %44, i32 noundef %45) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i32 [ %62, %56 ], [ %45, %52 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66, !prof !17

66:                                               ; preds = %63
  %67 = sub i32 %45, %64
  %68 = getelementptr i8, ptr %30, i32 %67
  tail call void @llvm.memset.p0.i32(ptr align 1 %68, i8 0, i32 %64, i1 false) #11
  br label %181

69:                                               ; preds = %63
  %70 = load ptr, ptr %35, align 8
  %71 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %9, align 4
  %76 = icmp slt i32 %75, 0
  %77 = load i1, ptr @check_copy_size.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !8

80:                                               ; preds = %69
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %81

81:                                               ; preds = %80, %69
  br i1 %76, label %181, label %82, !prof !8

82:                                               ; preds = %81
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 %75, i32 -1090519040) #13, !srcloc !32
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93, !prof !17

86:                                               ; preds = %82
  %87 = tail call ptr @llvm.thread.pointer() #11
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !11
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %92 = tail call i32 @arm_copy_from_user(ptr noundef %70, ptr noundef %74, i32 noundef %75) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i32 [ %92, %86 ], [ %75, %82 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96, !prof !17

96:                                               ; preds = %93
  %97 = sub i32 %75, %94
  %98 = getelementptr i8, ptr %70, i32 %97
  tail call void @llvm.memset.p0.i32(ptr align 1 %98, i8 0, i32 %94, i1 false) #11
  br label %181

99:                                               ; preds = %93
  %100 = load ptr, ptr %37, align 8
  %101 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %4, i32 0, i32 2
  %102 = load i64, ptr %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = inttoptr i32 %103 to ptr
  %105 = load i32, ptr %12, align 4
  %106 = icmp slt i32 %105, 0
  %107 = load i1, ptr @check_copy_size.__already_done, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111, !prof !8

110:                                              ; preds = %99
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %111

111:                                              ; preds = %110, %99
  br i1 %106, label %181, label %112, !prof !8

112:                                              ; preds = %111
  %113 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %104, i32 %105, i32 -1090519040) #13, !srcloc !32
  %114 = extractvalue { i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123, !prof !17

116:                                              ; preds = %112
  %117 = tail call ptr @llvm.thread.pointer() #11
  %118 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %119 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %118) #14, !srcloc !11
  %120 = and i32 %119, -13
  %121 = or i32 %120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %122 = tail call i32 @arm_copy_from_user(ptr noundef %100, ptr noundef %104, i32 noundef %105) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %123

123:                                              ; preds = %116, %112
  %124 = phi i32 [ %122, %116 ], [ %105, %112 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126, !prof !17

126:                                              ; preds = %123
  %127 = sub i32 %105, %124
  %128 = getelementptr i8, ptr %100, i32 %127
  tail call void @llvm.memset.p0.i32(ptr align 1 %128, i8 0, i32 %124, i1 false) #11
  br label %181

129:                                              ; preds = %123
  %130 = tail call ptr @vc4_bo_create(ptr noundef %0, i32 noundef %14, i1 noundef zeroext true, i32 noundef 6) #11
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #11
  %133 = ptrtoint ptr %130 to i32
  br label %181

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 13
  store ptr %130, ptr %135, align 4
  %136 = getelementptr inbounds %struct.vc4_bo, ptr %130, i32 0, i32 4
  %137 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11
  %138 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11, i32 1
  %139 = load ptr, ptr %138, align 4
  store ptr %136, ptr %138, align 4
  store ptr %137, ptr %136, align 4
  %140 = getelementptr inbounds %struct.vc4_bo, ptr %130, i32 0, i32 4, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %136, ptr %139, align 4
  %141 = load ptr, ptr %135, align 4
  %142 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 8
  %144 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 25
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 29
  store ptr %30, ptr %145, align 4
  %146 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %141, i32 0, i32 3
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr i8, ptr %147, i32 %8
  %149 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 31
  store ptr %148, ptr %149, align 4
  %150 = load i32, ptr %142, align 8
  %151 = add i32 %150, %8
  %152 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 32
  store i32 %151, ptr %152, align 8
  %153 = load i32, ptr %9, align 4
  %154 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 33
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %146, align 8
  %156 = getelementptr i8, ptr %155, i32 %11
  %157 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 35
  store ptr %156, ptr %157, align 4
  %158 = load i32, ptr %142, align 8
  %159 = add i32 %158, %11
  %160 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 36
  store i32 %159, ptr %160, align 8
  %161 = load i32, ptr %12, align 4
  %162 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 37
  store i32 %161, ptr %162, align 4
  %163 = load ptr, ptr %146, align 8
  %164 = tail call i32 @vc4_validate_bin_cl(ptr noundef %0, ptr noundef %163, ptr noundef nonnull %30, ptr noundef %1) #11
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %134
  %167 = tail call i32 @vc4_validate_shader_recs(ptr noundef %0, ptr noundef %1) #11
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 17
  %171 = load i8, ptr %170, align 4, !range !31
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 39
  %175 = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %0, ptr noundef %174) #11
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 1
  %179 = load i64, ptr %178, align 8
  %180 = tail call i32 @vc4_wait_for_seqno(ptr noundef %0, i64 noundef %179, i64 noundef -1, i1 noundef zeroext true)
  br label %181

181:                                              ; preds = %177, %173, %166, %134, %132, %126, %111, %96, %81, %66, %51, %32, %28
  %182 = phi i32 [ -22, %28 ], [ %133, %132 ], [ %164, %134 ], [ %167, %166 ], [ %175, %173 ], [ %180, %177 ], [ -12, %32 ], [ -14, %51 ], [ -14, %66 ], [ -14, %81 ], [ -14, %96 ], [ -14, %111 ], [ -14, %126 ]
  %183 = phi ptr [ null, %28 ], [ %30, %132 ], [ %30, %134 ], [ %30, %166 ], [ %30, %173 ], [ %30, %177 ], [ null, %32 ], [ %30, %51 ], [ %30, %66 ], [ %30, %81 ], [ %30, %96 ], [ %30, %111 ], [ %30, %126 ]
  tail call void @kvfree(ptr noundef %183) #11
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_get_rcl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_lock_bo_reservations(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #11
  store ptr %3, ptr %1, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @reservation_ww_class) #11, !srcloc !15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #11, !srcloc !38
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 3
  store i16 0, ptr %8, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 4
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 7
  br label %14

14:                                               ; preds = %64, %2
  %15 = phi i32 [ -1, %2 ], [ %32, %64 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr ptr, ptr %18, i32 %15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %22, ptr noundef %1) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %17, %14
  %26 = load i32, ptr %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %96, label %30

28:                                               ; preds = %66
  %29 = icmp eq i32 %67, 0
  br i1 %29, label %96, label %74

30:                                               ; preds = %66, %25
  %31 = phi i32 [ %67, %66 ], [ %26, %25 ]
  %32 = phi i32 [ %68, %66 ], [ 0, %25 ]
  %33 = icmp eq i32 %32, %15
  br i1 %33, label %66, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 8
  %36 = getelementptr ptr, ptr %35, i32 %32
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_gem_object, ptr %37, i32 0, i32 9
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %39, ptr noundef %1) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, ptr %13, align 4
  br label %66

44:                                               ; preds = %34
  %45 = icmp sgt i32 %32, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %46, %44
  %47 = phi i32 [ %53, %46 ], [ 0, %44 ]
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr ptr, ptr %48, i32 %47
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_gem_object, ptr %50, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  tail call void @ww_mutex_unlock(ptr noundef %52) #11
  %53 = add nuw nsw i32 %47, 1
  %54 = icmp eq i32 %53, %32
  br i1 %54, label %55, label %46

55:                                               ; preds = %46, %44
  %56 = icmp slt i32 %15, %32
  %57 = select i1 %16, i1 true, i1 %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr ptr, ptr %59, i32 %15
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.drm_gem_object, ptr %61, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  tail call void @ww_mutex_unlock(ptr noundef %63) #11
  br label %64

64:                                               ; preds = %58, %55
  %65 = icmp eq i32 %40, -35
  br i1 %65, label %14, label %96

66:                                               ; preds = %42, %30
  %67 = phi i32 [ %43, %42 ], [ %31, %30 ]
  %68 = add nuw i32 %32, 1
  %69 = icmp ult i32 %68, %67
  br i1 %69, label %30, label %28

70:                                               ; preds = %74
  %71 = add nuw i32 %75, 1
  %72 = load i32, ptr %13, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70, %28
  %75 = phi i32 [ %71, %70 ], [ 0, %28 ]
  %76 = load ptr, ptr %12, align 8
  %77 = getelementptr ptr, ptr %76, i32 %75
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.drm_gem_object, ptr %78, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 @dma_resv_reserve_shared(ptr noundef %80, i32 noundef 1) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %70, label %83

83:                                               ; preds = %74
  %84 = load i32, ptr %13, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %86, %83
  %87 = phi i32 [ %93, %86 ], [ 0, %83 ]
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr ptr, ptr %88, i32 %87
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_gem_object, ptr %90, i32 0, i32 9
  %92 = load ptr, ptr %91, align 8
  tail call void @ww_mutex_unlock(ptr noundef %92) #11
  %93 = add nuw i32 %87, 1
  %94 = load i32, ptr %13, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %86, label %96

96:                                               ; preds = %86, %83, %70, %64, %28, %25, %17
  %97 = phi i32 [ %81, %83 ], [ 0, %28 ], [ %81, %86 ], [ 0, %70 ], [ 0, %25 ], [ %40, %64 ], [ %23, %17 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_queue_submit(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %109, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vc4_fence, ptr %5, i32 0, i32 1
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 14
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8
  store i64 %13, ptr %1, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 13
  %15 = load i64, ptr %14, align 8
  tail call void @dma_fence_init(ptr noundef nonnull %5, ptr noundef nonnull @vc4_fence_ops, ptr noundef %9, i64 noundef %15, i64 noundef %13) #11
  %16 = load i64, ptr %1, align 8
  %17 = getelementptr inbounds %struct.vc4_fence, ptr %5, i32 0, i32 2
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 2
  store ptr %5, ptr %18, align 8
  %19 = icmp eq ptr %2, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call void @drm_syncobj_replace_fence(ptr noundef nonnull %2, ptr noundef nonnull %5) #11
  br label %21

21:                                               ; preds = %20, %7
  %22 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 6
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %36, %27 ]
  %29 = load ptr, ptr %26, align 8
  %30 = getelementptr ptr, ptr %29, i32 %28
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.vc4_bo, ptr %31, i32 0, i32 1
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds %struct.drm_gem_object, ptr %31, i32 0, i32 9
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %18, align 8
  tail call void @dma_resv_add_shared_fence(ptr noundef %34, ptr noundef %35) #11
  %36 = add nuw i32 %28, 1
  %37 = load i32, ptr %22, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %27, label %39

39:                                               ; preds = %27, %21
  %40 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %47

43:                                               ; preds = %47, %39
  %44 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 9
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %52

47:                                               ; preds = %47, %39
  %48 = phi ptr [ %50, %47 ], [ %41, %39 ]
  %49 = getelementptr i8, ptr %48, i32 -20
  store i64 %13, ptr %49, align 8
  %50 = load ptr, ptr %48, align 4
  %51 = icmp eq ptr %50, %40
  br i1 %51, label %43, label %47

52:                                               ; preds = %52, %43
  %53 = phi i32 [ %60, %52 ], [ 0, %43 ]
  %54 = getelementptr %struct.vc4_exec_info, ptr %1, i32 0, i32 8, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.vc4_bo, ptr %55, i32 0, i32 2
  store i64 %13, ptr %56, align 8
  %57 = getelementptr inbounds %struct.drm_gem_object, ptr %55, i32 0, i32 9
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %18, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %58, ptr noundef %59) #11
  %60 = add nuw i32 %53, 1
  %61 = load i32, ptr %44, align 8
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %52, label %63

63:                                               ; preds = %52, %43
  %64 = load i32, ptr %22, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 6
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %75, %68 ]
  %70 = load ptr, ptr %67, align 8
  %71 = getelementptr ptr, ptr %70, i32 %69
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_gem_object, ptr %72, i32 0, i32 9
  %74 = load ptr, ptr %73, align 8
  tail call void @ww_mutex_unlock(ptr noundef %74) #11
  %75 = add nuw i32 %69, 1
  %76 = load i32, ptr %22, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %68, label %78

78:                                               ; preds = %68, %63
  %79 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 10
  %80 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16
  %81 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16, i32 1
  %82 = load ptr, ptr %81, align 4
  store ptr %79, ptr %81, align 4
  store ptr %80, ptr %79, align 4
  %83 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 10, i32 1
  store ptr %82, ptr %83, align 4
  store volatile ptr %79, ptr %82, align 4
  %84 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  %87 = getelementptr i8, ptr %85, i32 -60
  %88 = select i1 %86, ptr null, ptr %87
  %89 = load volatile ptr, ptr %80, align 4
  %90 = icmp eq ptr %89, %80
  %91 = getelementptr i8, ptr %89, i32 -60
  %92 = select i1 %90, ptr null, ptr %91
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %94, label %108

94:                                               ; preds = %78
  %95 = icmp eq ptr %88, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.vc4_exec_info, ptr %88, i32 0, i32 38
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 38
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96, %94
  tail call void @vc4_submit_next_bin_job(ptr noundef %0)
  %103 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33
  %104 = load volatile i32, ptr @jiffies, align 64
  %105 = add i32 %104, 10
  %106 = tail call i32 @round_jiffies_up(i32 noundef %105) #11
  %107 = tail call i32 @mod_timer(ptr noundef %103, i32 noundef %106) #11
  br label %108

108:                                              ; preds = %102, %96, %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  br label %109

109:                                              ; preds = %108, %3
  %110 = phi i32 [ 0, %108 ], [ -12, %3 ]
  ret i32 %110
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_syncobj_put(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #11, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !16
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %9, label %7, !prof !17

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #11
  br label %9

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_syncobj_free(ptr noundef %0) #11, !callees !19
  br label %9

9:                                                ; preds = %8, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_gem_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #11
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 13
  store i64 %2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 16, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 17, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 18
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 18, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 23
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 23, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 19
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33, i32 1
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33, i32 1, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33, i32 1, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 33, i32 1, i32 2
  store ptr @vc4_reset_work, ptr %17, align 4
  tail call void @init_timer_key(ptr noundef %13, ptr noundef nonnull @vc4_hangcheck_elapsed, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %18 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 21
  store i32 -32, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 21, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 21, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 21, i32 2
  store ptr @vc4_job_done_work, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull @vc4_gem_init.__key) #11
  %23 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12, i32 5
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull @vc4_gem_init.__key.7) #11
  %26 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @vc4_gem_destroy, ptr noundef null, ptr noundef nonnull @.str.9) #11
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_reset_work(ptr noundef %0) #0 {
  %2 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 168) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %342, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -128
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr i8, ptr %0, i32 -152
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = getelementptr i8, ptr %10, i32 -60
  %13 = select i1 %11, ptr null, ptr %12
  store ptr %13, ptr %2, align 8
  %14 = getelementptr i8, ptr %0, i32 -144
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = getelementptr i8, ptr %15, i32 -60
  %18 = select i1 %16, ptr null, ptr %17
  %19 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp ne ptr %13, null
  %21 = icmp ne ptr %18, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  br label %342

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %25, align 8
  %26 = icmp eq ptr %13, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vc4_exec_info, ptr %13, i32 0, i32 11
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %34, %29 ]
  %31 = phi ptr [ %28, %27 ], [ %32, %29 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %28
  %34 = add i32 %30, 1
  br i1 %33, label %35, label %29

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.vc4_exec_info, ptr %13, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %30
  store i32 %38, ptr %25, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = phi i32 [ 0, %24 ], [ %38, %35 ]
  %41 = icmp eq ptr %18, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.vc4_exec_info, ptr %18, i32 0, i32 11
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %49, %44 ]
  %46 = phi ptr [ %43, %42 ], [ %47, %44 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %43
  %49 = add i32 %45, 1
  br i1 %48, label %50, label %44

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.vc4_exec_info, ptr %18, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %45, %40
  %54 = add i32 %53, %52
  store i32 %54, ptr %25, align 8
  br label %55

55:                                               ; preds = %50, %39
  %56 = phi i32 [ %54, %50 ], [ %40, %39 ]
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 4) #11
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %59, label %61, !prof !8

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vc4_hang_state, ptr %4, i32 0, i32 2
  store ptr null, ptr %60, align 4
  br label %66

61:                                               ; preds = %55
  %62 = extractvalue { i32, i1 } %57, 0
  %63 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 2848) #12
  %64 = getelementptr inbounds %struct.vc4_hang_state, ptr %4, i32 0, i32 2
  store ptr %63, ptr %64, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  br label %342

67:                                               ; preds = %149, %61
  %68 = phi ptr [ %151, %149 ], [ %13, %61 ]
  %69 = phi i32 [ %147, %149 ], [ 0, %61 ]
  %70 = phi i32 [ %146, %149 ], [ 0, %61 ]
  %71 = icmp eq ptr %68, null
  br i1 %71, label %145, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.vc4_exec_info, ptr %68, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %121, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.vc4_exec_info, ptr %68, i32 0, i32 6
  br label %78

78:                                               ; preds = %111, %76
  %79 = phi i32 [ 0, %76 ], [ %118, %111 ]
  %80 = phi i32 [ %70, %76 ], [ %116, %111 ]
  %81 = load ptr, ptr %77, align 8
  %82 = getelementptr ptr, ptr %81, i32 %79
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.vc4_bo, ptr %83, i32 0, i32 9
  %85 = load volatile i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88, !prof !8

87:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 205, i32 noundef 9, ptr noundef null) #11
  br label %88

88:                                               ; preds = %87, %78
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #11, !srcloc !15
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #11, !srcloc !33
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !8

92:                                               ; preds = %88
  %93 = add i32 %90, 1
  %94 = or i32 %93, %90
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %98, label %96, !prof !17

96:                                               ; preds = %92, %88
  %97 = phi i32 [ 2, %88 ], [ 1, %92 ]
  tail call void @refcount_warn_saturate(ptr noundef %84, i32 noundef %97) #11
  br label %98

98:                                               ; preds = %96, %92
  %99 = load ptr, ptr %77, align 8
  %100 = getelementptr ptr, ptr %99, i32 %79
  %101 = load ptr, ptr %100, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #11, !srcloc !15
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #11, !srcloc !33
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105, !prof !8

105:                                              ; preds = %98
  %106 = add i32 %103, 1
  %107 = or i32 %106, %103
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %111, label %109, !prof !17

109:                                              ; preds = %105, %98
  %110 = phi i32 [ 2, %98 ], [ 1, %105 ]
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef %110) #11
  br label %111

111:                                              ; preds = %109, %105
  %112 = load ptr, ptr %77, align 8
  %113 = getelementptr ptr, ptr %112, i32 %79
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %64, align 4
  %116 = add i32 %80, 1
  %117 = getelementptr ptr, ptr %115, i32 %80
  store ptr %114, ptr %117, align 4
  %118 = add nuw i32 %79, 1
  %119 = load i32, ptr %73, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %78, label %121

121:                                              ; preds = %111, %72
  %122 = phi i32 [ %70, %72 ], [ %116, %111 ]
  %123 = getelementptr inbounds %struct.vc4_exec_info, ptr %68, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %145, label %126

126:                                              ; preds = %139, %121
  %127 = phi ptr [ %143, %139 ], [ %124, %121 ]
  %128 = phi i32 [ %141, %139 ], [ %122, %121 ]
  %129 = getelementptr i8, ptr %127, i32 -244
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #11, !srcloc !15
  %130 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #11, !srcloc !33
  %131 = extractvalue { i32, i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133, !prof !8

133:                                              ; preds = %126
  %134 = add i32 %131, 1
  %135 = or i32 %134, %131
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %139, label %137, !prof !17

137:                                              ; preds = %133, %126
  %138 = phi i32 [ 2, %126 ], [ 1, %133 ]
  tail call void @refcount_warn_saturate(ptr noundef %129, i32 noundef %138) #11
  br label %139

139:                                              ; preds = %137, %133
  %140 = load ptr, ptr %64, align 4
  %141 = add i32 %128, 1
  %142 = getelementptr ptr, ptr %140, i32 %128
  store ptr %129, ptr %142, align 4
  %143 = load ptr, ptr %127, align 4
  %144 = icmp eq ptr %143, %123
  br i1 %144, label %145, label %126

145:                                              ; preds = %139, %121, %67
  %146 = phi i32 [ %70, %67 ], [ %122, %121 ], [ %141, %139 ]
  %147 = add nuw nsw i32 %69, 1
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %147
  %151 = load ptr, ptr %150, align 4
  br label %67

152:                                              ; preds = %145
  %153 = load i32, ptr %25, align 8
  %154 = icmp ne i32 %146, %153
  %155 = load i1, ptr @vc4_save_hang_state.__already_done, align 1
  %156 = xor i1 %155, true
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %159, !prof !8

158:                                              ; preds = %152
  store i1 true, ptr @vc4_save_hang_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 220, i32 noundef 9, ptr noundef null) #11
  br label %159

159:                                              ; preds = %158, %152
  br i1 %26, label %164, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.vc4_exec_info, ptr %13, i32 0, i32 25
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 2
  store i32 %162, ptr %163, align 4
  br label %164

164:                                              ; preds = %160, %159
  br i1 %41, label %169, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.vc4_exec_info, ptr %18, i32 0, i32 27
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 3
  store i32 %167, ptr %168, align 8
  br label %169

169:                                              ; preds = %165, %164
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  %170 = getelementptr i8, ptr %0, i32 -324
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.vc4_v3d, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i8, ptr %173, i32 272
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %176 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 4
  store i32 %175, ptr %176, align 4
  %177 = load ptr, ptr %170, align 4
  %178 = getelementptr inbounds %struct.vc4_v3d, ptr %177, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr i8, ptr %179, i32 264
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !41
  %182 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 5
  store i32 %181, ptr %182, align 8
  %183 = load ptr, ptr %170, align 4
  %184 = getelementptr inbounds %struct.vc4_v3d, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr i8, ptr %185, i32 276
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %188 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 6
  store i32 %187, ptr %188, align 4
  %189 = load ptr, ptr %170, align 4
  %190 = getelementptr inbounds %struct.vc4_v3d, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr i8, ptr %191, i32 268
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %194 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 7
  store i32 %193, ptr %194, align 8
  %195 = load ptr, ptr %170, align 4
  %196 = getelementptr inbounds %struct.vc4_v3d, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr i8, ptr %197, i32 256
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  %200 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 8
  store i32 %199, ptr %200, align 4
  %201 = load ptr, ptr %170, align 4
  %202 = getelementptr inbounds %struct.vc4_v3d, ptr %201, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 260
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %206 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 9
  store i32 %205, ptr %206, align 8
  %207 = load ptr, ptr %170, align 4
  %208 = getelementptr inbounds %struct.vc4_v3d, ptr %207, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr i8, ptr %209, i32 280
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !46
  %212 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 10
  store i32 %211, ptr %212, align 4
  %213 = load ptr, ptr %170, align 4
  %214 = getelementptr inbounds %struct.vc4_v3d, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 284
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %218 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 11
  store i32 %217, ptr %218, align 8
  %219 = load ptr, ptr %170, align 4
  %220 = getelementptr inbounds %struct.vc4_v3d, ptr %219, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr i8, ptr %221, i32 768
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %224 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 12
  store i32 %223, ptr %224, align 4
  %225 = load ptr, ptr %170, align 4
  %226 = getelementptr inbounds %struct.vc4_v3d, ptr %225, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 772
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !49
  %230 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 13
  store i32 %229, ptr %230, align 8
  %231 = load ptr, ptr %170, align 4
  %232 = getelementptr inbounds %struct.vc4_v3d, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr i8, ptr %233, i32 776
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !50
  %236 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 14
  store i32 %235, ptr %236, align 4
  %237 = load ptr, ptr %170, align 4
  %238 = getelementptr inbounds %struct.vc4_v3d, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr i8, ptr %239, i32 780
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  %242 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 15
  store i32 %241, ptr %242, align 8
  %243 = load ptr, ptr %170, align 4
  %244 = getelementptr inbounds %struct.vc4_v3d, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr i8, ptr %245, i32 1284
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !52
  %248 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 16
  store i32 %247, ptr %248, align 4
  %249 = load ptr, ptr %170, align 4
  %250 = getelementptr inbounds %struct.vc4_v3d, ptr %249, i32 0, i32 2
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %251, i32 3840
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !53
  %254 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 17
  store i32 %253, ptr %254, align 8
  %255 = load ptr, ptr %170, align 4
  %256 = getelementptr inbounds %struct.vc4_v3d, ptr %255, i32 0, i32 2
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr i8, ptr %257, i32 3844
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %260 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 18
  store i32 %259, ptr %260, align 4
  %261 = load ptr, ptr %170, align 4
  %262 = getelementptr inbounds %struct.vc4_v3d, ptr %261, i32 0, i32 2
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr i8, ptr %263, i32 3848
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !55
  %266 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 19
  store i32 %265, ptr %266, align 8
  %267 = load ptr, ptr %170, align 4
  %268 = getelementptr inbounds %struct.vc4_v3d, ptr %267, i32 0, i32 2
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr i8, ptr %269, i32 3852
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !56
  %272 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 20
  store i32 %271, ptr %272, align 4
  %273 = load ptr, ptr %170, align 4
  %274 = getelementptr inbounds %struct.vc4_v3d, ptr %273, i32 0, i32 2
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr i8, ptr %275, i32 3856
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !57
  %278 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 21
  store i32 %277, ptr %278, align 8
  %279 = load ptr, ptr %170, align 4
  %280 = getelementptr inbounds %struct.vc4_v3d, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 3872
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !58
  %284 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %4, i32 0, i32 22
  store i32 %283, ptr %284, align 4
  %285 = load i32, ptr %25, align 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %314, label %287

287:                                              ; preds = %310, %169
  %288 = phi i32 [ %311, %310 ], [ %285, %169 ]
  %289 = phi i32 [ %312, %310 ], [ 0, %169 ]
  %290 = load ptr, ptr %64, align 4
  %291 = getelementptr ptr, ptr %290, i32 %289
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.vc4_bo, ptr %292, i32 0, i32 10
  %294 = load i32, ptr %293, align 4
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %310, label %296

296:                                              ; preds = %287
  %297 = getelementptr inbounds %struct.vc4_bo, ptr %292, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %297) #11
  %298 = load i32, ptr %293, align 4
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %301, !prof !8

300:                                              ; preds = %296
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 269, i32 noundef 9, ptr noundef null) #11
  br label %302

301:                                              ; preds = %296
  store i32 0, ptr %293, align 4
  br label %302

302:                                              ; preds = %301, %300
  %303 = getelementptr inbounds %struct.vc4_bo, ptr %292, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %303) #11, !srcloc !15
  %304 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %303, ptr %303, i32 1, ptr elementtype(i32) %303) #11, !srcloc !16
  %305 = extractvalue { i32, i32, i32 } %304, 0
  %306 = icmp slt i32 %305, 2
  br i1 %306, label %307, label %308, !prof !8

307:                                              ; preds = %302
  tail call void @refcount_warn_saturate(ptr noundef %303, i32 noundef 4) #11
  br label %308

308:                                              ; preds = %307, %302
  tail call void @mutex_unlock(ptr noundef %297) #11
  %309 = load i32, ptr %25, align 8
  br label %310

310:                                              ; preds = %308, %287
  %311 = phi i32 [ %288, %287 ], [ %309, %308 ]
  %312 = add nuw i32 %289, 1
  %313 = icmp ult i32 %312, %311
  br i1 %313, label %287, label %314

314:                                              ; preds = %310, %169
  %315 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %316 = getelementptr i8, ptr %0, i32 -308
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %341, label %319

319:                                              ; preds = %314
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %315) #11
  %320 = load i32, ptr %25, align 8
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %340, label %322

322:                                              ; preds = %336, %319
  %323 = phi i32 [ %337, %336 ], [ 0, %319 ]
  %324 = load ptr, ptr %64, align 4
  %325 = getelementptr ptr, ptr %324, i32 %323
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %336, label %328

328:                                              ; preds = %322
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %326) #11, !srcloc !15
  %329 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %326, ptr nonnull %326, i32 1, ptr nonnull elementtype(i32) %326) #11, !srcloc !16
  %330 = extractvalue { i32, i32, i32 } %329, 0
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = icmp sgt i32 %330, 0
  br i1 %333, label %336, label %334, !prof !17

334:                                              ; preds = %332
  tail call void @refcount_warn_saturate(ptr noundef nonnull %326, i32 noundef 3) #11
  br label %336

335:                                              ; preds = %328
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %326) #11, !callees !19
  br label %336

336:                                              ; preds = %335, %334, %332, %322
  %337 = add nuw i32 %323, 1
  %338 = load i32, ptr %25, align 8
  %339 = icmp ult i32 %337, %338
  br i1 %339, label %322, label %340

340:                                              ; preds = %336, %319
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %342

341:                                              ; preds = %314
  store ptr %4, ptr %316, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %315) #11
  br label %342

342:                                              ; preds = %341, %340, %66, %23, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  %344 = getelementptr i8, ptr %0, i32 -40
  tail call void @mutex_lock(ptr noundef %344) #11
  %345 = getelementptr i8, ptr %0, i32 -48
  %346 = load i32, ptr %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %360, label %348

348:                                              ; preds = %342
  %349 = getelementptr i8, ptr %0, i32 -324
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.vc4_v3d, ptr %350, i32 0, i32 1
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.platform_device, ptr %352, i32 0, i32 3
  %354 = tail call i32 @__pm_runtime_suspend(ptr noundef %353, i32 noundef 4) #11
  %355 = load ptr, ptr %349, align 4
  %356 = getelementptr inbounds %struct.vc4_v3d, ptr %355, i32 0, i32 1
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.platform_device, ptr %357, i32 0, i32 3
  %359 = tail call i32 @__pm_runtime_resume(ptr noundef %358, i32 noundef 4) #11
  br label %360

360:                                              ; preds = %348, %342
  %361 = getelementptr i8, ptr %0, i32 -1344
  tail call void @mutex_unlock(ptr noundef %344) #11
  tail call void @vc4_irq_reset(ptr noundef %361) #11
  %362 = getelementptr i8, ptr %0, i32 -20
  %363 = load volatile i32, ptr @jiffies, align 64
  %364 = add i32 %363, 10
  %365 = tail call i32 @round_jiffies_up(i32 noundef %364) #11
  %366 = tail call i32 @mod_timer(ptr noundef %362, i32 noundef %365) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hangcheck_elapsed(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -108
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 -132
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = getelementptr i8, ptr %5, i32 -60
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr i8, ptr %0, i32 -124
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  %12 = getelementptr i8, ptr %10, i32 -60
  %13 = select i1 %11, ptr null, ptr %12
  %14 = icmp ne ptr %8, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  br label %54

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 -304
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vc4_v3d, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 272
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !59
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.vc4_v3d, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 276
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !60
  br i1 %14, label %30, label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.vc4_exec_info, ptr %8, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %24, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %18
  br i1 %15, label %35, label %50

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.vc4_exec_info, ptr %13, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %29, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  br i1 %14, label %41, label %43

40:                                               ; preds = %30
  store i32 %24, ptr %31, align 4
  br i1 %15, label %43, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.vc4_exec_info, ptr %8, i32 0, i32 3
  store i32 %24, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %40, %39
  %44 = getelementptr inbounds %struct.vc4_exec_info, ptr %13, i32 0, i32 4
  store i32 %29, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = add i32 %46, 10
  %48 = tail call i32 @round_jiffies_up(i32 noundef %47) #11
  %49 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %48) #11
  br label %54

50:                                               ; preds = %35, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  %51 = getelementptr inbounds %struct.anon.77, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr @system_wq, align 4
  %53 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %51) #11
  br label %54

54:                                               ; preds = %50, %45, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_job_done_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1232
  tail call void @vc4_job_handle_completed(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_gem_destroy(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 14
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 15
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %9, label %8, !prof !17

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1298, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #11, !srcloc !15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #11, !srcloc !16
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !17

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #11
  br label %21

20:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %11) #11, !callees !19
  br label %21

21:                                               ; preds = %20, %19, %17
  store ptr null, ptr %10, align 4
  br label %22

22:                                               ; preds = %21, %9
  %23 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_vc4_get_hang_state, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.vc4_hang_state, ptr %24, i32 0, i32 2
  br label %32

32:                                               ; preds = %46, %30
  %33 = phi i32 [ 0, %30 ], [ %47, %46 ]
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr ptr, ptr %34, i32 %33
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %36) #11, !srcloc !15
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #11, !srcloc !16
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %46, label %44, !prof !17

44:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef 3) #11
  br label %46

45:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %36) #11, !callees !19
  br label %46

46:                                               ; preds = %45, %44, %42, %32
  %47 = add nuw i32 %33, 1
  %48 = load i32, ptr %27, align 8
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %32, label %50

50:                                               ; preds = %46, %26
  tail call void @kfree(ptr noundef nonnull %24) #11
  br label %51

51:                                               ; preds = %50, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_gem_madvise_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4
  %13 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %16) #11
  br label %65

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.vc4_bo, ptr %13, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #11
  br label %56

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #11
  br label %56

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.vc4_bo, ptr %13, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %28) #11
  %29 = load i32, ptr %4, align 4
  switch i32 %29, label %46 [
    i32 1, label %30
    i32 0, label %38
  ]

30:                                               ; preds = %27
  %31 = load i32, ptr %18, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.vc4_bo, ptr %13, i32 0, i32 9
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  tail call void @vc4_bo_add_to_purgeable_pool(ptr noundef nonnull %13) #11
  br label %46

38:                                               ; preds = %27
  %39 = load i32, ptr %18, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.vc4_bo, ptr %13, i32 0, i32 9
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @vc4_bo_remove_from_purgeable_pool(ptr noundef nonnull %13) #11
  br label %46

46:                                               ; preds = %45, %41, %38, %37, %33, %30, %27
  %47 = load i32, ptr %18, align 4
  %48 = icmp ne i32 %47, 2
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.drm_vc4_gem_madvise, ptr %1, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %18, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, ptr %4, align 4
  store i32 %54, ptr %18, align 4
  br label %55

55:                                               ; preds = %53, %46
  tail call void @mutex_unlock(ptr noundef %28) #11
  br label %56

56:                                               ; preds = %55, %26, %21
  %57 = phi i32 [ -22, %21 ], [ -22, %26 ], [ 0, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #11, !srcloc !15
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #11, !srcloc !16
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = icmp sgt i32 %59, 0
  br i1 %62, label %65, label %63, !prof !17

63:                                               ; preds = %61
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #11
  br label %65

64:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #11, !callees !19
  br label %65

65:                                               ; preds = %64, %63, %61, %15, %7, %3
  %66 = phi i32 [ -2, %15 ], [ -22, %3 ], [ -22, %7 ], [ %57, %61 ], [ %57, %63 ], [ %57, %64 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_add_to_purgeable_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_remove_from_purgeable_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_vc4_wait_for_seqno_begin(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_vc4_wait_for_seqno_end(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_bin_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_validate_bin_cl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_validate_shader_recs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_irq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2151346244, i64 2151346269}
!11 = !{i64 3841778}
!12 = !{i64 3841975}
!13 = !{i64 2151327254}
!14 = !{i64 2148177851}
!15 = !{i64 574785, i64 2148064756, i64 2148064782, i64 2148064829, i64 2148064851, i64 2148064879, i64 2148064899}
!16 = !{i64 2148079986, i64 2148080018, i64 2148080047, i64 2148080081, i64 2148080112, i64 2148080135}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149026914}
!19 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @drm_syncobj_free}
!20 = !{i64 2155428043}
!21 = !{i64 2155428241}
!22 = !{i64 2155441669}
!23 = !{i64 2155441845}
!24 = !{i64 2155482083}
!25 = !{i64 3680371}
!26 = !{i64 2155979655}
!27 = !{i64 2155480367}
!28 = !{i64 2155480845}
!29 = !{i64 2156105518}
!30 = !{i64 2156353778}
!31 = !{i8 0, i8 2}
!32 = !{i64 2151345666, i64 2151345691}
!33 = !{i64 2148077629, i64 2148077661, i64 2148077690, i64 2148077724, i64 2148077755, i64 2148077778}
!34 = !{i64 2148958926}
!35 = !{i64 2148954750}
!36 = !{i64 2148954825, i64 2148954852, i64 2148954899, i64 2148954921, i64 2148954949, i64 2148954969}
!37 = !{i64 2148981929}
!38 = !{i64 2148076855, i64 2148076887, i64 2148076916, i64 2148076950, i64 2148076981, i64 2148077004}
!39 = !{i64 3680789}
!40 = !{i64 2155463118}
!41 = !{i64 2155463604}
!42 = !{i64 2155464090}
!43 = !{i64 2155464576}
!44 = !{i64 2155465048}
!45 = !{i64 2155465520}
!46 = !{i64 2155465922}
!47 = !{i64 2155466324}
!48 = !{i64 2155466726}
!49 = !{i64 2155467128}
!50 = !{i64 2155467530}
!51 = !{i64 2155467932}
!52 = !{i64 2155468334}
!53 = !{i64 2155468736}
!54 = !{i64 2155469138}
!55 = !{i64 2155469540}
!56 = !{i64 2155469942}
!57 = !{i64 2155470344}
!58 = !{i64 2155470746}
!59 = !{i64 2155479559}
!60 = !{i64 2155480045}
