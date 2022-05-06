; ModuleID = '/llk/IR/drivers/memory/atmel-ebi.c_pt.bc'
source_filename = "../drivers/memory/atmel-ebi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_ebi_caps = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.atmel_smc_timing_xlate = type { ptr, ptr, i32 }
%struct.atmel_ebi_dev_config = type { i32, %struct.atmel_smc_cs_conf }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }
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
%struct.atmel_ebi = type { ptr, ptr, %struct.anon.5, ptr, ptr, %struct.list_head }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.atmel_ebi_dev = type { %struct.list_head, ptr, i32, i32, [0 x %struct.atmel_ebi_dev_config] }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__initcall__kmod_atmel_ebi__162_637_atmel_ebi_driver_init6 = internal global ptr @atmel_ebi_driver_init, section ".initcall6.init", align 4
@atmel_ebi_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ebi_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ebi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"atmel-ebi\00", align 1
@atmel_ebi_id_table = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-ebi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi0_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-ebi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi1_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_ebi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-ebi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ebi_caps }, %struct.of_device_id zeroinitializer], align 4
@atmel_ebi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @atmel_ebi_resume, ptr null, ptr @atmel_ebi_resume, ptr null, ptr @atmel_ebi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91sam9260_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 255, i32 284, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9261_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 255, i32 48, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9263_ebi0_caps = internal constant %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9263_ebi1_caps = internal constant %struct.atmel_ebi_caps { i32 7, i32 292, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9rl_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9g45_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 63, i32 296, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@at91sam9x5_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 63, i32 288, ptr @.str.1, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@sama5d3_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 15, i32 0, ptr null, ptr @sama5_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @sama5_ebi_apply_config }, align 4
@sam9x60_ebi_caps = internal constant %struct.atmel_ebi_caps { i32 63, i32 4, ptr @.str.28, ptr @at91sam9_ebi_get_config, ptr @atmel_ebi_xslate_smc_config, ptr @at91sam9_ebi_apply_config }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"atmel,matrix\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"atmel,smc-bus-width\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"atmel,smc-tdf-optimized\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"atmel,smc-byte-access-type\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"atmel,smc-read-mode\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nrd\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"atmel,smc-write-mode\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"nwe\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"atmel,smc-exnw-mode\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"atmel,smc-page-mode\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"missing atmel,smc- properties in %pOF\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"atmel,smc-tdf-ns\00", align 1
@timings_xlate_table = internal unnamed_addr constant [10 x %struct.atmel_smc_timing_xlate] [%struct.atmel_smc_timing_xlate { ptr @.str.18, ptr @atmel_smc_cs_conf_set_setup, i32 24 }, %struct.atmel_smc_timing_xlate { ptr @.str.19, ptr @atmel_smc_cs_conf_set_setup, i32 8 }, %struct.atmel_smc_timing_xlate { ptr @.str.20, ptr @atmel_smc_cs_conf_set_setup, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.21, ptr @atmel_smc_cs_conf_set_setup, i32 0 }, %struct.atmel_smc_timing_xlate { ptr @.str.22, ptr @atmel_smc_cs_conf_set_pulse, i32 24 }, %struct.atmel_smc_timing_xlate { ptr @.str.23, ptr @atmel_smc_cs_conf_set_pulse, i32 8 }, %struct.atmel_smc_timing_xlate { ptr @.str.24, ptr @atmel_smc_cs_conf_set_pulse, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.25, ptr @atmel_smc_cs_conf_set_pulse, i32 0 }, %struct.atmel_smc_timing_xlate { ptr @.str.26, ptr @atmel_smc_cs_conf_set_cycle, i32 16 }, %struct.atmel_smc_timing_xlate { ptr @.str.27, ptr @atmel_smc_cs_conf_set_cycle, i32 0 }], align 4
@.str.17 = private unnamed_addr constant [46 x i8] c"missing or invalid timings definition in %pOF\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"atmel,smc-ncs-rd-setup-ns\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"atmel,smc-ncs-wr-setup-ns\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"atmel,smc-nrd-setup-ns\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"atmel,smc-nwe-setup-ns\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"atmel,smc-ncs-rd-pulse-ns\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"atmel,smc-ncs-wr-pulse-ns\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"atmel,smc-nrd-pulse-ns\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"atmel,smc-nwe-pulse-ns\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"atmel,smc-nrd-cycle-ns\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"atmel,smc-nwe-cycle-ns\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"microchip,sfr\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"atmel,smc\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"missing #address-cells property\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.34 = private unnamed_addr constant [59 x i8] c"failed to configure EBI bus for %pOF, disabling the device\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"invalid reg property in %pOF\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_atmel_ebi__162_637_atmel_ebi_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_ebi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @atmel_ebi_driver, ptr noundef nonnull @atmel_ebi_probe, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ebi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.atmel_ebi_dev_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @atmel_ebi_id_table, ptr noundef %7) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %186, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %186, label %16

