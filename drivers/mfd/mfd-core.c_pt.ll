; ModuleID = '/llk/IR/drivers/mfd/mfd-core.c_pt.bc'
source_filename = "../drivers/mfd/mfd-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_cell_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_cell_enable\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_cell_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_cell_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_cell_disable\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_cell_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_remove_devices_late:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_remove_devices_late\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_remove_devices_late:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mfd_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22mfd_remove_devices\22\09\09\09\09\09"
module asm "__kstrtabns_mfd_remove_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mfd_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mfd_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.mfd_of_node_entry = type { %struct.list_head, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__kstrtab_mfd_cell_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_cell_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_cell_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_cell_enable to i32), ptr @__kstrtab_mfd_cell_enable, ptr @__kstrtabns_mfd_cell_enable }, section "___ksymtab+mfd_cell_enable", align 4
@__kstrtab_mfd_cell_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_cell_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_cell_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_cell_disable to i32), ptr @__kstrtab_mfd_cell_disable, ptr @__kstrtabns_mfd_cell_disable }, section "___ksymtab+mfd_cell_disable", align 4
@__kstrtab_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_add_devices to i32), ptr @__kstrtab_mfd_add_devices, ptr @__kstrtabns_mfd_add_devices }, section "___ksymtab+mfd_add_devices", align 4
@__kstrtab_mfd_remove_devices_late = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_remove_devices_late = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_remove_devices_late = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_remove_devices_late to i32), ptr @__kstrtab_mfd_remove_devices_late, ptr @__kstrtabns_mfd_remove_devices_late }, section "___ksymtab+mfd_remove_devices_late", align 4
@__kstrtab_mfd_remove_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_mfd_remove_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_mfd_remove_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mfd_remove_devices to i32), ptr @__kstrtab_mfd_remove_devices, ptr @__kstrtabns_mfd_remove_devices }, section "___ksymtab+mfd_remove_devices", align 4
@.str = private unnamed_addr constant [21 x i8] c"devm_mfd_dev_release\00", align 1
@__kstrtab_devm_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mfd_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mfd_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mfd_add_devices to i32), ptr @__kstrtab_devm_mfd_add_devices, ptr @__kstrtabns_devm_mfd_add_devices }, section "___ksymtab+devm_mfd_add_devices", align 4
@__UNIQUE_ID_file248 = internal constant [35 x i8] c"mfd_core.file=drivers/mfd/mfd-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [21 x i8] c"mfd_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [45 x i8] c"mfd_core.author=Ian Molton, Dmitry Baryshkov\00", section ".modinfo", align 1
@mfd_dev_type = internal global %struct.device_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\014%s: Failed to locate of_node [id: %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"drivers/mfd/mfd-core.c\00", align 1
@mfd_of_node_list = internal global %struct.list_head { ptr @mfd_of_node_list, ptr @mfd_of_node_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"mfd_device\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__ksymtab_devm_mfd_add_devices, ptr @__ksymtab_mfd_add_devices, ptr @__ksymtab_mfd_cell_disable, ptr @__ksymtab_mfd_cell_enable, ptr @__ksymtab_mfd_remove_devices, ptr @__ksymtab_mfd_remove_devices_late], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mfd_cell_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mfd_cell_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mfd_add_devices(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %274

10:                                               ; preds = %7
  %11 = icmp eq i32 %1, -2
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %16 = icmp ne ptr %4, null
  %17 = icmp eq ptr %6, null
  br label %18

18:                                               ; preds = %266, %10
  %19 = phi i32 [ 0, %10 ], [ %267, %266 ]
  %20 = getelementptr %struct.mfd_cell, ptr %2, i32 %19
  br i1 %11, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %1
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %24, %21 ], [ -2, %18 ]
  %27 = load ptr, ptr %20, align 8
  %28 = tail call ptr @platform_device_alloc(ptr noundef %27, i32 noundef %26) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %269, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @kmemdup(ptr noundef %20, i32 noundef 88, i32 noundef 3264) #7
  %32 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 10
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %262, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 14
  %36 = load i32, ptr %35, align 8
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 32) #7
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %262, label %39, !prof !8

