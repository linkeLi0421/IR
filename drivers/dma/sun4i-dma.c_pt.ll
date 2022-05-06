; ModuleID = '/llk/IR/drivers/dma/sun4i-dma.c_pt.bc'
source_filename = "../drivers/dma/sun4i-dma.c"
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
%struct.sun4i_dma_dev = type { [1 x i32], %struct.dma_device, ptr, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sun4i_dma_pchan = type { ptr, ptr, i32 }
%struct.sun4i_dma_vchan = type { %struct.virt_dma_chan, %struct.dma_slave_config, ptr, ptr, ptr, i8, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sun4i_dma_contract = type { %struct.virt_dma_desc, %struct.list_head, %struct.list_head, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.sun4i_dma_promise = type { i32, i32, i32, i32, i32, %struct.list_head }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_sun4i_dma__231_1284_sun4i_dma_driver_init6 = internal global ptr @sun4i_dma_driver_init, section ".initcall6.init", align 4
@sun4i_dma_driver = internal global %struct.platform_driver { ptr @sun4i_dma_probe, ptr @sun4i_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_dma_driver_exit = internal global ptr @sun4i_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [68 x i8] c"sun4i_dma.description=Allwinner A10 Dedicated DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [54 x i8] c"sun4i_dma.author=Emilio L\C3\B3pez <emilio@elopez.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [37 x i8] c"sun4i_dma.file=drivers/dma/sun4i-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [22 x i8] c"sun4i_dma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun4i-dma\00", align 1
@sun4i_dma_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No clock specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't enable the clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to register DMA engine device\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid DMA direction\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_sun4i_dma_driver_exit, ptr @__initcall__kmod_sun4i_dma__231_1284_sun4i_dma_driver_init6, ptr @sun4i_dma_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_dma_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_dma_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_dma_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_dma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 280, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %177, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %177

12:                                               ; preds = %5
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %14 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %177, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %18 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  %21 = load ptr, ptr %18, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %177

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 7
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 6
  store i32 0, ptr %27, align 4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %27) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %27) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %27) #9
  tail call void @_set_bit(i32 noundef 11, ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 3
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 3, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 29
  store ptr @sun4i_dma_free_chan_resources, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 49
  store ptr @sun4i_dma_tx_status, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 50
  store ptr @sun4i_dma_issue_pending, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 39
  store ptr @sun4i_dma_prep_slave_sg, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 30
  store ptr @sun4i_dma_prep_dma_memcpy, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 40
  store ptr @sun4i_dma_prep_dma_cyclic, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 44
  store ptr @sun4i_dma_config, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 47
  store ptr @sun4i_dma_terminate_all, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 10
  store i32 2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 19
  store i32 22, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 20
  store i32 22, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 21
  store i32 6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 26
  store i32 2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1, i32 15
  store ptr %2, ptr %43, align 4
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 192, i32 noundef 3520) #9
  %45 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16224, i32 noundef 3520) #9
  %47 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %177, label %49

