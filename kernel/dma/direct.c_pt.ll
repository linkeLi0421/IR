; ModuleID = '/llk/IR/kernel/dma/direct.c_pt.bc'
source_filename = "../kernel/dma/direct.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@zone_dma_bits = dso_local local_unnamed_addr global i32 24, section ".data..ro_after_init", align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [34 x i8] c"Rejecting highmem page from CMA.\0A\00", align 1
@dma_direct_map_resource.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@dma_direct_map_resource.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"kernel/dma/direct.c\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"attempt to add DMA range to existing map\0A\00", align 1
@__dma_direct_alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@dma_direct_map_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"kernel/dma/direct.h\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%s %s: DMA addr %pad+%zu overflow (mask %llx, bus limit %llx).\0A\00", align 1
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @dma_direct_get_required_mask(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @max_pfn, align 4
  %3 = shl i32 %2, 12
  %4 = add i32 %3, -4096
  %5 = icmp eq ptr %0, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bus_dma_region, ptr %8, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %28, %10
  %15 = phi i64 [ %31, %28 ], [ %12, %10 ]
  %16 = phi ptr [ %29, %28 ], [ %8, %10 ]
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %4, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = sub i32 %4, %17
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bus_dma_region, ptr %16, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub i32 %4, %26
  br label %33

28:                                               ; preds = %19, %14
  %29 = getelementptr %struct.bus_dma_region, ptr %16, i32 1
  %30 = getelementptr %struct.bus_dma_region, ptr %16, i32 1, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %40, label %14

33:                                               ; preds = %23, %6, %1
  %34 = phi i32 [ %4, %6 ], [ %4, %1 ], [ %27, %23 ]
  %35 = and i32 %34, -4096
  %36 = icmp ult i32 %34, 4096
  %37 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 false) #11, !range !8
  %38 = sub nsw i32 31, %37
  %39 = select i1 %36, i32 -1, i32 %38
  br label %40

40:                                               ; preds = %33, %28, %10
  %41 = phi i32 [ 31, %10 ], [ %39, %33 ], [ 31, %28 ]
  %42 = zext i32 %41 to i64
  %43 = shl i64 2, %42
  %44 = add i64 %43, -1
  ret i64 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_direct_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = add i32 %1, 4095
  %7 = and i32 %6, -4096
  %8 = shl i32 %4, 5
  %9 = and i32 %8, 8192
  %10 = and i32 %4, 16
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %3, -257
  %13 = or i32 %9, %12
  br i1 %11, label %59, label %14

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %0, i32 noundef %7, i32 noundef %13) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %124, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %15 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = lshr exact i32 %21, 5
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = add i32 %22, %23
  %25 = shl i32 %24, 12
  %26 = and i32 %24, 1048575
  %27 = icmp eq ptr %0, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bus_dma_region, ptr %30, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %51, %32
  %37 = phi i64 [ %54, %51 ], [ %34, %32 ]
  %38 = phi ptr [ %52, %51 ], [ %30, %32 ]
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i32 %25, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = sub i32 %25, %39
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %37, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bus_dma_region, ptr %38, i32 0, i32 3
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = sub i32 %25, %48
  %50 = lshr i32 %49, 12
  br label %56

51:                                               ; preds = %41, %36
  %52 = getelementptr %struct.bus_dma_region, ptr %38, i32 1
  %53 = getelementptr %struct.bus_dma_region, ptr %38, i32 1, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %36

56:                                               ; preds = %51, %45, %32, %28, %17
  %57 = phi i32 [ %26, %28 ], [ %26, %17 ], [ %50, %45 ], [ 1048575, %32 ], [ 1048575, %51 ]
  %58 = shl nuw i32 %57, 12
  store i32 %58, ptr %2, align 4
  br label %124

