; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/fb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.78, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.78 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.tegra_fbdev = type { %struct.drm_fb_helper, ptr }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }

@.str = private unnamed_addr constant [31 x i8] c"unknown format modifier: %llx\0A\00", align 1
@tegra_fb_funcs = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to initialize framebuffer: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to allocate DRM fbdev\0A\00", align 1
@tegra_fb_helper_funcs = internal constant %struct.drm_fb_helper_funcs { ptr @tegra_fbdev_probe }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to allocate framebuffer info\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to allocate DRM framebuffer: %d\0A\00", align 1
@tegra_fb_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_sys_fillrect, ptr @drm_fb_helper_sys_copyarea, ptr @drm_fb_helper_sys_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr @tegra_fb_mmap, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to vmap() framebuffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to initialize DRM FB helper: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"failed to set initial configuration: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_fb_get_plane(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %0, i32 noundef %1) #6
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_fb_is_bottom_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %0, i32 noundef 0) #6
  %3 = getelementptr inbounds %struct.tegra_bo, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_fb_get_tiling(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 8
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, -72057594037927936
  %6 = icmp eq i64 %5, 216172782113783808
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = trunc i64 %4 to i32
  %9 = lshr i32 %8, 22
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = and i64 %4, -4194305
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i64 [ %12, %7 ], [ %4, %2 ]
  switch i64 %14, label %31 [
    i64 0, label %15
    i64 216172782113783809, label %17
    i64 216172782113783824, label %19
    i64 216172782113783825, label %21
    i64 216172782113783826, label %23
    i64 216172782113783827, label %25
    i64 216172782113783828, label %27
    i64 216172782113783829, label %29
  ]

15:                                               ; preds = %13
  store i32 0, ptr %1, align 4
  %16 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 0, ptr %16, align 4
  br label %32

17:                                               ; preds = %13
  store i32 1, ptr %1, align 4
  %18 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 0, ptr %18, align 4
  br label %32

19:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %20 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 0, ptr %20, align 4
  br label %32

21:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %22 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 1, ptr %22, align 4
  br label %32

23:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %24 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 2, ptr %24, align 4
  br label %32

25:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %26 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 3, ptr %26, align 4
  br label %32

27:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %28 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 4, ptr %28, align 4
  br label %32

29:                                               ; preds = %13
  store i32 2, ptr %1, align 4
  %30 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %1, i32 0, i32 1
  store i32 5, ptr %30, align 4
  br label %32

31:                                               ; preds = %13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i64 noundef %14) #6
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %17, %15
  %33 = phi i32 [ -22, %31 ], [ 0, %29 ], [ 0, %27 ], [ 0, %25 ], [ 0, %23 ], [ 0, %21 ], [ 0, %19 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x ptr], align 4
  %5 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %2) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 6
  %12 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 7
  %13 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 3
  br label %15

15:                                               ; preds = %50, %9
  %16 = phi i32 [ 0, %9 ], [ %52, %50 ]
  %17 = load i32, ptr %10, align 4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %11, align 2
  %21 = zext i8 %20 to i32
  %22 = udiv i32 %17, %21
  %23 = load i8, ptr %12, align 1
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ %22, %19 ], [ %17, %15 ]
  %27 = phi i32 [ %24, %19 ], [ 1, %15 ]
  %28 = load i32, ptr %13, align 8
  %29 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 5, i32 %16
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %30) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %25
  %34 = udiv i32 %28, %27
  %35 = getelementptr [4 x i8], ptr %14, i32 0, i32 %16
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add i32 %34, -1
  %39 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 %16
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, %38
  %42 = mul i32 %26, %37
  %43 = add i32 %41, %42
  %44 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 7, i32 %16
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, %45
  %47 = getelementptr inbounds %struct.drm_gem_object, ptr %31, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %48, %46
  br i1 %49, label %60, label %50

50:                                               ; preds = %33
  %51 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %16
  store ptr %31, ptr %51, align 4
  %52 = add nuw nsw i32 %16, 1
  %53 = load i8, ptr %6, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %15, label %56

