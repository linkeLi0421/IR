; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_fb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.msm_gem_stats = type { %struct.anon.82, %struct.anon.82, %struct.anon.82, %struct.anon.82, %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.74, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.74 = type { [4 x i8] }
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
%struct.msm_framebuffer = type { %struct.drm_framebuffer, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"fb: %dx%d@%4.4s (%2d, ID:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"   %d: offset=%d pitch=%d, obj: \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"FB[%u]: iova[%d]: %08llx (%d)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"allocating %d bytes for fb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not allocate stolen bo\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to allocate buffer object\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"stolenfb\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to allocate fb\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"create framebuffer: mode_cmd=%p (%dx%d@%4.4s)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"*ERROR* unsupported pixel format: %4.4s\0A\00", align 1
@msm_framebuffer_funcs = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @drm_atomic_helper_dirtyfb }, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"*ERROR* framebuffer init failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"create: FB ID: %d (%p)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_framebuffer_describe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.msm_gem_stats, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef %12, ptr noundef %5, i32 noundef %14, i32 noundef %16) #7
  %17 = icmp eq i8 %7, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %18, %2
  %19 = phi i32 [ %26, %18 ], [ 0, %2 ]
  %20 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 7, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 6, i32 %19
  %23 = load i32, ptr %22, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  %24 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 15, i32 %19
  %25 = load ptr, ptr %24, align 4
  call void @msm_gem_describe(ptr noundef %25, ptr noundef %1, ptr noundef nonnull %3) #7
  %26 = add nuw nsw i32 %19, 1
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_describe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_framebuffer_prepare(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  br label %15

12:                                               ; preds = %25
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %8
  br i1 %14, label %30, label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ 0, %10 ], [ %13, %12 ]
  %17 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 15, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @msm_gem_get_and_pin_iova(ptr noundef %18, ptr noundef %1, ptr noundef nonnull %3) #7
  %20 = load ptr, ptr %0, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi ptr [ %24, %22 ], [ null, %15 ]
  %27 = load i32, ptr %11, align 4
  %28 = load i64, ptr %3, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %26, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %27, i32 noundef %16, i64 noundef %28, i32 noundef %19) #7
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %12, label %30

30:                                               ; preds = %25, %12, %2
  %31 = phi i32 [ 0, %2 ], [ 0, %12 ], [ %19, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_framebuffer_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %11 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 15, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef %12, ptr noundef %1) #7
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_framebuffer_iova(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 15, i32 %2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @msm_gem_iova(ptr noundef nonnull %5, ptr noundef %1) #7
  %9 = getelementptr %struct.drm_framebuffer, ptr %0, i32 0, i32 7, i32 %2
  %10 = load i32, ptr %9, align 4
  %11 = trunc i64 %8 to i32
  %12 = add i32 %10, %11
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msm_gem_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_framebuffer_bo(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @drm_gem_fb_get_obj(ptr noundef %0, i32 noundef %1) #7
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @msm_framebuffer_format(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.msm_framebuffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_framebuffer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x ptr], align 4
  %5 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %20, label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %8
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %15 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 5, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %16) #7
  %18 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %14
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %23, label %10

20:                                               ; preds = %10, %3
  %21 = call fastcc ptr @msm_framebuffer_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %41

23:                                               ; preds = %20, %13
  %24 = phi ptr [ %21, %20 ], [ inttoptr (i32 -6 to ptr), %13 ]
  br i1 %9, label %41, label %25

25:                                               ; preds = %38, %23
  %26 = phi i32 [ %39, %38 ], [ 0, %23 ]
  %27 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #7, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #7, !srcloc !11
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !12

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #7
  br label %38

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %28) #7
  br label %38

38:                                               ; preds = %37, %36, %34, %25
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %39, %8
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %23, %20
  %42 = phi ptr [ %21, %20 ], [ %24, %23 ], [ %24, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @msm_framebuffer_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %1) #7
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 3
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef %16, i32 noundef %18, ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.msm_kms_funcs, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %19, align 4
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = tail call ptr %24(ptr noundef %8, i32 noundef %25, i64 noundef %27) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef %19) #7
  br label %161

33:                                               ; preds = %13
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 152) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %161, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.msm_framebuffer, ptr %35, i32 0, i32 1
  store ptr %28, ptr %38, align 8
  %39 = icmp ugt i8 %21, 4
  br i1 %39, label %161, label %40

40:                                               ; preds = %37
  %41 = icmp eq i8 %21, 0
  br i1 %41, label %146, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %15, align 4
  %44 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 6
  %45 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 7
  %46 = load i32, ptr %17, align 8
  %47 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 3
  %48 = add i32 %46, -1
  %49 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 0
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %48, %50
  %52 = load i8, ptr %47, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %43, %53
  %55 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 0
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %51
  %58 = add i32 %57, %54
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.drm_gem_object, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 8
  %62 = icmp ult i32 %61, %58
  br i1 %62, label %161, label %63

63:                                               ; preds = %42
  %64 = getelementptr %struct.drm_framebuffer, ptr %35, i32 0, i32 15, i32 0
  store ptr %59, ptr %64, align 4
  %65 = icmp eq i8 %21, 1
  br i1 %65, label %146, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %44, align 2
  %68 = zext i8 %67 to i32
  %69 = udiv i32 %43, %68
  %70 = load i8, ptr %45, align 1
  %71 = zext i8 %70 to i32
  %72 = udiv i32 %46, %71
  %73 = add i32 %72, -1
  %74 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = mul i32 %73, %75
  %77 = getelementptr %struct.drm_format_info, ptr %4, i32 0, i32 3, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = mul i32 %69, %79
  %81 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %76
  %84 = add i32 %83, %80
  %85 = getelementptr ptr, ptr %2, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.drm_gem_object, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = icmp ult i32 %88, %84
  br i1 %89, label %161, label %90

