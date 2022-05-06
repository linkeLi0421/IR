; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.75 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
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
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@exynos_drm_fb_funcs = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to initialize framebuffer\0A\00", align 1
@exynos_drm_fb_dma_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/exynos/exynos_drm_fb.c\00", align 1
@exynos_drm_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @exynos_user_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@exynos_drm_mode_config_helpers = internal global %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"*ERROR* Non-contiguous GEM memory is not supported.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to lookup gem object\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_framebuffer_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 144) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.exynos_drm_private, ptr %12, i32 0, i32 3
  br label %14

14:                                               ; preds = %28, %10
  %15 = phi i32 [ 0, %10 ], [ %30, %28 ]
  %16 = getelementptr ptr, ptr %2, i32 %15
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %16, align 4
  br i1 %18, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.exynos_drm_gem, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %39

28:                                               ; preds = %20, %14
  %29 = getelementptr %struct.drm_framebuffer, ptr %6, i32 0, i32 15, i32 %15
  store ptr %19, ptr %29, align 4
  %30 = add nuw nsw i32 %15, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %14

32:                                               ; preds = %28, %8
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1) #7
  %33 = tail call i32 @drm_framebuffer_init(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @exynos_drm_fb_funcs) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  %38 = inttoptr i32 %33 to ptr
  br label %39

39:                                               ; preds = %35, %25
  %40 = phi ptr [ inttoptr (i32 -22 to ptr), %25 ], [ %38, %35 ]
  tail call void @kfree(ptr noundef nonnull %6) #7
  br label %41

41:                                               ; preds = %39, %32, %4
  %42 = phi ptr [ %40, %39 ], [ %6, %32 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_fb_dma_addr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  %4 = load i1, ptr @exynos_drm_fb_dma_addr.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @exynos_drm_fb_dma_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 146, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %17, label %9

9:                                                ; preds = %8
  %10 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 15, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.exynos_drm_gem, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 7, i32 %1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i32 [ %16, %9 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @exynos_drm_mode_config_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 4096, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  store i32 4096, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  store ptr @exynos_drm_mode_config_funcs, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 103
  store ptr @exynos_drm_mode_config_helpers, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 98
  store i8 1, ptr %8, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos_user_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [4 x ptr], align 4
  %5 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 7
  br label %12

12:                                               ; preds = %43, %9
  %13 = phi i32 [ 0, %9 ], [ %42, %43 ]
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %10, align 8
  br i1 %14, label %22, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  %19 = add i32 %15, -1
  %20 = add i32 %19, %18
  %21 = udiv i32 %20, %18
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i32 [ %21, %16 ], [ %15, %12 ]
  %24 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 %13
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 %13
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 5, i32 %13
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @exynos_drm_gem_get(ptr noundef %1, i32 noundef %29) #7
  %31 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %13
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #7
  br label %51

36:                                               ; preds = %22
  %37 = mul i32 %25, %23
  %38 = add i32 %37, %27
  %39 = getelementptr inbounds %struct.exynos_drm_gem, ptr %30, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %38, %40
  %42 = add nuw nsw i32 %13, 1
  br i1 %41, label %55, label %43

43:                                               ; preds = %36
  %44 = load i8, ptr %6, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %12, label %47

47:                                               ; preds = %43, %3
  %48 = phi i32 [ 0, %3 ], [ %42, %43 ]
  %49 = call ptr @exynos_drm_framebuffer_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %48)
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %74

51:                                               ; preds = %47, %33
  %52 = phi i32 [ %13, %33 ], [ %48, %47 ]
  %53 = phi ptr [ inttoptr (i32 -2 to ptr), %33 ], [ %49, %47 ]
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %51, %36
  %56 = phi ptr [ %53, %51 ], [ inttoptr (i32 -22 to ptr), %36 ]
  %57 = phi i32 [ %52, %51 ], [ %42, %36 ]
  br label %58

58:                                               ; preds = %72, %55
  %59 = phi i32 [ %60, %72 ], [ %57, %55 ]
  %60 = add nsw i32 %59, -1
  %61 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %62) #7, !srcloc !11
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #7, !srcloc !12
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !13

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef nonnull %62, i32 noundef 3) #7
  br label %72

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %62) #7
  br label %72

72:                                               ; preds = %71, %70, %68, %58
  %73 = icmp eq i32 %60, 0
  br i1 %73, label %74, label %58

74:                                               ; preds = %72, %51, %47
  %75 = phi ptr [ %49, %47 ], [ %53, %51 ], [ %56, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret ptr %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
!10 = !{i64 2148236900}
!11 = !{i64 633049, i64 2148123020, i64 2148123046, i64 2148123093, i64 2148123115, i64 2148123143, i64 2148123163}
!12 = !{i64 2148139047, i64 2148139079, i64 2148139108, i64 2148139142, i64 2148139173, i64 2148139196}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149575542}
