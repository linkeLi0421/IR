; ModuleID = '/llk/IR/drivers/dma/st_fdma.c_pt.bc'
source_filename = "../drivers/dma/st_fdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st_fdma_driverdata = type { i32, [10 x i8] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.st_fdma_dev = type { ptr, ptr, %struct.dma_device, ptr, i32, ptr, %struct.spinlock, i32, i32, [30 x i8] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.st_fdma_chan = type { ptr, ptr, %struct.dma_slave_config, %struct.st_fdma_cfg, i32, %struct.virt_dma_chan, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.st_fdma_cfg = type { ptr, i32, i32, i32, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.st_slim_rproc = type { ptr, [2 x %struct.st_slim_mem], ptr, ptr, [4 x ptr] }
%struct.st_slim_mem = type { ptr, i32, i32 }
%struct.st_fdma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, [0 x %struct.st_fdma_sw_node] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.st_fdma_sw_node = type { i32, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.st_fdma_hw_node = type { i32, i32, i32, i32, i32, %union.anon.69 }
%union.anon.69 = type { %struct.st_fdma_generic_node }
%struct.st_fdma_generic_node = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@st_fdma_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_11 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_12 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-fdma-mpe31-13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fdma_mpe31_stih407_13 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license227 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [50 x i8] c"description=STMicroelectronics FDMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [44 x i8] c"author=Ludovic.barre <Ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [48 x i8] c"author=Peter Griffin <peter.griffin@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [23 x i8] c"alias=platform:st-fdma\00", section ".modinfo", align 1
@fdma_mpe31_stih407_11 = internal constant %struct.st_fdma_driverdata { i32 0, [10 x i8] c"STiH407\00\00\00" }, align 4
@fdma_mpe31_stih407_12 = internal constant %struct.st_fdma_driverdata { i32 1, [10 x i8] c"STiH407\00\00\00" }, align 4
@fdma_mpe31_stih407_13 = internal constant %struct.st_fdma_driverdata { i32 2, [10 x i8] c"STiH407\00\00\00" }, align 4
@st_fdma_platform_driver = internal global %struct.platform_driver { ptr @st_fdma_probe, ptr @st_fdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_fdma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"st-fdma\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No device match found\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to find platform data\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to request irq (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"slim_rproc_alloc failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to register DMA device (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to register controller (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"ST FDMA engine driver, irq:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fdma_%s_%d.elf\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"chan:%d, error:%ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"unable to allocate desc pool\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"bad width or direction\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"len is not multiple of period\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"no memory for desc\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"bad direction?\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"No req lines available\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Invalid or used req line\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

@__mod_of__st_fdma_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @st_fdma_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_fdma_platform_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_fdma_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @st_fdma_match, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %105

12:                                               ; preds = %7
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 316, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %105, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 9
  %17 = getelementptr inbounds %struct.st_fdma_driverdata, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %9, align 4
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef 30, ptr noundef nonnull @.str.8, ptr noundef %17, i32 noundef %18) #11
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 8
  %22 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef %21, i32 noundef 1, i32 noundef 0) #11
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #12
  br label %105

25:                                               ; preds = %15
  %26 = load i32, ptr %21, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 232) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %29, label %31, !prof !8

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 5
  store ptr null, ptr %30, align 4
  br label %105

31:                                               ; preds = %25
  %32 = extractvalue { i32, i1 } %27, 0
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %32, i32 noundef 3520) #11
  %34 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %105, label %36

36:                                               ; preds = %31
  store ptr %2, ptr %13, align 4
  %37 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 1
  store ptr %9, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %38, align 8
  %39 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %40 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = icmp slt i32 %39, 0
  br i1 %41, label %105, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %39, ptr noundef nonnull @st_fdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %49, ptr noundef nonnull %13) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %50) #12
  br label %105

53:                                               ; preds = %48
  %54 = tail call ptr @st_slim_rproc_alloc(ptr noundef %0, ptr noundef %16) #11
  %55 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 3
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %58) #12
  br label %105

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2
  %61 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 3
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 3, i32 1
  store ptr %61, ptr %62, align 4
  %63 = load i32, ptr %21, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %65, %59
  %66 = phi i32 [ %71, %65 ], [ 0, %59 ]
  %67 = load ptr, ptr %34, align 4
  %68 = getelementptr %struct.st_fdma_chan, ptr %67, i32 %66
  store ptr %13, ptr %68, align 4
  %69 = getelementptr %struct.st_fdma_chan, ptr %67, i32 %66, i32 5
  %70 = getelementptr %struct.st_fdma_chan, ptr %67, i32 %66, i32 5, i32 2
  store ptr @st_fdma_free_desc, ptr %70, align 4
  tail call void @vchan_init(ptr noundef %69, ptr noundef %60) #11
  %71 = add nuw i32 %66, 1
  %72 = load i32, ptr %21, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %65, label %74