59:                                               ; preds = %5
  %60 = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %0, i32 noundef %7, i32 noundef %13)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %124, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 4
  %64 = lshr i32 %63, 30
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = icmp ne i32 %64, 3
  %68 = load i32, ptr @movable_zone, align 4
  %69 = icmp ne i32 %68, 2
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %66, %62
  %72 = load i32, ptr @pgprot_kernel, align 4
  %73 = or i32 %72, 512
  %74 = tail call i32 @dma_pgprot(ptr noundef %0, i32 noundef %73, i32 noundef %4) #11
  %75 = tail call ptr @llvm.returnaddress(i32 0)
  %76 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %60, i32 noundef %7, i32 noundef %74, ptr noundef %75) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %123, label %80

78:                                               ; preds = %66
  %79 = tail call ptr @page_address(ptr noundef nonnull %60) #11
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi ptr [ %76, %71 ], [ %79, %78 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %81, i8 0, i32 %7, i1 false)
  %82 = load ptr, ptr @mem_map, align 4
  %83 = ptrtoint ptr %60 to i32
  %84 = ptrtoint ptr %82 to i32
  %85 = sub i32 %83, %84
  %86 = lshr exact i32 %85, 5
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %88 = add i32 %86, %87
  %89 = shl i32 %88, 12
  %90 = and i32 %88, 1048575
  %91 = icmp eq ptr %0, null
  br i1 %91, label %120, label %92

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bus_dma_region, ptr %94, i32 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %115, %96
  %101 = phi i64 [ %118, %115 ], [ %98, %96 ]
  %102 = phi ptr [ %116, %115 ], [ %94, %96 ]
  %103 = load i32, ptr %102, align 8
  %104 = icmp ult i32 %89, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = sub i32 %89, %103
  %107 = zext i32 %106 to i64
  %108 = icmp ugt i64 %101, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.bus_dma_region, ptr %102, i32 0, i32 3
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = sub i32 %89, %112
  %114 = lshr i32 %113, 12
  br label %120

115:                                              ; preds = %105, %100
  %116 = getelementptr %struct.bus_dma_region, ptr %102, i32 1
  %117 = getelementptr %struct.bus_dma_region, ptr %102, i32 1, i32 2
  %118 = load i64, ptr %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %100

120:                                              ; preds = %115, %109, %96, %92, %80
  %121 = phi i32 [ %90, %92 ], [ %90, %80 ], [ %114, %109 ], [ 1048575, %96 ], [ 1048575, %115 ]
  %122 = shl nuw i32 %121, 12
  store i32 %122, ptr %2, align 4
  br label %124

123:                                              ; preds = %71
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %7) #11
  br label %124

124:                                              ; preds = %123, %120, %59, %56, %14
  %125 = phi ptr [ null, %123 ], [ %81, %120 ], [ null, %59 ], [ null, %14 ], [ %15, %56 ]
  ret ptr %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__dma_direct_alloc_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = and i32 %1, 4095
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @__dma_direct_alloc_pages.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  store i1 true, ptr @__dma_direct_alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 124, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %12, 0
  %16 = icmp eq i64 %14, 0
  %17 = tail call i64 @llvm.umin.i64(i64 %14, i64 %12) #11
  %18 = select i1 %16, i64 %12, i64 %17
  %19 = select i1 %15, i64 %14, i64 %18
  %20 = trunc i64 %19 to i32
  %21 = icmp eq ptr %0, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = and i32 %20, -4096
  %28 = getelementptr inbounds %struct.bus_dma_region, ptr %24, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %46, %26
  %32 = phi i64 [ %49, %46 ], [ %29, %26 ]
  %33 = phi ptr [ %47, %46 ], [ %24, %26 ]
  %34 = getelementptr inbounds %struct.bus_dma_region, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %27, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = sub i32 %27, %35
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i64 %32, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bus_dma_region, ptr %33, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = add i32 %27, %44
  br label %51

46:                                               ; preds = %37, %31
  %47 = getelementptr %struct.bus_dma_region, ptr %33, i32 1
  %48 = getelementptr %struct.bus_dma_region, ptr %33, i32 1, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %31

