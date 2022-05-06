; ModuleID = '/llk/IR/drivers/iommu/io-pgtable-arm.c_pt.bc'
source_filename = "../drivers/iommu/io-pgtable-arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.64 }
%union.anon.64 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i64], i32 }
%struct.arm_lpae_io_pgtable = type { %struct.io_pgtable, i32, i32, i32, ptr }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }

@io_pgtable_arm_64_lpae_s1_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @arm_64_lpae_alloc_pgtable_s1, ptr @arm_lpae_free_pgtable }, align 4
@io_pgtable_arm_64_lpae_s2_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @arm_64_lpae_alloc_pgtable_s2, ptr @arm_lpae_free_pgtable }, align 4
@io_pgtable_arm_32_lpae_s1_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @arm_32_lpae_alloc_pgtable_s1, ptr @arm_lpae_free_pgtable }, align 4
@io_pgtable_arm_32_lpae_s2_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @arm_32_lpae_alloc_pgtable_s2, ptr @arm_lpae_free_pgtable }, align 4
@io_pgtable_arm_mali_lpae_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @arm_mali_lpae_alloc_pgtable, ptr @arm_lpae_free_pgtable }, align 4
@io_pgtable_apple_dart_init_fns = dso_local local_unnamed_addr global %struct.io_pgtable_init_fns { ptr @apple_dart_alloc_pgtable, ptr @arm_lpae_free_pgtable }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [31 x i8] c"drivers/iommu/io-pgtable-arm.c\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Cannot accommodate DMA translation for IOMMU page tables\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_64_lpae_alloc_pgtable_s1(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, -98
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %93

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %93, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = load i32, ptr %4, align 4
  br i1 %14, label %22, label %16

16:                                               ; preds = %11
  %17 = and i32 %15, -2017
  %18 = or i32 %17, 736
  store i32 %18, ptr %4, align 4
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %92

22:                                               ; preds = %11
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %15, -2017
  %27 = select i1 %25, i32 64, i32 192
  %28 = or i32 %26, %27
  store i32 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi i32 [ %18, %16 ], [ %28, %22 ]
  %31 = phi i32 [ %19, %16 ], [ %23, %22 ]
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %9, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 8, %35
  switch i32 %36, label %47 [
    i32 4096, label %37
    i32 16384, label %39
    i32 65536, label %41
  ]

37:                                               ; preds = %29
  %38 = lshr exact i32 %32, 1
  br label %43

39:                                               ; preds = %29
  %40 = select i1 %33, i32 16, i32 8
  br label %43

41:                                               ; preds = %29
  %42 = select i1 %33, i32 8, i32 24
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi i32 [ %38, %37 ], [ %40, %39 ], [ %42, %41 ]
  %45 = and i32 %30, -25
  %46 = or i32 %45, %44
  store i32 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %43, %29
  %48 = phi i32 [ %30, %29 ], [ %46, %43 ]
  %49 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, -32
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 31)
  switch i32 %52, label %92 [
    i32 0, label %53
    i32 2, label %55
    i32 4, label %58
    i32 5, label %61
    i32 6, label %64
    i32 8, label %67
    i32 10, label %70
  ]

53:                                               ; preds = %47
  %54 = and i32 %48, -8
  br label %73

55:                                               ; preds = %47
  %56 = and i32 %48, -8
  %57 = or i32 %56, 1
  br label %73

58:                                               ; preds = %47
  %59 = and i32 %48, -8
  %60 = or i32 %59, 2
  br label %73

61:                                               ; preds = %47
  %62 = and i32 %48, -8
  %63 = or i32 %62, 3
  br label %73

64:                                               ; preds = %47
  %65 = and i32 %48, -8
  %66 = or i32 %65, 4
  br label %73

67:                                               ; preds = %47
  %68 = and i32 %48, -8
  %69 = or i32 %68, 5
  br label %73

70:                                               ; preds = %47
  %71 = and i32 %48, -8
  %72 = or i32 %71, 6
  br label %73

73:                                               ; preds = %70, %67, %64, %61, %58, %55, %53
  %74 = phi i32 [ %72, %70 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ], [ %60, %58 ], [ %57, %55 ], [ %54, %53 ]
  %75 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = mul i32 %76, 129024
  %78 = and i32 %77, 129024
  %79 = and i32 %74, -129025
  %80 = or i32 %79, %78
  store i32 %80, ptr %4, align 4
  %81 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 2
  store i64 -200999100, ptr %81, align 8
  %82 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %9, i32 0, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = shl i32 8, %83
  %85 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %84, i32 noundef 3264, ptr noundef %0)
  %86 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %9, i32 0, i32 4
  store ptr %85, ptr %86, align 4
  %87 = icmp eq ptr %85, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %85 to i32
  %90 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %89, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %91 = zext i32 %90 to i64
  store i64 %91, ptr %3, align 8
  br label %93

92:                                               ; preds = %73, %47, %16
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %93

93:                                               ; preds = %92, %88, %8, %2
  %94 = phi ptr [ null, %92 ], [ %9, %88 ], [ null, %2 ], [ null, %8 ]
  ret ptr %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @arm_lpae_free_pgtable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %0, i32 noundef %3, ptr noundef %5)
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_64_lpae_alloc_pgtable_s2(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %5 = load i32, ptr %0, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %94

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 8, %16
  %18 = icmp ult i32 %17, 136
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, %16
  store i32 %22, ptr %15, align 8
  store i32 1, ptr %11, align 4
  br label %23

23:                                               ; preds = %19, %14, %10
  %24 = phi i32 [ 0, %14 ], [ 1, %19 ], [ %12, %10 ]
  %25 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 4
  %26 = load i8, ptr %25, align 8, !range !8
  %27 = icmp eq i8 %26, 0
  %28 = load i32, ptr %4, align 4
  %29 = and i32 %28, -2017
  %30 = select i1 %27, i32 64, i32 736
  %31 = or i32 %29, %30
  store i32 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = shl i32 8, %33
  switch i32 %34, label %44 [
    i32 4096, label %35
    i32 16384, label %38
    i32 65536, label %41
  ]

35:                                               ; preds = %23
  %36 = and i32 %31, -1305
  store i32 %36, ptr %4, align 4
  %37 = add i32 %24, 1
  br label %44

38:                                               ; preds = %23
  %39 = and i32 %31, -1305
  %40 = or i32 %39, 16
  store i32 %40, ptr %4, align 4
  br label %44

41:                                               ; preds = %23
  %42 = and i32 %31, -1305
  %43 = or i32 %42, 8
  store i32 %43, ptr %4, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %23
  %45 = phi i32 [ %31, %23 ], [ %43, %41 ], [ %40, %38 ], [ %36, %35 ]
  %46 = phi i32 [ %24, %23 ], [ %24, %41 ], [ %24, %38 ], [ %37, %35 ]
  %47 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -32
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 31)
  switch i32 %50, label %93 [
    i32 0, label %51
    i32 2, label %53
    i32 4, label %56
    i32 5, label %59
    i32 6, label %62
    i32 8, label %65
    i32 10, label %68
  ]

