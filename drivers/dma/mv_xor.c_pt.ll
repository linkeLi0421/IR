; ModuleID = '/llk/IR/drivers/dma/mv_xor.c_pt.bc'
source_filename = "../drivers/dma/mv_xor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mv_xor_device = type { ptr, ptr, ptr, [2 x ptr], i32, [8 x i32], [8 x i32] }
%struct.mv_xor_channel_data = type { %struct.dma_cap_mask_t }
%struct.mv_xor_chan = type { i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i32, %struct.dma_device, %struct.dma_chan, i32, %struct.tasklet_struct, i32, [128 x i8], [128 x i8], i32, i32, i32, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mv_xor_desc_slot = type { %struct.list_head, %struct.list_head, i32, ptr, i16, %struct.dma_async_tx_descriptor }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mv_xor_desc = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_mv_xor__230_1462_mv_xor_driver_init6 = internal global ptr @mv_xor_driver_init, section ".initcall6.init", align 4
@mv_xor_driver = internal global %struct.platform_driver { ptr @mv_xor_probe, ptr null, ptr null, ptr @mv_xor_suspend, ptr @mv_xor_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_xor_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"mv_xor\00", align 1
@mv_xor_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-xor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Marvell shared XOR driver\0A\00", align 1
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Marvell XOR (%s): ( %s%s%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Descriptor Mode\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Registers Mode\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xor \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpy \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"intr \00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"channel only initialized %d descriptor slots\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"freeing %d in use descriptors!\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"error on chan %d. intr cause 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"drivers/dma/mv_xor.c\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"config       0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"activation   0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"intr cause   0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"intr mask    0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"error cause  0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"error addr   0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Self-test cannot prepare operation, disabling\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Self-test submit error, disabling\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Self-test copy timed out, disabling\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Self-test copy failed compare, disabling\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Self-test xor timed out, disabling\0A\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Self-test xor failed compare, disabling. index %d, data %x, expected %x\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mv_xor__230_1462_mv_xor_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv_xor_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_xor_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 88, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %210, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %210, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %12, i32 noundef %16) #9
  store ptr %17, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %210, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %210, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 1, %23
  %27 = add i32 %26, %25
  %28 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %23, i32 noundef %27) #9
  %29 = getelementptr inbounds %struct.mv_xor_device, ptr %6, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %210, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mv_xor_device, ptr %6, i32 0, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @of_match_device(ptr noundef nonnull @mv_xor_dt_ids, ptr noundef %3) #9
  %39 = getelementptr inbounds %struct.of_device_id, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  store i32 %41, ptr %33, align 4
  %42 = icmp eq ptr %40, inttoptr (i32 2 to ptr)
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call fastcc void @mv_xor_conf_mbus_windows_a3700(ptr noundef nonnull %6)
  br label %48

44:                                               ; preds = %37, %31
  %45 = tail call ptr @mv_mbus_dram_info() #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @mv_xor_conf_mbus_windows(ptr noundef nonnull %6, ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %47, %44, %43
  %49 = tail call ptr @clk_get(ptr noundef %3, ptr noundef null) #9
  %50 = getelementptr inbounds %struct.mv_xor_device, ptr %6, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @clk_prepare(ptr noundef %49) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = tail call i32 @clk_enable(ptr noundef %49) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @clk_unprepare(ptr noundef %49) #9
  br label %59

59:                                               ; preds = %58, %55, %52, %48
  %60 = load i32, ptr @__cpu_present_mask, align 4
  %61 = and i32 %60, 65535
  %62 = tail call i32 @__sw_hweight32(i32 noundef %61) #9
  %63 = load i32, ptr %33, align 4
  %64 = icmp eq i32 %63, 2
  %65 = load i32, ptr @__cpu_present_mask, align 4
  %66 = and i32 %65, 65535
  %67 = tail call i32 @__sw_hweight32(i32 noundef %66) #9
  %68 = add i32 %67, 1
  %69 = lshr i32 %68, 1
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 2)
  %71 = select i1 %64, i32 %67, i32 %70
  %72 = icmp eq i32 %62, 0
  br i1 %72, label %210, label %73

73:                                               ; preds = %59
  %74 = load ptr, ptr %34, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %103, label %76

76:                                               ; preds = %73
  %77 = tail call ptr @of_get_next_child(ptr noundef nonnull %74, ptr noundef null) #9
  %78 = icmp eq ptr %77, null
  br i1 %78, label %210, label %79

79:                                               ; preds = %98, %76
  %80 = phi i32 [ %99, %98 ], [ 0, %76 ]
  %81 = phi ptr [ %101, %98 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %82 = icmp ult i32 %80, %71
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %2) #9
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %2) #9
  call void @_set_bit(i32 noundef 8, ptr noundef nonnull %2) #9
  %84 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %81, i32 noundef 0) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %2, align 4
  %88 = insertvalue [1 x i32] poison, i32 %87, 0
  %89 = call fastcc ptr @mv_xor_channel_add(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %80, [1 x i32] %88, i32 noundef %84)
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = ptrtoint ptr %89 to i32
  call void @irq_dispose_mapping(i32 noundef %84) #9
  br label %96

93:                                               ; preds = %86
  %94 = getelementptr %struct.mv_xor_device, ptr %6, i32 0, i32 3, i32 %80
  store ptr %89, ptr %94, align 4
  %95 = add nuw i32 %80, 1
  br label %98

