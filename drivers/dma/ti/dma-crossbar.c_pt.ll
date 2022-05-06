; ModuleID = '/llk/IR/drivers/dma/ti/dma-crossbar.c_pt.bc'
source_filename = "../drivers/dma/ti/dma-crossbar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
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
%struct.ti_dra7_xbar_data = type { ptr, %struct.dma_router, %struct.mutex, ptr, i16, i32, i32, i32 }
%struct.dma_router = type { ptr, ptr }
%struct.ti_am335x_xbar_data = type { ptr, %struct.dma_router, i32, i32 }
%struct.ti_dra7_xbar_map = type { i16, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.ti_am335x_xbar_map = type { i16, i8 }

@__initcall__kmod_dma_crossbar__222_472_omap_dmaxbar_init3 = internal global ptr @omap_dmaxbar_init, section ".initcall3.init", align 4
@ti_dma_xbar_driver = internal global %struct.platform_driver { ptr @ti_dma_xbar_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_dma_xbar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"ti-dma-crossbar\00", align 1
@ti_dma_xbar_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-dma-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_xbar_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-edma-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_xbar_type, i64 4) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported crossbar\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"dma-masters\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't get DMA master node\0A\00", align 1
@ti_dra7_master_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_dma_offset, i64 4) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_dma_offset }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_dma_offset }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DMA master is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Missing XBAR output information, using %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Missing XBAR input information, using %u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ti,dma-safe-map\00", align 1
@__const.ti_dra7_xbar_probe.pname = private unnamed_addr constant [31 x i8] c"ti,reserved-dma-request-ranges\00", align 1
@ti_dra7_xbar_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"&xbar->mutex\00", align 1
@ti_dma_offset = internal constant [2 x i32] [i32 0, i32 1], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Invalid XBAR request number: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Can't get DMA master\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Run out of free DMA requests\0A\00", align 1
@ti_am335x_master_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid XBAR event number: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Invalid DMA request line number: %d\0A\00", align 1
@ti_xbar_type = internal constant [2 x i32] [i32 0, i32 1], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_dma_crossbar__222_472_omap_dmaxbar_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dmaxbar_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_dma_xbar_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_dma_xbar_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @ti_dma_xbar_match, ptr noundef %9) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %221, label %12, !prof !8

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %220 [
    i32 0, label %16
    i32 1, label %163
  ]

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %161, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 52, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %161, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %23 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %17, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %24 = icmp ne i32 %23, 0
  %25 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %26 = icmp eq ptr %25, null
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #10
  br label %161

29:                                               ; preds = %22
  %30 = call ptr @of_match_node(ptr noundef nonnull @ti_dra7_master_match, ptr noundef nonnull %25) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #10
  call void @of_node_put(ptr noundef nonnull %25) #9
  br label %161

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 6
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %25, ptr noundef nonnull @.str.5, ptr noundef %34, i32 noundef 1, i32 noundef 0) #9
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 127) #10
  store i32 127, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %33
  call void @of_node_put(ptr noundef nonnull %25) #9
  %39 = load i32, ptr %34, align 4
  %40 = add i32 %39, 31
  %41 = lshr i32 %40, 3
  %42 = and i32 %41, 536870908
  %43 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %42, i32 noundef 3520) #9
  %44 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %161, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 5
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, ptr noundef %47, i32 noundef 1, i32 noundef 0) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 256) #10
  store i32 256, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, ptr %4, align 4
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 4
  store i16 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = call ptr @of_find_property(ptr noundef nonnull %17, ptr noundef nonnull @__const.ti_dra7_xbar_probe.pname, ptr noundef nonnull %5) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %95, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @__const.ti_dra7_xbar_probe.pname, i32 31, i1 false) #9
  %62 = load i32, ptr %5, align 4
  %63 = lshr i32 %62, 3
  %64 = icmp ult i32 %62, 8
  br i1 %64, label %92, label %65

