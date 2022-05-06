; ModuleID = '/llk/IR/drivers/mmc/host/uniphier-sd.c_pt.bc'
source_filename = "../drivers/mmc/host/uniphier-sd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_sd_priv = type { %struct.tmio_mmc_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_uniphier_sd__303_694_uniphier_sd_driver_init6 = internal global ptr @uniphier_sd_driver_init, section ".initcall6.init", align 4
@uniphier_sd_driver = internal global %struct.platform_driver { ptr @uniphier_sd_probe, ptr @uniphier_sd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @uniphier_sd_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_sd_driver_exit = internal global ptr @uniphier_sd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [67 x i8] c"uniphier_sd.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [64 x i8] c"uniphier_sd.description=UniPhier SD/eMMC host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [46 x i8] c"uniphier_sd.file=drivers/mmc/host/uniphier-sd\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [27 x i8] c"uniphier_sd.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"uniphier-sd\00", align 1
@uniphier_sd_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v2.91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v3.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sd-v3.1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get host reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to get bridge reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to get hw reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"failed to setup UHS (error %d).  Disabling UHS.\00", align 1
@uniphier_sd_internal_dma_ops = internal constant %struct.tmio_mmc_dma_ops { ptr @uniphier_sd_internal_dma_start, ptr @uniphier_sd_internal_dma_enable, ptr @uniphier_sd_internal_dma_request, ptr @uniphier_sd_internal_dma_release, ptr @uniphier_sd_internal_dma_abort, ptr @uniphier_sd_internal_dma_dataend, ptr null }, align 4
@uniphier_sd_external_dma_ops = internal constant %struct.tmio_mmc_dma_ops { ptr @uniphier_sd_external_dma_start, ptr @uniphier_sd_external_dma_enable, ptr @uniphier_sd_external_dma_request, ptr @uniphier_sd_external_dma_release, ptr @uniphier_sd_external_dma_abort, ptr @uniphier_sd_external_dma_dataend, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"uhs\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"drivers/mmc/host/uniphier-sd.c\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"failed to request DMA channel. falling back to PIO\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_uniphier_sd_driver_exit, ptr @__initcall__kmod_uniphier_sd__303_694_uniphier_sd_driver_init6, ptr @uniphier_sd_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_sd_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_sd_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_sd_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_sd_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %143, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 92, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %143, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %13 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %16 = ptrtoint ptr %12 to i32
  br label %143

17:                                               ; preds = %8
  %18 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  %22 = ptrtoint ptr %18 to i32
  br label %143

23:                                               ; preds = %17
  %24 = and i32 %10, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #8
  %31 = ptrtoint ptr %27 to i32
  br label %143

32:                                               ; preds = %26, %23
  %33 = getelementptr inbounds %struct.tmio_mmc_data, ptr %6, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 544
  store i32 %35, ptr %33, align 4
  %36 = tail call ptr @tmio_mmc_host_alloc(ptr noundef %0, ptr noundef nonnull %6) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = ptrtoint ptr %36 to i32
  br label %143

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %48 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 6
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %141

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 5, i32 20
  store ptr @uniphier_sd_hw_reset, ptr %54, align 4
  %55 = load ptr, ptr %41, align 4
  %56 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 16
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %53, %40
  %59 = phi i32 [ %57, %53 ], [ %44, %40 ]
  %60 = phi ptr [ %55, %53 ], [ %42, %40 ]
  %61 = and i32 %59, 2031616
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %60, align 64
  %65 = tail call ptr @devm_pinctrl_get(ptr noundef %64) #7
  %66 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @pinctrl_lookup_state(ptr noundef %65, ptr noundef nonnull @.str.9) #7
  %70 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %6, i32 0, i32 2
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 5, i32 10
  store ptr @uniphier_sd_start_signal_voltage_switch, ptr %73, align 4
  br label %81

74:                                               ; preds = %68, %63
  %75 = phi ptr [ %65, %63 ], [ %69, %68 ]
  %76 = ptrtoint ptr %75 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %76) #8
  %77 = load ptr, ptr %41, align 4
  %78 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 16
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, -2031617
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %74, %72, %58
  %82 = load i32, ptr %11, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr @uniphier_sd_external_dma_ops, ptr @uniphier_sd_internal_dma_ops
  %86 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 44
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 11
  store i32 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 32
  store ptr @uniphier_sd_clk_enable, ptr %88, align 4
  %89 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 34
  store ptr @uniphier_sd_clk_disable, ptr %89, align 4
  %90 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 33
  store ptr @uniphier_sd_set_clock, ptr %90, align 4
  %91 = tail call i32 @uniphier_sd_clk_enable(ptr noundef %36)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.tmio_mmc_host, ptr %36, i32 0, i32 13
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %95, i32 0, i32 10
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 257
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %101 = load ptr, ptr %36, align 4
  %102 = getelementptr i8, ptr %101, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #7, !srcloc !9
  %103 = load i32, ptr %96, align 4
  %104 = shl i32 %103, 9
  %105 = and i32 %104, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %106 = load ptr, ptr %36, align 4
  %107 = getelementptr i8, ptr %106, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #7, !srcloc !9
  %108 = getelementptr inbounds %struct.tmio_mmc_data, ptr %6, i32 0, i32 6
  store i32 3145728, ptr %108, align 4
  %109 = load ptr, ptr %41, align 4
  %110 = getelementptr inbounds %struct.mmc_host, ptr %109, i32 0, i32 16
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 2031616
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 3145728, i32 3145856
  store i32 %114, ptr %108, align 4
  %115 = getelementptr inbounds %struct.tmio_mmc_data, ptr %6, i32 0, i32 10
  store i16 1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.tmio_mmc_data, ptr %6, i32 0, i32 9
  store i32 65535, ptr %116, align 4
  %117 = tail call i32 @tmio_mmc_host_probe(ptr noundef %36) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %93
  %120 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load ptr, ptr %2, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi ptr [ %124, %123 ], [ %121, %119 ]
  %127 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @tmio_mmc_irq, ptr noundef null, i32 noundef 128, ptr noundef %126, ptr noundef %36) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %125
  tail call void @tmio_mmc_host_remove(ptr noundef %36) #7
  br label %130

