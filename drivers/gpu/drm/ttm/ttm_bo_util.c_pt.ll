; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_bo_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_bo_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_move_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_move_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_move_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_move_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_move_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_move_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_io_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_io_prot\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_io_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_kmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_kmap\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_kmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_kunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_kunmap\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_kunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_bo_move_accel_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_bo_move_accel_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_bo_move_accel_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_global = type { ptr, %struct.list_head, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.63] }
%struct.anon.63 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_map = type { %union.anon.62, i8 }
%union.anon.62 = type { ptr }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
%union.anon.70 = type { %struct.ttm_kmap_iter_linear_io }
%struct.ttm_kmap_iter_linear_io = type { %struct.ttm_kmap_iter, %struct.dma_buf_map, i8 }
%struct.ttm_kmap_iter = type { ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.61, i64, i64, i32, %struct.kref, i32 }
%union.anon.61 = type { i64 }
%struct.ttm_transfer_obj = type { %struct.ttm_buffer_object, ptr }

@__kstrtab_ttm_move_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_move_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_move_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_move_memcpy to i32), ptr @__kstrtab_ttm_move_memcpy, ptr @__kstrtabns_ttm_move_memcpy }, section "___ksymtab+ttm_move_memcpy", align 4
@__kstrtab_ttm_bo_move_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_move_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_move_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_move_memcpy to i32), ptr @__kstrtab_ttm_bo_move_memcpy, ptr @__kstrtabns_ttm_bo_move_memcpy }, section "___ksymtab+ttm_bo_move_memcpy", align 4
@__kstrtab_ttm_io_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_io_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_io_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_io_prot to i32), ptr @__kstrtab_ttm_io_prot, ptr @__kstrtabns_ttm_io_prot }, section "___ksymtab+ttm_io_prot", align 4
@__kstrtab_ttm_bo_kmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_kmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_kmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_kmap to i32), ptr @__kstrtab_ttm_bo_kmap, ptr @__kstrtabns_ttm_bo_kmap }, section "___ksymtab+ttm_bo_kmap", align 4
@__kstrtab_ttm_bo_kunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_kunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_kunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_kunmap to i32), ptr @__kstrtab_ttm_bo_kunmap, ptr @__kstrtabns_ttm_bo_kunmap }, section "___ksymtab+ttm_bo_kunmap", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_ttm_bo_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vmap to i32), ptr @__kstrtab_ttm_bo_vmap, ptr @__kstrtabns_ttm_bo_vmap }, section "___ksymtab+ttm_bo_vmap", align 4
@__kstrtab_ttm_bo_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_vunmap to i32), ptr @__kstrtab_ttm_bo_vunmap, ptr @__kstrtabns_ttm_bo_vunmap }, section "___ksymtab+ttm_bo_vunmap", align 4
@__kstrtab_ttm_bo_move_accel_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_bo_move_accel_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_bo_move_accel_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_bo_move_accel_cleanup to i32), ptr @__kstrtab_ttm_bo_move_accel_cleanup, ptr @__kstrtabns_ttm_bo_move_accel_cleanup }, section "___ksymtab+ttm_bo_move_accel_cleanup", align 4
@ttm_bo_pipeline_gutting.sys_mem = internal constant %struct.ttm_place zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@ttm_glob = external dso_local global %struct.ttm_global, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/ttm/ttm_bo_util.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ttm_bo_kmap, ptr @__ksymtab_ttm_bo_kunmap, ptr @__ksymtab_ttm_bo_move_accel_cleanup, ptr @__ksymtab_ttm_bo_move_memcpy, ptr @__ksymtab_ttm_bo_vmap, ptr @__ksymtab_ttm_bo_vunmap, ptr @__ksymtab_ttm_io_prot, ptr @__ksymtab_ttm_move_memcpy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_mem_io_reserve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 2
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ttm_device_funcs, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #6
  br label %19

