; ModuleID = '/llk/IR/drivers/mmc/host/sh_mmcif.c_pt.bc'
source_filename = "../drivers/mmc/host/sh_mmcif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sh_mmcif_host = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i8, %struct.mutex, i32, ptr, ptr, %struct.completion, i8 }
%struct.sh_mmcif_plat_data = type { i32, i32, i8, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_sh_mmcif__268_1574_sh_mmcif_driver_init6 = internal global ptr @sh_mmcif_driver_init, section ".initcall6.init", align 4
@sh_mmcif_driver = internal global %struct.platform_driver { ptr @sh_mmcif_probe, ptr @sh_mmcif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sh_mmcif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mmcif_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sh_mmcif_driver_exit = internal global ptr @sh_mmcif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description269 = internal constant [62 x i8] c"sh_mmcif.description=SuperH on-chip MMC/eMMC interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [40 x i8] c"sh_mmcif.file=drivers/mmc/host/sh_mmcif\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [24 x i8] c"sh_mmcif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias272 = internal constant [33 x i8] c"sh_mmcif.alias=platform:sh_mmcif\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [57 x i8] c"sh_mmcif.author=Yusuke Goda <yusuke.goda.sx@renesas.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"sh_mmcif\00", align 1
@sh_mmcif_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-mmcif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sh_mmcif_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sh_mmcif_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @sh_mmcif_request, ptr null, ptr @sh_mmcif_set_ios, ptr null, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot get clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sh_mmc:error\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq error (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sh_mmc:int\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"request_irq error (sh_mmc:int)\0A\00", align 1
@sh_mmcif_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"&host->thread_lock\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Chip version 0x%04x, clock rate %luMHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unsupported response type.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unsupported bus width.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Platform OCR mask is ignored\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Timeout waiting for %u on CMD%u\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"Forced end of command sequence timeout err\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c" CRC error: state %u, wait %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c" Timeout: state %u, wait %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"drivers/mmc/host/sh_mmcif.c\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: NULL data in DMA completion!\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Error IRQ while waiting for DMA completion!\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"DMA timeout!\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"wait_for_completion_...() error %ld!\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"DMA failed: %d, falling back to PIO\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Unsupported CMD%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"unsupported stop cmd\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias272, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_sh_mmcif_driver_exit, ptr @__initcall__kmod_sh_mmcif__268_1574_sh_mmcif_driver_init6, ptr @sh_mmcif_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_mmcif_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mmcif_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_mmcif_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mmcif_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mmcif_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %6 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #8
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %169, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %169

13:                                               ; preds = %8
  %14 = tail call ptr @mmc_alloc_host(i32 noundef 160, ptr noundef %2) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @mmc_of_parse(ptr noundef nonnull %14) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %167, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 68
  store ptr %14, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 0, i32 4
  store ptr %9, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 0, i32 3
  store i32 1000, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sh_mmcif_host, ptr %20, i32 0, i32 19
  store i8 1, ptr %23, align 1
  %24 = getelementptr inbounds %struct.sh_mmcif_host, ptr %20, i32 0, i32 20
  store i8 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 0, i32 6
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 3
  store ptr @sh_mmcif_ops, ptr %27, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %14) #8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %28, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  br i1 %34, label %37, label %38

37:                                               ; preds = %31
  store i32 %36, ptr %32, align 8
  br label %42

38:                                               ; preds = %31
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %14, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.12) #9
  br label %42

42:                                               ; preds = %40, %38, %37, %19
  %43 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 514
  store i32 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 2621440
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 26
  store i32 10000, ptr %49, align 4
  %50 = icmp eq ptr %4, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %4, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = or i32 %53, %45
  store i32 %56, ptr %43, align 8
  br label %57

57:                                               ; preds = %55, %51, %42
  %58 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 21
  store i16 32, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 24
  store i32 512, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 23
  store i32 131072, ptr %60, align 16
  %61 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 25
  store i32 256, ptr %61, align 8
  %62 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 20
  store i32 131072, ptr %62, align 8
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %63, align 8
  %64 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = ptrtoint ptr %64 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %68) #9
  br label %167

69:                                               ; preds = %57
  %70 = tail call i32 @clk_prepare(ptr noundef %64) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = tail call i32 @clk_enable(ptr noundef %64) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  tail call void @clk_unprepare(ptr noundef %64) #8
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ %70, %69 ], [ %73, %75 ]
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %167, label %79

79:                                               ; preds = %76, %72
  %80 = load ptr, ptr %20, align 4
  %81 = getelementptr inbounds %struct.mmc_host, ptr %80, i32 0, i32 6
  %82 = load i32, ptr %81, align 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %79
  %85 = icmp ugt i32 %82, 2
  br i1 %85, label %86, label %96

86:                                               ; preds = %86, %84
  %87 = phi i32 [ %90, %86 ], [ %82, %84 ]
  %88 = load ptr, ptr %65, align 4
  %89 = lshr i32 %87, 1
  %90 = tail call i32 @clk_round_rate(ptr noundef %88, i32 noundef %89) #8
  %91 = icmp ne i32 %90, %87
  %92 = icmp ugt i32 %90, 2
  %93 = and i1 %91, %92
  br i1 %93, label %86, label %94

94:                                               ; preds = %86
  %95 = load ptr, ptr %20, align 4
  br label %96

96:                                               ; preds = %94, %84
  %97 = phi ptr [ %80, %84 ], [ %95, %94 ]
  %98 = phi i32 [ 0, %84 ], [ %90, %94 ]
  %99 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 11
  store i32 1023, ptr %99, align 4
  %100 = lshr i32 %82, 1
  %101 = getelementptr inbounds %struct.mmc_host, ptr %97, i32 0, i32 6
  store i32 %100, ptr %101, align 16
  %102 = load i32, ptr %99, align 4
  %103 = icmp eq i32 %102, 0
  %104 = tail call i32 @llvm.ctlz.i32(i32 %102, i1 false) #8, !range !8
  %105 = sub nuw nsw i32 32, %104
  %106 = select i1 %103, i32 0, i32 %105
  %107 = lshr i32 %98, %106
  br label %115

108:                                              ; preds = %79
  %109 = load ptr, ptr %65, align 4
  %110 = tail call i32 @clk_get_rate(ptr noundef %109) #8
  %111 = lshr i32 %110, 1
  %112 = load ptr, ptr %20, align 4
  %113 = getelementptr inbounds %struct.mmc_host, ptr %112, i32 0, i32 6
  store i32 %111, ptr %113, align 16
  %114 = lshr i32 %110, 9
  br label %115

115:                                              ; preds = %108, %96
  %116 = phi i32 [ %114, %108 ], [ %107, %96 ]
  %117 = load ptr, ptr %20, align 4
  %118 = getelementptr inbounds %struct.mmc_host, ptr %117, i32 0, i32 5
  store i32 %116, ptr %118, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %119 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 10, i32 1
  store i8 0, ptr %119, align 4
  %120 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 2
  store i32 -32, ptr %123, align 4
  %124 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 3
  store volatile ptr %124, ptr %124, align 4
  %125 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 4
  store ptr %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 5
  store ptr @sh_mmcif_timeout_work, ptr %126, align 4
  %127 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 6
  tail call void @init_timer_key(ptr noundef %127, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %20)
  %128 = load ptr, ptr %21, align 4
  %129 = getelementptr i8, ptr %128, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #8, !srcloc !9
  %130 = icmp slt i32 %6, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load ptr, ptr %2, align 4
  br label %137

137:                                              ; preds = %135, %131, %122
  %138 = phi ptr [ @.str.2, %122 ], [ %136, %135 ], [ %133, %131 ]
  %139 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %5, ptr noundef nonnull @sh_mmcif_intr, ptr noundef nonnull @sh_mmcif_irqt, i32 noundef 0, ptr noundef %138, ptr noundef %20) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %138) #9
  br label %163

142:                                              ; preds = %137
  %143 = icmp sgt i32 %6, -1
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  %145 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %6, ptr noundef nonnull @sh_mmcif_intr, ptr noundef nonnull @sh_mmcif_irqt, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %20) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  br label %163