65:                                               ; preds = %61
  %66 = and i32 %62, -8
  %67 = call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %65
  %70 = shl nuw nsw i32 %63, 1
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull %6, ptr noundef nonnull %67, i32 noundef %70, i32 noundef 0) #9
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @llvm.umax.i32(i32 %63, i32 1) #9
  br label %76

75:                                               ; preds = %69
  call void @kfree(ptr noundef nonnull %67) #9
  br label %92

76:                                               ; preds = %89, %73
  %77 = phi i32 [ %90, %89 ], [ 0, %73 ]
  %78 = getelementptr [2 x i32], ptr %67, i32 %77
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr [2 x i32], ptr %67, i32 %77, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %44, align 4
  %83 = icmp sgt i32 %81, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %84, %76
  %85 = phi i32 [ %86, %84 ], [ %81, %76 ]
  %86 = add nsw i32 %85, -1
  %87 = add i32 %86, %79
  call void @_set_bit(i32 noundef %87, ptr noundef %82) #9
  %88 = icmp ugt i32 %85, 1
  br i1 %88, label %84, label %89

89:                                               ; preds = %84, %76
  %90 = add nuw nsw i32 %77, 1
  %91 = icmp eq i32 %90, %74
  br i1 %91, label %94, label %76

92:                                               ; preds = %75, %65, %61
  %93 = phi i32 [ -12, %65 ], [ -22, %61 ], [ %71, %75 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %6) #9
  br label %161

94:                                               ; preds = %89
  call void @kfree(ptr noundef nonnull %67) #9
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %6) #9
  br label %95

95:                                               ; preds = %94, %58
  %96 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = ptrtoint ptr %96 to i32
  br label %161

100:                                              ; preds = %95
  store ptr %96, ptr %20, align 4
  %101 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 1
  store ptr %7, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 1, i32 1
  store ptr @ti_dra7_xbar_free, ptr %102, align 4
  %103 = getelementptr inbounds %struct.of_device_id, ptr %30, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 7
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 2
  call void @__mutex_init(ptr noundef %107, ptr noundef nonnull @.str.10, ptr noundef nonnull @ti_dra7_xbar_probe.__key) #9
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %108, align 8
  %109 = load i32, ptr %34, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %20, i32 0, i32 4
  br label %113

113:                                              ; preds = %130, %111
  %114 = phi i32 [ %109, %111 ], [ %131, %130 ]
  %115 = phi i32 [ 0, %111 ], [ %132, %130 ]
  %116 = load ptr, ptr %44, align 4
  %117 = lshr i32 %115, 5
  %118 = getelementptr i32, ptr %116, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %115, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %113
  %125 = load ptr, ptr %20, align 4
  %126 = load i16, ptr %112, align 4
  %127 = shl i32 %115, 1
  %128 = getelementptr i8, ptr %125, i32 %127
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %128, i16 %126) #9, !srcloc !10
  %129 = load i32, ptr %34, align 4
  br label %130

130:                                              ; preds = %124, %113
  %131 = phi i32 [ %114, %113 ], [ %129, %124 ]
  %132 = add nuw i32 %115, 1
  %133 = icmp ult i32 %132, %131
  br i1 %133, label %113, label %134

134:                                              ; preds = %130, %100
  %135 = call i32 @of_dma_router_register(ptr noundef nonnull %17, ptr noundef nonnull @ti_dra7_xbar_route_allocate, ptr noundef %101) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %34, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %161, label %140

140:                                              ; preds = %157, %137
  %141 = phi i32 [ %158, %157 ], [ %138, %137 ]
  %142 = phi i32 [ %159, %157 ], [ 0, %137 ]
  %143 = load ptr, ptr %44, align 4
  %144 = lshr i32 %142, 5
  %145 = getelementptr i32, ptr %143, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %142, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %146, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load ptr, ptr %20, align 4
  %153 = trunc i32 %142 to i16
  %154 = shl i32 %142, 1
  %155 = getelementptr i8, ptr %152, i32 %154
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %155, i16 %153) #9, !srcloc !10
  %156 = load i32, ptr %34, align 4
  br label %157

