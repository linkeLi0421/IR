; ModuleID = '/llk/IR/drivers/dma/bcm2835-dma.c_pt.bc'
source_filename = "../drivers/dma/bcm2835-dma.c"
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
%struct.bcm2835_dmadev = type { %struct.dma_device, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.bcm2835_chan = type { %struct.virt_dma_chan, %struct.dma_slave_config, i32, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.bcm2835_desc = type { ptr, %struct.virt_dma_desc, i32, i32, i32, i8, [0 x %struct.bcm2835_cb_entry] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.bcm2835_cb_entry = type { ptr, i32 }
%struct.bcm2835_dma_cb = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_bcm2835_dma__233_1043_bcm2835_dma_driver_init6 = internal global ptr @bcm2835_dma_driver_init, section ".initcall6.init", align 4
@bcm2835_dma_driver = internal global %struct.platform_driver { ptr @bcm2835_dma_probe, ptr @bcm2835_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_dma_driver_exit = internal global ptr @bcm2835_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias234 = internal constant [39 x i8] c"bcm2835_dma.alias=platform:bcm2835-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [50 x i8] c"bcm2835_dma.description=BCM2835 DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [58 x i8] c"bcm2835_dma.author=Florian Meier <florian.meier@koalo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"bcm2835_dma.file=drivers/dma/bcm2835-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"bcm2835_dma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"bcm2835-dma\00", align 1
@bcm2835_dma_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to set DMA mask\0A\00", align 1
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to map zero page\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"brcm,dma-channel-mask\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to get channel mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dma%i\00", align 1
@bcm2835_dma_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"missing interrupt-names property in device tree - legacy interpretation is used\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register DMA controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Failed to register slave DMA engine device: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"unable to allocate descriptor pool\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"DMA IRQ\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: bad direction?\0A\00", align 1
@__func__.bcm2835_dma_prep_dma_cyclic = private unnamed_addr constant [28 x i8] c"bcm2835_dma_prep_dma_cyclic\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%s: bad buffer length (= 0)\0A\00", align 1
@bcm2835_dma_prep_dma_cyclic.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"%s: buffer_length (%zd) is not a multiple of period_len (%zd)\0A\00", align 1
@__func__.bcm2835_dma_prep_slave_sg = private unnamed_addr constant [26 x i8] c"bcm2835_dma_prep_slave_sg\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"failed to complete outstanding writes\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_bcm2835_dma_driver_exit, ptr @__initcall__kmod_bcm2835_dma__233_1043_bcm2835_dma_driver_init6, ptr @bcm2835_dma_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_dma_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_dma_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_probe(ptr noundef %0) #2 {
  %2 = alloca [15 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i32 60, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  store ptr %10, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 4294967295) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #12
  br label %274

15:                                               ; preds = %11
  %16 = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 4294967295) #11
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 260, i32 noundef 3520) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %274, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1073741823, ptr %21, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %25) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %274

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bcm2835_dmadev, ptr %17, i32 0, i32 1
  store ptr %26, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 27
  store ptr @bcm2835_dma_alloc_chan_resources, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 29
  store ptr @bcm2835_dma_free_chan_resources, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 49
  store ptr @bcm2835_dma_tx_status, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 50
  store ptr @bcm2835_dma_issue_pending, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 40
  store ptr @bcm2835_dma_prep_dma_cyclic, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 39
  store ptr @bcm2835_dma_prep_slave_sg, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 30
  store ptr @bcm2835_dma_prep_dma_memcpy, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 44
  store ptr @bcm2835_dma_slave_config, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  store ptr @bcm2835_dma_terminate_all, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 48
  store ptr @bcm2835_dma_synchronize, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 19
  store i32 16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 20
  store i32 16, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 21
  store i32 7, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 26
  store i32 2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 25
  store i8 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  store ptr %5, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 3
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 3, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %51, align 8
  %52 = load ptr, ptr @empty_zero_page, align 4
  %53 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %52, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #11
  %54 = getelementptr inbounds %struct.bcm2835_dmadev, ptr %17, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = icmp eq i32 %53, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #12
  br label %274

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #12
  br label %259

63:                                               ; preds = %82, %57
  %64 = phi i32 [ %83, %82 ], [ 0, %57 ]
  %65 = load i32, ptr %3, align 4
  %66 = shl nuw nsw i32 1, %64
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = getelementptr [15 x i32], ptr %2, i32 0, i32 %64
  store i32 -1, ptr %70, align 4
  br label %82

71:                                               ; preds = %63
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %64)
  %73 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull %4) #11
  %74 = getelementptr [15 x i32], ptr %2, i32 0, i32 %64
  store i32 %73, ptr %74, align 4
  %75 = icmp sgt i32 %73, -1
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load i1, ptr @bcm2835_dma_probe.__print_once, align 1
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  store i1 true, ptr @bcm2835_dma_probe.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.6) #12
  br label %79

