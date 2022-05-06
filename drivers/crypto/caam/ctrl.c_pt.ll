; ModuleID = '/llk/IR/drivers/crypto/caam/ctrl.c_pt.bc'
source_filename = "../drivers/crypto/caam/ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_dpaa2:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_dpaa2\22\09\09\09\09\09"
module asm "__kstrtabns_caam_dpaa2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.caam_imx_data = type { ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.anon.148 = type { i16, i8, i8 }
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
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.144, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.144 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_queue_if = type { i32, i32, i32, i32, i32, i32, i32, i32, [1016 x i32] }
%struct.caam_deco = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, [7 x i32], i32, i32, i32, i32, i32, i32, i32, [24 x i32], [16 x i32], [48 x i32], [8 x i32], [121 x i32], i32, i32, i32, i32, i32, i32, i32, [56 x i32], [18 x i32], [46 x i32], [32 x i32], [84 x i32], i32, i32, [2 x i32], i64, [2 x i32], i64, [2 x i32], i32, i32, i64, i32, i32, [2 x i32], i32, i32, [6 x i32], [4 x i64], [8 x i32], [4 x %struct.deco_sg_table], [16 x i32], [4 x %struct.deco_sg_table], [48 x i32], [64 x i32], [193 x i32], i32, [13 x i32], i32, [112 x i32] }
%struct.deco_sg_table = type { i64, i32, i32 }

@caam_dpaa2 = dso_local global i8 0, align 1
@__kstrtab_caam_dpaa2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_dpaa2 = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_dpaa2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_dpaa2 to i32), ptr @__kstrtab_caam_dpaa2, ptr @__kstrtabns_caam_dpaa2 }, section "___ksymtab+caam_dpaa2", align 4
@caam_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sec4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license467 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [37 x i8] c"description=FSL CAAM request backend\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [41 x i8] c"author=Freescale Semiconductor - NMG/STC\00", section ".modinfo", align 1
@caam_driver = internal global %struct.platform_driver { ptr @caam_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @caam_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [5 x i8] c"caam\00", align 1
@caam_imx_soc_table = internal constant [7 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr @caam_imx6ul_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr @caam_imx6_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.15, ptr @caam_imx7_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr @caam_imx7_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.17, ptr @caam_vf610_data, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No clock data provided for i.MX SoC\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"caam: of_iomap() failed\0A\00", align 1
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"fsl,qoriq-mc\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"dma_set_mask_and_coherent failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fsl,sec-v4.0-job-ring\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"fsl,sec4.0-job-ring\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"no queues configured, terminating\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Entropy delay = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to instantiate RNG\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"device ID = 0x%016llx (Era %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"job rings = %d, qi = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JR platform devices creation error\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"i.MX6UL\00", align 1
@caam_imx6ul_data = internal constant %struct.caam_imx_data { ptr @caam_imx6ul_clks, i32 3 }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"i.MX6*\00", align 1
@caam_imx6_data = internal constant %struct.caam_imx_data { ptr @caam_imx6_clks, i32 4 }, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"i.MX7*\00", align 1
@caam_imx7_data = internal constant %struct.caam_imx_data { ptr @caam_imx7_clks, i32 2 }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"i.MX8M*\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"VF*\00", align 1
@caam_vf610_data = internal constant %struct.caam_imx_data { ptr @caam_vf610_clks, i32 1 }, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Freescale i.MX\00", align 1
@caam_imx6ul_clks = internal constant [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.19, ptr null }, %struct.clk_bulk_data { ptr @.str.20, ptr null }, %struct.clk_bulk_data { ptr @.str.21, ptr null }], align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@caam_imx6_clks = internal constant [4 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.19, ptr null }, %struct.clk_bulk_data { ptr @.str.20, ptr null }, %struct.clk_bulk_data { ptr @.str.21, ptr null }, %struct.clk_bulk_data { ptr @.str.22, ptr null }], align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"emi_slow\00", align 1
@caam_imx7_clks = internal constant [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.19, ptr null }, %struct.clk_bulk_data { ptr @.str.21, ptr null }], align 4
@caam_vf610_clks = internal constant [1 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.19, ptr null }], align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"Failed to request all necessary clocks\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Failed to prepare/enable all necessary clocks\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"fsl,imx6qp\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"fsl,sec-v5.0-job-ring\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"fsl,sec-v5.0\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"fsl,sec-v4.0\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"fsl,sec-era\00", align 1
@caam_get_era_from_hw.id = internal unnamed_addr constant [13 x %struct.anon.148] [%struct.anon.148 { i16 2576, i8 1, i8 1 }, %struct.anon.148 { i16 2576, i8 2, i8 2 }, %struct.anon.148 { i16 2578, i8 1, i8 3 }, %struct.anon.148 { i16 2580, i8 1, i8 3 }, %struct.anon.148 { i16 2580, i8 2, i8 4 }, %struct.anon.148 { i16 2582, i8 1, i8 4 }, %struct.anon.148 { i16 2576, i8 3, i8 4 }, %struct.anon.148 { i16 2577, i8 1, i8 4 }, %struct.anon.148 { i16 2584, i8 1, i8 4 }, %struct.anon.148 { i16 2577, i8 2, i8 5 }, %struct.anon.148 { i16 2578, i8 2, i8 5 }, %struct.anon.148 { i16 2579, i8 1, i8 5 }, %struct.anon.148 { i16 2588, i8 1, i8 5 }], align 2
@.str.32 = private unnamed_addr constant [86 x i8] c"RNG4 SH%d was previously instantiated without prediction resistance. Tearing it down\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Instantiated RNG4 SH%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.34 = private unnamed_addr constant [35 x i8] c"Failed to deinstantiate RNG4 SH%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Deinstantiated RNG4 SH%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"fsl,imx8mq\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"fsl,imx8mm\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"fsl,imx8mn\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"fsl,imx8mp\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"failed to acquire DECO 0\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_license467, ptr @__ksymtab_caam_dpaa2], section "llvm.metadata"
@switch.table.caam_probe = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 6], align 4

@__mod_of__caam_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @caam_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @caam_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @caam_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caam_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 92, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %633, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @soc_device_match(ptr noundef nonnull @caam_imx_soc_table) #9
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i8
  store i8 %13, ptr @caam_imx, align 1
  br i1 %12, label %14, label %52

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.soc_device_attribute, ptr %11, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  br label %633