56:                                               ; preds = %50, %3
  %57 = phi i32 [ 0, %3 ], [ %52, %50 ]
  %58 = call fastcc ptr @tegra_fb_alloc(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %80

60:                                               ; preds = %56, %33, %25
  %61 = phi i32 [ %57, %56 ], [ %16, %25 ], [ %16, %33 ]
  %62 = phi ptr [ %58, %56 ], [ inttoptr (i32 -22 to ptr), %33 ], [ inttoptr (i32 -6 to ptr), %25 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %78, %60
  %65 = phi i32 [ %66, %78 ], [ %61, %60 ]
  %66 = add nsw i32 %65, -1
  %67 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %68) #6, !srcloc !10
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %68, ptr nonnull %68, i32 1, ptr nonnull elementtype(i32) %68) #6, !srcloc !11
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %78, label %76, !prof !12

76:                                               ; preds = %74
  tail call void @refcount_warn_saturate(ptr noundef nonnull %68, i32 noundef 3) #6
  br label %78

77:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %68) #6
  br label %78

78:                                               ; preds = %77, %76, %74, %64
  %79 = icmp eq i32 %66, 0
  br i1 %79, label %80, label %64

80:                                               ; preds = %78, %60, %56
  %81 = phi ptr [ %58, %56 ], [ %62, %60 ], [ %62, %78 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_fb_alloc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 144) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #6
  %8 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ %18, %13 ], [ 0, %7 ]
  %15 = getelementptr ptr, ptr %2, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.drm_framebuffer, ptr %5, i32 0, i32 15, i32 %14
  store ptr %16, ptr %17, align 4
  %18 = add nuw nsw i32 %14, 1
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %13, %7
  %25 = tail call i32 @drm_framebuffer_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @tegra_fb_funcs) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %25) #8
  tail call void @kfree(ptr noundef nonnull %5) #6
  %30 = inttoptr i32 %25 to ptr
  br label %31

31:                                               ; preds = %27, %24, %3
  %32 = phi ptr [ %30, %27 ], [ %5, %24 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fb_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 220) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #8
  %10 = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 8
  store ptr inttoptr (i32 -12 to ptr), ptr %10, align 8
  br label %14

11:                                               ; preds = %1
  tail call void @drm_fb_helper_prepare(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @tegra_fb_helper_funcs) #6
  %12 = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 8
  store ptr %5, ptr %12, align 8
  %13 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %7
  %15 = phi ptr [ inttoptr (i32 -12 to ptr), %7 ], [ %5, %11 ]
  %16 = ptrtoint ptr %15 to i32
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ 0, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_drm_fb_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fb_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_fb_helper, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @drm_fb_helper_init(ptr noundef %7, ptr noundef %5) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %8) #8
  br label %19

13:                                               ; preds = %1
  %14 = tail call i32 @drm_fb_helper_initial_config(ptr noundef %5, i32 noundef 32) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %14) #8
  tail call void @drm_fb_helper_fini(ptr noundef %5) #6
  br label %19

19:                                               ; preds = %16, %13, %10
  %20 = phi i32 [ 0, %13 ], [ %14, %16 ], [ %8, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_drm_fb_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.tegra_fbdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @drm_gem_fb_get_obj(ptr noundef nonnull %7, i32 noundef 0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tegra_bo, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_bo, ptr %10, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @vunmap(ptr noundef %18) #6
  store ptr null, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = load ptr, ptr %6, align 4
  tail call void @drm_framebuffer_remove(ptr noundef %20) #6
  br label %21

21:                                               ; preds = %19, %1
  tail call void @drm_fb_helper_fini(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fbdev_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.drm_mode_fb_cmd2, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i32 104, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %9 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %3, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  %19 = mul i32 %12, %14
  %20 = add i32 %19, -1
  %21 = getelementptr inbounds %struct.tegra_drm, ptr %8, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  %24 = or i32 %23, %20
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %3, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %10, i32 noundef %28) #6
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %3, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = mul i32 %17, %25
  %32 = tail call ptr @tegra_bo_create(ptr noundef %6, i32 noundef %31, i32 noundef 0) #6
  store ptr %32, ptr %4, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = ptrtoint ptr %32 to i32
  br label %114

36:                                               ; preds = %2
  %37 = tail call ptr @drm_fb_helper_alloc_fbi(ptr noundef %0) #6
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.3) #8
  %42 = icmp eq ptr %32, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #6, !srcloc !10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #6, !srcloc !11
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %51, label %49, !prof !12

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #6
  br label %51

50:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %32) #6
  br label %51