79:                                               ; preds = %78, %76
  %80 = call i32 @llvm.smin.i32(i32 %64, i32 11)
  %81 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %80) #11
  store i32 %81, ptr %74, align 4
  br label %82

82:                                               ; preds = %79, %71, %69
  %83 = add nuw nsw i32 %64, 1
  %84 = icmp eq i32 %83, 15
  br i1 %84, label %85, label %63

85:                                               ; preds = %82
  %86 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 1
  %87 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 3
  %88 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 1
  %89 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 2
  %90 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 3
  %91 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 5
  %92 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 4
  %93 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 5
  %94 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 7
  %95 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 6
  %96 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 7
  %97 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 9
  %98 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 8
  %99 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 9
  %100 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 11
  %101 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 10
  %102 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 11
  %103 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 13
  %104 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 12
  %105 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 13
  %106 = getelementptr inbounds [15 x i32], ptr %2, i32 0, i32 14
  br label %107

107:                                              ; preds = %247, %85
  %108 = phi i32 [ %248, %247 ], [ 0, %85 ]
  %109 = getelementptr [15 x i32], ptr %2, i32 0, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %247, label %112

112:                                              ; preds = %107
  %113 = icmp eq i32 %108, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %112
  %115 = load i32, ptr %2, align 4
  %116 = icmp eq i32 %115, %110
  br i1 %116, label %227, label %117

117:                                              ; preds = %114
  %118 = icmp eq i32 %108, 1
  br i1 %118, label %130, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr %86, align 4
  %121 = icmp eq i32 %120, %110
  br i1 %121, label %227, label %128

122:                                              ; preds = %112
  %123 = load i32, ptr %88, align 4
  %124 = icmp eq i32 %123, %110
  %125 = load i32, ptr %89, align 4
  %126 = icmp eq i32 %125, %110
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %227, label %133

128:                                              ; preds = %119
  %129 = icmp eq i32 %108, 2
  br i1 %129, label %138, label %130

130:                                              ; preds = %128, %117
  %131 = load i32, ptr %89, align 4
  %132 = icmp eq i32 %131, %110
  br i1 %132, label %227, label %133

133:                                              ; preds = %130, %122
  %134 = icmp eq i32 %108, 3
  br i1 %134, label %146, label %135

135:                                              ; preds = %133
  %136 = load i32, ptr %90, align 4
  %137 = icmp eq i32 %136, %110
  br i1 %137, label %227, label %144

138:                                              ; preds = %128
  %139 = load i32, ptr %87, align 4
  %140 = icmp eq i32 %139, %110
  %141 = load i32, ptr %92, align 4
  %142 = icmp eq i32 %141, %110
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %227, label %149

144:                                              ; preds = %135
  %145 = icmp eq i32 %108, 4
  br i1 %145, label %154, label %146

146:                                              ; preds = %144, %133
  %147 = load i32, ptr %92, align 4
  %148 = icmp eq i32 %147, %110
  br i1 %148, label %227, label %149

149:                                              ; preds = %146, %138
  %150 = icmp eq i32 %108, 5
  br i1 %150, label %162, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %93, align 4
  %153 = icmp eq i32 %152, %110
  br i1 %153, label %227, label %160

154:                                              ; preds = %144
  %155 = load i32, ptr %91, align 4
  %156 = icmp eq i32 %155, %110
  %157 = load i32, ptr %95, align 4
  %158 = icmp eq i32 %157, %110
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %227, label %165

160:                                              ; preds = %151
  %161 = icmp eq i32 %108, 6
  br i1 %161, label %170, label %162

162:                                              ; preds = %160, %149
  %163 = load i32, ptr %95, align 4
  %164 = icmp eq i32 %163, %110
  br i1 %164, label %227, label %165

165:                                              ; preds = %162, %154
  %166 = icmp eq i32 %108, 7
  br i1 %166, label %178, label %167

167:                                              ; preds = %165
  %168 = load i32, ptr %96, align 4
  %169 = icmp eq i32 %168, %110
  br i1 %169, label %227, label %176

170:                                              ; preds = %160
  %171 = load i32, ptr %94, align 4
  %172 = icmp eq i32 %171, %110
  %173 = load i32, ptr %98, align 4
  %174 = icmp eq i32 %173, %110
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %227, label %181

176:                                              ; preds = %167
  %177 = icmp eq i32 %108, 8
  br i1 %177, label %186, label %178

178:                                              ; preds = %176, %165
  %179 = load i32, ptr %98, align 4
  %180 = icmp eq i32 %179, %110
  br i1 %180, label %227, label %181

181:                                              ; preds = %178, %170
  %182 = icmp eq i32 %108, 9
  br i1 %182, label %194, label %183