74:                                               ; preds = %65, %59
  %75 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 7
  store i32 -2147483647, ptr %75, align 4
  %76 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %76) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %76) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %76) #11
  %77 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 15
  store ptr %2, ptr %77, align 4
  %78 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 27
  store ptr @st_fdma_alloc_chan_res, ptr %78, align 4
  %79 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 29
  store ptr @st_fdma_free_chan_res, ptr %79, align 4
  %80 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 40
  store ptr @st_fdma_prep_dma_cyclic, ptr %80, align 4
  %81 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 39
  store ptr @st_fdma_prep_slave_sg, ptr %81, align 4
  %82 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 30
  store ptr @st_fdma_prep_dma_memcpy, ptr %82, align 4
  %83 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 49
  store ptr @st_fdma_tx_status, ptr %83, align 4
  %84 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 50
  store ptr @st_fdma_issue_pending, ptr %84, align 4
  %85 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 47
  store ptr @st_fdma_terminate_all, ptr %85, align 4
  %86 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 44
  store ptr @st_fdma_slave_config, ptr %86, align 4
  %87 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 45
  store ptr @st_fdma_pause, ptr %87, align 4
  %88 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 46
  store ptr @st_fdma_resume, ptr %88, align 4
  %89 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 19
  store i32 30, ptr %89, align 4
  %90 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 20
  store i32 30, ptr %90, align 4
  %91 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 21
  store i32 6, ptr %91, align 4
  %92 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 2, i32 26
  store i32 2, ptr %92, align 4
  %93 = tail call i32 @dmaenginem_async_device_register(ptr noundef %60) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %93) #12
  br label %102

96:                                               ; preds = %74
  %97 = tail call i32 @of_dma_controller_register(ptr noundef %4, ptr noundef nonnull @st_fdma_of_xlate, ptr noundef nonnull %13) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %97) #12
  br label %102

100:                                              ; preds = %96
  %101 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %101) #12
  br label %105

102:                                              ; preds = %99, %95
  %103 = phi i32 [ %93, %95 ], [ %97, %99 ]
  tail call fastcc void @st_fdma_free(ptr noundef nonnull %13)
  %104 = load ptr, ptr %55, align 4
  tail call void @st_slim_rproc_put(ptr noundef %104) #11
  br label %105

105:                                              ; preds = %102, %100, %57, %52, %36, %31, %29, %24, %12, %11
  %106 = phi i32 [ 0, %100 ], [ -19, %11 ], [ -12, %12 ], [ -12, %31 ], [ -22, %36 ], [ %22, %24 ], [ %50, %52 ], [ %58, %57 ], [ %103, %102 ], [ -12, %29 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.st_fdma_dev, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @devm_free_irq(ptr noundef %4, i32 noundef %6, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.st_fdma_dev, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @st_slim_rproc_put(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  tail call void @of_dma_controller_free(ptr noundef %10) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.st_fdma_dev, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.st_slim_rproc, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4048
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %97, label %12

12:                                               ; preds = %92, %2
  %13 = phi i32 [ %93, %92 ], [ 0, %2 ]
  %14 = phi ptr [ %95, %92 ], [ %4, %2 ]
  %15 = phi i32 [ %94, %92 ], [ %10, %2 ]
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %92, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.st_fdma_chan, ptr %14, i32 0, i32 5, i32 3
  tail call void @_raw_spin_lock(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.st_fdma_chan, ptr %14, i32 0, i32 5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.st_fdma_dev, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.st_slim_rproc, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = shl i32 %21, 2
  %28 = getelementptr i8, ptr %26, i32 512
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %31 = and i32 %15, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = and i32 %30, 28
  %35 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %34) #12
  br label %39

36:                                               ; preds = %18
  %37 = and i32 %30, 3
  switch i32 %37, label %42 [
    i32 3, label %39
    i32 2, label %38
  ]

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %36, %33
  %40 = phi i32 [ 1, %38 ], [ 3, %33 ], [ 2, %36 ]
  %41 = getelementptr inbounds %struct.st_fdma_chan, ptr %14, i32 0, i32 7
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.st_fdma_chan, ptr %14, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %89, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.st_fdma_desc, ptr %44, i32 0, i32 2
  %48 = load i8, ptr %47, align 4, !range !12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.virt_dma_desc, ptr %44, i32 0, i32 2
  %52 = getelementptr inbounds %struct.virt_dma_desc, ptr %44, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %56 = load ptr, ptr %43, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %56, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 3
  store i32 %57, ptr %63, align 4
  store i32 0, ptr %56, align 4
  %64 = getelementptr inbounds %struct.virt_dma_desc, ptr %56, i32 0, i32 2
  %65 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 7
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 7, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %64, ptr %66, align 4
  store ptr %65, ptr %64, align 4
  %68 = getelementptr inbounds %struct.virt_dma_desc, ptr %56, i32 0, i32 2, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %64, ptr %67, align 4
  %69 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 1, i32 1
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %73) #11
  br label %74

74:                                               ; preds = %72, %60
  store ptr null, ptr %43, align 4
  %75 = getelementptr inbounds %struct.st_fdma_chan, ptr %14, i32 0, i32 7
  store i32 0, ptr %75, align 4
  br label %88

76:                                               ; preds = %46
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %44, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.virt_dma_chan, ptr %78, i32 0, i32 9
  store ptr %44, ptr %79, align 4
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %78, i32 0, i32 1, i32 1
  %81 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %80) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %78, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %84) #11
  br label %85

