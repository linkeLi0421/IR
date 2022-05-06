; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.78 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.81, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.81 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_map = type { %union.anon.69, i8 }
%union.anon.69 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@__UNIQUE_ID_import_ns298 = internal constant [28 x i8] c"tegra_drm.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"mapping %p stale for device %s\0A\00", align 1
@tegra_bo_vm_ops = dso_local constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @tegra_bo_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tegra_drm\00", align 1
@__const.tegra_gem_prime_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.1, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@tegra_gem_prime_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gem_prime_map_dma_buf, ptr @tegra_gem_prime_unmap_dma_buf, ptr @tegra_gem_prime_release, ptr @tegra_gem_prime_begin_cpu_access, ptr @tegra_gem_prime_end_cpu_access, ptr @tegra_gem_prime_mmap, ptr @tegra_gem_prime_vmap, ptr @tegra_gem_prime_vunmap }, align 4
@tegra_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @tegra_bo_free_object, ptr null, ptr null, ptr null, ptr @tegra_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bo_vm_ops }, align 4
@tegra_bo_ops = internal constant %struct.host1x_bo_ops { ptr @tegra_bo_get, ptr @tegra_bo_put, ptr @tegra_bo_pin, ptr @tegra_bo_unpin, ptr @tegra_bo_mmap, ptr @tegra_bo_munmap }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to allocate buffer of size %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"out of I/O virtual memory: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to map buffer\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_import_ns298], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_bo_create(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @tegra_bo_alloc_object(ptr noundef %0, i32 noundef %1)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_drm, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @drm_gem_get_pages(ptr noundef %4) #8
  %14 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 8
  store ptr %13, ptr %14, align 8
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %41

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 12
  %22 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %24, ptr noundef %13, i32 noundef %21) #8
  %26 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = ptrtoint ptr %25 to i32
  br label %38

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @dma_map_sgtable(ptr noundef %32, ptr noundef %25, i32 noundef 2, i32 noundef 0) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %26, align 4
  tail call void @sg_free_table(ptr noundef %36) #8
  %37 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %37) #8
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i32 [ %29, %28 ], [ %33, %35 ]
  %40 = load ptr, ptr %14, align 8
  tail call void @drm_gem_put_pages(ptr noundef %4, ptr noundef %40, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %41

41:                                               ; preds = %38, %16
  %42 = phi i32 [ %17, %16 ], [ %39, %38 ]
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41, %30
  %45 = tail call fastcc i32 @tegra_bo_iommu_map(ptr noundef %8, ptr noundef %4) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  tail call fastcc void @tegra_bo_free(ptr noundef %0, ptr noundef %4) #8
  br label %71

48:                                               ; preds = %6
  %49 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 4
  %54 = tail call ptr @dma_alloc_attrs(ptr noundef %52, i32 noundef %50, ptr noundef %53, i32 noundef 11456, i32 noundef 260) #8
  %55 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 5
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.2, i32 noundef %50) #9
  br label %71

59:                                               ; preds = %48, %44
  %60 = and i32 %2, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 10
  store i32 1, ptr %63, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = and i32 %2, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 8
  br label %74

71:                                               ; preds = %57, %47, %41
  %72 = phi i32 [ -12, %57 ], [ %42, %41 ], [ %45, %47 ]
  tail call void @drm_gem_object_release(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %4) #8
  %73 = inttoptr i32 %72 to ptr
  br label %74

74:                                               ; preds = %71, %67, %64, %3
  %75 = phi ptr [ %73, %71 ], [ %4, %3 ], [ %4, %67 ], [ %4, %64 ]
  ret ptr %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_bo_alloc_object(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 272) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 11
  store ptr @tegra_gem_object_funcs, ptr %7, align 8
  %8 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 1, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 1, i32 1, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 1, i32 2
  store i32 0, ptr %11, align 4
  store ptr @tegra_bo_ops, ptr %8, align 8
  %12 = add i32 %1, -1
  %13 = or i32 %12, 4095
  %14 = add i32 %13, 1
  %15 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %14) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %4) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  tail call void @drm_gem_object_release(ptr noundef nonnull %4) #8
  br label %21