39:                                               ; preds = %34
  %40 = extractvalue { i32, i1 } %37, 0
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %262, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %45 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 1
  store ptr %0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 4
  store ptr @mfd_dev_type, ptr %46, align 8
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 16
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 20
  store ptr %49, ptr %50, align 4
  %51 = load i64, ptr %14, align 8
  %52 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 17
  store i64 %51, ptr %52, align 8
  %53 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 19
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 @regulator_bulk_register_supply_alias(ptr noundef %44, ptr noundef %54, ptr noundef %0, ptr noundef %54, i32 noundef %56) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %263, label %59

59:                                               ; preds = %43
  %60 = load ptr, ptr %15, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %135, label %62

62:                                               ; preds = %59
  %63 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 10
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %135, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @of_get_next_child(ptr noundef nonnull %60, ptr noundef null) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %128, label %69

69:                                               ; preds = %66
  %70 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 12
  %71 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 11
  br label %72

72:                                               ; preds = %124, %69
  %73 = phi ptr [ %67, %69 ], [ %126, %124 ]
  %74 = load ptr, ptr %63, align 8
  %75 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %73, ptr noundef %74) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %72
  %78 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %73) #7
  br i1 %78, label %79, label %256

79:                                               ; preds = %83, %77
  %80 = phi ptr [ %81, %83 ], [ @mfd_of_node_list, %77 ]
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, @mfd_of_node_list
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mfd_of_node_entry, ptr %81, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %73
  br i1 %86, label %124, label %79

87:                                               ; preds = %79
  %88 = load i8, ptr %70, align 8, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %87
  %91 = tail call ptr @__of_get_address(ptr noundef nonnull %73, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %124, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @of_n_addr_cells(ptr noundef nonnull %73) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %96, %93
  %97 = phi i64 [ %105, %96 ], [ 0, %93 ]
  %98 = phi i32 [ %100, %96 ], [ %94, %93 ]
  %99 = phi ptr [ %106, %96 ], [ %91, %93 ]
  %100 = add i32 %98, -1
  %101 = shl i64 %97, 32
  %102 = load i32, ptr %99, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  %104 = zext i32 %103 to i64
  %105 = or i64 %101, %104
  %106 = getelementptr i32, ptr %99, i32 1
  %107 = icmp eq i32 %100, 0
  br i1 %107, label %108, label %96

108:                                              ; preds = %96, %93
  %109 = phi i64 [ 0, %93 ], [ %105, %96 ]
  %110 = load i64, ptr %71, align 8
  %111 = icmp eq i64 %110, %109
  br i1 %111, label %112, label %124

112:                                              ; preds = %108, %87
  %113 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3520, i32 noundef 16) #9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %256, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.mfd_of_node_entry, ptr %114, i32 0, i32 1
  store ptr %44, ptr %117, align 8
  %118 = getelementptr inbounds %struct.mfd_of_node_entry, ptr %114, i32 0, i32 2
  store ptr %73, ptr %118, align 4
  %119 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mfd_of_node_list, i32 0, i32 1), align 4
  store ptr %114, ptr getelementptr inbounds (%struct.list_head, ptr @mfd_of_node_list, i32 0, i32 1), align 4
  store ptr @mfd_of_node_list, ptr %114, align 8
  %120 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %119, ptr %120, align 4
  store volatile ptr %114, ptr %119, align 4
  %121 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 25
  store ptr %73, ptr %121, align 8
  %122 = getelementptr inbounds %struct.device_node, ptr %73, i32 0, i32 3
  %123 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 26
  store ptr %122, ptr %123, align 4
  tail call void @of_node_put(ptr noundef nonnull %73) #7
  br label %128

124:                                              ; preds = %108, %90, %83, %72
  %125 = load ptr, ptr %15, align 8
  %126 = tail call ptr @of_get_next_child(ptr noundef %125, ptr noundef nonnull %73) #7
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %72

128:                                              ; preds = %124, %116, %66
  %129 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 25
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load ptr, ptr %20, align 8
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %133, i32 noundef %26) #10
  br label %135

135:                                              ; preds = %132, %128, %62, %59
  %136 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 8
  %137 = load i32, ptr %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 7
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @platform_device_add_data(ptr noundef nonnull %28, ptr noundef %141, i32 noundef %137) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %240