19:                                               ; preds = %14
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds %struct.caam_imx_data, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.caam_drv_private, ptr %20, i32 0, i32 14
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = load i32, ptr %21, align 4
  %26 = shl i32 %25, 3
  %27 = tail call ptr @devm_kmemdup(ptr noundef %4, ptr noundef %24, i32 noundef %26, i32 noundef 3264) #9
  %28 = getelementptr inbounds %struct.caam_drv_private, ptr %20, i32 0, i32 13
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %633, label %30

30:                                               ; preds = %19
  %31 = load i32, ptr %23, align 4
  %32 = tail call i32 @devm_clk_bulk_get(ptr noundef %4, i32 noundef %31, ptr noundef nonnull %27) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23) #10
  br label %633

35:                                               ; preds = %30
  %36 = load i32, ptr %23, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = tail call i32 @clk_bulk_prepare(i32 noundef %36, ptr noundef %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = tail call i32 @clk_bulk_enable(i32 noundef %36, ptr noundef %37) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  tail call void @clk_bulk_unprepare(i32 noundef %36, ptr noundef %37) #9
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi i32 [ %41, %43 ], [ %38, %35 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24) #10
  br label %633

46:                                               ; preds = %40
  %47 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @disable_clocks, ptr noundef %20) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %23, align 4
  %51 = load ptr, ptr %28, align 4
  tail call void @clk_bulk_disable(i32 noundef %50, ptr noundef %51) #9
  tail call void @clk_bulk_unprepare(i32 noundef %50, ptr noundef %51) #9
  br label %633

52:                                               ; preds = %46, %7
  %53 = tail call ptr @devm_of_iomap(ptr noundef %4, ptr noundef %10, i32 noundef 0, ptr noundef null) #9
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = ptrtoint ptr %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  br label %633

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 17
  %59 = load i8, ptr @caam_little_end, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9
  br i1 %60, label %63, label %62

62:                                               ; preds = %57
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %65

63:                                               ; preds = %57
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ %61, %62 ], [ %64, %63 ]
  %67 = and i32 %66, 263168
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr @caam_little_end, align 1
  %70 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 10
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9
  br i1 %68, label %72, label %73

72:                                               ; preds = %65
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %75

73:                                               ; preds = %65
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ %71, %72 ], [ %74, %73 ]
  %77 = and i32 %76, 131072
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 1
  %81 = load i8, ptr @caam_little_end, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #9
  br i1 %82, label %85, label %84

84:                                               ; preds = %79
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %87

85:                                               ; preds = %79
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %83, %84 ], [ %86, %85 ]
  %89 = and i32 %88, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %75
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i32 [ 4, %91 ], [ 8, %87 ]
  store i32 %93, ptr @caam_ptr_sz, align 4
  %94 = lshr i32 %76, 13
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, ptr @caam_dpaa2, align 1
  %97 = lshr i32 %76, 25
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 7
  store i8 %99, ptr %100, align 1
  %101 = and i32 %76, 16
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 4096, i32 65536
  store ptr %53, ptr %5, align 4
  %104 = mul nuw nsw i32 %103, 6
  %105 = getelementptr i8, ptr %53, i32 %104
  %106 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 2
  store ptr %105, ptr %106, align 4
  %107 = shl nuw nsw i32 %103, 3
  %108 = getelementptr i8, ptr %53, i32 %107
  %109 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 1
  store ptr %108, ptr %109, align 4
  %110 = tail call i32 @irq_of_parse_and_map(ptr noundef %10, i32 noundef 0) #9
  %111 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 9
  store i32 %110, ptr %111, align 4
  %112 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #9
  %113 = icmp ne ptr %112, null
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 8
  store i8 %114, ptr %115, align 2
  tail call void @of_node_put(ptr noundef %112) #9
  %116 = load i8, ptr %115, align 2
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %92
  %119 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 1
  %120 = load i8, ptr @caam_little_end, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %124 = and i32 %123, -1073745669
  %125 = or i32 %124, 1073742596
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %125) #9, !srcloc !13
  br label %130

126:                                              ; preds = %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %128 = and i32 %127, -68091969
  %129 = or i32 %128, 67305536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %129) #9, !srcloc !13
  br label %130

130:                                              ; preds = %126, %122, %92
  %131 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 1
  %132 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.25) #9
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.26) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.27) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137, %134, %130
  %141 = load i8, ptr @caam_little_end, align 1, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %145 = and i32 %144, -241
  %146 = or i32 %145, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %146) #9, !srcloc !13
  br label %151

147:                                              ; preds = %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %149 = and i32 %148, 268435455
  %150 = or i32 %149, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %150) #9, !srcloc !13
  br label %151

151:                                              ; preds = %147, %143, %137
  %152 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 3
  %153 = load i8, ptr @caam_little_end, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9
  br i1 %154, label %157, label %156

156:                                              ; preds = %151
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %159

157:                                              ; preds = %151
  %158 = tail call i32 @llvm.bswap.i32(i32 %155) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %159

159:                                              ; preds = %157, %156
  %160 = phi i32 [ %155, %156 ], [ %158, %157 ]
  %161 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 10
  store i32 0, ptr %161, align 4
  %162 = and i32 %76, 1
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %76, 2
  %165 = icmp eq i32 %164, 0
  br i1 %163, label %170, label %166

166:                                              ; preds = %159
  %167 = and i32 %160, 32768
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %165, i1 %168, i1 false
  br i1 %169, label %181, label %171

170:                                              ; preds = %159
  br i1 %165, label %181, label %171

171:                                              ; preds = %170, %166
  store i32 1, ptr %161, align 4
  %172 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 6
  %173 = load i8, ptr @caam_little_end, align 1, !range !8
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %177 = or i32 %176, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %177) #9, !srcloc !13
  br label %181

178:                                              ; preds = %171
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %180 = or i32 %179, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %180) #9, !srcloc !13
  br label %181

181:                                              ; preds = %178, %175, %170, %166
  %182 = load ptr, ptr %9, align 8
  %183 = load i32, ptr @caam_ptr_sz, align 4
  %184 = icmp eq i32 %183, 8
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load i8, ptr @caam_dpaa2, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = tail call i32 @of_device_is_compatible(ptr noundef %182, ptr noundef nonnull @.str.28) #9
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = tail call i32 @of_device_is_compatible(ptr noundef %182, ptr noundef nonnull @.str.29) #9
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i64 68719476735, i64 1099511627775
  br label %195