21:                                               ; preds = %20, %6
  %22 = phi i32 [ %15, %6 ], [ %18, %20 ]
  tail call void @kfree(ptr noundef nonnull %4) #8
  %23 = inttoptr i32 %22 to ptr
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = phi ptr [ %23, %21 ], [ %4, %17 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_bo_create_with_handle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @tegra_bo_create(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %6, ptr noundef %4) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void @tegra_bo_free_object(ptr noundef %6)
  %12 = inttoptr i32 %9 to ptr
  br label %23

13:                                               ; preds = %8
  %14 = icmp eq ptr %6, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #8, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #8, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #8
  br label %23

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %6) #8
  br label %23

23:                                               ; preds = %22, %21, %19, %13, %11, %5
  %24 = phi ptr [ %12, %11 ], [ %6, %5 ], [ null, %13 ], [ %6, %19 ], [ %6, %21 ], [ %6, %22 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_bo_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %32, label %9

9:                                                ; preds = %30, %1
  %10 = phi ptr [ %12, %30 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -12
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr i8, ptr %10, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @host1x_bo_unpin(ptr noundef %11) #8
  br label %30

17:                                               ; preds = %9
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %10, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load ptr, ptr %22, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi ptr [ %27, %26 ], [ %24, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %11, ptr noundef %29) #9
  br label %30

30:                                               ; preds = %28, %16
  %31 = icmp eq ptr %12, %6
  br i1 %31, label %32, label %9

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %41) #8
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @iommu_unmap(ptr noundef %42, i32 noundef %44, i32 noundef %46) #8
  %48 = load ptr, ptr %37, align 8
  tail call void @drm_mm_remove_node(ptr noundef %48) #8
  tail call void @mutex_unlock(ptr noundef %41) #8
  %49 = load ptr, ptr %37, align 8
  tail call void @kfree(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %40, %36, %32
  %51 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %52, ptr noundef %56, i32 noundef 1) #8
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef null) #8
  br label %59

57:                                               ; preds = %50
  %58 = load ptr, ptr %2, align 8
  tail call fastcc void @tegra_bo_free(ptr noundef %58, ptr noundef %0)
  br label %59

59:                                               ; preds = %57, %54
  tail call void @drm_gem_object_release(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_bo_free(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %11, i32 noundef %13, i32 noundef 2, i32 noundef 0) #8
  %14 = load ptr, ptr %3, align 8
  tail call void @drm_gem_put_pages(ptr noundef %1, ptr noundef %14, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %15 = load ptr, ptr %9, align 4
  tail call void @sg_free_table(ptr noundef %15) #8
  %16 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %16) #8
  br label %28

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %19, i32 noundef %27, i32 noundef 4) #8
  br label %28