144:                                              ; preds = %139, %135
  %145 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call i32 @device_add_software_node(ptr noundef %44, ptr noundef nonnull %146) #7
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %240

151:                                              ; preds = %148, %144
  %152 = load i32, ptr %35, align 8
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %222

154:                                              ; preds = %151
  %155 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 15
  br label %156

156:                                              ; preds = %218, %154
  %157 = phi i32 [ 0, %154 ], [ %219, %218 ]
  %158 = load ptr, ptr %155, align 4
  %159 = getelementptr %struct.resource, ptr %158, i32 %157, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr %struct.resource, ptr %41, i32 %157
  %162 = getelementptr %struct.resource, ptr %41, i32 %157, i32 2
  store ptr %160, ptr %162, align 8
  %163 = getelementptr %struct.resource, ptr %158, i32 %157, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.resource, ptr %41, i32 %157, i32 3
  store i32 %164, ptr %165, align 4
  %166 = load ptr, ptr %155, align 4
  %167 = getelementptr %struct.resource, ptr %166, i32 %157
  %168 = getelementptr %struct.resource, ptr %166, i32 %157, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 512
  %171 = icmp ne i32 %170, 0
  %172 = and i1 %16, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %156
  %174 = getelementptr %struct.resource, ptr %41, i32 %157, i32 5
  store ptr %4, ptr %174, align 4
  %175 = load i32, ptr %4, align 4
  %176 = load ptr, ptr %155, align 4
  %177 = getelementptr %struct.resource, ptr %176, i32 %157
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, %175
  store i32 %179, ptr %161, align 32
  %180 = getelementptr %struct.resource, ptr %176, i32 %157, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, %175
  %183 = getelementptr %struct.resource, ptr %41, i32 %157, i32 1
  store i32 %182, ptr %183, align 4
  br label %218

184:                                              ; preds = %156
  %185 = and i32 %169, 1024
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %208, label %187

187:                                              ; preds = %184
  %188 = load i32, ptr %167, align 4
  br i1 %17, label %201, label %189

189:                                              ; preds = %187
  %190 = getelementptr %struct.resource, ptr %166, i32 %157, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %188, %191
  br i1 %192, label %197, label %193, !prof !10

193:                                              ; preds = %189
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  %194 = load ptr, ptr %155, align 4
  %195 = getelementptr %struct.resource, ptr %194, i32 %157
  %196 = load i32, ptr %195, align 4
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i32 [ %196, %193 ], [ %188, %189 ]
  %199 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %6, i32 noundef %198, ptr noundef null) #7
  %200 = getelementptr %struct.resource, ptr %41, i32 %157, i32 1
  store i32 %199, ptr %200, align 4
  store i32 %199, ptr %161, align 32
  br label %218

201:                                              ; preds = %187
  %202 = add i32 %188, %5
  store i32 %202, ptr %161, align 32
  %203 = load ptr, ptr %155, align 4
  %204 = getelementptr %struct.resource, ptr %203, i32 %157, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, %5
  %207 = getelementptr %struct.resource, ptr %41, i32 %157, i32 1
  store i32 %206, ptr %207, align 4
  br label %218

208:                                              ; preds = %184
  %209 = getelementptr %struct.resource, ptr %166, i32 %157, i32 5
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr %struct.resource, ptr %41, i32 %157, i32 5
  store ptr %210, ptr %211, align 4
  %212 = load ptr, ptr %155, align 4
  %213 = getelementptr %struct.resource, ptr %212, i32 %157
  %214 = load i32, ptr %213, align 4
  store i32 %214, ptr %161, align 32
  %215 = getelementptr %struct.resource, ptr %212, i32 %157, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr %struct.resource, ptr %41, i32 %157, i32 1
  store i32 %216, ptr %217, align 4
  br label %218

218:                                              ; preds = %208, %201, %197, %173
  %219 = add nuw nsw i32 %157, 1
  %220 = load i32, ptr %35, align 8
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %156, label %222

222:                                              ; preds = %218, %151
  %223 = phi i32 [ %152, %151 ], [ %220, %218 ]
  %224 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %28, ptr noundef nonnull %41, i32 noundef %223) #7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = tail call i32 @platform_device_add(ptr noundef nonnull %28) #7
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = getelementptr %struct.mfd_cell, ptr %2, i32 %19, i32 17
  %231 = load i8, ptr %230, align 1, !range !9
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void @pm_runtime_no_callbacks(ptr noundef %44) #7
  br label %234