195:                                              ; preds = %191, %188, %185, %181
  %196 = phi i64 [ 4294967295, %181 ], [ 562949953421311, %185 ], [ 1099511627775, %188 ], [ %194, %191 ]
  %197 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef %196) #9
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %197) #10
  br label %633

200:                                              ; preds = %195
  %201 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %196) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !16
  %202 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30) #9
  %203 = call i32 @of_property_read_variable_u32_array(ptr noundef %202, ptr noundef nonnull @.str.31, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  call void @of_node_put(ptr noundef %202) #9
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, ptr %3, align 4
  br label %260

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 20
  %209 = load i8, ptr @caam_little_end, align 1, !range !8
  %210 = icmp eq i8 %209, 0
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #9
  br i1 %210, label %213, label %212

212:                                              ; preds = %207
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %215

213:                                              ; preds = %207
  %214 = call i32 @llvm.bswap.i32(i32 %211) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %215

215:                                              ; preds = %213, %212
  %216 = phi i32 [ %211, %212 ], [ %214, %213 ]
  %217 = icmp ult i32 %216, 16777216
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = lshr i32 %216, 24
  br label %260

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 25
  %222 = load i8, ptr @caam_little_end, align 1, !range !8
  %223 = icmp eq i8 %222, 0
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #9
  br i1 %223, label %226, label %225

225:                                              ; preds = %220
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %228

226:                                              ; preds = %220
  %227 = call i32 @llvm.bswap.i32(i32 %224) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i32 [ %224, %225 ], [ %227, %226 ]
  %230 = lshr i32 %229, 16
  %231 = lshr i32 %229, 8
  %232 = trunc i32 %231 to i8
  %233 = trunc i32 %230 to i16
  switch i16 %233, label %260 [
    i16 2576, label %234
    i16 2578, label %249
    i16 2580, label %250
    i16 2582, label %251
    i16 2577, label %253
    i16 2584, label %254
    i16 2579, label %256
    i16 2588, label %258
  ]

234:                                              ; preds = %228
  %235 = add i8 %232, -1
  %236 = icmp ult i8 %235, 3
  br i1 %236, label %240, label %260

237:                                              ; preds = %250
  br label %244

238:                                              ; preds = %253
  br label %244

239:                                              ; preds = %249
  br label %244

240:                                              ; preds = %234
  %241 = sext i8 %235 to i32
  %242 = getelementptr inbounds [3 x i32], ptr @switch.table.caam_probe, i32 0, i32 %241
  %243 = load i32, ptr %242, align 4
  br label %244

244:                                              ; preds = %258, %256, %254, %253, %251, %250, %249, %240, %239, %238, %237
  %245 = phi i32 [ 2, %249 ], [ 3, %250 ], [ 5, %251 ], [ 7, %253 ], [ 8, %254 ], [ 11, %256 ], [ 12, %258 ], [ 4, %237 ], [ 9, %238 ], [ 10, %239 ], [ %243, %240 ]
  %246 = getelementptr [13 x %struct.anon.148], ptr @caam_get_era_from_hw.id, i32 0, i32 %245, i32 2
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  br label %260

249:                                              ; preds = %228
  switch i8 %232, label %260 [
    i8 1, label %244
    i8 2, label %239
  ]

250:                                              ; preds = %228
  switch i8 %232, label %260 [
    i8 1, label %244
    i8 2, label %237
  ]

251:                                              ; preds = %228
  %252 = icmp eq i8 %232, 1
  br i1 %252, label %244, label %260

253:                                              ; preds = %228
  switch i8 %232, label %260 [
    i8 1, label %244
    i8 2, label %238
  ]

254:                                              ; preds = %228
  %255 = icmp eq i8 %232, 1
  br i1 %255, label %244, label %260

256:                                              ; preds = %228
  %257 = icmp eq i8 %232, 1
  br i1 %257, label %244, label %260

258:                                              ; preds = %228
  %259 = icmp eq i8 %232, 1
  br i1 %259, label %244, label %260

260:                                              ; preds = %258, %256, %254, %253, %251, %250, %249, %244, %234, %228, %218, %205
  %261 = phi i32 [ %206, %205 ], [ %219, %218 ], [ %248, %244 ], [ -524, %258 ], [ -524, %256 ], [ -524, %251 ], [ -524, %254 ], [ -524, %250 ], [ -524, %253 ], [ -524, %234 ], [ -524, %228 ], [ -524, %249 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %262 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 11
  store i32 %261, ptr %262, align 4
  %263 = call ptr @iommu_get_domain_for_dev(ptr noundef %4) #9
  %264 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 5
  store ptr %263, ptr %264, align 4
  %265 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load ptr, ptr %4, align 4
  br label %270

270:                                              ; preds = %268, %260
  %271 = phi ptr [ %269, %268 ], [ %266, %260 ]
  %272 = call ptr @debugfs_create_dir(ptr noundef %271, ptr noundef null) #9
  %273 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @caam_remove_debugfs, ptr noundef %272) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %270
  call void @debugfs_remove(ptr noundef %272) #9
  br label %633

276:                                              ; preds = %270
  call void @caam_debugfs_init(ptr noundef nonnull %5, ptr noundef %272) #9
  %277 = load i8, ptr %100, align 1
  %278 = icmp ne i8 %277, 0
  %279 = load i8, ptr @caam_dpaa2, align 1
  %280 = icmp eq i8 %279, 0
  %281 = select i1 %278, i1 %280, i1 false
  br i1 %281, label %282, label %291

282:                                              ; preds = %276
  %283 = mul nuw nsw i32 %103, 7
  %284 = getelementptr i8, ptr %53, i32 %283
  %285 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 3
  store ptr %284, ptr %285, align 4
  %286 = getelementptr inbounds %struct.caam_queue_if, ptr %284, i32 0, i32 1
  %287 = load i8, ptr @caam_little_end, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  br i1 %288, label %290, label %289

289:                                              ; preds = %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 1) #9, !srcloc !13
  br label %291

290:                                              ; preds = %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 16777216) #9, !srcloc !13
  br label %291

291:                                              ; preds = %290, %289, %276
  %292 = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #9
  %293 = icmp eq ptr %292, null
  br i1 %293, label %315, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 6
  br label %296