148:                                              ; preds = %144, %142
  %149 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 1, i32 1, i32 10, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %149, ptr noundef nonnull @.str.6, ptr noundef nonnull @sh_mmcif_probe.__key) #8
  %150 = tail call i32 @mmc_add_host(ptr noundef nonnull %14) #8
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = tail call i32 @dev_pm_qos_expose_latency_limit(ptr noundef %2, i32 noundef 100) #8
  %154 = load ptr, ptr %21, align 4
  %155 = getelementptr i8, ptr %154, i32 124
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #8, !srcloc !10
  %157 = and i32 %156, 65535
  %158 = load ptr, ptr %65, align 4
  %159 = tail call i32 @clk_get_rate(ptr noundef %158) #8
  %160 = udiv i32 %159, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %157, i32 noundef %160) #9
  %161 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #8
  %162 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %162) #8
  tail call void @clk_unprepare(ptr noundef %162) #8
  br label %169

163:                                              ; preds = %148, %147, %141, %115
  %164 = phi i32 [ %120, %115 ], [ %139, %141 ], [ %145, %147 ], [ %150, %148 ]
  %165 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %165) #8
  tail call void @clk_unprepare(ptr noundef %165) #8
  %166 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  br label %167

167:                                              ; preds = %163, %76, %67, %16
  %168 = phi i32 [ %17, %16 ], [ %68, %67 ], [ %77, %76 ], [ %164, %163 ]
  tail call void @mmc_free_host(ptr noundef nonnull %14) #8
  br label %169

169:                                              ; preds = %167, %152, %13, %11, %1
  %170 = phi i32 [ %12, %11 ], [ %168, %167 ], [ %150, %152 ], [ -6, %1 ], [ -12, %13 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mmcif_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_mmcif_host, ptr %3, i32 0, i32 7
  store i8 1, ptr %4, align 2
  %5 = getelementptr inbounds %struct.sh_mmcif_host, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #8
  tail call void @dev_pm_qos_hide_latency_limit(ptr noundef %14) #8
  %16 = load ptr, ptr %3, align 4
  tail call void @mmc_remove_host(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.sh_mmcif_host, ptr %3, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #8, !srcloc !9
  %20 = getelementptr inbounds %struct.sh_mmcif_host, ptr %3, i32 0, i32 14
  %21 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %20) #8
  %22 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  %23 = load ptr, ptr %3, align 4
  tail call void @mmc_free_host(ptr noundef %23) #8
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mmcif_timeout_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = getelementptr i8, ptr %0, i32 -26
  %9 = load i8, ptr %8, align 2, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  br label %42

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %0, i32 -4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %20, i32 noundef %23) #9
  store i32 3, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  %24 = load i32, ptr %19, align 4
  switch i32 %24, label %39 [
    i32 1, label %25
    i32 8, label %29
    i32 2, label %34
    i32 3, label %34
    i32 4, label %34
    i32 5, label %34
    i32 6, label %34
    i32 7, label %34
  ]

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %2)
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 5
  store i32 %26, ptr %28, align 4
  br label %40

29:                                               ; preds = %18
  %30 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %2)
  %31 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  store i32 %30, ptr %33, align 4
  br label %40

34:                                               ; preds = %18, %18, %18, %18, %18, %18
  %35 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %2)
  %36 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 5
  store i32 %35, ptr %38, align 4
  br label %40

39:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1365, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

40:                                               ; preds = %34, %29, %25
  store i32 0, ptr %14, align 4
  store i32 0, ptr %19, align 4
  store ptr null, ptr %3, align 4
  %41 = load ptr, ptr %2, align 4
  tail call void @mmc_request_done(ptr noundef %41, ptr noundef %4) #8
  br label %42

42:                                               ; preds = %40, %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_sync_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2147483648) #8, !srcloc !9
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !9
  %10 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 1, !range !11
  %12 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 20
  %13 = load i8, ptr %12, align 2, !range !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 252641280) #8, !srcloc !9
  br label %18

18:                                               ; preds = %15, %1
  %19 = icmp eq i8 %11, 0
  %20 = and i32 %5, 17760256
  %21 = or i32 %20, 15
  %22 = select i1 %19, i32 %20, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %26 = or i32 %22, %25
  %27 = or i32 %26, 12272
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 28
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %33 = or i32 %32, 65536
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mmcif_intr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  %10 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 19
  %11 = load i8, ptr %10, align 1, !range !11
  %12 = icmp eq i8 %11, 0
  %13 = load ptr, ptr %3, align 4
  %14 = and i32 %9, %6
  %15 = xor i32 %14, -1
  br i1 %12, label %18, label %16

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !9
  br label %21

18:                                               ; preds = %2
  %19 = or i32 %15, 537395232
  %20 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #8, !srcloc !9
  br label %21

21:                                               ; preds = %18, %16
  %22 = and i32 %6, 133418815
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %23 = xor i32 %22, -1
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %27 = and i32 %26, %23
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !9
  %30 = and i32 %6, -133365761
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  store i8 1, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %21
  %35 = and i32 %6, -50331649
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  %39 = load i8, ptr %38, align 4, !range !11
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %43 = load i8, ptr %42, align 1, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %51 = icmp eq ptr %47, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.mmc_request, ptr %47, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64, !prof !17

56:                                               ; preds = %52, %45
  %57 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %50, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ %58, %56 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %63) #8
  br label %66

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 25
  tail call void @complete(ptr noundef %65) #8
  br label %66

66:                                               ; preds = %64, %62, %41, %37, %34
  %67 = phi i32 [ 2, %37 ], [ 1, %34 ], [ 1, %41 ], [ 1, %62 ], [ 1, %64 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mmcif_irqt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 11
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  %7 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 14
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %760, label %13

13:                                               ; preds = %2
  switch i32 %6, label %669 [
    i32 0, label %760
    i32 1, label %14
    i32 2, label %385
    i32 4, label %474
    i32 3, label %517
    i32 5, label %606
    i32 8, label %641
    i32 6, label %660
    i32 7, label %660
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %20 = load i8, ptr %19, align 1, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %16, align 4
  switch i32 %23, label %24 [
    i32 2, label %26
    i32 7, label %26
    i32 55, label %26
  ]

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  br label %26

26:                                               ; preds = %24, %22, %22, %22
  %27 = phi i32 [ %25, %24 ], [ -110, %22 ], [ -110, %22 ], [ -110, %22 ]
  %28 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  store i8 0, ptr %19, align 1
  br label %683

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  store i32 0, ptr %35, align 4
  br label %683

36:                                               ; preds = %29
  %37 = and i32 %31, 2
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  br i1 %38, label %57, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %40, i32 32
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !10
  %44 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr i8, ptr %45, i32 36
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !10
  %48 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 1
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr i8, ptr %49, i32 40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !10
  %52 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 2
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr i8, ptr %53, i32 44
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !10
  %56 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 3
  store i32 %55, ptr %56, align 4
  br label %61

57:                                               ; preds = %36
  %58 = getelementptr i8, ptr %40, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !10
  %60 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %57, %41
  %62 = icmp eq ptr %18, null
  br i1 %62, label %683, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 25
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %65, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #8
  %66 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %131, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 23
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %192, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %10, align 4
  %76 = getelementptr inbounds %struct.mmc_request, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.mmc_data, ptr %77, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.mmc_data, ptr %77, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @dma_map_sg_attrs(ptr noundef %85, ptr noundef %79, i32 noundef %87, i32 noundef 2, i32 noundef 0) #8
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  store i8 1, ptr %91, align 4
  %92 = load ptr, ptr %72, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dma_device, ptr %92, i32 0, i32 39
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %116, label %98

98:                                               ; preds = %94
  %99 = tail call ptr %96(ptr noundef nonnull %72, ptr noundef %79, i32 noundef %88, i32 noundef 2, i32 noundef 3, ptr noundef null) #8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %99, i32 0, i32 6
  store ptr @sh_mmcif_dma_complete, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %99, i32 0, i32 8
  store ptr %1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %99, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %105(ptr noundef nonnull %99) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %107 = load ptr, ptr %39, align 4
  %108 = getelementptr i8, ptr %107, i32 28
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %110 = or i32 %109, 16777216
  %111 = load ptr, ptr %39, align 4
  %112 = getelementptr i8, ptr %111, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #8, !srcloc !9
  %113 = load ptr, ptr %72, align 4
  %114 = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 50
  %115 = load ptr, ptr %114, align 4
  tail call void %115(ptr noundef nonnull %72) #8
  br label %192

116:                                              ; preds = %98, %94, %90, %74
  %117 = icmp sgt i32 %88, -1
  %118 = select i1 %117, i32 -5, i32 %88
  store ptr null, ptr %71, align 4
  %119 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  store i8 0, ptr %119, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %72) #8
  %120 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 24
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store ptr null, ptr %120, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %121) #8
  br label %124