96:                                               ; preds = %91, %83
  %97 = phi i32 [ %92, %91 ], [ -19, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %132

98:                                               ; preds = %93, %79
  %99 = phi i32 [ %95, %93 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %100 = load ptr, ptr %34, align 8
  %101 = call ptr @of_get_next_child(ptr noundef %100, ptr noundef nonnull %81) #9
  %102 = icmp eq ptr %101, null
  br i1 %102, label %210, label %79

103:                                              ; preds = %73
  %104 = icmp eq ptr %5, null
  br i1 %104, label %210, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr %5, align 4
  %107 = icmp ne ptr %106, null
  %108 = icmp ne i32 %71, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %210

110:                                              ; preds = %105
  %111 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %128, %110
  %114 = phi i32 [ %130, %128 ], [ %111, %110 ]
  %115 = phi i32 [ %126, %128 ], [ 0, %110 ]
  %116 = phi ptr [ %129, %128 ], [ %106, %110 ]
  %117 = getelementptr %struct.mv_xor_channel_data, ptr %116, i32 %115
  %118 = load i32, ptr %117, align 4
  %119 = insertvalue [1 x i32] undef, i32 %118, 0
  %120 = tail call fastcc ptr @mv_xor_channel_add(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %115, [1 x i32] %119, i32 noundef %114)
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = ptrtoint ptr %120 to i32
  br label %132

124:                                              ; preds = %113
  %125 = getelementptr %struct.mv_xor_device, ptr %6, i32 0, i32 3, i32 %115
  store ptr %120, ptr %125, align 4
  %126 = add nuw i32 %115, 1
  %127 = icmp eq i32 %126, %71
  br i1 %127, label %210, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %5, align 4
  %130 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %126) #9
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %113

132:                                              ; preds = %128, %122, %110, %96
  %133 = phi i32 [ %97, %96 ], [ %123, %122 ], [ %111, %110 ], [ %130, %128 ]
  %134 = getelementptr %struct.mv_xor_device, ptr %6, i32 0, i32 3, i32 0
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %169, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 13
  %139 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 13, i32 15
  %140 = load ptr, ptr %139, align 4
  call void @dma_async_device_unregister(ptr noundef %138) #9
  %141 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 11
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 10
  %144 = load i32, ptr %143, align 4
  call void @dma_free_attrs(ptr noundef %140, i32 noundef 196608, ptr noundef %142, i32 noundef %144, i32 noundef 0) #9
  %145 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 20
  %146 = load i32, ptr %145, align 4
  call void @dma_unmap_page_attrs(ptr noundef %140, i32 noundef %146, i32 noundef 128, i32 noundef 2, i32 noundef 0) #9
  %147 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 21
  %148 = load i32, ptr %147, align 4
  call void @dma_unmap_page_attrs(ptr noundef %140, i32 noundef %148, i32 noundef 128, i32 noundef 1, i32 noundef 0) #9
  %149 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 13, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %159, label %152

152:                                              ; preds = %152, %137
  %153 = phi ptr [ %154, %152 ], [ %150, %137 ]
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %156, ptr %157, align 4
  store volatile ptr %154, ptr %156, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %153, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %155, align 4
  %158 = icmp eq ptr %154, %149
  br i1 %158, label %159, label %152

159:                                              ; preds = %152, %137
  %160 = getelementptr inbounds %struct.mv_xor_chan, ptr %135, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = call ptr @free_irq(i32 noundef %161, ptr noundef nonnull %135) #9
  %163 = load ptr, ptr %34, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %134, align 4
  %167 = getelementptr inbounds %struct.mv_xor_chan, ptr %166, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  call void @irq_dispose_mapping(i32 noundef %168) #9
  br label %169

169:                                              ; preds = %165, %159, %132
  %170 = getelementptr %struct.mv_xor_device, ptr %6, i32 0, i32 3, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %205, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 13
  %175 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 13, i32 15
  %176 = load ptr, ptr %175, align 4
  call void @dma_async_device_unregister(ptr noundef %174) #9
  %177 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 11
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 10
  %180 = load i32, ptr %179, align 4
  call void @dma_free_attrs(ptr noundef %176, i32 noundef 196608, ptr noundef %178, i32 noundef %180, i32 noundef 0) #9
  %181 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 20
  %182 = load i32, ptr %181, align 4
  call void @dma_unmap_page_attrs(ptr noundef %176, i32 noundef %182, i32 noundef 128, i32 noundef 2, i32 noundef 0) #9
  %183 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 21
  %184 = load i32, ptr %183, align 4
  call void @dma_unmap_page_attrs(ptr noundef %176, i32 noundef %184, i32 noundef 128, i32 noundef 1, i32 noundef 0) #9
  %185 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 13, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, %185
  br i1 %187, label %195, label %188

188:                                              ; preds = %188, %173
  %189 = phi ptr [ %190, %188 ], [ %186, %173 ]
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  store ptr %192, ptr %193, align 4
  store volatile ptr %190, ptr %192, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %189, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %191, align 4
  %194 = icmp eq ptr %190, %185
  br i1 %194, label %195, label %188

195:                                              ; preds = %188, %173
  %196 = getelementptr inbounds %struct.mv_xor_chan, ptr %171, i32 0, i32 5
  %197 = load i32, ptr %196, align 4
  %198 = call ptr @free_irq(i32 noundef %197, ptr noundef nonnull %171) #9
  %199 = load ptr, ptr %34, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = load ptr, ptr %170, align 4
  %203 = getelementptr inbounds %struct.mv_xor_chan, ptr %202, i32 0, i32 5
  %204 = load i32, ptr %203, align 4
  call void @irq_dispose_mapping(i32 noundef %204) #9
  br label %205

205:                                              ; preds = %201, %195, %169
  %206 = load ptr, ptr %50, align 4
  %207 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  call void @clk_disable(ptr noundef %206) #9
  call void @clk_unprepare(ptr noundef %206) #9
  %209 = load ptr, ptr %50, align 4
  call void @clk_put(ptr noundef %209) #9
  br label %210

210:                                              ; preds = %208, %205, %124, %105, %103, %98, %76, %59, %22, %19, %11, %8, %1
  %211 = phi i32 [ -12, %1 ], [ -19, %8 ], [ -16, %11 ], [ -19, %19 ], [ -16, %22 ], [ 0, %59 ], [ 0, %103 ], [ 0, %105 ], [ %133, %208 ], [ %133, %205 ], [ 0, %76 ], [ 0, %124 ], [ 0, %98 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.mv_xor_device, ptr %4, i32 0, i32 3, i32 0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mv_xor_chan, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = getelementptr inbounds %struct.mv_xor_chan, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 2
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !8
  %17 = getelementptr inbounds %struct.mv_xor_chan, ptr %6, i32 0, i32 22
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !8
  %21 = getelementptr inbounds %struct.mv_xor_chan, ptr %6, i32 0, i32 23
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %8, %2
  %23 = getelementptr %struct.mv_xor_device, ptr %4, i32 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mv_xor_chan, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = getelementptr inbounds %struct.mv_xor_chan, ptr %24, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 2
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  %35 = getelementptr inbounds %struct.mv_xor_chan, ptr %24, i32 0, i32 22
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr i8, ptr %36, i32 64
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  %39 = getelementptr inbounds %struct.mv_xor_chan, ptr %24, i32 0, i32 23
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %26, %22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.mv_xor_device, ptr %3, i32 0, i32 3, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mv_xor_chan, ptr %5, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mv_xor_chan, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = getelementptr inbounds %struct.mv_xor_chan, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 2
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %9) #9, !srcloc !9
  %17 = getelementptr inbounds %struct.mv_xor_chan, ptr %5, i32 0, i32 23
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  br label %21

21:                                               ; preds = %7, %1
  %22 = getelementptr %struct.mv_xor_device, ptr %3, i32 0, i32 3, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mv_xor_chan, ptr %23, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mv_xor_chan, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  %31 = getelementptr inbounds %struct.mv_xor_chan, ptr %23, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 2
  %34 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %27) #9, !srcloc !9
  %35 = getelementptr inbounds %struct.mv_xor_chan, ptr %23, i32 0, i32 23
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !9
  br label %39

39:                                               ; preds = %25, %21
  %40 = getelementptr inbounds %struct.mv_xor_device, ptr %3, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call fastcc void @mv_xor_conf_mbus_windows_a3700(ptr noundef %3)
  br label %48

44:                                               ; preds = %39
  %45 = tail call ptr @mv_mbus_dram_info() #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @mv_xor_conf_mbus_windows(ptr noundef %3, ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %47, %44, %43
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_xor_conf_mbus_windows_a3700(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv_xor_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr i8, ptr %3, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr i8, ptr %3, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %3, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr i8, ptr %3, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %13 = getelementptr i8, ptr %3, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr i8, ptr %3, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %15 = getelementptr i8, ptr %3, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %17 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %19 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %21 = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr i8, ptr %3, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -65536) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 196609) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %25 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 196609) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr i8, ptr %3, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %27 = getelementptr i8, ptr %3, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_xor_conf_mbus_windows(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mv_xor_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr i8, ptr %4, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr i8, ptr %4, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr i8, ptr %4, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr i8, ptr %4, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %13 = getelementptr i8, ptr %4, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr i8, ptr %4, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %15 = getelementptr i8, ptr %4, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr i8, ptr %4, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %17 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %19 = getelementptr i8, ptr %4, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr i8, ptr %4, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %21 = getelementptr i8, ptr %4, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr i8, ptr %4, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr i8, ptr %4, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr i8, ptr %4, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #9, !srcloc !9
  %25 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %70, %30 ]
  %32 = phi i32 [ 0, %28 ], [ %69, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %33 = getelementptr %struct.mbus_dram_window, ptr %29, i32 %31, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 4294901760
  %36 = getelementptr %struct.mbus_dram_window, ptr %29, i32 %31, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = load i8, ptr %1, align 8
  %41 = zext i8 %40 to i64
  %42 = or i64 %35, %41
  %43 = trunc i64 %42 to i32
  %44 = or i32 %39, %43
  %45 = shl i32 %31, 2
  %46 = add i32 %45, 80
  %47 = getelementptr i8, ptr %4, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %48 = getelementptr %struct.mbus_dram_window, ptr %29, i32 %31, i32 3
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, -1
  %52 = and i32 %51, -65536
  %53 = add i32 %45, 112
  %54 = getelementptr i8, ptr %4, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !9
  %55 = load i64, ptr %33, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr %struct.mv_xor_device, ptr %0, i32 0, i32 5, i32 %31
  store i32 %56, ptr %57, align 4
  %58 = load i64, ptr %33, align 8
  %59 = load i64, ptr %48, align 8
  %60 = add i64 %59, %58
  %61 = trunc i64 %60 to i32
  %62 = add i32 %61, -1
  %63 = getelementptr %struct.mv_xor_device, ptr %0, i32 0, i32 6, i32 %31
  store i32 %62, ptr %63, align 4
  %64 = shl nuw i32 1, %31
  %65 = or i32 %64, %32
  %66 = shl nuw i32 %31, 1
  %67 = add i32 %66, 16
  %68 = shl i32 3, %67
  %69 = or i32 %65, %68
  %70 = add nuw nsw i32 %31, 1
  %71 = load i32, ptr %25, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %30, label %73

73:                                               ; preds = %30, %2
  %74 = phi i32 [ 0, %2 ], [ %69, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %75 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %74) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %76 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %77 = getelementptr i8, ptr %4, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %78 = getelementptr i8, ptr %4, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mv_xor_channel_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, [1 x i32] %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [4 x ptr], align 4
  %7 = alloca [4 x i32], align 4
  %8 = alloca i32, align 4
  %9 = extractvalue [1 x i32] %3, 0
  %10 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 692, i32 noundef 3520) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %473, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 4
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 5
  store i32 %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mv_xor_device, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 17
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13
  %22 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 15
  store ptr %10, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 24
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 18
  %25 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #9
  %26 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %38, !prof !27

