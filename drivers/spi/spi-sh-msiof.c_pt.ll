; ModuleID = '/llk/IR/drivers/spi/spi-sh-msiof.c_pt.bc'
source_filename = "../drivers/spi/spi-sh-msiof.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.sh_msiof_chipdata = type { i32, i16, i16, i16, i16 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sh_msiof_spi_info = type { i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.sh_msiof_spi_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@sh_msiof_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-mobile-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,msiof-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-msiof\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh_data }, %struct.of_device_id zeroinitializer], align 4
@spi_driver_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"spi_sh_msiof\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description239 = internal constant [57 x i8] c"description=SuperH MSIOF SPI Controller Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [19 x i8] c"author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sh_data = internal constant %struct.sh_msiof_chipdata { i32 -128, i16 64, i16 64, i16 0, i16 0 }, align 4
@rcar_gen2_data = internal constant %struct.sh_msiof_chipdata { i32 -2139062144, i16 64, i16 64, i16 16, i16 0 }, align 4
@rcar_gen3_data = internal constant %struct.sh_msiof_chipdata { i32 -2139062144, i16 64, i16 64, i16 16, i16 1 }, align 4
@sh_msiof_spi_drv = internal global %struct.platform_driver { ptr @sh_msiof_spi_probe, ptr @sh_msiof_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_msiof_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_msiof_spi_pm_ops, ptr null, ptr null }, ptr @spi_driver_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"spi_sh_msiof\00", align 1
@sh_msiof_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr @sh_msiof_spi_suspend, ptr @sh_msiof_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to obtain device info\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DMA not available, using PIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"renesas,tx-fifo-size\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"renesas,rx-fifo-size\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"renesas,dtdl\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"renesas,syncdl\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"DTDL or SYNCDL is too large\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"the sum of DTDL/SYNCDL is not good\0A\00", align 1
@sh_msiof_transfer_one.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"DMA not available, falling back to PIO\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"drivers/spi/spi-sh-msiof.c\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Invalid clock rate parameters %lu and %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Requested SPI transfer rate %d is too low\0A\00", align 1
@sh_msiof_spi_div_array = internal unnamed_addr constant [6 x i32] [i32 7, i32 0, i32 1, i32 2, i32 3, i32 4], align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to start hardware\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"failed to shut down hardware\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"DMA available\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"dma_request_slave_channel_compat failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"dmaengine_slave_config failed %d\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_license241], section "llvm.metadata"

@__mod_of__sh_msiof_match_device_table = dso_local alias [13 x %struct.of_device_id], ptr @sh_msiof_match
@__mod_platform__spi_driver_ids_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @spi_driver_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_msiof_spi_drv, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_msiof_spi_drv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 1, ptr %2, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef null) #11
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %9, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  br i1 %13, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  br label %18

18:                                               ; preds = %16, %11
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %9, i32 0, i32 1
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %20, i32 noundef 1, i32 noundef 0) #11
  %22 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %9, i32 0, i32 6
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef %22, i32 noundef 1, i32 noundef 0) #11
  %24 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %9, i32 0, i32 7
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef %24, i32 noundef 1, i32 noundef 0) #11
  %26 = load i32, ptr %2, align 4
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %9, i32 0, i32 2
  store i16 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %18, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %38

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device_id, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = phi ptr [ %4, %29 ], [ %35, %30 ]
  %40 = phi ptr [ %9, %29 ], [ %37, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #12
  br label %275

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %40, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %275, label %47

47:                                               ; preds = %43
  %48 = call ptr @__spi_alloc_controller(ptr noundef %3, i32 noundef 84, i1 noundef zeroext false) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %275, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %52, ptr %53, align 8
  store ptr %48, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 4
  store ptr %40, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %39, i32 0, i32 4
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 9
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %60, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #11
  %61 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 6
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %62, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #11
  %63 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #11
  %64 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 2
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #12
  %67 = load ptr, ptr %64, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %273

69:                                               ; preds = %50
  %70 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %273, label %72

72:                                               ; preds = %69
  %73 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  %74 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = ptrtoint ptr %73 to i32
  br label %273

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %3, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %83, %82 ], [ %80, %78 ]
  %86 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %70, ptr noundef nonnull @sh_msiof_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %85, ptr noundef %52) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #12
  br label %273

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 3
  store ptr %0, ptr %90, align 4
  call void @pm_runtime_enable(ptr noundef %3) #11
  %91 = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %39, i32 0, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 7
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %39, i32 0, i32 2
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 8
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %54, align 4
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  store i32 %100, ptr %94, align 4
  br label %103

103:                                              ; preds = %102, %89
  %104 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %99, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store i32 %105, ptr %98, align 4
  br label %108

108:                                              ; preds = %107, %103
  %109 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 5
  store i32 31, ptr %109, align 8
  %110 = load ptr, ptr %64, align 4
  %111 = call i32 @clk_get_rate(ptr noundef %110) #11
  %112 = add i32 %111, 1023
  %113 = lshr i32 %112, 10
  %114 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 8
  store i32 %113, ptr %114, align 4
  %115 = load i32, ptr %58, align 4
  %116 = shl nuw i32 1, %115
  %117 = add i32 %111, -1
  %118 = add i32 %117, %116
  %119 = lshr i32 %118, %115
  %120 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 9
  store i32 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.sh_msiof_chipdata, ptr %39, i32 0, i32 3
  %122 = load i16, ptr %121, align 4
  %123 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 10
  store i16 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 2
  store i16 %126, ptr %127, align 8
  %128 = load ptr, ptr %54, align 4
  %129 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %128, i32 0, i32 2
  %130 = load i16, ptr %129, align 4
  %131 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 3
  store i16 %130, ptr %131, align 2
  %132 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 25
  store ptr %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 20
  store ptr @sh_msiof_spi_setup, ptr %135, align 4
  %136 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 47
  store ptr @sh_msiof_prepare_message, ptr %136, align 4
  %137 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 49
  store ptr @sh_msiof_slave_abort, ptr %137, align 4
  %138 = load i32, ptr %39, align 4
  %139 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 7
  store i32 %138, ptr %139, align 8
  %140 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 36
  store i8 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 51
  store ptr @sh_msiof_transfer_one, ptr %141, align 4
  %142 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 56
  store i8 1, ptr %142, align 8
  %143 = getelementptr inbounds %struct.spi_controller, ptr %48, i32 0, i32 58
  store i8 3, ptr %143, align 2
  %144 = load ptr, ptr %90, align 4
  %145 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %54, align 4
  %147 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3, i32 25
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %108
  %151 = icmp eq ptr %146, null
  br i1 %151, label %269, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %146, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %269, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %146, i32 0, i32 5
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %269, label %160