51:                                               ; preds = %44
  %52 = and i32 %45, -8
  br label %71

53:                                               ; preds = %44
  %54 = and i32 %45, -8
  %55 = or i32 %54, 1
  br label %71

56:                                               ; preds = %44
  %57 = and i32 %45, -8
  %58 = or i32 %57, 2
  br label %71

59:                                               ; preds = %44
  %60 = and i32 %45, -8
  %61 = or i32 %60, 3
  br label %71

62:                                               ; preds = %44
  %63 = and i32 %45, -8
  %64 = or i32 %63, 4
  br label %71

65:                                               ; preds = %44
  %66 = and i32 %45, -8
  %67 = or i32 %66, 5
  br label %71

68:                                               ; preds = %44
  %69 = and i32 %45, -8
  %70 = or i32 %69, 6
  br label %71

71:                                               ; preds = %68, %65, %62, %59, %56, %53, %51
  %72 = phi i32 [ %70, %68 ], [ %67, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ], [ %55, %53 ], [ %52, %51 ]
  %73 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = mul i32 %74, 516096
  %76 = and i32 %75, 516096
  %77 = and i32 %72, -522241
  %78 = shl i32 %46, 11
  %79 = and i32 %78, 6144
  %80 = or i32 %76, %79
  %81 = or i32 %80, %77
  %82 = xor i32 %81, 6144
  store i32 %82, ptr %4, align 4
  %83 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 1
  %84 = load i32, ptr %83, align 8
  %85 = shl i32 8, %84
  %86 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %85, i32 noundef 3264, ptr noundef %0)
  %87 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %8, i32 0, i32 4
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %86 to i32
  %91 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %90, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %92 = zext i32 %91 to i64
  store i64 %92, ptr %3, align 8
  br label %94

93:                                               ; preds = %71, %44
  tail call void @kfree(ptr noundef nonnull %8) #5
  br label %94

94:                                               ; preds = %93, %89, %7, %2
  %95 = phi ptr [ null, %93 ], [ %8, %89 ], [ null, %2 ], [ null, %7 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_32_lpae_alloc_pgtable_s1(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 32
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 40
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1075843072
  store i32 %13, ptr %11, align 4
  %14 = tail call ptr @arm_64_lpae_alloc_pgtable_s1(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_32_lpae_alloc_pgtable_s2(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 40
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 40
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1075843072
  store i32 %13, ptr %11, align 4
  %14 = tail call ptr @arm_64_lpae_alloc_pgtable_s2(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @arm_mali_lpae_alloc_pgtable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 48
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 40
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1075843072
  store i32 %16, ptr %14, align 4
  %17 = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %0)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %17, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  br label %28

26:                                               ; preds = %19
  store i32 0, ptr %20, align 4
  %27 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %17, i32 0, i32 1
  store i32 0, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %30 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7
  %31 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  store i64 8949128, ptr %31, align 8
  %32 = shl i32 8, %29
  %33 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %32, i32 noundef 3264, ptr noundef %0)
  %34 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %17, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %33 to i32
  %38 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %37, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %39 = or i32 %38, 7
  %40 = zext i32 %39 to i64
  store i64 %40, ptr %30, align 8
  %41 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 4
  %42 = load i8, ptr %41, align 8, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = or i64 %40, 16
  store i64 %45, ptr %30, align 8
  br label %47

46:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %17) #5
  br label %47

47:                                               ; preds = %46, %44, %36, %13, %9, %5, %2
  %48 = phi ptr [ null, %46 ], [ null, %2 ], [ null, %9 ], [ null, %5 ], [ null, %13 ], [ %17, %44 ], [ %17, %36 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @apple_dart_alloc_pgtable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 36
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 1
  %15 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %7, i32 0, i32 1
  br i1 %14, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, ptr %15, align 8
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %49, label %20

19:                                               ; preds = %13
  store i32 0, ptr %15, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %17, %16 ], [ 0, %19 ]
  store i32 2, ptr %10, align 4
  %22 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %7, i32 0, i32 1
  %23 = shl nuw nsw i32 1, %21
  %24 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7
  %25 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 7, i32 0, i32 1
  store i32 %23, ptr %25, align 8
  %26 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %7, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %21
  store i32 %28, ptr %22, align 8
  %29 = shl i32 8, %28
  %30 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %29, i32 noundef 3264, ptr noundef %0)
  %31 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %7, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %20
  %34 = load i32, ptr %25, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = shl i32 8, %27
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ 0, %36 ], [ %46, %38 ]
  %40 = mul i32 %37, %39
  %41 = getelementptr i8, ptr %30, i32 %40
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %42, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %44 = zext i32 %43 to i64
  %45 = getelementptr [4 x i64], ptr %24, i32 0, i32 %39
  store i64 %44, ptr %45, align 8
  %46 = add nuw i32 %39, 1
  %47 = load i32, ptr %25, align 8
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %38, label %50

49:                                               ; preds = %20, %16, %9
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %50