49:                                               ; preds = %23
  %50 = load ptr, ptr %45, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %177, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr i8, ptr %53, i32 256
  store ptr %54, ptr %50, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 288
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr %struct.sun4i_dma_pchan, ptr %57, i32 1
  store ptr %56, ptr %58, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 320
  %61 = load ptr, ptr %45, align 4
  %62 = getelementptr %struct.sun4i_dma_pchan, ptr %61, i32 2
  store ptr %60, ptr %62, align 4
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 352
  %65 = load ptr, ptr %45, align 4
  %66 = getelementptr %struct.sun4i_dma_pchan, ptr %65, i32 3
  store ptr %64, ptr %66, align 4
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr i8, ptr %67, i32 384
  %69 = load ptr, ptr %45, align 4
  %70 = getelementptr %struct.sun4i_dma_pchan, ptr %69, i32 4
  store ptr %68, ptr %70, align 4
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 416
  %73 = load ptr, ptr %45, align 4
  %74 = getelementptr %struct.sun4i_dma_pchan, ptr %73, i32 5
  store ptr %72, ptr %74, align 4
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 448
  %77 = load ptr, ptr %45, align 4
  %78 = getelementptr %struct.sun4i_dma_pchan, ptr %77, i32 6
  store ptr %76, ptr %78, align 4
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr i8, ptr %79, i32 480
  %81 = load ptr, ptr %45, align 4
  %82 = getelementptr %struct.sun4i_dma_pchan, ptr %81, i32 7
  store ptr %80, ptr %82, align 4
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i8, ptr %83, i32 768
  %85 = load ptr, ptr %45, align 4
  %86 = getelementptr %struct.sun4i_dma_pchan, ptr %85, i32 8
  store ptr %84, ptr %86, align 4
  %87 = load ptr, ptr %45, align 4
  %88 = getelementptr %struct.sun4i_dma_pchan, ptr %87, i32 8, i32 2
  store i32 1, ptr %88, align 4
  %89 = load ptr, ptr %8, align 4
  %90 = getelementptr i8, ptr %89, i32 800
  %91 = load ptr, ptr %45, align 4
  %92 = getelementptr %struct.sun4i_dma_pchan, ptr %91, i32 9
  store ptr %90, ptr %92, align 4
  %93 = load ptr, ptr %45, align 4
  %94 = getelementptr %struct.sun4i_dma_pchan, ptr %93, i32 9, i32 2
  store i32 1, ptr %94, align 4
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr i8, ptr %95, i32 832
  %97 = load ptr, ptr %45, align 4
  %98 = getelementptr %struct.sun4i_dma_pchan, ptr %97, i32 10
  store ptr %96, ptr %98, align 4
  %99 = load ptr, ptr %45, align 4
  %100 = getelementptr %struct.sun4i_dma_pchan, ptr %99, i32 10, i32 2
  store i32 1, ptr %100, align 4
  %101 = load ptr, ptr %8, align 4
  %102 = getelementptr i8, ptr %101, i32 864
  %103 = load ptr, ptr %45, align 4
  %104 = getelementptr %struct.sun4i_dma_pchan, ptr %103, i32 11
  store ptr %102, ptr %104, align 4
  %105 = load ptr, ptr %45, align 4
  %106 = getelementptr %struct.sun4i_dma_pchan, ptr %105, i32 11, i32 2
  store i32 1, ptr %106, align 4
  %107 = load ptr, ptr %8, align 4
  %108 = getelementptr i8, ptr %107, i32 896
  %109 = load ptr, ptr %45, align 4
  %110 = getelementptr %struct.sun4i_dma_pchan, ptr %109, i32 12
  store ptr %108, ptr %110, align 4
  %111 = load ptr, ptr %45, align 4
  %112 = getelementptr %struct.sun4i_dma_pchan, ptr %111, i32 12, i32 2
  store i32 1, ptr %112, align 4
  %113 = load ptr, ptr %8, align 4
  %114 = getelementptr i8, ptr %113, i32 928
  %115 = load ptr, ptr %45, align 4
  %116 = getelementptr %struct.sun4i_dma_pchan, ptr %115, i32 13
  store ptr %114, ptr %116, align 4
  %117 = load ptr, ptr %45, align 4
  %118 = getelementptr %struct.sun4i_dma_pchan, ptr %117, i32 13, i32 2
  store i32 1, ptr %118, align 4
  %119 = load ptr, ptr %8, align 4
  %120 = getelementptr i8, ptr %119, i32 960
  %121 = load ptr, ptr %45, align 4
  %122 = getelementptr %struct.sun4i_dma_pchan, ptr %121, i32 14
  store ptr %120, ptr %122, align 4
  %123 = load ptr, ptr %45, align 4
  %124 = getelementptr %struct.sun4i_dma_pchan, ptr %123, i32 14, i32 2
  store i32 1, ptr %124, align 4
  %125 = load ptr, ptr %8, align 4
  %126 = getelementptr i8, ptr %125, i32 992
  %127 = load ptr, ptr %45, align 4
  %128 = getelementptr %struct.sun4i_dma_pchan, ptr %127, i32 15
  store ptr %126, ptr %128, align 4
  %129 = load ptr, ptr %45, align 4
  %130 = getelementptr %struct.sun4i_dma_pchan, ptr %129, i32 15, i32 2
  store i32 1, ptr %130, align 4
  br label %131

131:                                              ; preds = %131, %52
  %132 = phi i32 [ 0, %52 ], [ %137, %131 ]
  %133 = load ptr, ptr %47, align 4
  %134 = getelementptr %struct.sun4i_dma_vchan, ptr %133, i32 %132
  %135 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 3
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 2
  store ptr @sun4i_dma_free_contract, ptr %136, align 4
  tail call void @vchan_init(ptr noundef %134, ptr noundef %26) #9
  %137 = add nuw nsw i32 %132, 1
  %138 = icmp eq i32 %137, 78
  br i1 %138, label %139, label %131

139:                                              ; preds = %131
  %140 = load ptr, ptr %18, align 4
  %141 = tail call i32 @clk_prepare(ptr noundef %140) #9
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = tail call i32 @clk_enable(ptr noundef %140) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  tail call void @clk_unprepare(ptr noundef %140) #9
  br label %147

147:                                              ; preds = %146, %139
  %148 = phi i32 [ %144, %146 ], [ %141, %139 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  br label %177

149:                                              ; preds = %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %150 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %151 = load ptr, ptr %8, align 4
  %152 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 -1) #9, !srcloc !9
  %153 = load i32, ptr %14, align 4
  %154 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load ptr, ptr %2, align 4
  br label %159

159:                                              ; preds = %157, %149
  %160 = phi ptr [ %158, %157 ], [ %155, %149 ]
  %161 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %153, ptr noundef nonnull @sun4i_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %160, ptr noundef nonnull %3) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  br label %174

164:                                              ; preds = %159
  %165 = tail call i32 @dma_async_device_register(ptr noundef %26) #9
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  br label %174

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %170 = load ptr, ptr %169, align 8
  %171 = tail call i32 @of_dma_controller_register(ptr noundef %170, ptr noundef nonnull @sun4i_dma_of_xlate, ptr noundef nonnull %3) #9
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  tail call void @dma_async_device_unregister(ptr noundef %26) #9
  br label %174

174:                                              ; preds = %173, %167, %163
  %175 = phi i32 [ %161, %163 ], [ %165, %167 ], [ %171, %173 ]
  %176 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %176) #9
  tail call void @clk_unprepare(ptr noundef %176) #9
  br label %177