160:                                              ; preds = %156, %108
  %161 = phi i32 [ 0, %108 ], [ %154, %156 ]
  %162 = phi i32 [ 0, %108 ], [ %158, %156 ]
  %163 = call ptr @platform_get_resource(ptr noundef %144, i32 noundef 512, i32 noundef 1) #11
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call ptr @platform_get_resource(ptr noundef %144, i32 noundef 512, i32 noundef 0) #11
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ %163, %160 ], [ %166, %165 ]
  %169 = load ptr, ptr %52, align 4
  %170 = load i32, ptr %168, align 4
  %171 = add i32 %170, 80
  %172 = call fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %145, i32 noundef 1, i32 noundef %161, i32 noundef %171) #11
  %173 = getelementptr inbounds %struct.spi_controller, ptr %169, i32 0, i32 60
  store ptr %172, ptr %173, align 8
  %174 = icmp eq ptr %172, null
  br i1 %174, label %268, label %175

175:                                              ; preds = %167
  %176 = load i32, ptr %168, align 4
  %177 = add i32 %176, 96
  %178 = call fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %145, i32 noundef 2, i32 noundef %162, i32 noundef %177) #11
  %179 = getelementptr inbounds %struct.spi_controller, ptr %169, i32 0, i32 61
  store ptr %178, ptr %179, align 4
  %180 = icmp eq ptr %178, null
  br i1 %180, label %266, label %181

181:                                              ; preds = %175
  %182 = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #11
  %183 = inttoptr i32 %182 to ptr
  %184 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 10
  store ptr %183, ptr %184, align 4
  %185 = icmp eq i32 %182, 0
  br i1 %185, label %264, label %186

186:                                              ; preds = %181
  %187 = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #11
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 11
  store ptr %188, ptr %189, align 4
  %190 = icmp eq i32 %187, 0
  br i1 %190, label %261, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr %173, align 8
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.dma_device, ptr %193, i32 0, i32 15
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %184, align 4
  %197 = call zeroext i1 @is_vmalloc_addr(ptr noundef %196) #11
  %198 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %199 = xor i1 %198, true
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %210, !prof !8

201:                                              ; preds = %191
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %202 = call ptr @dev_driver_string(ptr noundef %195) #11
  %203 = getelementptr inbounds %struct.device, ptr %195, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load ptr, ptr %195, align 4
  br label %208

208:                                              ; preds = %206, %201
  %209 = phi ptr [ %207, %206 ], [ %204, %201 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %202, ptr noundef %209) #11
  br label %210

210:                                              ; preds = %208, %191
  br i1 %197, label %211, label %213

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 12
  store i32 -1, ptr %212, align 4
  br label %258

213:                                              ; preds = %210
  %214 = load ptr, ptr @mem_map, align 4
  %215 = ptrtoint ptr %196 to i32
  %216 = add i32 %215, 1073741824
  %217 = lshr i32 %216, 12
  %218 = getelementptr %struct.page, ptr %214, i32 %217
  %219 = and i32 %215, 4095
  %220 = call i32 @dma_map_page_attrs(ptr noundef %195, ptr noundef %218, i32 noundef %219, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %221 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 12
  store i32 %220, ptr %221, align 4
  %222 = icmp eq i32 %220, -1
  br i1 %222, label %258, label %223

223:                                              ; preds = %213
  %224 = load ptr, ptr %179, align 4
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.dma_device, ptr %225, i32 0, i32 15
  %227 = load ptr, ptr %226, align 4
  %228 = load ptr, ptr %189, align 4
  %229 = call zeroext i1 @is_vmalloc_addr(ptr noundef %228) #11
  %230 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %231 = xor i1 %230, true
  %232 = select i1 %229, i1 %231, i1 false
  br i1 %232, label %233, label %242, !prof !8

233:                                              ; preds = %223
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %234 = call ptr @dev_driver_string(ptr noundef %227) #11
  %235 = getelementptr inbounds %struct.device, ptr %227, i32 0, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load ptr, ptr %227, align 4
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi ptr [ %239, %238 ], [ %236, %233 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %234, ptr noundef %241) #11
  br label %242

242:                                              ; preds = %240, %223
  br i1 %229, label %243, label %245

243:                                              ; preds = %242
  %244 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 13
  store i32 -1, ptr %244, align 4
  br label %256

245:                                              ; preds = %242
  %246 = load ptr, ptr @mem_map, align 4
  %247 = ptrtoint ptr %228 to i32
  %248 = add i32 %247, 1073741824
  %249 = lshr i32 %248, 12
  %250 = getelementptr %struct.page, ptr %246, i32 %249
  %251 = and i32 %247, 4095
  %252 = call i32 @dma_map_page_attrs(ptr noundef %227, ptr noundef %250, i32 noundef %251, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  %253 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %52, i32 0, i32 13
  store i32 %252, ptr %253, align 4
  %254 = icmp eq i32 %252, -1
  br i1 %254, label %256, label %255

255:                                              ; preds = %245
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.22) #12
  br label %269

256:                                              ; preds = %245, %243
  %257 = load i32, ptr %221, align 4
  call void @dma_unmap_page_attrs(ptr noundef %195, i32 noundef %257, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  br label %258

258:                                              ; preds = %256, %213, %211
  %259 = load ptr, ptr %189, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @free_pages(i32 noundef %260, i32 noundef 0) #11
  br label %261

261:                                              ; preds = %258, %186
  %262 = load ptr, ptr %184, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @free_pages(i32 noundef %263, i32 noundef 0) #11
  br label %264

264:                                              ; preds = %261, %181
  %265 = load ptr, ptr %179, align 4
  call void @dma_release_channel(ptr noundef %265) #11
  br label %266

266:                                              ; preds = %264, %175
  %267 = load ptr, ptr %173, align 8
  call void @dma_release_channel(ptr noundef %267) #11
  store ptr null, ptr %173, align 8
  br label %268

268:                                              ; preds = %266, %167
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.4) #12
  br label %269

269:                                              ; preds = %268, %255, %156, %152, %150
  %270 = call i32 @devm_spi_register_controller(ptr noundef %3, ptr noundef nonnull %48) #11
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #12
  call fastcc void @sh_msiof_release_dma(ptr noundef %52)
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #11
  br label %273

273:                                              ; preds = %272, %88, %76, %69, %66
  %274 = phi i32 [ %68, %66 ], [ %77, %76 ], [ %86, %88 ], [ %270, %272 ], [ %70, %69 ]
  call void @put_device(ptr noundef nonnull %48) #11
  br label %275

275:                                              ; preds = %273, %269, %47, %43, %42
  %276 = phi i32 [ %274, %273 ], [ -6, %42 ], [ -12, %47 ], [ 0, %269 ], [ -12, %43 ]
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @sh_msiof_release_dma(ptr noundef %3)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !10
  %6 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %6) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_setup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %5, i32 0, i32 14
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  br label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %5, i32 0, i32 15
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 2
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, %19
  br i1 %24, label %58, label %25

25:                                               ; preds = %16, %13
  %26 = phi i32 [ %15, %13 ], [ %21, %16 ]
  %27 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %28 = and i32 %26, 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 -805306369, i32 -838860801
  %31 = select i1 %29, i32 570425344, i32 536870912
  %32 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %5, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #11
  %36 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %5, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %39 = and i32 %38, %30
  %40 = or i32 %31, %39
  %41 = or i32 %40, -1073741824
  %42 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #11, !srcloc !10
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %46 = and i32 %45, %30
  %47 = or i32 %46, %31
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !10
  %50 = load ptr, ptr %32, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %52 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #11
  %53 = load i32, ptr %27, align 8
  %54 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %5, i32 0, i32 15
  %55 = trunc i32 %53 to i8
  %56 = lshr i8 %55, 2
  %57 = and i8 %56, 1
  store i8 %57, ptr %54, align 1
  store i8 1, ptr %10, align 4
  br label %58