296:                                              ; preds = %311, %294
  %297 = phi ptr [ %292, %294 ], [ %313, %311 ]
  %298 = phi i32 [ 0, %294 ], [ %312, %311 ]
  %299 = call i32 @of_device_is_compatible(ptr noundef nonnull %297, ptr noundef nonnull @.str.5) #9
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = call i32 @of_device_is_compatible(ptr noundef nonnull %297, ptr noundef nonnull @.str.6) #9
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %301, %296
  %305 = add i32 %298, 1
  %306 = mul i32 %305, %103
  %307 = getelementptr i8, ptr %53, i32 %306
  %308 = getelementptr %struct.caam_drv_private, ptr %5, i32 0, i32 4, i32 %298
  store ptr %307, ptr %308, align 4
  %309 = load i8, ptr %295, align 4
  %310 = add i8 %309, 1
  store i8 %310, ptr %295, align 4
  br label %311

311:                                              ; preds = %304, %301
  %312 = phi i32 [ %305, %304 ], [ %298, %301 ]
  %313 = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef nonnull %297) #9
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %296

315:                                              ; preds = %311, %291
  %316 = load i8, ptr %100, align 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 6
  %320 = load i8, ptr %319, align 4
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #10
  br label %633

323:                                              ; preds = %318, %315
  %324 = load i32, ptr %262, align 4
  %325 = icmp slt i32 %324, 10
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 22
  %328 = load i8, ptr @caam_little_end, align 1, !range !8
  %329 = icmp eq i8 %328, 0
  %330 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #9
  br i1 %329, label %332, label %331

331:                                              ; preds = %326
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %334

332:                                              ; preds = %326
  %333 = call i32 @llvm.bswap.i32(i32 %330) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %334

334:                                              ; preds = %332, %331
  %335 = phi i32 [ %330, %331 ], [ %333, %332 ]
  %336 = lshr i32 %335, 16
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 15
  br label %351

339:                                              ; preds = %323
  %340 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 25, i32 13
  %341 = load i8, ptr @caam_little_end, align 1, !range !8
  %342 = icmp eq i8 %341, 0
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %340) #9
  br i1 %342, label %345, label %344

344:                                              ; preds = %339
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %347

345:                                              ; preds = %339
  %346 = call i32 @llvm.bswap.i32(i32 %343) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %347

347:                                              ; preds = %345, %344
  %348 = phi i32 [ %343, %344 ], [ %346, %345 ]
  %349 = lshr i32 %348, 24
  %350 = trunc i32 %349 to i8
  br label %351

351:                                              ; preds = %347, %334
  %352 = phi i8 [ %338, %334 ], [ %350, %347 ]
  %353 = icmp ugt i8 %352, 3
  br i1 %353, label %354, label %601

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 23, i32 0, i32 0, i32 26, i32 3
  %356 = load i8, ptr @caam_little_end, align 1, !range !8
  %357 = icmp eq i8 %356, 0
  %358 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #9
  br i1 %357, label %360, label %359

359:                                              ; preds = %354
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %362

360:                                              ; preds = %354
  %361 = call i32 @llvm.bswap.i32(i32 %358) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %362

362:                                              ; preds = %360, %359
  %363 = phi i32 [ %358, %359 ], [ %361, %360 ]
  %364 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 12
  %365 = and i32 %363, 51
  store i32 %365, ptr %364, align 4
  %366 = and i32 %363, 1073741824
  %367 = icmp eq i32 %366, 0
  br label %368

368:                                              ; preds = %592, %362
  %369 = phi i32 [ 3200, %362 ], [ %454, %592 ]
  %370 = load i8, ptr @caam_little_end, align 1, !range !8
  %371 = icmp eq i8 %370, 0
  %372 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #9
  br i1 %371, label %374, label %373

373:                                              ; preds = %368
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %376

374:                                              ; preds = %368
  %375 = call i32 @llvm.bswap.i32(i32 %372) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %376

376:                                              ; preds = %374, %373
  %377 = phi i32 [ %372, %373 ], [ %375, %374 ]
  %378 = and i32 %377, 51
  %379 = load i32, ptr %364, align 4
  %380 = icmp ne i32 %379, 0
  %381 = icmp ne i32 %378, 0
  %382 = select i1 %380, i1 true, i1 %381
  br i1 %382, label %453, label %383

383:                                              ; preds = %376
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %369) #10
  %384 = load ptr, ptr %8, align 8
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.caam_ctrl, ptr %385, i32 0, i32 23
  %387 = load i8, ptr @caam_little_end, align 1, !range !8
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %383
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %391 = or i32 %390, 65568
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %391) #9, !srcloc !13
  br label %395

392:                                              ; preds = %383
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %393 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %394 = or i32 %393, 536871168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %394) #9, !srcloc !13
  br label %395

395:                                              ; preds = %392, %389
  %396 = getelementptr inbounds %struct.caam_ctrl, ptr %385, i32 0, i32 23, i32 0, i32 0, i32 2
  %397 = load i8, ptr @caam_little_end, align 1, !range !8
  %398 = icmp eq i8 %397, 0
  %399 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #9
  br i1 %398, label %401, label %400

400:                                              ; preds = %395
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %403

401:                                              ; preds = %395
  %402 = call i32 @llvm.bswap.i32(i32 %399) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %403

403:                                              ; preds = %401, %400
  %404 = phi i32 [ %399, %400 ], [ %402, %401 ]
  %405 = lshr i32 %404, 16
  %406 = icmp ult i32 %405, %369
  br i1 %406, label %407, label %440

407:                                              ; preds = %403
  %408 = load i8, ptr @caam_little_end, align 1, !range !8
  %409 = icmp eq i8 %408, 0
  %410 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #9
  br i1 %409, label %412, label %411

411:                                              ; preds = %407
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %414

412:                                              ; preds = %407
  %413 = call i32 @llvm.bswap.i32(i32 %410) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %414

414:                                              ; preds = %412, %411
  %415 = phi i32 [ %410, %411 ], [ %413, %412 ]
  %416 = and i32 %415, 65535
  %417 = shl i32 %369, 16
  %418 = or i32 %416, %417
  %419 = load i8, ptr @caam_little_end, align 1, !range !8
  %420 = icmp eq i8 %419, 0
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  br i1 %420, label %422, label %421

421:                                              ; preds = %414
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %418) #9, !srcloc !13
  br label %424

422:                                              ; preds = %414
  %423 = call i32 @llvm.bswap.i32(i32 %418) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %423) #9, !srcloc !13
  br label %424

