; ModuleID = '/llk/IR/drivers/gpu/host1x/mipi.c_pt.bc'
source_filename = "../drivers/gpu/host1x/mipi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_request:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_request\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_free\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_enable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_disable\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_finish_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_finish_calibration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_finish_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_mipi_start_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_mipi_start_calibration\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_mipi_start_calibration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tegra_mipi_soc = type { i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tegra_mipi_pad = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_mipi_device = type { ptr, ptr, ptr, i32 }
%struct.tegra_mipi = type { ptr, ptr, ptr, %struct.mutex, ptr, i32 }

@.str = private unnamed_addr constant [22 x i8] c"nvidia,mipi-calibrate\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"#nvidia,mipi-calibrate-cells\00", align 1
@__kstrtab_tegra_mipi_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_request = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_request to i32), ptr @__kstrtab_tegra_mipi_request, ptr @__kstrtabns_tegra_mipi_request }, section "___ksymtab+tegra_mipi_request", align 4
@__kstrtab_tegra_mipi_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_free to i32), ptr @__kstrtab_tegra_mipi_free, ptr @__kstrtabns_tegra_mipi_free }, section "___ksymtab+tegra_mipi_free", align 4
@__kstrtab_tegra_mipi_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_enable to i32), ptr @__kstrtab_tegra_mipi_enable, ptr @__kstrtabns_tegra_mipi_enable }, section "___ksymtab+tegra_mipi_enable", align 4
@__kstrtab_tegra_mipi_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_disable to i32), ptr @__kstrtab_tegra_mipi_disable, ptr @__kstrtabns_tegra_mipi_disable }, section "___ksymtab+tegra_mipi_disable", align 4
@__kstrtab_tegra_mipi_finish_calibration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_finish_calibration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_finish_calibration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_finish_calibration to i32), ptr @__kstrtab_tegra_mipi_finish_calibration, ptr @__kstrtabns_tegra_mipi_finish_calibration }, section "___ksymtab+tegra_mipi_finish_calibration", align 4
@__kstrtab_tegra_mipi_start_calibration = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_mipi_start_calibration = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_mipi_start_calibration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_mipi_start_calibration to i32), ptr @__kstrtab_tegra_mipi_start_calibration, ptr @__kstrtabns_tegra_mipi_start_calibration }, section "___ksymtab+tegra_mipi_start_calibration", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"tegra-mipi\00", align 1
@tegra_mipi_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra132_mipi_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-mipi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_mipi_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_mipi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_mipi_probe, ptr @tegra_mipi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_mipi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tegra_mipi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&mipi->lock\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@tegra114_mipi_soc = internal constant %struct.tegra_mipi_soc { i8 0, ptr @tegra114_mipi_pads, i32 9, i8 1, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 4, i8 5, i8 0, i8 4 }, align 4
@tegra124_mipi_soc = internal constant %struct.tegra_mipi_soc { i8 1, ptr @tegra124_mipi_pads, i32 7, i8 1, i8 1, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2 }, align 4
@tegra132_mipi_soc = internal constant %struct.tegra_mipi_soc { i8 1, ptr @tegra124_mipi_pads, i32 7, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 2 }, align 4
@tegra210_mipi_soc = internal constant %struct.tegra_mipi_soc { i8 1, ptr @tegra210_mipi_pads, i32 10, i8 1, i8 0, i8 0, i8 3, i8 1, i8 1, i8 0, i8 2, i8 0, i8 0, i8 2 }, align 4
@tegra114_mipi_pads = internal constant [9 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 0 }, %struct.tegra_mipi_pad { i32 6, i32 0 }, %struct.tegra_mipi_pad { i32 7, i32 0 }, %struct.tegra_mipi_pad { i32 8, i32 0 }, %struct.tegra_mipi_pad { i32 9, i32 0 }, %struct.tegra_mipi_pad { i32 14, i32 0 }, %struct.tegra_mipi_pad { i32 15, i32 0 }, %struct.tegra_mipi_pad { i32 16, i32 0 }, %struct.tegra_mipi_pad { i32 17, i32 0 }], align 4
@tegra124_mipi_pads = internal constant [7 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 27 }, %struct.tegra_mipi_pad { i32 6, i32 27 }, %struct.tegra_mipi_pad { i32 7, i32 28 }, %struct.tegra_mipi_pad { i32 8, i32 28 }, %struct.tegra_mipi_pad { i32 9, i32 29 }, %struct.tegra_mipi_pad { i32 14, i32 25 }, %struct.tegra_mipi_pad { i32 15, i32 26 }], align 4
@tegra210_mipi_pads = internal constant [10 x %struct.tegra_mipi_pad] [%struct.tegra_mipi_pad { i32 5, i32 0 }, %struct.tegra_mipi_pad { i32 6, i32 0 }, %struct.tegra_mipi_pad { i32 7, i32 0 }, %struct.tegra_mipi_pad { i32 8, i32 0 }, %struct.tegra_mipi_pad { i32 9, i32 0 }, %struct.tegra_mipi_pad { i32 10, i32 0 }, %struct.tegra_mipi_pad { i32 14, i32 25 }, %struct.tegra_mipi_pad { i32 15, i32 26 }, %struct.tegra_mipi_pad { i32 16, i32 28 }, %struct.tegra_mipi_pad { i32 17, i32 29 }], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_tegra_mipi_disable, ptr @__ksymtab_tegra_mipi_enable, ptr @__ksymtab_tegra_mipi_finish_calibration, ptr @__ksymtab_tegra_mipi_free, ptr @__ksymtab_tegra_mipi_request, ptr @__ksymtab_tegra_mipi_start_calibration], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_mipi_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  br label %34

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 16) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = call ptr @of_find_device_by_node(ptr noundef %13) #6
  store ptr %14, ptr %10, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tegra_mipi_device, ptr %10, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @platform_device_put(ptr noundef nonnull %14) #6
  br label %28

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %23) #6
  %24 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_mipi_device, ptr %10, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_mipi_device, ptr %10, i32 0, i32 2
  store ptr %0, ptr %27, align 8
  br label %34