183:                                              ; preds = %181
  %184 = load i32, ptr %99, align 4
  %185 = icmp eq i32 %184, %110
  br i1 %185, label %227, label %192

186:                                              ; preds = %176
  %187 = load i32, ptr %97, align 4
  %188 = icmp eq i32 %187, %110
  %189 = load i32, ptr %101, align 4
  %190 = icmp eq i32 %189, %110
  %191 = select i1 %188, i1 true, i1 %190
  br i1 %191, label %227, label %197

192:                                              ; preds = %183
  %193 = icmp eq i32 %108, 10
  br i1 %193, label %202, label %194

194:                                              ; preds = %192, %181
  %195 = load i32, ptr %101, align 4
  %196 = icmp eq i32 %195, %110
  br i1 %196, label %227, label %197

197:                                              ; preds = %194, %186
  %198 = icmp eq i32 %108, 11
  br i1 %198, label %210, label %199

199:                                              ; preds = %197
  %200 = load i32, ptr %102, align 4
  %201 = icmp eq i32 %200, %110
  br i1 %201, label %227, label %208

202:                                              ; preds = %192
  %203 = load i32, ptr %100, align 4
  %204 = icmp eq i32 %203, %110
  %205 = load i32, ptr %104, align 4
  %206 = icmp eq i32 %205, %110
  %207 = select i1 %204, i1 true, i1 %206
  br i1 %207, label %227, label %213

208:                                              ; preds = %199
  %209 = icmp eq i32 %108, 12
  br i1 %209, label %218, label %210

210:                                              ; preds = %208, %197
  %211 = load i32, ptr %104, align 4
  %212 = icmp eq i32 %211, %110
  br i1 %212, label %227, label %213

213:                                              ; preds = %210, %202
  %214 = icmp eq i32 %108, 13
  br i1 %214, label %223, label %215

215:                                              ; preds = %213
  %216 = load i32, ptr %105, align 4
  %217 = icmp eq i32 %216, %110
  br i1 %217, label %227, label %221

218:                                              ; preds = %208
  %219 = load i32, ptr %103, align 4
  %220 = icmp eq i32 %219, %110
  br i1 %220, label %227, label %223

221:                                              ; preds = %215
  %222 = icmp eq i32 %108, 14
  br i1 %222, label %226, label %223

223:                                              ; preds = %221, %218, %213
  %224 = load i32, ptr %106, align 4
  %225 = icmp eq i32 %224, %110
  br i1 %225, label %227, label %226

226:                                              ; preds = %223, %221
  br label %227

227:                                              ; preds = %226, %223, %218, %215, %210, %202, %199, %194, %186, %183, %178, %170, %167, %162, %154, %151, %146, %138, %135, %130, %122, %119, %114
  %228 = phi i32 [ 128, %114 ], [ 128, %119 ], [ 128, %130 ], [ 128, %135 ], [ 128, %146 ], [ 128, %151 ], [ 128, %162 ], [ 128, %167 ], [ 128, %178 ], [ 128, %183 ], [ 128, %194 ], [ 128, %199 ], [ 128, %210 ], [ 128, %215 ], [ 128, %223 ], [ 0, %226 ], [ 128, %122 ], [ 128, %138 ], [ 128, %154 ], [ 128, %170 ], [ 128, %186 ], [ 128, %202 ], [ 128, %218 ]
  %229 = load ptr, ptr %48, align 4
  %230 = call noalias ptr @devm_kmalloc(ptr noundef %229, i32 noundef 220, i32 noundef 3520) #11
  %231 = icmp eq ptr %230, null
  br i1 %231, label %259, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.virt_dma_chan, ptr %230, i32 0, i32 2
  store ptr @bcm2835_dma_desc_free, ptr %233, align 4
  call void @vchan_init(ptr noundef nonnull %230, ptr noundef %17) #11
  %234 = load ptr, ptr %31, align 4
  %235 = shl i32 %108, 8
  %236 = getelementptr i8, ptr %234, i32 %235
  %237 = getelementptr inbounds %struct.bcm2835_chan, ptr %230, i32 0, i32 6
  store ptr %236, ptr %237, align 4
  %238 = getelementptr inbounds %struct.bcm2835_chan, ptr %230, i32 0, i32 3
  store i32 %108, ptr %238, align 4
  %239 = getelementptr inbounds %struct.bcm2835_chan, ptr %230, i32 0, i32 7
  store i32 %110, ptr %239, align 4
  %240 = getelementptr inbounds %struct.bcm2835_chan, ptr %230, i32 0, i32 8
  store i32 %228, ptr %240, align 4
  %241 = getelementptr i8, ptr %236, i32 32
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #11, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %243 = and i32 %242, 268435456
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %232
  %246 = getelementptr inbounds %struct.bcm2835_chan, ptr %230, i32 0, i32 9
  store i8 1, ptr %246, align 4
  br label %247