177:                                              ; preds = %174, %168, %147, %49, %23, %20, %12, %10, %1
  %178 = phi i32 [ %11, %10 ], [ %22, %20 ], [ %148, %147 ], [ %175, %174 ], [ -12, %1 ], [ %13, %12 ], [ -12, %49 ], [ -12, %23 ], [ 0, %168 ]
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dma_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  tail call void @of_dma_controller_free(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_dma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %10 = icmp eq ptr %2, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  store i32 %9, ptr %2, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = icmp sgt i32 %9, %7
  %17 = icmp sge i32 %9, %1
  %18 = icmp slt i32 %7, %1
  br i1 %16, label %23, label %19

19:                                               ; preds = %15
  %20 = or i1 %18, %17
  %21 = or i1 %10, %20
  %22 = xor i1 %20, true
  br i1 %21, label %64, label %27

23:                                               ; preds = %15
  %24 = and i1 %18, %17
  %25 = or i1 %10, %24
  %26 = xor i1 %24, true
  br i1 %25, label %64, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #9
  %30 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %42, %36 ], [ %34, %32 ]
  %38 = phi i32 [ %41, %36 ], [ 0, %32 ]
  %39 = getelementptr i8, ptr %37, i32 -4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = load ptr, ptr %37, align 4
  %43 = icmp eq ptr %42, %33
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %32
  %45 = phi i32 [ 0, %32 ], [ %41, %36 ]
  %46 = load volatile ptr, ptr %33, align 4
  %47 = icmp eq ptr %46, %33
  %48 = getelementptr i8, ptr %46, i32 -20
  %49 = select i1 %47, ptr null, ptr %48
  %50 = icmp ne ptr %49, null
  %51 = icmp ne ptr %5, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %49, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %45, %55
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  %60 = add i32 %59, %56
  br label %61

61:                                               ; preds = %53, %44, %27
  %62 = phi i32 [ %45, %44 ], [ 0, %27 ], [ %60, %53 ]
  %63 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #9
  br label %64

64:                                               ; preds = %61, %23, %19
  %65 = phi i1 [ true, %61 ], [ %22, %19 ], [ %26, %23 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_dma_issue_pending(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %8 = load volatile ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  store ptr %8, ptr %12, align 4
  store ptr %7, ptr %14, align 4
  store ptr %14, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %13, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load volatile ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, %7
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call fastcc void @__execute_vchan_pending(ptr noundef %3, ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1
  %8 = icmp eq ptr %1, null
  br i1 %8, label %130, label %9

9:                                                ; preds = %6
  %10 = add i32 %3, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6) #10
  br label %130

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 96) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %130, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %18, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %18, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %18, i32 0, i32 2
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %18, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 22, i32 1
  %29 = icmp eq i32 %3, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %28
  %36 = or i32 %35, 2097152
  br label %44

37:                                               ; preds = %20
  %38 = shl nuw nsw i32 %28, 16
  %39 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 5
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = or i32 %42, 32
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i32 [ %36, %30 ], [ %43, %37 ]
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %117, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 2
  %49 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 1
  %50 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 5
  %51 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 6
  %52 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 3
  %53 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 4
  br label %54

54:                                               ; preds = %115, %47
  %55 = phi i32 [ %26, %47 ], [ %116, %115 ]
  %56 = phi i32 [ 0, %47 ], [ %112, %115 ]
  %57 = phi ptr [ %1, %47 ], [ %113, %115 ]
  %58 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 3
  %59 = select i1 %29, ptr %58, ptr %49
  %60 = select i1 %29, ptr %48, ptr %58
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %59, align 4
  %63 = icmp eq i32 %55, 0
  %64 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  br i1 %63, label %99, label %66

66:                                               ; preds = %54
  %67 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %68 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 2304, i32 noundef 28) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %130, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %68, i32 0, i32 2
  store i32 %62, ptr %71, align 8
  %72 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %68, i32 0, i32 3
  store i32 %61, ptr %72, align 4
  %73 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %68, i32 0, i32 4
  store i32 %65, ptr %73, align 8
  store i32 -2147450880, ptr %68, align 8
  %74 = load i32, ptr %50, align 4
  %75 = icmp ugt i32 %74, 8
  br i1 %75, label %98, label %76

76:                                               ; preds = %70
  %77 = shl nuw nsw i32 %74, 5
  %78 = and i32 %77, 2147450752
  %79 = or i32 %78, -2147450880
  store i32 %79, ptr %68, align 8
  %80 = load i32, ptr %51, align 4
  %81 = icmp ugt i32 %80, 8
  br i1 %81, label %98, label %82

82:                                               ; preds = %76
  %83 = shl nuw nsw i32 %80, 21
  %84 = and i32 %83, 2139095040
  %85 = or i32 %84, %79
  store i32 %85, ptr %68, align 8
  %86 = load i32, ptr %52, align 4
  %87 = icmp ugt i32 %86, 4
  br i1 %87, label %98, label %88

88:                                               ; preds = %82
  %89 = shl nuw nsw i32 %86, 8
  %90 = and i32 %89, 2147450368
  %91 = or i32 %90, %85
  store i32 %91, ptr %68, align 8
  %92 = load i32, ptr %53, align 4
  %93 = icmp ugt i32 %92, 4
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = shl nuw nsw i32 %92, 24
  %96 = and i32 %95, 2113929216
  %97 = or i32 %96, %91
  store i32 %97, ptr %68, align 8
  br label %104

98:                                               ; preds = %88, %82, %76, %70
  tail call void @kfree(ptr noundef nonnull %68) #9
  br label %130

99:                                               ; preds = %54
  %100 = tail call fastcc ptr @generate_ndma_promise(i32 noundef %62, i32 noundef %61, i32 noundef %65, ptr noundef %7, i32 noundef %3)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %130, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %100, align 4
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi i32 [ %97, %94 ], [ %103, %102 ]
  %106 = phi ptr [ %68, %94 ], [ %100, %102 ]
  %107 = or i32 %105, %45
  store i32 %107, ptr %106, align 4
  %108 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %106, i32 0, i32 1
  store i32 65537, ptr %108, align 4
  %109 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %106, i32 0, i32 5
  %110 = load ptr, ptr %22, align 8
  store ptr %109, ptr %22, align 8
  store ptr %21, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %106, i32 0, i32 5, i32 1
  store ptr %110, ptr %111, align 4
  store volatile ptr %109, ptr %110, align 4
  %112 = add nuw i32 %56, 1
  %113 = tail call ptr @sg_next(ptr noundef %57) #9
  %114 = icmp eq i32 %112, %2
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  %116 = load i32, ptr %25, align 4
  br label %54