28:                                               ; preds = %21, %17, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_bo_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 7
  %10 = lshr i32 %9, 3
  %11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = add nsw i32 %10, -1
  %14 = getelementptr inbounds %struct.tegra_drm, ptr %12, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = or i32 %13, %16
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %2, align 8
  %21 = mul i32 %18, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %25 = tail call ptr @tegra_bo_create_with_handle(ptr noundef %0, ptr noundef %1, i32 noundef %21, i32 noundef 0, ptr noundef %24)
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %25 to i32
  %28 = select i1 %26, i32 %27, i32 0
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_bo_fault(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.anon.11, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = sub i32 %10, %11
  %13 = lshr i32 %12, 12
  %14 = getelementptr ptr, ptr %6, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @vm_insert_page(ptr noundef %2, i32 noundef %10, ptr noundef %15) #8
  %17 = icmp eq i32 %16, -12
  %18 = icmp slt i32 %16, 0
  %19 = icmp ne i32 %16, -16
  %20 = and i1 %18, %19
  %21 = select i1 %20, i32 2, i32 256
  %22 = select i1 %17, i32 1, i32 %21
  br label %23

23:                                               ; preds = %8, %1
  %24 = phi i32 [ %22, %8 ], [ 2, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__tegra_gem_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -1025
  store i32 %11, ptr %9, align 4
  store i32 0, ptr %7, align 4
  %12 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_bo, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 @dma_mmap_attrs(ptr noundef %15, ptr noundef %1, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 4) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  tail call void @drm_gem_vm_close(ptr noundef %1) #8
  br label %36

25:                                               ; preds = %6
  store i32 %8, ptr %7, align 4
  br label %36

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @vm_get_page_prot(i32 noundef %28) #8
  %30 = load i32, ptr %27, align 4
  %31 = and i32 %30, -268436481
  %32 = or i32 %31, 268435456
  store i32 %32, ptr %27, align 4
  %33 = and i32 %29, -61
  %34 = or i32 %33, 4
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %26, %25, %24
  %37 = phi i32 [ %22, %24 ], [ 0, %25 ], [ 0, %26 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_mmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @drm_gem_mmap(ptr noundef %0, ptr noundef %1) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_bo, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -1025
  store i32 %16, ptr %14, align 4
  store i32 0, ptr %12, align 4
  %17 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_bo, ptr %7, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tegra_bo, ptr %7, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, ptr %7, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @dma_mmap_attrs(ptr noundef %20, ptr noundef %1, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef 4) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  tail call void @drm_gem_vm_close(ptr noundef %1) #8
  br label %41

30:                                               ; preds = %11
  store i32 %13, ptr %12, align 4
  br label %41

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @vm_get_page_prot(i32 noundef %33) #8
  %35 = load i32, ptr %32, align 4
  %36 = and i32 %35, -268436481
  %37 = or i32 %36, 268435456
  store i32 %37, ptr %32, align 4
  %38 = and i32 %34, -61
  %39 = or i32 %38, 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %31, %30, %29, %2
  %42 = phi i32 [ %3, %2 ], [ %27, %29 ], [ 0, %30 ], [ 0, %31 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_prime_export(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.dma_buf_export_info, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) @__const.tegra_gem_prime_export.exp_info, i32 24, i1 false)
  store ptr @.str.1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 2
  store ptr @tegra_gem_prime_dmabuf_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 4
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dma_buf_export_info, ptr %3, i32 0, i32 6
  store ptr %0, ptr %17, align 4
  %18 = call ptr @drm_gem_dmabuf_export(ptr noundef %5, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  ret ptr %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_dmabuf_export(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_prime_import(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @tegra_gem_prime_dmabuf_ops
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !14

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %67, label %20, !prof !11

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %21) #8
  br label %67

22:                                               ; preds = %6, %2
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %1, align 4
  %26 = tail call fastcc ptr @tegra_bo_alloc_object(ptr noundef %0, i32 noundef %25) #8
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %67, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @dma_buf_attach(ptr noundef %1, ptr noundef %30) #8
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = ptrtoint ptr %31 to i32
  br label %64

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.file, ptr %37, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #8, !srcloc !9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #8, !srcloc !15
  %40 = tail call ptr @dma_buf_map_attachment(ptr noundef %31, i32 noundef 1) #8
  %41 = getelementptr inbounds %struct.tegra_bo, ptr %26, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = ptrtoint ptr %40 to i32
  br label %56

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.tegra_drm, ptr %24, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = tail call fastcc i32 @tegra_bo_iommu_map(ptr noundef %24, ptr noundef %26) #8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load ptr, ptr %41, align 4
  br label %56

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.drm_gem_object, ptr %26, i32 0, i32 8
  store ptr %31, ptr %55, align 4
  br label %67

56:                                               ; preds = %52, %43
  %57 = phi ptr [ %40, %43 ], [ %53, %52 ]
  %58 = phi i32 [ %44, %43 ], [ %50, %52 ]
  %59 = icmp eq ptr %57, null
  %60 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %61 = or i1 %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void @dma_buf_unmap_attachment(ptr noundef %31, ptr noundef nonnull %57, i32 noundef 1) #8
  br label %63

63:                                               ; preds = %62, %56
  tail call void @dma_buf_detach(ptr noundef %1, ptr noundef %31) #8
  tail call void @dma_buf_put(ptr noundef %1) #8
  br label %64

64:                                               ; preds = %63, %33
  %65 = phi i32 [ %34, %33 ], [ %58, %63 ]
  tail call void @drm_gem_object_release(ptr noundef %26) #8
  tail call void @kfree(ptr noundef %26) #8
  %66 = inttoptr i32 %65 to ptr
  br label %67

67:                                               ; preds = %64, %54, %22, %20, %16
  %68 = phi ptr [ %8, %16 ], [ %8, %20 ], [ %66, %64 ], [ %26, %54 ], [ %26, %22 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %1) #8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 1
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_bo_get(ptr noundef returned %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -208
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !14

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_bo_put(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -208
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #8, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #8, !srcloc !10
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #8
  br label %12

11:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %2) #8
  br label %12

12:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_bo_pin(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %121, label %7

7:                                                ; preds = %3
  store volatile i32 1, ptr %5, align 8
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %1) #8
  %11 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 2
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 7
  store ptr %0, ptr %13, align 8
  %14 = getelementptr i8, ptr %1, i32 -52
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %64, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr %15, align 4
  %19 = tail call ptr @dma_buf_attach(ptr noundef %18, ptr noundef %0) #8
  %20 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i32
  br label %116

24:                                               ; preds = %17
  %25 = tail call ptr @dma_buf_map_attachment(ptr noundef %19, i32 noundef %2) #8
  %26 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 5
  store ptr %25, ptr %26, align 8
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr %20, align 4
  tail call void @dma_buf_detach(ptr noundef %18, ptr noundef %29) #8
  %30 = load ptr, ptr %26, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %116

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sg_table, ptr %25, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %25, align 4
  br label %38

38:                                               ; preds = %53, %36
  %39 = phi ptr [ %57, %53 ], [ %37, %36 ]
  %40 = phi i32 [ %56, %53 ], [ 0, %36 ]
  %41 = phi i32 [ %55, %53 ], [ 0, %36 ]
  %42 = phi i32 [ %54, %53 ], [ -1, %36 ]
  %43 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %42
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = add i32 %48, %44
  %52 = add i32 %41, 1
  br label %53

53:                                               ; preds = %50, %46, %38
  %54 = phi i32 [ %51, %50 ], [ %42, %46 ], [ %42, %38 ]
  %55 = phi i32 [ %52, %50 ], [ %41, %46 ], [ %41, %38 ]
  %56 = add nuw i32 %40, 1
  %57 = tail call ptr @sg_next(ptr noundef %39) #8
  %58 = icmp eq i32 %56, %34
  br i1 %58, label %59, label %38

59:                                               ; preds = %53, %32
  %60 = phi i32 [ 0, %32 ], [ %55, %53 ]
  %61 = getelementptr i8, ptr %1, i32 -64
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 9
  store i32 %62, ptr %63, align 8
  br label %93

64:                                               ; preds = %7
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 12) #10
  %67 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 5
  store ptr %66, ptr %67, align 8
  %68 = icmp eq ptr %66, null
  br i1 %68, label %116, label %69

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %1, i32 40
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %1, i32 36
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %1, i32 -64
  %77 = load i32, ptr %76, align 8
  %78 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %66, ptr noundef nonnull %71, i32 noundef %75, i32 noundef 0, i32 noundef %77, i32 noundef -1, i32 noundef 3264) #8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %116, label %89

80:                                               ; preds = %69
  %81 = getelementptr i8, ptr %1, i32 28
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %1, i32 24
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr i8, ptr %1, i32 -64
  %86 = load i32, ptr %85, align 8
  %87 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %0, ptr noundef nonnull %66, ptr noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef 0) #8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %80, %73
  %90 = load ptr, ptr %67, align 8
  %91 = tail call i32 @dma_map_sgtable(ptr noundef %0, ptr noundef %90, i32 noundef %2, i32 noundef 0) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %89, %59
  %94 = phi i32 [ %60, %59 ], [ 0, %89 ]
  %95 = getelementptr i8, ptr %1, i32 32
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 5
  %100 = load ptr, ptr %99, align 8
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.scatterlist, ptr %101, i32 0, i32 3
  br label %105

103:                                              ; preds = %93
  %104 = getelementptr i8, ptr %1, i32 24
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi ptr [ %102, %98 ], [ %104, %103 ]
  %107 = phi i32 [ %94, %98 ], [ 1, %103 ]
  %108 = load i32, ptr %106, align 4
  %109 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 8
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 6
  store i32 %107, ptr %110, align 4
  %111 = getelementptr i8, ptr %1, i32 -64
  %112 = load i32, ptr %111, align 8
  %113 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 9
  store i32 %112, ptr %113, align 8
  br label %121

114:                                              ; preds = %89
  %115 = load ptr, ptr %67, align 8
  tail call void @sg_free_table(ptr noundef %115) #8
  br label %116

116:                                              ; preds = %114, %80, %73, %64, %28, %22
  %117 = phi i32 [ %78, %73 ], [ %91, %114 ], [ %87, %80 ], [ -12, %64 ], [ %31, %28 ], [ %23, %22 ]
  %118 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 5
  %119 = load ptr, ptr %118, align 8
  tail call void @kfree(ptr noundef %119) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  %120 = inttoptr i32 %117 to ptr
  br label %121

121:                                              ; preds = %116, %105, %3
  %122 = phi ptr [ %120, %116 ], [ %5, %105 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_bo_unpin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %3, ptr noundef %7, i32 noundef %9) #8
  %10 = load ptr, ptr %2, align 4
  %11 = load ptr, ptr %10, align 4
  tail call void @dma_buf_detach(ptr noundef %11, ptr noundef %10) #8
  br label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.sg_table, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %19, i32 noundef %21, i32 noundef %18, i32 noundef 0) #8
  %22 = load ptr, ptr %15, align 4
  tail call void @sg_free_table(ptr noundef %22) #8
  %23 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %12, %5
  %25 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.host1x_bo_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_bo_mmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !16
  %3 = getelementptr i8, ptr %0, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -52
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = call i32 @dma_buf_vmap(ptr noundef %11, ptr noundef nonnull %2) #8
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %2, align 8
  %15 = select i1 %13, ptr %14, ptr null
  br label %25

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %0, i32 40
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %0, i32 36
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @pgprot_kernel, align 4
  %22 = and i32 %21, -573
  %23 = or i32 %22, 516
  %24 = tail call ptr @vmap(ptr noundef %18, i32 noundef %20, i32 noundef 4, i32 noundef %23) #8
  br label %25

25:                                               ; preds = %16, %10, %1
  %26 = phi ptr [ %15, %10 ], [ %24, %16 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_bo_munmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !16
  store ptr %1, ptr %3, align 8
  %4 = getelementptr i8, ptr %0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  call void @dma_buf_vunmap(ptr noundef %12, ptr noundef nonnull %3) #8
  br label %14

13:                                               ; preds = %7
  tail call void @vunmap(ptr noundef %1) #8
  br label %14

14:                                               ; preds = %13, %11, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bo_iommu_map(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 112) #10
  store ptr %8, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %12, ptr noundef %13, i64 noundef %16, i64 noundef 4096, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %17) #9
  br label %45

23:                                               ; preds = %10
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.drm_mm_node, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 4
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @iommu_map_sg(ptr noundef %30, i32 noundef %27, ptr noundef %33, i32 noundef %35, i32 noundef 3) #8
  %37 = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 9
  store i32 %36, ptr %37, align 4
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4) #9
  %43 = load ptr, ptr %3, align 8
  tail call void @drm_mm_remove_node(ptr noundef %43) #8
  br label %45

44:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %48

45:                                               ; preds = %39, %19
  %46 = phi i32 [ %17, %19 ], [ -12, %39 ]
  tail call void @mutex_unlock(ptr noundef %11) #8
  %47 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %47) #8
  br label %48