247:                                              ; preds = %245, %232, %107
  %248 = add nuw nsw i32 %108, 1
  %249 = icmp eq i32 %248, 15
  br i1 %249, label %250, label %107

250:                                              ; preds = %247
  %251 = load ptr, ptr %58, align 8
  %252 = call i32 @of_dma_controller_register(ptr noundef %251, ptr noundef nonnull @bcm2835_dma_xlate, ptr noundef nonnull %17) #11
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #12
  br label %259

255:                                              ; preds = %250
  %256 = call i32 @dma_async_device_register(ptr noundef nonnull %17) #11
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %274, label %258

258:                                              ; preds = %255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %256) #12
  br label %259

259:                                              ; preds = %258, %254, %227, %62
  %260 = phi i32 [ -22, %62 ], [ %252, %254 ], [ %256, %258 ], [ -12, %227 ]
  %261 = load ptr, ptr %49, align 4
  %262 = icmp eq ptr %261, %49
  br i1 %262, label %271, label %263

263:                                              ; preds = %263, %259
  %264 = phi ptr [ %265, %263 ], [ %261, %259 ]
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.list_head, ptr %264, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  store ptr %267, ptr %268, align 4
  store volatile ptr %265, ptr %267, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %264, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %266, align 4
  %269 = getelementptr i8, ptr %264, i32 32
  call void @tasklet_kill(ptr noundef %269) #11
  %270 = icmp eq ptr %265, %49
  br i1 %270, label %271, label %263

271:                                              ; preds = %263, %259
  %272 = load ptr, ptr %48, align 4
  %273 = load i32, ptr %54, align 4
  call void @dma_unmap_page_attrs(ptr noundef %272, i32 noundef %273, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #11
  br label %274

274:                                              ; preds = %271, %255, %56, %28, %15, %14
  %275 = phi i32 [ %12, %14 ], [ %29, %28 ], [ -12, %56 ], [ %260, %271 ], [ -12, %15 ], [ 0, %255 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #11
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @dma_async_device_unregister(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %13 = getelementptr i8, ptr %8, i32 32
  tail call void @tasklet_kill(ptr noundef %13) #11
  %14 = icmp eq ptr %9, %4
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcm2835_dmadev, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef 4096, i32 noundef 1, i32 noundef 32) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %6, %1 ]
  %12 = tail call ptr @dma_pool_create(ptr noundef %11, ptr noundef %4, i32 noundef 32, i32 noundef 32, i32 noundef 0) #11
  %13 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #12
  br label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @bcm2835_dma_callback, ptr noundef null, i32 noundef %20, ptr noundef nonnull @.str.10, ptr noundef %0) #11
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi i32 [ %21, %16 ], [ -12, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %61 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = call ptr @free_irq(i32 noundef %62, ptr noundef %0) #11
  %64 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  call void @dma_pool_destroy(ptr noundef %65) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
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
  br i1 %19, label %88, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %88, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #11
  %28 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %28, i32 84
  %32 = load i32, ptr %31, align 4
  br label %85

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %85, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bcm2835_desc, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bcm2835_desc, ptr %35, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %54 [
    i32 1, label %44
    i32 2, label %49
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  br label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %54

54:                                               ; preds = %49, %44, %41
  %55 = phi i32 [ %48, %44 ], [ %53, %49 ], [ 0, %41 ]
  %56 = getelementptr inbounds %struct.bcm2835_desc, ptr %35, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %42, align 4
  %61 = icmp eq i32 %60, 2
  br label %62

62:                                               ; preds = %81, %59
  %63 = phi i32 [ 0, %59 ], [ %82, %81 ]
  %64 = phi i32 [ 0, %59 ], [ %83, %81 ]
  %65 = getelementptr %struct.bcm2835_desc, ptr %35, i32 0, i32 6, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %66, i32 0, i32 2
  %70 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %66, i32 0, i32 1
  %71 = select i1 %61, ptr %69, ptr %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %63, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %62
  %75 = add i32 %68, %63
  br label %81

76:                                               ; preds = %62
  %77 = icmp ugt i32 %72, %55
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = add i32 %72, %68
  %80 = tail call i32 @llvm.usub.sat.i32(i32 %79, i32 %55) #11
  br label %81

81:                                               ; preds = %78, %76, %74
  %82 = phi i32 [ %75, %74 ], [ 0, %76 ], [ %80, %78 ]
  %83 = add nuw i32 %64, 1
  %84 = icmp eq i32 %83, %57
  br i1 %84, label %85, label %62

85:                                               ; preds = %81, %54, %37, %33, %30
  %86 = phi i32 [ %32, %30 ], [ 0, %54 ], [ 0, %37 ], [ 0, %33 ], [ %82, %81 ]
  %87 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %86, ptr %87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #11
  br label %88

88:                                               ; preds = %85, %21, %17
  %89 = phi i1 [ true, %85 ], [ %20, %17 ], [ %24, %21 ]
  %90 = zext i1 %89 to i32
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
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
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, %5
  %24 = getelementptr i8, ptr %22, i32 -68
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr null, ptr %18, align 4
  br label %40

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %33 = getelementptr i8, ptr %22, i32 -72
  store ptr %33, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr i8, ptr %22, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %35) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %39 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #11, !srcloc !15
  br label %40

40:                                               ; preds = %28, %27, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4, !range !17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1073741824, i32 65532
  %12 = add i32 %4, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.bcm2835_dma_prep_dma_cyclic) #12
  br label %102