234:                                              ; preds = %233, %229
  tail call void @kfree(ptr noundef nonnull %41) #7
  br label %266

235:                                              ; preds = %226, %222
  %236 = phi i32 [ %224, %222 ], [ %227, %226 ]
  %237 = load ptr, ptr %145, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  tail call void @device_remove_software_node(ptr noundef %44) #7
  br label %240

240:                                              ; preds = %239, %235, %148, %139
  %241 = phi i32 [ %142, %139 ], [ %149, %148 ], [ %236, %239 ], [ %236, %235 ]
  %242 = load ptr, ptr @mfd_of_node_list, align 4
  %243 = icmp eq ptr %242, @mfd_of_node_list
  br i1 %243, label %258, label %244

244:                                              ; preds = %254, %240
  %245 = phi ptr [ %246, %254 ], [ %242, %240 ]
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.mfd_of_node_entry, ptr %245, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, %44
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  store ptr %252, ptr %253, align 4
  store volatile ptr %246, ptr %252, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %245, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %251, align 4
  tail call void @kfree(ptr noundef %245) #7
  br label %254

254:                                              ; preds = %250, %244
  %255 = icmp eq ptr %246, @mfd_of_node_list
  br i1 %255, label %258, label %244

256:                                              ; preds = %112, %77
  %257 = phi i32 [ -12, %112 ], [ 0, %77 ]
  tail call void @of_node_put(ptr noundef nonnull %73) #7
  br label %258

258:                                              ; preds = %256, %254, %240
  %259 = phi i32 [ %241, %240 ], [ %257, %256 ], [ %241, %254 ]
  %260 = load ptr, ptr %53, align 4
  %261 = load i32, ptr %55, align 8
  tail call void @regulator_bulk_unregister_supply_alias(ptr noundef %44, ptr noundef %260, i32 noundef %261) #7
  br label %263

262:                                              ; preds = %39, %34, %30
  tail call void @platform_device_put(ptr noundef nonnull %28) #7
  br label %269

263:                                              ; preds = %258, %43
  %264 = phi i32 [ %57, %43 ], [ %259, %258 ]
  tail call void @kfree(ptr noundef nonnull %41) #7
  tail call void @platform_device_put(ptr noundef nonnull %28) #7
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263, %234
  %267 = add nuw nsw i32 %19, 1
  %268 = icmp eq i32 %267, %3
  br i1 %268, label %274, label %18

269:                                              ; preds = %263, %262, %25
  %270 = phi i32 [ -12, %262 ], [ %264, %263 ], [ -12, %25 ]
  %271 = icmp eq i32 %19, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4
  %273 = call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %274

274:                                              ; preds = %272, %269, %266, %7
  %275 = phi i32 [ %270, %272 ], [ %270, %269 ], [ 0, %7 ], [ 0, %266 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfd_remove_devices(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4
  %3 = call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mfd_remove_devices_late(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 1, ptr %2, align 4
  %3 = call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mfd_remove_devices_fn(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @mfd_dev_type
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = getelementptr i8, ptr %0, i32 508
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mfd_cell, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = load i32, ptr %1, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds %struct.mfd_cell, ptr %9, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @device_remove_software_node(ptr noundef %0) #7
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.mfd_cell, ptr %9, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mfd_cell, ptr %9, i32 0, i32 19
  %25 = load i32, ptr %24, align 8
  tail call void @regulator_bulk_unregister_supply_alias(ptr noundef %0, ptr noundef %23, i32 noundef %25) #7
  tail call void @platform_device_unregister(ptr noundef %7) #7
  br label %26

26:                                               ; preds = %21, %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_mfd_add_devices(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mfd_dev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @mfd_add_devices(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #7
  br label %15

14:                                               ; preds = %10
  store ptr %0, ptr %8, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #7
  br label %15

15:                                               ; preds = %14, %13, %7
  %16 = phi i32 [ %11, %13 ], [ %11, %14 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_mfd_dev_release(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %4 = call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @mfd_remove_devices_fn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_register_supply_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_unregister_supply_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
