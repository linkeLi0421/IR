; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_bo.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_bo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.77, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.78, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
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
%struct.anon.77 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.78 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.vc4_label = type { ptr, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.69 = type { ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.vc4_file = type { %struct.anon.79, i8 }
%struct.anon.79 = type { %struct.idr, %struct.mutex }
%struct.drm_vc4_create_bo = type { i32, i32, i32, i32 }
%struct.drm_vc4_mmap_bo = type { i32, i32, i64 }
%struct.drm_vc4_create_shader_bo = type { i32, i32, i64, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_vc4_set_tiling = type { i32, i32, i64 }
%struct.drm_vc4_get_tiling = type { i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_vc4_label_bo = type { i32, i32, i64 }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@vc4_create_object.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&bo->madv_lock\00", align 1
@vc4_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @vc4_free_object, ptr null, ptr null, ptr null, ptr @vc4_prime_export, ptr null, ptr null, ptr @drm_gem_cma_object_get_sg_table, ptr @drm_gem_cma_object_vmap, ptr null, ptr @vc4_gem_object_mmap, ptr @vc4_vm_ops }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate from CMA:\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016[drm] Unknown flags set: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\016[drm] Pad set: 0x%08x\0A\00", align 1
@vc4_bo_cache_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&vc4->bo_lock\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"bo_stats\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"vc4_bo_cache_destroy\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/vc4/vc4_bo.c\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%30s: %6dkb BOs (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%30s: %6zdkb BOs (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"userspace BO cache\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"total purged BO\00", align 1
@vc4_vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @vc4_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [32 x i8] c"Attempting to export shader BO\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Failed to increment BO usecnt\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"mmaping of shader BOs for writing not allowed.\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"mmaping of %s BO not allowed\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"purgeable\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"purged\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"V3D\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"V3D shader\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"binner\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"RCL\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"BCL\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"kernel BO cache\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = private unnamed_addr constant [52 x i8] c"Destroying BO cache with %d %s BOs still allocated\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_bo_add_to_purgeable_pool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %6, ptr %7, align 4
  store ptr %4, ptr %6, align 4
  %9 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  store i32 %17, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_bo_remove_from_purgeable_pool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 12, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 12, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %17, %15
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_create_object(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 304) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 10
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 9
  store volatile i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @vc4_create_object.__key) #12
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 8
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vc4_label, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.vc4_label, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %1
  store i32 %20, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef %10) #12
  %21 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 11
  store ptr @vc4_gem_object_funcs, ptr %21, align 8
  br label %22

22:                                               ; preds = %6, %2
  %23 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_bo_create(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.drm_printer, align 4
  %6 = add i32 %1, 4095
  %7 = and i32 %6, -4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %249, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %6, 12
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr %struct.list_head, ptr %18, i32 %11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %83, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %20, i32 -256
  %24 = getelementptr i8, ptr %20, i32 -12
  %25 = getelementptr i8, ptr %20, i32 -8
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = getelementptr i8, ptr %20, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  store volatile i32 1, ptr %23, align 4
  %33 = icmp eq ptr %23, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %22
  %35 = getelementptr i8, ptr %20, i32 -248
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq i32 %3, -1
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.vc4_dev, ptr %36, i32 0, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr %struct.vc4_label, ptr %40, i32 %3, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = getelementptr i8, ptr %20, i32 -112
  %45 = load i32, ptr %44, align 8
  %46 = load ptr, ptr %39, align 8
  %47 = getelementptr %struct.vc4_label, ptr %46, i32 %3, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %45
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %38, %34
  %51 = getelementptr inbounds %struct.vc4_dev, ptr %36, i32 0, i32 10
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %20, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.vc4_label, ptr %52, i32 %54, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  %58 = getelementptr i8, ptr %20, i32 -112
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %51, align 8
  %61 = load i32, ptr %53, align 4
  %62 = getelementptr %struct.vc4_label, ptr %60, i32 %61, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %63, %59
  store i32 %64, ptr %62, align 4
  %65 = load ptr, ptr %51, align 8
  %66 = load i32, ptr %53, align 4
  %67 = getelementptr %struct.vc4_label, ptr %65, i32 %66, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = icmp sgt i32 %66, 7
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %78

72:                                               ; preds = %50
  %73 = getelementptr %struct.vc4_label, ptr %65, i32 %66
  %74 = load ptr, ptr %73, align 4
  tail call void @kfree(ptr noundef %74) #12
  %75 = load ptr, ptr %51, align 8
  %76 = load i32, ptr %53, align 4
  %77 = getelementptr %struct.vc4_label, ptr %75, i32 %76
  store ptr null, ptr %77, align 4
  br label %78

78:                                               ; preds = %72, %50
  store i32 %3, ptr %53, align 4
  tail call void @mutex_unlock(ptr noundef %12) #12
  br i1 %2, label %249, label %79

79:                                               ; preds = %78
  %80 = getelementptr i8, ptr %20, i32 -40
  %81 = load ptr, ptr %80, align 8
  %82 = load i32, ptr %58, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %81, i8 0, i32 %82, i1 false)
  br label %249

83:                                               ; preds = %22, %16, %9
  tail call void @mutex_unlock(ptr noundef %12) #12
  %84 = tail call ptr @drm_gem_cma_create(ptr noundef %0, i32 noundef %7) #12
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  tail call void @mutex_lock(ptr noundef %12) #12
  %87 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2, i32 1
  br label %92

92:                                               ; preds = %92, %90
  %93 = load ptr, ptr %91, align 4
  %94 = getelementptr i8, ptr %93, i32 -244
  %95 = getelementptr i8, ptr %93, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %93, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %96, ptr %98, align 4
  store volatile ptr %97, ptr %96, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %93, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %95, align 4
  %99 = getelementptr i8, ptr %93, i32 12
  %100 = getelementptr i8, ptr %93, i32 16
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %99, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %101, ptr %103, align 4
  store volatile ptr %102, ptr %101, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %99, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %100, align 4
  tail call fastcc void @vc4_bo_destroy(ptr noundef %94) #12
  %104 = load volatile ptr, ptr %87, align 4
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %106, label %92

106:                                              ; preds = %92, %86
  tail call void @mutex_unlock(ptr noundef %12) #12
  %107 = tail call ptr @drm_gem_cma_create(ptr noundef %0, i32 noundef %7) #12
  br label %108

108:                                              ; preds = %106, %83
  %109 = phi ptr [ %107, %106 ], [ %84, %83 ]
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %194

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12
  %113 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %113) #12
  %114 = load volatile ptr, ptr %112, align 4
  %115 = icmp eq ptr %114, %112
  br i1 %115, label %192, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12, i32 4
  %118 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 12, i32 3
  br label %119

119:                                              ; preds = %189, %116
  %120 = phi ptr [ %114, %116 ], [ %190, %189 ]
  %121 = getelementptr i8, ptr %120, i32 -248
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr i8, ptr %120, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %120, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  store volatile ptr %120, ptr %120, align 4
  store ptr %120, ptr %123, align 4
  %127 = getelementptr inbounds %struct.vc4_dev, ptr %122, i32 0, i32 12, i32 1
  %128 = load i32, ptr %127, align 8
  %129 = add i32 %128, -1
  store i32 %129, ptr %127, align 8
  %130 = getelementptr i8, ptr %120, i32 -112
  %131 = load i32, ptr %130, align 8
  %132 = getelementptr inbounds %struct.vc4_dev, ptr %122, i32 0, i32 12, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = sub i32 %133, %131
  store i32 %134, ptr %132, align 4
  tail call void @mutex_unlock(ptr noundef %113) #12
  %135 = getelementptr i8, ptr %120, i32 24
  tail call void @mutex_lock(ptr noundef %135) #12
  %136 = getelementptr i8, ptr %120, i32 20
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %181

139:                                              ; preds = %119
  %140 = load volatile ptr, ptr %120, align 4
  %141 = icmp eq ptr %140, %120
  br i1 %141, label %142, label %181

142:                                              ; preds = %139
  %143 = getelementptr i8, ptr %120, i32 16
  %144 = load volatile i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %181

146:                                              ; preds = %142
  %147 = load i32, ptr %130, align 8
  %148 = load ptr, ptr %121, align 8
  %149 = tail call zeroext i1 @mutex_is_locked(ptr noundef %135) #12
  br i1 %149, label %151, label %150, !prof !8

150:                                              ; preds = %146
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 293, i32 noundef 9, ptr noundef null) #12
  br label %151

151:                                              ; preds = %150, %146
  %152 = load i32, ptr %136, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %155, label %154, !prof !8

154:                                              ; preds = %151
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 294, i32 noundef 9, ptr noundef null) #12
  br label %155

