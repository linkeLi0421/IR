; ModuleID = '/llk/IR/drivers/dma/uniphier-mdmac.c_pt.bc'
source_filename = "../drivers/dma/uniphier-mdmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.uniphier_mdmac_device = type { %struct.dma_device, ptr, ptr, [0 x %struct.uniphier_mdmac_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uniphier_mdmac_chan = type { %struct.virt_dma_chan, ptr, ptr, ptr, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.uniphier_mdmac_desc = type { %struct.virt_dma_desc, ptr, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_uniphier_mdmac__229_497_uniphier_mdmac_driver_init6 = internal global ptr @uniphier_mdmac_driver_init, section ".initcall6.init", align 4
@uniphier_mdmac_driver = internal global %struct.platform_driver { ptr @uniphier_mdmac_probe, ptr @uniphier_mdmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_mdmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_mdmac_driver_exit = internal global ptr @uniphier_mdmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [70 x i8] c"uniphier_mdmac.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [52 x i8] c"uniphier_mdmac.description=UniPhier MIO DMAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [47 x i8] c"uniphier_mdmac.file=drivers/dma/uniphier-mdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [30 x i8] c"uniphier_mdmac.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"uniphier-mio-dmac\00", align 1
@uniphier_mdmac_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-mio-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"uniphier-mio-dmac-ch%d\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_uniphier_mdmac_driver_exit, ptr @__initcall__kmod_uniphier_mdmac__229_497_uniphier_mdmac_driver_init6, ptr @uniphier_mdmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_mdmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_mdmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_mdmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @platform_irq_count(ptr noundef %0) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %88, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %88

8:                                                ; preds = %5
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 156) #7
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 260) #7
  %13 = select i1 %10, i32 -1, i32 %12
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %13, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %88

22:                                               ; preds = %16
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %24 = getelementptr inbounds %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %88

29:                                               ; preds = %22
  %30 = tail call i32 @clk_prepare(ptr noundef %23) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %23) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %88

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 15
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %38) #7
  %39 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 19
  store i32 30, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 20
  store i32 30, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 21
  store i32 6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 26
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 29
  store ptr @uniphier_mdmac_free_chan_resources, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  store ptr @uniphier_mdmac_prep_slave_sg, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  store ptr @uniphier_mdmac_terminate_all, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 48
  store ptr @uniphier_mdmac_synchronize, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 49
  store ptr @uniphier_mdmac_tx_status, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 50
  store ptr @uniphier_mdmac_issue_pending, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 3
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 3, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp eq i32 %3, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %63, %36
  %53 = phi i32 [ %72, %63 ], [ 0, %36 ]
  %54 = getelementptr %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 3, i32 %53
  %55 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %53) #7
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %52
  %58 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %53) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %55, ptr noundef nonnull @uniphier_mdmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull %58, ptr noundef %54) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = getelementptr %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 3, i32 %53, i32 1
  store ptr %14, ptr %64, align 4
  %65 = load ptr, ptr %18, align 4
  %66 = getelementptr i8, ptr %65, i32 256
  %67 = shl i32 %53, 6
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = getelementptr %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 3, i32 %53, i32 3
  store ptr %68, ptr %69, align 4
  %70 = getelementptr %struct.uniphier_mdmac_device, ptr %14, i32 0, i32 3, i32 %53, i32 4
  store i32 %53, ptr %70, align 4
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %54, i32 0, i32 2
  store ptr @uniphier_mdmac_desc_free, ptr %71, align 4
  tail call void @vchan_init(ptr noundef %54, ptr noundef %14) #7
  %72 = add nuw nsw i32 %53, 1
  %73 = icmp eq i32 %72, %3
  br i1 %73, label %74, label %52

74:                                               ; preds = %63, %36
  %75 = tail call i32 @dma_async_device_register(ptr noundef nonnull %14) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %79 = load ptr, ptr %78, align 8
  %80 = tail call i32 @of_dma_controller_register(ptr noundef %79, ptr noundef nonnull @of_dma_xlate_by_chan_id, ptr noundef nonnull %14) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %83, align 8
  br label %88

84:                                               ; preds = %77
  tail call void @dma_async_device_unregister(ptr noundef nonnull %14) #7
  br label %85

85:                                               ; preds = %84, %74, %60, %57, %52
  %86 = phi i32 [ %75, %74 ], [ %80, %84 ], [ %55, %52 ], [ -12, %57 ], [ %61, %60 ]
  %87 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %87) #7
  tail call void @clk_unprepare(ptr noundef %87) #7
  br label %88