17:                                               ; preds = %6
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.bcm2835_dma_prep_dma_cyclic) #12
  br label %102

22:                                               ; preds = %17
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %2, i32 %3
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i32
  %28 = urem i32 %2, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load i1, ptr @bcm2835_dma_prep_dma_cyclic.__print_once, align 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  store i1 true, ptr @bcm2835_dma_prep_dma_cyclic.__print_once, align 1
  %33 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bcm2835_dma_prep_dma_cyclic, i32 noundef %2, i32 noundef %25) #12
  br label %35

35:                                               ; preds = %32, %30, %22
  %36 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = shl i32 %37, 16
  %40 = and i32 %39, 2031616
  %41 = or i32 %40, 8
  %42 = select i1 %38, i32 8, i32 %41
  %43 = icmp eq i32 %4, 2
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %102

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %42, 1040
  br label %68

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %42, 320
  %60 = getelementptr inbounds %struct.bcm2835_dmadev, ptr %7, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %1
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8, ptr %8, align 4, !range !17
  %65 = icmp eq i8 %64, 0
  %66 = or i32 %42, 2368
  %67 = select i1 %65, i32 %66, i32 %59
  br label %68

68:                                               ; preds = %63, %56, %48
  %69 = phi i32 [ %50, %48 ], [ %1, %56 ], [ %1, %63 ]
  %70 = phi i32 [ %1, %48 ], [ %58, %56 ], [ %58, %63 ]
  %71 = phi i32 [ %51, %48 ], [ %59, %56 ], [ %67, %63 ]
  %72 = add i32 %25, -1
  %73 = add i32 %72, %2
  %74 = udiv i32 %73, %25
  %75 = add i32 %72, %11
  %76 = udiv i32 %75, %11
  %77 = mul i32 %76, %74
  %78 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %0, i32 noundef %4, i1 noundef zeroext true, i32 noundef %71, i32 noundef %27, i32 noundef %77, i32 noundef %69, i32 noundef %70, i32 noundef %2, i32 noundef %25, i32 noundef 2048)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 1, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  %86 = getelementptr %struct.bcm2835_desc, ptr %78, i32 0, i32 6, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %87, i32 0, i32 5
  store i32 %82, ptr %88, align 4
  %89 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %89, ptr noundef %0) #11
  %90 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 0, i32 1
  store i32 %5, ptr %90, align 4
  %91 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %91, align 4
  %92 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %92, align 4
  %93 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 1
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 1, i32 1
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %95) #11
  %97 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 2
  %98 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %99 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %100 = load ptr, ptr %99, align 4
  store ptr %97, ptr %99, align 4
  store ptr %98, ptr %97, align 4
  %101 = getelementptr inbounds %struct.bcm2835_desc, ptr %78, i32 0, i32 1, i32 2, i32 1
  store ptr %100, ptr %101, align 4
  store volatile ptr %97, ptr %100, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %96) #11
  br label %102

102:                                              ; preds = %80, %68, %52, %44, %19, %14
  %103 = phi ptr [ %89, %80 ], [ null, %19 ], [ null, %14 ], [ null, %44 ], [ null, %52 ], [ null, %68 ]
  ret ptr %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.bcm2835_dma_prep_slave_sg) #12
  br label %117

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = shl i32 %15, 16
  %18 = and i32 %17, 2031616
  %19 = or i32 %18, 8
  %20 = select i1 %16, i32 8, i32 %19
  %21 = icmp eq i32 %3, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %117

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  br label %36

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %117

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1, i32 2
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ 320, %33 ], [ 1040, %26 ]
  %38 = phi i32 [ 0, %33 ], [ %28, %26 ]
  %39 = phi i32 [ %35, %33 ], [ 0, %26 ]
  %40 = or i32 %20, %37
  %41 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 9
  %42 = load i8, ptr %41, align 4, !range !17
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 1073741824, i32 65532
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %36
  %47 = add nsw i32 %44, -1
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ 0, %46 ], [ %57, %48 ]
  %50 = phi ptr [ %1, %46 ], [ %58, %48 ]
  %51 = phi i32 [ 0, %46 ], [ %56, %48 ]
  %52 = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %47, %53
  %55 = udiv i32 %54, %44
  %56 = add i32 %55, %51
  %57 = add nuw i32 %49, 1
  %58 = tail call ptr @sg_next(ptr noundef %50) #11
  %59 = icmp eq i32 %57, %2
  br i1 %59, label %60, label %48