130:                                              ; preds = %129, %93
  %131 = phi i32 [ %117, %93 ], [ %127, %129 ]
  %132 = load ptr, ptr %94, align 4
  %133 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %132, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @reset_control_assert(ptr noundef %134) #7
  %136 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %132, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 @reset_control_assert(ptr noundef %137) #7
  %139 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %132, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  tail call void @clk_disable(ptr noundef %140) #7
  tail call void @clk_unprepare(ptr noundef %140) #7
  br label %141

141:                                              ; preds = %130, %81, %50
  %142 = phi i32 [ %52, %50 ], [ %91, %81 ], [ %131, %130 ]
  tail call void @tmio_mmc_host_free(ptr noundef %36) #7
  br label %143

143:                                              ; preds = %141, %125, %38, %30, %21, %15, %5, %1
  %144 = phi i32 [ %16, %15 ], [ %22, %21 ], [ %39, %38 ], [ %142, %141 ], [ %31, %30 ], [ %3, %1 ], [ -12, %5 ], [ 0, %125 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_sd_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @tmio_mmc_host_remove(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_assert(ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  tail call void @tmio_mmc_host_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmio_mmc_host_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_hw_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1932732) #7
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @reset_control_deassert(ptr noundef %8) #7
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_sd_clk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 4
  %15 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef -1) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 9
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 %19, ptr %21, align 16
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %20, align 4
  %31 = select i1 %29, i32 9, i32 10
  %32 = lshr i32 %30, %31
  %33 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @reset_control_deassert(ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @reset_control_deassert(ptr noundef %40) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %34, align 4
  %45 = tail call i32 @reset_control_assert(ptr noundef %44) #7
  br label %46

46:                                               ; preds = %43, %25, %13
  %47 = phi i32 [ %15, %13 ], [ %36, %25 ], [ %41, %43 ]
  %48 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %46, %10
  %50 = phi ptr [ %48, %46 ], [ %7, %10 ]
  %51 = phi i32 [ %47, %46 ], [ %11, %10 ]
  tail call void @clk_unprepare(ptr noundef %50) #7
  br label %52

52:                                               ; preds = %49, %38, %1
  %53 = phi i32 [ 0, %38 ], [ %8, %1 ], [ %51, %49 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_clk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_set_clock(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %8 = and i32 %7, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !9
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = and i32 %7, -67072
  %14 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = udiv i32 %15, %1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = or i32 %13, 1024
  br label %36

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  %25 = icmp ugt i32 %16, 512
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = or i32 %13, 65536
  br label %36

29:                                               ; preds = %20
  %30 = add i32 %16, -1
  %31 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 false) #7, !range !14
  %32 = sub nuw nsw i32 32, %31
  %33 = shl nuw i32 1, %32
  %34 = lshr i32 %33, 2
  %35 = or i32 %34, %13
  br label %36

36:                                               ; preds = %29, %27, %18
  %37 = phi i32 [ %19, %18 ], [ %28, %27 ], [ %35, %29 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !9
  %40 = or i32 %37, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !9
  br label %43

43:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_sd_start_signal_voltage_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %29 [
    i8 0, label %11
    i8 1, label %8
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 2, %8 ], [ 1, %2 ]
  %13 = phi ptr [ %10, %8 ], [ null, %2 ]
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 484
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %17 = and i32 %16, -4
  %18 = or i32 %17, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !9
  %21 = icmp eq ptr %13, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @pinctrl_select_state(ptr noundef %24, ptr noundef nonnull %13) #7
  br label %29

26:                                               ; preds = %11
  %27 = load ptr, ptr %0, align 64
  %28 = tail call i32 @pinctrl_select_default_state(ptr noundef %27) #7
  br label %29

29:                                               ; preds = %26, %22, %2
  %30 = phi i32 [ -524, %2 ], [ 0, %26 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_start(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %20, label %19, !prof !19

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 256, i32 noundef 9, ptr noundef null) #7
  br label %46

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = select i1 %10, i32 1, i32 2
  %27 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 64
  %31 = tail call i32 @dma_map_sg_attrs(ptr noundef %30, ptr noundef %6, i32 noundef 1, i32 noundef %26, i32 noundef 0) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %25
  %34 = select i1 %10, i32 49, i32 65585
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr i8, ptr %35, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !9
  %37 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr i8, ptr %41, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr i8, ptr %43, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #7, !srcloc !9
  %45 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %45, align 4
  br label %59

46:                                               ; preds = %25, %20, %19, %11
  %47 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %48(ptr noundef %0, i32 noundef 216) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %46
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 216, %56
  %58 = getelementptr i8, ptr %54, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 0) #7, !srcloc !24
  br label %59

59:                                               ; preds = %53, %50, %33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @uniphier_sd_internal_dma_enable(ptr nocapture noundef %0, i1 noundef zeroext %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_request(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr inttoptr (i32 -559038801 to ptr), ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr inttoptr (i32 -559038801 to ptr), ptr %12, align 4
  %13 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 17
  tail call void @tasklet_setup(ptr noundef %13, ptr noundef nonnull @uniphier_sd_internal_dma_issue) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @uniphier_sd_internal_dma_release(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_abort(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0, i32 noundef 216) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 216, %11
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 0) #7, !srcloc !24
  br label %14

14:                                               ; preds = %8, %5
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 1048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %18 = and i32 %17, -769
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !9
  %21 = or i32 %17, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_dataend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 216) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 216, %13
  %15 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #7, !srcloc !24
  br label %16

16:                                               ; preds = %10, %7
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef 1, i32 noundef %23, i32 noundef 0) #7
  tail call void @tmio_mmc_do_data_irq(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_internal_dma_issue(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -160
  %3 = getelementptr i8, ptr %0, i32 128
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %2, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  %5 = getelementptr i8, ptr %0, i32 176
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %2, i32 noundef 216) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 216, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 2) #7, !srcloc !24
  br label %17

17:                                               ; preds = %11, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_start(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  %14 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 64
  %18 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @dma_map_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef %13, i32 noundef 0) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %8
  %25 = load ptr, ptr %5, align 4
  %26 = load ptr, ptr %18, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %25, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 39
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = tail call ptr %33(ptr noundef nonnull %25, ptr noundef %26, i32 noundef %22, i32 noundef %13, i32 noundef 2, ptr noundef null) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 7
  store ptr @uniphier_sd_external_dma_callback, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 8
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef nonnull %36) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %46, align 4
  br label %66

47:                                               ; preds = %38, %35, %31, %28, %24
  %48 = load ptr, ptr %15, align 4
  %49 = load ptr, ptr %48, align 64
  %50 = load ptr, ptr %18, align 4
  %51 = load i32, ptr %20, align 4
  %52 = load i32, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef 0) #7
  br label %53

53:                                               ; preds = %47, %8, %2
  %54 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef %0, i32 noundef 216) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 216, %63
  %65 = getelementptr i8, ptr %61, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 0) #7, !srcloc !24
  br label %66