16:                                               ; preds = %12
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 36, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %186, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 5
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 5, i32 1
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 3
  store ptr %7, ptr %25, align 4
  %26 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef null) #8
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = ptrtoint ptr %26 to i32
  br label %186

30:                                               ; preds = %19
  store ptr %26, ptr %17, align 4
  %31 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !8
  %32 = call i32 @__of_parse_phandle_with_args(ptr noundef %31, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #8
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %5, align 4
  %35 = select i1 %33, ptr %34, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %36 = call ptr @syscon_node_to_regmap(ptr noundef %35) #8
  %37 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = ptrtoint ptr %36 to i32
  br label %186

41:                                               ; preds = %30
  %42 = call ptr @atmel_hsmc_get_reg_layout(ptr noundef %35) #8
  %43 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 2, i32 2
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  br label %186

47:                                               ; preds = %41
  %48 = call ptr @of_clk_get(ptr noundef %35, i32 noundef 0) #8
  %49 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 2, i32 1
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  %53 = icmp eq ptr %48, inttoptr (i32 -2 to ptr)
  br i1 %53, label %54, label %186

54:                                               ; preds = %51
  store ptr null, ptr %49, align 4
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi ptr [ null, %54 ], [ %48, %47 ]
  %57 = call i32 @clk_prepare(ptr noundef %56) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %186

59:                                               ; preds = %55
  %60 = call i32 @clk_enable(ptr noundef %56) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @clk_unprepare(ptr noundef %56) #8
  br label %186

63:                                               ; preds = %59
  %64 = load ptr, ptr %24, align 4
  %65 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %64, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef %70) #8
  %72 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = ptrtoint ptr %71 to i32
  br label %186

76:                                               ; preds = %68, %63
  %77 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #9
  br label %186

80:                                               ; preds = %76
  %81 = load i32, ptr %6, align 4
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #9
  br label %186

85:                                               ; preds = %80
  %86 = load i32, ptr %6, align 4
  %87 = add i32 %86, %81
  %88 = call ptr @of_get_next_available_child(ptr noundef %9, ptr noundef null) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %184, label %90

90:                                               ; preds = %85
  %91 = shl i32 %87, 2
  %92 = getelementptr inbounds %struct.atmel_ebi, ptr %17, i32 0, i32 1
  br label %93

93:                                               ; preds = %181, %90
  %94 = phi ptr [ %88, %90 ], [ %182, %181 ]
  %95 = call ptr @of_find_property(ptr noundef nonnull %94, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %181, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #8
  %99 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %100 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %94, ptr noundef nonnull @.str.33, i32 noundef %91) #8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %176

102:                                              ; preds = %117, %97
  %103 = phi i32 [ %122, %117 ], [ 0, %97 ]
  %104 = phi i32 [ %121, %117 ], [ 0, %97 ]
  %105 = mul i32 %103, %87
  %106 = call i32 @of_property_read_u32_index(ptr noundef nonnull %94, ptr noundef nonnull @.str.33, i32 noundef %105, ptr noundef nonnull %4) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %177

108:                                              ; preds = %102
  %109 = load i32, ptr %4, align 4
  %110 = icmp ugt i32 %109, 7
  br i1 %110, label %176, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %24, align 4
  %113 = load i32, ptr %112, align 4
  %114 = shl nuw nsw i32 1, %109
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %176, label %117

