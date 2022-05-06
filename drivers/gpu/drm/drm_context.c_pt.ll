; ModuleID = '/llk/IR/drivers/gpu/drm/drm_context.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_context.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.66 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_ctx_list = type { %struct.list_head, i32, ptr }
%struct.drm_ctx_priv_map = type { i32, ptr }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.drm_ctx = type { i32, i32 }
%struct.drm_ctx_res = type { i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not enough free contexts.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Reentering -- FIXME\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Context switch from %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Lock isn't held after context switch\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = and i32 %9, -2080374784
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  %15 = tail call ptr @idr_remove(ptr noundef %14, i32 noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %13) #6
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_init(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = and i32 %8, -2080374784
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41, i32 0, i32 1
  store i32 33554436, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41, i32 0, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41, i32 2
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = and i32 %8, -2080374784
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  tail call void @idr_destroy(ptr noundef %13) #6
  tail call void @mutex_unlock(ptr noundef %12) #6
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_ctxbitmap_flush(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = and i32 %9, -2080374784
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %13) #6
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  br label %20

20:                                               ; preds = %54, %17
  %21 = phi ptr [ %15, %17 ], [ %22, %54 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_ctx_list, ptr %21, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.drm_ctx_list, ptr %21, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.drm_driver, ptr %31, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = tail call i32 %33(ptr noundef %0, i32 noundef %28) #6
  %37 = load ptr, ptr %3, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %37, %35 ], [ %31, %30 ]
  %40 = getelementptr inbounds %struct.drm_driver, ptr %39, i32 0, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %7, align 4
  %43 = and i32 %41, -2080374784
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef %18) #6
  %48 = tail call ptr @idr_remove(ptr noundef %19, i32 noundef %47) #6
  tail call void @mutex_unlock(ptr noundef %18) #6
  br label %49

49:                                               ; preds = %46, %38
  %50 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  tail call void @kfree(ptr noundef %21) #6
  br label %54

54:                                               ; preds = %49, %26, %20
  %55 = icmp eq ptr %22, %14
  br i1 %55, label %56, label %20

56:                                               ; preds = %54, %12
  tail call void @mutex_unlock(ptr noundef %13) #6
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_getsareactx(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  %16 = load i32, ptr %1, align 4
  %17 = tail call ptr @idr_find(ptr noundef %15, i32 noundef %16) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %14) #6
  br label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.drm_ctx_priv_map, ptr %1, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_map_list, ptr %25, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.drm_map_list, ptr %25, i32 0, i32 3
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = inttoptr i32 %34 to ptr
  store ptr %35, ptr %21, align 4
  br label %36

36:                                               ; preds = %31, %23
  tail call void @mutex_unlock(ptr noundef %14) #6
  %37 = load ptr, ptr %21, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i32 -22, i32 0
  br label %40

40:                                               ; preds = %36, %19, %3
  %41 = phi i32 [ -22, %19 ], [ %39, %36 ], [ -95, %3 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_setsareactx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_ctx_priv_map, ptr %1, i32 0, i32 1
  br label %20

20:                                               ; preds = %32, %18
  %21 = phi ptr [ %16, %18 ], [ %33, %32 ]
  %22 = getelementptr inbounds %struct.drm_map_list, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_map_list, ptr %21, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr %19, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %20
  %33 = load ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, %15
  br i1 %34, label %41, label %20

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  %37 = load i32, ptr %1, align 4
  %38 = tail call ptr @idr_replace(ptr noundef %36, ptr noundef nonnull %23, i32 noundef %37) #6
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  %40 = select i1 %39, i32 -22, i32 0
  br label %41

41:                                               ; preds = %35, %32, %13
  %42 = phi i32 [ -22, %13 ], [ %40, %35 ], [ -22, %32 ]
  tail call void @mutex_unlock(ptr noundef %14) #6
  br label %43

43:                                               ; preds = %41, %3
  %44 = phi i32 [ -95, %3 ], [ %42, %41 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_resctx(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = and i32 %11, -2080374784
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  store i64 0, ptr %4, align 8
  %18 = getelementptr inbounds %struct.drm_ctx_res, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 8, i32 -1090519040) #7, !srcloc !8
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = tail call ptr @llvm.thread.pointer() #6
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #8, !srcloc !9
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #6, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %29 = call i32 @arm_copy_to_user(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #6, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %14
  store i32 1, ptr %1, align 4
  br label %32

32:                                               ; preds = %31, %23, %17, %3
  %33 = phi i32 [ 0, %31 ], [ -14, %23 ], [ -14, %17 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addctx(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  %16 = tail call i32 @idr_alloc(ptr noundef %15, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #6
  tail call void @mutex_unlock(ptr noundef %14) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef %14) #6
  %19 = tail call i32 @idr_alloc(ptr noundef %15, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #6
  tail call void @mutex_unlock(ptr noundef %14) #6
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ %16, %13 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %21) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %38

24:                                               ; preds = %20
  store i32 %21, ptr %1, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 16) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #6
  br label %38

29:                                               ; preds = %24
  store volatile ptr %26, ptr %26, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %30, align 4
  %31 = load i32, ptr %1, align 4
  %32 = getelementptr inbounds %struct.drm_ctx_list, ptr %26, i32 0, i32 1
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.drm_ctx_list, ptr %26, i32 0, i32 2
  store ptr %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %34) #6
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 39
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %26, ptr %37, align 4
  store ptr %36, ptr %26, align 8
  store ptr %35, ptr %30, align 4
  store volatile ptr %26, ptr %35, align 4
  tail call void @mutex_unlock(ptr noundef %34) #6
  br label %38

38:                                               ; preds = %29, %28, %23, %3
  %39 = phi i32 [ %21, %23 ], [ 0, %29 ], [ -12, %28 ], [ -95, %3 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_legacy_getctx(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_ctx, ptr %1, i32 0, i32 1
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ 0, %13 ], [ -95, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_switchctx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 47
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 46
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %26

22:                                               ; preds = %13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %16, i32 noundef %17) #6
  %23 = load i32, ptr %15, align 4
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %18) #6
  br label %26

26:                                               ; preds = %25, %22, %21, %3
  %27 = phi i32 [ -16, %21 ], [ 0, %25 ], [ 0, %22 ], [ -95, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_newctx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %14) #6
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 47
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_master, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #6
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 46
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %25) #6
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i32 [ 0, %24 ], [ -95, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmctx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, -2080374784
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %14) #6
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.drm_driver, ptr %18, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef %15) #6
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %18, %17 ]
  %27 = getelementptr inbounds %struct.drm_driver, ptr %26, i32 0, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %8, align 4
  %30 = and i32 %28, -2080374784
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %35) #6
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 41
  %37 = tail call ptr @idr_remove(ptr noundef %36, i32 noundef %34) #6
  tail call void @mutex_unlock(ptr noundef %35) #6
  br label %38

38:                                               ; preds = %33, %25, %13
  %39 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %56, label %43

43:                                               ; preds = %54, %38
  %44 = phi ptr [ %45, %54 ], [ %41, %38 ]
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_ctx_list, ptr %44, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %45, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @kfree(ptr noundef %44) #6
  br label %54

54:                                               ; preds = %50, %43
  %55 = icmp eq ptr %45, %40
  br i1 %55, label %56, label %43

56:                                               ; preds = %54, %38
  tail call void @mutex_unlock(ptr noundef %39) #6
  br label %57

57:                                               ; preds = %56, %3
  %58 = phi i32 [ 0, %56 ], [ -95, %3 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2150663499, i64 2150663524}
!9 = !{i64 3159033}
!10 = !{i64 3159230}
!11 = !{i64 2150644509}