66:                                               ; preds = %60, %57, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @uniphier_sd_external_dma_enable(ptr nocapture noundef %0, i1 noundef zeroext %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_request(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 64
  %8 = tail call ptr @dma_request_chan(ptr noundef %7, ptr noundef nonnull @.str.11) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 4
  %12 = load ptr, ptr %11, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.12) #8
  br label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 7
  store ptr %8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  store ptr %8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 17
  tail call void @tasklet_setup(ptr noundef %17, ptr noundef nonnull @uniphier_sd_external_dma_issue) #7
  br label %18

18:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %5) #7
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_abort(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0, i32 noundef 216) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 216, %13
  %15 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #7, !srcloc !24
  br label %16

16:                                               ; preds = %10, %7
  %17 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef nonnull %18) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 48
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void %31(ptr noundef nonnull %18) #7
  br label %34

34:                                               ; preds = %33, %28, %25, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_dataend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0, i32 noundef 216) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 216, %11
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 0) #7, !srcloc !24
  br label %14

14:                                               ; preds = %8, %5
  tail call void @tmio_mmc_do_data_irq(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #7
  %14 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 27
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %0, i32 noundef 4) #7
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 5
  store i32 -110, ptr %22, align 4
  tail call void @tmio_mmc_do_data_irq(ptr noundef %0) #7
  br label %23

23:                                               ; preds = %19, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_sd_external_dma_issue(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -160
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 176
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %2, i32 noundef 216) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 216, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 2) #7, !srcloc !24
  br label %17

17:                                               ; preds = %11, %8
  %18 = getelementptr inbounds %struct.uniphier_sd_priv, ptr %4, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 50
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %19) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
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
!8 = !{i64 2155020152}
!9 = !{i64 5040142}
!10 = !{i64 2155020642}
!11 = !{i64 5040560}
!12 = !{i64 2155017867}
!13 = !{i64 2155018146}
!14 = !{i32 0, i32 33}
!15 = !{i64 2155019328}
!16 = !{i64 2155019743}
!17 = !{i64 2155021142}
!18 = !{i64 2155061578}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2155014289}
!21 = !{i64 2155014714}
!22 = !{i64 2155015164}
!23 = !{i64 2152580762}
!24 = !{i64 5039522}
!25 = !{i64 2155015803}
!26 = !{i64 2155016158}
!27 = !{i64 2155016642}
!28 = !{i64 2154929119}