58:                                               ; preds = %25, %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_prepare_message(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 57
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %4, i32 0, i32 15
  %15 = load i8, ptr %14, align 1, !range !11
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %18 = load i32, ptr %17, align 8
  br label %27

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 1
  br label %27

27:                                               ; preds = %19, %10
  %28 = phi i32 [ %18, %10 ], [ %24, %19 ]
  %29 = phi i32 [ %13, %10 ], [ %22, %19 ]
  %30 = phi i32 [ %16, %10 ], [ %26, %19 ]
  %31 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %4, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %77, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %32, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 200
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sh_msiof_spi_info, ptr %32, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 300
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %4, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.13) #12
  br label %77

46:                                               ; preds = %38
  %47 = add nuw nsw i32 %40, %36
  %48 = trunc i32 %47 to i16
  %49 = urem i16 %48, 100
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %4, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.14) #12
  br label %77

55:                                               ; preds = %46
  %56 = trunc i32 %36 to i8
  %57 = freeze i8 %56
  %58 = udiv i8 %57, 100
  %59 = mul i8 %58, 100
  %60 = sub i8 %57, %59
  %61 = icmp eq i8 %60, 0
  %62 = zext i8 %58 to i32
  %63 = shl nuw nsw i32 %62, 20
  %64 = add nuw nsw i32 %63, 5242880
  %65 = select i1 %61, i32 %63, i32 %64
  %66 = trunc i32 %40 to i16
  %67 = freeze i16 %66
  %68 = udiv i16 %67, 100
  %69 = mul i16 %68, 100
  %70 = sub i16 %67, %69
  %71 = icmp eq i16 %70, 0
  %72 = zext i16 %68 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = add nuw nsw i32 %73, 327680
  %75 = select i1 %71, i32 %73, i32 %74
  %76 = or i32 %75, %65
  br label %77

77:                                               ; preds = %55, %51, %42, %27
  %78 = phi i32 [ 0, %42 ], [ 0, %51 ], [ %76, %55 ], [ 0, %27 ]
  %79 = and i32 %28, 1
  %80 = lshr i32 %28, 1
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %30, 0
  %83 = select i1 %82, i32 570425349, i32 536870917
  %84 = shl i32 %28, 21
  %85 = and i32 %84, 16777216
  %86 = or i32 %85, %83
  %87 = or i32 %86, %78
  %88 = icmp ult i32 %29, 3
  %89 = shl i32 %29, 26
  %90 = or i32 %89, -1073741824
  %91 = select i1 %88, i32 %90, i32 -1073741824
  %92 = or i32 %87, %91
  %93 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %4, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #11, !srcloc !10
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr inbounds %struct.spi_controller, ptr %95, i32 0, i32 10
  %97 = load i16, ptr %96, align 4
  %98 = and i16 %97, 16
  %99 = icmp eq i16 %98, 0
  %100 = and i32 %87, -65536
  %101 = select i1 %99, i32 %87, i32 %100
  %102 = load ptr, ptr %93, align 4
  %103 = getelementptr i8, ptr %102, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #11, !srcloc !10
  %104 = xor i32 %79, %81
  %105 = xor i32 %104, 1
  %106 = shl nuw nsw i32 %105, 27
  %107 = shl nuw nsw i32 %105, 26
  %108 = shl i32 %28, 19
  %109 = and i32 %108, 8388608
  %110 = mul nuw nsw i32 %81, 1342177280
  %111 = or i32 %110, %109
  %112 = or i32 %111, %106
  %113 = or i32 %112, %107
  %114 = add nuw nsw i32 %113, -1610612736
  %115 = load ptr, ptr %93, align 4
  %116 = getelementptr i8, ptr %115, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #11, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_slave_abort(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 16
  store i8 1, ptr %4, align 2
  %5 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %3, i32 0, i32 6
  tail call void @complete(ptr noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.scatterlist, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 40
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %20 = or i32 %19, 3
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !10
  %23 = tail call i64 @ktime_get() #11
  %24 = add i64 %23, 100000
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %37, %3
  %31 = tail call i64 @ktime_get() #11
  %32 = icmp sgt i64 %31, %24
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr i8, ptr %34, i32 40
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  br label %44

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #11
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %30

44:                                               ; preds = %37, %33, %3
  %45 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @clk_get_rate(ptr noundef %46) #11
  %48 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 9
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = icmp ne i32 %47, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %47, i32 noundef %51) #11
  br label %106

56:                                               ; preds = %44
  %57 = add i32 %47, -1
  %58 = add i32 %57, %51
  %59 = udiv i32 %58, %51
  %60 = icmp ult i32 %59, 1025
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = icmp eq i32 %49, 0
  %63 = icmp ult i32 %59, 33
  %64 = select i1 %62, i1 %63, i1 false
  %65 = icmp ugt i32 %59, 2
  %66 = select i1 %64, i1 %65, i1 false
  %67 = select i1 %66, i32 1, i32 %49
  %68 = icmp eq i32 %67, 0
  %69 = add nuw nsw i32 %59, 1
  %70 = lshr i32 %69, %67
  %71 = select i1 %68, i32 %59, i32 %70
  %72 = icmp ugt i32 %71, 32
  br i1 %72, label %73, label %84

73:                                               ; preds = %73, %61
  %74 = phi i32 [ %77, %73 ], [ %71, %61 ]
  %75 = phi i32 [ %78, %73 ], [ %67, %61 ]
  %76 = add i32 %74, 1
  %77 = lshr i32 %76, 1
  %78 = add i32 %75, 1
  %79 = icmp ugt i32 %76, 65
  br i1 %79, label %73, label %84

80:                                               ; preds = %56
  %81 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.18, i32 noundef %51) #12
  br label %84

84:                                               ; preds = %80, %73, %61
  %85 = phi i32 [ 5, %80 ], [ %67, %61 ], [ %78, %73 ]
  %86 = phi i32 [ 32, %80 ], [ %71, %61 ], [ %77, %73 ]
  %87 = shl i32 %86, %85
  %88 = udiv i32 %47, %87
  %89 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 13
  store i32 %88, ptr %89, align 4
  %90 = getelementptr [6 x i32], ptr @sh_msiof_spi_div_array, i32 0, i32 %85
  %91 = load i32, ptr %90, align 4
  %92 = shl nuw nsw i32 %86, 8
  %93 = add i32 %92, 65280
  %94 = or i32 %91, %93
  %95 = trunc i32 %94 to i16
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %97, i16 %95) #11, !srcloc !17
  %98 = load ptr, ptr %7, align 4
  %99 = getelementptr inbounds %struct.spi_controller, ptr %98, i32 0, i32 10
  %100 = load i16, ptr %99, align 4
  %101 = and i16 %100, 16
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %84
  %104 = load ptr, ptr %16, align 4
  %105 = getelementptr i8, ptr %104, i32 34
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %105, i16 %95) #11, !srcloc !17
  br label %106