85:                                               ; preds = %83, %76
  %86 = load ptr, ptr %43, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %74
  tail call fastcc void @st_fdma_xfer_desc(ptr noundef %14)
  br label %89

89:                                               ; preds = %88, %85, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %90 = load i16, ptr %19, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %92

92:                                               ; preds = %89, %12
  %93 = phi i32 [ 1, %89 ], [ %13, %12 ]
  %94 = lshr i32 %15, 2
  %95 = getelementptr %struct.st_fdma_chan, ptr %14, i32 1
  %96 = icmp ult i32 %15, 4
  br i1 %96, label %97, label %12

97:                                               ; preds = %92, %2
  %98 = phi i32 [ 0, %2 ], [ %93, %92 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !18
  tail call void @arm_heavy_mb() #11
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr inbounds %struct.st_slim_rproc, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 4056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %10) #11, !srcloc !19
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @st_slim_rproc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_fdma_free_desc(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.st_fdma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.st_fdma_desc, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.st_fdma_chan, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.st_fdma_desc, ptr %0, i32 0, i32 4, i32 %8
  %13 = getelementptr %struct.st_fdma_desc, ptr %0, i32 0, i32 4, i32 %8, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef %14, i32 noundef %15) #11
  %16 = add nuw i32 %8, 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_alloc_chan_res(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %13 = load ptr, ptr %2, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @dma_pool_create(ptr noundef %12, ptr noundef %14, i32 noundef 32, i32 noundef 32, i32 noundef 0) #11
  %16 = getelementptr i8, ptr %0, i32 -80
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11) #12
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ -12, %18 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_fdma_free_chan_res(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_fdma_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.st_fdma_dev, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %12, ptr noundef %13) #11
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr i8, ptr %0, i32 -28
  %16 = getelementptr i8, ptr %0, i32 92
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #11
  %18 = getelementptr i8, ptr %0, i32 140
  store ptr null, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #11
  %19 = getelementptr i8, ptr %0, i32 -80
  %20 = load ptr, ptr %19, align 4
  tail call void @dma_pool_destroy(ptr noundef %20) #11
  store ptr null, ptr %19, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %15, i8 0, i32 24, i1 false)
  tail call void @rproc_shutdown(ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %134

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -84
  %12 = add i32 %4, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 4
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #12
  br label %134

17:                                               ; preds = %10
  %18 = icmp eq ptr %11, null
  %19 = icmp eq i32 %3, 0
  %20 = or i1 %18, %19
  br i1 %20, label %134, label %21

21:                                               ; preds = %17
  switch i32 %4, label %49 [
    i32 2, label %22
    i32 1, label %26
  ]

22:                                               ; preds = %21
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -16385
  br label %30

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 -8
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 16384
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ -52, %26 ], [ -56, %22 ]
  %32 = phi i32 [ -60, %26 ], [ -64, %22 ]
  %33 = phi i32 [ -68, %26 ], [ -72, %22 ]
  %34 = phi i32 [ %29, %26 ], [ %25, %22 ]
  %35 = getelementptr i8, ptr %0, i32 %31
  %36 = getelementptr i8, ptr %0, i32 %32
  %37 = getelementptr i8, ptr %0, i32 %33
  %38 = load i32, ptr %35, align 4
  %39 = load i32, ptr %36, align 4
  %40 = load i32, ptr %37, align 4
  %41 = getelementptr i8, ptr %0, i32 -8
  %42 = and i32 %34, -241
  store i32 %42, ptr %41, align 4
  switch i32 %39, label %49 [
    i32 1, label %52
    i32 2, label %43
    i32 4, label %45
    i32 8, label %47
  ]