157:                                              ; preds = %151, %140
  %158 = phi i32 [ %141, %140 ], [ %156, %151 ]
  %159 = add nuw i32 %142, 1
  %160 = icmp ult i32 %159, %158
  br i1 %160, label %140, label %161

161:                                              ; preds = %157, %137, %134, %98, %92, %38, %32, %28, %19, %16
  %162 = phi i32 [ %99, %98 ], [ -22, %32 ], [ -19, %28 ], [ -19, %16 ], [ -12, %19 ], [ -12, %38 ], [ 0, %134 ], [ %93, %92 ], [ %135, %137 ], [ %135, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %221

163:                                              ; preds = %12
  %164 = load ptr, ptr %8, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %221, label %166

166:                                              ; preds = %163
  %167 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 20, i32 noundef 3520) #9
  %168 = icmp eq ptr %167, null
  br i1 %168, label %221, label %169

169:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !9
  %170 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %164, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %171 = icmp ne i32 %170, 0
  %172 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %173 = icmp eq ptr %172, null
  %174 = select i1 %171, i1 true, i1 %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #10
  br label %221

176:                                              ; preds = %169
  %177 = call ptr @of_match_node(ptr noundef nonnull @ti_am335x_master_match, ptr noundef nonnull %172) #9
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #10
  call void @of_node_put(ptr noundef nonnull %172) #9
  br label %221

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %167, i32 0, i32 3
  %182 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %172, ptr noundef nonnull @.str.5, ptr noundef %181, i32 noundef 1, i32 noundef 0) #9
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 64) #10
  store i32 64, ptr %181, align 4
  br label %185

185:                                              ; preds = %184, %180
  call void @of_node_put(ptr noundef nonnull %172) #9
  %186 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %167, i32 0, i32 2
  %187 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %164, ptr noundef nonnull @.str.5, ptr noundef %186, i32 noundef 1, i32 noundef 0) #9
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 64) #10
  store i32 64, ptr %186, align 4
  br label %190

190:                                              ; preds = %189, %185
  %191 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %192 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = ptrtoint ptr %191 to i32
  br label %221

195:                                              ; preds = %190
  store ptr %191, ptr %167, align 4
  %196 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %167, i32 0, i32 1
  store ptr %7, ptr %196, align 4
  %197 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %167, i32 0, i32 1, i32 1
  store ptr @ti_am335x_xbar_free, ptr %197, align 4
  %198 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %167, ptr %198, align 8
  %199 = load i32, ptr %181, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %218, label %201

201:                                              ; preds = %216, %195
  %202 = phi ptr [ %217, %216 ], [ %191, %195 ]
  %203 = phi i32 [ %213, %216 ], [ 0, %195 ]
  %204 = and i32 %203, -4
  %205 = icmp eq i32 %204, 60
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = and i32 %203, 3
  %208 = xor i32 %207, 63
  %209 = getelementptr i8, ptr %202, i32 %208
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %209, i8 0) #9, !srcloc !11
  br label %212

210:                                              ; preds = %201
  %211 = getelementptr i8, ptr %202, i32 %203
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %211, i8 0) #9, !srcloc !11
  br label %212

212:                                              ; preds = %210, %206
  %213 = add nuw i32 %203, 1
  %214 = load i32, ptr %181, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load ptr, ptr %167, align 4
  br label %201

218:                                              ; preds = %212, %195
  %219 = call i32 @of_dma_router_register(ptr noundef nonnull %164, ptr noundef nonnull @ti_am335x_xbar_route_allocate, ptr noundef %196) #9
  br label %221

220:                                              ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #10
  br label %221