106:                                              ; preds = %103, %84, %55
  %107 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %108 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 7
  %109 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 8
  %110 = icmp ult i8 %14, 9
  %111 = icmp ult i8 %14, 17
  %112 = select i1 %111, ptr @copy_wswap32, ptr @copy_plain32
  %113 = select i1 %110, ptr @copy_bswap32, ptr %112
  %114 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 10
  %115 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 13
  %116 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 3
  %117 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 4
  %118 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 5
  %119 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 12
  %120 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  %121 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 4
  %122 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 6
  %123 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 16
  %124 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 11
  br label %125

125:                                              ; preds = %409, %106
  %126 = phi ptr [ %10, %106 ], [ %410, %409 ]
  %127 = phi i32 [ %12, %106 ], [ %413, %409 ]
  %128 = phi ptr [ %8, %106 ], [ %412, %409 ]
  %129 = load ptr, ptr %107, align 8
  %130 = icmp ne ptr %129, null
  %131 = icmp ugt i32 %127, 15
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %415

133:                                              ; preds = %125
  %134 = icmp eq ptr %128, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %133
  %136 = and i32 %127, -4
  %137 = load i32, ptr %108, align 4
  %138 = shl i32 %137, 2
  %139 = call i32 @llvm.umin.i32(i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %139, %135 ], [ 0, %133 ]
  %142 = icmp eq ptr %126, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = and i32 %127, -4
  %145 = load i32, ptr %109, align 4
  %146 = shl i32 %145, 2
  %147 = call i32 @llvm.umin.i32(i32 %144, i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i32 [ %147, %143 ], [ %141, %140 ]
  br i1 %134, label %153, label %150

150:                                              ; preds = %148
  %151 = load ptr, ptr %114, align 4
  %152 = lshr i32 %149, 2
  call void %113(ptr noundef %151, ptr noundef nonnull %128, i32 noundef %152) #11, !callees !18
  br label %153

153:                                              ; preds = %150, %148
  br i1 %142, label %178, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %7, align 4
  %156 = getelementptr inbounds %struct.spi_controller, ptr %155, i32 0, i32 61
  %157 = load ptr, ptr %156, align 4
  %158 = load i32, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #11, !annotation !19
  call void @sg_init_table(ptr noundef nonnull %5, i32 noundef 1) #11
  store i32 %158, ptr %116, align 4
  store i32 %149, ptr %117, align 4
  %159 = icmp eq ptr %157, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %157, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.dma_device, ptr %161, i32 0, i32 39
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %160, %154
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  br label %402

168:                                              ; preds = %163
  %169 = call ptr %165(ptr noundef nonnull %157, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  %170 = icmp eq ptr %169, null
  br i1 %170, label %402, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %169, i32 0, i32 6
  store ptr @sh_msiof_dma_complete, ptr %172, align 4
  %173 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %169, i32 0, i32 8
  store ptr %118, ptr %173, align 4
  %174 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %169, i32 0, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 %175(ptr noundef nonnull %169) #11
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %398

178:                                              ; preds = %171, %153
  %179 = phi i32 [ 36864, %171 ], [ 0, %153 ]
  br i1 %134, label %212, label %180

180:                                              ; preds = %178
  %181 = load ptr, ptr %7, align 4
  %182 = getelementptr inbounds %struct.spi_controller, ptr %181, i32 0, i32 60
  %183 = load ptr, ptr %182, align 8
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.dma_device, ptr %184, i32 0, i32 15
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %119, align 4
  call void @dma_sync_single_for_device(ptr noundef %186, i32 noundef %187, i32 noundef %149, i32 noundef 1) #11
  %188 = load ptr, ptr %7, align 4
  %189 = getelementptr inbounds %struct.spi_controller, ptr %188, i32 0, i32 60
  %190 = load ptr, ptr %189, align 8
  %191 = load i32, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #11, !annotation !19
  call void @sg_init_table(ptr noundef nonnull %4, i32 noundef 1) #11
  store i32 %191, ptr %120, align 4
  store i32 %149, ptr %121, align 4
  %192 = icmp eq ptr %190, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %180
  %194 = load ptr, ptr %190, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.dma_device, ptr %194, i32 0, i32 39
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %193, %180
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  br i1 %142, label %393, label %375

201:                                              ; preds = %196
  %202 = call ptr %198(ptr noundef nonnull %190, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  %203 = icmp eq ptr %202, null
  br i1 %203, label %373, label %204

204:                                              ; preds = %201
  %205 = or i32 %179, -1879048192
  %206 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 6
  store ptr @sh_msiof_dma_complete, ptr %206, align 4
  %207 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 8
  store ptr %122, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %202, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = call i32 %209(ptr noundef nonnull %202) #11
  %211 = icmp sgt i32 %210, -1
  br i1 %211, label %212, label %373

212:                                              ; preds = %204, %178
  %213 = phi i32 [ %205, %204 ], [ %179, %178 ]
  %214 = load ptr, ptr %16, align 4
  %215 = getelementptr i8, ptr %214, i32 48
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 -536870912) #11, !srcloc !10
  %216 = shl i32 %149, 14
  %217 = add i32 %216, -65536
  %218 = and i32 %217, -520159232
  %219 = or i32 %218, 520093696
  br i1 %134, label %220, label %226

220:                                              ; preds = %212
  %221 = load ptr, ptr %7, align 4
  %222 = getelementptr inbounds %struct.spi_controller, ptr %221, i32 0, i32 10
  %223 = load i16, ptr %222, align 4
  %224 = and i16 %223, 16
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %220, %212
  %227 = load ptr, ptr %16, align 4
  %228 = getelementptr i8, ptr %227, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %219) #11, !srcloc !10
  br label %233

229:                                              ; preds = %220
  %230 = or i32 %218, 520093697
  %231 = load ptr, ptr %16, align 4
  %232 = getelementptr i8, ptr %231, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #11, !srcloc !10
  br label %233

233:                                              ; preds = %229, %226
  br i1 %142, label %237, label %234

234:                                              ; preds = %233
  %235 = load ptr, ptr %16, align 4
  %236 = getelementptr i8, ptr %235, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %219) #11, !srcloc !10
  br label %237

237:                                              ; preds = %234, %233
  %238 = load ptr, ptr %16, align 4
  %239 = getelementptr i8, ptr %238, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %213) #11, !srcloc !10
  store i32 0, ptr %118, align 4
  br i1 %134, label %241, label %240

240:                                              ; preds = %237
  store i32 0, ptr %122, align 4
  br label %241

241:                                              ; preds = %240, %237
  store i8 0, ptr %123, align 2
  br i1 %142, label %249, label %242

242:                                              ; preds = %241
  %243 = load ptr, ptr %7, align 4
  %244 = getelementptr inbounds %struct.spi_controller, ptr %243, i32 0, i32 61
  %245 = load ptr, ptr %244, align 4
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.dma_device, ptr %246, i32 0, i32 50
  %248 = load ptr, ptr %247, align 4
  call void %248(ptr noundef %245) #11
  br label %249