29:                                               ; preds = %13
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %30 = tail call ptr @dev_driver_string(ptr noundef %10) #9
  %31 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load ptr, ptr %10, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %35, %34 ], [ %32, %29 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %30, ptr noundef %37) #9
  br label %38

38:                                               ; preds = %36, %13
  br i1 %25, label %47, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %24 to i32
  %42 = add i32 %41, 1073741824
  %43 = lshr i32 %42, 12
  %44 = getelementptr %struct.page, ptr %40, i32 %43
  %45 = and i32 %41, 4095
  %46 = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %44, i32 noundef %45, i32 noundef 128, i32 noundef 2, i32 noundef 0) #9
  br label %47

47:                                               ; preds = %39, %38
  %48 = phi i32 [ %46, %39 ], [ -1, %38 ]
  %49 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 20
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 19
  %52 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %51) #9
  %53 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %65, !prof !27

56:                                               ; preds = %47
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %57 = tail call ptr @dev_driver_string(ptr noundef %50) #9
  %58 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load ptr, ptr %50, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %59, %56 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %57, ptr noundef %64) #9
  br label %65

65:                                               ; preds = %63, %47
  br i1 %52, label %74, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr @mem_map, align 4
  %68 = ptrtoint ptr %51 to i32
  %69 = add i32 %68, 1073741824
  %70 = lshr i32 %69, 12
  %71 = getelementptr %struct.page, ptr %67, i32 %70
  %72 = and i32 %68, 4095
  %73 = tail call i32 @dma_map_page_attrs(ptr noundef %50, ptr noundef %71, i32 noundef %72, i32 noundef 128, i32 noundef 1, i32 noundef 0) #9
  br label %74

74:                                               ; preds = %66, %65
  %75 = phi i32 [ %73, %66 ], [ -1, %65 ]
  %76 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 21
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 10
  %78 = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef 196608, ptr noundef %77, i32 noundef 3264, i32 noundef 4) #9
  %79 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 11
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %473, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 6
  store i32 %9, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 3
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 3, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 27
  store ptr @mv_xor_alloc_chan_resources, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 29
  store ptr @mv_xor_free_chan_resources, ptr %86, align 4
  %87 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 49
  store ptr @mv_xor_status, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 50
  store ptr @mv_xor_issue_pending, ptr %88, align 4
  %89 = load volatile i32, ptr %82, align 4
  %90 = and i32 %89, 256
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 38
  store ptr @mv_xor_prep_dma_interrupt, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %81
  %95 = load volatile i32, ptr %82, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 30
  store ptr @mv_xor_prep_dma_memcpy, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load volatile i32, ptr %82, align 4
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 8
  store i16 8, ptr %105, align 4
  %106 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 13, i32 32
  store ptr @mv_xor_prep_dma_xor, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %100
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 2
  store ptr %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.mv_xor_device, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 3
  store ptr %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 16
  tail call void @tasklet_setup(ptr noundef %113, ptr noundef nonnull @mv_xor_tasklet) #9
  %114 = load i32, ptr %14, align 4
  %115 = shl i32 %114, 4
  %116 = lshr i32 -65536, %115
  %117 = load ptr, ptr %109, align 4
  %118 = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #9, !srcloc !9
  %119 = load i32, ptr %15, align 4
  %120 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = load ptr, ptr %10, align 4
  br label %125

125:                                              ; preds = %123, %107
  %126 = phi ptr [ %124, %123 ], [ %121, %107 ]
  %127 = tail call i32 @request_threaded_irq(i32 noundef %119, ptr noundef nonnull @mv_xor_interrupt_handler, ptr noundef null, i32 noundef 0, ptr noundef %126, ptr noundef nonnull %11) #9
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %468

129:                                              ; preds = %125
  %130 = load ptr, ptr %109, align 4
  %131 = getelementptr i8, ptr %130, i32 64
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #9, !srcloc !8
  %133 = load i32, ptr %14, align 4
  %134 = shl i32 %133, 4
  %135 = shl i32 1015, %134
  %136 = or i32 %135, %132
  %137 = load ptr, ptr %109, align 4
  %138 = getelementptr i8, ptr %137, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #9, !srcloc !9
  %139 = load i32, ptr %20, align 4
  %140 = icmp eq i32 %139, 1
  %141 = load ptr, ptr %109, align 4
  %142 = getelementptr i8, ptr %141, i32 16
  %143 = load i32, ptr %14, align 4
  %144 = shl i32 %143, 2
  %145 = getelementptr i8, ptr %142, i32 %144
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9
  %147 = and i32 %146, -16392
  br i1 %140, label %148, label %155

148:                                              ; preds = %129
  %149 = or i32 %147, 7
  %150 = load ptr, ptr %109, align 4
  %151 = getelementptr i8, ptr %150, i32 16
  %152 = load i32, ptr %14, align 4
  %153 = shl i32 %152, 2
  %154 = getelementptr i8, ptr %151, i32 %153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %149) #9, !srcloc !9
  br label %161

155:                                              ; preds = %129
  %156 = load ptr, ptr %109, align 4
  %157 = getelementptr i8, ptr %156, i32 16
  %158 = load i32, ptr %14, align 4
  %159 = shl i32 %158, 2
  %160 = getelementptr i8, ptr %157, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %147) #9, !srcloc !9
  br label %161

161:                                              ; preds = %155, %148
  %162 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 1
  store i32 0, ptr %162, align 4
  %163 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 6
  store volatile ptr %163, ptr %163, align 4
  %164 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 6, i32 1
  store ptr %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 9
  store volatile ptr %165, ptr %165, align 4
  %166 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 9, i32 1
  store ptr %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 7
  store volatile ptr %167, ptr %167, align 4
  %168 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 7, i32 1
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 8
  store volatile ptr %169, ptr %169, align 4
  %170 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 8, i32 1
  store ptr %169, ptr %170, align 4
  %171 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 14
  store ptr %21, ptr %171, align 4
  %172 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 14, i32 2
  store i32 1, ptr %172, align 4
  %173 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 14, i32 3
  store i32 1, ptr %173, align 4
  %174 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 14, i32 8
  %175 = load ptr, ptr %84, align 4
  store ptr %174, ptr %84, align 4
  store ptr %83, ptr %174, align 4
  %176 = getelementptr inbounds %struct.mv_xor_chan, ptr %11, i32 0, i32 14, i32 8, i32 1
  store ptr %175, ptr %176, align 4
  store volatile ptr %174, ptr %175, align 4
  %177 = load volatile i32, ptr %82, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %269, label %180

180:                                              ; preds = %161
  %181 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %182 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3264, i32 noundef 4096) #11
  %183 = icmp eq ptr %182, null
  br i1 %183, label %464, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %186 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %185, i32 noundef 3520, i32 noundef 4096) #11
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  tail call void @kfree(ptr noundef nonnull %182) #9
  br label %464

189:                                              ; preds = %189, %184
  %190 = phi i32 [ %193, %189 ], [ 0, %184 ]
  %191 = trunc i32 %190 to i8
  %192 = getelementptr i8, ptr %182, i32 %190
  store i8 %191, ptr %192, align 1
  %193 = add nuw nsw i32 %190, 1
  %194 = icmp eq i32 %193, 4096
  br i1 %194, label %195, label %189

195:                                              ; preds = %189
  %196 = tail call i32 @mv_xor_alloc_chan_resources(ptr noundef %171) #9
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %266, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %171, align 4
  %200 = getelementptr inbounds %struct.dma_device, ptr %199, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %201, i32 noundef 2, i32 noundef 3264) #9
  %203 = icmp eq ptr %202, null
  br i1 %203, label %264, label %204