51:                                               ; preds = %46, %41, %26, %22, %10
  %52 = phi i32 [ %20, %22 ], [ %20, %10 ], [ %45, %41 ], [ -1, %26 ], [ -1, %46 ]
  %53 = load i32, ptr @zone_dma_bits, align 4
  %54 = icmp eq i32 %53, 64
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = and i32 %52, -4096
  %57 = and i32 %20, 4095
  %58 = or i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = zext i32 %53 to i64
  %61 = lshr i64 %59, %60
  %62 = icmp eq i64 %61, 0
  %63 = select i1 %62, i32 1, i32 4
  br label %64

64:                                               ; preds = %55, %51
  %65 = phi i32 [ 1, %51 ], [ %63, %55 ]
  %66 = or i32 %65, %2
  %67 = tail call ptr @dma_alloc_contiguous(ptr noundef %0, i32 noundef %1, i32 noundef %66) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = add i32 %1, -1
  br label %124

71:                                               ; preds = %64
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %67 to i32
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %73, %74
  %76 = lshr exact i32 %75, 5
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %78 = add i32 %76, %77
  %79 = shl i32 %78, 12
  %80 = and i32 %78, 1048575
  br i1 %21, label %109, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %109, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.bus_dma_region, ptr %83, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %104, %85
  %90 = phi i64 [ %107, %104 ], [ %87, %85 ]
  %91 = phi ptr [ %105, %104 ], [ %83, %85 ]
  %92 = load i32, ptr %91, align 8
  %93 = icmp ult i32 %79, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = sub i32 %79, %92
  %96 = zext i32 %95 to i64
  %97 = icmp ugt i64 %90, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bus_dma_region, ptr %91, i32 0, i32 3
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = sub i32 %79, %101
  %103 = lshr i32 %102, 12
  br label %109

104:                                              ; preds = %94, %89
  %105 = getelementptr %struct.bus_dma_region, ptr %91, i32 1
  %106 = getelementptr %struct.bus_dma_region, ptr %91, i32 1, i32 2
  %107 = load i64, ptr %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %89

109:                                              ; preds = %104, %98, %85, %81, %71
  %110 = phi i32 [ %80, %81 ], [ %80, %71 ], [ %103, %98 ], [ 1048575, %85 ], [ 1048575, %104 ]
  %111 = shl nuw i32 %110, 12
  %112 = add i32 %1, -1
  %113 = add i32 %112, %111
  %114 = zext i32 %113 to i64
  %115 = load i64, ptr %11, align 8
  %116 = load i64, ptr %13, align 8
  %117 = icmp eq i64 %115, 0
  %118 = icmp eq i64 %116, 0
  %119 = tail call i64 @llvm.umin.i64(i64 %115, i64 %116) #11
  %120 = select i1 %118, i64 %115, i64 %119
  %121 = select i1 %117, i64 %116, i64 %120
  %122 = icmp ult i64 %121, %114
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %1) #11
  br label %124

124:                                              ; preds = %123, %109, %69
  %125 = phi i32 [ %70, %69 ], [ %112, %123 ], [ %112, %109 ]
  %126 = phi ptr [ null, %69 ], [ null, %123 ], [ %67, %109 ]
  %127 = lshr i32 %125, 12
  %128 = icmp ult i32 %125, 4096
  %129 = tail call i32 @llvm.ctlz.i32(i32 %127, i1 false) #11, !range !10
  %130 = sub nuw nsw i32 32, %129
  %131 = select i1 %128, i32 0, i32 %130
  %132 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  br label %133

133:                                              ; preds = %194, %124
  %134 = phi ptr [ %126, %124 ], [ null, %194 ]
  %135 = phi i32 [ %66, %124 ], [ %196, %194 ]
  %136 = icmp eq ptr %134, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = tail call ptr @__alloc_pages(i32 noundef %135, i32 noundef %131, i32 noundef 0, ptr noundef null) #11
  %139 = icmp eq ptr %138, null
  br i1 %139, label %197, label %140

140:                                              ; preds = %137, %133
  %141 = phi ptr [ %138, %137 ], [ %134, %133 ]
  %142 = load ptr, ptr @mem_map, align 4
  %143 = ptrtoint ptr %141 to i32
  %144 = ptrtoint ptr %142 to i32
  %145 = sub i32 %143, %144
  %146 = lshr exact i32 %145, 5
  %147 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %148 = add i32 %146, %147
  %149 = shl i32 %148, 12
  %150 = and i32 %148, 1048575
  br i1 %21, label %178, label %151