51:                                               ; preds = %50, %49, %47, %39
  %52 = ptrtoint ptr %37 to i32
  br label %114

53:                                               ; preds = %36
  %54 = call fastcc ptr @tegra_fb_alloc(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %55 = getelementptr inbounds %struct.tegra_fbdev, ptr %0, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i32
  %59 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.4, i32 noundef %58) #8
  %61 = icmp eq ptr %32, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #6, !srcloc !10
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #6, !srcloc !11
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !12

68:                                               ; preds = %66
  call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #6
  br label %70

69:                                               ; preds = %62
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  call void @drm_gem_object_free(ptr noundef nonnull %32) #6
  br label %70

70:                                               ; preds = %69, %68, %66, %57
  %71 = load ptr, ptr %55, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %114

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 2
  store ptr %54, ptr %74, align 4
  %75 = getelementptr inbounds %struct.drm_fb_helper, ptr %0, i32 0, i32 5
  store ptr %37, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 20
  store ptr @tegra_fb_ops, ptr %76, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %37, ptr noundef %0, ptr noundef %1) #6
  %77 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 6, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = mul i32 %78, %12
  %80 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 6, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.drm_framebuffer, ptr %54, i32 0, i32 6
  %83 = load i32, ptr %82, align 8
  %84 = mul i32 %83, %81
  %85 = add i32 %84, %79
  %86 = getelementptr inbounds %struct.tegra_bo, ptr %32, i32 0, i32 8
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.tegra_bo, ptr %32, i32 0, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr @pgprot_kernel, align 4
  %93 = and i32 %92, -573
  %94 = or i32 %93, 516
  %95 = call ptr @vmap(ptr noundef nonnull %87, i32 noundef %91, i32 noundef 4, i32 noundef %94) #6
  %96 = getelementptr inbounds %struct.tegra_bo, ptr %32, i32 0, i32 5
  store ptr %95, ptr %96, align 4
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.5) #8
  call void @drm_framebuffer_remove(ptr noundef %54) #6
  br label %114

101:                                              ; preds = %89, %73
  %102 = getelementptr inbounds %struct.tegra_bo, ptr %32, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 28
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.tegra_bo, ptr %32, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %85
  %108 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 24
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 25
  store i32 %31, ptr %109, align 4
  %110 = load i32, ptr %102, align 8
  %111 = add i32 %110, %85
  %112 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 7, i32 1
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 7, i32 2
  store i32 %31, ptr %113, align 4
  br label %114

114:                                              ; preds = %101, %98, %70, %51, %34
  %115 = phi i32 [ %35, %34 ], [ %52, %51 ], [ %72, %70 ], [ 0, %101 ], [ -12, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #6
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_bo_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fb_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %6, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @drm_gem_mmap_obj(ptr noundef %7, i32 noundef %9, ptr noundef %1) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @__tegra_gem_mmap(ptr noundef %7, ptr noundef %1) #6
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %10, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap_obj(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tegra_gem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2147938413}
!10 = !{i64 261490, i64 2147763056, i64 2147763082, i64 2147763129, i64 2147763151, i64 2147763179, i64 2147763199}
!11 = !{i64 2147840572, i64 2147840604, i64 2147840633, i64 2147840667, i64 2147840698, i64 2147840721}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149775472}