117:                                              ; preds = %104, %44
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %18, ptr noundef %0) #9
  %118 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 1
  store i32 %4, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %119, align 8
  %120 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %120, align 4
  %121 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 1
  store i32 0, ptr %121, align 4
  %122 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 1, i32 1
  store i32 0, ptr %122, align 8
  %123 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %123) #9
  %125 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 2
  %126 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %127 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %128 = load ptr, ptr %127, align 4
  store ptr %125, ptr %127, align 4
  store ptr %126, ptr %125, align 4
  %129 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 2, i32 1
  store ptr %128, ptr %129, align 8
  store volatile ptr %125, ptr %128, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %123, i32 noundef %124) #9
  br label %130

130:                                              ; preds = %117, %99, %98, %66, %16, %12, %6
  %131 = phi ptr [ %18, %117 ], [ null, %12 ], [ null, %6 ], [ null, %16 ], [ null, %98 ], [ null, %99 ], [ null, %66 ]
  ret ptr %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 96) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %7, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %7, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %7, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %7, i32 0, i32 2, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 3
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 4
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 5
  store i32 8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 6
  store i32 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2304, i32 noundef 28) #11
  %23 = icmp eq ptr %22, null
  br i1 %20, label %49, label %24

24:                                               ; preds = %9
  br i1 %23, label %75, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 2
  store i32 %2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 3
  store i32 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 4
  store i32 %3, ptr %28, align 8
  store i32 -2147450880, ptr %22, align 8
  %29 = load i32, ptr %16, align 4
  %30 = icmp ugt i32 %29, 8
  br i1 %30, label %74, label %31

31:                                               ; preds = %25
  %32 = shl nuw nsw i32 %29, 5
  %33 = and i32 %32, 2147450752
  %34 = or i32 %33, -2147450880
  store i32 %34, ptr %22, align 8
  %35 = load i32, ptr %17, align 4
  %36 = icmp ugt i32 %35, 8
  br i1 %36, label %74, label %37

37:                                               ; preds = %31
  %38 = shl nuw nsw i32 %35, 21
  %39 = and i32 %38, 2139095040
  %40 = or i32 %39, %34
  store i32 %40, ptr %22, align 8
  %41 = load i32, ptr %14, align 4
  %42 = icmp ugt i32 %41, 4
  br i1 %42, label %74, label %43

43:                                               ; preds = %37
  %44 = shl nuw nsw i32 %41, 8
  %45 = and i32 %44, 2147450368
  %46 = or i32 %45, %40
  store i32 %46, ptr %22, align 8
  %47 = load i32, ptr %15, align 4
  %48 = icmp ugt i32 %47, 4
  br i1 %48, label %74, label %76

49:                                               ; preds = %9
  br i1 %23, label %75, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 2
  store i32 %2, ptr %51, align 8
  %52 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 3
  store i32 %1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 4
  store i32 %3, ptr %53, align 8
  store i32 -2147450880, ptr %22, align 8
  %54 = load i32, ptr %16, align 4
  %55 = icmp ugt i32 %54, 8
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = shl nuw nsw i32 %54, 5
  %58 = and i32 %57, 2147450752
  %59 = or i32 %58, -2147450880
  store i32 %59, ptr %22, align 8
  %60 = load i32, ptr %17, align 4
  %61 = icmp ugt i32 %60, 8
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = shl nuw nsw i32 %60, 21
  %64 = and i32 %63, 2139095040
  %65 = or i32 %64, %59
  store i32 %65, ptr %22, align 8
  %66 = load i32, ptr %14, align 4
  %67 = icmp ugt i32 %66, 4
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = shl nuw nsw i32 %66, 8
  %70 = and i32 %69, 2147450368
  %71 = or i32 %70, %65
  store i32 %71, ptr %22, align 8
  %72 = load i32, ptr %15, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %62, %56, %50, %43, %37, %31, %25
  tail call void @kfree(ptr noundef nonnull %22) #9
  br label %75

75:                                               ; preds = %74, %49, %24
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %101

76:                                               ; preds = %68, %43
  %77 = phi i32 [ %47, %43 ], [ %72, %68 ]
  %78 = phi i32 [ %46, %43 ], [ %71, %68 ]
  %79 = shl nuw nsw i32 %77, 24
  %80 = and i32 %79, 2113929216
  %81 = or i32 %80, %78
  store i32 %81, ptr %22, align 8
  %82 = load i32, ptr %18, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 1441814, i32 65537
  %85 = or i32 %81, %84
  store i32 %85, ptr %22, align 8
  %86 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 5
  %87 = load ptr, ptr %11, align 8
  store ptr %86, ptr %11, align 8
  store ptr %10, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %22, i32 0, i32 5, i32 1
  store ptr %87, ptr %88, align 8
  store volatile ptr %86, ptr %87, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %7, ptr noundef %0) #9
  %89 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 1
  store i32 %4, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %90, align 8
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %91, align 4
  %92 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 1
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 1, i32 1
  store i32 0, ptr %93, align 8
  %94 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %94) #9
  %96 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %97 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %98 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr %96, ptr %98, align 4
  store ptr %97, ptr %96, align 4
  %100 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %99, ptr %100, align 8
  store volatile ptr %96, ptr %99, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %94, i32 noundef %95) #9
  br label %101