43:                                               ; preds = %30
  %44 = or i32 %42, 16
  br label %52

45:                                               ; preds = %30
  %46 = or i32 %42, 32
  br label %52

47:                                               ; preds = %30
  %48 = or i32 %42, 48
  br label %52

49:                                               ; preds = %30, %21
  %50 = load ptr, ptr %11, align 4
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.12) #12
  br label %134

52:                                               ; preds = %47, %45, %43, %30
  %53 = phi i32 [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %30 ]
  %54 = and i32 %53, 16777215
  %55 = shl i32 %38, 24
  %56 = add i32 %55, -16777216
  %57 = or i32 %54, %56
  store i32 %57, ptr %41, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %58 = load i32, ptr %41, align 4
  %59 = load ptr, ptr %11, align 4
  %60 = getelementptr inbounds %struct.st_fdma_dev, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.st_slim_rproc, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %0, i32 -4
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 2
  %67 = getelementptr i8, ptr %63, i32 %66
  %68 = getelementptr i8, ptr %67, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %58) #11, !srcloc !19
  %69 = getelementptr i8, ptr %0, i32 -20
  store i32 %40, ptr %69, align 4
  %70 = getelementptr i8, ptr %0, i32 -16
  store i32 %4, ptr %70, align 4
  %71 = udiv i32 %2, %3
  %72 = mul i32 %71, %3
  %73 = sub i32 %2, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %52
  %76 = load ptr, ptr %11, align 4
  %77 = load ptr, ptr %76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.13) #12
  br label %134

78:                                               ; preds = %52
  %79 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef nonnull %11, i32 noundef %71)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load ptr, ptr %11, align 4
  %83 = load ptr, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.14) #12
  br label %134

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.st_fdma_desc, ptr %79, i32 0, i32 2
  store i8 1, ptr %85, align 4
  %86 = icmp sgt i32 %71, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %84
  %88 = icmp eq i32 %4, 1
  br label %89

89:                                               ; preds = %111, %87
  %90 = phi i32 [ 0, %87 ], [ %93, %111 ]
  %91 = getelementptr %struct.st_fdma_desc, ptr %79, i32 0, i32 4, i32 %90, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = add nuw nsw i32 %90, 1
  %94 = icmp eq i32 %93, %71
  %95 = select i1 %94, i32 0, i32 %93
  %96 = getelementptr %struct.st_fdma_desc, ptr %79, i32 0, i32 4, i32 %95
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %92, align 32
  %98 = load i32, ptr %64, align 4
  %99 = and i32 %98, 31
  %100 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 1
  br i1 %88, label %101, label %106

101:                                              ; preds = %89
  %102 = or i32 %99, -2147483456
  store i32 %102, ptr %100, align 4
  %103 = load i32, ptr %69, align 4
  %104 = mul i32 %90, %3
  %105 = add i32 %104, %1
  br label %111

106:                                              ; preds = %89
  %107 = or i32 %99, -2147483360
  store i32 %107, ptr %100, align 4
  %108 = load i32, ptr %69, align 4
  %109 = mul i32 %90, %3
  %110 = add i32 %109, %1
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i32 [ %103, %101 ], [ %110, %106 ]
  %113 = phi i32 [ %105, %101 ], [ %108, %106 ]
  %114 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 4
  store i32 %112, ptr %114, align 16
  %115 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 3
  store i32 %113, ptr %117, align 4
  %118 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 2
  store i32 %3, ptr %118, align 8
  %119 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %92, i32 0, i32 5
  store i32 %3, ptr %119, align 4
  %120 = icmp eq i32 %93, %71
  br i1 %120, label %121, label %89