155:                                              ; preds = %154, %151
  %156 = getelementptr inbounds %struct.drm_device, ptr %148, i32 0, i32 12
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.inode, ptr %157, i32 0, i32 9
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr i8, ptr %120, i32 -128
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %155
  %165 = getelementptr i8, ptr %120, i32 -224
  %166 = load i64, ptr %165, align 8
  %167 = shl i64 %166, 12
  %168 = getelementptr i8, ptr %120, i32 -216
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = shl i32 %170, 12
  %172 = zext i32 %171 to i64
  tail call void @unmap_mapping_range(ptr noundef %159, i64 noundef %167, i64 noundef %172, i32 noundef 1) #12
  br label %173

173:                                              ; preds = %164, %155
  %174 = getelementptr inbounds %struct.drm_device, ptr %148, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = load i32, ptr %130, align 8
  %177 = getelementptr i8, ptr %120, i32 -40
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr i8, ptr %120, i32 -48
  %180 = load i32, ptr %179, align 8
  tail call void @dma_free_attrs(ptr noundef %175, i32 noundef %176, ptr noundef %178, i32 noundef %180, i32 noundef 4) #12
  store ptr null, ptr %177, align 8
  store i32 2, ptr %136, align 4
  br label %181

181:                                              ; preds = %173, %142, %139, %119
  %182 = phi i32 [ 0, %142 ], [ %147, %173 ], [ 0, %139 ], [ 0, %119 ]
  tail call void @mutex_unlock(ptr noundef %135) #12
  tail call void @mutex_lock(ptr noundef %113) #12
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr %117, align 4
  %186 = add i32 %185, %182
  store i32 %186, ptr %117, align 4
  %187 = load i32, ptr %118, align 8
  %188 = add i32 %187, 1
  store i32 %188, ptr %118, align 8
  br label %189

189:                                              ; preds = %184, %181
  %190 = load volatile ptr, ptr %112, align 4
  %191 = icmp eq ptr %190, %112
  br i1 %191, label %192, label %119

192:                                              ; preds = %189, %111
  tail call void @mutex_unlock(ptr noundef %113) #12
  %193 = tail call ptr @drm_gem_cma_create(ptr noundef %0, i32 noundef %7) #12
  br label %194