50:                                               ; preds = %49, %38, %33, %6, %2
  %51 = phi ptr [ null, %49 ], [ null, %2 ], [ null, %6 ], [ %7, %33 ], [ %7, %38 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc noalias ptr @arm_lpae_alloc_pgtable(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4096
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = and i32 %3, 4095
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #5, !range !13
  %11 = xor i32 %10, 31
  br label %17

12:                                               ; preds = %6
  %13 = and i32 %3, -4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #5, !range !13
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %15 ]
  %19 = shl nuw i32 1, %18
  switch i32 %19, label %22 [
    i32 4096, label %23
    i32 16384, label %20
    i32 65536, label %21
  ]

20:                                               ; preds = %17
  br label %23

21:                                               ; preds = %17
  br label %23

22:                                               ; preds = %17, %12
  br label %23

23:                                               ; preds = %22, %21, %20, %17, %1
  %24 = phi i32 [ 48, %22 ], [ 48, %20 ], [ 48, %17 ], [ 52, %21 ], [ 48, %1 ]
  %25 = phi i32 [ 0, %22 ], [ 33570816, %20 ], [ 1075843072, %17 ], [ 536936448, %21 ], [ 1075843072, %1 ]
  %26 = and i32 %25, %3
  store i32 %26, ptr %2, align 4
  %27 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %24) #5
  store i32 %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %24) #5
  store i32 %32, ptr %30, align 4
  %33 = and i32 %26, 86016
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 120) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 4
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 false) #5, !range !13
  %42 = add nsw i32 %41, -3
  %43 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %37, i32 0, i32 3
  store i32 %42, ptr %43, align 8
  %44 = load i32, ptr %27, align 8
  %45 = add i32 %44, -4
  %46 = sdiv i32 %45, %42
  %47 = sub i32 4, %46
  %48 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %37, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = sub i32 1, %46
  %50 = mul i32 %49, %42
  %51 = sub i32 %44, %41
  %52 = add i32 %51, %50
  %53 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %37, i32 0, i32 1
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.io_pgtable, ptr %37, i32 0, i32 3
  store ptr @arm_lpae_map, ptr %54, align 8
  %55 = getelementptr inbounds %struct.io_pgtable, ptr %37, i32 0, i32 3, i32 1
  store ptr @arm_lpae_map_pages, ptr %55, align 4
  %56 = getelementptr inbounds %struct.io_pgtable, ptr %37, i32 0, i32 3, i32 2
  store ptr @arm_lpae_unmap, ptr %56, align 8
  %57 = getelementptr inbounds %struct.io_pgtable, ptr %37, i32 0, i32 3, i32 3
  store ptr @arm_lpae_unmap_pages, ptr %57, align 4
  %58 = getelementptr inbounds %struct.io_pgtable, ptr %37, i32 0, i32 3, i32 4
  store ptr @arm_lpae_iova_to_phys, ptr %58, align 8
  br label %59

59:                                               ; preds = %39, %35, %23
  %60 = phi ptr [ %37, %39 ], [ null, %23 ], [ null, %35 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %2, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = add i32 %0, -1
  %7 = lshr i32 %6, 12
  %8 = icmp ult i32 %6, 4096
  %9 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #5, !range !13
  %10 = sub nuw nsw i32 32, %9
  %11 = select i1 %8, i32 0, i32 %10
  %12 = or i32 %1, 256
  %13 = tail call ptr @__alloc_pages(i32 noundef %12, i32 noundef %11, i32 noundef 0, ptr noundef null) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @page_address(ptr noundef nonnull %13) #5
  %17 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %2, i32 0, i32 4
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #5
  %22 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %34, !prof !14

25:                                               ; preds = %20
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %26 = tail call ptr @dev_driver_string(ptr noundef %5) #5
  %27 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %28, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %26, ptr noundef %33) #5
  br label %34

34:                                               ; preds = %32, %20
  br i1 %21, label %48, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %16 to i32
  %38 = add i32 %37, 1073741824
  %39 = lshr i32 %38, 12
  %40 = getelementptr %struct.page, ptr %36, i32 %39
  %41 = and i32 %37, 4095
  %42 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %40, i32 noundef %41, i32 noundef %0, i32 noundef 1, i32 noundef 0) #5
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %37, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %42, i32 noundef %0, i32 noundef 1, i32 noundef 0) #5
  br label %48

48:                                               ; preds = %47, %35, %34
  tail call void @__free_pages(ptr noundef nonnull %13, i32 noundef %11) #5
  br label %49

49:                                               ; preds = %48, %44, %15, %3
  %50 = phi ptr [ null, %48 ], [ null, %3 ], [ %16, %44 ], [ %16, %15 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_lpae_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call i32 @arm_lpae_map_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef %4, i32 noundef %5, ptr noundef null)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_lpae_map_pages(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = getelementptr i8, ptr %0, i32 -80
  %10 = getelementptr i8, ptr %0, i32 -72
  %11 = getelementptr i8, ptr %0, i32 36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %1 to i64
  %16 = getelementptr i8, ptr %0, i32 -64
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = lshr i64 %15, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %8
  %23 = getelementptr i8, ptr %0, i32 -68
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %3
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %28, label %27, !prof !15

27:                                               ; preds = %22, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #5
  br label %296

28:                                               ; preds = %22
  %29 = load i32, ptr %10, align 8
  %30 = shl i32 %29, 26
  %31 = ashr i32 %30, 31
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %0, i32 -60
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %2, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !15

38:                                               ; preds = %33, %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 493, i32 noundef 9, ptr noundef null) #5
  br label %296

39:                                               ; preds = %33
  %40 = and i32 %5, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %296, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 8
  switch i32 %43, label %60 [
    i32 7, label %44
    i32 2, label %53
    i32 0, label %53
  ]

44:                                               ; preds = %42
  %45 = shl i32 %5, 6
  %46 = and i32 %45, 128
  %47 = xor i32 %46, 128
  %48 = zext i32 %47 to i64
  %49 = and i32 %5, 1
  %50 = icmp eq i32 %49, 0
  %51 = or i64 %48, 256
  %52 = select i1 %50, i64 %51, i64 %48
  br label %98

53:                                               ; preds = %42, %42
  %54 = icmp eq i32 %40, 1
  %55 = select i1 %54, i64 2176, i64 2048
  %56 = and i32 %5, 32
  %57 = icmp eq i32 %56, 0
  %58 = or i64 %55, 64
  %59 = select i1 %57, i64 %58, i64 %55
  br label %64