249:                                              ; preds = %242, %241
  br i1 %134, label %257, label %250

250:                                              ; preds = %249
  %251 = load ptr, ptr %7, align 4
  %252 = getelementptr inbounds %struct.spi_controller, ptr %251, i32 0, i32 60
  %253 = load ptr, ptr %252, align 8
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dma_device, ptr %254, i32 0, i32 50
  %256 = load ptr, ptr %255, align 4
  call void %256(ptr noundef %253) #11
  br label %257

257:                                              ; preds = %250, %249
  %258 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 32768) #11
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %142, i1 true, i1 %259
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 256) #11
  br label %263

263:                                              ; preds = %261, %257
  %264 = phi i32 [ %258, %257 ], [ %262, %261 ]
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 512) #11
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 16384) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %269, %266, %263
  %273 = phi i32 [ %270, %269 ], [ %264, %263 ], [ %267, %266 ]
  %274 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.19) #12
  br i1 %134, label %373, label %355

277:                                              ; preds = %269
  br i1 %134, label %281, label %278

278:                                              ; preds = %277
  %279 = call i32 @wait_for_completion_timeout(ptr noundef %122, i32 noundef 100) #11
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %331, label %281

281:                                              ; preds = %278, %277
  br i1 %142, label %288, label %282

282:                                              ; preds = %281
  %283 = call i32 @wait_for_completion_timeout(ptr noundef %118, i32 noundef 100) #11
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %331, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %16, align 4
  %287 = getelementptr i8, ptr %286, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 0) #11, !srcloc !10
  br label %293

288:                                              ; preds = %281
  %289 = load ptr, ptr %16, align 4
  %290 = getelementptr i8, ptr %289, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 8388608) #11, !srcloc !10
  %291 = call i32 @wait_for_completion_timeout(ptr noundef %118, i32 noundef 100) #11
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %331, label %293

293:                                              ; preds = %288, %285
  %294 = load ptr, ptr %16, align 4
  %295 = getelementptr i8, ptr %294, i32 64
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #11, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %297 = and i32 %296, -268439553
  %298 = load ptr, ptr %16, align 4
  %299 = getelementptr i8, ptr %298, i32 64
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %297) #11, !srcloc !10
  %300 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 16384, i32 noundef 0) #11
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %293
  %303 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 512, i32 noundef 0) #11
  %304 = icmp ne i32 %303, 0
  %305 = select i1 %142, i1 true, i1 %304
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 256, i32 noundef 0) #11
  br label %308

308:                                              ; preds = %306, %302
  %309 = phi i32 [ %303, %302 ], [ %307, %306 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 32768, i32 noundef 0) #11
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %311, %308, %293
  %315 = phi i32 [ %312, %311 ], [ %300, %293 ], [ %309, %308 ]
  %316 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.platform_device, ptr %317, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.20) #12
  br label %398

319:                                              ; preds = %311
  br i1 %142, label %409, label %320

320:                                              ; preds = %319
  %321 = load ptr, ptr %7, align 4
  %322 = getelementptr inbounds %struct.spi_controller, ptr %321, i32 0, i32 61
  %323 = load ptr, ptr %322, align 4
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.dma_device, ptr %324, i32 0, i32 15
  %326 = load ptr, ptr %325, align 4
  %327 = load i32, ptr %115, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %326, i32 noundef %327, i32 noundef %149, i32 noundef 2) #11
  %328 = load ptr, ptr %124, align 4
  %329 = lshr i32 %149, 2
  call void %113(ptr noundef nonnull %126, ptr noundef %328, i32 noundef %329) #11, !callees !18
  %330 = getelementptr i8, ptr %126, i32 %149
  br label %409

331:                                              ; preds = %288, %282, %278
  %332 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.platform_device, ptr %333, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.21) #12
  %335 = load ptr, ptr %16, align 4
  %336 = getelementptr i8, ptr %335, i32 64
  %337 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #11, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %338 = and i32 %337, -268439553
  %339 = load ptr, ptr %16, align 4
  %340 = getelementptr i8, ptr %339, i32 64
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #11, !srcloc !10
  %341 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 16384, i32 noundef 0) #11
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %331
  %344 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 512, i32 noundef 0) #11
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %142, i1 true, i1 %345
  br i1 %346, label %349, label %347

347:                                              ; preds = %343
  %348 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 256, i32 noundef 0) #11
  br label %349

349:                                              ; preds = %347, %343
  %350 = phi i32 [ %344, %343 ], [ %348, %347 ]
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 32768, i32 noundef 0) #11
  br i1 %134, label %373, label %355

354:                                              ; preds = %349, %331
  br i1 %134, label %373, label %355

355:                                              ; preds = %354, %352, %272
  %356 = phi i32 [ %273, %272 ], [ -110, %354 ], [ -110, %352 ]
  %357 = load ptr, ptr %7, align 4
  %358 = getelementptr inbounds %struct.spi_controller, ptr %357, i32 0, i32 60
  %359 = load ptr, ptr %358, align 8
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.dma_device, ptr %360, i32 0, i32 47
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %373, label %364

364:                                              ; preds = %355
  %365 = call i32 %362(ptr noundef %359) #11
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = load ptr, ptr %359, align 4
  %369 = getelementptr inbounds %struct.dma_device, ptr %368, i32 0, i32 48
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %367
  call void %370(ptr noundef %359) #11
  br i1 %142, label %393, label %375

373:                                              ; preds = %367, %364, %355, %354, %352, %272, %204, %201
  %374 = phi i32 [ -110, %354 ], [ %356, %355 ], [ %356, %364 ], [ %356, %367 ], [ %273, %272 ], [ -110, %352 ], [ -11, %201 ], [ %210, %204 ]
  br i1 %142, label %393, label %375

375:                                              ; preds = %373, %372, %200
  %376 = phi i32 [ -11, %200 ], [ %374, %373 ], [ %356, %372 ]
  %377 = load ptr, ptr %7, align 4
  %378 = getelementptr inbounds %struct.spi_controller, ptr %377, i32 0, i32 61
  %379 = load ptr, ptr %378, align 4
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.dma_device, ptr %380, i32 0, i32 47
  %382 = load ptr, ptr %381, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %393, label %384

384:                                              ; preds = %375
  %385 = call i32 %382(ptr noundef %379) #11
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  %388 = load ptr, ptr %379, align 4
  %389 = getelementptr inbounds %struct.dma_device, ptr %388, i32 0, i32 48
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %387
  call void %390(ptr noundef %379) #11
  br label %393

393:                                              ; preds = %392, %387, %384, %375, %373, %372, %200
  %394 = phi i32 [ -11, %200 ], [ %376, %392 ], [ %376, %387 ], [ %376, %384 ], [ %376, %375 ], [ %374, %373 ], [ %356, %372 ]
  %395 = phi ptr [ null, %200 ], [ %126, %392 ], [ %126, %387 ], [ %126, %384 ], [ %126, %375 ], [ %126, %373 ], [ %126, %372 ]
  %396 = load ptr, ptr %16, align 4
  %397 = getelementptr i8, ptr %396, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 0) #11, !srcloc !10
  br label %398