101:                                              ; preds = %76, %75, %5
  %102 = phi ptr [ %7, %76 ], [ null, %75 ], [ null, %5 ]
  ret ptr %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1
  %8 = add i32 %4, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #10
  br label %136

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2304, i32 noundef 96) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %16, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %16, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %16, i32 0, i32 2
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %16, i32 0, i32 2, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %16, i32 0, i32 3
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 22, i32 1
  %28 = icmp eq i32 %4, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %27
  %37 = or i32 %36, 2097152
  br label %47

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = shl nuw nsw i32 %27, 16
  %42 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 5
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = or i32 %45, 32
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi i32 [ %1, %29 ], [ %40, %38 ]
  %49 = phi i32 [ %31, %29 ], [ %1, %38 ]
  %50 = phi i32 [ %37, %29 ], [ %46, %38 ]
  %51 = udiv i32 %2, %3
  %52 = add i32 %51, 1
  %53 = icmp ult i32 %52, 2
  br i1 %53, label %123, label %54

54:                                               ; preds = %47
  %55 = lshr i32 %52, 1
  %56 = shl i32 %3, 1
  %57 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 5
  %58 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 6
  %59 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 3
  %60 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1, i32 4
  %61 = call i32 @llvm.smax.i32(i32 %55, i32 1)
  br label %62

62:                                               ; preds = %121, %54
  %63 = phi i32 [ %25, %54 ], [ %122, %121 ]
  %64 = phi i32 [ 0, %54 ], [ %119, %121 ]
  %65 = phi i32 [ %49, %54 ], [ %72, %121 ]
  %66 = phi i32 [ %48, %54 ], [ %71, %121 ]
  %67 = mul i32 %56, %64
  %68 = sub i32 %2, %67
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 %56)
  %70 = add i32 %67, %1
  %71 = select i1 %28, i32 %70, i32 %66
  %72 = select i1 %28, i32 %65, i32 %70
  %73 = icmp eq i32 %63, 0
  br i1 %73, label %107, label %74

74:                                               ; preds = %62
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 2304, i32 noundef 28) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %136, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %76, i32 0, i32 2
  store i32 %71, ptr %79, align 8
  %80 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %76, i32 0, i32 3
  store i32 %72, ptr %80, align 4
  %81 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %76, i32 0, i32 4
  store i32 %69, ptr %81, align 8
  store i32 -2147450880, ptr %76, align 8
  %82 = load i32, ptr %57, align 4
  %83 = icmp ugt i32 %82, 8
  br i1 %83, label %106, label %84

84:                                               ; preds = %78
  %85 = shl nuw nsw i32 %82, 5
  %86 = and i32 %85, 2147450752
  %87 = or i32 %86, -2147450880
  store i32 %87, ptr %76, align 8
  %88 = load i32, ptr %58, align 4
  %89 = icmp ugt i32 %88, 8
  br i1 %89, label %106, label %90

90:                                               ; preds = %84
  %91 = shl nuw nsw i32 %88, 21
  %92 = and i32 %91, 2139095040
  %93 = or i32 %92, %87
  store i32 %93, ptr %76, align 8
  %94 = load i32, ptr %59, align 4
  %95 = icmp ugt i32 %94, 4
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = shl nuw nsw i32 %94, 8
  %98 = and i32 %97, 2147450368
  %99 = or i32 %98, %93
  store i32 %99, ptr %76, align 8
  %100 = load i32, ptr %60, align 4
  %101 = icmp ugt i32 %100, 4
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = shl nuw nsw i32 %100, 24
  %104 = and i32 %103, 2113929216
  %105 = or i32 %104, %99
  store i32 %105, ptr %76, align 8
  br label %112

106:                                              ; preds = %96, %90, %84, %78
  tail call void @kfree(ptr noundef nonnull %76) #9
  br label %136

107:                                              ; preds = %62
  %108 = tail call fastcc ptr @generate_ndma_promise(i32 noundef %71, i32 noundef %72, i32 noundef %69, ptr noundef %7, i32 noundef %4)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %136, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %108, align 4
  br label %112

112:                                              ; preds = %110, %102
  %113 = phi i32 [ %105, %102 ], [ %111, %110 ]
  %114 = phi ptr [ %76, %102 ], [ %108, %110 ]
  %115 = or i32 %113, %50
  store i32 %115, ptr %114, align 4
  %116 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %114, i32 0, i32 5
  %117 = load ptr, ptr %20, align 8
  store ptr %116, ptr %20, align 8
  store ptr %19, ptr %116, align 4
  %118 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %114, i32 0, i32 5, i32 1
  store ptr %117, ptr %118, align 4
  store volatile ptr %116, ptr %117, align 4
  %119 = add nuw nsw i32 %64, 1
  %120 = icmp eq i32 %119, %61
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = load i32, ptr %24, align 4
  br label %62

123:                                              ; preds = %112, %47
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %16, ptr noundef %0) #9
  %124 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 1
  store i32 %5, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %125, align 8
  %126 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %126, align 4
  %127 = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 1
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 1, i32 1
  store i32 0, ptr %128, align 8
  %129 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %129) #9
  %131 = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2
  %132 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %133 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %134 = load ptr, ptr %133, align 4
  store ptr %131, ptr %133, align 4
  store ptr %132, ptr %131, align 4
  %135 = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2, i32 1
  store ptr %134, ptr %135, align 8
  store volatile ptr %131, ptr %134, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %129, i32 noundef %130) #9
  br label %136

