; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pci_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.121, %struct.anon.122, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.121 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.122 = type { i32, i8 }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@.str = private unnamed_addr constant [24 x i8] c"%s: pcie max speed: %s\0A\00", align 1
@nvkm_pcie_speeds = internal unnamed_addr constant [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: couldn't raise version: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: requested %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: setting link failed due to low version\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: current speed: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"%s: %s not supported by bus or card, droppingrequested speed to %s\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: requested matches current speed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: set link to %s x%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: setting link failed: %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"2.5GT/s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"5.0GT/s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"8.0GT/s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s: set to version %i\0A\00", align 1
@switch.table.nvkm_pcie_set_link = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_oneinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_pci_func, ptr %2, i32 0, i32 5, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  %16 = tail call i32 %4(ptr noundef %0) #3
  %17 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %15, ptr noundef %18) #4
  br label %19

19:                                               ; preds = %10, %6, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_pci_func, ptr %2, i32 0, i32 5, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #3
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.nvkm_pci_func, ptr %10, i32 0, i32 5, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef %0) #3
  %16 = icmp sgt i32 %15, 0
  %17 = icmp sgt i32 %15, %7
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.nvkm_pci_func, ptr %20, i32 0, i32 5, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %33, i32 noundef %15) #4
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.nvkm_pci_func, ptr %34, i32 0, i32 5, i32 4
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %28, %24
  %38 = phi ptr [ %36, %28 ], [ %22, %24 ]
  %39 = trunc i32 %15 to i8
  tail call void %38(ptr noundef %0, i8 noundef zeroext %39) #3
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.nvkm_pci_func, ptr %40, i32 0, i32 5, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = tail call i32 %42(ptr noundef %0) #3
  br label %46

46:                                               ; preds = %44, %37, %19, %14
  %47 = phi i32 [ %7, %14 ], [ -38, %19 ], [ %45, %44 ], [ -38, %37 ]
  %48 = icmp slt i32 %47, %15
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef %58, i32 noundef %47) #4
  br label %59

59:                                               ; preds = %53, %49, %46, %9, %6, %1
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %struct.nvkm_pci_func, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call i32 %62(ptr noundef %0) #3
  br label %66

66:                                               ; preds = %64, %59
  %67 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 5, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = tail call i32 @nvkm_pcie_set_link(ptr noundef %0, i32 noundef %68, i8 noundef zeroext %72)
  br label %74

74:                                               ; preds = %70, %66
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_set_link(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %130, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 18
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %130, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.nvkm_pci_func, ptr %14, i32 0, i32 5, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %130, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  %28 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %1
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef %27, ptr noundef %29) #4
  %30 = load ptr, ptr %0, align 8
  br label %31

31:                                               ; preds = %22, %18
  %32 = phi ptr [ %30, %22 ], [ %14, %18 ]
  %33 = getelementptr inbounds %struct.nvkm_pci_func, ptr %32, i32 0, i32 5, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef nonnull %0) #3
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i32, ptr %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %130, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef %45) #4
  br label %130

46:                                               ; preds = %31
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.nvkm_pci_func, ptr %47, i32 0, i32 5, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef nonnull %0) #3
  %51 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 14
  %52 = load i8, ptr %51, align 2
  %53 = add i8 %52, -20
  %54 = icmp ult i8 %53, 4
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = sext i8 %53 to i32
  %57 = getelementptr inbounds [4 x i32], ptr @switch.table.nvkm_pcie_set_link, i32 0, i32 %56
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = phi i32 [ %58, %55 ], [ -1, %46 ]
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.nvkm_pci_func, ptr %61, i32 0, i32 5, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef nonnull %0) #3
  %65 = tail call i32 @llvm.umin.i32(i32 %60, i32 %64)
  %66 = load i32, ptr %19, align 4
  %67 = icmp ugt i32 %66, 4
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  %74 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %50
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.4, ptr noundef %73, ptr noundef %75) #4
  br label %76

76:                                               ; preds = %68, %59
  %77 = icmp ult i32 %65, %1
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = load i32, ptr %19, align 4
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  %87 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %65
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.5, ptr noundef %86, ptr noundef %88, ptr noundef %90) #4
  br label %91

91:                                               ; preds = %81, %78, %76
  %92 = phi i32 [ %1, %76 ], [ %65, %81 ], [ %65, %78 ]
  %93 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 5
  store i32 %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 5, i32 1
  store i8 %2, ptr %94, align 4
  %95 = icmp eq i32 %92, %50
  %96 = load i32, ptr %19, align 4
  %97 = icmp ugt i32 %96, 3
  br i1 %95, label %98, label %105

98:                                               ; preds = %91
  br i1 %97, label %99, label %130

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.6, ptr noundef %104) #4
  br label %130

105:                                              ; preds = %91
  br i1 %97, label %106, label %115

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  %112 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %92
  %113 = load ptr, ptr %112, align 4
  %114 = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.7, ptr noundef %111, ptr noundef %113, i32 noundef %114) #4
  br label %115

115:                                              ; preds = %106, %105
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr inbounds %struct.nvkm_pci_func, ptr %116, i32 0, i32 5, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = tail call i32 %118(ptr noundef nonnull %0, i32 noundef %92, i8 noundef zeroext %2) #3
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load i32, ptr %19, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_device, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.8, ptr noundef %129, i32 noundef %119) #4
  br label %130

130:                                              ; preds = %124, %121, %115, %99, %98, %40, %37, %11, %5, %3
  %131 = phi i32 [ 0, %5 ], [ 0, %3 ], [ -38, %11 ], [ -19, %40 ], [ -19, %37 ], [ %50, %99 ], [ %50, %98 ], [ %119, %121 ], [ %119, %124 ], [ %119, %115 ]
  ret i32 %131
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