151:                                              ; preds = %140
  %152 = load ptr, ptr %132, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %178, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.bus_dma_region, ptr %152, i32 0, i32 2
  %156 = load i64, ptr %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %178, label %158

158:                                              ; preds = %173, %154
  %159 = phi i64 [ %176, %173 ], [ %156, %154 ]
  %160 = phi ptr [ %174, %173 ], [ %152, %154 ]
  %161 = load i32, ptr %160, align 8
  %162 = icmp ult i32 %149, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = sub i32 %149, %161
  %165 = zext i32 %164 to i64
  %166 = icmp ugt i64 %159, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.bus_dma_region, ptr %160, i32 0, i32 3
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = sub i32 %149, %170
  %172 = lshr i32 %171, 12
  br label %178

173:                                              ; preds = %163, %158
  %174 = getelementptr %struct.bus_dma_region, ptr %160, i32 1
  %175 = getelementptr %struct.bus_dma_region, ptr %160, i32 1, i32 2
  %176 = load i64, ptr %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %158

178:                                              ; preds = %173, %167, %154, %151, %140
  %179 = phi i32 [ %150, %151 ], [ %150, %140 ], [ %172, %167 ], [ 1048575, %154 ], [ 1048575, %173 ]
  %180 = shl nuw i32 %179, 12
  %181 = add i32 %125, %180
  %182 = zext i32 %181 to i64
  %183 = load i64, ptr %11, align 8
  %184 = load i64, ptr %13, align 8
  %185 = icmp eq i64 %183, 0
  %186 = icmp eq i64 %184, 0
  %187 = tail call i64 @llvm.umin.i64(i64 %183, i64 %184) #11
  %188 = select i1 %186, i64 %183, i64 %187
  %189 = select i1 %185, i64 %184, i64 %188
  %190 = icmp ult i64 %189, %182
  br i1 %190, label %191, label %197

191:                                              ; preds = %178
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef nonnull %141, i32 noundef %1) #11
  %192 = and i32 %135, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = and i32 %135, -6
  %196 = or i32 %195, 1
  br label %133

197:                                              ; preds = %191, %178, %137
  %198 = phi ptr [ %141, %178 ], [ null, %191 ], [ null, %137 ]
  ret ptr %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_contiguous_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_pgprot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_direct_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = and i32 %4, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #11
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @vunmap(ptr noundef %2) #11
  br label %11

11:                                               ; preds = %10, %8
  %12 = load ptr, ptr @mem_map, align 4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = and i32 %3, -4096
  %20 = getelementptr inbounds %struct.bus_dma_region, ptr %16, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %38, %18
  %24 = phi i64 [ %41, %38 ], [ %21, %18 ]
  %25 = phi ptr [ %39, %38 ], [ %16, %18 ]
  %26 = getelementptr inbounds %struct.bus_dma_region, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %19, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = sub i32 %19, %27
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %24, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bus_dma_region, ptr %25, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = add i32 %19, %36
  br label %43

38:                                               ; preds = %29, %23
  %39 = getelementptr %struct.bus_dma_region, ptr %25, i32 1
  %40 = getelementptr %struct.bus_dma_region, ptr %25, i32 1, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %23

43:                                               ; preds = %38, %33, %18, %14, %11
  %44 = phi i32 [ %3, %14 ], [ %3, %11 ], [ %37, %33 ], [ -1, %18 ], [ -1, %38 ]
  %45 = lshr i32 %44, 12
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %47 = sub i32 %45, %46
  %48 = getelementptr %struct.page, ptr %12, i32 %47
  br label %49

49:                                               ; preds = %43, %5
  %50 = phi ptr [ %48, %43 ], [ %2, %5 ]
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef %50, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_direct_alloc_pages(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc ptr @__dma_direct_alloc_pages(ptr noundef %0, i32 noundef %1, i32 noundef %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = lshr i32 %9, 30
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = icmp ne i32 %10, 3
  %14 = load i32, ptr @movable_zone, align 4
  %15 = icmp ne i32 %14, 2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str) #12
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %1) #11
  br label %61