194:                                              ; preds = %192, %108
  %195 = phi ptr [ %193, %192 ], [ %109, %108 ]
  %196 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %198 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %199 = load ptr, ptr %198, align 8
  store ptr @__drm_printfn_info, ptr %5, align 4, !alias.scope !9
  %200 = getelementptr inbounds %struct.drm_printer, ptr %5, i32 0, i32 1
  store ptr null, ptr %200, align 4, !alias.scope !9
  %201 = getelementptr inbounds %struct.drm_printer, ptr %5, i32 0, i32 2
  store ptr %199, ptr %201, align 4, !alias.scope !9
  %202 = getelementptr inbounds %struct.drm_printer, ptr %5, i32 0, i32 3
  store ptr null, ptr %202, align 4, !alias.scope !9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  call fastcc void @vc4_bo_stats_print(ptr noundef nonnull %5, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %249

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.vc4_bo, ptr %195, i32 0, i32 10
  store i32 3, ptr %204, align 4
  tail call void @mutex_lock(ptr noundef %12) #12
  %205 = getelementptr inbounds %struct.drm_gem_object, ptr %195, i32 0, i32 2
  %206 = load ptr, ptr %205, align 8
  %207 = icmp eq i32 %3, -1
  br i1 %207, label %220, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.vc4_dev, ptr %206, i32 0, i32 10
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr %struct.vc4_label, ptr %210, i32 %3, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 4
  %214 = getelementptr inbounds %struct.drm_gem_object, ptr %195, i32 0, i32 5
  %215 = load i32, ptr %214, align 8
  %216 = load ptr, ptr %209, align 8
  %217 = getelementptr %struct.vc4_label, ptr %216, i32 %3, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, %215
  store i32 %219, ptr %217, align 4
  br label %220

220:                                              ; preds = %208, %203
  %221 = getelementptr inbounds %struct.vc4_dev, ptr %206, i32 0, i32 10
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds %struct.vc4_bo, ptr %195, i32 0, i32 8
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr %struct.vc4_label, ptr %222, i32 %224, i32 1
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, -1
  store i32 %227, ptr %225, align 4
  %228 = getelementptr inbounds %struct.drm_gem_object, ptr %195, i32 0, i32 5
  %229 = load i32, ptr %228, align 8
  %230 = load ptr, ptr %221, align 8
  %231 = load i32, ptr %223, align 4
  %232 = getelementptr %struct.vc4_label, ptr %230, i32 %231, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = sub i32 %233, %229
  store i32 %234, ptr %232, align 4
  %235 = load ptr, ptr %221, align 8
  %236 = load i32, ptr %223, align 4
  %237 = getelementptr %struct.vc4_label, ptr %235, i32 %236, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  %240 = icmp sgt i32 %236, 7
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %242, label %248

242:                                              ; preds = %220
  %243 = getelementptr %struct.vc4_label, ptr %235, i32 %236
  %244 = load ptr, ptr %243, align 4
  tail call void @kfree(ptr noundef %244) #12
  %245 = load ptr, ptr %221, align 8
  %246 = load i32, ptr %223, align 4
  %247 = getelementptr %struct.vc4_label, ptr %245, i32 %246
  store ptr null, ptr %247, align 4
  br label %248

248:                                              ; preds = %242, %220
  store i32 %3, ptr %223, align 4
  tail call void @mutex_unlock(ptr noundef %12) #12
  br label %249

249:                                              ; preds = %248, %197, %79, %78, %4
  %250 = phi ptr [ inttoptr (i32 -12 to ptr), %197 ], [ %195, %248 ], [ %23, %79 ], [ %23, %78 ], [ inttoptr (i32 -22 to ptr), %4 ]
  ret ptr %250
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_stats_print(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 10
  br label %8

8:                                                ; preds = %22, %6
  %9 = phi i32 [ %4, %6 ], [ %23, %22 ]
  %10 = phi i32 [ 0, %6 ], [ %24, %22 ]
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr %struct.vc4_label, ptr %11, i32 %10, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = getelementptr %struct.vc4_label, ptr %11, i32 %10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.vc4_label, ptr %11, i32 %10, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %17, i32 noundef %20, i32 noundef %13) #12
  %21 = load i32, ptr %3, align 4
  br label %22

22:                                               ; preds = %15, %8
  %23 = phi i32 [ %9, %8 ], [ %21, %15 ]
  %24 = add nuw i32 %10, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %8, label %26

26:                                               ; preds = %22, %2
  %27 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %27) #12
  %28 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %34, i32 noundef %29) #12
  br label %35

35:                                               ; preds = %31, %26
  %36 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %42, i32 noundef %37) #12
  br label %43

43:                                               ; preds = %39, %35
  tail call void @mutex_unlock(ptr noundef %27) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 7
  %10 = lshr i32 %9, 3
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %10
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %10, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i32 [ %10, %14 ], [ %12, %3 ]
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  %18 = load i64, ptr %17, align 8
  %19 = load i32, ptr %2, align 8
  %20 = mul i32 %19, %16
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %18, %21
  %23 = trunc i64 %18 to i32
  br i1 %22, label %24, label %25

24:                                               ; preds = %15
  store i64 %21, ptr %17, align 8
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %20, %24 ], [ %23, %15 ]
  %27 = tail call ptr @vc4_bo_create(ptr noundef %1, i32 noundef %26, i1 noundef zeroext false, i32 noundef 3)
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %27 to i32
  br label %44

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.vc4_bo, ptr %27, i32 0, i32 10
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %34 = tail call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %27, ptr noundef %33) #12
  %35 = icmp eq ptr %27, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #12, !srcloc !13
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #12, !srcloc !14
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef 3) #12
  br label %44

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %27) #12
  br label %44

44:                                               ; preds = %43, %42, %40, %31, %29
  %45 = phi i32 [ %30, %29 ], [ %34, %31 ], [ %34, %40 ], [ %34, %42 ], [ %34, %43 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_bo_inc_usecnt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 9
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %13, %15 ], [ %3, %1 ]
  %7 = add i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !13
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %6, i32 %7, ptr elementtype(i32) %2) #12, !srcloc !16
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %15 ], [ %6, %12 ]
  %19 = add i32 %18, 1
  %20 = or i32 %19, %18
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #12
  br label %23

