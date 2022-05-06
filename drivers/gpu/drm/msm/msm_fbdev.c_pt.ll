; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_fbdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_fbdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
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
%struct.anon.78 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_fbdev = type { %struct.drm_fb_helper, ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }

@msm_fb_helper_funcs = internal constant %struct.drm_fb_helper_funcs { ptr @msm_fbdev_create }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"*ERROR* could not init fbdev: ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"create fbdev: %dx%d@%d (%dx%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to allocate fb\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to get buffer obj iova: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to allocate fb info\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"fbi=%p, dev=%p\0A\00", align 1
@msm_fb_ops = internal constant %struct.fb_ops { ptr @__this_module, ptr null, ptr null, ptr @drm_fb_helper_sys_read, ptr @drm_fb_helper_sys_write, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_sys_fillrect, ptr @drm_fb_helper_sys_copyarea, ptr @drm_fb_helper_sys_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr @msm_fbdev_mmap, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"par=%p, %dx%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"allocated %dx%d fb\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_fbdev_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 220) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  tail call void @drm_fb_helper_prepare(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @msm_fb_helper_funcs) #5
  %8 = tail call i32 @drm_fb_helper_init(ptr noundef %0, ptr noundef nonnull %5) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %8) #5
  br label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %5, i32 noundef 32) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 10
  store ptr %5, ptr %22, align 8
  br label %25

23:                                               ; preds = %18, %13
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %5) #5
  br label %24

24:                                               ; preds = %23, %10, %1
  tail call void @kfree(ptr noundef %5) #5
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi ptr [ null, %24 ], [ %5, %21 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_fbdev_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #5
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef %5) #5
  tail call void @drm_fb_helper_fini(ptr noundef %5) #5
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.msm_fbdev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @msm_framebuffer_bo(ptr noundef nonnull %8, i32 noundef 0) #5
  tail call void @msm_gem_put_vaddr(ptr noundef %11) #5
  %12 = load ptr, ptr %7, align 4
  tail call void @drm_framebuffer_remove(ptr noundef %12) #5
  br label %13

13:                                               ; preds = %10, %1
  tail call void @kfree(ptr noundef %6) #5
  store ptr null, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_bo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_fbdev_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %9, i32 noundef %11) #5
  %13 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %20) #5
  %21 = load i32, ptr %13, align 4
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %22, 7
  %24 = sdiv i32 %23, 8
  %25 = add i32 %21, 31
  %26 = and i32 %25, -32
  %27 = mul i32 %24, %26
  %28 = load i32, ptr %15, align 4
  %29 = tail call ptr @msm_alloc_stolen_fb(ptr noundef %5, i32 noundef %21, i32 noundef %28, i32 noundef %27, i32 noundef %12) #5
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5
  %34 = ptrtoint ptr %29 to i32
  br label %87

35:                                               ; preds = %2
  %36 = tail call ptr @msm_framebuffer_bo(ptr noundef %29, i32 noundef 0) #5
  %37 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.msm_kms, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @msm_gem_get_and_pin_iova(ptr noundef %36, ptr noundef %40, ptr noundef nonnull %3) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %41) #5
  br label %85

46:                                               ; preds = %35
  %47 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %0) #5
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #5
  %52 = ptrtoint ptr %47 to i32
  br label %85

53:                                               ; preds = %46
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %47, ptr noundef %5) #5
  %54 = getelementptr inbounds %struct.msm_fbdev, ptr %0, i32 0, i32 1
  store ptr %29, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 2
  store ptr %29, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 20
  store ptr @msm_fb_ops, ptr %56, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %47, ptr noundef %0, ptr noundef %1) #5
  %57 = load i64, ptr %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 28
  store i32 %58, ptr %59, align 4
  %60 = call ptr @msm_gem_get_vaddr(ptr noundef %36) #5
  %61 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 24
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = ptrtoint ptr %60 to i32
  br label %85

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.drm_gem_object, ptr %36, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 25
  store i32 %67, ptr %68, align 4
  %69 = load i64, ptr %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 7, i32 1
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %66, align 8
  %73 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 7, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 29
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 6, i32 1
  %79 = load i32, ptr %78, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %75, i32 noundef %77, i32 noundef %79) #5
  %80 = load ptr, ptr %54, align 4
  %81 = getelementptr inbounds %struct.drm_framebuffer, ptr %80, i32 0, i32 9
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.drm_framebuffer, ptr %80, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %82, i32 noundef %84) #5
  br label %87

85:                                               ; preds = %63, %49, %43
  %86 = phi i32 [ %41, %43 ], [ %52, %49 ], [ %64, %63 ]
  call void @drm_framebuffer_remove(ptr noundef %29) #5
  br label %87

87:                                               ; preds = %85, %65, %31
  %88 = phi i32 [ %34, %31 ], [ %86, %85 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_alloc_stolen_fb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_fbdev_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_fbdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @msm_framebuffer_bo(ptr noundef %6, i32 noundef 0) #5
  %8 = tail call i32 @drm_gem_prime_mmap(ptr noundef %7, ptr noundef %1) #5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