18:                                               ; preds = %12
  %19 = tail call ptr @page_address(ptr noundef nonnull %6) #11
  tail call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %1, i1 false)
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %6 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = lshr exact i32 %23, 5
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = add i32 %24, %25
  %27 = shl i32 %26, 12
  %28 = and i32 %26, 1048575
  %29 = icmp eq ptr %0, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bus_dma_region, ptr %32, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %53, %34
  %39 = phi i64 [ %56, %53 ], [ %36, %34 ]
  %40 = phi ptr [ %54, %53 ], [ %32, %34 ]
  %41 = load i32, ptr %40, align 8
  %42 = icmp ult i32 %27, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = sub i32 %27, %41
  %45 = zext i32 %44 to i64
  %46 = icmp ugt i64 %39, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bus_dma_region, ptr %40, i32 0, i32 3
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sub i32 %27, %50
  %52 = lshr i32 %51, 12
  br label %58

53:                                               ; preds = %43, %38
  %54 = getelementptr %struct.bus_dma_region, ptr %40, i32 1
  %55 = getelementptr %struct.bus_dma_region, ptr %40, i32 1, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %38

58:                                               ; preds = %53, %47, %34, %30, %18
  %59 = phi i32 [ %28, %30 ], [ %28, %18 ], [ %52, %47 ], [ 1048575, %34 ], [ 1048575, %53 ]
  %60 = shl nuw i32 %59, 12
  store i32 %60, ptr %2, align 4
  br label %61

61:                                               ; preds = %58, %17, %5
  %62 = phi ptr [ null, %17 ], [ %6, %58 ], [ null, %5 ]
  ret ptr %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_direct_free_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @page_address(ptr noundef %2) #11
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef %2, i32 noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_direct_map_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %136

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  br label %13

13:                                               ; preds = %130, %8
  %14 = phi ptr [ %1, %8 ], [ %134, %130 ]
  %15 = phi i32 [ 0, %8 ], [ %133, %130 ]
  %16 = load i32, ptr %14, align 4
  %17 = and i32 %16, 33554428
  %18 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = sub i32 %17, %23
  %25 = lshr exact i32 %24, 5
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = add i32 %25, %26
  %28 = shl i32 %27, 12
  %29 = add i32 %28, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %30 = lshr i32 %29, 12
  br i1 %9, label %59, label %31

31:                                               ; preds = %13
  %32 = load ptr, ptr %10, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %31
  %35 = and i32 %29, -4096
  %36 = getelementptr inbounds %struct.bus_dma_region, ptr %32, i32 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %54, %34
  %40 = phi i64 [ %57, %54 ], [ %37, %34 ]
  %41 = phi ptr [ %55, %54 ], [ %32, %34 ]
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = sub i32 %35, %42
  %46 = zext i32 %45 to i64
  %47 = icmp ugt i64 %40, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bus_dma_region, ptr %41, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = sub i32 %35, %51
  %53 = lshr i32 %52, 12
  br label %59

54:                                               ; preds = %44, %39
  %55 = getelementptr %struct.bus_dma_region, ptr %41, i32 1
  %56 = getelementptr %struct.bus_dma_region, ptr %41, i32 1, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %39

59:                                               ; preds = %54, %48, %34, %31, %13
  %60 = phi i32 [ %30, %31 ], [ %30, %13 ], [ %53, %48 ], [ 1048575, %34 ], [ 1048575, %54 ]
  %61 = and i32 %29, 4095
  %62 = shl nuw i32 %60, 12
  %63 = or i32 %62, %61
  store i32 %63, ptr %6, align 4
  %64 = add i32 %21, -1
  %65 = add i32 %64, %63
  %66 = icmp eq i32 %63, -1
  br i1 %66, label %114, label %67, !prof !11