23:                                               ; preds = %22, %17
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %26) #12
  %27 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %43, %30
  %34 = phi i32 [ %41, %43 ], [ %31, %30 ]
  %35 = add i32 %34, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !13
  br label %36

36:                                               ; preds = %36, %33
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %34, i32 %35, ptr elementtype(i32) %2) #12, !srcloc !16
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %36

40:                                               ; preds = %36
  %41 = extractvalue { i32, i32 } %37, 1
  %42 = icmp eq i32 %41, %34
  br i1 %42, label %45, label %43, !prof !8

43:                                               ; preds = %40
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %45, label %33

45:                                               ; preds = %43, %40, %30
  %46 = phi i32 [ 0, %30 ], [ 0, %43 ], [ %34, %40 ]
  %47 = add i32 %46, 1
  %48 = or i32 %47, %46
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50, !prof !8

50:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #12
  br label %51

51:                                               ; preds = %50, %45
  %52 = icmp eq i32 %46, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store volatile i32 1, ptr %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %25
  %55 = phi i32 [ 0, %53 ], [ 0, %51 ], [ -22, %25 ]
  tail call void @mutex_unlock(ptr noundef %26) #12
  br label %56

56:                                               ; preds = %54, %23
  %57 = phi i32 [ %55, %54 ], [ 0, %23 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_bo_dec_usecnt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 9
  %3 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %2) #12
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %5) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !14
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %33, label %11, !prof !8

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %33

12:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %13 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %18, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.vc4_dev, ptr %18, i32 0, i32 12, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %21, ptr %22, align 4
  store ptr %19, ptr %21, align 4
  %24 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vc4_dev, ptr %18, i32 0, i32 12, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.vc4_dev, ptr %18, i32 0, i32 12, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 4
  tail call void @mutex_unlock(ptr noundef %20) #12
  br label %33

33:                                               ; preds = %16, %12, %11, %9
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_create_bo_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_file, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %0, ptr noundef %10) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13, %7
  %17 = load i32, ptr %1, align 4
  %18 = tail call ptr @vc4_bo_create(ptr noundef %0, i32 noundef %17, i1 noundef zeroext false, i32 noundef 1)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  br label %35

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.vc4_bo, ptr %18, i32 0, i32 10
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_vc4_create_bo, ptr %1, i32 0, i32 2
  %25 = tail call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef %18, ptr noundef %24) #12
  %26 = icmp eq ptr %18, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #12, !srcloc !13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #12, !srcloc !14
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef 3) #12
  br label %35

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %18) #12
  br label %35

35:                                               ; preds = %34, %33, %31, %22, %20, %13, %3
  %36 = phi i32 [ %21, %20 ], [ %14, %13 ], [ %25, %22 ], [ %25, %31 ], [ %25, %33 ], [ %25, %34 ], [ -19, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_mmap_bo_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %8) #12
  br label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 4, i32 1, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = shl i64 %11, 12
  %13 = getelementptr inbounds %struct.drm_vc4_mmap_bo, ptr %1, i32 0, i32 2
  store i64 %12, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #12, !srcloc !13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #12, !srcloc !14
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #12
  br label %21

20:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #12
  br label %21

21:                                               ; preds = %20, %19, %17, %7
  %22 = phi i32 [ -22, %7 ], [ 0, %17 ], [ 0, %19 ], [ 0, %20 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_create_shader_bo_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 8
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %6, 7
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %98

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #14
  br label %98

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #14
  br label %98

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.vc4_file, ptr %5, i32 0, i32 1
  %29 = load i8, ptr %28, align 4, !range !17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %0, ptr noundef %28) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = load i32, ptr %1, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi i32 [ %35, %34 ], [ %6, %27 ]
  %38 = tail call ptr @vc4_bo_create(ptr noundef %0, i32 noundef %37, i1 noundef zeroext true, i32 noundef 2)
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = ptrtoint ptr %38 to i32
  br label %98

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vc4_bo, ptr %38, i32 0, i32 10
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %38, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %1, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = inttoptr i32 %48 to ptr
  %50 = load i32, ptr %1, align 8
  %51 = icmp slt i32 %50, 0
  %52 = load i1, ptr @check_copy_size.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !18

55:                                               ; preds = %42
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %56

56:                                               ; preds = %55, %42
  br i1 %51, label %87, label %57, !prof !18

57:                                               ; preds = %56
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %50, i32 -1090519040) #15, !srcloc !19
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68, !prof !8

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #12
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %63) #16, !srcloc !20
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  %67 = tail call i32 @arm_copy_from_user(ptr noundef %45, ptr noundef %49, i32 noundef %50) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #12, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !22
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi i32 [ %67, %61 ], [ %50, %57 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !8

71:                                               ; preds = %68
  %72 = sub i32 %50, %69
  %73 = getelementptr i8, ptr %45, i32 %72
  tail call void @llvm.memset.p0.i32(ptr align 1 %73, i8 0, i32 %69, i1 false) #12
  br label %87

74:                                               ; preds = %68
  %75 = load ptr, ptr %44, align 8
  %76 = load i32, ptr %1, align 8
  %77 = getelementptr i8, ptr %75, i32 %76
  %78 = getelementptr inbounds %struct.drm_gem_object, ptr %38, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = sub i32 %79, %76
  tail call void @llvm.memset.p0.i32(ptr align 1 %77, i8 0, i32 %80, i1 false)
  %81 = tail call ptr @vc4_validate_shader(ptr noundef %38) #12
  %82 = getelementptr inbounds %struct.vc4_bo, ptr %38, i32 0, i32 7
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %1, i32 0, i32 3
  %86 = tail call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef %38, ptr noundef %85) #12
  br label %87