117:                                              ; preds = %111
  %118 = call i32 @_test_and_set_bit(i32 noundef %109, ptr noundef nonnull %3) #8
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = add i32 %104, %120
  %122 = add nuw nsw i32 %103, 1
  %123 = icmp eq i32 %122, %100
  br i1 %123, label %124, label %102

124:                                              ; preds = %117
  %125 = icmp eq i32 %121, 0
  br i1 %125, label %176, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %25, align 4
  %128 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %121, i32 24) #8
  %129 = extractvalue { i32, i1 } %128, 1
  %130 = extractvalue { i32, i1 } %128, 0
  %131 = call i32 @llvm.uadd.sat.i32(i32 %130, i32 20) #8
  %132 = select i1 %129, i32 -1, i32 %131
  %133 = call noalias ptr @devm_kmalloc(ptr noundef %127, i32 noundef %132, i32 noundef 3520) #8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %177, label %135

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %133, i32 0, i32 1
  store ptr %17, ptr %136, align 4
  %137 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %133, i32 0, i32 3
  store i32 %121, ptr %137, align 4
  %138 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %98, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 %139(ptr noundef nonnull %133, ptr noundef nonnull %94, ptr noundef nonnull %2) #8
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %177, label %142

142:                                              ; preds = %135
  %143 = icmp eq i32 %140, 0
  %144 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef 0) #8
  store i32 %144, ptr %4, align 4
  %145 = icmp ult i32 %144, 8
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %98, i32 0, i32 5
  %148 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %98, i32 0, i32 3
  br label %149

149:                                              ; preds = %167, %146
  %150 = phi i32 [ 0, %146 ], [ %168, %167 ]
  %151 = phi i32 [ %144, %146 ], [ %171, %167 ]
  %152 = getelementptr %struct.atmel_ebi_dev, ptr %133, i32 0, i32 4, i32 %150
  store i32 %151, ptr %152, align 4
  br i1 %143, label %155, label %153

153:                                              ; preds = %149
  store i32 %151, ptr %2, align 4
  %154 = load ptr, ptr %147, align 4
  call void %154(ptr noundef nonnull %133, ptr noundef nonnull %2) #8
  br label %155

155:                                              ; preds = %153, %149
  %156 = load ptr, ptr %148, align 4
  call void %156(ptr noundef nonnull %133, ptr noundef %152) #8
  %157 = load ptr, ptr %24, align 4
  %158 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %157, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i1 true, i1 %143
  br i1 %161, label %167, label %162

162:                                              ; preds = %155
  %163 = load ptr, ptr %92, align 4
  %164 = load i32, ptr %4, align 4
  %165 = shl nuw i32 1, %164
  %166 = call i32 @regmap_update_bits_base(ptr noundef %163, i32 noundef %159, i32 noundef %165, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %167

167:                                              ; preds = %162, %155
  %168 = add i32 %150, 1
  %169 = load i32, ptr %4, align 4
  %170 = add i32 %169, 1
  %171 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 8, i32 noundef %170) #8
  store i32 %171, ptr %4, align 4
  %172 = icmp ult i32 %171, 8
  br i1 %172, label %149, label %173

173:                                              ; preds = %167, %142
  %174 = load ptr, ptr %22, align 4
  store ptr %133, ptr %22, align 4
  store ptr %21, ptr %133, align 4
  %175 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %174, ptr %175, align 4
  store volatile ptr %133, ptr %174, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %181

176:                                              ; preds = %124, %111, %108, %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.35, ptr noundef nonnull %94) #9
  br label %177

177:                                              ; preds = %176, %135, %126, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef nonnull %94) #9
  %178 = call fastcc i32 @atmel_ebi_dev_disable(ptr noundef nonnull %17, ptr noundef nonnull %94)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void @of_node_put(ptr noundef nonnull %94) #8
  br label %186

181:                                              ; preds = %177, %173, %93
  %182 = call ptr @of_get_next_available_child(ptr noundef %9, ptr noundef nonnull %94) #8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %93

184:                                              ; preds = %181, %85
  %185 = call i32 @of_platform_populate(ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef %7) #8
  br label %186

