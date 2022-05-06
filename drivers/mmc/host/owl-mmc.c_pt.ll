; ModuleID = '/llk/IR/drivers/mmc/host/owl-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/owl-mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.owl_mmc_host = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.spinlock, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, %struct.completion, ptr, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_owl_mmc__265_699_owl_mmc_driver_init6 = internal global ptr @owl_mmc_driver_init, section ".initcall6.init", align 4
@owl_mmc_driver = internal global %struct.platform_driver { ptr @owl_mmc_probe, ptr @owl_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @owl_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_owl_mmc_driver_exit = internal global ptr @owl_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description266 = internal constant [56 x i8] c"owl_mmc.description=Actions Semi Owl SoCs SD/MMC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [28 x i8] c"owl_mmc.author=Actions Semi\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [72 x i8] c"owl_mmc.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [38 x i8] c"owl_mmc.file=drivers/mmc/host/owl-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [20 x i8] c"owl_mmc.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"owl_mmc\00", align 1
@owl_mmc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,owl-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mmc alloc host failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No clock defined\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not get reset control\0A\00", align 1
@owl_mmc_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @owl_mmc_request, ptr null, ptr @owl_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr @owl_mmc_start_signal_voltage_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to get external DMA channel.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Using %s for DMA transfers\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to request irq %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Failed to add host\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"CMD interrupt timeout\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"DMA interrupt timeout\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Can't prepare slave sg\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Unknown MMC command\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Error CMD_NO_RSP\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Error CMD_RSP_CRC\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"drivers/mmc/host/owl-mmc.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"SD clock rate not supported\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_owl_mmc_driver_exit, ptr @__initcall__kmod_owl_mmc__265_699_owl_mmc_driver_init6, ptr @owl_mmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_mmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_mmc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @owl_mmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_mmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_mmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @mmc_alloc_host(i32 noundef 140, ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %101

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.owl_mmc_host, ptr %8, i32 0, i32 14
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = ptrtoint ptr %12 to i32
  br label %99

17:                                               ; preds = %6
  %18 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %19 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %22 = load ptr, ptr %19, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %99

24:                                               ; preds = %17
  %25 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %26 = getelementptr inbounds %struct.owl_mmc_host, ptr %8, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %99

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  store ptr @owl_mmc_ops, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  store i32 512, ptr %33, align 8
  %34 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 24
  store i32 512, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 21
  store i16 256, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 20
  store i32 262144, ptr %36, align 8
  %37 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 23
  store i32 262144, ptr %37, align 16
  %38 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  store i32 100000, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  store i32 52000000, ptr %39, align 16
  %40 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 7
  store i32 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  store i32 524289, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 8
  store i32 3145856, ptr %44, align 8
  %45 = tail call i32 @mmc_of_parse(ptr noundef nonnull %3) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %48, align 8
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %48, ptr %49, align 4
  %50 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %51 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.5) #6
  %55 = load ptr, ptr %51, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %99

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.dma_chan, ptr %50, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ %61, %57 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %67) #6
  %68 = load i32, ptr %11, align 4
  %69 = add i32 %68, 40
  %70 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 6
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %11, align 4
  %72 = add i32 %71, 40
  %73 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 7
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 8
  store i32 4, ptr %74, align 4
  %75 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 9
  store i32 4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 10
  store i8 0, ptr %76, align 4
  %77 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %78 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 6
  store i32 %77, ptr %78, align 4
  %79 = icmp slt i32 %77, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load ptr, ptr %2, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi ptr [ %85, %84 ], [ %82, %80 ]
  %88 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %77, ptr noundef nonnull @owl_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %87, ptr noundef %8) #5
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %91) #6
  br label %96

92:                                               ; preds = %86
  %93 = tail call i32 @mmc_add_host(ptr noundef nonnull %3) #5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  br label %96

96:                                               ; preds = %95, %90, %66
  %97 = phi i32 [ %88, %90 ], [ %93, %95 ], [ -22, %66 ]
  %98 = load ptr, ptr %51, align 4
  tail call void @dma_release_channel(ptr noundef %98) #5
  br label %99

99:                                               ; preds = %96, %53, %31, %28, %21, %15
  %100 = phi i32 [ %16, %15 ], [ %23, %21 ], [ %30, %28 ], [ %45, %31 ], [ %56, %53 ], [ %97, %96 ]
  tail call void @mmc_free_host(ptr noundef nonnull %3) #5
  br label %101