67:                                               ; preds = %59
  %68 = tail call i32 @llvm.umin.i32(i32 %65, i32 %63) #11
  %69 = load i32, ptr @min_low_pfn, align 4
  %70 = shl i32 %69, 12
  %71 = and i32 %69, 1048575
  br i1 %9, label %99, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %10, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %99, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.bus_dma_region, ptr %73, i32 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %94, %75
  %80 = phi i64 [ %97, %94 ], [ %77, %75 ]
  %81 = phi ptr [ %95, %94 ], [ %73, %75 ]
  %82 = load i32, ptr %81, align 8
  %83 = icmp ult i32 %70, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = sub i32 %70, %82
  %86 = zext i32 %85 to i64
  %87 = icmp ugt i64 %80, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bus_dma_region, ptr %81, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = sub i32 %70, %91
  %93 = lshr i32 %92, 12
  br label %99

94:                                               ; preds = %84, %79
  %95 = getelementptr %struct.bus_dma_region, ptr %81, i32 1
  %96 = getelementptr %struct.bus_dma_region, ptr %81, i32 1, i32 2
  %97 = load i64, ptr %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %79

99:                                               ; preds = %94, %88, %75, %72, %67
  %100 = phi i32 [ %71, %72 ], [ %71, %67 ], [ %93, %88 ], [ 1048575, %75 ], [ 1048575, %94 ]
  %101 = shl nuw i32 %100, 12
  %102 = icmp ult i32 %68, %101
  br i1 %102, label %114, label %103, !prof !11

103:                                              ; preds = %99
  %104 = zext i32 %65 to i64
  %105 = load ptr, ptr %11, align 4
  %106 = load i64, ptr %105, align 8
  %107 = load i64, ptr %12, align 8
  %108 = icmp eq i64 %106, 0
  %109 = icmp eq i64 %107, 0
  %110 = tail call i64 @llvm.umin.i64(i64 %106, i64 %107) #11
  %111 = select i1 %109, i64 %106, i64 %110
  %112 = select i1 %108, i64 %107, i64 %111
  %113 = icmp ult i64 %112, %104
  br i1 %113, label %114, label %130, !prof !9

114:                                              ; preds = %103, %99, %59
  %115 = load i1, ptr @dma_direct_map_page.__already_done, align 1
  br i1 %115, label %128, label %116, !prof !12

116:                                              ; preds = %114
  store i1 true, ptr @dma_direct_map_page.__already_done, align 1
  %117 = tail call ptr @dev_driver_string(ptr noundef %0) #11
  %118 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load ptr, ptr %0, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi ptr [ %122, %121 ], [ %119, %116 ]
  %125 = load ptr, ptr %11, align 4
  %126 = load i64, ptr %125, align 8
  %127 = load i64, ptr %12, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %117, ptr noundef %124, ptr noundef nonnull %6, i32 noundef %21, i64 noundef %126, i64 noundef %127) #11
  br label %128

128:                                              ; preds = %123, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %129 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  store i32 -1, ptr %129, align 4
  br label %136

130:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %131 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 3
  store i32 %63, ptr %131, align 4
  %132 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 4
  store i32 %21, ptr %132, align 4
  %133 = add nuw nsw i32 %15, 1
  %134 = tail call ptr @sg_next(ptr noundef %14) #11
  %135 = icmp eq i32 %133, %2
  br i1 %135, label %136, label %13

136:                                              ; preds = %130, %128, %5
  %137 = phi i32 [ -5, %128 ], [ %2, %5 ], [ %2, %130 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_direct_map_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 %1, ptr %6, align 4
  %7 = icmp eq i32 %1, -1
  br i1 %7, label %23, label %8, !prof !11

8:                                                ; preds = %5
  %9 = add i32 %1, -1
  %10 = add i32 %9, %2
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %14, 0
  %18 = icmp eq i64 %16, 0
  %19 = tail call i64 @llvm.umin.i64(i64 %14, i64 %16) #11
  %20 = select i1 %18, i64 %14, i64 %19
  %21 = select i1 %17, i64 %16, i64 %20
  %22 = icmp ult i64 %21, %11
  br i1 %22, label %23, label %34, !prof !9

23:                                               ; preds = %8, %5
  %24 = load i1, ptr @dma_direct_map_resource.__print_once, align 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  store i1 true, ptr @dma_direct_map_resource.__print_once, align 1
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 18
  %30 = load i64, ptr %29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef %2, i64 noundef %28, i64 noundef %30) #12
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i1, ptr @dma_direct_map_resource.__already_done, align 1
  br i1 %32, label %34, label %33, !prof !12