204:                                              ; preds = %198
  %205 = load ptr, ptr %171, align 4
  %206 = getelementptr inbounds %struct.dma_device, ptr %205, i32 0, i32 15
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr @mem_map, align 4
  %209 = ptrtoint ptr %182 to i32
  %210 = add i32 %209, 1073741824
  %211 = lshr i32 %210, 12
  %212 = getelementptr %struct.page, ptr %208, i32 %211
  %213 = and i32 %209, 4088
  %214 = tail call i32 @dma_map_page_attrs(ptr noundef %207, ptr noundef %212, i32 noundef %213, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  %215 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %202, i32 0, i32 7
  store i32 %214, ptr %215, align 4
  %216 = icmp eq i32 %214, -1
  br i1 %216, label %264, label %217

217:                                              ; preds = %204
  %218 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %202, i32 0, i32 1
  store i8 1, ptr %218, align 2
  %219 = load ptr, ptr %171, align 4
  %220 = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 15
  %221 = load ptr, ptr %220, align 4
  %222 = load ptr, ptr @mem_map, align 4
  %223 = ptrtoint ptr %186 to i32
  %224 = add i32 %223, 1073741824
  %225 = lshr i32 %224, 12
  %226 = getelementptr %struct.page, ptr %222, i32 %225
  %227 = and i32 %223, 4088
  %228 = tail call i32 @dma_map_page_attrs(ptr noundef %221, ptr noundef %226, i32 noundef %227, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %229 = getelementptr %struct.dmaengine_unmap_data, ptr %202, i32 1, i32 3
  store i32 %228, ptr %229, align 4
  %230 = icmp eq i32 %228, -1
  br i1 %230, label %264, label %231

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %202, i32 0, i32 2
  store i8 1, ptr %232, align 1
  %233 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %202, i32 0, i32 6
  store i32 4096, ptr %233, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 %214, ptr %8, align 4
  %234 = call ptr @mv_xor_prep_dma_xor(ptr noundef %171, i32 noundef %228, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 4096, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load ptr, ptr %171, align 4
  %238 = getelementptr inbounds %struct.dma_device, ptr %237, i32 0, i32 15
  %239 = load ptr, ptr %238, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.21) #10
  br label %264

240:                                              ; preds = %231
  %241 = tail call i32 @mv_xor_tx_submit(ptr noundef nonnull %234) #9
  %242 = icmp sgt i32 %241, -1
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %171, align 4
  %245 = getelementptr inbounds %struct.dma_device, ptr %244, i32 0, i32 15
  %246 = load ptr, ptr %245, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.22) #10
  br label %264

247:                                              ; preds = %240
  tail call void @mv_xor_issue_pending(ptr noundef %171) #9
  %248 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %234, i32 0, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = or i32 %249, 2
  store i32 %250, ptr %248, align 4
  tail call void @msleep(i32 noundef 1) #9
  %251 = tail call i32 @mv_xor_status(ptr noundef %171, i32 noundef %241, ptr noundef null) #9
  %252 = icmp eq i32 %251, 0
  %253 = load ptr, ptr %171, align 4
  %254 = getelementptr inbounds %struct.dma_device, ptr %253, i32 0, i32 15
  %255 = load ptr, ptr %254, align 4
  br i1 %252, label %257, label %256

256:                                              ; preds = %247
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.23) #10
  br label %264

257:                                              ; preds = %247
  tail call void @dma_sync_single_for_cpu(ptr noundef %255, i32 noundef %228, i32 noundef 4096, i32 noundef 2) #9
  %258 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4096) %182, ptr noundef nonnull dereferenceable(4096) %186, i32 4096) #9
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr %171, align 4
  %262 = getelementptr inbounds %struct.dma_device, ptr %261, i32 0, i32 15
  %263 = load ptr, ptr %262, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %263, ptr noundef nonnull @.str.24) #10
  br label %264

264:                                              ; preds = %260, %257, %256, %243, %236, %217, %204, %198
  %265 = phi i32 [ -19, %243 ], [ -19, %256 ], [ -19, %260 ], [ 0, %257 ], [ -19, %236 ], [ -12, %198 ], [ -12, %204 ], [ -12, %217 ]
  tail call void @dmaengine_unmap_put(ptr noundef %202) #9
  tail call void @mv_xor_free_chan_resources(ptr noundef %171) #9
  br label %266

266:                                              ; preds = %264, %195
  %267 = phi i32 [ %265, %264 ], [ -19, %195 ]
  tail call void @kfree(ptr noundef nonnull %182) #9
  tail call void @kfree(ptr noundef nonnull %186) #9
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %464

269:                                              ; preds = %266, %161
  %270 = load volatile i32, ptr %82, align 4
  %271 = and i32 %270, 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %446, label %273

273:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %274 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %274, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #9, !annotation !28
  %275 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  store ptr %275, ptr %6, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %438, label %286

277:                                              ; preds = %290
  %278 = add nsw i32 %291, -1
  %279 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %278
  %280 = load ptr, ptr %279, align 4
  tail call void @__free_pages(ptr noundef %280, i32 noundef 0) #9
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %438, label %282

282:                                              ; preds = %277
  %283 = add nsw i32 %291, -2
  %284 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %283
  %285 = load ptr, ptr %284, align 4
  tail call void @__free_pages(ptr noundef %285, i32 noundef 0) #9
  br label %438

286:                                              ; preds = %273
  %287 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %288 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 1
  store ptr %287, ptr %288, align 4
  %289 = icmp eq ptr %287, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %297, %294, %286
  %291 = phi i32 [ 0, %286 ], [ 1, %294 ], [ 2, %297 ]
  %292 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %291
  %293 = load ptr, ptr %292, align 4
  tail call void @__free_pages(ptr noundef %293, i32 noundef 0) #9
  br i1 %289, label %438, label %277

294:                                              ; preds = %286
  %295 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  store ptr %295, ptr %274, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %290, label %297

297:                                              ; preds = %294
  %298 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %299 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 3
  store ptr %298, ptr %299, align 4
  %300 = icmp eq ptr %298, null
  br i1 %300, label %290, label %301

301:                                              ; preds = %297
  %302 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %303 = icmp eq ptr %302, null
  br i1 %303, label %439, label %304

304:                                              ; preds = %301
  %305 = tail call ptr @page_address(ptr noundef nonnull %275) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %305, i8 1, i32 4096, i1 false) #9
  %306 = tail call ptr @page_address(ptr noundef nonnull %287) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %306, i8 2, i32 4096, i1 false) #9
  %307 = tail call ptr @page_address(ptr noundef nonnull %295) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %307, i8 4, i32 4096, i1 false) #9
  %308 = tail call ptr @page_address(ptr noundef nonnull %298) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %308, i8 8, i32 4096, i1 false) #9
  %309 = tail call ptr @page_address(ptr noundef nonnull %302) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %309, i8 0, i32 4096, i1 false) #9
  %310 = tail call i32 @mv_xor_alloc_chan_resources(ptr noundef %171) #9
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %436, label %312

