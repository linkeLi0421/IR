; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/fuse-tegra.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/fuse-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_sku_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_sku_info\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_sku_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_fuse_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_fuse_readl\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_fuse_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_cell_info = type { ptr, i32, i32, i32, i32 }
%struct.tegra_fuse_soc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.tegra_fuse = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.64, ptr, ptr }
%struct.anon.64 = type { %struct.mutex, %struct.completion, ptr, %struct.dma_slave_config, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tegra_fuse_info = type { ptr, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@tegra_sku_info = dso_local global %struct.tegra_sku_info zeroinitializer, align 4
@__kstrtab_tegra_sku_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_sku_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_sku_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_sku_info to i32), ptr @__kstrtab_tegra_sku_info, ptr @__kstrtabns_tegra_sku_info }, section "___ksymtab+tegra_sku_info", align 4
@__initcall__kmod_fuse_tegra__223_350_tegra_fuse_driver_init6 = internal global ptr @tegra_fuse_driver_init, section ".initcall6.init", align 4
@__kstrtab_tegra_fuse_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_fuse_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_fuse_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_fuse_readl to i32), ptr @__kstrtab_tegra_fuse_readl, ptr @__kstrtabns_tegra_fuse_readl }, section "___ksymtab+tegra_fuse_readl", align 4
@tegra_soc_attr = internal global [3 x ptr] [ptr @dev_attr_major, ptr @dev_attr_minor, ptr null], align 4
@tegra_soc_attr_group = dso_local local_unnamed_addr constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tegra_soc_attr, ptr null }, align 4
@.str = private unnamed_addr constant [6 x i8] c"Tegra\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tegra_revision_name = internal unnamed_addr constant [6 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__initcall__kmod_fuse_tegra__224_587_tegra_init_fuseearly = internal global ptr @tegra_init_fuse, section ".initcallearly.init", align 4
@tegra_fuse_driver = internal global %struct.platform_driver { ptr @tegra_fuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_fuse_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_fuse_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"tegra-fuse\00", align 1
@tegra_fuse_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_fuse_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_fuse_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_fuse_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr @tegra_fuse_suspend, ptr @tegra_fuse_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_fuse_runtime_suspend, ptr @tegra_fuse_runtime_resume, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get FUSE clock: %ld\00", align 1
@tegra_fuse_cells = internal constant [14 x %struct.nvmem_cell_info] [%struct.nvmem_cell_info { ptr @.str.9, i32 132, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.10, i32 136, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.11, i32 152, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.12, i32 240, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.13, i32 300, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.14, i32 292, i32 1, i32 0, i32 2 }, %struct.nvmem_cell_info { ptr @.str.15, i32 340, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.16, i32 344, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.17, i32 348, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.18, i32 352, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.19, i32 384, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.20, i32 508, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.21, i32 516, i32 4, i32 0, i32 32 }, %struct.nvmem_cell_info { ptr @.str.22, i32 592, i32 4, i32 0, i32 32 }], align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register NVMEM device: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get FUSE reset: %pe\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to reset FUSE: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"tsensor-cpu1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tsensor-cpu2\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"tsensor-cpu0\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"xusb-pad-calibration\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"tsensor-cpu3\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"sata-calibration\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"tsensor-gpu\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"tsensor-mem0\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"tsensor-mem1\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tsensor-pllx\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tsensor-common\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"tsensor-realignment\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"gpu-calibration\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"xusb-pad-calibration-ext\00", align 1
@tegra124_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra114_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra30_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@tegra20_fuse_soc = external dso_local constant %struct.tegra_fuse_soc, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to enable FUSE clock: %d\0A\00", align 1
@.compoundliteral = internal global %struct.tegra_fuse zeroinitializer, align 4
@dev_attr_major = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @major_show, ptr null }, align 4
@dev_attr_minor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @minor_show, ptr null }, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"A01\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"A02\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"A03\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"A03 prime\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"A04\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"\014Unsupported SoC: %02x\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"\013failed to get FUSE register\0A\00", align 1
@car_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [33 x i8] c"\013failed to map clock registers\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"\013failed to map FUSE registers\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"\016Tegra Revision: %s SKU: %d CPU Process: %d SoC Process: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_fuse_tegra__223_350_tegra_fuse_driver_init6, ptr @__initcall__kmod_fuse_tegra__224_587_tegra_init_fuseearly, ptr @__ksymtab_tegra_fuse_readl, ptr @__ksymtab_tegra_sku_info], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_fuse_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_fuse_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_read_spare(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_fuse_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %0, 2
  %8 = add i32 %6, %7
  %9 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 5), align 4
  %10 = tail call i32 %9(ptr noundef nonnull @.compoundliteral, i32 noundef %8) #9
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_read_early(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 5), align 4
  %3 = tail call i32 %2(ptr noundef nonnull @.compoundliteral, i32 noundef %0) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_fuse_readl(i32 noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 6), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = ptrtoint ptr %6 to i32
  br label %14

