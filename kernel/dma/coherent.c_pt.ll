; ModuleID = '/llk/IR/kernel/dma/coherent.c_pt.bc'
source_filename = "../kernel/dma/coherent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reserved_mem_ops = type { ptr, ptr }
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
%struct.dma_coherent_mem = type { ptr, i32, i32, i32, ptr, %struct.spinlock, i8 }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }

@__of_table_dma = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shared-dma-pool\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rmem_dma_setup }, section "__reservedmem_of_table", align 4
@.str = private unnamed_addr constant [72 x i8] c"\013Reserved memory: failed to init DMA memory pool at %pa, size %zd MiB\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"reusable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\013Reserved memory: regions without no-map are not yet supported\0A\00", align 1
@rmem_dma_ops = internal constant %struct.reserved_mem_ops { ptr @rmem_dma_device_init, ptr @rmem_dma_device_release }, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"\016Reserved memory: created DMA memory pool at %pa, size %ld MiB\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_dma], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_declare_coherent_memory(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @dma_init_coherent_memory(i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %23

9:                                                ; preds = %4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr %5, ptr %12, align 8
  br label %23

16:                                               ; preds = %11, %9
  %17 = phi i32 [ -16, %11 ], [ -19, %9 ]
  %18 = icmp eq ptr %5, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 4
  tail call void @memunmap(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.dma_coherent_mem, ptr %5, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @bitmap_free(ptr noundef %22) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %23

23:                                               ; preds = %19, %16, %15, %7
  %24 = phi i32 [ %8, %7 ], [ 0, %15 ], [ %17, %16 ], [ %17, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dma_init_coherent_memory(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  %6 = zext i1 %3 to i8
  %7 = lshr i32 %2, 12
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @memremap(i32 noundef %0, i32 noundef %2, i32 noundef 4) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @bitmap_zalloc(i32 noundef %7, i32 noundef 3264) #8
  %18 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 4
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  store ptr %10, ptr %14, align 8
  %21 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = lshr i32 %0, 12
  %23 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 2
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 3
  store i32 %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 6
  store i8 %6, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dma_coherent_mem, ptr %14, i32 0, i32 5
  store i32 0, ptr %26, align 4
  br label %31

27:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #8
  br label %28

28:                                               ; preds = %27, %12
  tail call void @memunmap(ptr noundef nonnull %10) #8
  %29 = lshr i32 %2, 20
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %5, i32 noundef %29) #10
  br label %31

31:                                               ; preds = %28, %20, %9, %4
  %32 = phi ptr [ %14, %20 ], [ inttoptr (i32 -12 to ptr), %28 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %9 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_alloc_from_dev_coherent(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 5
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 12
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %76, label %17, !prof !8

17:                                               ; preds = %10
  %18 = add i32 %1, -1
  %19 = icmp ult i32 %18, 4096
  %20 = lshr i32 %18, 12
  %21 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #8, !range !9
  %22 = sub nuw nsw i32 32, %21
  %23 = select i1 %19, i32 0, i32 %22
  %24 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @bitmap_find_free_region(ptr noundef %25, i32 noundef %14, i32 noundef %23) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %76, label %28, !prof !8

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 6
  %30 = load i8, ptr %29, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 12
  %36 = and i32 %34, 1048575
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.bus_dma_region, ptr %38, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %59, %40
  %45 = phi i64 [ %62, %59 ], [ %42, %40 ]
  %46 = phi ptr [ %60, %59 ], [ %38, %40 ]
  %47 = load i32, ptr %46, align 8
  %48 = icmp ult i32 %35, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = sub i32 %35, %47
  %51 = zext i32 %50 to i64
  %52 = icmp ugt i64 %45, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bus_dma_region, ptr %46, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub i32 %35, %56
  %58 = lshr i32 %57, 12
  br label %64

59:                                               ; preds = %49, %44
  %60 = getelementptr %struct.bus_dma_region, ptr %46, i32 1
  %61 = getelementptr %struct.bus_dma_region, ptr %46, i32 1, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %44

64:                                               ; preds = %59, %53, %40, %32
  %65 = phi i32 [ %36, %32 ], [ %58, %53 ], [ 1048575, %40 ], [ 1048575, %59 ]
  %66 = shl nuw i32 %65, 12
  br label %70

67:                                               ; preds = %28
  %68 = getelementptr inbounds %struct.dma_coherent_mem, ptr %8, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  %72 = shl i32 %26, 12
  %73 = add i32 %71, %72
  store i32 %73, ptr %2, align 4
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  tail call void @llvm.memset.p0.i32(ptr align 1 %75, i8 0, i32 %1, i1 false) #8
  br label %77

76:                                               ; preds = %17, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi ptr [ null, %76 ], [ %75, %70 ]
  store ptr %78, ptr %3, align 4
  br label %79

79:                                               ; preds = %77, %6, %4
  %80 = phi i32 [ 1, %77 ], [ 0, %4 ], [ 0, %6 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_release_from_dev_coherent(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp ugt ptr %10, %2
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dma_coherent_mem, ptr %7, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 12
  %16 = getelementptr i8, ptr %10, i32 %15
  %17 = icmp ugt ptr %16, %2
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = ptrtoint ptr %2 to i32
  %20 = ptrtoint ptr %10 to i32
  %21 = sub i32 %19, %20
  %22 = ashr i32 %21, 12
  %23 = getelementptr inbounds %struct.dma_coherent_mem, ptr %7, i32 0, i32 5
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #8
  %25 = getelementptr inbounds %struct.dma_coherent_mem, ptr %7, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @bitmap_release_region(ptr noundef %26, i32 noundef %22, i32 noundef %1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #8
  br label %27

27:                                               ; preds = %18, %12, %9, %5, %3
  %28 = phi i32 [ 1, %18 ], [ 0, %12 ], [ 0, %9 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = icmp ugt ptr %12, %2
  br i1 %13, label %49, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %2, i32 %3
  %16 = getelementptr inbounds %struct.dma_coherent_mem, ptr %9, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 12
  %19 = getelementptr i8, ptr %12, i32 %18
  %20 = icmp ugt ptr %15, %19
  br i1 %20, label %49, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %1, align 4
  %27 = sub i32 %25, %26
  %28 = lshr i32 %27, 12
  %29 = add i32 %3, 4095
  %30 = lshr i32 %29, 12
  store i32 -6, ptr %4, align 4
  %31 = icmp ule i32 %30, %23
  %32 = sub i32 %30, %23
  %33 = icmp ugt i32 %28, %32
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %21
  %36 = ptrtoint ptr %2 to i32
  %37 = ptrtoint ptr %12 to i32
  %38 = sub i32 %36, %37
  %39 = ashr i32 %38, 12
  %40 = getelementptr inbounds %struct.dma_coherent_mem, ptr %9, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %23, %39
  %43 = add i32 %42, %41
  %44 = load i32, ptr %1, align 4
  %45 = and i32 %27, -4096
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %44, i32 noundef %43, i32 noundef %45, i32 noundef %47) #8
  store i32 %48, ptr %4, align 4
  br label %49

49:                                               ; preds = %35, %21, %14, %11, %7, %5
  %50 = phi i32 [ 1, %35 ], [ 1, %21 ], [ 0, %14 ], [ 0, %11 ], [ 0, %5 ], [ 0, %7 ]
  ret i32 %50
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rmem_dma_setup(ptr noundef %0) #1 section ".init.text" {
  %2 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @of_get_flat_dt_prop(i32 noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = tail call ptr @of_get_flat_dt_prop(i32 noundef %3, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %18

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 3
  store ptr @rmem_dma_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 20
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %13, i32 noundef %16) #10
  br label %18

18:                                               ; preds = %11, %9, %1
  %19 = phi i32 [ 0, %11 ], [ -22, %9 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rmem_dma_device_init(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.reserved_mem, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call fastcc ptr @dma_init_coherent_memory(i32 noundef %8, i32 noundef %8, i32 noundef %10, i1 noundef zeroext true)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store ptr %11, ptr %3, align 4
  br label %16

14:                                               ; preds = %6
  %15 = ptrtoint ptr %11 to i32
  br label %24

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %11, %13 ], [ %4, %2 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 22
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store ptr %17, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %19, %16, %14
  %25 = phi i32 [ %15, %14 ], [ 0, %16 ], [ 0, %19 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @rmem_dma_device_release(ptr nocapture noundef readnone %0, ptr noundef writeonly %1) #7 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 22
  store ptr null, ptr %5, align 8
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