186:                                              ; preds = %184, %180, %84, %79, %74, %62, %55, %51, %45, %39, %28, %16, %12, %1
  %187 = phi i32 [ %29, %28 ], [ %40, %39 ], [ %46, %45 ], [ %75, %74 ], [ %77, %79 ], [ %82, %84 ], [ %178, %180 ], [ %185, %184 ], [ -22, %12 ], [ -22, %1 ], [ -12, %16 ], [ %52, %51 ], [ %60, %62 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam9_ebi_get_config(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %1, i32 0, i32 1
  tail call void @atmel_smc_cs_conf_get(ptr noundef %6, i32 noundef %7, ptr noundef %8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ebi_xslate_smc_config(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4
  switch i32 %11, label %182 [
    i32 8, label %18
    i32 16, label %13
    i32 32, label %12
  ]

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ 8192, %12 ], [ 4096, %10 ]
  %15 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %13, %10, %3
  %19 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 1048576
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ true, %21 ], [ %9, %18 ]
  store ptr null, ptr %5, align 4
  %27 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #8
  %28 = load ptr, ptr %5, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = call i32 @strcmp(ptr noundef nonnull %28, ptr noundef nonnull dereferenceable(6) @.str.5)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 256
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %30, %25
  %38 = phi i1 [ %26, %30 ], [ true, %33 ], [ %26, %25 ]
  store ptr null, ptr %5, align 4
  %39 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #8
  %40 = load ptr, ptr %5, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = call i32 @strcmp(ptr noundef nonnull %40, ptr noundef nonnull dereferenceable(4) @.str.7)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %42, %37
  %50 = phi i1 [ %38, %42 ], [ true, %45 ], [ %38, %37 ]
  store ptr null, ptr %5, align 4
  %51 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #8
  %52 = load ptr, ptr %5, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = call i32 @strcmp(ptr noundef nonnull %52, ptr noundef nonnull dereferenceable(4) @.str.9)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 2
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %57, %54, %49
  %62 = phi i1 [ %50, %54 ], [ true, %57 ], [ %50, %49 ]
  store ptr null, ptr %5, align 4
  %63 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #8
  %64 = load ptr, ptr %5, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(7) @.str.11)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(6) @.str.12)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(9) @.str.13)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %182

75:                                               ; preds = %69, %66
  %76 = phi i32 [ 32, %66 ], [ 48, %69 ]
  %77 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %72, %61
  %81 = phi i1 [ %62, %61 ], [ true, %72 ], [ true, %75 ]
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load i32, ptr %6, align 4
  %86 = add i32 %85, -4
  %87 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 30)
  switch i32 %87, label %182 [
    i32 0, label %88
    i32 1, label %91
    i32 3, label %95
    i32 7, label %99
  ]

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %90 = load i32, ptr %89, align 4
  br label %103

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 268435456
  br label %103

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 536870912
  br label %103

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = or i32 %101, 805306368
  br label %103

103:                                              ; preds = %99, %95, %91, %88
  %104 = phi i32 [ %90, %88 ], [ %102, %99 ], [ %98, %95 ], [ %94, %91 ]
  %105 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %106 = or i32 %104, 16777216
  store i32 %106, ptr %105, align 4
  br label %107

107:                                              ; preds = %103, %80
  %108 = phi i1 [ %81, %80 ], [ true, %103 ]
  %109 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %0, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @clk_get_rate(ptr noundef %111) #8
  %113 = udiv i32 1000000000, %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %114 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = add nsw i32 %113, -1
  br label %132

118:                                              ; preds = %107
  %119 = load i32, ptr %4, align 4
  %120 = add nsw i32 %113, -1
  %121 = add i32 %119, %120
  %122 = udiv i32 %121, %113
  %123 = icmp ugt i32 %122, 16
  br i1 %123, label %163, label %124

124:                                              ; preds = %118
  %125 = icmp ugt i32 %113, %121
  %126 = shl nuw nsw i32 %122, 16
  %127 = add nsw i32 %126, -65536
  %128 = select i1 %125, i32 0, i32 %127
  %129 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %2, i32 0, i32 1, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, ptr %129, align 4
  br label %132

132:                                              ; preds = %124, %116
  %133 = phi i32 [ %117, %116 ], [ %120, %124 ]
  br label %134