312:                                              ; preds = %304
  %313 = load ptr, ptr %171, align 4
  %314 = getelementptr inbounds %struct.dma_device, ptr %313, i32 0, i32 15
  %315 = load ptr, ptr %314, align 4
  %316 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %315, i32 noundef 5, i32 noundef 3264) #9
  %317 = icmp eq ptr %316, null
  br i1 %317, label %434, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 1
  %320 = load ptr, ptr %171, align 4
  %321 = getelementptr inbounds %struct.dma_device, ptr %320, i32 0, i32 15
  %322 = load ptr, ptr %321, align 4
  %323 = tail call i32 @dma_map_page_attrs(ptr noundef %322, ptr noundef nonnull %275, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  %324 = getelementptr %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 7, i32 0
  store i32 %323, ptr %324, align 4
  store i32 %323, ptr %7, align 4
  %325 = icmp eq i32 %323, -1
  br i1 %325, label %434, label %326

326:                                              ; preds = %318
  %327 = load i8, ptr %319, align 2
  %328 = add i8 %327, 1
  store i8 %328, ptr %319, align 2
  %329 = load ptr, ptr %171, align 4
  %330 = getelementptr inbounds %struct.dma_device, ptr %329, i32 0, i32 15
  %331 = load ptr, ptr %330, align 4
  %332 = tail call i32 @dma_map_page_attrs(ptr noundef %331, ptr noundef nonnull %287, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  %333 = getelementptr %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 7, i32 1
  store i32 %332, ptr %333, align 4
  %334 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  store i32 %332, ptr %334, align 4
  %335 = icmp eq i32 %332, -1
  br i1 %335, label %434, label %336

336:                                              ; preds = %326
  %337 = load i8, ptr %319, align 2
  %338 = add i8 %337, 1
  store i8 %338, ptr %319, align 2
  %339 = load ptr, ptr %171, align 4
  %340 = getelementptr inbounds %struct.dma_device, ptr %339, i32 0, i32 15
  %341 = load ptr, ptr %340, align 4
  %342 = tail call i32 @dma_map_page_attrs(ptr noundef %341, ptr noundef nonnull %295, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  %343 = getelementptr %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 7, i32 2
  store i32 %342, ptr %343, align 4
  %344 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  store i32 %342, ptr %344, align 4
  %345 = icmp eq i32 %342, -1
  br i1 %345, label %434, label %346

346:                                              ; preds = %336
  %347 = load i8, ptr %319, align 2
  %348 = add i8 %347, 1
  store i8 %348, ptr %319, align 2
  %349 = load ptr, ptr %171, align 4
  %350 = getelementptr inbounds %struct.dma_device, ptr %349, i32 0, i32 15
  %351 = load ptr, ptr %350, align 4
  %352 = tail call i32 @dma_map_page_attrs(ptr noundef %351, ptr noundef nonnull %298, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  %353 = getelementptr %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 7, i32 3
  store i32 %352, ptr %353, align 4
  %354 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  store i32 %352, ptr %354, align 4
  %355 = icmp eq i32 %352, -1
  br i1 %355, label %434, label %356

356:                                              ; preds = %346
  %357 = load i8, ptr %319, align 2
  %358 = add i8 %357, 1
  store i8 %358, ptr %319, align 2
  %359 = load ptr, ptr %171, align 4
  %360 = getelementptr inbounds %struct.dma_device, ptr %359, i32 0, i32 15
  %361 = load ptr, ptr %360, align 4
  %362 = tail call i32 @dma_map_page_attrs(ptr noundef %361, ptr noundef nonnull %302, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %363 = getelementptr %struct.dmaengine_unmap_data, ptr %316, i32 1, i32 6
  store i32 %362, ptr %363, align 4
  %364 = icmp eq i32 %362, -1
  br i1 %364, label %434, label %365

365:                                              ; preds = %356
  %366 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 2
  store i8 1, ptr %366, align 1
  %367 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %316, i32 0, i32 6
  store i32 4096, ptr %367, align 4
  %368 = call ptr @mv_xor_prep_dma_xor(ptr noundef %171, i32 noundef %362, ptr noundef nonnull %7, i32 noundef 4, i32 noundef 4096, i32 noundef 0) #9
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load ptr, ptr %171, align 4
  %372 = getelementptr inbounds %struct.dma_device, ptr %371, i32 0, i32 15
  %373 = load ptr, ptr %372, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %373, ptr noundef nonnull @.str.21) #10
  br label %434

374:                                              ; preds = %365
  %375 = tail call i32 @mv_xor_tx_submit(ptr noundef nonnull %368) #9
  %376 = icmp sgt i32 %375, -1
  br i1 %376, label %381, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %171, align 4
  %379 = getelementptr inbounds %struct.dma_device, ptr %378, i32 0, i32 15
  %380 = load ptr, ptr %379, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %380, ptr noundef nonnull @.str.22) #10
  br label %434

381:                                              ; preds = %374
  %382 = load i32, ptr %11, align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %381
  store i32 0, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %385 = load ptr, ptr %109, align 4
  %386 = getelementptr i8, ptr %385, i32 32
  %387 = load i32, ptr %14, align 4
  %388 = shl i32 %387, 2
  %389 = getelementptr i8, ptr %386, i32 %388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 1) #9, !srcloc !9
  br label %390

390:                                              ; preds = %384, %381
  %391 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %368, i32 0, i32 1
  %392 = load i32, ptr %391, align 4
  %393 = or i32 %392, 2
  store i32 %393, ptr %391, align 4
  tail call void @msleep(i32 noundef 8) #9
  %394 = load i32, ptr %172, align 4
  %395 = load i32, ptr %173, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %396 = icmp sgt i32 %395, %394
  %397 = icmp sge i32 %395, %375
  %398 = icmp slt i32 %394, %375
  br i1 %396, label %401, label %399

399:                                              ; preds = %390
  %400 = or i1 %398, %397
  br i1 %400, label %417, label %403

401:                                              ; preds = %390
  %402 = and i1 %398, %397
  br i1 %402, label %417, label %403

403:                                              ; preds = %401, %399
  tail call void @_raw_spin_lock_bh(ptr noundef %162) #9
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %11) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %162) #9
  %404 = load i32, ptr %172, align 4
  %405 = load i32, ptr %173, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %406 = icmp sgt i32 %405, %404
  %407 = icmp sge i32 %405, %375
  %408 = icmp slt i32 %404, %375
  br i1 %406, label %411, label %409

409:                                              ; preds = %403
  %410 = or i1 %408, %407
  br i1 %410, label %417, label %413

411:                                              ; preds = %403
  %412 = and i1 %408, %407
  br i1 %412, label %417, label %413

413:                                              ; preds = %411, %409
  %414 = load ptr, ptr %171, align 4
  %415 = getelementptr inbounds %struct.dma_device, ptr %414, i32 0, i32 15
  %416 = load ptr, ptr %415, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %416, ptr noundef nonnull @.str.25) #10
  br label %434

417:                                              ; preds = %411, %409, %401, %399
  %418 = load ptr, ptr %171, align 4
  %419 = getelementptr inbounds %struct.dma_device, ptr %418, i32 0, i32 15
  %420 = load ptr, ptr %419, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %420, i32 noundef %362, i32 noundef 4096, i32 noundef 2) #9
  br label %421

421:                                              ; preds = %431, %417
  %422 = phi i32 [ 0, %417 ], [ %432, %431 ]
  %423 = tail call ptr @page_address(ptr noundef nonnull %302) #9
  %424 = getelementptr i32, ptr %423, i32 %422
  %425 = load i32, ptr %424, align 4
  %426 = icmp eq i32 %425, 252645135
  br i1 %426, label %431, label %427

427:                                              ; preds = %421
  %428 = load ptr, ptr %171, align 4
  %429 = getelementptr inbounds %struct.dma_device, ptr %428, i32 0, i32 15
  %430 = load ptr, ptr %429, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %430, ptr noundef nonnull @.str.26, i32 noundef %422, i32 noundef %425, i32 noundef 252645135) #10
  br label %434

431:                                              ; preds = %421
  %432 = add nuw nsw i32 %422, 1
  %433 = icmp eq i32 %432, 1024
  br i1 %433, label %434, label %421

434:                                              ; preds = %431, %427, %413, %377, %370, %356, %346, %336, %326, %318, %312
  %435 = phi i32 [ -19, %377 ], [ -19, %413 ], [ -19, %427 ], [ -19, %370 ], [ -12, %312 ], [ -12, %356 ], [ -12, %346 ], [ -12, %336 ], [ -12, %326 ], [ -12, %318 ], [ 0, %431 ]
  tail call void @dmaengine_unmap_put(ptr noundef %316) #9
  tail call void @mv_xor_free_chan_resources(ptr noundef %171) #9
  br label %436

436:                                              ; preds = %434, %304
  %437 = phi i32 [ %435, %434 ], [ -19, %304 ]
  tail call void @__free_pages(ptr noundef nonnull %298, i32 noundef 0) #9
  br label %439

438:                                              ; preds = %290, %282, %277, %273
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %464

439:                                              ; preds = %436, %301
  %440 = phi ptr [ %295, %436 ], [ %298, %301 ]
  %441 = phi ptr [ %287, %436 ], [ %295, %301 ]
  %442 = phi ptr [ %275, %436 ], [ %287, %301 ]
  %443 = phi ptr [ %302, %436 ], [ %275, %301 ]
  %444 = phi i32 [ %437, %436 ], [ -12, %301 ]
  tail call void @__free_pages(ptr noundef nonnull %440, i32 noundef 0) #9
  tail call void @__free_pages(ptr noundef nonnull %441, i32 noundef 0) #9
  tail call void @__free_pages(ptr noundef nonnull %442, i32 noundef 0) #9
  tail call void @__free_pages(ptr noundef nonnull %443, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %464

446:                                              ; preds = %439, %269
  %447 = load i32, ptr %20, align 4
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %448, ptr @.str.4, ptr @.str.3
  %450 = load volatile i32, ptr %82, align 4
  %451 = and i32 %450, 4
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %452, ptr @.str.6, ptr @.str.5
  %454 = load volatile i32, ptr %82, align 4
  %455 = and i32 %454, 1
  %456 = icmp eq i32 %455, 0
  %457 = select i1 %456, ptr @.str.6, ptr @.str.7
  %458 = load volatile i32, ptr %82, align 4
  %459 = and i32 %458, 256
  %460 = icmp eq i32 %459, 0
  %461 = select i1 %460, ptr @.str.6, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull %449, ptr noundef nonnull %453, ptr noundef nonnull %457, ptr noundef nonnull %461) #10
  %462 = tail call i32 @dma_async_device_register(ptr noundef %21) #9
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %473, label %464

464:                                              ; preds = %446, %439, %438, %266, %188, %180
  %465 = phi i32 [ %267, %266 ], [ %444, %439 ], [ %462, %446 ], [ -12, %188 ], [ -12, %438 ], [ -12, %180 ]
  %466 = load i32, ptr %15, align 4
  %467 = tail call ptr @free_irq(i32 noundef %466, ptr noundef nonnull %11) #9
  br label %468

468:                                              ; preds = %464, %125
  %469 = phi i32 [ %127, %125 ], [ %465, %464 ]
  %470 = load ptr, ptr %79, align 4
  %471 = load i32, ptr %77, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef 196608, ptr noundef %470, i32 noundef %471, i32 noundef 0) #9
  %472 = inttoptr i32 %469 to ptr
  br label %473