124:                                              ; preds = %123, %116
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.23, i32 noundef %118) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %125 = load ptr, ptr %39, align 4
  %126 = getelementptr i8, ptr %125, i32 28
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %128 = and i32 %127, -50331649
  %129 = load ptr, ptr %39, align 4
  %130 = getelementptr i8, ptr %129, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !9
  br label %192

131:                                              ; preds = %63
  %132 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 24
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %192, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %10, align 4
  %137 = getelementptr inbounds %struct.mmc_request, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.mmc_data, ptr %138, i32 0, i32 12
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3
  %144 = load ptr, ptr %133, align 4
  %145 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 15
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.mmc_data, ptr %138, i32 0, i32 10
  %148 = load i32, ptr %147, align 4
  %149 = tail call i32 @dma_map_sg_attrs(ptr noundef %146, ptr noundef %140, i32 noundef %148, i32 noundef 1, i32 noundef 0) #8
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %177

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  store i8 1, ptr %152, align 4
  %153 = load ptr, ptr %133, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %177, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 39
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %177, label %159

159:                                              ; preds = %155
  %160 = tail call ptr %157(ptr noundef nonnull %133, ptr noundef %140, i32 noundef %149, i32 noundef 1, i32 noundef 3, ptr noundef null) #8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %177, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %160, i32 0, i32 6
  store ptr @sh_mmcif_dma_complete, ptr %163, align 4
  %164 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %160, i32 0, i32 8
  store ptr %1, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %160, i32 0, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 %166(ptr noundef nonnull %160) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %39, align 4
  %169 = getelementptr i8, ptr %168, i32 28
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %171 = or i32 %170, 33554432
  %172 = load ptr, ptr %39, align 4
  %173 = getelementptr i8, ptr %172, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #8, !srcloc !9
  %174 = load ptr, ptr %133, align 4
  %175 = getelementptr inbounds %struct.dma_device, ptr %174, i32 0, i32 50
  %176 = load ptr, ptr %175, align 4
  tail call void %176(ptr noundef nonnull %133) #8
  br label %192

177:                                              ; preds = %159, %155, %151, %135
  %178 = icmp sgt i32 %149, -1
  %179 = select i1 %178, i32 -5, i32 %149
  store ptr null, ptr %132, align 4
  %180 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  store i8 0, ptr %180, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %133) #8
  %181 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 23
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  store ptr null, ptr %181, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %182) #8
  br label %185

185:                                              ; preds = %184, %177
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.23, i32 noundef %179) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %186 = load ptr, ptr %39, align 4
  %187 = getelementptr i8, ptr %186, i32 28
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %189 = and i32 %188, -50331649
  %190 = load ptr, ptr %39, align 4
  %191 = getelementptr i8, ptr %190, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %189) #8, !srcloc !9
  br label %192

192:                                              ; preds = %185, %162, %131, %124, %101, %70
  %193 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 26
  %194 = load i8, ptr %193, align 4, !range !11
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %302

196:                                              ; preds = %192
  %197 = load ptr, ptr %10, align 4
  %198 = load i32, ptr %16, align 4
  switch i32 %198, label %297 [
    i32 18, label %199
    i32 25, label %234
    i32 24, label %269
    i32 17, label %282
    i32 8, label %282
  ]

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.mmc_request, ptr %197, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.mmc_data, ptr %201, i32 0, i32 10
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %295, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.mmc_data, ptr %201, i32 0, i32 12
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.scatterlist, ptr %207, i32 0, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %295, label %211

211:                                              ; preds = %205
  %212 = load ptr, ptr %39, align 4
  %213 = getelementptr i8, ptr %212, i32 20
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #8, !srcloc !10
  %215 = and i32 %214, 65535
  %216 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  store i32 %215, ptr %216, align 4
  store i32 2, ptr %5, align 4
  %217 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  store i32 0, ptr %217, align 4
  %218 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 17
  store i32 0, ptr %218, align 4
  %219 = load ptr, ptr %206, align 4
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, -4
  %222 = inttoptr i32 %221 to ptr
  %223 = tail call ptr @page_address(ptr noundef %222) #8
  %224 = getelementptr inbounds %struct.scatterlist, ptr %219, i32 0, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr i8, ptr %223, i32 %225
  %227 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 10
  store ptr %226, ptr %227, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %228 = load ptr, ptr %39, align 4
  %229 = getelementptr i8, ptr %228, i32 68
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %231 = or i32 %230, 1048576
  %232 = load ptr, ptr %39, align 4
  %233 = getelementptr i8, ptr %232, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #8, !srcloc !9
  br label %295

234:                                              ; preds = %196
  %235 = getelementptr inbounds %struct.mmc_request, ptr %197, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.mmc_data, ptr %236, i32 0, i32 10
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %295, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.mmc_data, ptr %236, i32 0, i32 12
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.scatterlist, ptr %242, i32 0, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %295, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr %39, align 4
  %248 = getelementptr i8, ptr %247, i32 20
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #8, !srcloc !10
  %250 = and i32 %249, 65535
  %251 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  store i32 %250, ptr %251, align 4
  store i32 3, ptr %5, align 4
  %252 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  store i32 0, ptr %252, align 4
  %253 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 17
  store i32 0, ptr %253, align 4
  %254 = load ptr, ptr %241, align 4
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, -4
  %257 = inttoptr i32 %256 to ptr
  %258 = tail call ptr @page_address(ptr noundef %257) #8
  %259 = getelementptr inbounds %struct.scatterlist, ptr %254, i32 0, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr i8, ptr %258, i32 %260
  %262 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 10
  store ptr %261, ptr %262, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %263 = load ptr, ptr %39, align 4
  %264 = getelementptr i8, ptr %263, i32 68
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %266 = or i32 %265, 2097152
  %267 = load ptr, ptr %39, align 4
  %268 = getelementptr i8, ptr %267, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %266) #8, !srcloc !9
  br label %295

269:                                              ; preds = %196
  %270 = load ptr, ptr %39, align 4
  %271 = getelementptr i8, ptr %270, i32 20
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #8, !srcloc !10
  %273 = and i32 %272, 65535
  %274 = add nuw nsw i32 %273, 3
  %275 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  store i32 %274, ptr %275, align 4
  store i32 5, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %276 = load ptr, ptr %39, align 4
  %277 = getelementptr i8, ptr %276, i32 68
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %279 = or i32 %278, 2097152
  %280 = load ptr, ptr %39, align 4
  %281 = getelementptr i8, ptr %280, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #8, !srcloc !9
  br label %295

282:                                              ; preds = %196, %196
  %283 = load ptr, ptr %39, align 4
  %284 = getelementptr i8, ptr %283, i32 20
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #8, !srcloc !10
  %286 = and i32 %285, 65535
  %287 = add nuw nsw i32 %286, 3
  %288 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  store i32 %287, ptr %288, align 4
  store i32 4, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %289 = load ptr, ptr %39, align 4
  %290 = getelementptr i8, ptr %289, i32 68
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %292 = or i32 %291, 1048576
  %293 = load ptr, ptr %39, align 4
  %294 = getelementptr i8, ptr %293, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #8, !srcloc !9
  br label %295