33:                                               ; preds = %31
  store i1 true, ptr @dma_direct_map_resource.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 506, i32 noundef 9, ptr noundef null) #11
  br label %34

34:                                               ; preds = %33, %31, %8
  %35 = phi i32 [ -1, %33 ], [ -1, %31 ], [ %1, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_direct_get_sgtable(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr @mem_map, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = and i32 %3, -4096
  %15 = getelementptr inbounds %struct.bus_dma_region, ptr %11, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %33, %13
  %19 = phi i64 [ %36, %33 ], [ %16, %13 ]
  %20 = phi ptr [ %34, %33 ], [ %11, %13 ]
  %21 = getelementptr inbounds %struct.bus_dma_region, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %14, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = sub i32 %14, %22
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %19, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bus_dma_region, ptr %20, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = add i32 %14, %31
  br label %38

33:                                               ; preds = %24, %18
  %34 = getelementptr %struct.bus_dma_region, ptr %20, i32 1
  %35 = getelementptr %struct.bus_dma_region, ptr %20, i32 1, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %18

38:                                               ; preds = %33, %28, %13, %9, %6
  %39 = phi i32 [ %3, %9 ], [ %3, %6 ], [ %32, %28 ], [ -1, %13 ], [ -1, %33 ]
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = tail call i32 @sg_alloc_table(ptr noundef %1, i32 noundef 1, i32 noundef 3264) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = lshr i32 %39, 12
  %45 = sub i32 %44, %40
  %46 = getelementptr %struct.page, ptr %7, i32 %45
  %47 = ptrtoint ptr %46 to i32
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !12

50:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

51:                                               ; preds = %43
  %52 = add i32 %4, 4095
  %53 = and i32 %52, -4096
  %54 = load ptr, ptr %1, align 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 3
  %57 = or i32 %56, %47
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 1
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 2
  store i32 %53, ptr %59, align 4
  br label %60

60:                                               ; preds = %51, %38
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dma_direct_can_mmap(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_direct_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = sub i32 %9, %10
  %12 = lshr i32 %11, 12
  %13 = add i32 %4, 4095
  %14 = lshr i32 %13, 12
  %15 = icmp eq ptr %0, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  %21 = and i32 %3, -4096
  %22 = getelementptr inbounds %struct.bus_dma_region, ptr %18, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %40, %20
  %26 = phi i64 [ %43, %40 ], [ %23, %20 ]
  %27 = phi ptr [ %41, %40 ], [ %18, %20 ]
  %28 = getelementptr inbounds %struct.bus_dma_region, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %21, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = sub i32 %21, %29
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %26, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bus_dma_region, ptr %27, i32 0, i32 3
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = add i32 %21, %38
  br label %45

40:                                               ; preds = %31, %25
  %41 = getelementptr %struct.bus_dma_region, ptr %27, i32 1
  %42 = getelementptr %struct.bus_dma_region, ptr %27, i32 1, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %25

45:                                               ; preds = %40, %35, %20, %16, %6
  %46 = phi i32 [ %3, %16 ], [ %3, %6 ], [ %39, %35 ], [ -1, %20 ], [ -1, %40 ]
  %47 = lshr i32 %46, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 -6, ptr %7, align 4
  %48 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @dma_pgprot(ptr noundef %0, i32 noundef %49, i32 noundef %5) #11
  store i32 %50, ptr %48, align 4
  %51 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %7) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = load i32, ptr %7, align 4
  br label %68

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %57 = load i32, ptr %56, align 4
  %58 = icmp ule i32 %14, %57
  %59 = sub i32 %14, %57
  %60 = icmp ugt i32 %12, %59
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32, ptr %1, align 4
  %64 = add i32 %57, %47
  %65 = and i32 %11, -4096
  %66 = load i32, ptr %48, align 4
  %67 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66) #11
  br label %68

68:                                               ; preds = %62, %55, %53
  %69 = phi i32 [ %54, %53 ], [ %67, %62 ], [ -6, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @dma_direct_supported(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @max_pfn, align 4
  %4 = shl i32 %3, 12
  %5 = add i32 %4, -4096
  %6 = zext i32 %5 to i64
  %7 = icmp ugt i64 %1, 4294967294
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @zone_dma_bits, align 4
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = zext i32 %9 to i64
  %13 = shl nsw i64 -1, %12
  %14 = xor i64 %13, -1
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i64 [ %14, %11 ], [ -1, %8 ]
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %6)
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 %18, 12
  %20 = icmp eq ptr %0, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = and i32 %18, -4096
  %27 = getelementptr inbounds %struct.bus_dma_region, ptr %23, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %45, %25
  %31 = phi i64 [ %48, %45 ], [ %28, %25 ]
  %32 = phi ptr [ %46, %45 ], [ %23, %25 ]
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %26, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = sub i32 %26, %33
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %31, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bus_dma_region, ptr %32, i32 0, i32 3
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = sub i32 %26, %42
  %44 = lshr i32 %43, 12
  br label %50

45:                                               ; preds = %35, %30
  %46 = getelementptr %struct.bus_dma_region, ptr %32, i32 1
  %47 = getelementptr %struct.bus_dma_region, ptr %32, i32 1, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %30

50:                                               ; preds = %45, %39, %25, %21, %15
  %51 = phi i32 [ %19, %21 ], [ %19, %15 ], [ %44, %39 ], [ 1048575, %25 ], [ 1048575, %45 ]
  %52 = and i32 %18, 4095
  %53 = shl nuw i32 %51, 12
  %54 = or i32 %53, %52
  %55 = zext i32 %54 to i64
  %56 = icmp ule i64 %55, %1
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %50, %2
  %59 = phi i32 [ %57, %50 ], [ 1, %2 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_direct_max_mapping_size(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret i32 -1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_direct_need_sync(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, -4096
  %10 = getelementptr inbounds %struct.bus_dma_region, ptr %6, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %23, %8
  %14 = phi i64 [ %26, %23 ], [ %11, %8 ]
  %15 = phi ptr [ %24, %23 ], [ %6, %8 ]
  %16 = getelementptr inbounds %struct.bus_dma_region, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %9, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = sub i32 %9, %17
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %14, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %13
  %24 = getelementptr %struct.bus_dma_region, ptr %15, i32 1
  %25 = getelementptr %struct.bus_dma_region, ptr %15, i32 1, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %13

28:                                               ; preds = %23, %19, %8, %4, %2
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_direct_set_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = zext i32 %1 to i64
  %6 = zext i32 %2 to i64
  %7 = sub nsw i64 %5, %6
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  br label %22

12:                                               ; preds = %4
  %13 = icmp eq i32 %1, %2
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 48) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  store i32 %1, ptr %16, align 8
  %19 = getelementptr inbounds %struct.bus_dma_region, ptr %16, i32 0, i32 1
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bus_dma_region, ptr %16, i32 0, i32 3
  store i64 %7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.bus_dma_region, ptr %16, i32 0, i32 2
  store i64 %3, ptr %21, align 8
  store ptr %16, ptr %8, align 8
  br label %22

22:                                               ; preds = %18, %14, %12, %11
  %23 = phi i32 [ -22, %11 ], [ 0, %18 ], [ 0, %12 ], [ -12, %14 ]
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_contiguous(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i32 12, i32 33}
!11 = !{!"branch_weights", i32 1073205, i32 2146410443}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152571596, i64 2152572088, i64 2152571633, i64 2152571689, i64 2152571723, i64 2152571747, i64 2152571788, i64 2152571809, i64 2152571837, i64 2152571871}