221:                                              ; preds = %220, %218, %193, %179, %175, %166, %163, %161, %1
  %222 = phi i32 [ -22, %1 ], [ -19, %220 ], [ %162, %161 ], [ %194, %193 ], [ %219, %218 ], [ -22, %179 ], [ -19, %175 ], [ -19, %163 ], [ -12, %166 ]
  ret i32 %222
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_dra7_xbar_free(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ti_dra7_xbar_map, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %4, i32 0, i32 4
  %9 = load i16, ptr %8, align 4
  %10 = shl i32 %7, 1
  %11 = getelementptr i8, ptr %5, i32 %10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #9, !srcloc !10
  %12 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %12) #9
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef %15) #9
  tail call void @mutex_unlock(ptr noundef %12) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_router_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ti_dra7_xbar_route_allocate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_find_device_by_node(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %10) #10
  br label %53

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %18 = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %3, align 4
  %21 = select i1 %19, ptr %20, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  store ptr %21, ptr %0, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.12) #10
  br label %53

25:                                               ; preds = %16
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 8) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 4
  call void @of_node_put(ptr noundef %30) #9
  br label %53

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %8, i32 0, i32 2
  call void @mutex_lock(ptr noundef %32) #9
  %33 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %8, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %8, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @_find_first_zero_bit_le(ptr noundef %34, i32 noundef %36) #9
  %38 = getelementptr inbounds %struct.ti_dra7_xbar_map, ptr %27, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %35, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  call void @mutex_unlock(ptr noundef %32) #9
  %42 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13) #10
  call void @kfree(ptr noundef nonnull %27) #9
  br label %53

43:                                               ; preds = %31
  %44 = load ptr, ptr %33, align 4
  call void @_set_bit(i32 noundef %37, ptr noundef %44) #9
  call void @mutex_unlock(ptr noundef %32) #9
  %45 = load i32, ptr %9, align 4
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %27, align 8
  %47 = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %8, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %37
  store i32 %49, ptr %9, align 4
  %50 = load ptr, ptr %8, align 4
  %51 = shl i32 %37, 1
  %52 = getelementptr i8, ptr %50, i32 %51
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %46) #9, !srcloc !10
  br label %53

53:                                               ; preds = %43, %41, %29, %23, %14
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -12 to ptr), %41 ], [ %27, %43 ], [ inttoptr (i32 -12 to ptr), %29 ], [ inttoptr (i32 -22 to ptr), %23 ]
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ti_am335x_xbar_free(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %1, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 65532
  %9 = icmp eq i32 %8, 60
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = and i32 %7, 3
  %12 = xor i32 %11, 63
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 0) #9, !srcloc !11
  br label %16

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 0) #9, !srcloc !11
  br label %16

16:                                               ; preds = %14, %10
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ti_am335x_xbar_route_allocate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_find_device_by_node(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %59

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %14 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %8, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef %15) #10
  br label %59

21:                                               ; preds = %12
  %22 = load i32, ptr %13, align 4
  %23 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %8, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %22) #10
  br label %59

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %30 = call i32 @__of_parse_phandle_with_args(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %3, align 4
  %33 = select i1 %31, ptr %32, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  store ptr %33, ptr %0, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12) #10
  br label %59

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 4) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 4
  call void @of_node_put(ptr noundef %42) #9
  br label %59

43:                                               ; preds = %37
  %44 = load i32, ptr %13, align 4
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr %39, align 8
  %46 = load i32, ptr %14, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.ti_am335x_xbar_map, ptr %39, i32 0, i32 1
  store i8 %47, ptr %48, align 2
  store i32 0, ptr %14, align 4
  store i32 2, ptr %9, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = and i32 %44, 65532
  %51 = icmp eq i32 %50, 60
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = and i32 %44, 3
  %54 = xor i32 %53, 63
  %55 = getelementptr i8, ptr %49, i32 %54
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %47) #9, !srcloc !11
  br label %59

56:                                               ; preds = %43
  %57 = and i32 %44, 65535
  %58 = getelementptr i8, ptr %49, i32 %57
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %47) #9, !srcloc !11
  br label %59

59:                                               ; preds = %56, %52, %41, %35, %26, %19, %2
  %60 = phi ptr [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %41 ], [ inttoptr (i32 -22 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %2 ], [ %39, %52 ], [ %39, %56 ]
  ret ptr %60
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2605665}
!11 = !{i64 2606088}