136:                                              ; preds = %123, %107, %106, %74, %14, %10
  %137 = phi ptr [ %16, %123 ], [ null, %10 ], [ null, %14 ], [ null, %106 ], [ null, %107 ], [ null, %74 ]
  ret ptr %137
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_dma_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store ptr %2, ptr %2, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  store ptr %11, ptr %14, align 4
  store ptr %2, ptr %16, align 4
  store ptr %16, ptr %7, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %15, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %23, ptr %26, align 4
  store ptr %20, ptr %23, align 4
  store ptr %2, ptr %25, align 4
  store ptr %25, ptr %7, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  store ptr %29, ptr %32, align 4
  store ptr %2, ptr %34, align 4
  store ptr %34, ptr %7, align 4
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %33, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %41, ptr %44, align 4
  store ptr %38, ptr %41, align 4
  store ptr %2, ptr %43, align 4
  store ptr %43, ptr %7, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %42, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  store ptr %47, ptr %50, align 4
  store ptr %2, ptr %52, align 4
  store ptr %52, ptr %7, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %51, align 4
  br label %54

54:                                               ; preds = %49, %45
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  %55 = icmp eq ptr %6, null
  br i1 %55, label %83, label %56

56:                                               ; preds = %54
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #9
  %58 = getelementptr i8, ptr %3, i32 252
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %6 to i32
  %61 = ptrtoint ptr %59 to i32
  %62 = sub i32 %60, %61
  %63 = sdiv exact i32 %62, 12
  %64 = getelementptr i8, ptr %3, i32 272
  %65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #9
  %66 = getelementptr i8, ptr %3, i32 260
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !12
  %69 = shl nsw i32 %63, 1
  %70 = shl nuw i32 1, %69
  %71 = or i32 %69, 1
  %72 = shl nuw i32 1, %71
  %73 = or i32 %72, %70
  %74 = xor i32 %73, -1
  %75 = and i32 %68, %74
  %76 = load ptr, ptr %66, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %75) #9, !srcloc !9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #9
  %77 = load ptr, ptr %58, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = sub i32 %60, %78
  %80 = sdiv exact i32 %79, 12
  %81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #9
  %82 = getelementptr inbounds %struct.sun4i_dma_pchan, ptr %6, i32 0, i32 1
  store ptr null, ptr %82, align 4
  call void @_clear_bit(i32 noundef %80, ptr noundef %4) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %81) #9
  br label %83

83:                                               ; preds = %56, %54
  %84 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %85 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %0, i32 0, i32 3
  store ptr null, ptr %85, align 4
  store ptr null, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %84) #9
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_dma_free_contract(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -20
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #9
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -20
  %17 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #9
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %10
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dma_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  store i32 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 7
  %11 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %1, i32 0, i32 3
  br label %12

12:                                               ; preds = %160, %2
  %13 = phi i1 [ false, %2 ], [ true, %160 ]
  %14 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #9
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %136

16:                                               ; preds = %130, %12
  %17 = phi i32 [ %132, %130 ], [ 0, %12 ]
  %18 = phi i32 [ %134, %130 ], [ %14, %12 ]
  %19 = phi i32 [ %131, %130 ], [ 0, %12 ]
  %20 = ashr i32 %18, 1
  %21 = getelementptr %struct.sun4i_dma_pchan, ptr %5, i32 %20
  %22 = getelementptr %struct.sun4i_dma_pchan, ptr %5, i32 %20, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %130, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %23, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %18, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %23, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %23, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %27, i32 0, i32 2
  %36 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %33, i32 0, i32 5, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  %40 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %27, i32 0, i32 2, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %34, ptr %40, align 4
  store ptr %35, ptr %34, align 4
  store ptr %41, ptr %36, align 4
  store volatile ptr %34, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %27, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %27, i32 0, i32 1
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  %49 = getelementptr i8, ptr %47, i32 -20
  %50 = icmp eq ptr %49, null
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load volatile ptr, ptr %35, align 4
  %54 = icmp eq ptr %53, %35
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %40, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %46, ptr %57, align 4
  store ptr %53, ptr %46, align 4
  store ptr %47, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %40, align 4
  %59 = load ptr, ptr %46, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi ptr [ %47, %52 ], [ %59, %55 ]
  %62 = getelementptr i8, ptr %61, i32 -20
  br label %63

63:                                               ; preds = %60, %45
  %64 = phi ptr [ %49, %45 ], [ %62, %60 ]
  store ptr %64, ptr %32, align 4
  %65 = getelementptr %struct.sun4i_dma_pchan, ptr %5, i32 %20, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %64, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %21, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #9
  %72 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %64, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %21, align 4
  %75 = getelementptr i8, ptr %74, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #9
  %76 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %64, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %21, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #9
  br i1 %67, label %87, label %80

80:                                               ; preds = %63
  %81 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %64, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %21, align 4
  %84 = getelementptr i8, ptr %83, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #9, !srcloc !9
  %85 = load i32, ptr %64, align 4
  %86 = load ptr, ptr %21, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %85) #9, !srcloc !9
  br label %90

87:                                               ; preds = %63
  %88 = load i32, ptr %64, align 4
  %89 = load ptr, ptr %21, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #9, !srcloc !9
  br label %90