398:                                              ; preds = %393, %314, %171
  %399 = phi ptr [ %395, %393 ], [ %126, %314 ], [ %126, %171 ]
  %400 = phi i32 [ %394, %393 ], [ %315, %314 ], [ %176, %171 ]
  %401 = icmp eq i32 %400, -11
  br i1 %401, label %402, label %599

402:                                              ; preds = %398, %168, %167
  %403 = phi ptr [ %399, %398 ], [ %126, %167 ], [ %126, %168 ]
  %404 = load i1, ptr @sh_msiof_transfer_one.__print_once, align 1
  br i1 %404, label %415, label %405

405:                                              ; preds = %402
  store i1 true, ptr @sh_msiof_transfer_one.__print_once, align 1
  %406 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.platform_device, ptr %407, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %408, ptr noundef nonnull @.str.15) #12
  br label %415

409:                                              ; preds = %320, %319
  %410 = phi ptr [ %330, %320 ], [ null, %319 ]
  %411 = getelementptr i8, ptr %128, i32 %149
  %412 = select i1 %134, ptr null, ptr %411
  %413 = sub i32 %127, %149
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %599, label %125

415:                                              ; preds = %405, %402, %125
  %416 = phi ptr [ %403, %402 ], [ %403, %405 ], [ %126, %125 ]
  %417 = select i1 %110, i1 %131, i1 false
  %418 = select i1 %417, i32 32, i32 %15
  %419 = icmp ult i32 %418, 9
  br i1 %419, label %446, label %420

420:                                              ; preds = %415
  %421 = icmp ult i32 %418, 17
  %422 = ptrtoint ptr %128 to i32
  br i1 %421, label %423, label %431

423:                                              ; preds = %420
  %424 = and i32 %422, 1
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, ptr @sh_msiof_spi_write_fifo_16, ptr @sh_msiof_spi_write_fifo_16u
  %427 = ptrtoint ptr %416 to i32
  %428 = and i32 %427, 1
  %429 = icmp eq i32 %428, 0
  %430 = select i1 %429, ptr @sh_msiof_spi_read_fifo_16, ptr @sh_msiof_spi_read_fifo_16u
  br label %446

431:                                              ; preds = %420
  %432 = and i32 %422, 3
  %433 = icmp eq i32 %432, 0
  br i1 %417, label %434, label %440

434:                                              ; preds = %431
  %435 = select i1 %433, ptr @sh_msiof_spi_write_fifo_s32, ptr @sh_msiof_spi_write_fifo_s32u
  %436 = ptrtoint ptr %416 to i32
  %437 = and i32 %436, 3
  %438 = icmp eq i32 %437, 0
  %439 = select i1 %438, ptr @sh_msiof_spi_read_fifo_s32, ptr @sh_msiof_spi_read_fifo_s32u
  br label %446

440:                                              ; preds = %431
  %441 = select i1 %433, ptr @sh_msiof_spi_write_fifo_32, ptr @sh_msiof_spi_write_fifo_32u
  %442 = ptrtoint ptr %416 to i32
  %443 = and i32 %442, 3
  %444 = icmp eq i32 %443, 0
  %445 = select i1 %444, ptr @sh_msiof_spi_read_fifo_32, ptr @sh_msiof_spi_read_fifo_32u
  br label %446

446:                                              ; preds = %440, %434, %423, %415
  %447 = phi i32 [ 1, %415 ], [ 2, %423 ], [ 4, %434 ], [ 4, %440 ]
  %448 = phi ptr [ @sh_msiof_spi_read_fifo_8, %415 ], [ %430, %423 ], [ %439, %434 ], [ %445, %440 ]
  %449 = phi ptr [ @sh_msiof_spi_write_fifo_8, %415 ], [ %426, %423 ], [ %435, %434 ], [ %441, %440 ]
  %450 = icmp ugt i32 %447, %127
  br i1 %450, label %599, label %451

451:                                              ; preds = %446
  %452 = udiv i32 %127, %447
  %453 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %7, i32 0, i32 3
  br label %454

454:                                              ; preds = %596, %451
  %455 = phi ptr [ @sh_msiof_spi_write_fifo_8, %596 ], [ %449, %451 ]
  %456 = phi ptr [ @sh_msiof_spi_read_fifo_8, %596 ], [ %448, %451 ]
  %457 = phi ptr [ %588, %596 ], [ %128, %451 ]
  %458 = phi i32 [ %594, %596 ], [ %452, %451 ]
  %459 = phi i32 [ 1, %596 ], [ %447, %451 ]
  %460 = phi i32 [ %598, %596 ], [ %418, %451 ]
  %461 = phi ptr [ %590, %596 ], [ %416, %451 ]
  %462 = sub nsw i32 32, %460
  %463 = shl i32 %460, 24
  %464 = add i32 %463, -16777216
  br label %465

465:                                              ; preds = %585, %454
  %466 = phi ptr [ %588, %585 ], [ %457, %454 ]
  %467 = phi i32 [ %591, %585 ], [ %458, %454 ]
  %468 = phi ptr [ %590, %585 ], [ %461, %454 ]
  %469 = icmp eq ptr %466, null
  br i1 %469, label %473, label %470

470:                                              ; preds = %465
  %471 = load i32, ptr %108, align 4
  %472 = call i32 @llvm.smin.i32(i32 %471, i32 %467) #11
  br label %473

473:                                              ; preds = %470, %465
  %474 = phi i32 [ %472, %470 ], [ %467, %465 ]
  %475 = icmp eq ptr %468, null
  br i1 %475, label %479, label %476

476:                                              ; preds = %473
  %477 = load i32, ptr %109, align 4
  %478 = call i32 @llvm.smin.i32(i32 %474, i32 %477) #11
  br label %479

479:                                              ; preds = %476, %473
  %480 = phi i32 [ %478, %476 ], [ %474, %473 ]
  %481 = load ptr, ptr %16, align 4
  %482 = getelementptr i8, ptr %481, i32 48
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 0) #11, !srcloc !10
  %483 = shl i32 %480, 16
  %484 = add i32 %483, -65536
  %485 = or i32 %484, %464
  br i1 %469, label %486, label %492

486:                                              ; preds = %479
  %487 = load ptr, ptr %7, align 4
  %488 = getelementptr inbounds %struct.spi_controller, ptr %487, i32 0, i32 10
  %489 = load i16, ptr %488, align 4
  %490 = and i16 %489, 16
  %491 = icmp eq i16 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %486, %479
  %493 = load ptr, ptr %16, align 4
  %494 = getelementptr i8, ptr %493, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %494, i32 %485) #11, !srcloc !10
  br label %499

495:                                              ; preds = %486
  %496 = or i32 %485, 1
  %497 = load ptr, ptr %16, align 4
  %498 = getelementptr i8, ptr %497, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 %496) #11, !srcloc !10
  br label %499

499:                                              ; preds = %495, %492
  br i1 %475, label %503, label %500