28:                                               ; preds = %21, %12
  %29 = phi i32 [ -517, %21 ], [ -19, %12 ]
  call void @kfree(ptr noundef nonnull %10) #6
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi i32 [ %29, %28 ], [ -12, %8 ]
  %32 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %32) #6
  %33 = inttoptr i32 %31 to ptr
  br label %34

34:                                               ; preds = %30, %22, %6
  %35 = phi ptr [ %7, %6 ], [ %10, %22 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_mipi_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @platform_device_put(ptr noundef %2) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mipi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tegra_mipi, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.tegra_mipi, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tegra_mipi, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 88
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %21 = and i32 %20, -3
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %22, i32 0, i32 4
  %24 = load i8, ptr %23, align 1, !range !11
  %25 = zext i8 %24 to i32
  %26 = or i32 %21, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !13
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr i8, ptr %29, i32 96
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %32 = and i32 %31, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr i8, ptr %33, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !13
  %35 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  br label %36

36:                                               ; preds = %16, %10, %1
  %37 = phi i32 [ 0, %1 ], [ 0, %16 ], [ %14, %10 ]
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.tegra_mipi, ptr %38, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %39) #6
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mipi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tegra_mipi, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.tegra_mipi, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tegra_mipi, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 96
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %21 = or i32 %20, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !13
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 88
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %27, i32 0, i32 4
  %29 = load i8, ptr %28, align 1, !range !11
  %30 = icmp eq i8 %29, 0
  %31 = and i32 %26, -4
  %32 = select i1 %30, i32 %26, i32 %31
  %33 = or i32 %32, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr i8, ptr %34, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !13
  br label %36

36:                                               ; preds = %16, %10, %1
  %37 = phi i32 [ 0, %1 ], [ 0, %16 ], [ %14, %10 ]
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.tegra_mipi, ptr %38, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %39) #6
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_finish_calibration(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mipi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i64 @ktime_get() #6
  %8 = add i64 %7, 250000000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %10 = and i32 %9, 65537
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %23, label %12

12:                                               ; preds = %15, %1
  %13 = tail call i64 @ktime_get() #6
  %14 = icmp sgt i64 %13, %8
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %17 = and i32 %16, 65537
  %18 = icmp eq i32 %17, 65536
  br i1 %18, label %23, label %12

19:                                               ; preds = %12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %21 = and i32 %20, 65537
  %22 = icmp eq i32 %21, 65536
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ 0, %23 ], [ -110, %19 ]
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.tegra_mipi, ptr %26, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %27) #6
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.tegra_mipi, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_mipi_start_calibration(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_mipi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %149, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.tegra_mipi, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 5
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 7
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %21, %16
  %23 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr inbounds %struct.tegra_mipi, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #6, !srcloc !13
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.tegra_mipi, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 96
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %32 = and i32 %31, -458865
  %33 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 7
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 7
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %32
  %39 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 8
  %40 = load i8, ptr %39, align 1
  %41 = shl i8 %40, 4
  %42 = and i8 %41, 112
  %43 = zext i8 %42 to i32
  %44 = or i32 %38, %43
  %45 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %46 = getelementptr inbounds %struct.tegra_mipi, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %44) #6, !srcloc !13
  %49 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %118, label %52