60:                                               ; preds = %48, %36
  %61 = phi i32 [ 0, %36 ], [ %56, %48 ]
  %62 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %0, i32 noundef %3, i1 noundef zeroext false, i32 noundef %40, i32 noundef 1, i32 noundef %61, i32 noundef %38, i32 noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 2048)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %117, label %64

64:                                               ; preds = %60
  %65 = load i8, ptr %41, align 4, !range !17
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i32 1073741824, i32 65532
  br i1 %45, label %103, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 6
  br label %70

70:                                               ; preds = %98, %68
  %71 = phi ptr [ %99, %98 ], [ %69, %68 ]
  %72 = phi ptr [ %101, %98 ], [ %1, %68 ]
  %73 = phi i32 [ %100, %98 ], [ 0, %68 ]
  %74 = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %96, %80 ], [ %71, %77 ]
  %82 = phi i32 [ %95, %80 ], [ %75, %77 ]
  %83 = phi i32 [ %94, %80 ], [ %79, %77 ]
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %84, i32 0, i32 2
  %87 = select i1 %21, ptr %86, ptr %85
  store i32 %83, ptr %87, align 4
  %88 = tail call i32 @llvm.umin.i32(i32 %82, i32 %67) #11
  %89 = load ptr, ptr %81, align 4
  %90 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %89, i32 0, i32 3
  store i32 %88, ptr %90, align 4
  %91 = load ptr, ptr %81, align 4
  %92 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %83
  %95 = sub i32 %82, %93
  %96 = getelementptr %struct.bcm2835_cb_entry, ptr %81, i32 1
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %98, label %80

98:                                               ; preds = %80, %70
  %99 = phi ptr [ %71, %70 ], [ %96, %80 ]
  %100 = add nuw i32 %73, 1
  %101 = tail call ptr @sg_next(ptr noundef %72) #11
  %102 = icmp eq i32 %100, %2
  br i1 %102, label %103, label %70

103:                                              ; preds = %98, %64
  %104 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %104, ptr noundef %0) #11
  %105 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 0, i32 1
  store i32 %4, ptr %105, align 4
  %106 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %106, align 4
  %107 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %107, align 4
  %108 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 1
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 1, i32 1
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %110) #11
  %112 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 2
  %113 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %114 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %115 = load ptr, ptr %114, align 4
  store ptr %112, ptr %114, align 4
  store ptr %113, ptr %112, align 4
  %116 = getelementptr inbounds %struct.bcm2835_desc, ptr %62, i32 0, i32 1, i32 2, i32 1
  store ptr %115, ptr %116, align 4
  store volatile ptr %112, ptr %115, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %111) #11
  br label %117

117:                                              ; preds = %103, %60, %29, %22, %9
  %118 = phi ptr [ %104, %103 ], [ null, %9 ], [ null, %22 ], [ null, %29 ], [ null, %60 ]
  ret ptr %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp ne i32 %2, 0
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 4, !range !17
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 1073741824, i32 65532
  %16 = add i32 %3, -1
  %17 = add i32 %16, %15
  %18 = udiv i32 %17, %15
  %19 = tail call fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false, i32 noundef 272, i32 noundef 9, i32 noundef %18, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 3264)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %22, ptr noundef %0) #11
  %23 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 0, i32 1
  store i32 %4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 1, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 2
  %31 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %34 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 2, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %30, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #11
  br label %35

35:                                               ; preds = %21, %11, %5
  %36 = phi ptr [ %22, %21 ], [ null, %5 ], [ null, %11 ]
  ret ptr %36
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_dma_slave_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcm2835_desc, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.bcm2835_desc, ptr %7, i32 0, i32 1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bcm2835_desc, ptr %7, i32 0, i32 1, i32 2
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.bcm2835_desc, ptr %7, i32 0, i32 1, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %13, ptr %16, align 4
  %18 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  store ptr null, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %9
  store ptr null, ptr %6, align 4
  %23 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #11, !srcloc !15
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %36, %28
  %33 = phi i32 [ %34, %36 ], [ 10000, %28 ]
  %34 = add nsw i32 %33, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !22
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %32

40:                                               ; preds = %32
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.14) #12
  br label %44