500:                                              ; preds = %499
  %501 = load ptr, ptr %16, align 4
  %502 = getelementptr i8, ptr %501, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %502, i32 %485) #11, !srcloc !10
  br label %503

503:                                              ; preds = %500, %499
  %504 = load ptr, ptr %16, align 4
  %505 = getelementptr i8, ptr %504, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %505, i32 8388736) #11, !srcloc !10
  br i1 %469, label %507, label %506

506:                                              ; preds = %503
  call void %455(ptr noundef %7, ptr noundef nonnull %466, i32 noundef %480, i32 noundef %462) #11
  br label %507

507:                                              ; preds = %506, %503
  store i32 0, ptr %118, align 4
  store i8 0, ptr %123, align 2
  %508 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 32768) #11
  %509 = icmp ne i32 %508, 0
  %510 = select i1 %475, i1 true, i1 %509
  br i1 %510, label %513, label %511

511:                                              ; preds = %507
  %512 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 256) #11
  br label %513

513:                                              ; preds = %511, %507
  %514 = phi i32 [ %508, %507 ], [ %512, %511 ]
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %513
  %517 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 512) #11
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 0, i32 noundef 16384) #11
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %519, %516, %513
  %523 = phi i32 [ %520, %519 ], [ %514, %513 ], [ %517, %516 ]
  %524 = load ptr, ptr %453, align 4
  %525 = getelementptr inbounds %struct.platform_device, ptr %524, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.19) #12
  br label %578

526:                                              ; preds = %519
  %527 = call i32 @wait_for_completion_timeout(ptr noundef %118, i32 noundef 100) #11
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %556, label %529

529:                                              ; preds = %526
  br i1 %475, label %531, label %530

530:                                              ; preds = %529
  call void %456(ptr noundef %7, ptr noundef nonnull %468, i32 noundef %480, i32 noundef %462) #11
  br label %531

531:                                              ; preds = %530, %529
  %532 = load ptr, ptr %16, align 4
  %533 = getelementptr i8, ptr %532, i32 64
  %534 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %533) #11, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %535 = and i32 %534, -268439553
  %536 = load ptr, ptr %16, align 4
  %537 = getelementptr i8, ptr %536, i32 64
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %537, i32 %535) #11, !srcloc !10
  %538 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 16384, i32 noundef 0) #11
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %552

540:                                              ; preds = %531
  %541 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 512, i32 noundef 0) #11
  %542 = icmp ne i32 %541, 0
  %543 = select i1 %475, i1 true, i1 %542
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 256, i32 noundef 0) #11
  br label %546

546:                                              ; preds = %544, %540
  %547 = phi i32 [ %541, %540 ], [ %545, %544 ]
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %546
  %550 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 32768, i32 noundef 0) #11
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %582, label %552

552:                                              ; preds = %549, %546, %531
  %553 = phi i32 [ %550, %549 ], [ %538, %531 ], [ %547, %546 ]
  %554 = load ptr, ptr %453, align 4
  %555 = getelementptr inbounds %struct.platform_device, ptr %554, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %555, ptr noundef nonnull @.str.20) #12
  br label %582

556:                                              ; preds = %526
  %557 = load ptr, ptr %453, align 4
  %558 = getelementptr inbounds %struct.platform_device, ptr %557, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %558, ptr noundef nonnull @.str.21) #12
  %559 = load ptr, ptr %16, align 4
  %560 = getelementptr i8, ptr %559, i32 64
  %561 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %560) #11, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %562 = and i32 %561, -268439553
  %563 = load ptr, ptr %16, align 4
  %564 = getelementptr i8, ptr %563, i32 64
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %564, i32 %562) #11, !srcloc !10
  %565 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 16384, i32 noundef 0) #11
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %578

567:                                              ; preds = %556
  %568 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 512, i32 noundef 0) #11
  %569 = icmp ne i32 %568, 0
  %570 = select i1 %475, i1 true, i1 %569
  br i1 %570, label %573, label %571

571:                                              ; preds = %567
  %572 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 256, i32 noundef 0) #11
  br label %573

573:                                              ; preds = %571, %567
  %574 = phi i32 [ %568, %567 ], [ %572, %571 ]
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %573
  %577 = call fastcc i32 @sh_msiof_modify_ctr_wait(ptr noundef %7, i32 noundef 32768, i32 noundef 0) #11
  br label %578

578:                                              ; preds = %576, %573, %556, %522
  %579 = phi i32 [ %523, %522 ], [ -110, %556 ], [ -110, %573 ], [ -110, %576 ]
  %580 = load ptr, ptr %16, align 4
  %581 = getelementptr i8, ptr %580, i32 68
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %581, i32 0) #11, !srcloc !10
  br label %582

582:                                              ; preds = %578, %552, %549
  %583 = phi i32 [ %579, %578 ], [ %553, %552 ], [ %480, %549 ]
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %599, label %585

585:                                              ; preds = %582
  %586 = mul i32 %583, %459
  %587 = getelementptr i8, ptr %466, i32 %586
  %588 = select i1 %469, ptr null, ptr %587
  %589 = getelementptr i8, ptr %468, i32 %586
  %590 = select i1 %475, ptr null, ptr %589
  %591 = sub i32 %467, %583
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %465

593:                                              ; preds = %585
  %594 = urem i32 %127, %459
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %593
  %597 = load i8, ptr %13, align 1
  %598 = zext i8 %597 to i32
  br label %454

599:                                              ; preds = %593, %582, %446, %409, %398
  %600 = phi i32 [ %400, %398 ], [ 0, %446 ], [ %583, %582 ], [ 0, %593 ], [ 0, %409 ]
  ret i32 %600
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_msiof_release_dma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 60
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 61
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #11
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  tail call void @free_pages(i32 noundef %22, i32 noundef 0) #11
  %23 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  tail call void @free_pages(i32 noundef %25, i32 noundef 0) #11
  %26 = load ptr, ptr %7, align 4
  tail call void @dma_release_channel(ptr noundef %26) #11
  %27 = load ptr, ptr %3, align 8
  tail call void @dma_release_channel(ptr noundef %27) #11
  br label %28

28:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @copy_bswap32(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = ptrtoint ptr %1 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %16, %9 ], [ %0, %7 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %7 ]
  %12 = phi i32 [ %13, %9 ], [ %2, %7 ]
  %13 = add i32 %12, -1
  %14 = load i32, ptr %11, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr i32, ptr %10, i32 1
  store i32 %15, ptr %10, align 4
  %17 = getelementptr i32, ptr %11, i32 1
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %46, label %9

19:                                               ; preds = %3
  %20 = ptrtoint ptr %0 to i32
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %2, 0
  br i1 %22, label %25, label %24

24:                                               ; preds = %19
  br i1 %23, label %46, label %26

25:                                               ; preds = %19
  br i1 %23, label %46, label %36

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %34, %26 ], [ %0, %24 ]
  %28 = phi ptr [ %31, %26 ], [ %1, %24 ]
  %29 = phi i32 [ %30, %26 ], [ %2, %24 ]
  %30 = add i32 %29, -1
  %31 = getelementptr i32, ptr %28, i32 1
  %32 = load i32, ptr %28, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  store i32 %33, ptr %27, align 1
  %34 = getelementptr i32, ptr %27, i32 1
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %46, label %26

