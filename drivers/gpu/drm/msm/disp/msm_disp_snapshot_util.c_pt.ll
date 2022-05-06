; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_disp_state = type { ptr, ptr, %struct.list_head, ptr, %struct.timespec64 }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.msm_disp_state_block = type { [128 x i8], %struct.list_head, i32, ptr, ptr }

@.str = private unnamed_addr constant [21 x i8] c"invalid drm printer\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"kernel: 5.17.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"module: msm\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dpu devcoredump\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"time: %lld.%09ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"====================%s================\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"===================dpu drm state================\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%pV\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"0x%lx : %08x %08x %08x %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_state_print(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %54

5:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #9
  %6 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 4
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 4, i32 1
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i64 noundef %7, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %49, label %13

13:                                               ; preds = %47, %5
  %14 = phi ptr [ %16, %47 ], [ %11, %5 ]
  %15 = getelementptr i8, ptr %14, i32 -128
  %16 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef %15) #9
  %17 = getelementptr i8, ptr %14, i32 12
  %18 = getelementptr i8, ptr %14, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = icmp ult i32 %19, 16
  br i1 %21, label %47, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %14, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = lshr i32 %19, 4
  %26 = ptrtoint ptr %24 to i32
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %24, %22 ], [ %44, %27 ]
  %29 = phi i32 [ 0, %22 ], [ %45, %27 ]
  %30 = ptrtoint ptr %28 to i32
  %31 = sub i32 %30, %26
  %32 = shl i32 %29, 2
  %33 = getelementptr i32, ptr %20, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %32, 1
  %36 = getelementptr i32, ptr %20, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %32, 2
  %39 = getelementptr i32, ptr %20, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %32, 3
  %42 = getelementptr i32, ptr %20, i32 %41
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43) #9
  %44 = getelementptr i8, ptr %28, i32 16
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq i32 %45, %25
  br i1 %46, label %47, label %27

47:                                               ; preds = %27, %13
  %48 = icmp eq ptr %16, %10
  br i1 %48, label %49, label %13

49:                                               ; preds = %47, %5
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #9
  %50 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @drm_atomic_print_new_state(ptr noundef nonnull %51, ptr noundef nonnull %1) #9
  br label %54

54:                                               ; preds = %53, %49, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_print_new_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_capture_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 6, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @msm_dp_snapshot(ptr noundef %0, ptr noundef nonnull %10) #9
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 6, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @msm_dp_snapshot(ptr noundef %0, ptr noundef nonnull %15) #9
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 6, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @msm_dp_snapshot(ptr noundef %0, ptr noundef nonnull %20) #9
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 5, i32 0
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @msm_dsi_snapshot(ptr noundef %0, ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 5, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @msm_dsi_snapshot(ptr noundef %0, ptr noundef nonnull %30) #9
  br label %33

33:                                               ; preds = %32, %28
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.msm_kms_funcs, ptr %34, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void %36(ptr noundef %0, ptr noundef %8) #9
  br label %39

39:                                               ; preds = %38, %33
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #9, !annotation !8
  %40 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 4
  tail call void @ktime_get_real_ts64(ptr noundef %40) #9
  %41 = load ptr, ptr %3, align 4
  call void @drm_modeset_acquire_init(ptr noundef nonnull %2, i32 noundef 0) #9
  %42 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %41, ptr noundef nonnull %2) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %39
  %45 = call i32 @drm_modeset_backoff(ptr noundef nonnull %2) #9
  %46 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %41, ptr noundef nonnull %2) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %39
  %49 = call ptr @drm_atomic_helper_duplicate_state(ptr noundef %41, ptr noundef nonnull %2) #9
  %50 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 3
  store ptr %49, ptr %50, align 8
  call void @drm_modeset_drop_locks(ptr noundef nonnull %2) #9
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_state_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #9, !srcloc !10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !11
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !12

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #9
  br label %13

12:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void @__drm_atomic_state_free(ptr noundef nonnull %3) #9
  br label %13

13:                                               ; preds = %12, %11, %9
  store ptr null, ptr %2, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %21, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -128
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %25 = getelementptr i8, ptr %19, i32 12
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #9
  tail call void @kfree(ptr noundef %20) #9
  %27 = icmp eq ptr %21, %15
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %14
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
  %5 = alloca %struct.va_format, align 8
  %6 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 148) #10
  call void @llvm.va_start(ptr nonnull %6)
  store ptr %3, ptr %5, align 8
  %9 = getelementptr inbounds %struct.va_format, ptr %5, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %5)
  call void @llvm.va_end(ptr nonnull %6)
  %11 = getelementptr inbounds %struct.msm_disp_state_block, ptr %8, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.msm_disp_state_block, ptr %8, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = add i32 %1, 15
  %14 = and i32 %13, -16
  %15 = getelementptr inbounds %struct.msm_disp_state_block, ptr %8, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.msm_disp_state_block, ptr %8, i32 0, i32 4
  store ptr %2, ptr %16, align 8
  %17 = getelementptr inbounds %struct.msm_disp_state_block, ptr %8, i32 0, i32 3
  %18 = lshr i32 %13, 4
  %19 = getelementptr i8, ptr %2, i32 %14
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = shl i32 %14, 4
  %24 = call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  store ptr %24, ptr %17, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi ptr [ %24, %22 ], [ %20, %4 ]
  %27 = icmp eq ptr %26, null
  %28 = icmp eq i32 %14, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %25
  %30 = call i32 @llvm.umax.i32(i32 %18, i32 1) #9
  br label %31

31:                                               ; preds = %66, %29
  %32 = phi ptr [ %67, %66 ], [ %2, %29 ]
  %33 = phi i32 [ %68, %66 ], [ 0, %29 ]
  %34 = icmp ult ptr %32, %19
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !14
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  %39 = getelementptr i8, ptr %32, i32 4
  %40 = icmp ult ptr %39, %19
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !14
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %42, %41 ], [ 0, %37 ]
  %45 = getelementptr i8, ptr %32, i32 8
  %46 = icmp ult ptr %45, %19
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !14
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = getelementptr i8, ptr %32, i32 12
  %52 = icmp ult ptr %51, %19
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !14
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ 0, %49 ]
  br i1 %27, label %66, label %57

57:                                               ; preds = %55
  %58 = shl i32 %33, 2
  %59 = getelementptr i32, ptr %26, i32 %58
  store i32 %38, ptr %59, align 4
  %60 = or i32 %58, 1
  %61 = getelementptr i32, ptr %26, i32 %60
  store i32 %44, ptr %61, align 4
  %62 = or i32 %58, 2
  %63 = getelementptr i32, ptr %26, i32 %62
  store i32 %50, ptr %63, align 4
  %64 = or i32 %58, 3
  %65 = getelementptr i32, ptr %26, i32 %64
  store i32 %56, ptr %65, align 4
  br label %66

66:                                               ; preds = %57, %55
  %67 = getelementptr i8, ptr %32, i32 16
  %68 = add nuw nsw i32 %33, 1
  %69 = icmp eq i32 %68, %30
  br i1 %69, label %70, label %31

70:                                               ; preds = %66, %25
  %71 = getelementptr inbounds %struct.msm_disp_state, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %11, ptr %73, align 4
  store ptr %72, ptr %11, align 8
  store ptr %71, ptr %12, align 4
  store volatile ptr %11, ptr %71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{i64 2148208896}
!10 = !{i64 605045, i64 2148095016, i64 2148095042, i64 2148095089, i64 2148095111, i64 2148095139, i64 2148095159}
!11 = !{i64 2148111043, i64 2148111075, i64 2148111104, i64 2148111138, i64 2148111169, i64 2148111192}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149547538}
!14 = !{i64 5408262}