121:                                              ; preds = %111, %84
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %79, ptr noundef nonnull %0) #11
  %122 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %79, i32 0, i32 1
  store i32 %5, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %79, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %79, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %124, align 4
  %125 = getelementptr inbounds %struct.virt_dma_desc, ptr %79, i32 0, i32 1
  store i32 0, ptr %125, align 4
  %126 = getelementptr inbounds %struct.virt_dma_desc, ptr %79, i32 0, i32 1, i32 1
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #11
  %129 = getelementptr inbounds %struct.virt_dma_desc, ptr %79, i32 0, i32 2
  %130 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %131 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %132 = load ptr, ptr %131, align 4
  store ptr %129, ptr %131, align 4
  store ptr %130, ptr %129, align 4
  %133 = getelementptr inbounds %struct.virt_dma_desc, ptr %79, i32 0, i32 2, i32 1
  store ptr %132, ptr %133, align 4
  store volatile ptr %129, ptr %132, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %128) #11
  br label %134

134:                                              ; preds = %121, %81, %75, %49, %17, %14, %6
  %135 = phi ptr [ null, %49 ], [ null, %75 ], [ %79, %121 ], [ null, %81 ], [ null, %17 ], [ null, %14 ], [ null, %6 ]
  ret ptr %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %87

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -84
  %12 = add i32 %3, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %11, align 4
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15) #12
  br label %87

17:                                               ; preds = %10
  %18 = icmp eq ptr %11, null
  %19 = icmp eq ptr %1, null
  %20 = or i1 %18, %19
  br i1 %20, label %87, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef nonnull %11, i32 noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 4
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.14) #12
  br label %87

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.st_fdma_desc, ptr %22, i32 0, i32 2
  store i8 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 -4
  %30 = icmp eq i32 %3, 1
  %31 = getelementptr i8, ptr %0, i32 -20
  br label %32

32:                                               ; preds = %63, %27
  %33 = phi i32 [ 0, %27 ], [ %37, %63 ]
  %34 = phi ptr [ %1, %27 ], [ %69, %63 ]
  %35 = getelementptr %struct.st_fdma_desc, ptr %22, i32 0, i32 4, i32 %33, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = add nuw i32 %33, 1
  %38 = icmp eq i32 %37, %2
  %39 = select i1 %38, i32 0, i32 %37
  %40 = getelementptr %struct.st_fdma_desc, ptr %22, i32 0, i32 4, i32 %39
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %36, align 32
  %42 = load i32, ptr %29, align 4
  %43 = and i32 %42, 31
  %44 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 1
  br i1 %30, label %45, label %54

45:                                               ; preds = %32
  %46 = or i32 %43, 192
  store i32 %46, ptr %44, align 4
  %47 = load i32, ptr %31, align 4
  %48 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 4
  store i32 %47, ptr %48, align 16
  %49 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  br label %63

54:                                               ; preds = %32
  %55 = or i32 %43, 288
  store i32 %55, ptr %44, align 4
  %56 = load i32, ptr %31, align 4
  %57 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 3
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 4
  store i32 %61, ptr %62, align 16
  br label %63

63:                                               ; preds = %54, %45
  %64 = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 2
  store i32 %65, ptr %66, align 8
  %67 = load i32, ptr %64, align 4
  %68 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = tail call ptr @sg_next(ptr noundef %34) #11
  %70 = icmp eq i32 %37, %2
  br i1 %70, label %71, label %32

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %36, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, -2147483648
  store i32 %74, ptr %72, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %22, ptr noundef nonnull %0) #11
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 1
  store i32 %4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %77, align 4
  %78 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 1
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 1, i32 1
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %80) #11
  %82 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2
  %83 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %85 = load ptr, ptr %84, align 4
  store ptr %82, ptr %84, align 4
  store ptr %83, ptr %82, align 4
  %86 = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %82, ptr %85, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %81) #11
  br label %87