295:                                              ; preds = %282, %269, %246, %240, %234, %211, %205, %199
  %296 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 5
  store i32 0, ptr %296, align 4
  br label %678

297:                                              ; preds = %196
  %298 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.platform_device, ptr %299, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %300, ptr noundef nonnull @.str.24, i32 noundef %198) #9
  %301 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 5
  store i32 -22, ptr %301, align 4
  br label %683

302:                                              ; preds = %192
  %303 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 8
  %304 = load i32, ptr %303, align 4
  %305 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %64, i32 noundef %304) #8
  %306 = load i32, ptr %66, align 4
  %307 = and i32 %306, 512
  %308 = icmp eq i32 %307, 0
  %309 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 24
  %310 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 23
  %311 = select i1 %308, ptr %309, ptr %310
  %312 = select i1 %308, i32 1, i32 2
  %313 = load ptr, ptr %311, align 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.dma_device, ptr %314, i32 0, i32 15
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %320 = load i32, ptr %319, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %316, ptr noundef %318, i32 noundef %320, i32 noundef %312, i32 noundef 0) #8
  %321 = load i8, ptr %19, align 1, !range !11
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %302
  %324 = load ptr, ptr %1, align 4
  %325 = load ptr, ptr %324, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.19) #9
  %326 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  br label %337

327:                                              ; preds = %302
  %328 = icmp eq i32 %305, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = load ptr, ptr %1, align 4
  %331 = load ptr, ptr %330, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %331, ptr noundef nonnull @.str.20) #9
  br label %337

332:                                              ; preds = %327
  %333 = icmp slt i32 %305, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %332
  %335 = load ptr, ptr %1, align 4
  %336 = load ptr, ptr %335, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.21, i32 noundef %305) #9
  br label %337

337:                                              ; preds = %334, %329, %323
  %338 = phi i32 [ -110, %329 ], [ %305, %334 ], [ %326, %323 ]
  %339 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 5
  store i32 %338, ptr %339, align 4
  br label %340

340:                                              ; preds = %337, %332
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %341 = load ptr, ptr %39, align 4
  %342 = getelementptr i8, ptr %341, i32 28
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %344 = and i32 %343, -50331649
  %345 = load ptr, ptr %39, align 4
  %346 = getelementptr i8, ptr %345, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %344) #8, !srcloc !9
  store i8 0, ptr %193, align 4
  %347 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %683, label %350

350:                                              ; preds = %340
  %351 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  store i32 0, ptr %351, align 4
  %352 = load i32, ptr %66, align 4
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %370, label %355

355:                                              ; preds = %350
  %356 = load ptr, ptr %310, align 4
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr inbounds %struct.dma_device, ptr %357, i32 0, i32 47
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %683, label %361

361:                                              ; preds = %355
  %362 = tail call i32 %359(ptr noundef %356) #8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %683

364:                                              ; preds = %361
  %365 = load ptr, ptr %356, align 4
  %366 = getelementptr inbounds %struct.dma_device, ptr %365, i32 0, i32 48
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %683, label %369

369:                                              ; preds = %364
  tail call void %367(ptr noundef %356) #8
  br label %683

370:                                              ; preds = %350
  %371 = load ptr, ptr %309, align 4
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.dma_device, ptr %372, i32 0, i32 47
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %683, label %376

376:                                              ; preds = %370
  %377 = tail call i32 %374(ptr noundef %371) #8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %683

379:                                              ; preds = %376
  %380 = load ptr, ptr %371, align 4
  %381 = getelementptr inbounds %struct.dma_device, ptr %380, i32 0, i32 48
  %382 = load ptr, ptr %381, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %683, label %384

384:                                              ; preds = %379
  tail call void %382(ptr noundef %371) #8
  br label %683

385:                                              ; preds = %13
  %386 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 10
  %389 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %390 = load i8, ptr %389, align 1, !range !11
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %385
  %393 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  %394 = getelementptr inbounds %struct.mmc_data, ptr %387, i32 0, i32 5
  store i32 %393, ptr %394, align 4
  br label %683

395:                                              ; preds = %385
  %396 = load ptr, ptr %388, align 4
  %397 = getelementptr inbounds %struct.mmc_data, ptr %387, i32 0, i32 12
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.scatterlist, ptr %398, i32 0, i32 2
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %408, label %402, !prof !17

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  %404 = load i32, ptr %403, align 4
  %405 = icmp ult i32 %404, 4
  br i1 %405, label %424, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  br label %409

408:                                              ; preds = %395
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 692, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

409:                                              ; preds = %409, %406
  %410 = phi i32 [ 0, %406 ], [ %416, %409 ]
  %411 = phi ptr [ %396, %406 ], [ %415, %409 ]
  %412 = load ptr, ptr %407, align 4
  %413 = getelementptr i8, ptr %412, i32 52
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #8, !srcloc !10
  %415 = getelementptr i32, ptr %411, i32 1
  store i32 %414, ptr %411, align 4
  %416 = add nuw nsw i32 %410, 1
  %417 = load i32, ptr %403, align 4
  %418 = lshr i32 %417, 2
  %419 = icmp ult i32 %416, %418
  br i1 %419, label %409, label %420

420:                                              ; preds = %409
  %421 = load ptr, ptr %10, align 4
  %422 = getelementptr inbounds %struct.mmc_request, ptr %421, i32 0, i32 2
  %423 = load ptr, ptr %422, align 4
  br label %424

424:                                              ; preds = %420, %402
  %425 = phi ptr [ %387, %402 ], [ %423, %420 ]
  %426 = phi ptr [ %396, %402 ], [ %415, %420 ]
  %427 = phi i32 [ %404, %402 ], [ %417, %420 ]
  %428 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 17
  %429 = load i32, ptr %428, align 4
  %430 = add i32 %429, %427
  store i32 %430, ptr %428, align 4
  %431 = getelementptr inbounds %struct.mmc_data, ptr %425, i32 0, i32 12
  %432 = load ptr, ptr %431, align 4
  %433 = getelementptr inbounds %struct.scatterlist, ptr %432, i32 0, i32 2
  %434 = load i32, ptr %433, align 4
  %435 = icmp ugt i32 %430, %434
  br i1 %435, label %436, label %437, !prof !17

436:                                              ; preds = %424
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

437:                                              ; preds = %424
  %438 = icmp eq i32 %430, %434
  br i1 %438, label %439, label %456

439:                                              ; preds = %437
  store i32 0, ptr %428, align 4
  %440 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  %441 = load i32, ptr %440, align 4
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 4
  %443 = getelementptr inbounds %struct.mmc_data, ptr %425, i32 0, i32 10
  %444 = load i32, ptr %443, align 4
  %445 = icmp ult i32 %442, %444
  br i1 %445, label %446, label %462

446:                                              ; preds = %439
  %447 = load ptr, ptr %431, align 4
  %448 = getelementptr %struct.scatterlist, ptr %447, i32 1
  store ptr %448, ptr %431, align 4
  %449 = load i32, ptr %448, align 4
  %450 = and i32 %449, -4
  %451 = inttoptr i32 %450 to ptr
  %452 = tail call ptr @page_address(ptr noundef %451) #8
  %453 = getelementptr %struct.scatterlist, ptr %447, i32 1, i32 1
  %454 = load i32, ptr %453, align 4
  %455 = getelementptr i8, ptr %452, i32 %454
  br label %456

456:                                              ; preds = %446, %437
  %457 = phi ptr [ %455, %446 ], [ %426, %437 ]
  store ptr %457, ptr %388, align 4
  %458 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  %459 = load i32, ptr %458, align 4
  %460 = getelementptr inbounds %struct.mmc_data, ptr %425, i32 0, i32 10
  %461 = load i32, ptr %460, align 4
  br label %462

462:                                              ; preds = %456, %439
  %463 = phi i32 [ %444, %439 ], [ %461, %456 ]
  %464 = phi i32 [ %442, %439 ], [ %459, %456 ]
  %465 = icmp eq i32 %464, %463
  br i1 %465, label %683, label %466