424:                                              ; preds = %422, %421
  %425 = getelementptr inbounds %struct.caam_ctrl, ptr %385, i32 0, i32 23, i32 0, i32 0, i32 3, i32 1
  %426 = ashr i32 %369, 2
  %427 = load i8, ptr @caam_little_end, align 1, !range !8
  %428 = icmp eq i8 %427, 0
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  br i1 %428, label %430, label %429

429:                                              ; preds = %424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %425, i32 %426) #9, !srcloc !13
  br label %432

430:                                              ; preds = %424
  %431 = call i32 @llvm.bswap.i32(i32 %426) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %425, i32 %431) #9, !srcloc !13
  br label %432

432:                                              ; preds = %430, %429
  %433 = getelementptr inbounds %struct.caam_ctrl, ptr %385, i32 0, i32 23, i32 0, i32 0, i32 3, i32 2
  %434 = load i8, ptr @caam_little_end, align 1, !range !8
  %435 = icmp eq i8 %434, 0
  call void asm sideeffect "dsb st", "~{memory}"() #9
  call void @arm_heavy_mb() #9
  br i1 %435, label %437, label %436

436:                                              ; preds = %432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 1048576) #9, !srcloc !13
  br label %438

437:                                              ; preds = %432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 4096) #9, !srcloc !13
  br label %438

438:                                              ; preds = %437, %436
  %439 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9
  br label %440

440:                                              ; preds = %438, %403
  %441 = load i8, ptr @caam_little_end, align 1, !range !8
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %447, label %443

443:                                              ; preds = %440
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %445 = and i32 %444, -65570
  %446 = or i32 %445, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %446) #9, !srcloc !13
  br label %451

447:                                              ; preds = %440
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %448 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %449 = and i32 %448, -553648385
  %450 = or i32 %449, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %450) #9, !srcloc !13
  br label %451

451:                                              ; preds = %447, %443
  %452 = add nsw i32 %369, 400
  br label %453

453:                                              ; preds = %451, %376
  %454 = phi i32 [ %369, %376 ], [ %452, %451 ]
  %455 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  %456 = load ptr, ptr %455, align 4
  %457 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 6), align 4
  %458 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %457, i32 noundef 3265, i32 noundef 28) #11
  %459 = icmp eq ptr %458, null
  br i1 %459, label %594, label %460

460:                                              ; preds = %453
  %461 = getelementptr i32, ptr %458, i32 1
  %462 = getelementptr inbounds %struct.caam_ctrl, ptr %456, i32 0, i32 23, i32 0, i32 0, i32 26, i32 3
  br label %463

463:                                              ; preds = %578, %460
  %464 = phi i1 [ true, %460 ], [ false, %578 ]
  %465 = phi i32 [ 0, %460 ], [ 1, %578 ]
  %466 = shl nuw nsw i32 1, %465
  %467 = shl nuw nsw i32 17, %465
  %468 = and i32 %466, %378
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %477, label %470

470:                                              ; preds = %463
  %471 = shl nuw nsw i32 16, %465
  %472 = and i32 %471, %378
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %578

474:                                              ; preds = %470
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %465) #10
  %475 = call fastcc i32 @deinstantiate_rng(ptr noundef %4, i32 noundef %466) #9
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %576

477:                                              ; preds = %474, %463
  %478 = load i8, ptr @caam_little_end, align 1, !range !8
  %479 = icmp eq i8 %478, 0
  %480 = select i1 %479, i32 16810160, i32 -1333788671
  %481 = shl nuw nsw i32 %465, 4
  %482 = or i32 %481, -2108686330
  %483 = call i32 @llvm.bswap.i32(i32 %482) #9
  %484 = select i1 %479, i32 %483, i32 %482
  store i32 %484, ptr %461, align 4
  %485 = call i32 @llvm.bswap.i32(i32 %480) #9
  %486 = add nuw nsw i32 %485, 1
  %487 = select i1 %479, i32 %486, i32 -1333788670
  %488 = call i32 @llvm.bswap.i32(i32 %487) #9
  %489 = select i1 %479, i32 %488, i32 -1333788670
  store i32 %489, ptr %458, align 8
  %490 = and i1 %367, %464
  br i1 %490, label %491, label %547

491:                                              ; preds = %477
  %492 = lshr i32 %488, 24
  %493 = and i32 %492, 127
  %494 = select i1 %479, i32 %493, i32 2
  %495 = getelementptr i32, ptr %458, i32 %494
  %496 = select i1 %479, i32 162, i32 -1577058304
  store i32 %496, ptr %495, align 4
  %497 = load i32, ptr %458, align 8
  %498 = call i32 @llvm.bswap.i32(i32 %497) #9
  %499 = select i1 %479, i32 %498, i32 %497
  %500 = add i32 %499, 1
  %501 = call i32 @llvm.bswap.i32(i32 %500) #9
  %502 = select i1 %479, i32 %501, i32 %500
  store i32 %502, ptr %458, align 8
  %503 = load i32, ptr %495, align 4
  %504 = call i32 @llvm.bswap.i32(i32 %503) #9
  %505 = select i1 %479, i32 %504, i32 %503
  %506 = lshr i32 %501, 24
  %507 = select i1 %479, i32 %506, i32 %500
  %508 = and i32 %507, 127
  %509 = sub nsw i32 %508, %494
  %510 = or i32 %509, %505
  %511 = call i32 @llvm.bswap.i32(i32 %510) #9
  %512 = select i1 %479, i32 %511, i32 %510
  store i32 %512, ptr %495, align 4
  %513 = load i32, ptr %458, align 8
  %514 = lshr i32 %513, 24
  %515 = select i1 %479, i32 %514, i32 %513
  %516 = and i32 %515, 127
  %517 = getelementptr i32, ptr %458, i32 %516
  %518 = select i1 %479, i32 67143696, i32 277348356
  store i32 %518, ptr %517, align 4
  %519 = load i32, ptr %458, align 8
  %520 = call i32 @llvm.bswap.i32(i32 %519) #9
  %521 = select i1 %479, i32 %520, i32 %519
  %522 = add i32 %521, 1
  %523 = call i32 @llvm.bswap.i32(i32 %522) #9
  %524 = select i1 %479, i32 %523, i32 %522
  store i32 %524, ptr %458, align 8
  %525 = lshr i32 %523, 24
  %526 = select i1 %479, i32 %525, i32 %522
  %527 = and i32 %526, 127
  %528 = getelementptr i32, ptr %458, i32 %527
  %529 = select i1 %479, i32 16777216, i32 1
  store i32 %529, ptr %528, align 4
  %530 = load i32, ptr %458, align 8
  %531 = call i32 @llvm.bswap.i32(i32 %530) #9
  %532 = select i1 %479, i32 %531, i32 %530
  %533 = add i32 %532, 1
  %534 = call i32 @llvm.bswap.i32(i32 %533) #9
  %535 = select i1 %479, i32 %534, i32 %533
  store i32 %535, ptr %458, align 8
  %536 = lshr i32 %534, 24
  %537 = select i1 %479, i32 %536, i32 %533
  %538 = and i32 %537, 127
  %539 = getelementptr i32, ptr %458, i32 %538
  %540 = select i1 %479, i32 1069186, i32 -2108682240
  store i32 %540, ptr %539, align 4
  %541 = load i32, ptr %458, align 8
  %542 = call i32 @llvm.bswap.i32(i32 %541) #9
  %543 = select i1 %479, i32 %542, i32 %541
  %544 = add i32 %543, 1
  %545 = call i32 @llvm.bswap.i32(i32 %544) #9
  %546 = select i1 %479, i32 %545, i32 %544
  store i32 %546, ptr %458, align 8
  br label %547