52:                                               ; preds = %9
  %53 = getelementptr inbounds %struct.tegra_mipi_device, ptr %0, i32 0, i32 3
  %54 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 9
  %55 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 10
  %56 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 11
  %57 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 12
  %58 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 13
  %59 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 1
  br label %60

60:                                               ; preds = %114, %52
  %61 = phi i32 [ 0, %52 ], [ %115, %114 ]
  %62 = load i32, ptr %53, align 4
  %63 = shl nuw i32 1, %61
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %60
  %67 = load i8, ptr %54, align 2
  %68 = and i8 %67, 31
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = load i8, ptr %55, align 1
  %72 = and i8 %71, 31
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or i32 %74, %70
  %76 = load i8, ptr %56, align 4
  %77 = and i8 %76, 31
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  %80 = or i32 %79, 2097152
  %81 = load i8, ptr %57, align 1
  %82 = and i8 %81, 31
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = load i8, ptr %58, align 2
  %86 = and i8 %85, 31
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = or i32 %88, 2097152
  br label %90

90:                                               ; preds = %66, %60
  %91 = phi i32 [ %89, %66 ], [ 0, %60 ]
  %92 = phi i32 [ %80, %66 ], [ 0, %60 ]
  %93 = load ptr, ptr %2, align 4
  %94 = load ptr, ptr %59, align 4
  %95 = getelementptr %struct.tegra_mipi_pad, ptr %94, i32 %61
  %96 = load i32, ptr %95, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %97 = getelementptr inbounds %struct.tegra_mipi, ptr %93, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = shl i32 %96, 2
  %100 = getelementptr i8, ptr %98, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %92) #6, !srcloc !13
  %101 = load i8, ptr %4, align 4, !range !11
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %90
  %104 = load ptr, ptr %59, align 4
  %105 = getelementptr %struct.tegra_mipi_pad, ptr %104, i32 %61, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %110 = getelementptr inbounds %struct.tegra_mipi, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = shl i32 %106, 2
  %113 = getelementptr i8, ptr %111, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %91) #6, !srcloc !13
  br label %114

114:                                              ; preds = %108, %103, %90
  %115 = add nuw i32 %61, 1
  %116 = load i32, ptr %49, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %60, label %118

118:                                              ; preds = %114, %9
  %119 = load ptr, ptr %2, align 4
  %120 = getelementptr inbounds %struct.tegra_mipi, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %123 = getelementptr inbounds %struct.tegra_mipi_soc, ptr %4, i32 0, i32 3
  %124 = load i8, ptr %123, align 4, !range !11
  %125 = icmp eq i8 %124, 0
  %126 = and i32 %122, -1056964625
  %127 = select i1 %125, i32 704643072, i32 704643088
  %128 = or i32 %127, %126
  %129 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %130 = getelementptr inbounds %struct.tegra_mipi, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #6, !srcloc !13
  %132 = load ptr, ptr %2, align 4
  %133 = getelementptr inbounds %struct.tegra_mipi, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %137 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %138 = getelementptr inbounds %struct.tegra_mipi, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr i8, ptr %139, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %136) #6, !srcloc !13
  %141 = load ptr, ptr %2, align 4
  %142 = getelementptr inbounds %struct.tegra_mipi, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %145 = or i32 %144, 1
  %146 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %147 = getelementptr inbounds %struct.tegra_mipi, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %145) #6, !srcloc !13
  tail call void @usleep_range_state(i32 noundef 75, i32 noundef 80, i32 noundef 2) #6
  br label %149

149:                                              ; preds = %118, %1
  %150 = phi i32 [ 0, %118 ], [ %7, %1 ]
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mipi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_mipi_of_match, ptr noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.tegra_mipi, ptr %8, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.tegra_mipi, ptr %8, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = ptrtoint ptr %15 to i32
  br label %33

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.tegra_mipi, ptr %8, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @tegra_mipi_probe.__key) #6
  %22 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %23 = getelementptr inbounds %struct.tegra_mipi, ptr %8, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %26 = load ptr, ptr %23, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %33

28:                                               ; preds = %20
  %29 = tail call i32 @clk_prepare(ptr noundef %22) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %28, %25, %18, %7, %1
  %34 = phi i32 [ %19, %18 ], [ %27, %25 ], [ 0, %31 ], [ -19, %1 ], [ -12, %7 ], [ %29, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_mipi_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_mipi, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 3669757}
!10 = !{i64 2153163076}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153163441}
!13 = !{i64 3669339}