87:                                               ; preds = %71, %24, %17, %14, %6
  %88 = phi ptr [ %22, %71 ], [ null, %24 ], [ null, %17 ], [ null, %14 ], [ null, %6 ]
  ret ptr %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_fdma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %0, i32 -84
  %9 = tail call fastcc ptr @st_fdma_alloc_desc(ptr noundef %8, i32 noundef 1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14) #12
  br label %36

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.st_fdma_desc, ptr %9, i32 1, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store i32 0, ptr %16, align 32
  %17 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 1
  store i32 -2147483328, ptr %17, align 4
  %18 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 2
  store i32 %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 3
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 4
  store i32 %1, ptr %20, align 16
  %21 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 5
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %16, i32 0, i32 5, i32 0, i32 2
  store i32 0, ptr %23, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %9, ptr noundef %0) #11
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 1
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %26, align 4
  %27 = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 1, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #11
  %31 = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 2
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %33 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %31, ptr %33, align 4
  store ptr %32, ptr %31, align 4
  %35 = getelementptr inbounds %struct.virt_dma_desc, ptr %9, i32 0, i32 2, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %31, ptr %34, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #11
  br label %36

36:                                               ; preds = %14, %11, %5
  %37 = phi ptr [ %9, %14 ], [ null, %11 ], [ null, %5 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  store i32 %8, ptr %2, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = icmp sgt i32 %8, %6
  %16 = icmp sge i32 %8, %1
  %17 = icmp slt i32 %6, %1
  br i1 %15, label %22, label %18

18:                                               ; preds = %14
  %19 = or i1 %17, %16
  %20 = or i1 %19, %9
  %21 = xor i1 %19, true
  br i1 %20, label %117, label %26

22:                                               ; preds = %14
  %23 = and i1 %17, %16
  %24 = or i1 %23, %9
  %25 = xor i1 %23, true
  br i1 %24, label %117, label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr i8, ptr %0, i32 92
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #11
  %29 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #11
  %30 = getelementptr i8, ptr %0, i32 140
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 4
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.st_fdma_dev, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.st_slim_rproc, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 2
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = getelementptr i8, ptr %45, i32 512
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %48 = and i32 %47, -32
  %49 = load ptr, ptr %30, align 4
  %50 = getelementptr inbounds %struct.st_fdma_desc, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %114

54:                                               ; preds = %72, %36
  %55 = phi i32 [ %78, %72 ], [ %52, %36 ]
  %56 = phi i32 [ %77, %72 ], [ 0, %36 ]
  %57 = getelementptr %struct.st_fdma_desc, ptr %31, i32 0, i32 4, i32 %55
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.st_fdma_dev, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.st_slim_rproc, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %42, align 4
  %67 = shl i32 %66, 7
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = getelementptr i8, ptr %68, i32 2056
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %71 = add i32 %70, %56
  br label %114

72:                                               ; preds = %54
  %73 = getelementptr %struct.st_fdma_desc, ptr %31, i32 0, i32 4, i32 %55, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, %56
  %78 = add i32 %55, -1
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %54, label %114

80:                                               ; preds = %33, %26
  %81 = icmp eq ptr %29, null
  br i1 %81, label %114, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.st_fdma_desc, ptr %31, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %114

87:                                               ; preds = %106, %82
  %88 = phi i32 [ %112, %106 ], [ %85, %82 ]
  %89 = phi i32 [ %111, %106 ], [ 0, %82 ]
  %90 = getelementptr %struct.st_fdma_desc, ptr %31, i32 0, i32 4, i32 %88
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.st_fdma_dev, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.st_slim_rproc, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %0, i32 16
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 %100, 7
  %102 = getelementptr i8, ptr %98, i32 %101
  %103 = getelementptr i8, ptr %102, i32 2056
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %105 = add i32 %104, %89
  br label %114

106:                                              ; preds = %87
  %107 = getelementptr %struct.st_fdma_desc, ptr %31, i32 0, i32 4, i32 %88, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, %89
  %112 = add i32 %88, -1
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %87, label %114

114:                                              ; preds = %106, %93, %82, %80, %72, %60, %36
  %115 = phi i32 [ %71, %60 ], [ 0, %36 ], [ %105, %93 ], [ 0, %82 ], [ 0, %80 ], [ %111, %106 ], [ %77, %72 ]
  %116 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %115, ptr %116, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #11
  br label %117

117:                                              ; preds = %114, %22, %18
  %118 = phi i1 [ true, %114 ], [ %21, %18 ], [ %25, %22 ]
  %119 = zext i1 %118 to i32
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_fdma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = getelementptr i8, ptr %0, i32 92
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %7 = load volatile ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %7, ptr %11, align 4
  store ptr %6, ptr %13, align 4
  store ptr %13, ptr %10, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %12, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load volatile ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, %6
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 140
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call fastcc void @st_fdma_xfer_desc(ptr noundef %2)
  br label %23

23:                                               ; preds = %22, %18, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 1
  %8 = shl i32 2, %7
  %9 = getelementptr i8, ptr %0, i32 92
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  call void @arm_heavy_mb() #11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.st_fdma_dev, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.st_slim_rproc, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #11, !srcloc !19
  %17 = getelementptr i8, ptr %0, i32 140
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %22, ptr %25, align 4
  store ptr %19, ptr %22, align 4
  store ptr %2, ptr %24, align 4
  store ptr %24, ptr %3, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %23, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  store ptr %28, ptr %31, align 4
  store ptr %2, ptr %33, align 4
  store ptr %33, ptr %3, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %37, ptr %40, align 4
  store ptr %2, ptr %42, align 4
  store ptr %42, ptr %3, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %49, ptr %52, align 4
  store ptr %46, ptr %49, align 4
  store ptr %2, ptr %51, align 4
  store ptr %51, ptr %3, align 4
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %50, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  store ptr %55, ptr %58, align 4
  store ptr %2, ptr %60, align 4
  store ptr %60, ptr %3, align 4
  store volatile ptr %54, ptr %54, align 4
  store ptr %54, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @st_fdma_slave_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 -76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_pause(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 92
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr i8, ptr %0, i32 140
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -84
  %11 = shl i32 %3, 1
  %12 = shl i32 2, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.st_fdma_dev, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.st_slim_rproc, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %12) #11, !srcloc !19
  br label %19

19:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_fdma_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 92
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 140
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -84
  %9 = getelementptr i8, ptr %0, i32 16
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.st_fdma_dev, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.st_slim_rproc, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %9, align 4
  %16 = shl i32 %15, 2
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr i8, ptr %17, i32 512
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %20 = and i32 %19, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.st_fdma_dev, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.st_slim_rproc, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %9, align 4
  %27 = shl i32 %26, 2
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr i8, ptr %28, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #11, !srcloc !19
  br label %30

30:                                               ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_fdma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.st_fdma_dev, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.st_fdma_dev, ptr %4, i32 0, i32 2, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.st_fdma_dev, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @rproc_boot(ptr noundef %19) #11
  switch i32 %20, label %21 [
    i32 -2, label %74
    i32 0, label %23
  ]

21:                                               ; preds = %16
  %22 = inttoptr i32 %20 to ptr
  br label %74

23:                                               ; preds = %16
  %24 = tail call ptr @dma_get_any_slave_channel(ptr noundef %9) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %70, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 -84
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i8, ptr %24, i32 -28
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %24, i32 -12
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %24, i32 -8
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %24, i32 -24
  store i32 0, ptr %34, align 4
  %35 = load i32, ptr %5, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 6422535
  store i32 %40, ptr %33, align 4
  %41 = load i32, ptr %5, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %34, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %37, %26
  %48 = getelementptr i8, ptr %24, i32 -4
  store i32 0, ptr %48, align 4
  br label %74

49:                                               ; preds = %43
  %50 = load ptr, ptr %27, align 4
  %51 = getelementptr inbounds %struct.st_fdma_dev, ptr %50, i32 0, i32 7
  %52 = icmp ugt i32 %31, 31
  %53 = load i32, ptr %51, align 4
  %54 = icmp eq i32 %53, -1
  %55 = select i1 %54, i1 true, i1 %52
  %56 = select i1 %54, ptr @.str.16, ptr @.str.17
  br i1 %55, label %66, label %57

57:                                               ; preds = %49
  %58 = tail call i32 @_test_and_set_bit(i32 noundef %31, ptr noundef %51) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %51, align 4
  %62 = icmp eq i32 %61, -1
  %63 = select i1 %62, ptr @.str.16, ptr @.str.17
  br label %66

64:                                               ; preds = %57
  %65 = getelementptr i8, ptr %24, i32 -4
  store i32 %31, ptr %65, align 4
  br label %74

66:                                               ; preds = %60, %49
  %67 = phi ptr [ %56, %49 ], [ %63, %60 ]
  %68 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull %67) #12
  %69 = getelementptr i8, ptr %24, i32 -4
  store i32 -22, ptr %69, align 4
  br label %70