101:                                              ; preds = %99, %92, %5
  %102 = phi i32 [ %100, %99 ], [ -12, %5 ], [ 0, %92 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_mmc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_remove_host(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @dma_release_channel(ptr noundef %7) #5
  tail call void @mmc_free_host(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.owl_mmc_host, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.owl_mmc_host, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %14 = or i32 %13, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !12
  %17 = getelementptr inbounds %struct.owl_mmc_host, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %10, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_mmc_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  store ptr %1, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %94, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %13 = or i32 %12, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !12
  %22 = load i32, ptr %18, align 4
  %23 = load i32, ptr %14, align 4
  %24 = mul i32 %23, %22
  %25 = icmp ult i32 %24, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i8, ptr %26, i32 52
  br i1 %25, label %28, label %29

28:                                               ; preds = %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #5, !srcloc !12
  br label %30

29:                                               ; preds = %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 512) #5, !srcloc !12
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 2, i32 1
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 5
  store i32 %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @dma_map_sg_attrs(ptr noundef %42, ptr noundef %44, i32 noundef %46, i32 noundef %35, i32 noundef 0) #5
  %48 = load ptr, ptr %38, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 44
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = tail call i32 %51(ptr noundef %48, ptr noundef %37) #5
  %55 = load ptr, ptr %38, align 4
  br label %56

56:                                               ; preds = %53, %30
  %57 = phi ptr [ %48, %30 ], [ %55, %53 ]
  %58 = load ptr, ptr %43, align 4
  %59 = load i32, ptr %45, align 4
  %60 = load i32, ptr %37, align 4
  %61 = icmp eq ptr %57, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %57, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 39
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %62, %56
  %70 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 4
  store ptr null, ptr %70, align 4
  br label %75

71:                                               ; preds = %65
  %72 = tail call ptr %67(ptr noundef nonnull %57, ptr noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef 3, ptr noundef null) #5
  %73 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 4
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %69
  %76 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.11) #6
  %77 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  store i32 -16, ptr %77, align 4
  br label %142

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  store ptr %5, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %72, i32 0, i32 6
  store ptr @owl_mmc_dma_complete, ptr %80, align 4
  %81 = load ptr, ptr %73, align 4
  %82 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 8
  store ptr %3, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1, i32 1
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2
  tail call void @__init_swait_queue_head(ptr noundef %85, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #5
  %86 = load ptr, ptr %73, align 4
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 %88(ptr noundef %86) #5
  %90 = load ptr, ptr %38, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 50
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %90) #5
  br label %94

94:                                               ; preds = %78, %2
  %95 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call fastcc void @owl_mmc_send_cmd(ptr noundef %3, ptr noundef %96, ptr noundef %5)
  %97 = icmp eq ptr %5, null
  br i1 %97, label %142, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %100 = tail call i32 @wait_for_completion_timeout(ptr noundef %99, i32 noundef 1000) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.9) #6
  %104 = load ptr, ptr %95, align 4
  %105 = getelementptr inbounds %struct.mmc_command, ptr %104, i32 0, i32 5
  store i32 -110, ptr %105, align 4
  %106 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 47
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %142, label %112

112:                                              ; preds = %102
  %113 = tail call i32 %110(ptr noundef %107) #5
  br label %142

114:                                              ; preds = %98
  %115 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1, i32 1
  %116 = tail call i32 @wait_for_completion_timeout(ptr noundef %115, i32 noundef 500) #5
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.10) #6
  %120 = load ptr, ptr %95, align 4
  %121 = getelementptr inbounds %struct.mmc_command, ptr %120, i32 0, i32 5
  store i32 -110, ptr %121, align 4
  %122 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 47
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %118
  %129 = tail call i32 %126(ptr noundef %123) #5
  br label %142

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 8
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call fastcc void @owl_mmc_send_cmd(ptr noundef %3, ptr noundef nonnull %132, ptr noundef null)
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = mul i32 %139, %137
  %141 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  store i32 %140, ptr %141, align 4
  br label %142

142:                                              ; preds = %135, %128, %118, %112, %102, %94, %75
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr inbounds %struct.mmc_request, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %143, null
  br i1 %146, label %147, label %148, !prof !21

147:                                              ; preds = %142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 160, i32 noundef 9, ptr noundef null) #5
  br label %148

148:                                              ; preds = %147, %142
  store ptr null, ptr %6, align 4
  %149 = icmp eq ptr %145, null
  br i1 %149, label %162, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 15
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.mmc_data, ptr %145, i32 0, i32 12
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.mmc_data, ptr %145, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  %161 = load i32, ptr %160, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %155, ptr noundef %157, i32 noundef %159, i32 noundef %161, i32 noundef 0) #5
  br label %162

