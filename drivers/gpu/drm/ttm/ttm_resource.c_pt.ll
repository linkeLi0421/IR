; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_resource.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_free\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_compat\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_manager_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_manager_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_manager_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_manager_evict_all:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_manager_evict_all\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_manager_evict_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_resource_manager_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_resource_manager_debug\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_resource_manager_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_kmap_iter_iomap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_kmap_iter_iomap_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_kmap_iter_iomap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.69] }
%struct.anon.69 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.dma_fence = type { ptr, ptr, %union.anon.67, i64, i64, i32, %struct.kref, i32 }
%union.anon.67 = type { i64 }
%struct.ttm_kmap_iter_iomap = type { %struct.ttm_kmap_iter, ptr, ptr, i32, %struct.anon.70 }
%struct.ttm_kmap_iter = type { ptr }
%struct.anon.70 = type { ptr, i32, i32, i32 }
%struct.ttm_kmap_iter_linear_io = type { %struct.ttm_kmap_iter, %struct.dma_buf_map, i8 }
%struct.dma_buf_map = type { %union.anon.68, i8 }
%union.anon.68 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.io_mapping = type { i32, i32, i32, ptr }

@__kstrtab_ttm_resource_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_init to i32), ptr @__kstrtab_ttm_resource_init, ptr @__kstrtabns_ttm_resource_init }, section "___ksymtab+ttm_resource_init", align 4
@__kstrtab_ttm_resource_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_free to i32), ptr @__kstrtab_ttm_resource_free, ptr @__kstrtabns_ttm_resource_free }, section "___ksymtab+ttm_resource_free", align 4
@__kstrtab_ttm_resource_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_compat to i32), ptr @__kstrtab_ttm_resource_compat, ptr @__kstrtabns_ttm_resource_compat }, section "___ksymtab+ttm_resource_compat", align 4
@__kstrtab_ttm_resource_manager_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_manager_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_manager_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_manager_init to i32), ptr @__kstrtab_ttm_resource_manager_init, ptr @__kstrtabns_ttm_resource_manager_init }, section "___ksymtab+ttm_resource_manager_init", align 4
@__const.ttm_resource_manager_evict_all.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@__kstrtab_ttm_resource_manager_evict_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_manager_evict_all = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_manager_evict_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_manager_evict_all to i32), ptr @__kstrtab_ttm_resource_manager_evict_all, ptr @__kstrtabns_ttm_resource_manager_evict_all }, section "___ksymtab+ttm_resource_manager_evict_all", align 4
@.str = private unnamed_addr constant [16 x i8] c"  use_type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  use_tt: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  size: %llu\0A\00", align 1
@__kstrtab_ttm_resource_manager_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_resource_manager_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_resource_manager_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_resource_manager_debug to i32), ptr @__kstrtab_ttm_resource_manager_debug, ptr @__kstrtabns_ttm_resource_manager_debug }, section "___ksymtab+ttm_resource_manager_debug", align 4
@ttm_kmap_iter_io_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_iomap_map_local, ptr @ttm_kmap_iter_iomap_unmap_local, i8 0 }, align 4
@__kstrtab_ttm_kmap_iter_iomap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_kmap_iter_iomap_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_kmap_iter_iomap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_kmap_iter_iomap_init to i32), ptr @__kstrtab_ttm_kmap_iter_iomap_init, ptr @__kstrtabns_ttm_kmap_iter_iomap_init }, section "___ksymtab+ttm_kmap_iter_iomap_init", align 4
@ttm_kmap_iter_linear_io_ops = internal constant %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_linear_io_map_local, ptr null, i8 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ttm_kmap_iter_iomap_init, ptr @__ksymtab_ttm_resource_compat, ptr @__ksymtab_ttm_resource_free, ptr @__ksymtab_ttm_resource_init, ptr @__ksymtab_ttm_resource_manager_debug, ptr @__ksymtab_ttm_resource_manager_evict_all, ptr @__ksymtab_ttm_resource_manager_init], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ttm_resource_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 4095
  %7 = lshr i32 %6, 12
  %8 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ttm_place, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ttm_place, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 2
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 3
  store i32 2, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_resource_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ttm_place, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.ttm_device, ptr %7, i32 0, i32 3, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %9, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_resource_free(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.ttm_device, ptr %9, i32 0, i32 3, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ttm_resource_manager, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %11, ptr noundef nonnull %3) #11
  store ptr null, ptr %1, align 4
  br label %16

16:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ttm_resource_compat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.ttm_placement, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %5, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 4
  %14 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 2
  %16 = and i32 %7, 1
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %42, %12
  %19 = phi i32 [ 0, %12 ], [ %43, %42 ]
  %20 = getelementptr %struct.ttm_place, ptr %4, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %13, %21
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.ttm_place, ptr %4, i32 %19, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %14, align 4
  %29 = add i32 %28, %13
  %30 = icmp ugt i32 %29, %25
  br i1 %30, label %42, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, ptr %15, align 4
  %33 = getelementptr %struct.ttm_place, ptr %4, i32 %19, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr %struct.ttm_place, ptr %4, i32 %19, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %40, i1 %17, i1 false
  br i1 %41, label %42, label %89

42:                                               ; preds = %36, %31, %27, %18
  %43 = add nuw i32 %19, 1
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %45, label %18

45:                                               ; preds = %42, %2
  %46 = getelementptr inbounds %struct.ttm_placement, ptr %1, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ne ptr %47, %4
  %49 = getelementptr inbounds %struct.ttm_placement, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %5
  %52 = select i1 %48, i1 true, i1 %51
  %53 = icmp ne i32 %50, 0
  %54 = and i1 %9, %53
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %89

56:                                               ; preds = %45
  %57 = load i32, ptr %0, align 4
  %58 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 2
  %60 = and i32 %7, 1
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %86, %56
  %63 = phi i32 [ 0, %56 ], [ %87, %86 ]
  %64 = getelementptr %struct.ttm_place, ptr %47, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %57, %65
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.ttm_place, ptr %47, i32 %63, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %58, align 4
  %73 = add i32 %72, %57
  %74 = icmp ugt i32 %73, %69
  br i1 %74, label %86, label %75

75:                                               ; preds = %71, %67
  %76 = load i32, ptr %59, align 4
  %77 = getelementptr %struct.ttm_place, ptr %47, i32 %63, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr %struct.ttm_place, ptr %47, i32 %63, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  %85 = select i1 %84, i1 %61, i1 false
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %75, %71, %62
  %87 = add nuw i32 %63, 1
  %88 = icmp eq i32 %87, %50
  br i1 %88, label %89, label %62