70:                                               ; preds = %66, %23
  %71 = phi ptr [ inttoptr (i32 -22 to ptr), %66 ], [ null, %23 ]
  %72 = load ptr, ptr %17, align 4
  %73 = load ptr, ptr %72, align 4
  tail call void @rproc_shutdown(ptr noundef %73) #11
  br label %74

74:                                               ; preds = %70, %64, %47, %21, %16, %8, %2
  %75 = phi ptr [ %22, %21 ], [ %71, %70 ], [ %24, %64 ], [ %24, %47 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -517 to ptr), %16 ]
  ret ptr %75
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_fdma_free(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.st_fdma_dev, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.st_fdma_dev, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.st_fdma_chan, ptr %9, i32 %8, i32 5, i32 0, i32 8
  %11 = getelementptr %struct.st_fdma_chan, ptr %9, i32 %8, i32 5, i32 0, i32 8, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr %struct.st_fdma_chan, ptr %9, i32 %8, i32 5, i32 1
  tail call void @tasklet_kill(ptr noundef %15) #11
  %16 = add nuw i32 %8, 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_slim_rproc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_fdma_xfer_desc(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.st_fdma_chan, ptr %0, i32 0, i32 5, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -68
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.st_fdma_chan, ptr %0, i32 0, i32 6
  store ptr %5, ptr %9, align 4
  %10 = getelementptr i8, ptr %3, i32 20
  %11 = getelementptr i8, ptr %3, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.st_fdma_hw_node, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.st_fdma_chan, ptr %0, i32 0, i32 5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 1
  %18 = shl nuw i32 1, %17
  %19 = load i32, ptr %10, align 4
  %20 = or i32 %19, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.st_fdma_dev, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.st_slim_rproc, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %15, align 4
  %27 = shl i32 %26, 7
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr i8, ptr %28, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %14) #11, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !29
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.st_fdma_dev, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.st_slim_rproc, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %15, align 4
  %36 = shl i32 %35, 2
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = getelementptr i8, ptr %37, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %20) #11, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.st_fdma_dev, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.st_slim_rproc, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 4036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %18) #11, !srcloc !19
  br label %45

45:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @st_fdma_alloc_desc(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #11
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 88) #11
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 2304) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.st_fdma_desc, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.st_fdma_desc, ptr %8, i32 0, i32 3
  store i32 %1, ptr %12, align 4
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.st_fdma_chan, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %25, %14
  %17 = phi i32 [ 0, %14 ], [ %26, %25 ]
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr %struct.st_fdma_desc, ptr %8, i32 0, i32 4, i32 %17
  %20 = tail call ptr @dma_pool_alloc(ptr noundef %18, i32 noundef 2048, ptr noundef %19) #11
  %21 = getelementptr %struct.st_fdma_desc, ptr %8, i32 0, i32 4, i32 %17, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %37, label %28

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %38, label %16

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %30, %28 ], [ %17, %23 ]
  %30 = add nsw i32 %29, -1
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr %struct.st_fdma_desc, ptr %8, i32 0, i32 4, i32 %30
  %33 = getelementptr %struct.st_fdma_desc, ptr %8, i32 0, i32 4, i32 %30, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %32, align 8
  tail call void @dma_pool_free(ptr noundef %31, ptr noundef %34, i32 noundef %35) #11
  %36 = icmp sgt i32 %29, 1
  br i1 %36, label %28, label %37

37:                                               ; preds = %28, %23
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %38

38:                                               ; preds = %37, %25, %10, %2
  %39 = phi ptr [ null, %37 ], [ null, %2 ], [ %8, %10 ], [ %8, %25 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 5194719}
!10 = !{i64 2153149192}
!11 = !{i64 2153146831}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153090524, i64 2153091011, i64 2153090561, i64 2153090617, i64 2153090651, i64 2153090675, i64 2153090716, i64 2153090737, i64 2153090765, i64 2153090799}
!14 = !{i64 2148946295}
!15 = !{i64 2148942119}
!16 = !{i64 2148942194, i64 2148942221, i64 2148942268, i64 2148942290, i64 2148942318, i64 2148942338}
!17 = !{i64 2148969298}
!18 = !{i64 2153149486}
!19 = !{i64 5194301}
!20 = !{i64 2153158222}
!21 = !{i64 2153091460}
!22 = !{i64 2153165144}
!23 = !{i64 2153166579}
!24 = !{i64 2153173076}
!25 = !{i64 2153168547}
!26 = !{i64 2153170387}
!27 = !{i64 2153171503}
!28 = !{i64 2153144218}
!29 = !{i64 2153144889}
!30 = !{i64 2153145337}