12:                                               ; preds = %8
  %13 = tail call i32 %3(ptr noundef nonnull @.compoundliteral, i32 noundef %0) #9
  store i32 %13, ptr %1, align 4
  br label %14

14:                                               ; preds = %12, %10, %5, %2
  %15 = phi i32 [ %11, %10 ], [ 0, %12 ], [ -517, %5 ], [ -517, %2 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @tegra_soc_device_register() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str) #9
  %6 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %8 = getelementptr [6 x ptr], ptr @tegra_revision_name, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 2
  store ptr %10, ptr %11, align 8
  %12 = tail call zeroext i8 @tegra_get_chip_id() #9
  %13 = zext i8 %12 to i32
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %13) #9
  %15 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %17 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 6
  store ptr %18, ptr %19, align 8
  %20 = tail call ptr @soc_device_register(ptr noundef nonnull %2) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load ptr, ptr %15, align 8
  tail call void @kfree(ptr noundef %23) #9
  %24 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %24) #9
  %25 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %25) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %28

26:                                               ; preds = %4
  %27 = tail call ptr @soc_device_to_device(ptr noundef %20) #9
  br label %28

28:                                               ; preds = %26, %22, %0
  %29 = phi ptr [ %20, %22 ], [ %27, %26 ], [ null, %0 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_to_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_init_fuse() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  store ptr null, ptr %1, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  tail call void @tegra_init_apbmisc() #9
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_fuse_match, ptr noundef nonnull %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = call zeroext i1 @soc_is_tegra() #9
  br i1 %6, label %7, label %76

7:                                                ; preds = %5
  %8 = call zeroext i8 @tegra_get_chip_id() #9
  store i32 1879111680, ptr %2, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 1879112703, ptr %9, align 4
  %10 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 512, ptr %10, align 4
  switch i8 %8, label %15 [
    i8 32, label %11
    i8 48, label %12
    i8 53, label %13
    i8 64, label %14
  ]

11:                                               ; preds = %7
  store ptr @tegra20_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %27

12:                                               ; preds = %7
  store ptr @tegra30_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %27

13:                                               ; preds = %7
  store ptr @tegra114_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %27

14:                                               ; preds = %7
  store ptr @tegra124_fuse_soc, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %27

15:                                               ; preds = %7
  %16 = zext i8 %8 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %16) #11
  br label %27

18:                                               ; preds = %0
  %19 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %76

23:                                               ; preds = %18
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %27

27:                                               ; preds = %23, %15, %14, %13, %12, %11
  %28 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @car_match, ptr noundef null) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = call ptr @of_iomap(ptr noundef nonnull %28, i32 noundef 0) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %31, i32 72
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !9
  %36 = or i32 %35, 268435456
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #9, !srcloc !11
  %37 = getelementptr i8, ptr %31, i32 20
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %39 = or i32 %38, 128
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #9, !srcloc !11
  call void @iounmap(ptr noundef nonnull %31) #9
  br label %42

40:                                               ; preds = %30
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %76

42:                                               ; preds = %33, %27
  %43 = load i32, ptr %2, align 4
  %44 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 1, %43
  %47 = add i32 %46, %45
  %48 = call ptr @ioremap(i32 noundef %43, i32 noundef %47) #9
  store ptr %48, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %76

52:                                               ; preds = %42
  %53 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef nonnull @.compoundliteral) #9
  %55 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %56 = getelementptr [6 x ptr], ptr @tegra_revision_name, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr @tegra_sku_info, align 4
  %59 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5), align 4
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #11
  %62 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %63 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %62, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = mul i32 %68, 24
  %70 = call ptr @kmemdup(ptr noundef nonnull %64, i32 noundef %69, i32 noundef 3264) #9
  store ptr %70, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 10), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %74 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  call void @nvmem_add_cell_lookups(ptr noundef nonnull %70, i32 noundef %75) #9
  br label %76

76:                                               ; preds = %72, %66, %52, %50, %40, %21, %5
  %77 = phi i32 [ -6, %21 ], [ -6, %50 ], [ 0, %5 ], [ -6, %40 ], [ 0, %66 ], [ 0, %72 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.nvmem_config, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #9
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @tegra_fuse_restore, ptr noundef %3) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %84

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 2), align 4
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %8) #9
  store ptr %10, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %10 to i32
  br label %84