473:                                              ; preds = %468, %446, %74, %5
  %474 = phi ptr [ %472, %468 ], [ %11, %446 ], [ inttoptr (i32 -12 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %74 ]
  ret ptr %474
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 3072
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -260
  %7 = getelementptr i8, ptr %0, i32 -264
  %8 = getelementptr i8, ptr %0, i32 -316
  %9 = getelementptr i8, ptr %0, i32 -288
  %10 = getelementptr i8, ptr %0, i32 -284
  br label %11

11:                                               ; preds = %19, %5
  %12 = phi i32 [ %3, %5 ], [ %32, %19 ]
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 88) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -180
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %12) #10
  br label %37

19:                                               ; preds = %11
  %20 = load ptr, ptr %6, align 4
  %21 = shl i32 %12, 6
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 5
  tail call void @dma_async_tx_descriptor_init(ptr noundef %24, ptr noundef %0) #9
  %25 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 5, i32 4
  store ptr @mv_xor_tx_submit, ptr %25, align 4
  store volatile ptr %14, ptr %14, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %14, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 1
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, %21
  %31 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 5, i32 2
  store i32 %30, ptr %31, align 4
  %32 = add i32 %12, 1
  %33 = trunc i32 %12 to i16
  %34 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %14, i32 0, i32 4
  store i16 %33, ptr %34, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #9
  store i32 %32, ptr %2, align 4
  %35 = load ptr, ptr %10, align 4
  store ptr %14, ptr %10, align 4
  store ptr %9, ptr %14, align 8
  store ptr %35, ptr %26, align 4
  store volatile ptr %14, ptr %35, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #9
  %36 = icmp eq i32 %32, 3072
  br i1 %36, label %37, label %11

37:                                               ; preds = %19, %16, %1
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -12, i32 %38
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_xor_free_chan_resources(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -320
  %3 = getelementptr i8, ptr %0, i32 -316
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #9
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %2)
  %4 = getelementptr i8, ptr %0, i32 -296
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -288
  %9 = getelementptr i8, ptr %0, i32 -284
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %5, %7 ], [ %13, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %14, %10 ]
  %13 = load ptr, ptr %11, align 4
  %14 = add i32 %12, 1
  %15 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  store ptr %11, ptr %9, align 4
  store ptr %8, ptr %11, align 4
  store ptr %18, ptr %15, align 4
  store volatile ptr %11, ptr %18, align 4
  %19 = icmp eq ptr %13, %4
  br i1 %19, label %20, label %10

20:                                               ; preds = %10, %1
  %21 = phi i32 [ 0, %1 ], [ %14, %10 ]
  %22 = getelementptr i8, ptr %0, i32 -272
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 -288
  %27 = getelementptr i8, ptr %0, i32 -284
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %23, %25 ], [ %31, %28 ]
  %30 = phi i32 [ %21, %25 ], [ %32, %28 ]
  %31 = load ptr, ptr %29, align 4
  %32 = add i32 %30, 1
  %33 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %31, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  store ptr %29, ptr %27, align 4
  store ptr %26, ptr %29, align 4
  store ptr %36, ptr %33, align 4
  store volatile ptr %29, ptr %36, align 4
  %37 = icmp eq ptr %31, %22
  br i1 %37, label %38, label %28

38:                                               ; preds = %28, %20
  %39 = phi i32 [ %21, %20 ], [ %32, %28 ]
  %40 = getelementptr i8, ptr %0, i32 -280
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %0, i32 -288
  %45 = getelementptr i8, ptr %0, i32 -284
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %41, %43 ], [ %49, %46 ]
  %48 = phi i32 [ %39, %43 ], [ %50, %46 ]
  %49 = load ptr, ptr %47, align 4
  %50 = add i32 %48, 1
  %51 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %49, ptr %52, align 4
  %54 = load ptr, ptr %45, align 4
  store ptr %47, ptr %45, align 4
  store ptr %44, ptr %47, align 4
  store ptr %54, ptr %51, align 4
  store volatile ptr %47, ptr %54, align 4
  %55 = icmp eq ptr %49, %40
  br i1 %55, label %56, label %46

56:                                               ; preds = %46, %38
  %57 = phi i32 [ %39, %38 ], [ %50, %46 ]
  %58 = getelementptr i8, ptr %0, i32 -288
  %59 = getelementptr i8, ptr %0, i32 -284
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %0, i32 64
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %60, %62 ], [ %67, %64 ]
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  tail call void @kfree(ptr noundef %65) #9
  %70 = load i32, ptr %63, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %63, align 4
  %72 = icmp eq ptr %67, %58
  br i1 %72, label %73, label %64

73:                                               ; preds = %64, %56
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #9
  %74 = icmp eq i32 %57, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %73
  %76 = getelementptr i8, ptr %0, i32 -180
  %77 = load ptr, ptr %76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.12, i32 noundef %57) #10
  br label %78

78:                                               ; preds = %75, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
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
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %39, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %39, label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr i8, ptr %0, i32 -320
  %23 = getelementptr i8, ptr %0, i32 -316
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #9
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %22)
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #9
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br i1 %8, label %30, label %26

26:                                               ; preds = %21
  store i32 %25, ptr %2, align 4
  %27 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = icmp sgt i32 %25, %24
  %32 = icmp sge i32 %25, %1
  %33 = icmp slt i32 %24, %1
  br i1 %31, label %36, label %34

34:                                               ; preds = %30
  %35 = or i1 %33, %32
  br i1 %35, label %39, label %38