466:                                              ; preds = %462
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %467 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr i8, ptr %468, i32 68
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %469) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %471 = or i32 %470, 1048576
  %472 = load ptr, ptr %467, align 4
  %473 = getelementptr i8, ptr %472, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 %471) #8, !srcloc !9
  br label %678

474:                                              ; preds = %13
  %475 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %476 = load ptr, ptr %475, align 4
  %477 = getelementptr inbounds %struct.mmc_data, ptr %476, i32 0, i32 12
  %478 = load ptr, ptr %477, align 4
  %479 = load i32, ptr %478, align 4
  %480 = and i32 %479, -4
  %481 = inttoptr i32 %480 to ptr
  %482 = tail call ptr @page_address(ptr noundef %481) #8
  %483 = getelementptr inbounds %struct.scatterlist, ptr %478, i32 0, i32 1
  %484 = load i32, ptr %483, align 4
  %485 = getelementptr i8, ptr %482, i32 %484
  %486 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %487 = load i8, ptr %486, align 1, !range !11
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %474
  %490 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  %491 = load i32, ptr %490, align 4
  %492 = icmp ult i32 %491, 4
  br i1 %492, label %509, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  br label %498

495:                                              ; preds = %474
  %496 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  %497 = getelementptr inbounds %struct.mmc_data, ptr %476, i32 0, i32 5
  store i32 %496, ptr %497, align 4
  br label %683

498:                                              ; preds = %498, %493
  %499 = phi i32 [ 0, %493 ], [ %505, %498 ]
  %500 = phi ptr [ %485, %493 ], [ %504, %498 ]
  %501 = load ptr, ptr %494, align 4
  %502 = getelementptr i8, ptr %501, i32 52
  %503 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %502) #8, !srcloc !10
  %504 = getelementptr i32, ptr %500, i32 1
  store i32 %503, ptr %500, align 4
  %505 = add nuw nsw i32 %499, 1
  %506 = load i32, ptr %490, align 4
  %507 = lshr i32 %506, 2
  %508 = icmp ult i32 %505, %507
  br i1 %508, label %498, label %509

509:                                              ; preds = %498, %489
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %510 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr i8, ptr %511, i32 68
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %512) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %514 = or i32 %513, 4194304
  %515 = load ptr, ptr %510, align 4
  %516 = getelementptr i8, ptr %515, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %516, i32 %514) #8, !srcloc !9
  store i32 6, ptr %5, align 4
  br label %678

517:                                              ; preds = %13
  %518 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 10
  %521 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %522 = load i8, ptr %521, align 1, !range !11
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %517
  %525 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  %526 = getelementptr inbounds %struct.mmc_data, ptr %519, i32 0, i32 5
  store i32 %525, ptr %526, align 4
  br label %683

527:                                              ; preds = %517
  %528 = load ptr, ptr %520, align 4
  %529 = getelementptr inbounds %struct.mmc_data, ptr %519, i32 0, i32 12
  %530 = load ptr, ptr %529, align 4
  %531 = getelementptr inbounds %struct.scatterlist, ptr %530, i32 0, i32 2
  %532 = load i32, ptr %531, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %540, label %534, !prof !17

534:                                              ; preds = %527
  %535 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  %536 = load i32, ptr %535, align 4
  %537 = icmp ult i32 %536, 4
  br i1 %537, label %556, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  br label %541

540:                                              ; preds = %527
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 772, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

541:                                              ; preds = %541, %538
  %542 = phi i32 [ 0, %538 ], [ %548, %541 ]
  %543 = phi ptr [ %528, %538 ], [ %545, %541 ]
  %544 = load ptr, ptr %539, align 4
  %545 = getelementptr i32, ptr %543, i32 1
  %546 = load i32, ptr %543, align 4
  %547 = getelementptr i8, ptr %544, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %547, i32 %546) #8, !srcloc !9
  %548 = add nuw nsw i32 %542, 1
  %549 = load i32, ptr %535, align 4
  %550 = lshr i32 %549, 2
  %551 = icmp ult i32 %548, %550
  br i1 %551, label %541, label %552

552:                                              ; preds = %541
  %553 = load ptr, ptr %10, align 4
  %554 = getelementptr inbounds %struct.mmc_request, ptr %553, i32 0, i32 2
  %555 = load ptr, ptr %554, align 4
  br label %556

556:                                              ; preds = %552, %534
  %557 = phi ptr [ %519, %534 ], [ %555, %552 ]
  %558 = phi ptr [ %528, %534 ], [ %545, %552 ]
  %559 = phi i32 [ %536, %534 ], [ %549, %552 ]
  %560 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 17
  %561 = load i32, ptr %560, align 4
  %562 = add i32 %561, %559
  store i32 %562, ptr %560, align 4
  %563 = getelementptr inbounds %struct.mmc_data, ptr %557, i32 0, i32 12
  %564 = load ptr, ptr %563, align 4
  %565 = getelementptr inbounds %struct.scatterlist, ptr %564, i32 0, i32 2
  %566 = load i32, ptr %565, align 4
  %567 = icmp ugt i32 %562, %566
  br i1 %567, label %568, label %569, !prof !17

568:                                              ; preds = %556
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

569:                                              ; preds = %556
  %570 = icmp eq i32 %562, %566
  br i1 %570, label %571, label %588

571:                                              ; preds = %569
  store i32 0, ptr %560, align 4
  %572 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  %573 = load i32, ptr %572, align 4
  %574 = add i32 %573, 1
  store i32 %574, ptr %572, align 4
  %575 = getelementptr inbounds %struct.mmc_data, ptr %557, i32 0, i32 10
  %576 = load i32, ptr %575, align 4
  %577 = icmp ult i32 %574, %576
  br i1 %577, label %578, label %594

578:                                              ; preds = %571
  %579 = load ptr, ptr %563, align 4
  %580 = getelementptr %struct.scatterlist, ptr %579, i32 1
  store ptr %580, ptr %563, align 4
  %581 = load i32, ptr %580, align 4
  %582 = and i32 %581, -4
  %583 = inttoptr i32 %582 to ptr
  %584 = tail call ptr @page_address(ptr noundef %583) #8
  %585 = getelementptr %struct.scatterlist, ptr %579, i32 1, i32 1
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr i8, ptr %584, i32 %586
  br label %588

588:                                              ; preds = %578, %569
  %589 = phi ptr [ %587, %578 ], [ %558, %569 ]
  store ptr %589, ptr %520, align 4
  %590 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 16
  %591 = load i32, ptr %590, align 4
  %592 = getelementptr inbounds %struct.mmc_data, ptr %557, i32 0, i32 10
  %593 = load i32, ptr %592, align 4
  br label %594

594:                                              ; preds = %588, %571
  %595 = phi i32 [ %576, %571 ], [ %593, %588 ]
  %596 = phi i32 [ %574, %571 ], [ %591, %588 ]
  %597 = icmp eq i32 %596, %595
  br i1 %597, label %683, label %598

598:                                              ; preds = %594
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %599 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %600 = load ptr, ptr %599, align 4
  %601 = getelementptr i8, ptr %600, i32 68
  %602 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %601) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %603 = or i32 %602, 2097152
  %604 = load ptr, ptr %599, align 4
  %605 = getelementptr i8, ptr %604, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %605, i32 %603) #8, !srcloc !9
  br label %678

606:                                              ; preds = %13
  %607 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %608 = load ptr, ptr %607, align 4
  %609 = getelementptr inbounds %struct.mmc_data, ptr %608, i32 0, i32 12
  %610 = load ptr, ptr %609, align 4
  %611 = load i32, ptr %610, align 4
  %612 = and i32 %611, -4
  %613 = inttoptr i32 %612 to ptr
  %614 = tail call ptr @page_address(ptr noundef %613) #8
  %615 = getelementptr inbounds %struct.scatterlist, ptr %610, i32 0, i32 1
  %616 = load i32, ptr %615, align 4
  %617 = getelementptr i8, ptr %614, i32 %616
  %618 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %619 = load i8, ptr %618, align 1, !range !11
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %621, label %627

621:                                              ; preds = %606
  %622 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 15
  %623 = load i32, ptr %622, align 4
  %624 = icmp ult i32 %623, 4
  br i1 %624, label %670, label %625

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  br label %630