134:                                              ; preds = %158, %132
  %135 = phi i32 [ 0, %132 ], [ %159, %158 ]
  %136 = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %135
  %137 = load ptr, ptr %136, align 4
  %138 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %137, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = add nuw nsw i32 %135, 1
  %142 = icmp eq i32 %141, 10
  %143 = select i1 %115, i1 true, i1 %142
  br i1 %143, label %163, label %158

144:                                              ; preds = %134
  br i1 %115, label %145, label %163

145:                                              ; preds = %144
  %146 = load i32, ptr %4, align 4
  %147 = add i32 %146, %133
  %148 = udiv i32 %147, %113
  %149 = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %135, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr [10 x %struct.atmel_smc_timing_xlate], ptr @timings_xlate_table, i32 0, i32 %135, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = call i32 %150(ptr noundef %7, i32 noundef %152, i32 noundef %148) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = add nuw nsw i32 %135, 1
  %157 = icmp eq i32 %156, 10
  br i1 %157, label %160, label %158

158:                                              ; preds = %155, %140
  %159 = phi i32 [ %156, %155 ], [ %141, %140 ]
  br label %134

160:                                              ; preds = %155
  %161 = xor i32 %114, -1
  %162 = lshr i32 %161, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %169

163:                                              ; preds = %145, %144, %140, %118
  %164 = phi i32 [ -22, %118 ], [ %153, %145 ], [ -22, %144 ], [ %138, %140 ]
  %165 = load ptr, ptr %109, align 4
  %166 = getelementptr inbounds %struct.atmel_ebi, ptr %165, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.17, ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %168 = icmp slt i32 %164, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %163, %160
  %170 = phi i32 [ %162, %160 ], [ %164, %163 ]
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i1 true, i1 %108
  %173 = xor i1 %172, true
  %174 = select i1 %171, i1 %108, i1 false
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load ptr, ptr %109, align 4
  %178 = getelementptr inbounds %struct.atmel_ebi, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.15, ptr noundef %1) #9
  br label %182

180:                                              ; preds = %169
  %181 = zext i1 %108 to i32
  br label %182

182:                                              ; preds = %180, %176, %163, %84, %72, %10
  %183 = phi i32 [ %181, %180 ], [ -22, %176 ], [ -22, %10 ], [ -22, %72 ], [ -22, %84 ], [ -22, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam9_ebi_apply_config(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %1, i32 0, i32 1
  tail call void @atmel_smc_cs_conf_apply(ptr noundef %6, i32 noundef %7, ptr noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_setup(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_pulse(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_cycle(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sama5_ebi_get_config(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %1, i32 0, i32 1
  tail call void @atmel_hsmc_cs_conf_get(ptr noundef %6, ptr noundef %8, i32 noundef %9, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sama5_ebi_apply_config(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_ebi, ptr %4, i32 0, i32 2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.atmel_ebi_dev_config, ptr %1, i32 0, i32 1
  tail call void @atmel_hsmc_cs_conf_apply(ptr noundef %6, ptr noundef %8, i32 noundef %9, ptr noundef %10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_apply(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ebi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_ebi, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %28, label %10

7:                                                ; preds = %17, %10
  %8 = load ptr, ptr %11, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %28, label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.atmel_ebi_dev, ptr %11, i32 0, i32 1
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %25, %17 ]
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.atmel_ebi, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atmel_ebi_caps, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.atmel_ebi_dev, ptr %11, i32 0, i32 4, i32 %18
  tail call void %23(ptr noundef %11, ptr noundef %24) #8
  %25 = add nuw nsw i32 %18, 1
  %26 = load i32, ptr %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %17, label %7

28:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_hsmc_get_reg_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_ebi_dev_disable(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_ebi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 52, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = tail call noalias ptr @devm_kstrdup(ptr noundef %4, ptr noundef nonnull @.str.36, i32 noundef 3264) #8
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = tail call noalias ptr @devm_kstrdup(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef 3264) #8
  %12 = getelementptr inbounds %struct.property, ptr %5, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %5, i32 0, i32 1
  store i32 9, ptr %15, align 4
  %16 = tail call i32 @of_update_property(ptr noundef %1, ptr noundef nonnull %5) #8
  br label %17

17:                                               ; preds = %14, %10, %7, %2
  %18 = phi i32 [ %16, %14 ], [ -12, %2 ], [ -12, %7 ], [ -12, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_update_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