162:                                              ; preds = %150, %148
  %163 = getelementptr inbounds %struct.owl_mmc_host, ptr %3, i32 0, i32 14
  %164 = load ptr, ptr %163, align 4
  tail call void @mmc_request_done(ptr noundef %164, ptr noundef %143) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_mmc_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  switch i8 %5, label %46 [
    i8 1, label %6
    i8 2, label %24
    i8 0, label %43
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.owl_mmc_host, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #5
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #5
  %11 = load ptr, ptr %7, align 4
  %12 = tail call i32 @reset_control_deassert(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = tail call i32 @clk_enable(ptr noundef %14) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %21

21:                                               ; preds = %20, %17, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1152) #5, !srcloc !12
  br label %46

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  tail call void @__init_swait_queue_head(ptr noundef %26, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #5
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %31 = or i32 %30, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #5, !srcloc !12
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %35 = and i32 %34, 16711680
  %36 = or i32 %35, 1416
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !12
  %39 = tail call i32 @wait_for_completion_timeout(ptr noundef %25, i32 noundef 100) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9) #6
  br label %46

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_disable(ptr noundef %45) #5
  tail call void @clk_unprepare(ptr noundef %45) #5
  br label %117

46:                                               ; preds = %41, %24, %21, %2
  %47 = load i32, ptr %1, align 4
  %48 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  %51 = icmp eq i32 %47, 0
  %52 = or i1 %51, %50
  br i1 %52, label %94, label %53

53:                                               ; preds = %46
  store i32 %47, ptr %48, align 4
  %54 = load i32, ptr %1, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %59 = and i32 %58, -16711681
  %60 = icmp ult i32 %54, 1000001
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %62 = or i32 %58, 16711680
  %63 = load ptr, ptr %55, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #5, !srcloc !12
  br label %87

65:                                               ; preds = %53
  %66 = icmp ult i32 %54, 26000001
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %68 = or i32 %59, 11141120
  %69 = load ptr, ptr %55, align 4
  %70 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #5, !srcloc !12
  br label %87

71:                                               ; preds = %65
  %72 = icmp ult i32 %54, 52000001
  br i1 %72, label %73, label %85

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  %75 = load i8, ptr %74, align 4, !range !28
  %76 = icmp eq i8 %75, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = or i32 %59, 10027008
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #5, !srcloc !12
  br label %87

81:                                               ; preds = %73
  %82 = or i32 %59, 11010048
  %83 = load ptr, ptr %55, align 4
  %84 = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #5, !srcloc !12
  br label %87

85:                                               ; preds = %71
  %86 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.17) #6
  br label %94

87:                                               ; preds = %81, %77, %67, %61
  %88 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = shl nuw nsw i32 %54, 1
  %91 = tail call i32 @clk_round_rate(ptr noundef %89, i32 noundef %90) #5
  %92 = load ptr, ptr %88, align 4
  %93 = tail call i32 @clk_set_rate(ptr noundef %92, i32 noundef %91) #5
  br label %94

94:                                               ; preds = %87, %85, %46
  %95 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %98 = and i32 %97, -4
  %99 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %100 = load i8, ptr %99, align 1
  switch i8 %100, label %105 [
    i8 3, label %103
    i8 2, label %101
  ]

101:                                              ; preds = %94
  %102 = or i32 %98, 1
  br label %105

103:                                              ; preds = %94
  %104 = or i32 %98, 2
  br label %105

105:                                              ; preds = %103, %101, %94
  %106 = phi i32 [ %98, %94 ], [ %102, %101 ], [ %104, %103 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %107 = load ptr, ptr %95, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %106) #5, !srcloc !12
  %108 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, 7
  %111 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  br i1 %110, label %112, label %116

112:                                              ; preds = %105
  store i8 1, ptr %111, align 4
  %113 = load ptr, ptr %95, align 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %115 = or i32 %114, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %115) #5, !srcloc !12
  br label %117

116:                                              ; preds = %105
  store i8 0, ptr %111, align 4
  br label %117