87:                                               ; preds = %84, %74, %71, %56
  %88 = phi i32 [ %86, %84 ], [ -22, %74 ], [ -14, %56 ], [ -14, %71 ]
  %89 = icmp eq ptr %38, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #12, !srcloc !13
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #12, !srcloc !14
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %98, label %96, !prof !8

96:                                               ; preds = %94
  tail call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 3) #12
  br label %98

97:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %38) #12
  br label %98

98:                                               ; preds = %97, %96, %94, %87, %40, %31, %23, %21, %15, %3
  %99 = phi i32 [ -22, %15 ], [ -22, %21 ], [ %41, %40 ], [ -22, %3 ], [ %32, %31 ], [ %88, %87 ], [ %88, %94 ], [ %88, %96 ], [ %88, %97 ], [ -19, %23 ]
  ret i32 %99
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_validate_shader(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_set_tiling_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_set_tiling, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_vc4_set_tiling, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  switch i64 %9, label %28 [
    i64 0, label %11
    i64 504403158265495553, label %10
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i1 [ true, %10 ], [ false, %7 ]
  %13 = load i32, ptr %1, align 8
  %14 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %17) #12
  br label %28

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.vc4_bo, ptr %14, i32 0, i32 3
  %20 = zext i1 %12 to i8
  store i8 %20, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #12, !srcloc !13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #12, !srcloc !14
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #12
  br label %28

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #12
  br label %28

28:                                               ; preds = %27, %26, %24, %16, %7, %3
  %29 = phi i32 [ -2, %16 ], [ -22, %3 ], [ -22, %7 ], [ 0, %24 ], [ 0, %26 ], [ 0, %27 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_get_tiling_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_get_tiling, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_vc4_get_tiling, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 8
  %13 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %16) #12
  br label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.vc4_bo, ptr %13, i32 0, i32 3
  %19 = load i8, ptr %18, align 8, !range !17
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i64 0, i64 504403158265495553
  store i64 %21, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #12, !srcloc !13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #12, !srcloc !14
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %29, label %27, !prof !8

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #12
  br label %29

28:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %13) #12
  br label %29

29:                                               ; preds = %28, %27, %25, %15, %7, %3
  %30 = phi i32 [ -2, %15 ], [ -22, %7 ], [ -22, %3 ], [ 0, %25 ], [ 0, %27 ], [ 0, %28 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_bo_cache_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #13
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 9
  store i32 8, ptr %7, align 4
  store ptr @.str.21, ptr %3, align 8
  %8 = getelementptr %struct.vc4_label, ptr %3, i32 1
  store ptr @.str.22, ptr %8, align 4
  %9 = getelementptr %struct.vc4_label, ptr %3, i32 2
  store ptr @.str.23, ptr %9, align 8
  %10 = getelementptr %struct.vc4_label, ptr %3, i32 3
  store ptr @.str.24, ptr %10, align 4
  %11 = getelementptr %struct.vc4_label, ptr %3, i32 4
  store ptr @.str.25, ptr %11, align 8
  %12 = getelementptr %struct.vc4_label, ptr %3, i32 5
  store ptr @.str.26, ptr %12, align 4
  %13 = getelementptr %struct.vc4_label, ptr %3, i32 6
  store ptr @.str.27, ptr %13, align 8
  %14 = getelementptr %struct.vc4_label, ptr %3, i32 7
  store ptr @.str.28, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef nonnull @vc4_bo_cache_init.__key) #12
  tail call void @vc4_debugfs_add_file(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @vc4_bo_stats_debugfs, ptr noundef null) #12
  %16 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 3
  store i32 -32, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 3, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 3, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 3, i32 2
  store ptr @vc4_bo_cache_time_work, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 4
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @vc4_bo_cache_time_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %23 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @vc4_bo_cache_destroy, ptr noundef null, ptr noundef nonnull @.str.7) #12
  br label %24