627:                                              ; preds = %606
  %628 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  %629 = getelementptr inbounds %struct.mmc_data, ptr %608, i32 0, i32 5
  store i32 %628, ptr %629, align 4
  br label %683

630:                                              ; preds = %630, %625
  %631 = phi i32 [ 0, %625 ], [ %637, %630 ]
  %632 = phi ptr [ %617, %625 ], [ %634, %630 ]
  %633 = load ptr, ptr %626, align 4
  %634 = getelementptr i32, ptr %632, i32 1
  %635 = load i32, ptr %632, align 4
  %636 = getelementptr i8, ptr %633, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %636, i32 %635) #8, !srcloc !9
  %637 = add nuw nsw i32 %631, 1
  %638 = load i32, ptr %622, align 4
  %639 = lshr i32 %638, 2
  %640 = icmp ult i32 %637, %639
  br i1 %640, label %630, label %670

641:                                              ; preds = %13
  %642 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %643 = load i8, ptr %642, align 1, !range !11
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %650, label %645

645:                                              ; preds = %641
  %646 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1)
  %647 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 3
  %648 = load ptr, ptr %647, align 4
  %649 = getelementptr inbounds %struct.mmc_command, ptr %648, i32 0, i32 5
  store i32 %646, ptr %649, align 4
  br label %683

650:                                              ; preds = %641
  %651 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 3
  %652 = load ptr, ptr %651, align 4
  %653 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %654 = load ptr, ptr %653, align 4
  %655 = getelementptr i8, ptr %654, i32 48
  %656 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %655) #8, !srcloc !10
  %657 = getelementptr inbounds %struct.mmc_command, ptr %652, i32 0, i32 2
  store i32 %656, ptr %657, align 4
  %658 = load ptr, ptr %651, align 4
  %659 = getelementptr inbounds %struct.mmc_command, ptr %658, i32 0, i32 5
  store i32 0, ptr %659, align 4
  br label %683

660:                                              ; preds = %13, %13
  %661 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 6
  %662 = load i8, ptr %661, align 1, !range !11
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %683, label %664

664:                                              ; preds = %660
  %665 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1)
  %666 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %667 = load ptr, ptr %666, align 4
  %668 = getelementptr inbounds %struct.mmc_data, ptr %667, i32 0, i32 5
  store i32 %665, ptr %668, align 4
  br label %683

669:                                              ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

670:                                              ; preds = %630, %621
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %671 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %672 = load ptr, ptr %671, align 4
  %673 = getelementptr i8, ptr %672, i32 68
  %674 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %673) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %675 = or i32 %674, 8388608
  %676 = load ptr, ptr %671, align 4
  %677 = getelementptr i8, ptr %676, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %677, i32 %675) #8, !srcloc !9
  store i32 7, ptr %5, align 4
  br label %678

678:                                              ; preds = %670, %598, %509, %466, %295
  %679 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 8
  %680 = load i32, ptr %679, align 4
  %681 = load ptr, ptr @system_wq, align 4
  %682 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %681, ptr noundef %7, i32 noundef %680) #8
  br label %760

683:                                              ; preds = %664, %660, %650, %645, %627, %594, %524, %495, %462, %392, %384, %379, %376, %370, %369, %364, %361, %355, %340, %297, %61, %34, %26
  %684 = load i32, ptr %5, align 4
  %685 = icmp eq i32 %684, 8
  br i1 %685, label %757, label %686

686:                                              ; preds = %683
  %687 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %688 = load ptr, ptr %687, align 4
  %689 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 1
  %690 = load ptr, ptr %689, align 4
  %691 = getelementptr inbounds %struct.mmc_command, ptr %690, i32 0, i32 5
  %692 = load i32, ptr %691, align 4
  %693 = icmp eq i32 %692, 0
  %694 = icmp ne ptr %688, null
  %695 = select i1 %693, i1 %694, i1 false
  br i1 %695, label %696, label %707

696:                                              ; preds = %686
  %697 = getelementptr inbounds %struct.mmc_data, ptr %688, i32 0, i32 5
  %698 = load i32, ptr %697, align 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %707

700:                                              ; preds = %696
  %701 = getelementptr inbounds %struct.mmc_data, ptr %688, i32 0, i32 3
  %702 = load i32, ptr %701, align 4
  %703 = getelementptr inbounds %struct.mmc_data, ptr %688, i32 0, i32 2
  %704 = load i32, ptr %703, align 4
  %705 = mul i32 %704, %702
  %706 = getelementptr inbounds %struct.mmc_data, ptr %688, i32 0, i32 7
  store i32 %705, ptr %706, align 4
  br label %707

707:                                              ; preds = %700, %696, %686
  %708 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 3
  %709 = load ptr, ptr %708, align 4
  %710 = icmp eq ptr %709, null
  br i1 %710, label %757, label %711

711:                                              ; preds = %707
  %712 = load ptr, ptr %689, align 4
  %713 = getelementptr inbounds %struct.mmc_command, ptr %712, i32 0, i32 5
  %714 = load i32, ptr %713, align 4
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %757

716:                                              ; preds = %711
  br i1 %694, label %717, label %721

717:                                              ; preds = %716
  %718 = getelementptr inbounds %struct.mmc_data, ptr %688, i32 0, i32 5
  %719 = load i32, ptr %718, align 4
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %757

721:                                              ; preds = %717, %716
  %722 = load i32, ptr %712, align 4
  switch i32 %722, label %739 [
    i32 18, label %723
    i32 25, label %731
  ]

723:                                              ; preds = %721
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %724 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %725 = load ptr, ptr %724, align 4
  %726 = getelementptr i8, ptr %725, i32 68
  %727 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %726) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %728 = or i32 %727, 67108864
  %729 = load ptr, ptr %724, align 4
  %730 = getelementptr i8, ptr %729, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %730, i32 %728) #8, !srcloc !9
  br label %746

731:                                              ; preds = %721
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %732 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %733 = load ptr, ptr %732, align 4
  %734 = getelementptr i8, ptr %733, i32 68
  %735 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %734) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %736 = or i32 %735, 33554432
  %737 = load ptr, ptr %732, align 4
  %738 = getelementptr i8, ptr %737, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %738, i32 %736) #8, !srcloc !9
  br label %746

739:                                              ; preds = %721
  %740 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 2
  %741 = load ptr, ptr %740, align 4
  %742 = getelementptr inbounds %struct.platform_device, ptr %741, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %742, ptr noundef nonnull @.str.25) #9
  %743 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %1) #8
  %744 = load ptr, ptr %708, align 4
  %745 = getelementptr inbounds %struct.mmc_command, ptr %744, i32 0, i32 5
  store i32 %743, ptr %745, align 4
  br label %747

746:                                              ; preds = %731, %723
  store i32 8, ptr %5, align 4
  br label %747

747:                                              ; preds = %746, %739
  %748 = load ptr, ptr %708, align 4
  %749 = getelementptr inbounds %struct.mmc_command, ptr %748, i32 0, i32 5
  %750 = load i32, ptr %749, align 4
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %757

752:                                              ; preds = %747
  %753 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 8
  %754 = load i32, ptr %753, align 4
  %755 = load ptr, ptr @system_wq, align 4
  %756 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %755, ptr noundef %7, i32 noundef %754) #8
  br label %760

757:                                              ; preds = %747, %717, %711, %707, %683
  store i32 0, ptr %5, align 4
  %758 = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 12
  store i32 0, ptr %758, align 4
  store ptr null, ptr %10, align 4
  %759 = load ptr, ptr %1, align 4
  tail call void @mmc_request_done(ptr noundef %759, ptr noundef nonnull %11) #8
  br label %760