60:                                               ; preds = %42
  %61 = shl i32 %5, 6
  %62 = and i32 %61, 192
  %63 = zext i32 %62 to i64
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i64 [ %63, %60 ], [ %59, %53 ]
  switch i32 %43, label %73 [
    i32 3, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %64, %64
  %67 = and i32 %5, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = and i32 %5, 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i64 20, i64 60
  br label %79

73:                                               ; preds = %64
  %74 = and i32 %5, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = and i32 %5, 4
  %78 = zext i32 %77 to i64
  br label %79

79:                                               ; preds = %76, %73, %69, %66
  %80 = phi i64 [ %78, %76 ], [ 4, %66 ], [ %72, %69 ], [ 8, %73 ]
  %81 = and i32 %5, 4
  %82 = icmp eq i32 %81, 0
  %83 = icmp eq i32 %43, 5
  %84 = select i1 %82, i1 true, i1 %83
  %85 = select i1 %84, i64 512, i64 768
  %86 = or i64 %65, %85
  %87 = or i64 %86, %80
  %88 = and i32 %5, 8
  %89 = icmp eq i32 %88, 0
  %90 = or i64 %87, 27021597764222976
  %91 = select i1 %89, i64 %87, i64 %90
  %92 = shl i32 %29, 5
  %93 = and i32 %92, 32
  %94 = zext i32 %93 to i64
  %95 = or i64 %91, %94
  %96 = or i64 %95, 1024
  %97 = select i1 %83, i64 %95, i64 %96
  br label %98

98:                                               ; preds = %79, %44
  %99 = phi i64 [ %52, %44 ], [ %97, %79 ]
  %100 = getelementptr i8, ptr %0, i32 32
  %101 = getelementptr i8, ptr %0, i32 24
  %102 = getelementptr i8, ptr %0, i32 -56
  %103 = getelementptr i8, ptr %0, i32 -48
  %104 = tail call i32 @llvm.smax.i32(i32 %14, i32 3) #5
  br label %105

105:                                              ; preds = %290, %98
  %106 = phi i32 [ %14, %98 ], [ %293, %290 ]
  %107 = phi i32 [ %14, %98 ], [ %292, %290 ]
  %108 = phi ptr [ %12, %98 ], [ %291, %290 ]
  %109 = sub i32 4, %107
  %110 = load i32, ptr %100, align 8
  %111 = mul i32 %110, %109
  %112 = add i32 %111, 3
  %113 = zext i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = trunc i64 %114 to i32
  %116 = shl i32 8, %110
  %117 = lshr i64 %15, %113
  %118 = icmp eq i32 %106, %107
  br i1 %118, label %119, label %122

119:                                              ; preds = %105
  %120 = load i32, ptr %101, align 8
  %121 = sub i32 %120, %110
  br label %122

122:                                              ; preds = %119, %105
  %123 = phi i32 [ %121, %119 ], [ 0, %105 ]
  %124 = add i32 %123, %110
  %125 = shl nsw i32 -1, %124
  %126 = xor i32 %125, -1
  %127 = trunc i64 %117 to i32
  %128 = and i32 %126, %127
  %129 = getelementptr i64, ptr %108, i32 %128
  %130 = icmp eq i32 %115, %3
  br i1 %130, label %131, label %217

131:                                              ; preds = %122
  %132 = lshr exact i32 %116, 3
  %133 = sub i32 %132, %128
  %134 = tail call i32 @llvm.smin.i32(i32 %133, i32 %4) #5
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %203

136:                                              ; preds = %131
  %137 = icmp eq i32 %107, 3
  br label %138

138:                                              ; preds = %178, %136
  %139 = phi i32 [ 0, %136 ], [ %179, %178 ]
  %140 = getelementptr i64, ptr %129, i32 %139
  %141 = load i64, ptr %140, align 8
  %142 = load i32, ptr %9, align 8
  %143 = icmp ne i32 %142, 5
  %144 = and i1 %137, %143
  %145 = and i64 %141, 3
  %146 = select i1 %144, i64 3, i64 1
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #5
  br label %294

149:                                              ; preds = %138
  %150 = icmp eq i64 %145, 3
  br i1 %150, label %151, label %178

151:                                              ; preds = %149
  %152 = load i32, ptr %100, align 8
  %153 = mul i32 %152, %109
  %154 = add i32 %153, 3
  %155 = zext i32 %154 to i64
  %156 = shl nuw i64 1, %155
  %157 = trunc i64 %156 to i32
  %158 = lshr i64 %15, %155
  %159 = load i32, ptr %13, align 4
  %160 = icmp eq i32 %159, %107
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, ptr %101, align 8
  %163 = sub i32 %162, %152
  br label %164

164:                                              ; preds = %161, %151
  %165 = phi i32 [ %163, %161 ], [ 0, %151 ]
  %166 = add i32 %165, %152
  %167 = shl nsw i32 -1, %166
  %168 = xor i32 %167, -1
  %169 = trunc i64 %158 to i32
  %170 = and i32 %168, %169
  %171 = sub i32 0, %170
  %172 = getelementptr i64, ptr %129, i32 %171
  %173 = mul i32 %139, %157
  %174 = add i32 %173, %1
  %175 = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %9, ptr noundef null, i32 noundef %174, i32 noundef %157, i32 noundef 1, i32 noundef %107, ptr noundef %172) #5
  %176 = icmp eq i32 %175, %157
  br i1 %176, label %178, label %177

177:                                              ; preds = %164
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #5
  br label %294

178:                                              ; preds = %164, %149
  %179 = add nuw nsw i32 %139, 1
  %180 = icmp eq i32 %179, %134
  br i1 %180, label %181, label %138

181:                                              ; preds = %178
  %182 = load i32, ptr %100, align 8
  %183 = mul i32 %182, %109
  %184 = add i32 %183, 3
  %185 = zext i32 %184 to i64
  %186 = shl nuw i64 1, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, ptr %9, align 8
  %189 = icmp ne i32 %188, 5
  %190 = and i1 %137, %189
  %191 = select i1 %190, i64 3, i64 1
  %192 = or i64 %191, %99
  br label %193

193:                                              ; preds = %193, %181
  %194 = phi i32 [ %201, %193 ], [ 0, %181 ]
  %195 = mul i32 %194, %187
  %196 = add i32 %195, %2
  %197 = and i32 %196, -4096
  %198 = zext i32 %197 to i64
  %199 = or i64 %192, %198
  %200 = getelementptr i64, ptr %129, i32 %194
  store i64 %199, ptr %200, align 8
  %201 = add nuw nsw i32 %194, 1
  %202 = icmp eq i32 %201, %134
  br i1 %202, label %203, label %193

203:                                              ; preds = %193, %131
  %204 = load i8, ptr %102, align 8, !range !8
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load ptr, ptr %103, align 8
  %208 = ptrtoint ptr %129 to i32
  %209 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %208, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %210 = shl i32 %134, 3
  tail call void @dma_sync_single_for_device(ptr noundef %207, i32 noundef %209, i32 noundef %210, i32 noundef 1) #5
  br label %211