90:                                               ; preds = %66
  %91 = getelementptr %struct.drm_framebuffer, ptr %35, i32 0, i32 15, i32 1
  store ptr %86, ptr %91, align 8
  %92 = icmp eq i8 %21, 2
  br i1 %92, label %146, label %93

93:                                               ; preds = %90
  %94 = load i8, ptr %44, align 2
  %95 = zext i8 %94 to i32
  %96 = udiv i32 %43, %95
  %97 = load i8, ptr %45, align 1
  %98 = zext i8 %97 to i32
  %99 = udiv i32 %46, %98
  %100 = add i32 %99, -1
  %101 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %100, %102
  %104 = getelementptr %struct.drm_format_info, ptr %4, i32 0, i32 3, i32 0, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %96, %106
  %108 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, %103
  %111 = add i32 %110, %107
  %112 = getelementptr ptr, ptr %2, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.drm_gem_object, ptr %113, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  %116 = icmp ult i32 %115, %111
  br i1 %116, label %161, label %117

117:                                              ; preds = %93
  %118 = getelementptr %struct.drm_framebuffer, ptr %35, i32 0, i32 15, i32 2
  store ptr %113, ptr %118, align 4
  %119 = icmp eq i8 %21, 3
  br i1 %119, label %146, label %120

120:                                              ; preds = %117
  %121 = load i8, ptr %44, align 2
  %122 = zext i8 %121 to i32
  %123 = udiv i32 %43, %122
  %124 = load i8, ptr %45, align 1
  %125 = zext i8 %124 to i32
  %126 = udiv i32 %46, %125
  %127 = add i32 %126, -1
  %128 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = mul i32 %127, %129
  %131 = getelementptr %struct.drm_format_info, ptr %4, i32 0, i32 3, i32 0, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = mul i32 %123, %133
  %135 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, %130
  %138 = add i32 %137, %134
  %139 = getelementptr ptr, ptr %2, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.drm_gem_object, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 8
  %143 = icmp ult i32 %142, %138
  br i1 %143, label %161, label %144

144:                                              ; preds = %120
  %145 = getelementptr %struct.drm_framebuffer, ptr %35, i32 0, i32 15, i32 3
  store ptr %140, ptr %145, align 8
  br label %146

146:                                              ; preds = %144, %117, %90, %63, %40
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %1) #7
  %147 = tail call i32 @drm_framebuffer_init(ptr noundef %0, ptr noundef nonnull %35, ptr noundef nonnull @msm_framebuffer_funcs) #7
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %151, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef %147) #7
  %152 = inttoptr i32 %147 to ptr
  br label %161

153:                                              ; preds = %146
  br i1 %9, label %157, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %153
  %158 = phi ptr [ %156, %154 ], [ null, %153 ]
  %159 = getelementptr inbounds %struct.drm_framebuffer, ptr %35, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %158, i32 noundef 64, ptr noundef nonnull @.str.12, i32 noundef %160, ptr noundef nonnull %35) #7
  br label %164

161:                                              ; preds = %149, %120, %93, %66, %42, %37, %33, %30
  %162 = phi ptr [ %35, %149 ], [ null, %30 ], [ null, %33 ], [ %35, %37 ], [ %35, %120 ], [ %35, %93 ], [ %35, %66 ], [ %35, %42 ]
  %163 = phi ptr [ %152, %149 ], [ inttoptr (i32 -22 to ptr), %30 ], [ inttoptr (i32 -12 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %120 ], [ inttoptr (i32 -22 to ptr), %93 ], [ inttoptr (i32 -22 to ptr), %66 ], [ inttoptr (i32 -22 to ptr), %42 ]
  tail call void @kfree(ptr noundef %162) #7
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi ptr [ %163, %161 ], [ %35, %157 ]
  ret ptr %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_alloc_stolen_fb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.drm_mode_fb_cmd2, align 8
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #7
  %8 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 2
  store i32 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 3
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %6, i32 0, i32 6
  store i32 %3, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %12 = mul i32 %3, %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %15) #7
  %16 = tail call ptr @msm_gem_new(ptr noundef %0, i32 noundef %12, i32 noundef 268566529) #7
  store ptr %16, ptr %7, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.4) #9
  %21 = tail call ptr @msm_gem_new(ptr noundef %0, i32 noundef %12, i32 noundef 131073) #7
  store ptr %21, ptr %7, align 4
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi ptr [ %21, %18 ], [ %16, %5 ]
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  br label %43

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %23, ptr noundef nonnull @.str.7) #7
  %29 = call fastcc ptr @msm_framebuffer_init(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #7
  %34 = icmp eq ptr %23, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #7, !srcloc !10
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #7, !srcloc !11
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !12

41:                                               ; preds = %39
  call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef 3) #7
  br label %43

42:                                               ; preds = %35
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  call void @drm_gem_object_free(ptr noundef nonnull %23) #7
  br label %43

43:                                               ; preds = %42, %41, %39, %31, %28, %25
  %44 = phi ptr [ %23, %25 ], [ %29, %28 ], [ %29, %31 ], [ %29, %39 ], [ %29, %41 ], [ %29, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #7
  ret ptr %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2148197162}
!10 = !{i64 593311, i64 2148083282, i64 2148083308, i64 2148083355, i64 2148083377, i64 2148083405, i64 2148083425}
!11 = !{i64 2148099309, i64 2148099341, i64 2148099370, i64 2148099404, i64 2148099435, i64 2148099458}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149535804}