760:                                              ; preds = %757, %752, %678, %13, %2
  tail call void @mutex_unlock(ptr noundef %9) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mmcif_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  store i32 -11, ptr %11, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #8
  br label %132

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  store i32 1, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  %14 = getelementptr inbounds %struct.sh_mmcif_host, ptr %13, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sh_mmcif_host, ptr %13, i32 0, i32 19
  %20 = load i8, ptr %19, align 1, !range !11
  %21 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #8, !srcloc !9
  %28 = load ptr, ptr %25, align 4
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #8, !srcloc !9
  %33 = load ptr, ptr %21, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %24, %12
  %38 = phi i32 [ %36, %24 ], [ %18, %12 ]
  %39 = phi ptr [ %34, %24 ], [ %16, %12 ]
  %40 = phi ptr [ %33, %24 ], [ null, %12 ]
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %39, align 4
  %45 = and i32 %38, 31
  switch i32 %45, label %49 [
    i32 0, label %50
    i32 21, label %46
    i32 1, label %46
    i32 29, label %47
    i32 7, label %48
  ]

46:                                               ; preds = %37, %37
  br label %50

47:                                               ; preds = %37
  br label %50

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.8) #9
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %37
  %51 = phi i32 [ 0, %49 ], [ 8388608, %48 ], [ 6291456, %47 ], [ 4194304, %46 ], [ %45, %37 ]
  %52 = icmp eq ptr %40, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = or i32 %51, 524288
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %61 [
    i32 0, label %62
    i32 2, label %57
    i32 3, label %59
  ]

57:                                               ; preds = %53
  %58 = or i32 %51, 524289
  br label %62

59:                                               ; preds = %53
  %60 = or i32 %51, 524290
  br label %62

61:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.9) #9
  br label %62

62:                                               ; preds = %61, %59, %57, %53
  %63 = phi i32 [ %54, %61 ], [ %60, %59 ], [ %58, %57 ], [ %54, %53 ]
  %64 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = icmp eq i8 %65, 8
  %67 = or i32 %63, 4
  %68 = select i1 %66, i32 %67, i32 %63
  br label %69

69:                                               ; preds = %62, %50
  %70 = phi i32 [ %51, %50 ], [ %68, %62 ]
  %71 = and i32 %44, -2
  %72 = icmp eq i32 %71, 24
  %73 = or i32 %70, 262144
  %74 = select i1 %72, i32 %73, i32 %70
  switch i32 %44, label %87 [
    i32 25, label %75
    i32 18, label %75
  ]

75:                                               ; preds = %69, %69
  %76 = or i32 %74, 196608
  %77 = getelementptr inbounds %struct.mmc_data, ptr %40, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %78, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %80 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 20
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %84 = or i32 %83, %79
  %85 = load ptr, ptr %80, align 4
  %86 = getelementptr i8, ptr %85, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #8, !srcloc !9
  br label %87

87:                                               ; preds = %75, %69
  %88 = phi i32 [ %76, %75 ], [ %74, %69 ]
  %89 = load i8, ptr %19, align 1, !range !11
  %90 = icmp eq i8 %89, 0
  %91 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 64
  br i1 %90, label %95, label %94

94:                                               ; preds = %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 -670814016) #8, !srcloc !9
  br label %96

95:                                               ; preds = %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 -133418784) #8, !srcloc !9
  br label %96

96:                                               ; preds = %95, %94
  %97 = icmp eq i32 %44, 9
  %98 = and i32 %44, -9
  %99 = icmp eq i32 %98, 2
  %100 = or i1 %97, %99
  %101 = icmp eq i32 %44, 1
  %102 = add i32 %98, -1
  %103 = icmp ult i32 %102, 2
  %104 = or i32 %88, 16384
  %105 = select i1 %103, i32 %104, i32 %88
  %106 = or i32 %105, 4096
  %107 = select i1 %101, i32 %106, i32 %105
  %108 = or i32 %107, 8192
  %109 = select i1 %100, i32 %108, i32 %107
  %110 = shl i32 %44, 24
  %111 = or i32 %109, %110
  %112 = icmp eq i8 %20, 0
  %113 = and i32 %18, 8
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 118559, i32 184095
  %116 = or i32 %115, 32
  %117 = select i1 %112, i32 %115, i32 %116
  %118 = load ptr, ptr %91, align 4
  %119 = getelementptr i8, ptr %118, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #8, !srcloc !9
  %120 = load ptr, ptr %91, align 4
  %121 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %122) #8, !srcloc !9
  %124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %125 = load ptr, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %111) #8, !srcloc !9
  %126 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  store i32 1, ptr %126, align 4
  %127 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  %128 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr @system_wq, align 4
  %131 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %130, ptr noundef %127, i32 noundef %129) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %124) #8
  br label %132

132:                                              ; preds = %96, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mmcif_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br label %254

15:                                               ; preds = %2
  store i32 2, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  %16 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %246 [
    i8 1, label %18
    i8 0, label %106
    i8 2, label %152
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %20, i16 noundef zeroext %24) #8
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %28 = load i8, ptr %27, align 4, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %246

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i32 @clk_enable(ptr noundef %32) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #8
  br label %39

39:                                               ; preds = %38, %35, %30
  %40 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %5)
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1
  store i8 0, ptr %43, align 4
  %44 = tail call ptr @dma_request_chan(ptr noundef %42, ptr noundef nonnull @.str.10) #8
  %45 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = select i1 %46, ptr null, ptr %44
  store ptr %47, ptr %45, align 4
  %48 = tail call ptr @dma_request_chan(ptr noundef %42, ptr noundef nonnull @.str.11) #8
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = select i1 %50, ptr null, ptr %48
  store ptr %51, ptr %49, align 4
  %52 = load ptr, ptr %45, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %100, label %54

54:                                               ; preds = %39
  %55 = icmp eq ptr %51, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  %57 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %57, i8 0, i32 44, i1 false) #8
  %58 = load ptr, ptr %6, align 4
  %59 = tail call ptr @platform_get_resource(ptr noundef %58, i32 noundef 512, i32 noundef 0) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  store i32 1, ptr %4, align 4
  %62 = load i32, ptr %59, align 4
  %63 = add i32 %62, 52
  %64 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 4, ptr %65, align 4
  %66 = load ptr, ptr %52, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 44
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %56
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  br label %93

71:                                               ; preds = %61
  %72 = call i32 %68(ptr noundef nonnull %52, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load ptr, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %76 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %76, i8 0, i32 40, i1 false) #8
  %77 = load ptr, ptr %6, align 4
  %78 = call ptr @platform_get_resource(ptr noundef %77, i32 noundef 512, i32 noundef 0) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %3, align 4
  %82 = load i32, ptr %78, align 4
  %83 = add i32 %82, 52
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %84, align 4
  %85 = load ptr, ptr %75, align 4
  %86 = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 44
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %80, %74
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  br label %93

90:                                               ; preds = %80
  %91 = call i32 %87(ptr noundef %75, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90, %89, %71, %70
  %94 = load ptr, ptr %45, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93, %54
  %97 = phi ptr [ %94, %93 ], [ %52, %54 ]
  call void @dma_release_channel(ptr noundef nonnull %97) #8
  br label %98

98:                                               ; preds = %96, %93
  %99 = load ptr, ptr %49, align 4
  br label %100

100:                                              ; preds = %98, %39
  %101 = phi ptr [ %99, %98 ], [ %51, %39 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void @dma_release_channel(ptr noundef nonnull %101) #8
  br label %104

104:                                              ; preds = %103, %100
  store ptr null, ptr %49, align 4
  store ptr null, ptr %45, align 4
  br label %105

105:                                              ; preds = %104, %90
  store i8 1, ptr %27, align 4
  br label %246

106:                                              ; preds = %15
  %107 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %108 = load ptr, ptr %107, align 4
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %108, i16 noundef zeroext 0) #8
  br label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %114 = load i8, ptr %113, align 4, !range !11
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %246, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = tail call i32 @clk_get_rate(ptr noundef %118) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %120 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 24
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %124 = and i32 %123, -16777217
  %125 = load ptr, ptr %120, align 4
  %126 = getelementptr i8, ptr %125, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %127 = load ptr, ptr %120, align 4
  %128 = getelementptr i8, ptr %127, i32 24
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %130 = and i32 %129, -983041
  %131 = load ptr, ptr %120, align 4
  %132 = getelementptr i8, ptr %131, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %133 = load ptr, ptr %120, align 4
  %134 = getelementptr i8, ptr %133, i32 28
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %136 = and i32 %135, -50331649
  %137 = load ptr, ptr %120, align 4
  %138 = getelementptr i8, ptr %137, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #8, !srcloc !9
  %139 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %116
  store ptr null, ptr %139, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %140) #8
  br label %143