211:                                              ; preds = %206, %203
  %212 = icmp eq ptr %7, null
  br i1 %212, label %294, label %213

213:                                              ; preds = %211
  %214 = mul i32 %134, %3
  %215 = load i32, ptr %7, align 4
  %216 = add i32 %215, %214
  store i32 %216, ptr %7, align 4
  br label %294

217:                                              ; preds = %122
  %218 = icmp eq i32 %107, %104
  br i1 %218, label %219, label %220, !prof !14

219:                                              ; preds = %217
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef null) #5
  br label %294

220:                                              ; preds = %217
  %221 = load volatile i64, ptr %129, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %266

223:                                              ; preds = %220
  %224 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %116, i32 noundef %6, ptr noundef %10) #5
  %225 = icmp eq ptr %224, null
  br i1 %225, label %294, label %226

226:                                              ; preds = %223
  %227 = ptrtoint ptr %224 to i32
  %228 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %227, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %229 = and i32 %228, -4096
  %230 = zext i32 %229 to i64
  %231 = load i32, ptr %10, align 8
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, i64 3, i64 -9223372036854775805
  %235 = or i64 %234, %230
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #5, !srcloc !17
  %236 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %129, ptr %129, i64 0, i64 %235, ptr elementtype(i64) %129) #5, !srcloc !18
  %237 = extractvalue { i32, i64 } %236, 1
  %238 = load i8, ptr %102, align 8, !range !8
  %239 = icmp eq i8 %238, 0
  %240 = and i64 %237, 36028797018963968
  %241 = icmp eq i64 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  br i1 %242, label %243, label %252

243:                                              ; preds = %226
  %244 = load ptr, ptr %103, align 8
  %245 = ptrtoint ptr %129 to i32
  %246 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %245, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_sync_single_for_device(ptr noundef %244, i32 noundef %246, i32 noundef 8, i32 noundef 1) #5
  %247 = icmp eq i64 %237, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = load i8, ptr %102, align 8, !range !8
  br label %254

250:                                              ; preds = %243
  %251 = or i64 %235, 36028797018963968
  store volatile i64 %251, ptr %129, align 8
  br label %290

252:                                              ; preds = %226
  %253 = icmp eq i64 %237, 0
  br i1 %253, label %290, label %254

254:                                              ; preds = %252, %248
  %255 = phi i8 [ %249, %248 ], [ %238, %252 ]
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load ptr, ptr %103, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %258, i32 noundef %228, i32 noundef %116, i32 noundef 1, i32 noundef 0) #5
  br label %259

259:                                              ; preds = %257, %254
  %260 = add i32 %116, -1
  %261 = icmp ult i32 %260, 4096
  %262 = lshr i32 %260, 12
  %263 = tail call i32 @llvm.ctlz.i32(i32 %262, i1 false) #5, !range !13
  %264 = sub nuw nsw i32 32, %263
  %265 = select i1 %261, i32 0, i32 %264
  tail call void @free_pages(i32 noundef %227, i32 noundef %265) #5
  br label %276

266:                                              ; preds = %220
  %267 = load i8, ptr %102, align 8, !range !8
  %268 = icmp eq i8 %267, 0
  %269 = and i64 %221, 36028797018963968
  %270 = icmp eq i64 %269, 0
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load ptr, ptr %103, align 8
  %274 = ptrtoint ptr %129 to i32
  %275 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %274, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_sync_single_for_device(ptr noundef %273, i32 noundef %275, i32 noundef 8, i32 noundef 1) #5
  br label %276

276:                                              ; preds = %272, %266, %259
  %277 = phi i64 [ %237, %259 ], [ %221, %272 ], [ %221, %266 ]
  %278 = and i64 %277, 3
  %279 = icmp eq i64 %278, 1
  br i1 %279, label %289, label %280

280:                                              ; preds = %276
  %281 = load i32, ptr %100, align 8
  %282 = shl i32 8, %281
  %283 = icmp ult i32 %282, 65536
  %284 = trunc i64 %277 to i32
  %285 = select i1 %283, i32 -4096, i32 -65536
  %286 = and i32 %285, %284
  %287 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %286, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %288 = inttoptr i32 %287 to ptr
  br label %290

289:                                              ; preds = %276
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #5
  br label %294

290:                                              ; preds = %280, %252, %250
  %291 = phi ptr [ %288, %280 ], [ %224, %252 ], [ %224, %250 ]
  %292 = add i32 %107, 1
  %293 = load i32, ptr %13, align 4
  br label %105