88:                                               ; preds = %85, %82, %35, %29, %26, %20, %8, %5, %1
  %89 = phi i32 [ %21, %20 ], [ %28, %26 ], [ %86, %85 ], [ 0, %82 ], [ %3, %1 ], [ %6, %5 ], [ -12, %8 ], [ %33, %35 ], [ %30, %29 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %23, %1
  %8 = phi ptr [ %24, %23 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -32
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = tail call i32 %12(ptr noundef %9) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 48
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef %9) #7
  br label %23

23:                                               ; preds = %22, %17
  tail call void @uniphier_mdmac_free_chan_resources(ptr noundef %9)
  %24 = load ptr, ptr %8, align 4
  %25 = icmp eq ptr %24, %4
  br i1 %25, label %26, label %7

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %28 = load ptr, ptr %27, align 8
  tail call void @of_dma_controller_free(ptr noundef %28) #7
  tail call void @dma_async_device_unregister(ptr noundef %3) #7
  %29 = getelementptr inbounds %struct.uniphier_mdmac_device, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %31

31:                                               ; preds = %26, %14, %7
  %32 = phi i32 [ 0, %26 ], [ -22, %7 ], [ %15, %14 ]
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_mdmac_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %7, ptr %10, align 4
  store ptr %2, ptr %12, align 4
  store ptr %12, ptr %3, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %11, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %19, ptr %22, align 4
  store ptr %16, ptr %19, align 4
  store ptr %2, ptr %21, align 4
  store ptr %21, ptr %3, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %20, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  store ptr %25, ptr %28, align 4
  store ptr %2, ptr %30, align 4
  store ptr %30, ptr %3, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %29, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %37, ptr %40, align 4
  store ptr %34, ptr %37, align 4
  store ptr %2, ptr %39, align 4
  store ptr %39, ptr %3, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %46, ptr %49, align 4
  store ptr %43, ptr %46, align 4
  store ptr %2, ptr %48, align 4
  store ptr %48, ptr %3, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load ptr, ptr %2, align 8
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %60, label %53

53:                                               ; preds = %53, %50
  %54 = phi ptr [ %58, %53 ], [ %51, %50 ]
  %55 = getelementptr i8, ptr %54, i32 -64
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -65
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %54, align 4
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %60, label %53

60:                                               ; preds = %53, %50
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uniphier_mdmac_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2304, i32 noundef 92) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %11, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %11, i32 0, i32 2
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %11, i32 0, i32 4
  store i32 %3, ptr %16, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %11, ptr noundef %0) #7
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 1
  store i32 %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %19, align 4
  %20 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1, i32 1
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #7
  %24 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2
  %25 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %24, ptr %26, align 4
  store ptr %25, ptr %24, align 4
  %28 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2, i32 1
  store ptr %27, ptr %28, align 8
  store volatile ptr %24, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #7
  br label %29

29:                                               ; preds = %13, %9, %6
  %30 = phi ptr [ %11, %13 ], [ null, %6 ], [ null, %9 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %9
  store ptr null, ptr %6, align 4
  %22 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  %24 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 8192) #7, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  call void @arm_heavy_mb() #7
  %27 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = shl nuw i32 1, %28
  %30 = or i32 %29, -2147483648
  %31 = getelementptr inbounds %struct.uniphier_mdmac_device, ptr %23, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !9
  %33 = call i64 @ktime_get() #7
  %34 = add i64 %33, 20000
  br label %35

35:                                               ; preds = %41, %21
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %39 = and i32 %38, 8192
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = call i64 @ktime_get() #7
  %43 = icmp sgt i64 %42, %34
  br i1 %43, label %44, label %35

44:                                               ; preds = %41
  %45 = load ptr, ptr %24, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %48 = and i32 %47, 8192
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 -110, i32 0
  br label %51

51:                                               ; preds = %44, %35, %1
  %52 = phi i32 [ 0, %1 ], [ %50, %44 ], [ 0, %35 ]
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %57, ptr %60, align 4
  store ptr %54, ptr %57, align 4
  store ptr %2, ptr %59, align 4
  store ptr %59, ptr %3, align 4
  store volatile ptr %53, ptr %53, align 4
  store ptr %53, ptr %58, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %66, ptr %69, align 4
  store ptr %63, ptr %66, align 4
  store ptr %2, ptr %68, align 4
  store ptr %68, ptr %3, align 4
  store volatile ptr %62, ptr %62, align 4
  store ptr %62, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %75, ptr %78, align 4
  store ptr %72, ptr %75, align 4
  store ptr %2, ptr %77, align 4
  store ptr %77, ptr %3, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %84, ptr %87, align 4
  store ptr %81, ptr %84, align 4
  store ptr %2, ptr %86, align 4
  store ptr %86, ptr %3, align 4
  store volatile ptr %80, ptr %80, align 4
  store ptr %80, ptr %85, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %93, ptr %96, align 4
  store ptr %90, ptr %93, align 4
  store ptr %2, ptr %95, align 4
  store ptr %95, ptr %3, align 4
  store volatile ptr %89, ptr %89, align 4
  store ptr %89, ptr %94, align 4
  br label %97