44:                                               ; preds = %40, %36, %28
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -2147483648) #11, !srcloc !15
  br label %45

45:                                               ; preds = %44, %22, %1
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  store ptr %47, ptr %50, align 4
  store ptr %2, ptr %52, align 4
  store ptr %52, ptr %3, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %51, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %59, ptr %62, align 4
  store ptr %56, ptr %59, align 4
  store ptr %2, ptr %61, align 4
  store ptr %61, ptr %3, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %60, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %68, ptr %71, align 4
  store ptr %65, ptr %68, align 4
  store ptr %2, ptr %70, align 4
  store ptr %70, ptr %3, align 4
  store volatile ptr %64, ptr %64, align 4
  store ptr %64, ptr %69, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %74, ptr %77, align 4
  store ptr %2, ptr %79, align 4
  store ptr %79, ptr %3, align 4
  store volatile ptr %73, ptr %73, align 4
  store ptr %73, ptr %78, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %86, ptr %89, align 4
  store ptr %83, ptr %86, align 4
  store ptr %2, ptr %88, align 4
  store ptr %88, ptr %3, align 4
  store volatile ptr %82, ptr %82, align 4
  store ptr %82, ptr %87, align 4
  br label %90

90:                                               ; preds = %85, %81
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm2835_dma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm2835_chan, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %2
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_dma_callback(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_chan, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcm2835_chan, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %16 = getelementptr inbounds %struct.bcm2835_chan, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 5) #11, !srcloc !15
  %18 = getelementptr inbounds %struct.bcm2835_chan, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 5
  %23 = load i8, ptr %22, align 4, !range !17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1
  %27 = getelementptr inbounds %struct.bcm2835_desc, ptr %19, i32 0, i32 1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 9
  store ptr %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1, i32 1
  %31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %34) #11
  br label %79

35:                                               ; preds = %21
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %35
  %41 = load ptr, ptr %18, align 4
  %42 = getelementptr inbounds %struct.bcm2835_desc, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46, !prof !27

45:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.bcm2835_desc, ptr %41, i32 0, i32 1, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dma_chan, ptr %48, i32 0, i32 3
  store i32 %43, ptr %49, align 4
  store i32 0, ptr %42, align 4
  %50 = getelementptr inbounds %struct.bcm2835_desc, ptr %41, i32 0, i32 1, i32 2
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 7
  %52 = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 7, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %50, ptr %52, align 4
  store ptr %51, ptr %50, align 4
  %54 = getelementptr inbounds %struct.bcm2835_desc, ptr %41, i32 0, i32 1, i32 2, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %50, ptr %53, align 4
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 1, i32 1
  %56 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %59) #11
  br label %60

60:                                               ; preds = %58, %46
  %61 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  %64 = getelementptr i8, ptr %62, i32 -68
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store ptr null, ptr %18, align 4
  br label %79

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %62, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  %73 = getelementptr i8, ptr %62, i32 -72
  store ptr %73, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %74 = getelementptr i8, ptr %62, i32 28
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #11, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %78 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 1) #11, !srcloc !15
  br label %79

79:                                               ; preds = %68, %67, %35, %33, %25, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  br label %80

80:                                               ; preds = %79, %7
  %81 = phi i32 [ 1, %79 ], [ 0, %7 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bcm2835_dma_create_cb_chain(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #2 {
  %12 = zext i1 %2 to i8
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %127, label %14

14:                                               ; preds = %11
  %15 = or i32 %10, 256
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #11
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 96) #11
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef %15) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %127, label %23

23:                                               ; preds = %14
  store ptr %0, ptr %21, align 64
  %24 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 2
  store i32 %1, ptr %24, align 16
  %25 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 5
  store i8 %12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 5
  %27 = icmp eq i32 %8, 0
  %28 = select i1 %2, i32 %4, i32 0
  %29 = getelementptr inbounds %struct.bcm2835_chan, ptr %0, i32 0, i32 9
  %30 = icmp eq i32 %9, 0
  %31 = or i32 %28, %3
  %32 = and i32 %3, 256
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %3, 16
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 4
  %37 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 3
  br label %38

38:                                               ; preds = %86, %23
  %39 = phi i32 [ 0, %23 ], [ %98, %86 ]
  %40 = phi i32 [ %8, %23 ], [ %71, %86 ]
  %41 = phi i32 [ %6, %23 ], [ %87, %86 ]
  %42 = phi i32 [ %7, %23 ], [ %93, %86 ]
  %43 = phi i32 [ 0, %23 ], [ %70, %86 ]
  %44 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %39
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %39, i32 1
  %47 = tail call ptr @dma_pool_alloc(ptr noundef %45, i32 noundef %10, ptr noundef %46) #11
  store ptr %47, ptr %44, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %110, label %49