294:                                              ; preds = %289, %223, %219, %213, %211, %177, %148
  %295 = phi i32 [ -22, %219 ], [ -17, %289 ], [ 0, %213 ], [ 0, %211 ], [ -22, %177 ], [ -17, %148 ], [ -12, %223 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  br label %296

296:                                              ; preds = %294, %39, %38, %27
  %297 = phi i32 [ -22, %27 ], [ -34, %38 ], [ %295, %294 ], [ 0, %39 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_lpae_unmap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -80
  %6 = getelementptr i8, ptr %0, i32 -72
  %7 = getelementptr i8, ptr %0, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = zext i32 %1 to i64
  %10 = getelementptr i8, ptr %0, i32 -64
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %9, %12
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = getelementptr i8, ptr %0, i32 -68
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %2
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %22, label %21, !prof !15

21:                                               ; preds = %16, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #5
  br label %32

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 8
  %24 = shl i32 %23, 26
  %25 = ashr i32 %24, 31
  %26 = icmp eq i32 %25, %14
  br i1 %26, label %28, label %27, !prof !15

27:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #5
  br label %32

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %0, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %5, ptr noundef %3, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %30, ptr noundef %8) #5
  br label %32

32:                                               ; preds = %28, %27, %21
  %33 = phi i32 [ 0, %21 ], [ 0, %27 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_lpae_unmap_pages(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr i8, ptr %0, i32 -80
  %7 = getelementptr i8, ptr %0, i32 -72
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = load ptr, ptr %8, align 4
  %10 = zext i32 %1 to i64
  %11 = getelementptr i8, ptr %0, i32 -64
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %10, %13
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %0, i32 -68
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %2
  %21 = icmp ne i32 %20, %2
  %22 = icmp eq i32 %3, 0
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %25, !prof !14

24:                                               ; preds = %17, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #5
  br label %35

25:                                               ; preds = %17
  %26 = load i32, ptr %7, align 8
  %27 = shl i32 %26, 26
  %28 = ashr i32 %27, 31
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %31, label %30, !prof !15

30:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #5
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %0, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %6, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %33, ptr noundef %9)
  br label %35

35:                                               ; preds = %31, %30, %24
  %36 = phi i32 [ 0, %24 ], [ 0, %30 ], [ %34, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_lpae_iova_to_phys(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %1 to i64
  %9 = getelementptr i8, ptr %0, i32 32
  %10 = getelementptr i8, ptr %0, i32 24
  br label %11

11:                                               ; preds = %44, %2
  %12 = phi ptr [ %5, %2 ], [ %51, %44 ]
  %13 = phi i32 [ %7, %2 ], [ %52, %44 ]
  %14 = icmp eq ptr %12, null
  br i1 %14, label %65, label %15

15:                                               ; preds = %11
  %16 = sub i32 4, %13
  %17 = load i32, ptr %9, align 8
  %18 = mul i32 %17, %16
  %19 = add i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = lshr i64 %8, %20
  %22 = icmp eq i32 %13, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, ptr %10, align 8
  %25 = sub i32 %24, %17
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i32 [ %25, %23 ], [ 0, %15 ]
  %28 = add i32 %27, %17
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = trunc i64 %21 to i32
  %32 = and i32 %30, %31
  %33 = getelementptr i64, ptr %12, i32 %32
  %34 = load volatile i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %26
  %37 = load i32, ptr %3, align 8
  %38 = icmp eq i32 %13, 3
  %39 = icmp ne i32 %37, 5
  %40 = and i1 %38, %39
  %41 = and i64 %34, 3
  %42 = select i1 %40, i64 3, i64 1
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = shl i32 8, %17
  %46 = icmp ult i32 %45, 65536
  %47 = trunc i64 %34 to i32
  %48 = select i1 %46, i32 -4096, i32 -65536
  %49 = and i32 %48, %47
  %50 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %49, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %51 = inttoptr i32 %50 to ptr
  %52 = add i32 %13, 1
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %11, label %65

54:                                               ; preds = %36
  %55 = shl nsw i64 -1, %20
  %56 = trunc i64 %55 to i32
  %57 = xor i32 %56, -1
  %58 = and i32 %57, %1
  %59 = shl i32 8, %17
  %60 = icmp ult i32 %59, 65536
  %61 = trunc i64 %34 to i32
  %62 = select i1 %60, i32 -4096, i32 -65536
  %63 = and i32 %62, %61
  %64 = or i32 %63, %58
  br label %65

65:                                               ; preds = %54, %44, %26, %11
  %66 = phi i32 [ %64, %54 ], [ 0, %11 ], [ 0, %26 ], [ 0, %44 ]
  ret i32 %66
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__arm_lpae_unmap(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = icmp eq i32 %5, 4
  br i1 %8, label %18, label %9, !prof !14

9:                                                ; preds = %7
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 1
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 4
  %17 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 6
  br label %19

18:                                               ; preds = %284, %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 628, i32 noundef 9, ptr noundef null) #5
  br label %297

19:                                               ; preds = %284, %9
  %20 = phi ptr [ %6, %9 ], [ %286, %284 ]
  %21 = phi i32 [ %5, %9 ], [ %285, %284 ]
  %22 = sub i32 4, %21
  %23 = load i32, ptr %11, align 8
  %24 = mul i32 %23, %22
  %25 = add i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %10, %26
  %28 = load i32, ptr %12, align 4
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, ptr %13, align 8
  %32 = sub i32 %31, %23
  br label %33

33:                                               ; preds = %30, %19
  %34 = phi i32 [ %32, %30 ], [ 0, %19 ]
  %35 = add i32 %34, %23
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = trunc i64 %27 to i32
  %39 = and i32 %37, %38
  %40 = getelementptr i64, ptr %20, i32 %39
  %41 = load volatile i64, ptr %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44, !prof !14

43:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef null) #5
  br label %297

44:                                               ; preds = %33
  %45 = shl nuw i64 1, %26
  %46 = icmp eq i64 %45, %14
  br i1 %46, label %47, label %125

47:                                               ; preds = %44
  %48 = shl i32 8, %23
  %49 = lshr exact i32 %48, 3
  %50 = sub i32 %49, %39
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %4)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %47
  %54 = icmp eq i32 %21, 3
  %55 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 5
  %56 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 1
  %57 = add i32 %21, 1
  %58 = icmp eq ptr %1, null
  %59 = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %1, i32 0, i32 4
  br label %60

60:                                               ; preds = %118, %53
  %61 = phi ptr [ %40, %53 ], [ %119, %118 ]
  %62 = phi i32 [ 0, %53 ], [ %120, %118 ]
  %63 = load volatile i64, ptr %61, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66, !prof !14

65:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 644, i32 noundef 9, ptr noundef null) #5
  br label %122

66:                                               ; preds = %60
  store i64 0, ptr %61, align 8
  %67 = load i8, ptr %16, align 8, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load ptr, ptr %17, align 8
  %71 = ptrtoint ptr %61 to i32
  %72 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %71, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_sync_single_for_device(ptr noundef %70, i32 noundef %72, i32 noundef 8, i32 noundef 1) #5
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, ptr %0, align 8
  %75 = icmp ne i32 %74, 5
  %76 = and i1 %54, %75
  %77 = and i64 %63, 3
  %78 = select i1 %76, i64 3, i64 1
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %103, label %80

80:                                               ; preds = %73
  %81 = mul i32 %62, %3
  %82 = add i32 %81, %2
  %83 = load i32, ptr %11, align 8
  %84 = shl i32 8, %83
  %85 = load ptr, ptr %55, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.iommu_flush_ops, ptr %85, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %56, align 4
  tail call void %89(i32 noundef %82, i32 noundef %3, i32 noundef %84, ptr noundef %92) #5
  %93 = load i32, ptr %11, align 8
  %94 = shl i32 8, %93
  br label %95

95:                                               ; preds = %91, %87, %80
  %96 = phi i32 [ %84, %80 ], [ %84, %87 ], [ %94, %91 ]
  %97 = icmp ult i32 %96, 65536
  %98 = trunc i64 %63 to i32
  %99 = select i1 %97, i32 -4096, i32 -65536
  %100 = and i32 %99, %98
  %101 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %100, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %102 = inttoptr i32 %101 to ptr
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %0, i32 noundef %57, ptr noundef %102)
  br label %118