36:                                               ; preds = %30
  %37 = and i1 %33, %32
  br i1 %37, label %39, label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %36, %34, %19, %17
  %40 = phi i32 [ 1, %38 ], [ 0, %34 ], [ 0, %36 ], [ 0, %17 ], [ 0, %19 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_xor_issue_pending(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -320
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr i8, ptr %0, i32 -312
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = getelementptr i8, ptr %0, i32 -304
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #9, !srcloc !9
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_interrupt(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = getelementptr i8, ptr %0, i32 352
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %3, align 4
  %6 = getelementptr i8, ptr %0, i32 356
  %7 = load i32, ptr %6, align 4
  %8 = call ptr @mv_xor_prep_dma_xor(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 128, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  %7 = call ptr @mv_xor_prep_dma_xor(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %3, i32 noundef %4)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mv_xor_prep_dma_xor(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr i8, ptr %0, i32 -320
  %8 = icmp ult i32 %4, 128
  br i1 %8, label %81, label %9, !prof !27

9:                                                ; preds = %6
  %10 = icmp ugt i32 %4, 16777215
  br i1 %10, label %11, label %12, !prof !27

11:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 565, 0\0A.popsection", ""() #9, !srcloc !31
  unreachable

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @mv_xor_add_io_win(ptr noundef %7, i32 noundef %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -316
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #9
  %17 = getelementptr i8, ptr %0, i32 -288
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #9
  %21 = getelementptr i8, ptr %0, i32 72
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 68
  tail call void @__tasklet_schedule(ptr noundef %25) #9
  br label %81

26:                                               ; preds = %15
  %27 = getelementptr i8, ptr %0, i32 -280
  %28 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %18, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  %32 = getelementptr i8, ptr %0, i32 -276
  %33 = load ptr, ptr %32, align 4
  store ptr %18, ptr %32, align 4
  store ptr %27, ptr %18, align 4
  store ptr %33, ptr %28, align 4
  store volatile ptr %18, ptr %33, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #9
  %34 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %18, i32 0, i32 5
  %35 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %18, i32 0, i32 5, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4
  store i32 -16, ptr %34, align 4
  %38 = icmp eq ptr %18, null
  br i1 %38, label %81, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %18, i32 0, i32 2
  store i32 2, ptr %40, align 4
  store i32 %5, ptr %35, align 4
  %41 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %18, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  store i32 -2147483648, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mv_xor_desc, ptr %42, i32 0, i32 3
  store i32 0, ptr %43, align 4
  %44 = shl i32 %5, 31
  %45 = getelementptr inbounds %struct.mv_xor_desc, ptr %42, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mv_xor_desc, ptr %42, i32 0, i32 5
  store i32 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mv_xor_desc, ptr %42, i32 0, i32 4
  store i32 %4, ptr %47, align 4
  %48 = getelementptr i8, ptr %0, i32 92
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load i32, ptr %40, align 4
  switch i32 %52, label %58 [
    i32 2, label %59
    i32 8, label %59
    i32 0, label %53
  ]

53:                                               ; preds = %51
  %54 = load ptr, ptr %41, align 4
  %55 = getelementptr inbounds %struct.mv_xor_desc, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 33554432
  store i32 %57, ptr %55, align 4
  br label %59

58:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

59:                                               ; preds = %53, %51, %51, %39
  %60 = icmp eq i32 %3, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %79, %59
  %62 = phi i32 [ %63, %79 ], [ %3, %59 ]
  %63 = add i32 %62, -1
  %64 = getelementptr i32, ptr %2, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = tail call fastcc i32 @mv_xor_add_io_win(ptr noundef %7, i32 noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, ptr %64, align 4
  %70 = load ptr, ptr %41, align 4
  %71 = getelementptr %struct.mv_xor_desc, ptr %70, i32 0, i32 6, i32 %63
  store i32 %69, ptr %71, align 4
  %72 = load i32, ptr %40, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = shl nuw i32 1, %63
  %76 = getelementptr inbounds %struct.mv_xor_desc, ptr %70, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %74, %68
  %80 = icmp eq i32 %63, 0
  br i1 %80, label %81, label %61

81:                                               ; preds = %79, %61, %59, %26, %24, %20, %12, %6
  %82 = phi ptr [ null, %6 ], [ null, %12 ], [ %34, %59 ], [ null, %24 ], [ null, %20 ], [ null, %26 ], [ null, %61 ], [ %34, %79 ]
  ret ptr %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_xor_tasklet(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -388
  %3 = getelementptr i8, ptr %0, i32 -384
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  tail call fastcc void @mv_chan_slot_cleanup(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_interrupt_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mv_xor_chan, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = getelementptr inbounds %struct.mv_xor_chan, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 4
  %10 = lshr i32 %6, %9
  %11 = and i32 %10, 1008
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 16
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = and i32 %10, 65535
  %18 = getelementptr inbounds %struct.mv_xor_chan, ptr %1, i32 0, i32 13, i32 15
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %17) #10
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = load i32, ptr %7, align 4
  %23 = shl i32 %22, 2
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  %26 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.15, i32 noundef %25) #10
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = load i32, ptr %7, align 4
  %30 = shl i32 %29, 2
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  %33 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16, i32 noundef %32) #10
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !8
  %37 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.17, i32 noundef %36) #10
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 64
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  %41 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.18, i32 noundef %40) #10
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 80
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !8
  %45 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.19, i32 noundef %44) #10
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr i8, ptr %46, i32 96
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !8
  %49 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.20, i32 noundef %48) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 727, i32 noundef 9, ptr noundef null) #9
  br label %50

50:                                               ; preds = %16, %2
  %51 = getelementptr inbounds %struct.mv_xor_chan, ptr %1, i32 0, i32 16, i32 1
  %52 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mv_xor_chan, ptr %1, i32 0, i32 16
  tail call void @__tasklet_schedule(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, ptr %7, align 4
  %58 = shl i32 %57, 4
  %59 = shl i32 7, %58
  %60 = xor i32 %59, -1
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #9, !srcloc !9
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_xor_tx_submit(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -320
  %6 = getelementptr i8, ptr %4, i32 -316
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 1) #9
  store i32 %11, ptr %8, align 4
  store i32 %11, ptr %0, align 4
  %12 = getelementptr i8, ptr %4, i32 -296
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -24
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  %20 = getelementptr i8, ptr %4, i32 -292
  %21 = load ptr, ptr %20, align 4
  store ptr %2, ptr %20, align 4
  store ptr %12, ptr %2, align 4
  store ptr %21, ptr %16, align 4
  store volatile ptr %2, ptr %21, align 4
  br label %60

22:                                               ; preds = %1
  %23 = getelementptr i8, ptr %4, i32 -292
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 -24
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr %23, align 4
  store ptr %2, ptr %23, align 4
  store ptr %12, ptr %2, align 4
  store ptr %29, ptr %25, align 4
  store volatile ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %24, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mv_xor_desc, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !37

35:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %32, align 4
  %39 = getelementptr i8, ptr %4, i32 -312
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 32
  %42 = getelementptr i8, ptr %4, i32 -304
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 2
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !8
  %47 = and i32 %46, 48
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %79, label %49

49:                                               ; preds = %36
  %50 = getelementptr i8, ptr %4, i32 -308
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = load i32, ptr %42, align 4
  %54 = shl i32 %53, 2
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !8
  %57 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %24, i32 0, i32 5, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %49, %15
  %61 = getelementptr i8, ptr %0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %4, i32 -308
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %4, i32 -304
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 %66, 2
  %68 = getelementptr i8, ptr %64, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %62) #9, !srcloc !9
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %5, align 4
  %71 = icmp ult i32 %69, 2147483647
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  store i32 0, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  tail call void @arm_heavy_mb() #9
  %73 = getelementptr i8, ptr %4, i32 -312
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 32
  %76 = load i32, ptr %65, align 4
  %77 = shl i32 %76, 2
  %78 = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 1) #9, !srcloc !9
  br label %79

79:                                               ; preds = %72, %60, %49, %36
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #9
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_chan_slot_cleanup(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = and i32 %10, 48
  %12 = icmp eq i32 %11, 16
  %13 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  %16 = load i32, ptr %6, align 4
  %17 = shl i32 %16, 2
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  %20 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %51, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 7
  %25 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 7, i32 1
  br label %26

26:                                               ; preds = %49, %23
  %27 = phi ptr [ %21, %23 ], [ %28, %49 ]
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %27, i32 0, i32 5, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %28, ptr %35, align 4
  %37 = load ptr, ptr %25, align 4
  store ptr %27, ptr %25, align 4
  store ptr %24, ptr %27, align 4
  store ptr %37, ptr %34, align 4
  store volatile ptr %27, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %27, i32 0, i32 1
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load volatile ptr, ptr %38, align 4
  %43 = icmp eq ptr %42, %38
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %25, align 4
  %46 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %27, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  store ptr %42, ptr %45, align 4
  store ptr %24, ptr %47, align 4
  store ptr %47, ptr %25, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %41, %33, %26
  %50 = icmp eq ptr %28, %20
  br i1 %50, label %51, label %26

51:                                               ; preds = %49, %1
  %52 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %140, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 7
  %57 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 7, i32 1
  %58 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 9, i32 1
  br label %59

59:                                               ; preds = %137, %55
  %60 = phi ptr [ %53, %55 ], [ %62, %137 ]
  %61 = phi i32 [ 0, %55 ], [ %138, %137 ]
  %62 = load ptr, ptr %60, align 4
  %63 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1073741824
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %133, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73, !prof !27

72:                                               ; preds = %68
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mv_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #9, !srcloc !39
  unreachable

73:                                               ; preds = %68
  %74 = icmp eq i32 %70, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void @dmaengine_unmap_put(ptr noundef nonnull %77) #9
  store ptr null, ptr %76, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 8
  %86 = load ptr, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8
  %87 = icmp eq ptr %84, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  call void %84(ptr noundef %86, ptr noundef nonnull %2) #9
  br label %92

89:                                               ; preds = %80
  %90 = icmp eq ptr %82, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  call void %82(ptr noundef %86) #9
  br label %92

92:                                               ; preds = %91, %89, %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %93

93:                                               ; preds = %92, %73
  %94 = phi i32 [ %70, %92 ], [ %61, %73 ]
  call void @dma_run_dependencies(ptr noundef %69) #9
  %95 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %60, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  br i1 %98, label %103, label %116

103:                                              ; preds = %93
  %104 = load ptr, ptr %58, align 4
  store ptr %60, ptr %58, align 4
  store ptr %20, ptr %60, align 4
  store ptr %104, ptr %99, align 4
  store volatile ptr %60, ptr %104, align 4
  %105 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 1
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %129, label %108

108:                                              ; preds = %103
  %109 = load volatile ptr, ptr %105, align 4
  %110 = icmp eq ptr %109, %105
  br i1 %110, label %129, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %58, align 4
  %113 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %112, ptr %115, align 4
  store ptr %109, ptr %112, align 4
  store ptr %20, ptr %114, align 4
  store ptr %114, ptr %58, align 4
  store volatile ptr %105, ptr %105, align 4
  store ptr %105, ptr %113, align 4
  br label %129

116:                                              ; preds = %93
  %117 = load ptr, ptr %57, align 4
  store ptr %60, ptr %57, align 4
  store ptr %56, ptr %60, align 4
  store ptr %117, ptr %99, align 4
  store volatile ptr %60, ptr %117, align 4
  %118 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 1
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load volatile ptr, ptr %118, align 4
  %123 = icmp eq ptr %122, %118
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %57, align 4
  %126 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 1, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %125, ptr %128, align 4
  store ptr %122, ptr %125, align 4
  store ptr %56, ptr %127, align 4
  store ptr %127, ptr %57, align 4
  store volatile ptr %118, ptr %118, align 4
  store ptr %118, ptr %126, align 4
  br label %129

129:                                              ; preds = %124, %121, %116, %111, %108, %103
  %130 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, %19
  br i1 %132, label %140, label %137

133:                                              ; preds = %59
  %134 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %60, i32 0, i32 5, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, %19
  br i1 %136, label %140, label %137

137:                                              ; preds = %133, %129
  %138 = phi i32 [ %94, %129 ], [ %61, %133 ]
  %139 = icmp eq ptr %62, %52
  br i1 %139, label %140, label %59

140:                                              ; preds = %137, %133, %129, %51
  %141 = phi ptr [ %52, %51 ], [ %60, %133 ], [ %60, %129 ], [ %52, %137 ]
  %142 = phi i1 [ true, %51 ], [ true, %133 ], [ false, %129 ], [ true, %137 ]
  %143 = phi i32 [ 0, %51 ], [ %61, %133 ], [ %94, %129 ], [ %138, %137 ]
  br i1 %12, label %189, label %144

144:                                              ; preds = %140
  %145 = load volatile ptr, ptr %52, align 4
  %146 = icmp eq ptr %145, %52
  br i1 %146, label %189, label %147

147:                                              ; preds = %144
  br i1 %142, label %164, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %145, i32 0, i32 5, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %13, align 4
  %152 = load i32, ptr %6, align 4
  %153 = shl i32 %152, 2
  %154 = getelementptr i8, ptr %151, i32 %153
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %150) #9, !srcloc !9
  %155 = load i32, ptr %0, align 4
  %156 = add i32 %155, 1
  store i32 %156, ptr %0, align 4
  %157 = icmp ult i32 %155, 2147483647
  br i1 %157, label %158, label %189