49:                                               ; preds = %38
  store i32 %3, ptr %47, align 4
  %50 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 1
  store i32 %41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 2
  store i32 %42, ptr %51, align 4
  %52 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 4
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 5
  store i32 0, ptr %53, align 4
  br i1 %27, label %69, label %54

54:                                               ; preds = %49
  %55 = load i8, ptr %29, align 4, !range !17
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 1073741824, i32 65532
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %40) #11
  %59 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  br i1 %30, label %65, label %60

60:                                               ; preds = %54
  %61 = add i32 %58, %43
  %62 = icmp ult i32 %61, %9
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = sub i32 %9, %43
  store i32 %64, ptr %59, align 4
  store i32 %31, ptr %47, align 4
  br label %65

65:                                               ; preds = %63, %60, %54
  %66 = phi i32 [ %58, %54 ], [ %64, %63 ], [ %58, %60 ]
  %67 = phi i32 [ %43, %54 ], [ 0, %63 ], [ %61, %60 ]
  %68 = sub i32 %40, %66
  br label %69

69:                                               ; preds = %65, %49
  %70 = phi i32 [ %43, %49 ], [ %67, %65 ]
  %71 = phi i32 [ %40, %49 ], [ %68, %65 ]
  %72 = icmp eq i32 %39, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %46, align 4
  %75 = add i32 %39, -1
  %76 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %75
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %77, i32 0, i32 5
  store i32 %74, ptr %78, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = icmp eq i32 %41, 0
  %81 = or i1 %80, %33
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, %41
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %85, %82 ], [ %41, %79 ]
  %88 = icmp eq i32 %42, 0
  %89 = or i1 %88, %35
  %90 = getelementptr inbounds %struct.bcm2835_dma_cb, ptr %47, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = select i1 %89, i32 0, i32 %91
  %93 = add i32 %42, %92
  %94 = load i32, ptr %36, align 8
  %95 = add i32 %94, %91
  store i32 %95, ptr %36, align 8
  %96 = load i32, ptr %37, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %37, align 4
  %98 = add nuw i32 %39, 1
  %99 = icmp eq i32 %98, %5
  br i1 %99, label %100, label %38

100:                                              ; preds = %86
  %101 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %96
  %102 = load ptr, ptr %101, align 8
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, %4
  store i32 %104, ptr %102, align 4
  %105 = icmp eq i32 %8, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 4
  %108 = load i32, ptr %107, align 8
  %109 = icmp eq i32 %108, %8
  br i1 %109, label %127, label %110

110:                                              ; preds = %106, %38
  %111 = getelementptr inbounds %struct.bcm2835_desc, ptr %21, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %114, %110
  %115 = phi i32 [ %123, %114 ], [ 0, %110 ]
  %116 = load ptr, ptr %21, align 64
  %117 = getelementptr inbounds %struct.bcm2835_chan, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %115
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr %struct.bcm2835_desc, ptr %21, i32 0, i32 6, i32 %115, i32 1
  %122 = load i32, ptr %121, align 4
  tail call void @dma_pool_free(ptr noundef %118, ptr noundef %120, i32 noundef %122) #11
  %123 = add nuw i32 %115, 1
  %124 = load i32, ptr %111, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %114, label %126

126:                                              ; preds = %114, %110
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %127

127:                                              ; preds = %126, %106, %100, %14, %11
  %128 = phi ptr [ null, %126 ], [ null, %11 ], [ null, %14 ], [ %21, %106 ], [ %21, %100 ]
  ret ptr %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_desc_free(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 80
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %15, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.bcm2835_chan, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.bcm2835_desc, ptr %2, i32 0, i32 6, i32 %7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.bcm2835_desc, ptr %2, i32 0, i32 6, i32 %7, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @dma_pool_free(ptr noundef %10, ptr noundef %12, i32 noundef %14) #11
  %15 = add nuw i32 %7, 1
  %16 = load i32, ptr %3, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %6, label %18

18:                                               ; preds = %6, %1
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 5030682}
!10 = !{i64 2153112072}
!11 = !{i64 2153040938}
!12 = !{i64 2153105189}
!13 = !{i64 2153105534}
!14 = !{i64 2153100241}
!15 = !{i64 5030264}
!16 = !{i64 2153100702}
!17 = !{i8 0, i8 2}
!18 = !{i64 2153097905}
!19 = !{i64 2153098092}
!20 = !{i64 2153098552}
!21 = !{i64 2153098880}
!22 = !{i64 2153098722}
!23 = !{i64 2153099843}
!24 = !{i64 2153101237}
!25 = !{i64 2153102083}
!26 = !{i64 2153102667}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153040002, i64 2153040489, i64 2153040039, i64 2153040095, i64 2153040129, i64 2153040153, i64 2153040194, i64 2153040215, i64 2153040243, i64 2153040277}