90:                                               ; preds = %87, %80
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.virt_dma_chan, ptr %92, i32 0, i32 9
  store ptr %27, ptr %93, align 4
  %94 = getelementptr inbounds %struct.virt_dma_chan, ptr %92, i32 0, i32 1, i32 1
  %95 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %94) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.virt_dma_chan, ptr %92, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %98) #9
  br label %109

99:                                               ; preds = %30
  store ptr null, ptr %32, align 4
  %100 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %23, i32 0, i32 2
  store ptr null, ptr %100, align 4
  %101 = shl nuw i32 1, %18
  %102 = or i32 %101, %19
  %103 = load ptr, ptr %4, align 4
  %104 = ptrtoint ptr %21 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  %107 = sdiv exact i32 %106, 12
  %108 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  store ptr null, ptr %22, align 4
  call void @_clear_bit(i32 noundef %107, ptr noundef %1) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %108) #9
  br label %109

109:                                              ; preds = %99, %97, %90
  %110 = phi i32 [ %102, %99 ], [ %19, %90 ], [ %19, %97 ]
  %111 = phi i32 [ 1, %99 ], [ %17, %90 ], [ %17, %97 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %112 = load i16, ptr %31, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %130

114:                                              ; preds = %25
  %115 = getelementptr inbounds %struct.sun4i_dma_contract, ptr %27, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 9
  store ptr %27, ptr %121, align 4
  %122 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 1, i32 1
  %123 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %122) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %126) #9
  br label %130

127:                                              ; preds = %114
  %128 = shl nuw i32 1, %18
  %129 = or i32 %128, %19
  br label %130

130:                                              ; preds = %127, %125, %118, %109, %16
  %131 = phi i32 [ %110, %109 ], [ %129, %127 ], [ %19, %16 ], [ %19, %118 ], [ %19, %125 ]
  %132 = phi i32 [ %111, %109 ], [ %17, %127 ], [ %17, %16 ], [ %17, %118 ], [ %17, %125 ]
  %133 = add nsw i32 %18, 1
  %134 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %133) #9
  %135 = icmp slt i32 %134, 32
  br i1 %135, label %16, label %136

136:                                              ; preds = %130, %12
  %137 = phi i32 [ 0, %12 ], [ %131, %130 ]
  %138 = phi i32 [ 0, %12 ], [ %132, %130 ]
  call void @_raw_spin_lock(ptr noundef %10) #9
  %139 = load ptr, ptr %6, align 4
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #9, !srcloc !12
  %141 = xor i32 %137, -1
  %142 = and i32 %140, %141
  %143 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %142) #9, !srcloc !9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %144 = load i16, ptr %10, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %146 = load i32, ptr %3, align 4
  %147 = load ptr, ptr %6, align 4
  %148 = getelementptr i8, ptr %147, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #9, !srcloc !9
  %149 = icmp eq i32 %138, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %150, %136
  %151 = phi i32 [ %157, %150 ], [ 0, %136 ]
  %152 = load ptr, ptr %11, align 4
  %153 = getelementptr %struct.sun4i_dma_vchan, ptr %152, i32 %151
  %154 = getelementptr inbounds %struct.virt_dma_chan, ptr %153, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %154) #9
  call fastcc void @__execute_vchan_pending(ptr noundef %1, ptr noundef %153)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %155 = load i16, ptr %154, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %154, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %157 = add nuw nsw i32 %151, 1
  %158 = icmp eq i32 %157, 78
  br i1 %158, label %159, label %150

159:                                              ; preds = %150, %136
  br i1 %13, label %165, label %160

160:                                              ; preds = %159
  %161 = load ptr, ptr %6, align 4
  %162 = getelementptr i8, ptr %161, i32 4
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #9, !srcloc !12
  store i32 %163, ptr %3, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %12