117:                                              ; preds = %116, %112, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_mmc_start_signal_voltage_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %15 [
    i8 0, label %5
    i8 1, label %10
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %9 = and i32 %8, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #5, !srcloc !12
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %14 = or i32 %13, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #5, !srcloc !12
  br label %15

15:                                               ; preds = %10, %5, %2
  %16 = phi i32 [ -524, %2 ], [ 0, %10 ], [ 0, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_mmc_send_cmd(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 4
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #5
  %6 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  switch i32 %8, label %20 [
    i32 0, label %23
    i32 21, label %9
    i32 29, label %17
    i32 7, label %18
    i32 1, label %19
  ]

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 5, i32 4
  br label %23

17:                                               ; preds = %3
  br label %23

18:                                               ; preds = %3
  br label %23

19:                                               ; preds = %3
  br label %23

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.13) #6
  %22 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -22, ptr %22, align 4
  br label %106

23:                                               ; preds = %19, %18, %17, %11, %9, %3
  %24 = phi i32 [ 16, %19 ], [ 17, %18 ], [ 17, %17 ], [ %8, %3 ], [ 17, %9 ], [ 17, %11 ]
  %25 = phi i32 [ 1, %19 ], [ 2, %18 ], [ 3, %17 ], [ %8, %3 ], [ 1, %9 ], [ %16, %11 ]
  %26 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %30 = and i32 %29, 16711680
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %31 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %35 = load i32, ptr %1, align 4
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #5, !srcloc !12
  %38 = icmp eq ptr %2, null
  %39 = select i1 %38, i32 128, i32 1677721792
  %40 = or i32 %25, %39
  %41 = or i32 %40, %30
  %42 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 16
  store ptr %1, ptr %42, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #5, !srcloc !12
  br i1 %38, label %45, label %106

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 30000, i32 %47
  %50 = tail call i32 @__msecs_to_jiffies(i32 noundef %49) #5
  %51 = tail call i32 @wait_for_completion_timeout(ptr noundef %4, i32 noundef %50) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.9) #6
  %55 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -110, ptr %55, align 4
  br label %106

56:                                               ; preds = %45
  %57 = load ptr, ptr %26, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %60 = load i32, ptr %6, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %106, label %63

63:                                               ; preds = %56
  %64 = and i32 %59, %24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = and i32 %59, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.14) #6
  %71 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -84, ptr %71, align 4
  br label %106

72:                                               ; preds = %66
  %73 = and i32 %59, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.15) #6
  %77 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -84, ptr %77, align 4
  br label %106

78:                                               ; preds = %72, %63
  %79 = and i32 %60, 2
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %26, align 4
  %82 = getelementptr i8, ptr %81, i32 20
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  br i1 %80, label %98, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %86 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  store i32 %83, ptr %86, align 4
  %87 = load ptr, ptr %26, align 4
  %88 = getelementptr i8, ptr %87, i32 24
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %90 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %26, align 4
  %92 = getelementptr i8, ptr %91, i32 28
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %94 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %93, ptr %94, align 4
  %95 = load ptr, ptr %26, align 4
  %96 = getelementptr i8, ptr %95, i32 32
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !38
  store i32 %97, ptr %85, align 4
  br label %106

98:                                               ; preds = %78
  %99 = load ptr, ptr %26, align 4
  %100 = getelementptr i8, ptr %99, i32 24
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !39
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %83, i32 24)
  %103 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  store i32 %102, ptr %103, align 4
  %104 = lshr i32 %101, 8
  %105 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %98, %84, %75, %69, %56, %53, %23, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_mmc_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.owl_mmc_host, ptr %0, i32 0, i32 13
  tail call void @complete(ptr noundef %6) #5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 5059059}
!9 = !{i64 2153525620}
!10 = !{i64 2153526061}
!11 = !{i64 2153526343}
!12 = !{i64 5058641}
!13 = !{i64 2148895346}
!14 = !{i64 2148891170}
!15 = !{i64 2148891245, i64 2148891272, i64 2148891319, i64 2148891341, i64 2148891369, i64 2148891389}
!16 = !{i64 2148918349}
!17 = !{i64 2153524966}
!18 = !{i64 2153525140}
!19 = !{i64 2153535520}
!20 = !{i64 2153535879}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153546166}
!23 = !{i64 2153544172}
!24 = !{i64 2153544495}
!25 = !{i64 2153538943}
!26 = !{i64 2153539947}
!27 = !{i64 2153540502}
!28 = !{i8 0, i8 2}
!29 = !{i64 2153542801}
!30 = !{i64 2153543047}
!31 = !{i64 2153529198}
!32 = !{i64 2153529401}
!33 = !{i64 2153529752}
!34 = !{i64 2153530514}
!35 = !{i64 2153531568}
!36 = !{i64 2153533788}
!37 = !{i64 2153534147}
!38 = !{i64 2153534506}
!39 = !{i64 2153535224}