36:                                               ; preds = %36, %25
  %37 = phi ptr [ %44, %36 ], [ %0, %25 ]
  %38 = phi ptr [ %41, %36 ], [ %1, %25 ]
  %39 = phi i32 [ %40, %36 ], [ %2, %25 ]
  %40 = add i32 %39, -1
  %41 = getelementptr i32, ptr %38, i32 1
  %42 = load i32, ptr %38, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = getelementptr i32, ptr %37, i32 1
  store i32 %43, ptr %37, align 4
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %46, label %36

46:                                               ; preds = %36, %26, %25, %24, %9, %7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @copy_wswap32(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = ptrtoint ptr %1 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ %2, %7 ]
  %11 = phi ptr [ %16, %9 ], [ %0, %7 ]
  %12 = phi ptr [ %17, %9 ], [ %1, %7 ]
  %13 = add i32 %10, -1
  %14 = load i32, ptr %12, align 1
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 16) #11
  %16 = getelementptr i32, ptr %11, i32 1
  store i32 %15, ptr %11, align 4
  %17 = getelementptr i32, ptr %12, i32 1
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %46, label %9

19:                                               ; preds = %3
  %20 = ptrtoint ptr %0 to i32
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %2, 0
  br i1 %22, label %25, label %24

24:                                               ; preds = %19
  br i1 %23, label %46, label %26

25:                                               ; preds = %19
  br i1 %23, label %46, label %36

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %34, %26 ], [ %0, %24 ]
  %28 = phi ptr [ %31, %26 ], [ %1, %24 ]
  %29 = phi i32 [ %30, %26 ], [ %2, %24 ]
  %30 = add i32 %29, -1
  %31 = getelementptr i32, ptr %28, i32 1
  %32 = load i32, ptr %28, align 4
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16) #11
  store i32 %33, ptr %27, align 1
  %34 = getelementptr i32, ptr %27, i32 1
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %46, label %26

36:                                               ; preds = %36, %25
  %37 = phi ptr [ %44, %36 ], [ %0, %25 ]
  %38 = phi ptr [ %41, %36 ], [ %1, %25 ]
  %39 = phi i32 [ %40, %36 ], [ %2, %25 ]
  %40 = add i32 %39, -1
  %41 = getelementptr i32, ptr %38, i32 1
  %42 = load i32, ptr %38, align 4
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 16) #11
  %44 = getelementptr i32, ptr %37, i32 1
  store i32 %43, ptr %37, align 4
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %46, label %36

46:                                               ; preds = %36, %26, %25, %24, %9, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @copy_plain32(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = shl i32 %2, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr align 4 %1, i32 %4, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i8, ptr %1, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl i32 %12, %3
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_8(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %13 = lshr i32 %12, %3
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %1, i32 %9
  store i8 %14, ptr %15, align 1
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_16u(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i16, ptr %1, i32 %9
  %11 = load i16, ptr %10, align 1
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, %3
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i16, ptr %1, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, %3
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_16u(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i16, ptr %1, i32 %9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %14 = lshr i32 %13, %3
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %10, align 1
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %13 = lshr i32 %12, %3
  %14 = trunc i32 %13 to i16
  %15 = getelementptr i16, ptr %1, i32 %9
  store i16 %14, ptr %15, align 2
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_s32u(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 1
  %12 = shl i32 %11, %3
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, %3
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !10
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_s32u(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %14 = lshr i32 %13, %3
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  store i32 %15, ptr %10, align 1
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %13 = lshr i32 %12, %3
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr i32, ptr %1, i32 %9
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_32u(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %15, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 1
  %12 = shl i32 %11, %3
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !10
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_write_fifo_32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %15, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, %3
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !10
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_32u(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %15, %8 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %14 = lshr i32 %13, %3
  store i32 %14, ptr %10, align 1
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_spi_read_fifo_32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %15, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %13 = lshr i32 %12, %3
  %14 = getelementptr i32, ptr %1, i32 %9
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_msiof_dma_complete(ptr noundef %0) #2 {
  tail call void @complete(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_msiof_modify_ctr_wait(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = or i32 %2, %1
  %5 = getelementptr inbounds %struct.sh_msiof_spi_priv, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %9 = xor i32 %1, -1
  %10 = and i32 %8, %9
  %11 = or i32 %10, %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !10
  %14 = tail call i64 @ktime_get() #11
  %15 = add i64 %14, 100000
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %19 = and i32 %18, %4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %36, label %21

21:                                               ; preds = %29, %3
  %22 = tail call i64 @ktime_get() #11
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %28 = and i32 %27, %4
  br label %36

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #11
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %34 = and i32 %33, %4
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %21

36:                                               ; preds = %29, %24, %3
  %37 = phi i32 [ %19, %3 ], [ %28, %24 ], [ %34, %29 ]
  %38 = icmp eq i32 %37, %2
  %39 = select i1 %38, i32 0, i32 -110
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sh_msiof_request_dma_chan(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.dma_cap_mask_t, align 4
  %6 = alloca %struct.dma_cap_mask_t, align 4
  %7 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #11
  store i32 0, ptr %6, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %6) #11
  %8 = inttoptr i32 %2 to ptr
  %9 = icmp eq i32 %1, 1
  %10 = select i1 %9, ptr @.str.23, ptr @.str.24
  %11 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %11, ptr %5, align 4
  %12 = call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull %10) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %24

17:                                               ; preds = %4
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %23

20:                                               ; preds = %17
  %21 = call ptr @__dma_request_channel(ptr noundef nonnull %5, ptr noundef nonnull @shdma_chan_filter, ptr noundef nonnull %8, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %19
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.25) #12
  br label %44

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %12, %16 ], [ %21, %20 ]
  %26 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %26, i8 0, i32 44, i1 false)
  store i32 %1, ptr %7, align 4
  br i1 %9, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 2
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 4
  br label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 1
  store i32 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 3
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %32, %30 ], [ %29, %27 ]
  store i32 4, ptr %34, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = call i32 %37(ptr noundef nonnull %25, ptr noundef nonnull %7) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %40, %39 ], [ -38, %33 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %43) #12
  call void @dma_release_channel(ptr noundef nonnull %25) #11
  br label %44

44:                                               ; preds = %42, %39, %23
  %45 = phi ptr [ null, %42 ], [ null, %23 ], [ %25, %39 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @shdma_chan_filter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #10 {
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @spi_controller_suspend(ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_msiof_spi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @spi_controller_resume(ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2152570456}
!10 = !{i64 5029363}
!11 = !{i8 0, i8 2}
!12 = !{i64 5029781}
!13 = !{i64 2152569234}
!14 = !{i64 2153275035}
!15 = !{i64 2153275369}
!16 = !{i64 2152569983}
!17 = !{i64 5028743}
!18 = !{ptr @copy_bswap32, ptr @copy_plain32, ptr @copy_wswap32}
!19 = !{!"auto-init"}
!20 = !{i64 2153272184}
!21 = !{i64 2153272518}