97:                                               ; preds = %92, %88
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_mdmac_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %8, ptr %11, align 4
  store ptr %2, ptr %13, align 4
  store ptr %13, ptr %3, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %21, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  %19 = or i1 %18, %8
  %20 = xor i1 %18, true
  br i1 %19, label %67, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %67, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #7
  %28 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %39 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %28, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %31, %25
  %43 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45

45:                                               ; preds = %42, %34
  %46 = phi ptr [ %40, %34 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %46, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %46, i32 0, i32 1
  %54 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i32 [ %55, %52 ], [ %62, %56 ]
  %58 = phi i32 [ %48, %52 ], [ %63, %56 ]
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr %struct.scatterlist, ptr %59, i32 %58, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %57, %61
  store i32 %62, ptr %54, align 4
  %63 = add nuw i32 %58, 1
  %64 = load i32, ptr %49, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %56, label %66

66:                                               ; preds = %56, %45, %42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #7
  br label %67

67:                                               ; preds = %66, %21, %17
  %68 = phi i1 [ true, %66 ], [ %20, %17 ], [ %24, %21 ]
  %69 = zext i1 %68 to i32
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_mdmac_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %6, ptr %10, align 4
  store ptr %5, ptr %12, align 4
  store ptr %12, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load volatile ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, %5
  %24 = getelementptr i8, ptr %22, i32 -68
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr null, ptr %18, align 4
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  store ptr %24, ptr %18, align 4
  tail call fastcc void @uniphier_mdmac_handle(ptr noundef %0, ptr noundef nonnull %24) #7
  br label %33

33:                                               ; preds = %28, %27, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_xlate_by_chan_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uniphier_mdmac_handle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  %12 = getelementptr %struct.scatterlist, ptr %6, i32 %8, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = select i1 %11, i32 0, i32 32
  %15 = select i1 %11, i32 %13, i32 0
  %16 = select i1 %11, i32 32, i32 0
  %17 = select i1 %11, i32 0, i32 %13
  %18 = getelementptr %struct.scatterlist, ptr %6, i32 %8, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %20 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %14) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %17) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 2) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %35 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.uniphier_mdmac_device, ptr %4, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_mdmac_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #7, !srcloc !9
  %12 = getelementptr inbounds %struct.uniphier_mdmac_chan, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %13, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.uniphier_mdmac_desc, ptr %13, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %53, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %13, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26, !prof !26

25:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_chan, ptr %28, i32 0, i32 3
  store i32 %23, ptr %29, align 4
  store i32 0, ptr %13, align 4
  %30 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 7
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 7, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %34 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %30, ptr %33, align 4
  %35 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1, i32 1
  %36 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %39) #7
  br label %40

40:                                               ; preds = %38, %26
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  %44 = getelementptr i8, ptr %42, i32 -68
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store ptr null, ptr %12, align 4
  br label %55

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 4
  store ptr %44, ptr %12, align 4
  br label %53

53:                                               ; preds = %48, %15
  %54 = phi ptr [ %44, %48 ], [ %13, %15 ]
  tail call fastcc void @uniphier_mdmac_handle(ptr noundef %1, ptr noundef nonnull %54)
  br label %55

55:                                               ; preds = %53, %47, %9, %2
  %56 = phi i32 [ 1, %53 ], [ 1, %9 ], [ 0, %2 ], [ 1, %47 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  %57 = load i16, ptr %3, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_mdmac_desc_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2153122968}
!9 = !{i64 4995451}
!10 = !{i64 2153123543}
!11 = !{i64 4995869}
!12 = !{i64 2153125190}
!13 = !{i64 2153125542}
!14 = !{i64 2153070039}
!15 = !{i64 2153127512}
!16 = !{i64 2153119926}
!17 = !{i64 2153120274}
!18 = !{i64 2153120623}
!19 = !{i64 2153120971}
!20 = !{i64 2153121322}
!21 = !{i64 2153121673}
!22 = !{i64 2153122020}
!23 = !{i64 2153122480}
!24 = !{i64 2153125904}
!25 = !{i64 2153126106}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2153069103, i64 2153069590, i64 2153069140, i64 2153069196, i64 2153069230, i64 2153069254, i64 2153069295, i64 2153069316, i64 2153069344, i64 2153069378}
!28 = !{i64 2148890346}
!29 = !{i64 2148886170}
!30 = !{i64 2148886245, i64 2148886272, i64 2148886319, i64 2148886341, i64 2148886369, i64 2148886389}
!31 = !{i64 2148913349}