89:                                               ; preds = %86, %80, %45, %36
  %90 = phi i1 [ false, %45 ], [ false, %86 ], [ true, %80 ], [ true, %36 ]
  ret i1 %90
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_resource_manager_init(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 4
  store i32 0, ptr %3, align 4
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2
  store i64 %4, ptr %5, align 8
  %6 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 0
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 2
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 2, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr %struct.ttm_resource_manager, ptr %0, i32 0, i32 5, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 6
  store ptr null, ptr %14, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_resource_manager_evict_all(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.ttm_operation_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.ttm_resource_manager_evict_all.ctx, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 0
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %13, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %9 = load i16, ptr %4, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %11 = call i32 @ttm_mem_evict_first(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %8
  call void @_raw_spin_lock(ptr noundef %4) #11
  %14 = load volatile ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %8

16:                                               ; preds = %13, %2
  %17 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %25, %16
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %23 = call i32 @ttm_mem_evict_first(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %20
  call void @_raw_spin_lock(ptr noundef %4) #11
  %26 = load volatile ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, %17
  br i1 %27, label %28, label %20

28:                                               ; preds = %25, %16
  %29 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 2
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %40, label %32

32:                                               ; preds = %37, %28
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %33 = load i16, ptr %4, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %35 = call i32 @ttm_mem_evict_first(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %32
  call void @_raw_spin_lock(ptr noundef %4) #11
  %38 = load volatile ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, %29
  br i1 %39, label %40, label %32

40:                                               ; preds = %37, %28
  %41 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 3
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %52, label %44

44:                                               ; preds = %49, %40
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %45 = load i16, ptr %4, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %47 = call i32 @ttm_mem_evict_first(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  call void @_raw_spin_lock(ptr noundef %4) #11
  %50 = load volatile ptr, ptr %41, align 4
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %52, label %44

52:                                               ; preds = %49, %40
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %53 = load i16, ptr %4, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %55 = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %55) #11
  %56 = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 6
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.dma_fence, ptr %57, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #11, !srcloc !12
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #11, !srcloc !13
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !14

64:                                               ; preds = %59
  %65 = add i32 %62, 1
  %66 = or i32 %65, %62
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %72, label %68, !prof !15

68:                                               ; preds = %64, %59
  %69 = phi i32 [ 2, %59 ], [ 1, %64 ]
  call void @refcount_warn_saturate(ptr noundef %60, i32 noundef %69) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %70 = load i16, ptr %55, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %75

72:                                               ; preds = %64
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %73 = load i16, ptr %55, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %75

75:                                               ; preds = %72, %68
  %76 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %57, i1 noundef zeroext false, i32 noundef 2147483647) #11
  %77 = call i32 @llvm.smin.i32(i32 %76, i32 0) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #11, !srcloc !12
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #11, !srcloc !17
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %85, label %83, !prof !15

83:                                               ; preds = %81
  call void @refcount_warn_saturate(ptr noundef %60, i32 noundef 3) #11
  br label %85

84:                                               ; preds = %75
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void @dma_fence_release(ptr noundef %60) #11
  br label %85

85:                                               ; preds = %84, %83, %81
  %86 = icmp sgt i32 %76, -1
  br i1 %86, label %90, label %91

87:                                               ; preds = %52
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %88 = load i16, ptr %55, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %90

90:                                               ; preds = %87, %85
  br label %91

91:                                               ; preds = %90, %85, %44, %32, %20, %8
  %92 = phi i32 [ 0, %90 ], [ %77, %85 ], [ %47, %44 ], [ %35, %32 ], [ %23, %20 ], [ %11, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_mem_evict_first(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_resource_manager_debug(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i8, ptr %0, align 8, !range !19
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %4) #11
  %5 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1, !range !19
  %7 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %7) #11
  %8 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef %9) #11
  %10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void %13(ptr noundef %0, ptr noundef %1) #11
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ttm_kmap_iter_iomap_init(ptr noundef returned writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  store ptr @ttm_kmap_iter_io_ops, ptr %0, align 4
  %5 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 3
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false)
  ret ptr %0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ttm_kmap_iter_linear_io_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @ttm_mem_io_reserve(ptr noundef %1, ptr noundef %2) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 2
  %8 = load i8, ptr %7, align 4, !range !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1, i32 1
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 2
  store i8 0, ptr %17, align 4
  br label %45

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 12
  %22 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 2
  store i8 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 3
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %39 [
    i32 1, label %26
    i32 2, label %30
  ]

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @ioremap_wc(i32 noundef %28, i32 noundef %21) #11
  br label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @memremap(i32 noundef %32, i32 noundef %21, i32 noundef 7) #11
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ %33, %30 ], [ %29, %26 ]
  %36 = phi i8 [ 0, %30 ], [ 1, %26 ]
  store ptr %35, ptr %23, align 4
  %37 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1, i32 1
  store i8 %36, ptr %37, align 4
  %38 = icmp eq ptr %35, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %18
  %40 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 4, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call ptr @ioremap(i32 noundef %41, i32 noundef %21) #11
  store ptr %42, ptr %23, align 4
  %43 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1, i32 1
  store i8 1, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %34, %14
  store ptr @ttm_kmap_iter_linear_io_ops, ptr %0, align 4
  br label %51

46:                                               ; preds = %39, %6
  %47 = phi i32 [ -12, %39 ], [ -22, %6 ]
  tail call void @ttm_mem_io_free(ptr noundef %1, ptr noundef %2) #11
  br label %48

48:                                               ; preds = %46, %3
  %49 = phi i32 [ %4, %3 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %50, %48 ], [ %0, %45 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_mem_io_reserve(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_mem_io_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_kmap_iter_linear_io_fini(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1, i32 1
  %13 = load i8, ptr %12, align 4, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @iounmap(ptr noundef nonnull %9) #11
  br label %17

16:                                               ; preds = %11
  tail call void @memunmap(ptr noundef nonnull %9) #11
  br label %17

17:                                               ; preds = %16, %15, %7, %3
  tail call void @ttm_mem_io_free(ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_kmap_iter_iomap_map_local(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 4, i32 2
  %7 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 4, i32 3
  %10 = load i32, ptr %6, align 4
  br label %11

11:                                               ; preds = %43, %3
  %12 = phi i32 [ 0, %43 ], [ %10, %3 ]
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  br label %40

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 4
  br label %18

18:                                               ; preds = %28, %16
  %19 = phi i32 [ %12, %16 ], [ %34, %28 ]
  %20 = phi ptr [ %17, %16 ], [ %30, %28 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @sg_next(ptr noundef nonnull %20) #11
  %24 = load i32, ptr %6, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %19, %25 ]
  %30 = phi ptr [ %23, %22 ], [ %27, %25 ]
  store ptr %30, ptr %5, align 4
  store i32 %29, ptr %4, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 12
  %34 = add i32 %33, %29
  store i32 %34, ptr %6, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %30, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %8, align 4
  %38 = sub i32 %36, %37
  store i32 %38, ptr %9, align 4
  %39 = icmp ugt i32 %34, %2
  br i1 %39, label %40, label %18

40:                                               ; preds = %28, %14
  %41 = phi i32 [ %15, %14 ], [ %29, %28 ]
  %42 = icmp ugt i32 %41, %2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, ptr %6, align 4
  store ptr null, ptr %5, align 4
  br label %11

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ttm_kmap_iter_iomap, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %9, align 4
  %48 = sub i32 %2, %41
  %49 = shl i32 %48, 12
  %50 = add i32 %47, %49
  %51 = getelementptr inbounds %struct.io_mapping, ptr %46, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %50
  store ptr %53, ptr %1, align 4
  %54 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 1, ptr %54, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ttm_kmap_iter_iomap_unmap_local(ptr nocapture noundef %0, ptr nocapture noundef %1) #9 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ttm_kmap_iter_linear_io_map_local(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_kmap_iter_linear_io, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %1, align 4
  %6 = shl i32 %2, 12
  %7 = trunc i64 %5 to i32
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr i8, ptr %8, i32 %6
  store ptr %9, ptr %1, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

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
!8 = !{i64 2148914713}
!9 = !{i64 2148910537}
!10 = !{i64 2148910612, i64 2148910639, i64 2148910686, i64 2148910708, i64 2148910736, i64 2148910756}
!11 = !{i64 2148937716}
!12 = !{i64 613346, i64 2148103317, i64 2148103343, i64 2148103390, i64 2148103412, i64 2148103440, i64 2148103460}
!13 = !{i64 2148116190, i64 2148116222, i64 2148116251, i64 2148116285, i64 2148116316, i64 2148116339}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148216388}
!17 = !{i64 2148118547, i64 2148118579, i64 2148118608, i64 2148118642, i64 2148118673, i64 2148118696}
!18 = !{i64 2149457039}
!19 = !{i8 0, i8 2}
