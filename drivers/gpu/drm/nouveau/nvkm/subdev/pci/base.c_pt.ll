; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pci/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pci/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pci_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.121, %struct.anon.122, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.121 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.122 = type { i32, i8 }
%struct.nvkm_device_pci = type { %struct.nvkm_device, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@nvkm_pci_func = internal constant %struct.nvkm_subdev_func { ptr @nvkm_pci_dtor, ptr @nvkm_pci_preinit, ptr @nvkm_pci_oneinit, ptr null, ptr @nvkm_pci_init, ptr @nvkm_pci_fini, ptr null }, align 4
@.str = private unnamed_addr constant [6 x i8] c"NvMSI\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: MSI enabled\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nvkm\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pci_rd32(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_pci_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i16 noundef zeroext %1) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_pci_wr08(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_pci_func, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_pci_wr32(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_pci_func, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pci_mask(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_pci_func, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i16 noundef zeroext %1) #6
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nvkm_pci_func, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = xor i32 %2, -1
  %13 = and i32 %8, %12
  %14 = or i32 %13, %3
  tail call void %11(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %14) #6
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_pci_rom_shadow(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_pci_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i16 noundef zeroext 80) #6
  %7 = and i32 %6, -2
  %8 = zext i1 %1 to i32
  %9 = or i32 %7, %8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.nvkm_pci_func, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, i16 noundef zeroext 80, i32 noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pci_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 112) #7
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_pci_func, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  %11 = load ptr, ptr %1, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %1) #6
  %14 = getelementptr inbounds %struct.nvkm_device_pci, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 3
  store i32 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 5
  store i32 -1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 5, i32 1
  store i8 -1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 4080
  %23 = zext i16 %22 to i32
  switch i32 %23, label %24 [
    i32 240, label %30
    i32 736, label %30
  ]

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 170
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 6
  store i8 1, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %24, %9, %9
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 6
  %34 = load i8, ptr %33, align 8, !range !8
  %35 = icmp ne i8 %34, 0
  %36 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %32, ptr noundef nonnull @.str, i1 noundef zeroext %35) #6
  %37 = zext i1 %36 to i8
  store i8 %37, ptr %33, align 8
  br i1 %36, label %38, label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.nvkm_pci_func, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %16, align 8
  %44 = tail call i32 @pci_enable_msi(ptr noundef %43) #6
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %33, align 8
  br i1 %45, label %47, label %58

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_pci, ptr %7, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef %56) #8
  br label %58

57:                                               ; preds = %38, %30
  store i8 0, ptr %33, align 8
  br label %58

58:                                               ; preds = %57, %51, %47, %42, %5
  %59 = phi i32 [ -12, %5 ], [ 0, %47 ], [ 0, %51 ], [ 0, %42 ], [ 0, %57 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_pci_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 56
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  store i32 -1, ptr %3, align 4
  %7 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %2) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr i8, ptr %0, i32 100
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 52
  %14 = load ptr, ptr %13, align 8
  tail call void @pci_disable_msi(ptr noundef %14) #6
  br label %15

15:                                               ; preds = %12, %8
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_pci_preinit(ptr nocapture noundef readonly %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pci_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @nvkm_pcie_oneinit(ptr noundef %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @nvkm_pci_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %2) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr i8, ptr %0, i32 56
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %11, %8
  %20 = phi i32 [ 0, %16 ], [ %9, %8 ], [ %14, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pci_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 52
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 18
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @nvkm_pcie_init(ptr noundef %2) #6
  br label %14

14:                                               ; preds = %12, %6
  %15 = load ptr, ptr %2, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef %2) #6
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %0, i32 100
  %21 = load i8, ptr %20, align 8, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_pci_func, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %2) #6
  br label %27

27:                                               ; preds = %23, %19, %1
  %28 = phi i32 [ 0, %23 ], [ 0, %19 ], [ -38, %1 ]
  ret i32 %28
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_pci_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pcie_oneinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pci_intr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.nvkm_pci, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1
  %6 = getelementptr inbounds %struct.nvkm_pci, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  tail call void @nvkm_mc_intr_unarm(ptr noundef %5) #6
  %10 = getelementptr inbounds %struct.nvkm_pci, ptr %1, i32 0, i32 6
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8
  %15 = getelementptr inbounds %struct.nvkm_pci_func, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %1) #6
  br label %17

17:                                               ; preds = %13, %9
  call void @nvkm_mc_intr(ptr noundef %5, ptr noundef nonnull %3) #6
  call void @nvkm_mc_intr_rearm(ptr noundef %5) #6
  %18 = load i8, ptr %3, align 1, !range !8
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i32 [ %19, %17 ], [ 1, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_unarm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_rearm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pcie_init(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