14:                                               ; preds = %7
  %15 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.4) #9
  store ptr %15, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %20) #11
  %21 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %21, %19 ], [ inttoptr (i32 -517 to ptr), %17 ]
  %24 = ptrtoint ptr %23 to i32
  br label %84

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @.compoundliteral, ptr %26, align 8
  store ptr %4, ptr @.compoundliteral, align 4
  %27 = tail call i32 @devm_pm_runtime_enable(ptr noundef %4) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %31 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef nonnull @.compoundliteral) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %84, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi ptr [ %38, %37 ], [ %30, %29 ]
  %41 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %41, i8 0, i32 72, i1 false)
  store ptr %4, ptr %2, align 4
  %42 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 1
  store ptr @.str.4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 2
  store i32 -1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 3
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 5
  store ptr @tegra_fuse_cells, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 6
  store i32 14, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 9
  store i32 2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 10
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 11
  store i8 1, ptr %49, align 1
  %50 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 15
  store ptr @tegra_fuse_read, ptr %50, align 4
  %51 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %40, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tegra_fuse_info, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 18
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 19
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 20
  store i32 4, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 21
  store ptr @.compoundliteral, ptr %58, align 4
  %59 = call ptr @devm_nvmem_register(ptr noundef %4, ptr noundef nonnull %2) #9
  store ptr %59, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 9), align 4
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %39
  %62 = ptrtoint ptr %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %62) #11
  br label %84

63:                                               ; preds = %39
  %64 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  store ptr %64, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 4), align 4
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef nonnull %64) #11
  br label %84

68:                                               ; preds = %63
  %69 = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #9, !srcloc !15
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 0, i32 -1, ptr elementtype(i32) %72) #9, !srcloc !16
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %84

77:                                               ; preds = %68
  %78 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 4), align 4
  %79 = call i32 @reset_control_reset(ptr noundef %78) #9
  %80 = call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #9
  %81 = icmp slt i32 %79, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %79) #11
  br label %84

83:                                               ; preds = %77
  call void @iounmap(ptr noundef %3) #9
  br label %84

84:                                               ; preds = %83, %82, %76, %71, %66, %61, %34, %25, %22, %12, %1
  %85 = phi i32 [ %13, %12 ], [ %24, %22 ], [ %62, %61 ], [ %67, %66 ], [ %79, %82 ], [ 0, %83 ], [ %5, %1 ], [ %27, %25 ], [ %35, %34 ], [ %69, %71 ], [ %69, %76 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #9
  ret i32 %85
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @tegra_fuse_restore(ptr noundef %0) #5 {
  store ptr null, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = icmp ult i32 %3, 4
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 2
  %8 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = shl i32 %10, 2
  %13 = add i32 %12, %1
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef %13) #9
  %15 = getelementptr i32, ptr %2, i32 %10
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %18, label %9

18:                                               ; preds = %9, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_suspend(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %2, i32 0, i32 7
  %4 = load i8, ptr %3, align 4, !range !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #9, !srcloc !16
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %17

15:                                               ; preds = %1
  %16 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #9
  br label %17

17:                                               ; preds = %15, %14, %9, %6
  %18 = phi i32 [ %16, %15 ], [ 0, %6 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 7), align 4
  %3 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %2, i32 0, i32 7
  %4 = load i8, ptr %3, align 4, !range !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #9
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #9
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_runtime_suspend(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  tail call void @clk_disable(ptr noundef %2) #9
  tail call void @clk_unprepare(ptr noundef %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_fuse_runtime_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.tegra_fuse, ptr @.compoundliteral, i32 0, i32 3), align 4
  %3 = tail call i32 @clk_prepare(ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 @clk_enable(ptr noundef %2) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  tail call void @clk_unprepare(ptr noundef %2) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ %3, %1 ], [ %6, %8 ]
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %10) #11
  br label %13

13:                                               ; preds = %12, %9, %5
  %14 = phi i32 [ %10, %12 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @major_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call zeroext i8 @tegra_get_major_rev() #9
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_major_rev() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @minor_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call zeroext i8 @tegra_get_minor_rev() #9
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_minor_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_apbmisc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_add_cell_lookups(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3650000}
!10 = !{i64 2152930924}
!11 = !{i64 3649582}
!12 = !{i64 2152931363}
!13 = !{i64 2152931542}
!14 = !{i64 2147954186}
!15 = !{i64 452496, i64 2147942467, i64 2147942493, i64 2147942540, i64 2147942562, i64 2147942590, i64 2147942610}
!16 = !{i64 439065, i64 439090, i64 439112, i64 439128, i64 439140, i64 439160, i64 439184, i64 439200, i64 439212}
!17 = !{i64 2147954312}
!18 = !{i8 0, i8 2}