547:                                              ; preds = %491, %477
  %548 = phi i32 [ %546, %491 ], [ %489, %477 ]
  %549 = lshr i32 %548, 24
  %550 = select i1 %479, i32 %549, i32 %548
  %551 = and i32 %550, 127
  %552 = getelementptr i32, ptr %458, i32 %551
  %553 = select i1 %479, i32 32930, i32 -1568669696
  store i32 %553, ptr %552, align 4
  %554 = load i32, ptr %458, align 8
  %555 = call i32 @llvm.bswap.i32(i32 %554) #9
  %556 = select i1 %479, i32 %555, i32 %554
  %557 = add i32 %556, 1
  %558 = call i32 @llvm.bswap.i32(i32 %557) #9
  %559 = select i1 %479, i32 %558, i32 %557
  store i32 %559, ptr %458, align 8
  %560 = call fastcc i32 @run_descriptor_deco0(ptr noundef %4, ptr noundef nonnull %458, ptr noundef nonnull %2) #9
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %576

562:                                              ; preds = %547
  %563 = load i8, ptr @caam_little_end, align 1, !range !8
  %564 = icmp eq i8 %563, 0
  %565 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %462) #9
  br i1 %564, label %567, label %566

566:                                              ; preds = %562
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %569

567:                                              ; preds = %562
  %568 = call i32 @llvm.bswap.i32(i32 %565) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %569

569:                                              ; preds = %567, %566
  %570 = phi i32 [ %565, %566 ], [ %568, %567 ]
  %571 = load i32, ptr %2, align 4
  switch i32 %571, label %576 [
    i32 1879048192, label %572
    i32 0, label %572
  ]

572:                                              ; preds = %569, %569
  %573 = and i32 %570, %467
  %574 = icmp eq i32 %573, %467
  br i1 %574, label %575, label %576

575:                                              ; preds = %572
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %465) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(28) %458, i8 0, i32 28, i1 false) #9
  br label %578

576:                                              ; preds = %572, %569, %547, %474
  %577 = phi i32 [ -11, %572 ], [ -11, %569 ], [ %560, %547 ], [ %475, %474 ]
  call void @kfree(ptr noundef nonnull %458) #9
  br label %589

578:                                              ; preds = %575, %470
  br i1 %464, label %463, label %579

579:                                              ; preds = %578
  call void @kfree(ptr noundef nonnull %458) #9
  %580 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @devm_deinstantiate_rng, ptr noundef %4) #9
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %597, label %582

582:                                              ; preds = %579
  %583 = load ptr, ptr %8, align 8
  %584 = getelementptr inbounds %struct.caam_drv_private, ptr %583, i32 0, i32 12
  %585 = load i32, ptr %584, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %589, label %587

587:                                              ; preds = %582
  %588 = call fastcc i32 @deinstantiate_rng(ptr noundef %4, i32 noundef %585) #9
  br label %589

589:                                              ; preds = %587, %582, %576
  %590 = phi i32 [ %577, %576 ], [ %580, %587 ], [ %580, %582 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %591 = icmp eq i32 %590, -11
  br i1 %591, label %592, label %595

592:                                              ; preds = %589
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !18
  %593 = icmp slt i32 %454, 12800
  br i1 %593, label %368, label %595

594:                                              ; preds = %453
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %595

595:                                              ; preds = %594, %592, %589
  %596 = phi i32 [ -12, %594 ], [ -11, %592 ], [ %590, %589 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  br label %633

597:                                              ; preds = %579
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %598 = load i32, ptr %364, align 4
  %599 = and i32 %598, 51
  %600 = xor i32 %599, 51
  store i32 %600, ptr %364, align 4
  call fastcc void @clrsetbits_32(ptr noundef %152, i32 noundef 0, i32 noundef 1024)
  br label %601

601:                                              ; preds = %597, %351
  %602 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 25
  %603 = load i8, ptr @caam_little_end, align 1, !range !8
  %604 = icmp eq i8 %603, 0
  %605 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %602) #9
  br i1 %604, label %607, label %606

606:                                              ; preds = %601
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %609

607:                                              ; preds = %601
  %608 = call i32 @llvm.bswap.i32(i32 %605) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %609

609:                                              ; preds = %607, %606
  %610 = phi i32 [ %605, %606 ], [ %608, %607 ]
  %611 = zext i32 %610 to i64
  %612 = shl nuw i64 %611, 32
  %613 = getelementptr inbounds %struct.caam_ctrl, ptr %53, i32 0, i32 26, i32 26
  %614 = load i8, ptr @caam_little_end, align 1, !range !8
  %615 = icmp eq i8 %614, 0
  %616 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %613) #9
  br i1 %615, label %618, label %617

617:                                              ; preds = %609
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %620

618:                                              ; preds = %609
  %619 = call i32 @llvm.bswap.i32(i32 %616) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %620