103:                                              ; preds = %73
  br i1 %58, label %107, label %104

104:                                              ; preds = %103
  %105 = load i8, ptr %59, align 4, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104, %103
  %108 = mul i32 %62, %3
  %109 = add i32 %108, %2
  %110 = load ptr, ptr %55, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.iommu_flush_ops, ptr %110, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %56, align 4
  tail call void %114(ptr noundef %1, i32 noundef %109, i32 noundef %3, ptr noundef %117) #5
  br label %118

118:                                              ; preds = %116, %112, %107, %104, %95
  %119 = getelementptr i64, ptr %61, i32 1
  %120 = add nuw nsw i32 %62, 1
  %121 = icmp eq i32 %120, %51
  br i1 %121, label %122, label %60

122:                                              ; preds = %118, %65, %47
  %123 = phi i32 [ %62, %65 ], [ 0, %47 ], [ %51, %118 ]
  %124 = mul i32 %123, %3
  br label %297

125:                                              ; preds = %44
  %126 = load i32, ptr %0, align 8
  %127 = icmp eq i32 %21, 3
  %128 = icmp ne i32 %126, 5
  %129 = and i1 %127, %128
  %130 = and i64 %41, 3
  %131 = select i1 %129, i64 3, i64 1
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %288

133:                                              ; preds = %125
  %134 = add i32 %21, 1
  %135 = shl i32 8, %23
  %136 = sub i32 3, %21
  %137 = mul i32 %23, %136
  %138 = add i32 %137, 3
  %139 = zext i32 %138 to i64
  %140 = shl nuw i64 1, %139
  %141 = trunc i64 %140 to i32
  %142 = lshr exact i32 %135, 3
  %143 = icmp eq i32 %134, 4
  br i1 %143, label %144, label %145, !prof !14

144:                                              ; preds = %133
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 572, i32 noundef 9, ptr noundef null) #5
  br label %297

145:                                              ; preds = %133
  %146 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %135, i32 noundef 2592, ptr noundef %15) #5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %297, label %148

148:                                              ; preds = %145
  %149 = icmp eq i32 %141, %3
  br i1 %149, label %150, label %170

150:                                              ; preds = %148
  %151 = load i32, ptr %11, align 8
  %152 = mul i32 %151, %136
  %153 = add i32 %152, 3
  %154 = zext i32 %153 to i64
  %155 = lshr i64 %10, %154
  %156 = load i32, ptr %12, align 4
  %157 = icmp eq i32 %156, %134
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32, ptr %13, align 8
  %160 = sub i32 %159, %151
  br label %161

161:                                              ; preds = %158, %150
  %162 = phi i32 [ %160, %158 ], [ 0, %150 ]
  %163 = add i32 %162, %151
  %164 = shl nsw i32 -1, %163
  %165 = xor i32 %164, -1
  %166 = trunc i64 %155 to i32
  %167 = and i32 %165, %166
  %168 = sub i32 %142, %167
  %169 = tail call i32 @llvm.smin.i32(i32 %168, i32 %4) #5
  br label %170

170:                                              ; preds = %161, %148
  %171 = phi i32 [ %167, %161 ], [ -1, %148 ]
  %172 = phi i32 [ %169, %161 ], [ 0, %148 ]
  %173 = and i64 %41, 27021597764227068
  %174 = icmp ugt i32 %23, 28
  br i1 %174, label %211, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %11, align 8
  %177 = shl i32 8, %176
  %178 = icmp ult i32 %177, 65536
  %179 = select i1 %178, i32 -4096, i32 -65536
  %180 = trunc i64 %41 to i32
  %181 = and i32 %179, %180
  %182 = add i32 %172, %171
  %183 = icmp eq i32 %134, 3
  %184 = tail call i32 @llvm.smax.i32(i32 %142, i32 1)
  br label %185

185:                                              ; preds = %207, %175
  %186 = phi i32 [ 0, %175 ], [ %208, %207 ]
  %187 = phi i32 [ %181, %175 ], [ %209, %207 ]
  %188 = icmp sge i32 %186, %171
  %189 = icmp slt i32 %186, %182
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %207, label %191

191:                                              ; preds = %185
  %192 = getelementptr i64, ptr %146, i32 %186
  %193 = load i32, ptr %0, align 8
  %194 = icmp ne i32 %193, 5
  %195 = and i1 %183, %194
  %196 = select i1 %195, i64 3, i64 1
  %197 = and i32 %187, -4096
  %198 = zext i32 %197 to i64
  %199 = or i64 %173, %198
  %200 = or i64 %199, %196
  store i64 %200, ptr %192, align 8
  %201 = load i8, ptr %16, align 8, !range !8
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %191
  %204 = load ptr, ptr %17, align 8
  %205 = ptrtoint ptr %192 to i32
  %206 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %205, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_sync_single_for_device(ptr noundef %204, i32 noundef %206, i32 noundef 8, i32 noundef 1) #5
  br label %207

207:                                              ; preds = %203, %191, %185
  %208 = add nuw nsw i32 %186, 1
  %209 = add i32 %187, %141
  %210 = icmp eq i32 %208, %184
  br i1 %210, label %211, label %185

211:                                              ; preds = %207, %170
  %212 = ptrtoint ptr %146 to i32
  %213 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %212, i32 -2130706432, i32 8454144) #6, !srcloc !10
  %214 = and i32 %213, -4096
  %215 = zext i32 %214 to i64
  %216 = load i32, ptr %15, align 8
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i64 3, i64 -9223372036854775805
  %220 = or i64 %219, %215
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #5, !srcloc !17
  %221 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %40, ptr %40, i64 %41, i64 %220, ptr elementtype(i64) %40) #5, !srcloc !18
  %222 = extractvalue { i32, i64 } %221, 1
  %223 = load i8, ptr %16, align 8, !range !8
  %224 = icmp eq i8 %223, 0
  %225 = and i64 %222, 36028797018963968
  %226 = icmp eq i64 %225, 0
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %228, label %235

228:                                              ; preds = %211
  %229 = load ptr, ptr %17, align 8
  %230 = ptrtoint ptr %40 to i32
  %231 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %230, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_sync_single_for_device(ptr noundef %229, i32 noundef %231, i32 noundef 8, i32 noundef 1) #5
  %232 = icmp eq i64 %222, %41
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = or i64 %220, 36028797018963968
  store volatile i64 %234, ptr %40, align 8
  br label %235