24:                                               ; preds = %6, %1
  %25 = phi i32 [ %23, %6 ], [ -12, %1 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_bo_stats_debugfs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !23
  %9 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %9, align 4, !alias.scope !23
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %10, align 4, !alias.scope !23
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %11, align 4, !alias.scope !23
  call fastcc void @vc4_bo_stats_print(ptr noundef nonnull %3, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_bo_cache_time_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 44
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, -100
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -4
  br label %10

10:                                               ; preds = %22, %8
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 16
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = add i32 %18, 100
  %20 = tail call i32 @round_jiffies_up(i32 noundef %19) #12
  %21 = tail call i32 @mod_timer(ptr noundef %17, i32 noundef %20) #12
  br label %35

22:                                               ; preds = %10
  %23 = getelementptr i8, ptr %11, i32 -244
  %24 = getelementptr i8, ptr %11, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  %28 = getelementptr i8, ptr %11, i32 12
  %29 = getelementptr i8, ptr %11, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call fastcc void @vc4_bo_destroy(ptr noundef %23) #12
  %33 = load volatile ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %35, label %10

35:                                               ; preds = %22, %16, %1
  tail call void @mutex_unlock(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_bo_cache_time_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_bo_cache_destroy(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 4
  %4 = tail call i32 @del_timer(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 3
  %6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 8, i32 2, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 -244
  %16 = getelementptr i8, ptr %14, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr i8, ptr %14, i32 12
  %21 = getelementptr i8, ptr %14, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call fastcc void @vc4_bo_destroy(ptr noundef %15) #12
  %25 = load volatile ptr, ptr %8, align 4
  %26 = icmp eq ptr %25, %8
  br i1 %26, label %27, label %13

27:                                               ; preds = %13, %2
  tail call void @mutex_unlock(ptr noundef %7) #12
  %28 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  br label %33

33:                                               ; preds = %48, %31
  %34 = phi i32 [ 0, %31 ], [ %49, %48 ]
  %35 = load ptr, ptr %32, align 8
  %36 = getelementptr %struct.vc4_label, ptr %35, i32 %34, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr %struct.vc4_label, ptr %35, i32 %34
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %37, ptr noundef %41) #12
  br label %42

42:                                               ; preds = %39, %33
  %43 = icmp sgt i32 %34, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load ptr, ptr %32, align 8
  %46 = getelementptr %struct.vc4_label, ptr %45, i32 %34
  %47 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %47) #12
  br label %48

48:                                               ; preds = %44, %42
  %49 = add nuw i32 %34, 1
  %50 = load i32, ptr %28, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %33, label %52

52:                                               ; preds = %48, %27
  %53 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  tail call void @kfree(ptr noundef %54) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_label_bo_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_label_bo, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %120, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_vc4_label_bo, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = inttoptr i32 %10 to ptr
  %12 = add i32 %5, 1
  %13 = tail call ptr @strndup_user(ptr noundef %11, i32 noundef %12) #12
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = ptrtoint ptr %13 to i32
  br label %120

17:                                               ; preds = %7
  %18 = load i32, ptr %1, align 8
  %19 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, ptr %1, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %22) #12
  tail call void @kfree(ptr noundef %13) #12
  br label %120

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  br i1 %27, label %55, label %30

30:                                               ; preds = %40, %23
  %31 = phi i32 [ %41, %40 ], [ -1, %23 ]
  %32 = phi i32 [ %42, %40 ], [ 0, %23 ]
  %33 = getelementptr %struct.vc4_label, ptr %29, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = tail call i32 @strcmp(ptr noundef nonnull %34, ptr noundef %13) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @kfree(ptr noundef %13) #12
  br label %67

40:                                               ; preds = %36, %30
  %41 = phi i32 [ %31, %36 ], [ %32, %30 ]
  %42 = add nuw i32 %32, 1
  %43 = icmp eq i32 %42, %26
  br i1 %43, label %44, label %30

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, -1
  br i1 %45, label %55, label %46

46:                                               ; preds = %44
  %47 = getelementptr %struct.vc4_label, ptr %29, i32 %41, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !8

50:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 103, i32 noundef 9, ptr noundef null) #12
  %51 = load ptr, ptr %28, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi ptr [ %51, %50 ], [ %29, %46 ]
  %54 = getelementptr %struct.vc4_label, ptr %53, i32 %41
  store ptr %13, ptr %54, align 4
  br label %70

55:                                               ; preds = %44, %23
  %56 = add i32 %26, 1
  %57 = mul i32 %56, 12
  %58 = tail call noalias ptr @krealloc(ptr noundef %29, i32 noundef %57, i32 noundef 3264) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call void @kfree(ptr noundef %13) #12
  br label %111

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 10
  %63 = load i32, ptr %25, align 4
  store ptr %58, ptr %62, align 8
  store i32 %56, ptr %25, align 4
  %64 = getelementptr %struct.vc4_label, ptr %58, i32 %63
  store ptr %13, ptr %64, align 4
  %65 = getelementptr %struct.vc4_label, ptr %58, i32 %63, i32 1
  store i32 0, ptr %65, align 4
  %66 = getelementptr %struct.vc4_label, ptr %58, i32 %63, i32 2
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %61, %39
  %68 = phi i32 [ %32, %39 ], [ %63, %61 ]
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %111, label %70

70:                                               ; preds = %67, %52
  %71 = phi i32 [ %41, %52 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.drm_gem_object, ptr %19, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.vc4_dev, ptr %73, i32 0, i32 10
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr %struct.vc4_label, ptr %75, i32 %71, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.drm_gem_object, ptr %19, i32 0, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = load ptr, ptr %74, align 8
  %82 = getelementptr %struct.vc4_label, ptr %81, i32 %71, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %80
  store i32 %84, ptr %82, align 4
  %85 = load ptr, ptr %74, align 8
  %86 = getelementptr inbounds %struct.vc4_bo, ptr %19, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr %struct.vc4_label, ptr %85, i32 %87, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %88, align 4
  %91 = load i32, ptr %79, align 8
  %92 = load ptr, ptr %74, align 8
  %93 = load i32, ptr %86, align 4
  %94 = getelementptr %struct.vc4_label, ptr %92, i32 %93, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %95, %91
  store i32 %96, ptr %94, align 4
  %97 = load ptr, ptr %74, align 8
  %98 = load i32, ptr %86, align 4
  %99 = getelementptr %struct.vc4_label, ptr %97, i32 %98, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  %102 = icmp sgt i32 %98, 7
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %110

104:                                              ; preds = %70
  %105 = getelementptr %struct.vc4_label, ptr %97, i32 %98
  %106 = load ptr, ptr %105, align 4
  tail call void @kfree(ptr noundef %106) #12
  %107 = load ptr, ptr %74, align 8
  %108 = load i32, ptr %86, align 4
  %109 = getelementptr %struct.vc4_label, ptr %107, i32 %108
  store ptr null, ptr %109, align 4
  br label %110

110:                                              ; preds = %104, %70
  store i32 %71, ptr %86, align 4
  br label %111

111:                                              ; preds = %110, %67, %60
  %112 = phi i32 [ 0, %110 ], [ -12, %67 ], [ -12, %60 ]
  tail call void @mutex_unlock(ptr noundef %24) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #12, !srcloc !13
  %113 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #12, !srcloc !14
  %114 = extractvalue { i32, i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = icmp sgt i32 %114, 0
  br i1 %117, label %120, label %118, !prof !8

118:                                              ; preds = %116
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #12
  br label %120

119:                                              ; preds = %111
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  tail call void @drm_gem_object_free(ptr noundef nonnull %19) #12
  br label %120

120:                                              ; preds = %119, %118, %116, %21, %15, %3
  %121 = phi i32 [ %16, %15 ], [ -2, %21 ], [ -22, %3 ], [ %112, %116 ], [ %112, %118 ], [ %112, %119 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.vc4_label, ptr %5, i32 %7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr %struct.vc4_label, ptr %13, i32 %14, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %6, align 4
  %20 = getelementptr %struct.vc4_label, ptr %18, i32 %19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = icmp sgt i32 %19, 7
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = getelementptr %struct.vc4_label, ptr %18, i32 %19
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #12
  %28 = load ptr, ptr %4, align 8
  %29 = load i32, ptr %6, align 4
  %30 = getelementptr %struct.vc4_label, ptr %28, i32 %29
  store ptr null, ptr %30, align 4
  br label %31

31:                                               ; preds = %25, %1
  store i32 -1, ptr %6, align 4
  %32 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #12
  %38 = load ptr, ptr %32, align 8
  %39 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #12
  %41 = load ptr, ptr %32, align 8
  tail call void @kfree(ptr noundef %41) #12
  store ptr null, ptr %32, align 8
  br label %42

42:                                               ; preds = %35, %31
  tail call void @drm_gem_cma_free(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 9
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, ptr %13, i32 0, i32 12, i32 5
  tail call void @mutex_lock(ptr noundef %14) #12
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %17, align 4
  %21 = getelementptr inbounds %struct.vc4_dev, ptr %15, i32 0, i32 12, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.vc4_dev, ptr %15, i32 0, i32 12, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %25
  store i32 %28, ptr %26, align 4
  tail call void @mutex_unlock(ptr noundef %14) #12
  br label %29

29:                                               ; preds = %12, %8, %1
  tail call void @mutex_unlock(ptr noundef %4) #12
  %30 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call fastcc void @vc4_bo_destroy(ptr noundef %0)
  br label %196

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @vc4_bo_destroy(ptr noundef %0)
  br label %196

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call fastcc void @vc4_bo_destroy(ptr noundef %0)
  br label %196

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 12
  %49 = add nsw i32 %48, -1
  %50 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 8
  %51 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 8, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, %49
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load ptr, ptr %50, align 8
  br label %98

56:                                               ; preds = %45
  %57 = shl i32 %52, 1
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 %48) #12
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 8) #12
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %102, label %61, !prof !18

61:                                               ; preds = %56
  %62 = extractvalue { i32, i1 } %59, 0
  %63 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3264) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %102, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %51, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %85, %65
  %69 = phi i32 [ 0, %65 ], [ %88, %85 ]
  %70 = icmp ult i32 %69, %58
  br i1 %70, label %90, label %96

71:                                               ; preds = %85, %65
  %72 = phi i32 [ %87, %85 ], [ 0, %65 ]
  %73 = load ptr, ptr %50, align 8
  %74 = getelementptr %struct.list_head, ptr %73, i32 %72
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  %77 = getelementptr %struct.list_head, ptr %63, i32 %72
  br i1 %76, label %78, label %80

78:                                               ; preds = %71
  store volatile ptr %77, ptr %77, align 8
  %79 = getelementptr %struct.list_head, ptr %63, i32 %72, i32 1
  br label %85

80:                                               ; preds = %71
  store ptr %75, ptr %77, align 8
  %81 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %77, ptr %81, align 4
  %82 = getelementptr %struct.list_head, ptr %73, i32 %72, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr %struct.list_head, ptr %63, i32 %72, i32 1
  store ptr %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %80, %78
  %86 = phi ptr [ %83, %80 ], [ %79, %78 ]
  store ptr %77, ptr %86, align 4
  %87 = add nuw i32 %72, 1
  %88 = load i32, ptr %51, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %71, label %68

90:                                               ; preds = %90, %68
  %91 = phi i32 [ %94, %90 ], [ %69, %68 ]
  %92 = getelementptr %struct.list_head, ptr %63, i32 %91
  store volatile ptr %92, ptr %92, align 8
  %93 = getelementptr %struct.list_head, ptr %63, i32 %91, i32 1
  store ptr %92, ptr %93, align 4
  %94 = add i32 %91, 1
  %95 = icmp eq i32 %94, %58
  br i1 %95, label %96, label %90

96:                                               ; preds = %90, %68
  %97 = load ptr, ptr %50, align 8
  tail call void @kfree(ptr noundef %97) #12
  store ptr %63, ptr %50, align 8
  store i32 %58, ptr %51, align 4
  br label %98

98:                                               ; preds = %96, %54
  %99 = phi ptr [ %55, %54 ], [ %63, %96 ]
  %100 = getelementptr %struct.list_head, ptr %99, i32 %49
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %61, %56
  tail call fastcc void @vc4_bo_destroy(ptr noundef %0)
  br label %196

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 7
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %105, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  tail call void @kfree(ptr noundef %109) #12
  %110 = load ptr, ptr %104, align 8
  %111 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  tail call void @kfree(ptr noundef %112) #12
  %113 = load ptr, ptr %104, align 8
  tail call void @kfree(ptr noundef %113) #12
  store ptr null, ptr %104, align 8
  br label %114

114:                                              ; preds = %107, %103
  store i32 3, ptr %5, align 4
  %115 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 9
  store volatile i32 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 3
  store i8 0, ptr %116, align 8
  %117 = load volatile i32, ptr @jiffies, align 64
  %118 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 5
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6
  %120 = load ptr, ptr %100, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store ptr %120, ptr %119, align 4
  %122 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 6, i32 1
  store ptr %100, ptr %122, align 4
  store volatile ptr %119, ptr %100, align 4
  %123 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 4
  %124 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 8, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %123, ptr %126, align 4
  store ptr %125, ptr %123, align 4
  %127 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 4, i32 1
  store ptr %124, ptr %127, align 4
  store volatile ptr %123, ptr %124, align 4
  %128 = load ptr, ptr %2, align 8
  %129 = getelementptr inbounds %struct.vc4_dev, ptr %128, i32 0, i32 10
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr %struct.vc4_label, ptr %130, i32 7, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 4
  %134 = load i32, ptr %46, align 8
  %135 = load ptr, ptr %129, align 8
  %136 = getelementptr %struct.vc4_label, ptr %135, i32 7, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, %134
  store i32 %138, ptr %136, align 4
  %139 = load ptr, ptr %129, align 8
  %140 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 8
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.vc4_label, ptr %139, i32 %141, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -1
  store i32 %144, ptr %142, align 4
  %145 = load i32, ptr %46, align 8
  %146 = load ptr, ptr %129, align 8
  %147 = load i32, ptr %140, align 4
  %148 = getelementptr %struct.vc4_label, ptr %146, i32 %147, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = sub i32 %149, %145
  store i32 %150, ptr %148, align 4
  %151 = load ptr, ptr %129, align 8
  %152 = load i32, ptr %140, align 4
  %153 = getelementptr %struct.vc4_label, ptr %151, i32 %152, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  %156 = icmp sgt i32 %152, 7
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %164

158:                                              ; preds = %114
  %159 = getelementptr %struct.vc4_label, ptr %151, i32 %152
  %160 = load ptr, ptr %159, align 4
  tail call void @kfree(ptr noundef %160) #12
  %161 = load ptr, ptr %129, align 8
  %162 = load i32, ptr %140, align 4
  %163 = getelementptr %struct.vc4_label, ptr %161, i32 %162
  store ptr null, ptr %163, align 4
  br label %164

164:                                              ; preds = %158, %114
  store i32 7, ptr %140, align 4
  %165 = load volatile i32, ptr @jiffies, align 64
  %166 = add i32 %165, -100
  %167 = load volatile ptr, ptr %124, align 4
  %168 = icmp eq ptr %167, %124
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 8, i32 2, i32 1
  br label %171

171:                                              ; preds = %183, %169
  %172 = load ptr, ptr %170, align 4
  %173 = getelementptr i8, ptr %172, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = sub i32 %166, %174
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 8, i32 4
  %179 = load volatile i32, ptr @jiffies, align 64
  %180 = add i32 %179, 100
  %181 = tail call i32 @round_jiffies_up(i32 noundef %180) #12
  %182 = tail call i32 @mod_timer(ptr noundef %178, i32 noundef %181) #12
  br label %196

183:                                              ; preds = %171
  %184 = getelementptr i8, ptr %172, i32 -244
  %185 = getelementptr i8, ptr %172, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %172, align 4
  %188 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  store ptr %186, ptr %188, align 4
  store volatile ptr %187, ptr %186, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %172, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %185, align 4
  %189 = getelementptr i8, ptr %172, i32 12
  %190 = getelementptr i8, ptr %172, i32 16
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %189, align 4
  %193 = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  store ptr %191, ptr %193, align 4
  store volatile ptr %192, ptr %191, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %189, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %190, align 4
  tail call fastcc void @vc4_bo_destroy(ptr noundef %184) #12
  %194 = load volatile ptr, ptr %124, align 4
  %195 = icmp eq ptr %194, %124
  br i1 %195, label %196, label %171

196:                                              ; preds = %183, %177, %164, %102, %44, %39, %34
  tail call void @mutex_unlock(ptr noundef %30) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_prime_export(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #12
  br label %16

7:                                                ; preds = %2
  %8 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #12
  %11 = inttoptr i32 %8 to ptr
  br label %16

12:                                               ; preds = %7
  %13 = tail call ptr @drm_gem_prime_export(ptr noundef %0, i32 noundef %1) #12
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @vc4_bo_dec_usecnt(ptr noundef %0)
  br label %16

16:                                               ; preds = %15, %12, %10, %6
  %17 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %11, %10 ], [ %13, %15 ], [ %13, %12 ]
  ret ptr %17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_gem_cma_object_get_sg_table(ptr noundef %0) #7 {
  %2 = tail call ptr @drm_gem_cma_get_sg_table(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_vmap(ptr noundef %0, ptr noundef %1) #7 {
  %3 = tail call i32 @drm_gem_cma_vmap(ptr noundef %0, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_gem_object_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #12
  br label %21

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.vc4_bo, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %14, 1
  %18 = select i1 %17, ptr @.str.17, ptr @.str.18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull %18) #12
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @drm_gem_cma_mmap(ptr noundef %0, ptr noundef %1) #12
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = phi i32 [ -22, %11 ], [ -22, %16 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_export(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_get_sg_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.vc4_bo, ptr %4, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 701, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %1
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!10}
!10 = distinct !{!10, !11, !"drm_info_printer: argument 0"}
!11 = distinct !{!11, !"drm_info_printer"}
!12 = !{i64 2148253338}
!13 = !{i64 650296, i64 2148140267, i64 2148140293, i64 2148140340, i64 2148140362, i64 2148140390, i64 2148140410}
!14 = !{i64 2148155497, i64 2148155529, i64 2148155558, i64 2148155592, i64 2148155623, i64 2148155646}
!15 = !{i64 2149595213}
!16 = !{i64 636359, i64 636383, i64 636404, i64 636421, i64 636438}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2151661534, i64 2151661559}
!20 = !{i64 4157646}
!21 = !{i64 4157843}
!22 = !{i64 2151643122}
!23 = !{!24}
!24 = distinct !{!24, !25, !"drm_seq_file_printer: argument 0"}
!25 = distinct !{!25, !"drm_seq_file_printer"}