19:                                               ; preds = %17, %10, %6, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %6 ], [ 0, %2 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_mem_io_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ttm_device_funcs, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %19

19:                                               ; preds = %18, %12
  store i32 0, ptr %6, align 4
  store ptr null, ptr %5, align 4
  br label %20

20:                                               ; preds = %19, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_move_memcpy(i1 noundef zeroext %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.dma_buf_map, align 8
  %6 = alloca %struct.dma_buf_map, align 8
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %7, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %12, %4
  %17 = icmp eq i32 %1, 0
  br i1 %0, label %22, label %18

18:                                               ; preds = %16
  br i1 %17, label %55, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %7, i32 0, i32 1
  br label %41

22:                                               ; preds = %16
  br i1 %17, label %55, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.dma_buf_map, ptr %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %7, i32 0, i32 1
  br label %26

26:                                               ; preds = %38, %23
  %27 = phi i32 [ 0, %23 ], [ %39, %38 ]
  %28 = load ptr, ptr %7, align 4
  call void %28(ptr noundef %2, ptr noundef nonnull %6, i32 noundef %27) #6
  %29 = load i8, ptr %24, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr %6, align 8
  br i1 %30, label %33, label %32

32:                                               ; preds = %26
  call void @mmioset(ptr noundef %31, i32 noundef 0, i32 noundef 4096) #6
  br label %34

33:                                               ; preds = %26
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %31, i8 0, i32 4096, i1 false)
  br label %34

34:                                               ; preds = %33, %32
  %35 = load ptr, ptr %25, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void %35(ptr noundef %2, ptr noundef nonnull %6) #6
  br label %38

38:                                               ; preds = %37, %34
  %39 = add nuw i32 %27, 1
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %55, label %26

41:                                               ; preds = %52, %19
  %42 = phi i32 [ 0, %19 ], [ %53, %52 ]
  %43 = load ptr, ptr %7, align 4
  call void %43(ptr noundef %2, ptr noundef nonnull %6, i32 noundef %42) #6
  %44 = load ptr, ptr %8, align 4
  call void %44(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %42) #6
  call void @drm_memcpy_from_wc(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 4096) #6
  %45 = load ptr, ptr %20, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  call void %45(ptr noundef %3, ptr noundef nonnull %5) #6
  br label %48

48:                                               ; preds = %47, %41
  %49 = load ptr, ptr %21, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void %49(ptr noundef %2, ptr noundef nonnull %6) #6
  br label %52

52:                                               ; preds = %51, %48
  %53 = add nuw i32 %42, 1
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %55, label %41

55:                                               ; preds = %52, %38, %22, %18, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_memcpy_from_wc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_move_memcpy(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %union.anon.70, align 4
  %5 = alloca %union.anon.70, align 4
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.ttm_device, ptr %7, i32 0, i32 3, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ttm_device, ptr %7, i32 0, i32 3, i32 %17
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %20 = icmp ne ptr %13, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ttm_resource_manager, ptr %11, i32 0, i32 1
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = tail call i32 @ttm_tt_populate(ptr noundef %7, ptr noundef nonnull %13, ptr noundef %1) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %30, %26, %3
  %34 = call ptr @ttm_kmap_iter_linear_io_init(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %2) #6
  %35 = icmp eq ptr %34, inttoptr (i32 -22 to ptr)
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ttm_resource_manager, ptr %11, i32 0, i32 1
  %38 = load i8, ptr %37, align 1, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 8
  %42 = call ptr @ttm_kmap_iter_tt_init(ptr noundef nonnull %4, ptr noundef %41) #6
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi ptr [ %42, %40 ], [ %34, %33 ]
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %44, %43 ], [ inttoptr (i32 -22 to ptr), %36 ]
  %48 = ptrtoint ptr %47 to i32
  br label %106

49:                                               ; preds = %43
  %50 = call ptr @ttm_kmap_iter_linear_io_init(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %15) #6
  %51 = icmp eq ptr %50, inttoptr (i32 -22 to ptr)
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ttm_resource_manager, ptr %19, i32 0, i32 1
  %54 = load i8, ptr %53, align 1, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %12, align 8
  %58 = call ptr @ttm_kmap_iter_tt_init(ptr noundef nonnull %5, ptr noundef %57) #6
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi ptr [ %58, %56 ], [ %50, %49 ]
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %52
  %63 = phi ptr [ %60, %59 ], [ inttoptr (i32 -22 to ptr), %52 ]
  %64 = ptrtoint ptr %63 to i32
  br label %99

65:                                               ; preds = %59
  %66 = load ptr, ptr %60, align 4
  %67 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %66, i32 0, i32 2
  %68 = load i8, ptr %67, align 4, !range !9
  %69 = icmp eq i8 %68, 0
  %70 = xor i1 %20, true
  %71 = select i1 %69, i1 true, i1 %70
  %72 = xor i1 %69, true
  br i1 %71, label %77, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, -1
  br label %77

77:                                               ; preds = %73, %65
  %78 = phi i1 [ %72, %65 ], [ %76, %73 ]
  %79 = select i1 %78, i1 %20, i1 false
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ttm_tt, ptr %13, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80, %77
  %86 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  call void @ttm_move_memcpy(i1 noundef zeroext %78, i32 noundef %87, ptr noundef %44, ptr noundef %60)
  %88 = load ptr, ptr %60, align 4
  %89 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %88, i32 0, i32 2
  %90 = load i8, ptr %89, align 4, !range !9
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i8 [ %90, %85 ], [ %68, %80 ]
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void @ttm_kmap_iter_linear_io_fini(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %15) #6
  br label %95

95:                                               ; preds = %94, %91
  %96 = call i32 @ttm_bo_move_accel_cleanup(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %2) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !10

98:                                               ; preds = %95
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef null) #6
  br label %99

