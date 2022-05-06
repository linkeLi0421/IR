; ModuleID = '/llk/IR/drivers/pci/pcie/rcec.c_pt.bc'
source_filename = "../drivers/pci/pcie/rcec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.walk_rcec_data = type { ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.rcec_ea = type { i8, i8, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_link_rcec(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.walk_rcec_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  store ptr %0, ptr %2, align 4
  %7 = getelementptr inbounds %struct.walk_rcec_data, ptr %2, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.walk_rcec_data, ptr %2, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @pci_walk_bus(ptr noundef %10, ptr noundef nonnull @link_rcec_helper, ptr noundef nonnull %2) #4
  %11 = load ptr, ptr %3, align 8
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcec_ea, ptr %11, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %12, -1
  %16 = icmp eq i8 %14, 0
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp ugt i8 %12, %14
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %39, label %20

20:                                               ; preds = %6
  %21 = zext i8 %12 to i32
  %22 = zext i8 %14 to i32
  br label %23

23:                                               ; preds = %36, %20
  %24 = phi i32 [ %37, %36 ], [ %21, %20 ]
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 12
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 16
  %32 = load i32, ptr %31, align 8
  %33 = call ptr @pci_find_bus(i32 noundef %32, i32 noundef %24) #4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  call void @pci_walk_bus(ptr noundef nonnull %33, ptr noundef nonnull @link_rcec_helper, ptr noundef nonnull %2) #4
  br label %36

36:                                               ; preds = %35, %30, %23
  %37 = add nuw nsw i32 %24, 1
  %38 = icmp eq i32 %24, %22
  br i1 %38, label %39, label %23

39:                                               ; preds = %36, %6, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @link_rcec_helper(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 240
  %8 = icmp eq i16 %7, 144
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rcec_ea, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %17, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %9
  %24 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #4
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %26 = icmp ult i32 %24, 32
  br i1 %26, label %27, label %37

27:                                               ; preds = %33, %23
  %28 = phi i32 [ %35, %33 ], [ %24, %23 ]
  %29 = load i32, ptr %25, align 4
  %30 = lshr i32 %29, 3
  %31 = and i32 %30, 31
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = add nuw nsw i32 %28, 1
  %35 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %34) #4
  %36 = icmp ult i32 %35, 32
  br i1 %36, label %27, label %37

37:                                               ; preds = %33, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %40

38:                                               ; preds = %27, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 16
  store ptr %4, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %37, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_walk_rcec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.walk_rcec_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  store ptr %0, ptr %4, align 4
  %9 = getelementptr inbounds %struct.walk_rcec_data, ptr %4, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.walk_rcec_data, ptr %4, i32 0, i32 2
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  call void @pci_walk_bus(ptr noundef %12, ptr noundef nonnull @walk_rcec_helper, ptr noundef nonnull %4) #4
  %13 = load ptr, ptr %5, align 8
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rcec_ea, ptr %13, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %14, -1
  %18 = icmp eq i8 %16, 0
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ugt i8 %14, %16
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %41, label %22

22:                                               ; preds = %8
  %23 = zext i8 %14 to i32
  %24 = zext i8 %16 to i32
  br label %25

25:                                               ; preds = %38, %22
  %26 = phi i32 [ %39, %38 ], [ %23, %22 ]
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 12
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = call ptr @pci_find_bus(i32 noundef %34, i32 noundef %26) #4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @pci_walk_bus(ptr noundef nonnull %35, ptr noundef nonnull @walk_rcec_helper, ptr noundef nonnull %4) #4
  br label %38

38:                                               ; preds = %37, %32, %25
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %26, %24
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %8, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @walk_rcec_helper(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 240
  %7 = icmp eq i16 %6, 144
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rcec_ea, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 12
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %17, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %8
  %24 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #4
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %26 = icmp ult i32 %24, 32
  br i1 %26, label %27, label %37

27:                                               ; preds = %33, %23
  %28 = phi i32 [ %35, %33 ], [ %24, %23 ]
  %29 = load i32, ptr %25, align 4
  %30 = lshr i32 %29, 3
  %31 = and i32 %30, 31
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = add nuw nsw i32 %28, 1
  %35 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %34) #4
  %36 = icmp ult i32 %35, 32
  br i1 %36, label %27, label %37

37:                                               ; preds = %33, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %44

38:                                               ; preds = %27, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %39 = getelementptr inbounds %struct.walk_rcec_data, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.walk_rcec_data, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %40(ptr noundef %0, ptr noundef %42) #4
  br label %44

44:                                               ; preds = %38, %37, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_rcec_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 240
  %7 = icmp eq i16 %6, 160
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 7) #4
  %10 = zext i16 %9 to i32
  %11 = icmp eq i16 %9, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %10, 4
  %18 = getelementptr inbounds %struct.rcec_ea, ptr %14, i32 0, i32 2
  %19 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %17, ptr noundef %18) #4
  %20 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %2) #4
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, 917504
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = add nuw nsw i32 %10, 8
  %26 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %25, ptr noundef nonnull %3) #4
  %27 = load i32, ptr %3, align 4
  %28 = lshr i32 %27, 8
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %14, align 8
  %30 = lshr i32 %27, 16
  %31 = trunc i32 %30 to i8
  br label %33

32:                                               ; preds = %16
  store i8 -1, ptr %14, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi i8 [ 0, %32 ], [ %31, %24 ]
  %35 = getelementptr inbounds %struct.rcec_ea, ptr %14, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 15
  store ptr %14, ptr %36, align 8
  br label %37

37:                                               ; preds = %33, %12, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_rcec_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #4
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