235:                                              ; preds = %233, %228, %211
  %236 = icmp eq i64 %222, %41
  br i1 %236, label %260, label %237

237:                                              ; preds = %235
  %238 = load i8, ptr %16, align 8, !range !8
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load ptr, ptr %17, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %241, i32 noundef %213, i32 noundef %135, i32 noundef 1, i32 noundef 0) #5
  br label %242

242:                                              ; preds = %240, %237
  %243 = add i32 %135, -1
  %244 = icmp ult i32 %243, 4096
  %245 = lshr i32 %243, 12
  %246 = tail call i32 @llvm.ctlz.i32(i32 %245, i1 false) #5, !range !13
  %247 = sub nuw nsw i32 32, %246
  %248 = select i1 %244, i32 0, i32 %247
  tail call void @free_pages(i32 noundef %212, i32 noundef %248) #5
  %249 = and i64 %222, 3
  %250 = icmp eq i64 %249, 3
  br i1 %250, label %251, label %297

251:                                              ; preds = %242
  %252 = load i32, ptr %11, align 8
  %253 = shl i32 8, %252
  %254 = icmp ult i32 %253, 65536
  %255 = trunc i64 %222 to i32
  %256 = select i1 %254, i32 -4096, i32 -65536
  %257 = and i32 %256, %255
  %258 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %257, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %259 = inttoptr i32 %258 to ptr
  br label %284

260:                                              ; preds = %235
  %261 = icmp sgt i32 %171, -1
  br i1 %261, label %262, label %284

262:                                              ; preds = %260
  %263 = icmp sgt i32 %172, 0
  br i1 %263, label %264, label %282

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 5
  %266 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 1
  br label %267

267:                                              ; preds = %279, %264
  %268 = phi i32 [ 0, %264 ], [ %280, %279 ]
  %269 = mul i32 %268, %3
  %270 = add i32 %269, %2
  %271 = load ptr, ptr %265, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %279, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.iommu_flush_ops, ptr %271, i32 0, i32 2
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = load ptr, ptr %266, align 4
  tail call void %275(ptr noundef %1, i32 noundef %270, i32 noundef %3, ptr noundef %278) #5
  br label %279

279:                                              ; preds = %277, %273, %267
  %280 = add nuw nsw i32 %268, 1
  %281 = icmp eq i32 %280, %172
  br i1 %281, label %282, label %267

282:                                              ; preds = %279, %262
  %283 = mul i32 %172, %3
  br label %297

284:                                              ; preds = %288, %260, %251
  %285 = phi i32 [ %296, %288 ], [ %134, %260 ], [ %134, %251 ]
  %286 = phi ptr [ %295, %288 ], [ %146, %260 ], [ %259, %251 ]
  %287 = icmp eq i32 %285, 4
  br i1 %287, label %18, label %19, !prof !14

288:                                              ; preds = %125
  %289 = shl i32 8, %23
  %290 = icmp ult i32 %289, 65536
  %291 = trunc i64 %41 to i32
  %292 = select i1 %290, i32 -4096, i32 -65536
  %293 = and i32 %292, %291
  %294 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %293, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %295 = inttoptr i32 %294 to ptr
  %296 = add i32 %21, 1
  br label %284

297:                                              ; preds = %282, %242, %145, %144, %122, %43, %18
  %298 = phi i32 [ 0, %18 ], [ 0, %43 ], [ %124, %122 ], [ 0, %144 ], [ %283, %282 ], [ 0, %145 ], [ 0, %242 ]
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__arm_lpae_free_pgtable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  %7 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %0, i32 0, i32 3
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 8, %10
  %12 = icmp eq i32 %1, 3
  %13 = select i1 %12, i32 0, i32 %11
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %41, label %16

16:                                               ; preds = %3
  %17 = add i32 %1, 1
  br label %18

18:                                               ; preds = %39, %16
  %19 = phi ptr [ %2, %16 ], [ %20, %39 ]
  %20 = getelementptr i64, ptr %19, i32 1
  %21 = load i64, ptr %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %0, align 8
  %25 = icmp ne i32 %24, 5
  %26 = and i1 %12, %25
  %27 = and i64 %21, 3
  %28 = select i1 %26, i64 3, i64 1
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %8, align 8
  %32 = shl i32 8, %31
  %33 = icmp ult i32 %32, 65536
  %34 = trunc i64 %21 to i32
  %35 = select i1 %33, i32 -4096, i32 -65536
  %36 = and i32 %35, %34
  %37 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %36, i32 -2130706432, i32 8454144) #6, !srcloc !19
  %38 = inttoptr i32 %37 to ptr
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %0, i32 noundef %17, ptr noundef %38)
  br label %39

39:                                               ; preds = %30, %23, %18
  %40 = icmp eq ptr %20, %14
  br i1 %40, label %41, label %18

41:                                               ; preds = %39, %3
  %42 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 4
  %43 = load i8, ptr %42, align 8, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.io_pgtable, ptr %0, i32 0, i32 2, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %2 to i32
  %49 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %48, i32 -2130706432, i32 8454144) #6, !srcloc !10
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %49, i32 noundef %11, i32 noundef 1, i32 noundef 0) #5
  br label %50

50:                                               ; preds = %45, %41
  %51 = add i32 %11, -1
  %52 = icmp ult i32 %51, 4096
  %53 = lshr i32 %51, 12
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 false) #5, !range !13
  %55 = sub nuw nsw i32 32, %54
  %56 = select i1 %52, i32 0, i32 %55
  %57 = ptrtoint ptr %2 to i32
  tail call void @free_pages(i32 noundef %57, i32 noundef %56) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2152839085}
!10 = !{i64 2148887504, i64 2148887527, i64 2148887559, i64 2148887591, i64 2148887629, i64 2148887659}
!11 = !{i64 2152839690}
!12 = !{i64 2152840292}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2152777299}
!17 = !{i64 281663, i64 2147783229, i64 2147783255, i64 2147783302, i64 2147783324, i64 2147783352, i64 2147783372}
!18 = !{i64 368212, i64 368242, i64 368259, i64 368280, i64 368293, i64 368324, i64 368341, i64 368354}
!19 = !{i64 2148888290, i64 2148888313, i64 2148888345, i64 2148888377, i64 2148888415, i64 2148888445}
!20 = !{i64 2152795414}