165:                                              ; preds = %160, %159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i32 %6, 255
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = trunc i32 %6 to i8
  %14 = icmp ne i32 %10, 0
  %15 = and i32 %8, 224
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = icmp eq i8 %13, 0
  %19 = select i1 %18, i1 %16, i1 false
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %4, i32 0, i32 1
  %23 = tail call ptr @dma_get_any_slave_channel(ptr noundef %22) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %23, i32 0, i32 6
  store i32 %10, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %23, i32 0, i32 5
  store i8 %9, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %21, %12, %2
  %29 = phi ptr [ %23, %25 ], [ null, %2 ], [ null, %12 ], [ null, %21 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__execute_vchan_pending(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 8
  %9 = select i1 %7, i32 8, i32 16
  %10 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %0, i32 0, i32 7
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %12 = tail call i32 @_find_next_zero_bit_le(ptr noundef %0, i32 noundef %9, i32 noundef %8) #9
  %13 = icmp slt i32 %12, %9
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #9
  br label %118

15:                                               ; preds = %2
  %16 = getelementptr %struct.sun4i_dma_pchan, ptr %4, i32 %12
  %17 = getelementptr %struct.sun4i_dma_pchan, ptr %4, i32 %12, i32 1
  store ptr %1, ptr %17, align 4
  tail call void @_set_bit(i32 noundef %12, ptr noundef %0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #9
  %18 = icmp eq ptr %16, null
  br i1 %18, label %118, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  br label %25

25:                                               ; preds = %55, %23
  %26 = load volatile ptr, ptr %24, align 4
  %27 = icmp eq ptr %26, %24
  %28 = getelementptr i8, ptr %26, i32 -68
  %29 = icmp eq ptr %28, null
  %30 = or i1 %27, %29
  br i1 %30, label %111, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 8
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = getelementptr %struct.list_head, ptr %26, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %40 = load i32, ptr %28, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43, !prof !17

42:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

43:                                               ; preds = %35
  %44 = getelementptr i8, ptr %26, i32 -56
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 3
  store i32 %40, ptr %46, align 4
  store i32 0, ptr %28, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %26, ptr %48, align 4
  store ptr %47, ptr %26, align 4
  store ptr %49, ptr %36, align 4
  store volatile ptr %26, ptr %49, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1, i32 1
  %51 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %50) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %54) #9
  br label %55

55:                                               ; preds = %53, %43, %31
  %56 = load volatile ptr, ptr %32, align 4
  %57 = icmp eq ptr %56, %32
  br i1 %57, label %25, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %56, i32 -20
  store ptr %59, ptr %20, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %118, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %1, i32 0, i32 4
  store ptr %28, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sun4i_dma_vchan, ptr %1, i32 0, i32 2
  store ptr %16, ptr %63, align 4
  %64 = getelementptr i8, ptr %26, i32 24
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %3, align 4
  %67 = ptrtoint ptr %16 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %67, %68
  %70 = sdiv exact i32 %69, 12
  %71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %72 = getelementptr inbounds %struct.sun4i_dma_dev, ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !12
  %75 = icmp eq i32 %65, 0
  %76 = shl nsw i32 %70, 1
  %77 = shl nuw i32 1, %76
  %78 = or i32 %77, %74
  %79 = xor i32 %77, -1
  %80 = and i32 %74, %79
  %81 = select i1 %75, i32 %80, i32 %78
  %82 = or i32 %76, 1
  %83 = shl nuw i32 1, %82
  %84 = or i32 %81, %83
  %85 = load ptr, ptr %72, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %71) #9
  %86 = getelementptr %struct.sun4i_dma_pchan, ptr %4, i32 %12, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr i8, ptr %56, i32 -12
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #9
  %93 = getelementptr i8, ptr %56, i32 -8
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr i8, ptr %95, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #9
  %97 = getelementptr i8, ptr %56, i32 -4
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i8, ptr %99, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #9
  br i1 %88, label %108, label %101

101:                                              ; preds = %61
  %102 = getelementptr i8, ptr %56, i32 -16
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %16, align 4
  %105 = getelementptr i8, ptr %104, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !9
  %106 = load i32, ptr %59, align 4
  %107 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %106) #9, !srcloc !9
  br label %118

108:                                              ; preds = %61
  %109 = load i32, ptr %59, align 4
  %110 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %109) #9, !srcloc !9
  br label %118

111:                                              ; preds = %25, %19
  %112 = load ptr, ptr %3, align 4
  %113 = ptrtoint ptr %16 to i32
  %114 = ptrtoint ptr %112 to i32
  %115 = sub i32 %113, %114
  %116 = sdiv exact i32 %115, 12
  %117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  store ptr null, ptr %17, align 4
  tail call void @_clear_bit(i32 noundef %116, ptr noundef %0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %117) #9
  br label %118

118:                                              ; preds = %111, %108, %101, %58, %15, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @generate_ndma_promise(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #2 {
  switch i32 %4, label %42 [
    i32 1, label %6
    i32 2, label %24
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %8, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  store i32 %12, ptr %20, align 4
  br label %42

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 %26, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 %30, ptr %38, align 4
  br label %42

42:                                               ; preds = %41, %37, %23, %19, %5
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 2304, i32 noundef 28) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %79, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %44, i32 0, i32 2
  store i32 %0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %44, i32 0, i32 3
  store i32 %1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sun4i_dma_promise, ptr %44, i32 0, i32 4
  store i32 %2, ptr %49, align 8
  store i32 -2147450880, ptr %44, align 8
  %50 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 8
  br i1 %52, label %78, label %53

53:                                               ; preds = %46
  %54 = shl nuw nsw i32 %51, 5
  %55 = and i32 %54, 2147450752
  %56 = or i32 %55, -2147450880
  store i32 %56, ptr %44, align 8
  %57 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, 8
  br i1 %59, label %78, label %60

60:                                               ; preds = %53
  %61 = shl nuw nsw i32 %58, 21
  %62 = and i32 %61, 2139095040
  %63 = or i32 %62, %56
  store i32 %63, ptr %44, align 8
  %64 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 4
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = shl nuw nsw i32 %65, 8
  %69 = and i32 %68, 2147450368
  %70 = or i32 %69, %63
  store i32 %70, ptr %44, align 8
  %71 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = shl nuw nsw i32 %72, 24
  %76 = and i32 %75, 2113929216
  %77 = or i32 %76, %70
  store i32 %77, ptr %44, align 8
  br label %79

78:                                               ; preds = %67, %60, %53, %46
  tail call void @kfree(ptr noundef nonnull %44) #9
  br label %79

79:                                               ; preds = %78, %74, %42, %28, %24, %10, %6
  %80 = phi ptr [ null, %78 ], [ %44, %74 ], [ null, %42 ], [ null, %6 ], [ null, %10 ], [ null, %24 ], [ null, %28 ]
  ret ptr %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{i64 2153147962}
!9 = !{i64 5069098}
!10 = !{i64 2153148281}
!11 = !{i64 2153047632}
!12 = !{i64 5069516}
!13 = !{i64 2148913551}
!14 = !{i64 2148909375}
!15 = !{i64 2148909450, i64 2148909477, i64 2148909524, i64 2148909546, i64 2148909574, i64 2148909594}
!16 = !{i64 2148936554}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153046696, i64 2153047183, i64 2153046733, i64 2153046789, i64 2153046823, i64 2153046847, i64 2153046888, i64 2153046909, i64 2153046937, i64 2153046971}