48:                                               ; preds = %45, %44, %6, %2
  %49 = phi i32 [ %46, %45 ], [ 0, %44 ], [ -16, %2 ], [ -12, %6 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_gem_prime_map_dma_buf(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_bo, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tegra_bo, ptr %5, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %7, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0, i32 noundef %17, i32 noundef -1, i32 noundef 3264) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %36, label %31

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tegra_bo, ptr %5, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_bo, ptr %5, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %22, ptr noundef nonnull %7, ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef 0) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20, %13
  %32 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @dma_map_sgtable(ptr noundef %33, ptr noundef nonnull %7, i32 noundef %1, i32 noundef 0) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %20, %13
  tail call void @sg_free_table(ptr noundef nonnull %7) #8
  tail call void @kfree(ptr noundef nonnull %7) #8
  br label %37

37:                                               ; preds = %36, %31, %2
  %38 = phi ptr [ null, %36 ], [ null, %2 ], [ %7, %31 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gem_prime_unmap_dma_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dma_buf, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_bo, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %13, i32 noundef %15, i32 noundef %2, i32 noundef 0) #8
  br label %16

16:                                               ; preds = %10, %3
  tail call void @sg_free_table(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gem_prime_release(ptr noundef %0) #0 {
  tail call void @drm_gem_dmabuf_release(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_begin_cpu_access(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sg_table, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef 2) #8
  br label %18

18:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_end_cpu_access(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sg_table, ptr %14, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef 1) #8
  br label %18

18:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @drm_gem_mmap_obj(ptr noundef %4, i32 noundef %6, ptr noundef %1) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -1025
  store i32 %18, ptr %16, align 4
  store i32 0, ptr %14, align 4
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %5, align 8
  %28 = tail call i32 @dma_mmap_attrs(ptr noundef %22, ptr noundef %1, ptr noundef %24, i32 noundef %26, i32 noundef %27, i32 noundef 4) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  tail call void @drm_gem_vm_close(ptr noundef %1) #8
  br label %42

31:                                               ; preds = %13
  store i32 %15, ptr %14, align 4
  br label %42

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @vm_get_page_prot(i32 noundef %34) #8
  %36 = load i32, ptr %33, align 4
  %37 = and i32 %36, -268436481
  %38 = or i32 %37, 268435456
  store i32 %38, ptr %33, align 4
  %39 = and i32 %35, -61
  %40 = or i32 %39, 4
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %32, %31, %30, %2
  %43 = phi i32 [ %7, %2 ], [ %28, %30 ], [ 0, %31 ], [ 0, %32 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_gem_prime_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_bo, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %7, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra_gem_prime_vunmap(ptr nocapture noundef %0, ptr nocapture noundef %1) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap_obj(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2148243726}
!9 = !{i64 640684, i64 2148130655, i64 2148130681, i64 2148130728, i64 2148130750, i64 2148130778, i64 2148130798}
!10 = !{i64 2148145885, i64 2148145917, i64 2148145946, i64 2148145980, i64 2148146011, i64 2148146034}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149585601}
!13 = !{i64 2148143528, i64 2148143560, i64 2148143589, i64 2148143623, i64 2148143654, i64 2148143677}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148142070, i64 2148142096, i64 2148142125, i64 2148142159, i64 2148142190, i64 2148142213}
!16 = !{!"auto-init"}