143:                                              ; preds = %142, %116
  %144 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  store ptr null, ptr %144, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %145) #8
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1
  store i8 0, ptr %149, align 4
  %150 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #8
  %151 = load ptr, ptr %117, align 4
  tail call void @clk_disable(ptr noundef %151) #8
  tail call void @clk_unprepare(ptr noundef %151) #8
  store i8 0, ptr %113, align 4
  br label %246

152:                                              ; preds = %15
  %153 = load i32, ptr %1, align 4
  %154 = load ptr, ptr %6, align 4
  %155 = getelementptr inbounds %struct.platform_device, ptr %154, i32 0, i32 3, i32 7
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %156, i32 0, i32 2
  %160 = load i8, ptr %159, align 4
  %161 = icmp ne i8 %160, 0
  br label %162

162:                                              ; preds = %158, %152
  %163 = phi i1 [ %161, %158 ], [ false, %152 ]
  %164 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 @clk_get_rate(ptr noundef %165) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %167 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 24
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %171 = and i32 %170, -16777217
  %172 = load ptr, ptr %167, align 4
  %173 = getelementptr i8, ptr %172, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %174 = load ptr, ptr %167, align 4
  %175 = getelementptr i8, ptr %174, i32 24
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %177 = and i32 %176, -983041
  %178 = load ptr, ptr %167, align 4
  %179 = getelementptr i8, ptr %178, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #8, !srcloc !9
  %180 = icmp eq i32 %153, 0
  br i1 %180, label %246, label %181

181:                                              ; preds = %162
  %182 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %218, label %185

185:                                              ; preds = %211, %181
  %186 = phi i32 [ %213, %211 ], [ %183, %181 ]
  %187 = phi i32 [ %212, %211 ], [ 31, %181 ]
  %188 = phi i32 [ %209, %211 ], [ -1, %181 ]
  %189 = phi i32 [ %208, %211 ], [ 0, %181 ]
  %190 = phi i32 [ %207, %211 ], [ 0, %181 ]
  %191 = shl nuw i32 1, %187
  %192 = and i32 %191, %186
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %185
  %195 = add nuw nsw i32 %187, 1
  %196 = load ptr, ptr %164, align 4
  %197 = shl i32 %153, %195
  %198 = tail call i32 @clk_round_rate(ptr noundef %196, i32 noundef %197) #8
  %199 = lshr i32 %198, %195
  %200 = icmp ugt i32 %199, %153
  %201 = sub i32 %199, %153
  %202 = sub i32 %153, %199
  %203 = select i1 %200, i32 %201, i32 %202
  %204 = icmp ugt i32 %203, %188
  br i1 %204, label %206, label %205

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %194, %185
  %207 = phi i32 [ %187, %205 ], [ %190, %194 ], [ %190, %185 ]
  %208 = phi i32 [ %198, %205 ], [ %189, %194 ], [ %189, %185 ]
  %209 = phi i32 [ %203, %205 ], [ %188, %194 ], [ %188, %185 ]
  %210 = icmp eq i32 %187, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = add nsw i32 %187, -1
  %213 = load i32, ptr %182, align 4
  br label %185

214:                                              ; preds = %206
  %215 = load ptr, ptr %164, align 4
  %216 = tail call i32 @clk_set_rate(ptr noundef %215, i32 noundef %208) #8
  %217 = shl i32 %207, 16
  br label %231

218:                                              ; preds = %181
  %219 = icmp eq i32 %166, %153
  %220 = select i1 %163, i1 %219, i1 false
  br i1 %220, label %231, label %221

221:                                              ; preds = %218
  %222 = add i32 %153, -1
  %223 = add i32 %222, %166
  %224 = udiv i32 %223, %153
  %225 = add i32 %224, -1
  %226 = icmp eq i32 %225, 0
  %227 = tail call i32 @llvm.ctlz.i32(i32 %225, i1 false) #8, !range !8
  %228 = mul nsw i32 %227, -65536
  %229 = add nsw i32 %228, 2031616
  %230 = select i1 %226, i32 -65536, i32 %229
  br label %231

231:                                              ; preds = %221, %218, %214
  %232 = phi i32 [ %217, %214 ], [ %230, %221 ], [ 983040, %218 ]
  %233 = and i32 %232, 983040
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %234 = load ptr, ptr %167, align 4
  %235 = getelementptr i8, ptr %234, i32 24
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %237 = or i32 %236, %233
  %238 = load ptr, ptr %167, align 4
  %239 = getelementptr i8, ptr %238, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %237) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %240 = load ptr, ptr %167, align 4
  %241 = getelementptr i8, ptr %240, i32 24
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %243 = or i32 %242, 16777216
  %244 = load ptr, ptr %167, align 4
  %245 = getelementptr i8, ptr %244, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #8, !srcloc !9
  br label %246

246:                                              ; preds = %231, %162, %148, %112, %105, %26, %15
  %247 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %248 = load i8, ptr %247, align 4
  %249 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  store i8 %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  store i32 %252, ptr %253, align 4
  store i32 0, ptr %11, align 4
  br label %254

254:                                              ; preds = %246, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_mmcif_error_manage(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 6
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  %13 = icmp sgt i32 %9, -1
  br i1 %13, label %39, label %14

14:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %18 = or i32 %17, 1
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %24 = or i32 %23, -2
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !9
  br label %27

27:                                               ; preds = %33, %14
  %28 = phi i32 [ 10000, %14 ], [ %35, %33 ]
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 72
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !10
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #8
  %35 = add nsw i32 %28, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %27

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  br label %54

38:                                               ; preds = %27
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %0)
  br label %54

39:                                               ; preds = %1
  %40 = icmp ult i32 %12, 134217728
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %43, i32 noundef %45) #9
  br label %54

46:                                               ; preds = %39
  %47 = and i32 %12, 65280
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef %51, i32 noundef %53) #9
  br label %54

54:                                               ; preds = %49, %46, %41, %38, %37
  %55 = phi i32 [ -5, %38 ], [ -5, %37 ], [ -5, %41 ], [ -110, %49 ], [ -5, %46 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mmcif_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = icmp eq ptr %3, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20, !prof !17

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %14, %12 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %19) #8
  br label %22

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.sh_mmcif_host, ptr %0, i32 0, i32 25
  tail call void @complete(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_hide_latency_limit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mmcif_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  %5 = getelementptr inbounds %struct.sh_mmcif_host, ptr %3, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #8, !srcloc !9
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_mmcif_resume(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 5031993}
!10 = !{i64 5032411}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153699410, i64 2153699903, i64 2153699447, i64 2153699503, i64 2153699537, i64 2153699561, i64 2153699602, i64 2153699623, i64 2153699651, i64 2153699685}
!13 = !{i64 2153657932}
!14 = !{i64 2153658412}
!15 = !{i64 2153659276}
!16 = !{i64 2153659758}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153676769, i64 2153677261, i64 2153676806, i64 2153676862, i64 2153676896, i64 2153676920, i64 2153676961, i64 2153676982, i64 2153677010, i64 2153677044}
!19 = !{i64 2153674503, i64 2153674995, i64 2153674540, i64 2153674596, i64 2153674630, i64 2153674654, i64 2153674695, i64 2153674716, i64 2153674744, i64 2153674778}
!20 = !{i64 2153679067, i64 2153679559, i64 2153679104, i64 2153679160, i64 2153679194, i64 2153679218, i64 2153679259, i64 2153679280, i64 2153679308, i64 2153679342}
!21 = !{i64 2153692009, i64 2153692502, i64 2153692046, i64 2153692102, i64 2153692136, i64 2153692160, i64 2153692201, i64 2153692222, i64 2153692250, i64 2153692284}