620:                                              ; preds = %618, %617
  %621 = phi i32 [ %616, %617 ], [ %619, %618 ]
  %622 = zext i32 %621 to i64
  %623 = or i64 %612, %622
  %624 = load i32, ptr %262, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10, i64 noundef %623, i32 noundef %624) #10
  %625 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 6
  %626 = load i8, ptr %625, align 4
  %627 = zext i8 %626 to i32
  %628 = load i8, ptr %100, align 1
  %629 = zext i8 %628 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %627, i32 noundef %629) #10
  %630 = call i32 @devm_of_platform_populate(ptr noundef %4) #9
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %620
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  br label %633

633:                                              ; preds = %632, %620, %595, %322, %275, %199, %55, %49, %44, %34, %19, %18, %1
  %634 = phi i32 [ %56, %55 ], [ %197, %199 ], [ %596, %595 ], [ -12, %322 ], [ -22, %18 ], [ -12, %1 ], [ %273, %275 ], [ %630, %632 ], [ 0, %620 ], [ %47, %49 ], [ -12, %19 ], [ %45, %44 ], [ %32, %34 ]
  ret i32 %634
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clrsetbits_32(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = load i8, ptr @caam_little_end, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = or i32 %9, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %10) #9, !srcloc !13
  br label %18

11:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #9, !srcloc !11
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %17) #9, !srcloc !13
  br label %18

18:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @caam_remove_debugfs(ptr noundef %0) #2 {
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disable_clocks(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #9
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @deinstantiate_rng(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !16
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3265, i32 noundef 12) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %2
  %8 = getelementptr i32, ptr %5, i32 1
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr @caam_little_end, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 16810160, i32 -1333788671
  %15 = select i1 %13, i32 201347202, i32 -2108686324
  store i32 %15, ptr %8, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %17 = add nuw nsw i32 %16, 1
  %18 = select i1 %13, i32 %17, i32 -1333788670
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = select i1 %13, i32 %19, i32 -1333788670
  store i32 %20, ptr %5, align 8
  %21 = lshr i32 %19, 24
  %22 = and i32 %21, 127
  %23 = select i1 %13, i32 %22, i32 2
  %24 = getelementptr i32, ptr %5, i32 %23
  %25 = select i1 %13, i32 32930, i32 -1568669696
  store i32 %25, ptr %24, align 4
  %26 = load i32, ptr %5, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %28 = select i1 %13, i32 %27, i32 %26
  %29 = add i32 %28, 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = select i1 %13, i32 %30, i32 %29
  store i32 %31, ptr %5, align 8
  %32 = call fastcc i32 @run_descriptor_deco0(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %11
  %35 = load i32, ptr %3, align 4
  switch i32 %35, label %36 [
    i32 1879048192, label %39
    i32 0, label %39
  ]

36:                                               ; preds = %66, %43, %34, %11
  %37 = phi i32 [ 0, %34 ], [ 0, %11 ], [ 1, %43 ], [ 1, %66 ]
  %38 = phi i32 [ 0, %34 ], [ %32, %11 ], [ %64, %43 ], [ 0, %66 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %37) #10
  br label %69

39:                                               ; preds = %34, %34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 0) #10
  br label %40

40:                                               ; preds = %39, %7
  %41 = and i32 %1, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = load i8, ptr @caam_little_end, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 16810160, i32 -1333788671
  %47 = select i1 %45, i32 469782658, i32 -2108686308
  store i32 %47, ptr %8, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %49 = add nuw nsw i32 %48, 1
  %50 = select i1 %45, i32 %49, i32 -1333788670
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = select i1 %45, i32 %51, i32 -1333788670
  store i32 %52, ptr %5, align 8
  %53 = lshr i32 %51, 24
  %54 = and i32 %53, 127
  %55 = select i1 %45, i32 %54, i32 2
  %56 = getelementptr i32, ptr %5, i32 %55
  %57 = select i1 %45, i32 32930, i32 -1568669696
  store i32 %57, ptr %56, align 4
  %58 = load i32, ptr %5, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  %60 = select i1 %45, i32 %59, i32 %58
  %61 = add i32 %60, 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  %63 = select i1 %45, i32 %62, i32 %61
  store i32 %63, ptr %5, align 8
  %64 = call fastcc i32 @run_descriptor_deco0(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %36

66:                                               ; preds = %43
  %67 = load i32, ptr %3, align 4
  switch i32 %67, label %36 [
    i32 1879048192, label %68
    i32 0, label %68
  ]

68:                                               ; preds = %66, %66
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 1) #10
  br label %69

69:                                               ; preds = %68, %40, %36
  %70 = phi i32 [ %38, %36 ], [ 0, %68 ], [ 0, %40 ]
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %71

71:                                               ; preds = %69, %2
  %72 = phi i32 [ %70, %69 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %72
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @run_descriptor_deco0(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.36) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.37) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.38) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.39) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %21, %18, %15, %12, %3
  %25 = getelementptr inbounds %struct.caam_ctrl, ptr %6, i32 0, i32 9
  %26 = load i8, ptr @caam_little_end, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %30 = or i32 %29, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %30) #9, !srcloc !13
  br label %34

31:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %33) #9, !srcloc !13
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %49, %34
  %36 = phi i32 [ %47, %49 ], [ 100000, %34 ]
  %37 = load i8, ptr @caam_little_end, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9
  br i1 %38, label %41, label %40

40:                                               ; preds = %35
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %43

41:                                               ; preds = %35
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %39, %40 ], [ %42, %41 ]
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = add nsw i32 %36, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !20
  br label %35

50:                                               ; preds = %46, %43, %21
  %51 = getelementptr inbounds %struct.caam_ctrl, ptr %6, i32 0, i32 11
  %52 = load i8, ptr @caam_little_end, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %56 = or i32 %55, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %56) #9, !srcloc !13
  br label %60

57:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %59 = or i32 %58, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %59) #9, !srcloc !13
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %84, %60
  %62 = phi i32 [ %82, %84 ], [ 100000, %60 ]
  %63 = load i8, ptr @caam_little_end, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9
  br i1 %64, label %67, label %66

66:                                               ; preds = %61
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %69

67:                                               ; preds = %61
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ %65, %66 ], [ %68, %67 ]
  %71 = and i32 %70, 65536
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %1, align 4
  %75 = load i8, ptr @caam_little_end, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %74, 24
  %78 = select i1 %76, i32 %77, i32 %74
  %79 = and i32 %78, 127
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %120, label %94

81:                                               ; preds = %69
  %82 = add nsw i32 %62, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !22
  br label %61

85:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40) #10
  %86 = load i8, ptr @caam_little_end, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %90 = and i32 %89, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %90) #9, !srcloc !13
  br label %207

91:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %93 = and i32 %92, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %93) #9, !srcloc !13
  br label %207

94:                                               ; preds = %113, %73
  %95 = phi i32 [ %115, %113 ], [ %74, %73 ]
  %96 = phi i1 [ %108, %113 ], [ %76, %73 ]
  %97 = phi i32 [ %105, %113 ], [ 0, %73 ]
  %98 = getelementptr %struct.caam_deco, ptr %8, i32 0, i32 67, i32 %97
  %99 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  %100 = select i1 %96, i32 %99, i32 %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %96, label %102, label %101

101:                                              ; preds = %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %100) #9, !srcloc !13
  br label %104

102:                                              ; preds = %94
  %103 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %103) #9, !srcloc !13
  br label %104

104:                                              ; preds = %102, %101
  %105 = add nuw nsw i32 %97, 1
  %106 = load i32, ptr %1, align 4
  %107 = load i8, ptr @caam_little_end, align 1, !range !8
  %108 = icmp eq i8 %107, 0
  %109 = lshr i32 %106, 24
  %110 = select i1 %108, i32 %109, i32 %106
  %111 = and i32 %110, 127
  %112 = icmp ult i32 %105, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = getelementptr i32, ptr %1, i32 %105
  %115 = load i32, ptr %114, align 4
  br label %94

116:                                              ; preds = %104
  %117 = icmp ugt i32 %111, 3
  %118 = select i1 %117, i32 805306368, i32 536870912
  %119 = getelementptr inbounds %struct.caam_deco, ptr %8, i32 0, i32 52
  br i1 %108, label %127, label %122

120:                                              ; preds = %73
  %121 = getelementptr inbounds %struct.caam_deco, ptr %8, i32 0, i32 52
  br i1 %76, label %127, label %122

122:                                              ; preds = %120, %116
  %123 = phi ptr [ %119, %116 ], [ %121, %120 ]
  %124 = phi i32 [ %118, %116 ], [ 536870912, %120 ]
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %126 = or i32 %125, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %126) #9, !srcloc !13
  br label %134

127:                                              ; preds = %120, %116
  %128 = phi ptr [ %119, %116 ], [ %121, %120 ]
  %129 = phi i32 [ %118, %116 ], [ 536870912, %120 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #9, !srcloc !11
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %132 = or i32 %131, %129
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %133) #9, !srcloc !13
  br label %134

134:                                              ; preds = %127, %122
  %135 = getelementptr inbounds %struct.caam_deco, ptr %8, i32 0, i32 69
  %136 = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 11
  %137 = getelementptr inbounds %struct.caam_deco, ptr %8, i32 0, i32 71
  br label %138

138:                                              ; preds = %168, %134
  %139 = phi i32 [ 10000000, %134 ], [ %169, %168 ]
  %140 = load i8, ptr @caam_little_end, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #9
  br i1 %141, label %144, label %143

143:                                              ; preds = %138
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %146

144:                                              ; preds = %138
  %145 = tail call i32 @llvm.bswap.i32(i32 %142) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ %142, %143 ], [ %145, %144 ]
  %148 = load i32, ptr %136, align 4
  %149 = icmp slt i32 %148, 10
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = lshr i32 %147, 20
  br label %162

152:                                              ; preds = %146
  %153 = load i8, ptr @caam_little_end, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #9
  br i1 %154, label %157, label %156

156:                                              ; preds = %152
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %159

157:                                              ; preds = %152
  %158 = tail call i32 @llvm.bswap.i32(i32 %155) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %159

159:                                              ; preds = %157, %156
  %160 = phi i32 [ %155, %156 ], [ %158, %157 ]
  %161 = lshr i32 %160, 16
  br label %162

162:                                              ; preds = %159, %150
  %163 = phi i32 [ %151, %150 ], [ %161, %159 ]
  %164 = and i32 %163, 15
  %165 = icmp eq i32 %164, 13
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !24
  %167 = icmp sgt i32 %147, -1
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = add nsw i32 %139, -1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %138

171:                                              ; preds = %168, %166, %162
  %172 = phi i32 [ %139, %162 ], [ 0, %168 ], [ %139, %166 ]
  %173 = getelementptr inbounds %struct.caam_deco, ptr %8, i32 0, i32 55
  %174 = load i8, ptr @caam_little_end, align 1, !range !8
  %175 = icmp eq i8 %174, 0
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #9
  br i1 %175, label %178, label %177

177:                                              ; preds = %171
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %180

178:                                              ; preds = %171
  %179 = tail call i32 @llvm.bswap.i32(i32 %176) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi i32 [ %176, %177 ], [ %179, %178 ]
  %182 = and i32 %181, -268435201
  store i32 %182, ptr %2, align 4
  %183 = load i32, ptr %9, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.caam_ctrl, ptr %6, i32 0, i32 9
  %187 = load i8, ptr @caam_little_end, align 1, !range !8
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %191 = and i32 %190, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %191) #9, !srcloc !13
  br label %195

192:                                              ; preds = %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %194 = and i32 %193, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %194) #9, !srcloc !13
  br label %195

195:                                              ; preds = %192, %189, %180
  %196 = load i8, ptr @caam_little_end, align 1, !range !8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %200 = and i32 %199, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %200) #9, !srcloc !13
  br label %204

201:                                              ; preds = %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %203 = and i32 %202, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %203) #9, !srcloc !13
  br label %204

204:                                              ; preds = %201, %198
  %205 = icmp eq i32 %172, 0
  %206 = select i1 %205, i32 -11, i32 0
  br label %207

207:                                              ; preds = %204, %91, %88
  %208 = phi i32 [ %206, %204 ], [ -19, %88 ], [ -19, %91 ]
  ret i32 %208
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_deinstantiate_rng(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.caam_drv_private, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @deinstantiate_rng(ptr noundef %0, i32 noundef %5)
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151280540}
!10 = !{i64 2156971679}
!11 = !{i64 3748577}
!12 = !{i64 2151281762}
!13 = !{i64 3748159}
!14 = !{i64 2156972607}
!15 = !{i64 2156973077}
!16 = !{!"auto-init"}
!17 = !{i64 2157124912}
!18 = !{i64 2157124754}
!19 = !{i64 2157110695}
!20 = !{i64 2157110537}
!21 = !{i64 2157110966}
!22 = !{i64 2157110808}
!23 = !{i64 2157111837}
!24 = !{i64 2157111679}