158:                                              ; preds = %148
  store i32 0, ptr %0, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  call void @arm_heavy_mb() #9
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr i8, ptr %159, i32 32
  %161 = load i32, ptr %6, align 4
  %162 = shl i32 %161, 2
  %163 = getelementptr i8, ptr %160, i32 %162
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 1) #9, !srcloc !9
  br label %189

164:                                              ; preds = %147
  %165 = load ptr, ptr %141, align 4
  %166 = icmp eq ptr %165, %52
  br i1 %166, label %183, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.mv_xor_desc_slot, ptr %165, i32 0, i32 5, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr %13, align 4
  %171 = load i32, ptr %6, align 4
  %172 = shl i32 %171, 2
  %173 = getelementptr i8, ptr %170, i32 %172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %169) #9, !srcloc !9
  %174 = load i32, ptr %0, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %0, align 4
  %176 = icmp ult i32 %174, 2147483647
  br i1 %176, label %177, label %189

177:                                              ; preds = %167
  store i32 0, ptr %0, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !29
  call void @arm_heavy_mb() #9
  %178 = load ptr, ptr %3, align 4
  %179 = getelementptr i8, ptr %178, i32 32
  %180 = load i32, ptr %6, align 4
  %181 = shl i32 %180, 2
  %182 = getelementptr i8, ptr %179, i32 %181
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 1) #9, !srcloc !9
  br label %189

183:                                              ; preds = %164
  %184 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 16, i32 1
  %185 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %184) #9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 16
  call void @__tasklet_schedule(ptr noundef %188) #9
  br label %189

189:                                              ; preds = %187, %183, %177, %167, %158, %148, %144, %140
  %190 = icmp sgt i32 %143, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 14, i32 3
  store i32 %143, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %189
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_xor_add_io_win(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mv_xor_chan, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !28
  %10 = getelementptr inbounds %struct.mv_xor_device, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %119, label %13

13:                                               ; preds = %2
  %14 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %119

21:                                               ; preds = %17, %13
  %22 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %29, label %119

29:                                               ; preds = %25, %21
  %30 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %1
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %1
  br i1 %36, label %37, label %119

37:                                               ; preds = %33, %29
  %38 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %1
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %45, label %119

45:                                               ; preds = %41, %37
  %46 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, %1
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, %1
  br i1 %52, label %53, label %119

53:                                               ; preds = %49, %45
  %54 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, %1
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %59, %1
  br i1 %60, label %61, label %119

61:                                               ; preds = %57, %53
  %62 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, %1
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %67, %1
  br i1 %68, label %69, label %119

69:                                               ; preds = %65, %61
  %70 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, %1
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, %1
  br i1 %76, label %77, label %119

77:                                               ; preds = %73, %69
  %78 = call i32 @mvebu_mbus_get_io_win_info(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %119, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %3, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr %3, align 4
  %83 = getelementptr i8, ptr %9, i32 64
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %85 = xor i32 %84, -1
  %86 = call i32 @llvm.cttz.i32(i32 %85, i1 true), !range !41
  %87 = icmp eq i32 %84, -1
  %88 = select i1 %87, i32 -1, i32 %86
  %89 = icmp sgt i32 %88, 7
  br i1 %89, label %119, label %90

90:                                               ; preds = %80
  %91 = sub i32 0, %81
  %92 = and i32 %91, %1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %93 = and i32 %92, -65536
  %94 = load i8, ptr %5, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %96, %93
  %98 = load i8, ptr %4, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = shl nsw i32 %88, 2
  %102 = add nsw i32 %101, 80
  %103 = getelementptr i8, ptr %9, i32 %102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %100) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  call void @arm_heavy_mb() #9
  %104 = load i32, ptr %3, align 4
  %105 = and i32 %104, -65536
  %106 = add nsw i32 %101, 112
  %107 = getelementptr i8, ptr %9, i32 %106
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #9, !srcloc !9
  %108 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 5, i32 %88
  store i32 %92, ptr %108, align 4
  %109 = load i32, ptr %3, align 4
  %110 = add i32 %109, %92
  %111 = getelementptr %struct.mv_xor_device, ptr %7, i32 0, i32 6, i32 %88
  store i32 %110, ptr %111, align 4
  %112 = shl nuw nsw i32 1, %88
  %113 = or i32 %112, %84
  %114 = shl nsw i32 %88, 1
  %115 = add nsw i32 %114, 16
  %116 = shl i32 3, %115
  %117 = or i32 %113, %116
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %117) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  call void @arm_heavy_mb() #9
  %118 = getelementptr i8, ptr %9, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #9, !srcloc !9
  br label %119

119:                                              ; preds = %90, %80, %77, %73, %65, %57, %49, %41, %33, %25, %17, %2
  %120 = phi i32 [ 0, %90 ], [ 0, %2 ], [ 0, %77 ], [ -12, %80 ], [ 0, %73 ], [ 0, %65 ], [ 0, %57 ], [ 0, %49 ], [ 0, %41 ], [ 0, %33 ], [ 0, %25 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_get_io_win_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
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
!8 = !{i64 5042346}
!9 = !{i64 5041928}
!10 = !{i64 2153311193}
!11 = !{i64 2153311545}
!12 = !{i64 2153311897}
!13 = !{i64 2153312258}
!14 = !{i64 2153312640}
!15 = !{i64 2153313022}
!16 = !{i64 2153313395}
!17 = !{i64 2153313750}
!18 = !{i64 2153307608}
!19 = !{i64 2153307960}
!20 = !{i64 2153308312}
!21 = !{i64 2153308755}
!22 = !{i64 2153309315}
!23 = !{i64 2153309731}
!24 = !{i64 2153310113}
!25 = !{i64 2153310486}
!26 = !{i64 2153310841}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"auto-init"}
!29 = !{i64 2153214342}
!30 = !{i64 2153165966}
!31 = !{i64 2153251021, i64 2153251506, i64 2153251058, i64 2153251114, i64 2153251148, i64 2153251172, i64 2153251213, i64 2153251234, i64 2153251262, i64 2153251296}
!32 = !{i64 2153207662, i64 2153208146, i64 2153207699, i64 2153207755, i64 2153207789, i64 2153207813, i64 2153207854, i64 2153207875, i64 2153207903, i64 2153207937}
!33 = !{i64 2148960254}
!34 = !{i64 2148956078}
!35 = !{i64 2148956153, i64 2148956180, i64 2148956227, i64 2148956249, i64 2148956277, i64 2148956297}
!36 = !{i64 2148983257}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2153208698, i64 2153209182, i64 2153208735, i64 2153208791, i64 2153208825, i64 2153208849, i64 2153208890, i64 2153208911, i64 2153208939, i64 2153208973}
!39 = !{i64 2153215858, i64 2153216343, i64 2153215895, i64 2153215951, i64 2153215985, i64 2153216009, i64 2153216050, i64 2153216071, i64 2153216099, i64 2153216133}
!40 = !{i64 2153247676}
!41 = !{i32 0, i32 33}
!42 = !{i64 2153247967}
!43 = !{i64 2153248417}
!44 = !{i64 2153248813}
!45 = !{i64 2153249195}