99:                                               ; preds = %98, %95, %62
  %100 = phi i32 [ %64, %62 ], [ 0, %95 ], [ 0, %98 ]
  %101 = load ptr, ptr %44, align 4
  %102 = getelementptr inbounds %struct.ttm_kmap_iter_ops, ptr %101, i32 0, i32 2
  %103 = load i8, ptr %102, align 4, !range !9
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  call void @ttm_kmap_iter_linear_io_fini(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %2) #6
  br label %106

106:                                              ; preds = %105, %99, %46, %30
  %107 = phi i32 [ %48, %46 ], [ %31, %30 ], [ %100, %105 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_tt_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ttm_kmap_iter_linear_io_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ttm_kmap_iter_tt_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_kmap_iter_linear_io_fini(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_io_prot(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.ttm_device, ptr %7, i32 0, i32 3, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ttm_tt, ptr %15, i32 0, i32 6
  br label %19

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 4, i32 3
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @ttm_prot_from_caching(i32 noundef %21, i32 noundef %2) #6
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_prot_from_caching(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_kmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.ttm_operation_ctx, align 8
  store ptr null, ptr %3, align 4
  %6 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 3
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %2
  %12 = add i32 %2, %1
  %13 = icmp ugt i32 %12, %10
  %14 = or i1 %11, %13
  br i1 %14, label %131, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 4, i32 2
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ttm_device_funcs, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = tail call i32 %30(ptr noundef %17, ptr noundef %8) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %32, %25, %21, %15
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 4, i32 2
  %38 = load i8, ptr %37, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %103

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #6
  %41 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !11

44:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/ttm/ttm_bo_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

45:                                               ; preds = %40
  %46 = load ptr, ptr %16, align 8
  %47 = call i32 @ttm_tt_populate(ptr noundef %46, ptr noundef nonnull %42, ptr noundef nonnull %5) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %45
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ttm_tt, ptr %42, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 2
  store i32 3, ptr %56, align 4
  %57 = load ptr, ptr %42, align 4
  %58 = getelementptr ptr, ptr %57, i32 %1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = load i32, ptr %59, align 4
  %62 = lshr i32 %61, 30
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = icmp ne i32 %62, 3
  %66 = load i32, ptr @movable_zone, align 4
  %67 = icmp ne i32 %66, 2
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call ptr @page_address(ptr noundef %59) #6
  br label %97

71:                                               ; preds = %64, %55
  %72 = call ptr @kmap_high(ptr noundef %59) #6
  br label %97

73:                                               ; preds = %51, %49
  %74 = load i32, ptr @pgprot_kernel, align 4
  %75 = or i32 %74, 512
  %76 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %16, align 8
  %79 = getelementptr %struct.ttm_device, ptr %78, i32 0, i32 3, i32 %77
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ttm_resource_manager, ptr %80, i32 0, i32 1
  %82 = load i8, ptr %81, align 1, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load ptr, ptr %41, align 8
  %86 = getelementptr inbounds %struct.ttm_tt, ptr %85, i32 0, i32 6
  br label %89

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 4, i32 3
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi ptr [ %86, %84 ], [ %88, %87 ]
  %91 = load i32, ptr %90, align 4
  %92 = call i32 @ttm_prot_from_caching(i32 noundef %91, i32 noundef %75) #6
  %93 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 2
  store i32 2, ptr %93, align 4
  %94 = load ptr, ptr %42, align 4
  %95 = getelementptr ptr, ptr %94, i32 %1
  %96 = call ptr @vmap(ptr noundef %95, i32 noundef %2, i32 noundef 0, i32 noundef %92) #6
  br label %97

97:                                               ; preds = %89, %71, %69
  %98 = phi ptr [ %96, %89 ], [ %72, %71 ], [ %70, %69 ]
  store ptr %98, ptr %3, align 4
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, i32 -12, i32 0
  br label %101

101:                                              ; preds = %97, %45
  %102 = phi i32 [ %100, %97 ], [ %47, %45 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  br label %131

103:                                              ; preds = %35
  %104 = shl i32 %1, 12
  %105 = shl i32 %2, 12
  %106 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 2
  store i32 132, ptr %110, align 4
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr inbounds %struct.ttm_resource, ptr %111, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %104
  br label %127

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 4, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, %104
  %119 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %3, i32 0, i32 2
  store i32 129, ptr %119, align 4
  %120 = getelementptr inbounds %struct.ttm_resource, ptr %36, i32 0, i32 4, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = tail call ptr @ioremap_wc(i32 noundef %118, i32 noundef %105) #6
  br label %127

125:                                              ; preds = %115
  %126 = tail call ptr @ioremap(i32 noundef %118, i32 noundef %105) #6
  br label %127

127:                                              ; preds = %125, %123, %109
  %128 = phi ptr [ %114, %109 ], [ %126, %125 ], [ %124, %123 ]
  store ptr %128, ptr %3, align 4
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, i32 -12, i32 0
  br label %131

131:                                              ; preds = %127, %101, %32, %4
  %132 = phi i32 [ %130, %127 ], [ %102, %101 ], [ -22, %4 ], [ %33, %32 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_bo_kunmap(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 2, label %8
    i32 3, label %9
    i32 132, label %22
  ]

7:                                                ; preds = %4
  tail call void @iounmap(ptr noundef nonnull %2) #6
  br label %22

8:                                                ; preds = %4
  tail call void @vunmap(ptr noundef nonnull %2) #6
  br label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 30
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = icmp ne i32 %13, 3
  %17 = load i32, ptr @movable_zone, align 4
  %18 = icmp ne i32 %17, 2
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %9
  tail call void @kunmap_high(ptr noundef %11) #6
  br label %22

21:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/ttm/ttm_bo_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 380, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

22:                                               ; preds = %20, %15, %8, %7, %4
  %23 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ttm_buffer_object, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, ptr %24, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ttm_resource, ptr %28, i32 0, i32 4
  %32 = getelementptr inbounds %struct.ttm_resource, ptr %28, i32 0, i32 4, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.ttm_device_funcs, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void %42(ptr noundef %26, ptr noundef nonnull %28) #6
  br label %45

45:                                               ; preds = %44, %38
  store i32 0, ptr %32, align 4
  store ptr null, ptr %31, align 4
  br label %46

46:                                               ; preds = %45, %35, %22
  store ptr null, ptr %0, align 4
  %47 = getelementptr inbounds %struct.ttm_bo_kmap_obj, ptr %0, i32 0, i32 1
  store ptr null, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.ttm_operation_ctx, align 8
  %4 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 2
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ttm_device, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ttm_device_funcs, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = tail call i32 %20(ptr noundef %7, ptr noundef %5) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %22, %15, %11, %2
  %26 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 2
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = load i32, ptr %8, align 4
  %38 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  br i1 %36, label %40, label %42

40:                                               ; preds = %33
  %41 = tail call ptr @ioremap_wc(i32 noundef %37, i32 noundef %39) #6
  br label %44

42:                                               ; preds = %33
  %43 = tail call ptr @ioremap(i32 noundef %37, i32 noundef %39) #6
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %41, %40 ], [ %43, %42 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %85, label %47

47:                                               ; preds = %44, %29
  %48 = phi ptr [ %45, %44 ], [ %31, %29 ]
  store ptr %48, ptr %1, align 4
  %49 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 1, ptr %49, align 4
  br label %85

50:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %51 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = call i32 @ttm_tt_populate(ptr noundef %53, ptr noundef %52, ptr noundef nonnull %3) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load i32, ptr @pgprot_kernel, align 4
  %58 = or i32 %57, 512
  %59 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr %struct.ttm_device, ptr %61, i32 0, i32 3, i32 %60
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ttm_resource_manager, ptr %63, i32 0, i32 1
  %65 = load i8, ptr %64, align 1, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load ptr, ptr %51, align 8
  %69 = getelementptr inbounds %struct.ttm_tt, ptr %68, i32 0, i32 6
  br label %72

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 3
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi ptr [ %69, %67 ], [ %71, %70 ]
  %74 = load i32, ptr %73, align 4
  %75 = call i32 @ttm_prot_from_caching(i32 noundef %74, i32 noundef %58) #6
  %76 = load ptr, ptr %52, align 4
  %77 = getelementptr inbounds %struct.ttm_tt, ptr %52, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = call ptr @vmap(ptr noundef %76, i32 noundef %78, i32 noundef 0, i32 noundef %75) #6
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %72, %50
  %82 = phi i32 [ -12, %72 ], [ %54, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %85

83:                                               ; preds = %72
  store ptr %79, ptr %1, align 4
  %84 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %84, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %85

85:                                               ; preds = %83, %81, %47, %44, %22
  %86 = phi i32 [ %23, %22 ], [ -12, %44 ], [ %82, %81 ], [ 0, %83 ], [ 0, %47 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_bo_vunmap(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @vunmap(ptr noundef nonnull %5) #6
  br label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @iounmap(ptr noundef nonnull %5) #6
  br label %17

17:                                               ; preds = %16, %12, %11
  %18 = load i8, ptr %8, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  store ptr null, ptr %1, align 4
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8 0, ptr %8, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.ttm_device_funcs, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef %23, ptr noundef nonnull %24) #6
  br label %41

41:                                               ; preds = %40, %34
  store i32 0, ptr %28, align 4
  store ptr null, ptr %27, align 4
  br label %42

42:                                               ; preds = %41, %31, %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_move_accel_cleanup(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.ttm_device, ptr %8, i32 0, i32 3, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ttm_device, ptr %8, i32 0, i32 3, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  tail call void @dma_resv_add_excl_fence(ptr noundef %20, ptr noundef %1) #6
  br i1 %2, label %58, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.ttm_resource_manager, ptr %18, i32 0, i32 1
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #6, !srcloc !15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #6, !srcloc !16
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #6
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %29) #6
  br label %37

37:                                               ; preds = %36, %35, %33, %21
  %38 = icmp eq ptr %1, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #6, !srcloc !15
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #6, !srcloc !18
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !11

44:                                               ; preds = %39
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %50, label %48, !prof !10

48:                                               ; preds = %44, %39
  %49 = phi i32 [ 2, %39 ], [ 1, %44 ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %49) #6
  br label %50

50:                                               ; preds = %48, %44, %37
  store ptr %1, ptr %25, align 8
  %51 = call fastcc i32 @ttm_buffer_object_transfer(ptr noundef %0, ptr noundef nonnull %6) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %157

53:                                               ; preds = %50
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.drm_gem_object, ptr %54, i32 0, i32 10
  tail call void @dma_resv_add_excl_fence(ptr noundef %55, ptr noundef %1) #6
  %56 = select i1 %24, ptr %0, ptr %54
  %57 = getelementptr inbounds %struct.ttm_buffer_object, ptr %56, i32 0, i32 7
  store ptr null, ptr %57, align 8
  store ptr null, ptr %9, align 4
  tail call void @ww_mutex_unlock(ptr noundef %55) #6
  tail call void @ttm_bo_put(ptr noundef %54) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %158

58:                                               ; preds = %5
  %59 = getelementptr inbounds %struct.ttm_resource_manager, ptr %14, i32 0, i32 1
  %60 = load i8, ptr %59, align 1, !range !9
  %61 = icmp eq i8 %60, 0
  %62 = and i1 %61, %3
  br i1 %62, label %63, label %148

63:                                               ; preds = %58
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.ttm_resource, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %7, align 8
  %68 = getelementptr %struct.ttm_device, ptr %67, i32 0, i32 3, i32 %66
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ttm_resource_manager, ptr %69, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %70) #6
  %71 = getelementptr inbounds %struct.ttm_resource_manager, ptr %69, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %105, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds %struct.dma_fence, ptr %72, i32 0, i32 3
  %78 = load i64, ptr %77, align 8
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %81, label %80, !prof !10

80:                                               ; preds = %74
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 475, i32 noundef 9, ptr noundef null) #6
  br label %119

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dma_fence, ptr %72, i32 0, i32 4
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load i8, ptr %87, align 4, !range !9
  %89 = icmp eq i8 %88, 0
  %90 = icmp ugt i64 %83, %85
  %91 = trunc i64 %83 to i32
  %92 = trunc i64 %85 to i32
  %93 = sub i32 %91, %92
  %94 = icmp sgt i32 %93, 0
  %95 = select i1 %89, i1 %94, i1 %90
  br i1 %95, label %96, label %119

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.dma_fence, ptr %72, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #6, !srcloc !15
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #6, !srcloc !16
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %105, label %103, !prof !10

103:                                              ; preds = %101
  tail call void @refcount_warn_saturate(ptr noundef %97, i32 noundef 3) #6
  br label %105

104:                                              ; preds = %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %97) #6
  br label %105

105:                                              ; preds = %104, %103, %101, %63
  %106 = icmp eq ptr %1, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #6, !srcloc !15
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #6, !srcloc !18
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112, !prof !11

112:                                              ; preds = %107
  %113 = add i32 %110, 1
  %114 = or i32 %113, %110
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %118, label %116, !prof !10

116:                                              ; preds = %112, %107
  %117 = phi i32 [ 2, %107 ], [ 1, %112 ]
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef %117) #6
  br label %118

118:                                              ; preds = %116, %112, %105
  store ptr %1, ptr %71, align 8
  br label %119

119:                                              ; preds = %118, %81, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %120 = load i16, ptr %70, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  tail call void @ttm_resource_free(ptr noundef %0, ptr noundef %9) #6
  %122 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 11
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.dma_fence, ptr %123, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #6, !srcloc !15
  %127 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #6, !srcloc !16
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %134, label %132, !prof !10

132:                                              ; preds = %130
  tail call void @refcount_warn_saturate(ptr noundef %126, i32 noundef 3) #6
  br label %134

133:                                              ; preds = %125
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %126) #6
  br label %134

134:                                              ; preds = %133, %132, %130, %119
  %135 = icmp eq ptr %1, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #6, !srcloc !15
  %138 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #6, !srcloc !18
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141, !prof !11

141:                                              ; preds = %136
  %142 = add i32 %139, 1
  %143 = or i32 %142, %139
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %147, label %145, !prof !10

145:                                              ; preds = %141, %136
  %146 = phi i32 [ 2, %136 ], [ 1, %141 ]
  tail call void @refcount_warn_saturate(ptr noundef %137, i32 noundef %146) #6
  br label %147

147:                                              ; preds = %145, %141, %134
  store ptr %1, ptr %122, align 8
  br label %158

148:                                              ; preds = %58
  %149 = getelementptr inbounds %struct.ttm_resource_manager, ptr %18, i32 0, i32 1
  %150 = load i8, ptr %149, align 1, !range !9
  %151 = tail call i32 @ttm_bo_wait(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = icmp eq i8 %150, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %153
  tail call void @ttm_bo_tt_destroy(ptr noundef %0) #6
  br label %156

156:                                              ; preds = %155, %153
  tail call void @ttm_resource_free(ptr noundef %0, ptr noundef %9) #6
  br label %158

157:                                              ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %163

158:                                              ; preds = %156, %147, %53
  %159 = load ptr, ptr %9, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161, !prof !10

161:                                              ; preds = %158
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #6
  br label %162

162:                                              ; preds = %161, %158
  store ptr %4, ptr %9, align 4
  br label %163

163:                                              ; preds = %162, %157, %148
  %164 = phi i32 [ 0, %162 ], [ %51, %157 ], [ %151, %148 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_bo_pipeline_gutting(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = call i32 @ttm_resource_alloc(ptr noundef %0, ptr noundef nonnull @ttm_bo_pipeline_gutting.sys_mem, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  %7 = call i32 @ttm_bo_wait(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %8 = icmp eq i32 %7, -16
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  br i1 %8, label %34, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = call i32 @ttm_tt_create(ptr noundef %0, i1 noundef zeroext true) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %56

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  call void @ttm_tt_unpopulate(ptr noundef %18, ptr noundef nonnull %10) #6
  %19 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds %struct.ttm_tt, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %16, %13
  %28 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  call void @ttm_resource_free(ptr noundef %0, ptr noundef %28) #6
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %28, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !10

32:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #6
  br label %33

33:                                               ; preds = %32, %27
  store ptr %29, ptr %28, align 4
  br label %58

34:                                               ; preds = %6
  store ptr null, ptr %9, align 8
  %35 = call i32 @ttm_tt_create(ptr noundef %0, i1 noundef zeroext true) #6
  %36 = load ptr, ptr %9, align 8
  store ptr %10, ptr %9, align 8
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = call fastcc i32 @ttm_buffer_object_transfer(ptr noundef %0, ptr noundef nonnull %2)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.drm_gem_object, ptr %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @dma_resv_copy_fences(ptr noundef %43, ptr noundef %45) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @ttm_bo_wait(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %50

50:                                               ; preds = %48, %41
  call void @ww_mutex_unlock(ptr noundef %43) #6
  call void @ttm_bo_put(ptr noundef %42) #6
  store ptr %36, ptr %9, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %52 = load ptr, ptr %3, align 4
  store ptr %52, ptr %51, align 4
  br label %58

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  call void @ttm_tt_destroy(ptr noundef %55, ptr noundef %36) #6
  br label %56

56:                                               ; preds = %53, %34, %13
  %57 = phi i32 [ %14, %13 ], [ %35, %34 ], [ %39, %53 ]
  call void @ttm_resource_free(ptr noundef %0, ptr noundef nonnull %3) #6
  br label %58

58:                                               ; preds = %56, %50, %33, %1
  %59 = phi i32 [ 0, %33 ], [ %57, %56 ], [ 0, %50 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_tt_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_unpopulate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ttm_buffer_object_transfer(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 280) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef align 8 dereferenceable(272) %0, i32 272, i1 false)
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #6, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #6, !srcloc !18
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #6
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.ttm_transfer_obj, ptr %4, i32 0, i32 1
  store ptr %0, ptr %18, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2)) #6, !srcloc !15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2), ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2)) #6, !srcloc !23
  %20 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 10
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 10, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 9
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 9, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 11
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(128) %25, i8 0, i64 128, i1 false) #6
  %26 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 5
  store volatile i32 1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 4
  store ptr @ttm_transfered_destroy, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 13
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 10
  %34 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 9
  store ptr %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %32, %17
  %36 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 10
  tail call void @dma_resv_init(ptr noundef %36) #6
  %37 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 2
  store ptr null, ptr %37, align 8
  %38 = tail call i32 @ww_mutex_trylock(ptr noundef %36, ptr noundef null) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 247, i32 noundef 9, ptr noundef null) #6
  br label %41

41:                                               ; preds = %40, %35
  %42 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ttm_device, ptr %43, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %44) #6
  %45 = getelementptr inbounds %struct.ttm_buffer_object, ptr %4, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %4, ptr noundef %46, ptr noundef null) #6
  %47 = load ptr, ptr %42, align 8
  %48 = getelementptr inbounds %struct.ttm_device, ptr %47, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  store ptr %4, ptr %1, align 4
  br label %51

51:                                               ; preds = %41, %2
  %52 = phi i32 [ 0, %41 ], [ -12, %2 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_copy_fences(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_tt_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_transfered_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 10
  tail call void @dma_resv_fini(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.ttm_transfer_obj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  tail call void @ttm_bo_put(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153210359, i64 2153210857, i64 2153210396, i64 2153210452, i64 2153210486, i64 2153210510, i64 2153210551, i64 2153210572, i64 2153210600, i64 2153210634}
!13 = !{i64 2153212688, i64 2153213186, i64 2153212725, i64 2153212781, i64 2153212815, i64 2153212839, i64 2153212880, i64 2153212901, i64 2153212929, i64 2153212963}
!14 = !{i64 2148158260}
!15 = !{i64 555218, i64 2148045189, i64 2148045215, i64 2148045262, i64 2148045284, i64 2148045312, i64 2148045332}
!16 = !{i64 2148060419, i64 2148060451, i64 2148060480, i64 2148060514, i64 2148060545, i64 2148060568}
!17 = !{i64 2149038265}
!18 = !{i64 2148058062, i64 2148058094, i64 2148058123, i64 2148058157, i64 2148058188, i64 2148058211}
!19 = !{i64 2148970277}
!20 = !{i64 2148966101}
!21 = !{i64 2148966176, i64 2148966203, i64 2148966250, i64 2148966272, i64 2148966300, i64 2148966320}
!22 = !{i64 2148993280}
!23 = !{i64 2148056604, i64 2148056630, i64 2148056659, i64 2148056693, i64 2148056724, i64 2148056747}
