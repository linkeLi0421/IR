; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_fbdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fbdev.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.75 = type { i32, ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.exynos_drm_fbdev = type { %struct.drm_fb_helper, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@exynos_drm_fb_helper_funcs = internal constant %struct.drm_fb_helper_funcs { ptr @exynos_drm_fbdev_create }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to initialize drm fb helper.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to set up hw configuration.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"surface width(%d), height(%d) and bpp(%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to create drm framebuffer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to allocate fb info.\0A\00", align 1
@exynos_drm_fb_ops = internal constant %struct.fb_ops { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr @exynos_drm_fb_mmap, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, align 4
@__this_module = external dso_local global %struct.module, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_fbdev_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 220) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  store ptr %9, ptr %3, align 4
  tail call void @drm_fb_helper_prepare(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull @exynos_drm_fb_helper_funcs) #6
  %12 = tail call i32 @drm_fb_helper_init(ptr noundef %0, ptr noundef nonnull %9) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %23

17:                                               ; preds = %11
  %18 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %9, i32 noundef 32) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #6
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %9) #6
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %12, %14 ], [ %18, %20 ]
  store ptr null, ptr %3, align 4
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %25

25:                                               ; preds = %23, %17, %7, %1
  %26 = phi i32 [ %24, %23 ], [ 0, %1 ], [ -12, %7 ], [ 0, %17 ]
  ret i32 %26
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
define dso_local void @exynos_drm_fbdev_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_fb_helper, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_framebuffer, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @drm_framebuffer_remove(ptr noundef nonnull %10) #6
  br label %17

17:                                               ; preds = %16, %12, %8
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef nonnull %6) #6
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %6) #6
  tail call void @kfree(ptr noundef nonnull %6) #6
  store ptr null, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_fbdev_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 104, i1 false)
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %12, i32 noundef %14) #6
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %11, align 4
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  %19 = load i32, ptr %13, align 4
  %20 = lshr i32 %19, 3
  %21 = mul i32 %20, %15
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %19, i32 noundef %24) #6
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = mul i32 %17, %21
  %28 = tail call ptr @exynos_drm_gem_create(ptr noundef %6, i32 noundef 4, i32 noundef %27, i1 noundef zeroext true) #6
  store ptr %28, ptr %3, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = ptrtoint ptr %28 to i32
  br label %90

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.exynos_drm_fbdev, ptr %0, i32 0, i32 1
  store ptr %28, ptr %33, align 4
  %34 = call ptr @exynos_drm_framebuffer_init(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1) #6
  %35 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #6
  %39 = load ptr, ptr %35, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %87

41:                                               ; preds = %32
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 9
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_format_info, ptr %48, i32 0, i32 3
  %50 = load i8, ptr %49, align 2
  %51 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %0) #6
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %77, label %53

53:                                               ; preds = %41
  %54 = mul i32 %46, %44
  %55 = zext i8 %50 to i32
  %56 = mul i32 %54, %55
  %57 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 20
  store ptr @exynos_drm_fb_ops, ptr %57, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %51, ptr noundef %0, ptr noundef %1) #6
  %58 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 6, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %47, align 8
  %61 = getelementptr inbounds %struct.drm_format_info, ptr %60, i32 0, i32 3
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = mul i32 %59, %63
  %65 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 6, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 6
  %68 = load i32, ptr %67, align 8
  %69 = mul i32 %68, %66
  %70 = add i32 %69, %64
  %71 = getelementptr inbounds %struct.exynos_drm_gem, ptr %42, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %70
  %74 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 24
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 25
  store i32 %56, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 7, i32 2
  store i32 %56, ptr %76, align 4
  br label %90

77:                                               ; preds = %41
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.exynos_drm_private, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %82, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #6
  %83 = ptrtoint ptr %51 to i32
  %84 = icmp slt ptr %51, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load ptr, ptr %35, align 4
  call void @drm_framebuffer_cleanup(ptr noundef %86) #6
  br label %87

87:                                               ; preds = %85, %37
  %88 = phi i32 [ %40, %37 ], [ %83, %85 ]
  %89 = load ptr, ptr %3, align 4
  call void @exynos_drm_gem_destroy(ptr noundef %89) #6
  br label %90

90:                                               ; preds = %87, %77, %53, %30
  %91 = phi i32 [ %31, %30 ], [ %88, %87 ], [ %83, %77 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_gem_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @drm_fb_helper_cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_fb_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.exynos_drm_fbdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_gem_prime_mmap(ptr noundef %6, ptr noundef %1) #6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
