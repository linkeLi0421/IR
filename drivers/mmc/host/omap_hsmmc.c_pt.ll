; ModuleID = '/llk/IR/drivers/mmc/host/omap_hsmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/omap_hsmmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_mmc_of_data = type { i32, i8 }
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
%struct.omap_hsmmc_platform_data = type { ptr, i32, i8, i16, i32, i32, i8, i32, ptr, ptr, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.omap_hsmmc_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, i32, %struct.spinlock, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.omap_hsmmc_next, ptr }
%struct.omap_hsmmc_next = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_omap_hsmmc__279_2134_omap_hsmmc_driver_init6 = internal global ptr @omap_hsmmc_driver_init, section ".initcall6.init", align 4
@omap_hsmmc_driver = internal global %struct.platform_driver { ptr @omap_hsmmc_probe, ptr @omap_hsmmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @omap_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hsmmc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_hsmmc_driver_exit = internal global ptr @omap_hsmmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description280 = internal constant [62 x i8] c"omap_hsmmc.description=OMAP High Speed Multimedia Card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [44 x i8] c"omap_hsmmc.file=drivers/mmc/host/omap_hsmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [23 x i8] c"omap_hsmmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [37 x i8] c"omap_hsmmc.alias=platform:omap_hsmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [40 x i8] c"omap_hsmmc.author=Texas Instruments Inc\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"omap_hsmmc\00", align 1
@omap_mmc_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-pre-es3-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pre_es3_mmc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_mmc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-hsmmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_mmc_of_data }, %struct.of_device_id zeroinitializer], align 4
@omap_hsmmc_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr @omap_hsmmc_suspend, ptr @omap_hsmmc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hsmmc_runtime_suspend, ptr @omap_hsmmc_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Platform Data is missing\0A\00", align 1
@omap_hsmmc_ops = internal global %struct.mmc_host_ops { ptr @omap_hsmmc_post_req, ptr @omap_hsmmc_pre_req, ptr @omap_hsmmc_request, ptr null, ptr @omap_hsmmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr @omap_hsmmc_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"multiblock reads disabled due to 35xx erratum 2.1.1.128; MMC read performance may suffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mmchsdb_fck\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to enable debounce clk\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"RX DMA channel request failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"TX DMA channel request failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to grab HSMMC IRQ\0A\00", align 1
@dev_attr_slot_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @omap_hsmmc_show_slot_name, ptr null }, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"ti,dual-volt\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ti,non-removable\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"ti,needs-special-reset\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"ti,needs-special-hs-handling\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"[%s] invalid cookie: data->host_cookie %d host->next_data.cookie %d\0A\00", align 1
@__func__.omap_hsmmc_pre_dma_transfer = private unnamed_addr constant [28 x i8] c"omap_hsmmc_pre_dma_transfer\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"drivers/mmc/host/omap_hsmmc.c\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MMC start dma failure\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"prep_slave_sg() failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"pbias reg enable fail\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"pbias reg disable fail\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"vmmc_aux reg enable failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"vmmc_aux reg disable failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"vmmc_aux re-enable failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Unable to switch operating voltage\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"Timeout waiting on controller reset in %s\0A\00", align 1
@__func__.omap_hsmmc_reset_controller_fsm = private unnamed_addr constant [32 x i8] c"omap_hsmmc_reset_controller_fsm\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"vmmc_aux\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"pbias\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"SD card detect fail? enable CONFIG_REGULATOR_PBIAS\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"fail to disable boot enabled vmmc reg\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"fail to disable boot enabled vmmc_aux reg\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"failed to disable boot enabled pbias reg\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Unable to request wake IRQ\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"missing idle pinctrl state\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"no SDIO IRQ support, falling back to polling\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"slot_name\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@mmc_regs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"mmc%d:\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"sdio irq mode\09%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"sdio irq \09%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"ctx_loss:\09%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"\0Aregs:\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"CON:\09\090x%08x\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"PSTATE:\09\090x%08x\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"HCTL:\09\090x%08x\0A\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"SYSCTL:\09\090x%08x\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"IE:\09\090x%08x\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"ISE:\09\090x%08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"CAPA:\09\090x%08x\0A\00", align 1
@omap3_pre_es3_mmc_of_data = internal constant %struct.omap_mmc_of_data { i32 0, i8 2 }, align 4
@omap4_mmc_of_data = internal constant %struct.omap_mmc_of_data { i32 256, i8 0 }, align 4
@am33xx_mmc_of_data = internal constant %struct.omap_mmc_of_data { i32 256, i8 4 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_omap_hsmmc_driver_exit, ptr @__initcall__kmod_omap_hsmmc__279_2134_omap_hsmmc_driver_init6, ptr @omap_hsmmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_hsmmc_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_hsmmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_hsmmc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @omap_mmc_of_match, ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %13, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 9
  store ptr %17, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %15, %12
  %22 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef null) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = or i8 %26, 1
  store i8 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 6
  %33 = load i8, ptr %32, align 4
  %34 = or i8 %33, 3
  store i8 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef null) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 2
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef null) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 4
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %49, %7
  %52 = phi ptr [ %10, %49 ], [ inttoptr (i32 -12 to ptr), %7 ]
  %53 = ptrtoint ptr %52 to i32
  br label %309

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 4
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 3
  store i16 %60, ptr %61, align 2
  %62 = getelementptr inbounds %struct.omap_mmc_of_data, ptr %56, i32 0, i32 1
  %63 = load i8, ptr %62, align 4
  %64 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %10, i32 0, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = or i8 %65, %63
  store i8 %66, ptr %64, align 4
  br label %70

67:                                               ; preds = %1
  %68 = icmp eq ptr %4, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %309

70:                                               ; preds = %67, %58, %54
  %71 = phi ptr [ %4, %67 ], [ %10, %58 ], [ %10, %54 ]
  %72 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %73 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %74 = icmp eq ptr %72, null
  %75 = icmp slt i32 %73, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %309, label %77

77:                                               ; preds = %70
  %78 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %72) #11
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %309

82:                                               ; preds = %77
  %83 = tail call ptr @mmc_alloc_host(i32 noundef 144, ptr noundef %2) #11
  %84 = icmp eq ptr %83, null
  br i1 %84, label %309, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @mmc_of_parse(ptr noundef nonnull %83) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %307

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 68
  %90 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %89, i32 0, i32 1
  store ptr %83, ptr %90, align 4
  %91 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 11, i32 3
  store ptr %71, ptr %91, align 4
  store ptr %2, ptr %89, align 4
  %92 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 9, i32 3, i32 1
  store i32 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 10
  store i32 -1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 9, i32 2
  store i32 %73, ptr %94, align 4
  %95 = load i32, ptr %72, align 4
  %96 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %71, i32 0, i32 3
  %97 = load i16, ptr %96, align 2
  %98 = zext i16 %97 to i32
  %99 = add i32 %95, %98
  %100 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 1
  store i32 %99, ptr %100, align 4
  %101 = load i16, ptr %96, align 2
  %102 = zext i16 %101 to i32
  %103 = getelementptr i8, ptr %78, i32 %102
  %104 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 0, i32 6
  store ptr %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %89, i32 0, i32 16
  store i8 0, ptr %105, align 1
  %106 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 11, i32 2
  store i32 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 0, i32 5
  store i8 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 0, i32 7
  store i8 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %89, ptr %109, align 8
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %88
  %114 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %111, i32 noundef 1) #11
  %115 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 9, i32 3
  store i32 %114, ptr %115, align 4
  br label %116

116:                                              ; preds = %113, %88
  %117 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 3
  store ptr @omap_hsmmc_ops, ptr %117, align 4
  %118 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 5
  store i32 400000, ptr %118, align 4
  %119 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %71, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 6
  br i1 %121, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, ptr %122, align 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123, %116
  %127 = phi i32 [ %120, %116 ], [ 52000000, %123 ]
  store i32 %127, ptr %122, align 16
  br label %128

128:                                              ; preds = %126, %123
  %129 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 2
  store i32 0, ptr %129, align 4
  %130 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  %131 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 0, i32 2
  store ptr %130, ptr %131, align 4
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = ptrtoint ptr %130 to i32
  store ptr null, ptr %131, align 4
  br label %307

135:                                              ; preds = %128
  %136 = load ptr, ptr %91, align 4
  %137 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %136, i32 0, i32 2
  %138 = load i8, ptr %137, align 4
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3) #12
  store ptr @omap_hsmmc_multi_io_quirk, ptr getelementptr inbounds (%struct.mmc_host_ops, ptr @omap_hsmmc_ops, i32 0, i32 22), align 4
  br label %142

142:                                              ; preds = %141, %135
  %143 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #11
  %144 = load ptr, ptr %89, align 4
  tail call void @pm_runtime_enable(ptr noundef %144) #11
  %145 = load ptr, ptr %89, align 4
  %146 = tail call i32 @__pm_runtime_resume(ptr noundef %145, i32 noundef 4) #11
  %147 = load ptr, ptr %89, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %147, i32 noundef 100) #11
  %148 = load ptr, ptr %89, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %148, i1 noundef zeroext true) #11
  tail call fastcc void @omap_hsmmc_context_save(ptr noundef %89)
  %149 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  %150 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 0, i32 3
  store ptr %149, ptr %150, align 4
  %151 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %158, label %152

152:                                              ; preds = %142
  %153 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %149)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %90, align 4
  %157 = load ptr, ptr %156, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.5) #12
  br label %158

158:                                              ; preds = %155, %142
  store ptr null, ptr %150, align 4
  br label %159

159:                                              ; preds = %158, %152
  %160 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 21
  store i16 64, ptr %160, align 4
  %161 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 24
  store i32 512, ptr %161, align 4
  %162 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 25
  store i32 65535, ptr %162, align 8
  %163 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 23
  store i32 33553920, ptr %163, align 16
  %164 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 16
  %165 = load i32, ptr %164, align 8
  %166 = or i32 %165, 1073742342
  store i32 %166, ptr %164, align 8
  %167 = load ptr, ptr %91, align 4
  %168 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %167, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = or i32 %169, %166
  %171 = lshr i32 %170, 6
  %172 = and i32 %171, 1
  %173 = or i32 %172, %170
  store i32 %173, ptr %164, align 8
  %174 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %167, i32 0, i32 6
  %175 = load i8, ptr %174, align 4
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %159
  %179 = or i32 %173, 256
  store i32 %179, ptr %164, align 8
  br label %180

180:                                              ; preds = %178, %159
  %181 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %167, i32 0, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 19
  %184 = load i32, ptr %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, ptr %183, align 4
  tail call fastcc void @omap_hsmmc_conf_bus_power(ptr noundef %89)
  %186 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.6) #11
  %187 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 10, i32 1
  store ptr %186, ptr %187, align 4
  %188 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  br i1 %188, label %189, label %194

189:                                              ; preds = %180
  %190 = load ptr, ptr %90, align 4
  %191 = load ptr, ptr %190, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.7) #12
  %192 = load ptr, ptr %187, align 4
  %193 = ptrtoint ptr %192 to i32
  br label %286

194:                                              ; preds = %180
  %195 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.8) #11
  %196 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 10, i32 0, i32 1
  store ptr %195, ptr %196, align 4
  %197 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load ptr, ptr %90, align 4
  %200 = load ptr, ptr %199, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.9) #12
  %201 = load ptr, ptr %196, align 4
  %202 = ptrtoint ptr %201 to i32
  br label %286

203:                                              ; preds = %194
  %204 = load i32, ptr %163, align 16
  %205 = load ptr, ptr %187, align 4
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.dma_device, ptr %206, i32 0, i32 15
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.device, ptr %208, i32 0, i32 20
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %203
  %213 = load i32, ptr %210, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %203
  br label %216

216:                                              ; preds = %215, %212
  %217 = phi i32 [ 65536, %215 ], [ %213, %212 ]
  %218 = tail call i32 @llvm.umin.i32(i32 %204, i32 %217)
  %219 = load ptr, ptr %195, align 4
  %220 = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 15
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.device, ptr %221, i32 0, i32 20
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %216
  %226 = load i32, ptr %223, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225, %216
  br label %229

229:                                              ; preds = %228, %225
  %230 = phi i32 [ 65536, %228 ], [ %226, %225 ]
  %231 = tail call i32 @llvm.umin.i32(i32 %218, i32 %230)
  %232 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 20
  store i32 %231, ptr %232, align 8
  %233 = load i32, ptr %94, align 4
  %234 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 1
  %235 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 1, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load ptr, ptr %234, align 4
  br label %240

240:                                              ; preds = %238, %229
  %241 = phi ptr [ %239, %238 ], [ %236, %229 ]
  %242 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %233, ptr noundef nonnull @omap_hsmmc_irq, ptr noundef null, i32 noundef 0, ptr noundef %241, ptr noundef %89) #11
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %90, align 4
  %246 = load ptr, ptr %245, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.10) #12
  br label %286

247:                                              ; preds = %240
  %248 = tail call fastcc i32 @omap_hsmmc_reg_get(ptr noundef %89)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %286

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 8
  %252 = load i32, ptr %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load ptr, ptr %91, align 4
  %256 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %255, i32 0, i32 10
  %257 = load i32, ptr %256, align 4
  store i32 %257, ptr %251, align 8
  br label %258

258:                                              ; preds = %254, %250
  tail call fastcc void @omap_hsmmc_disable_irq(ptr noundef %89)
  %259 = tail call fastcc i32 @omap_hsmmc_configure_wake_irq(ptr noundef %89)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, ptr %164, align 8
  %263 = or i32 %262, 8
  store i32 %263, ptr %164, align 8
  br label %264

264:                                              ; preds = %261, %258
  %265 = tail call i32 @mmc_add_host(ptr noundef nonnull %83) #11
  %266 = load ptr, ptr %91, align 4
  %267 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %266, i32 0, i32 9
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %264
  %271 = tail call i32 @device_create_file(ptr noundef %234, ptr noundef nonnull @dev_attr_slot_name) #11
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %285, label %273

273:                                              ; preds = %270, %264
  %274 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 55
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef nonnull %275, ptr noundef nonnull %83, ptr noundef nonnull @mmc_regs_fops) #11
  br label %279

279:                                              ; preds = %277, %273
  %280 = load ptr, ptr %89, align 4
  %281 = tail call i64 @ktime_get_mono_fast_ns() #11
  %282 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 11, i32 22
  store volatile i64 %281, ptr %282, align 8
  %283 = load ptr, ptr %89, align 4
  %284 = tail call i32 @__pm_runtime_suspend(ptr noundef %283, i32 noundef 13) #11
  br label %309

285:                                              ; preds = %270
  tail call void @mmc_remove_host(ptr noundef nonnull %83) #11
  br label %286

286:                                              ; preds = %285, %247, %244, %198, %189
  %287 = phi i32 [ %193, %189 ], [ %202, %198 ], [ %242, %244 ], [ %248, %247 ], [ %271, %285 ]
  %288 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext false) #11
  %289 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 1, i32 1, i32 10, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  %292 = icmp ugt ptr %290, inttoptr (i32 -4096 to ptr)
  %293 = or i1 %291, %292
  br i1 %293, label %295, label %294

294:                                              ; preds = %286
  tail call void @dma_release_channel(ptr noundef nonnull %290) #11
  br label %295

295:                                              ; preds = %294, %286
  %296 = load ptr, ptr %187, align 4
  %297 = icmp eq ptr %296, null
  %298 = icmp ugt ptr %296, inttoptr (i32 -4096 to ptr)
  %299 = or i1 %297, %298
  br i1 %299, label %301, label %300

300:                                              ; preds = %295
  tail call void @dma_release_channel(ptr noundef nonnull %296) #11
  br label %301

301:                                              ; preds = %300, %295
  %302 = load ptr, ptr %89, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %302, i1 noundef zeroext false) #11
  %303 = load ptr, ptr %89, align 4
  %304 = tail call i32 @__pm_runtime_idle(ptr noundef %303, i32 noundef 4) #11
  %305 = load ptr, ptr %89, align 4
  tail call void @__pm_runtime_disable(ptr noundef %305, i1 noundef zeroext true) #11
  %306 = load ptr, ptr %150, align 4
  tail call void @clk_disable(ptr noundef %306) #11
  tail call void @clk_unprepare(ptr noundef %306) #11
  br label %307

307:                                              ; preds = %301, %133, %85
  %308 = phi i32 [ %86, %85 ], [ %134, %133 ], [ %287, %301 ]
  tail call void @mmc_free_host(ptr noundef nonnull %83) #11
  br label %309

309:                                              ; preds = %307, %279, %82, %80, %70, %69, %51
  %310 = phi i32 [ %53, %51 ], [ -6, %69 ], [ %81, %80 ], [ 0, %279 ], [ -6, %70 ], [ %308, %307 ], [ -12, %82 ]
  ret i32 %310
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #11
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @mmc_remove_host(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  tail call void @dma_release_channel(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  tail call void @dma_release_channel(ptr noundef %11) #11
  %12 = load ptr, ptr %3, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %12) #11
  %13 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %13, i1 noundef zeroext false) #11
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #11
  %16 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #11
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %18 = tail call i32 @device_init_wakeup(ptr noundef %17, i1 noundef zeroext false) #11
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #11
  tail call void @clk_unprepare(ptr noundef %20) #11
  %21 = load ptr, ptr %6, align 4
  tail call void @mmc_free_host(ptr noundef %21) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_hsmmc_multi_io_quirk(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 512
  %5 = select i1 %4, i32 1, i32 %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_context_save(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 18
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 296
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 19
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 300
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 20
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 320
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 21
  store i32 %17, ptr %18, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_conf_bus_power(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 2560, i32 3072
  %9 = select i1 %7, i32 67108864, i32 100663296
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 296
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  %14 = and i32 %13, -3585
  %15 = or i32 %14, %8
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !9
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 320
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = or i32 %20, %9
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !9
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 296
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  %27 = or i32 %26, 256
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !9
  %30 = load i32, ptr @loops_per_jiffy, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %39, %1
  %33 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 296
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %40 = add nuw i32 %33, 1
  %41 = load i32, ptr @loops_per_jiffy, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %32, label %43

43:                                               ; preds = %39, %32, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 304
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  %7 = and i32 %6, 830406963
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %214, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 31
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 28
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 33
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %1, i32 0, i32 1
  br label %17

17:                                               ; preds = %208, %9
  %18 = phi i32 [ %6, %9 ], [ %211, %208 ]
  %19 = load i32, ptr %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %193, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 4
  %23 = and i32 %18, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %18) #11, !srcloc !9
  br label %74

28:                                               ; preds = %21
  %29 = and i32 %18, 458752
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp eq ptr %22, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, ptr %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %28
  %38 = zext i1 %30 to i32
  store i32 0, ptr %12, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ 0, %34 ]
  %41 = and i32 %18, 1114112
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = and i32 %18, 543555584
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ -110, %39 ], [ -84, %43 ]
  tail call fastcc void @hsmmc_command_incomplete(ptr noundef %1, i32 noundef %47, i32 noundef %32) #11
  br label %48

48:                                               ; preds = %46, %43
  %49 = and i32 %18, 16777216
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 316
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !8
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load ptr, ptr %13, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = and i32 %54, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %54, 28
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 -84
  %67 = select i1 %63, i32 %66, i32 -110
  %68 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  tail call fastcc void @hsmmc_command_incomplete(ptr noundef %1, i32 noundef %67, i32 noundef 1) #11
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %18) #11, !srcloc !9
  br label %81

71:                                               ; preds = %57, %51, %48
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %18) #11, !srcloc !9
  br i1 %30, label %74, label %81

74:                                               ; preds = %71, %25
  %75 = phi i32 [ 0, %25 ], [ %40, %71 ]
  %76 = and i32 %18, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %142, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %14, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %142, label %81

81:                                               ; preds = %78, %71, %61
  %82 = phi i32 [ %75, %78 ], [ %40, %71 ], [ %40, %61 ]
  %83 = load ptr, ptr %14, align 4
  %84 = load ptr, ptr %13, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = icmp ne ptr %85, null
  %87 = icmp eq ptr %83, %85
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %103

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, ptr %15, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  store ptr null, ptr %14, align 4
  tail call fastcc void @omap_hsmmc_start_dma_transfer(ptr noundef %1) #11
  %98 = load ptr, ptr %13, align 4
  %99 = getelementptr inbounds %struct.mmc_request, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.mmc_request, ptr %98, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  tail call fastcc void @omap_hsmmc_start_command(ptr noundef %1, ptr noundef %100, ptr noundef %102) #11
  br label %142

103:                                              ; preds = %93, %89, %81
  store ptr null, ptr %14, align 4
  %104 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %103
  %109 = and i32 %105, 2
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr i8, ptr %111, i32 272
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11
  %114 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 2
  br i1 %110, label %128, label %115

115:                                              ; preds = %108
  %116 = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 3
  store i32 %113, ptr %116, align 4
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr i8, ptr %117, i32 276
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  %120 = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 2
  store i32 %119, ptr %120, align 4
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr i8, ptr %121, i32 280
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #11, !srcloc !8
  %124 = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 1
  store i32 %123, ptr %124, align 4
  %125 = load ptr, ptr %3, align 4
  %126 = getelementptr i8, ptr %125, i32 284
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #11, !srcloc !8
  br label %128

128:                                              ; preds = %115, %108
  %129 = phi i32 [ %127, %115 ], [ %113, %108 ]
  store i32 %129, ptr %114, align 4
  br label %130

130:                                              ; preds = %128, %103
  %131 = load ptr, ptr %11, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, ptr %12, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133, %130
  %137 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %133
  %141 = load ptr, ptr %13, align 4
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %1, ptr noundef %141) #11
  br label %142

142:                                              ; preds = %140, %136, %97, %78, %74
  %143 = phi i32 [ %75, %78 ], [ %75, %74 ], [ %82, %97 ], [ %82, %136 ], [ %82, %140 ]
  %144 = and i32 %18, 2
  %145 = or i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %193, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %13, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %193, label %150

150:                                              ; preds = %147
  %151 = icmp eq ptr %22, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %150
  %153 = load ptr, ptr %14, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %153, align 4
  %157 = icmp eq i32 %156, 6
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, ptr %12, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  store i32 0, ptr %12, align 4
  br label %193

162:                                              ; preds = %158, %155, %152
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %1, ptr noundef nonnull %148) #11
  br label %193

163:                                              ; preds = %150
  store ptr null, ptr %11, align 4
  %164 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = mul i32 %171, %169
  %173 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 7
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, %172
  store i32 %175, ptr %173, align 4
  %176 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 8
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %190, label %184

179:                                              ; preds = %163
  %180 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 7
  store i32 0, ptr %180, align 4
  %181 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 8
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %188

184:                                              ; preds = %167
  %185 = load ptr, ptr %13, align 4
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %184, %179
  %189 = phi ptr [ %177, %184 ], [ %182, %179 ]
  tail call fastcc void @omap_hsmmc_start_command(ptr noundef %1, ptr noundef nonnull %189, ptr noundef null) #11
  br label %193

190:                                              ; preds = %184, %179, %167
  %191 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 9
  %192 = load ptr, ptr %191, align 4
  tail call fastcc void @omap_hsmmc_request_done(ptr noundef %1, ptr noundef %192) #11
  br label %193

193:                                              ; preds = %190, %188, %162, %161, %147, %142, %17
  %194 = and i32 %18, 256
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %208, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr %16, align 4
  %198 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.mmc_host_ops, ptr %199, i32 0, i32 7
  %201 = load ptr, ptr %200, align 4
  tail call void %201(ptr noundef %197, i32 noundef 0) #11
  %202 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 49
  store i8 1, ptr %202, align 8
  %203 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 47
  %204 = load ptr, ptr %203, align 8
  %205 = icmp eq ptr %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %196
  %207 = tail call i32 @wake_up_process(ptr noundef nonnull %204) #11
  br label %208

208:                                              ; preds = %206, %196, %193
  %209 = load ptr, ptr %3, align 4
  %210 = getelementptr i8, ptr %209, i32 304
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #11, !srcloc !8
  %212 = and i32 %211, 830406963
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %17

214:                                              ; preds = %208, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_reg_get(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @mmc_regulator_get_supply(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %86

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 54, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = tail call ptr @devm_regulator_get_optional(ptr noundef %11, ptr noundef nonnull @.str.26) #11
  store ptr %12, ptr %7, align 4
  %13 = icmp ule ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = icmp eq ptr %12, inttoptr (i32 -19 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i32
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %86

22:                                               ; preds = %16, %10, %6
  %23 = load ptr, ptr %0, align 4
  %24 = tail call ptr @devm_regulator_get_optional(ptr noundef %23, ptr noundef nonnull @.str.27) #11
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 7
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i32
  %29 = icmp eq ptr %24, inttoptr (i32 -19 to ptr)
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.28) #12
  br label %86

36:                                               ; preds = %30, %27, %22
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %36
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 54
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @regulator_is_enabled(ptr noundef %46) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @regulator_enable(ptr noundef %46) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = tail call i32 @regulator_disable(ptr noundef %46) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54, %48, %43
  %58 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 54, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @regulator_is_enabled(ptr noundef %59) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @regulator_enable(ptr noundef %59) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = tail call i32 @regulator_disable(ptr noundef %59) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67, %61, %57
  %71 = load ptr, ptr %25, align 4
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @regulator_is_enabled(ptr noundef %71) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @regulator_enable(ptr noundef %71) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = tail call i32 @regulator_disable(ptr noundef %71) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %76, %67, %64, %54, %51
  %83 = phi ptr [ @.str.29, %54 ], [ @.str.29, %51 ], [ @.str.30, %67 ], [ @.str.30, %64 ], [ @.str.31, %79 ], [ @.str.31, %76 ]
  %84 = phi i32 [ %55, %54 ], [ %52, %51 ], [ %68, %67 ], [ %65, %64 ], [ %80, %79 ], [ %77, %76 ]
  %85 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull %83) #12
  br label %86

86:                                               ; preds = %82, %79, %73, %70, %36, %35, %16, %1
  %87 = phi i32 [ %28, %35 ], [ %4, %1 ], [ %17, %16 ], [ 0, %36 ], [ 0, %70 ], [ 0, %79 ], [ 0, %73 ], [ %84, %82 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_disable_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 12
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 7
  %7 = and i32 %6, 256
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #11, !srcloc !9
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #11, !srcloc !9
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_configure_wake_irq(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %2, i32 noundef %8) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.32) #12
  br label %47

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %0, align 4
  %26 = tail call ptr @devm_pinctrl_get(ptr noundef %25) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %44

30:                                               ; preds = %24
  %31 = tail call ptr @pinctrl_lookup_state(ptr noundef %26, ptr noundef nonnull @.str.33) #11
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.34) #12
  tail call void @devm_pinctrl_put(ptr noundef %26) #11
  br label %44

35:                                               ; preds = %30
  tail call void @devm_pinctrl_put(ptr noundef %26) #11
  br label %36

36:                                               ; preds = %35, %17
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 296
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !8
  %41 = or i32 %40, 16777216
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !9
  br label %50

44:                                               ; preds = %33, %28
  %45 = phi i32 [ -22, %33 ], [ %29, %28 ]
  %46 = load ptr, ptr %0, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %46) #11
  br label %47

47:                                               ; preds = %44, %13
  %48 = phi i32 [ %11, %13 ], [ %45, %44 ]
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.35) #12
  store i32 0, ptr %7, align 4
  br label %50

50:                                               ; preds = %47, %36, %6, %1
  %51 = phi i32 [ %48, %47 ], [ 0, %36 ], [ -19, %6 ], [ -19, %1 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_post_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = select i1 %17, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef 0) #11
  store i32 0, ptr %10, align 4
  br label %30

30:                                               ; preds = %13, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_pre_req(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, ptr %5, align 4
  br label %55

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24, %13
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = select i1 %17, i32 2, i32 1
  %37 = tail call i32 @dma_map_sg_attrs(ptr noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef %36, i32 noundef 0) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %42

39:                                               ; preds = %24
  %40 = load i32, ptr null, align 2147483648
  store i32 0, ptr null, align 2147483648
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %49

42:                                               ; preds = %28
  br i1 %23, label %49, label %43

43:                                               ; preds = %42
  store i32 %37, ptr %22, align 4
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = icmp slt i32 %46, 0
  %48 = select i1 %47, i32 1, i32 %46
  store i32 %48, ptr %5, align 4
  br label %55

49:                                               ; preds = %42, %39
  %50 = phi i32 [ %37, %42 ], [ %40, %39 ]
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  store i32 %50, ptr %51, align 4
  br label %55

52:                                               ; preds = %39, %28
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 13
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %49, %43, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1426, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %14, label %13, !prof !12

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1427, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !12

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1430, i32 noundef 9, ptr noundef null) #11
  br label %24

24:                                               ; preds = %23, %19
  store ptr %1, ptr %20, align 4
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_get_rate(ptr noundef %26) #11
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %4, i32 0, i32 32
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #11, !srcloc !9
  %38 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mmc_command, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %232, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.mmc_command, ptr %39, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 300
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !8
  %50 = load i32, ptr %28, align 4
  %51 = lshr i32 %49, 6
  %52 = and i32 %51, 1023
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 1, i32 %52
  %55 = udiv i32 %50, %54
  %56 = udiv i32 1000000000, %55
  %57 = mul i32 %46, 1000000
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 100000000, i32 %57
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %87, label %61

61:                                               ; preds = %44
  %62 = udiv i32 %59, %56
  %63 = zext i32 %62 to i64
  %64 = and i64 %63, 2147483648
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %66, %61
  %67 = phi i32 [ %69, %66 ], [ 0, %61 ]
  %68 = phi i64 [ %70, %66 ], [ %63, %61 ]
  %69 = add i32 %67, 1
  %70 = shl i64 %68, 1
  %71 = and i64 %68, 1073741824
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %66, label %73

73:                                               ; preds = %66, %61
  %74 = phi i64 [ %63, %61 ], [ %70, %66 ]
  %75 = phi i32 [ 0, %61 ], [ %69, %66 ]
  %76 = and i64 %74, 9223372036854775807
  %77 = icmp ne i64 %76, 0
  %78 = icmp ne i32 %75, 31
  %79 = select i1 %77, i1 %78, i1 false
  %80 = select i1 %79, i32 32, i32 31
  %81 = sub i32 %80, %75
  %82 = icmp ugt i32 %81, 12
  %83 = add i32 %81, -13
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 14) #11
  %85 = shl nuw nsw i32 %84, 16
  %86 = select i1 %82, i32 %85, i32 0
  br label %87

87:                                               ; preds = %73, %44
  %88 = phi i32 [ %86, %73 ], [ 0, %44 ]
  %89 = and i32 %49, -983041
  %90 = or i32 %88, %89
  %91 = load ptr, ptr %35, align 4
  %92 = getelementptr i8, ptr %91, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #11, !srcloc !9
  br label %232

93:                                               ; preds = %24
  %94 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 3, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %232, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %98 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  %99 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i64 40, i1 false) #11
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 288
  store i32 %101, ptr %98, align 4
  %102 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  %106 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = lshr i32 %107, 2
  store i32 %108, ptr %105, align 4
  %109 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  %110 = load i32, ptr %106, align 4
  %111 = lshr i32 %110, 2
  store i32 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 10
  store ptr null, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 11
  store i32 0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, ptr %106, align 4
  br label %132

119:                                              ; preds = %97
  %120 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 12
  %121 = load ptr, ptr %120, align 4
  %122 = load i32, ptr %106, align 4
  br label %126

123:                                              ; preds = %126
  %124 = add nuw i32 %127, 1
  %125 = icmp eq i32 %124, %115
  br i1 %125, label %132, label %126

126:                                              ; preds = %123, %119
  %127 = phi i32 [ 0, %119 ], [ %124, %123 ]
  %128 = getelementptr %struct.scatterlist, ptr %121, i32 %127, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = urem i32 %129, %122
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %123, label %219

132:                                              ; preds = %123, %117
  %133 = phi i32 [ %118, %117 ], [ %122, %123 ]
  %134 = and i32 %133, 3
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %219

136:                                              ; preds = %132
  %137 = load i32, ptr %10, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %140, label %139, !prof !12

139:                                              ; preds = %136
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap_hsmmc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1262, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 256
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 0, i32 1
  %146 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1
  %147 = select i1 %144, ptr %146, ptr %145
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.dma_device, ptr %149, i32 0, i32 44
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %219, label %153

153:                                              ; preds = %140
  %154 = call i32 %151(ptr noundef %148, ptr noundef nonnull %3) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %219

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 13
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %158, %162
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.omap_hsmmc_pre_dma_transfer, i32 noundef %158, i32 noundef %162) #12
  store i32 0, ptr %157, align 4
  br label %166

166:                                              ; preds = %164, %160, %156
  %167 = phi i32 [ 0, %156 ], [ %158, %160 ], [ 0, %164 ]
  %168 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %148, align 4
  %173 = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 15
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 12
  %176 = load ptr, ptr %175, align 4
  %177 = load i32, ptr %114, align 4
  %178 = load i32, ptr %141, align 4
  %179 = and i32 %178, 256
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 2, i32 1
  %182 = call i32 @dma_map_sg_attrs(ptr noundef %174, ptr noundef %176, i32 noundef %177, i32 noundef %181, i32 noundef 0) #11
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %219, label %188

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 1
  %186 = load i32, ptr %185, align 4
  store i32 0, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %219, label %188

188:                                              ; preds = %184, %171
  %189 = phi i32 [ %186, %184 ], [ %182, %171 ]
  %190 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 12
  %192 = load ptr, ptr %191, align 4
  %193 = load i32, ptr %114, align 4
  %194 = load i32, ptr %141, align 4
  %195 = and i32 %194, 256
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, i32 2, i32 1
  %198 = icmp eq ptr %148, null
  br i1 %198, label %209, label %199

199:                                              ; preds = %188
  %200 = load ptr, ptr %148, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.dma_device, ptr %200, i32 0, i32 39
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = call ptr %204(ptr noundef nonnull %148, ptr noundef %192, i32 noundef %193, i32 noundef %197, i32 noundef 3, ptr noundef null) #11
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206, %202, %199, %188
  %210 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %4, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.18) #12
  br label %219

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %207, i32 0, i32 6
  store ptr @omap_hsmmc_dma_callback, ptr %214, align 4
  %215 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %207, i32 0, i32 8
  store ptr %4, ptr %215, align 4
  %216 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %207, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = call i32 %217(ptr noundef nonnull %207) #11
  store i32 1, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %232

219:                                              ; preds = %209, %184, %171, %153, %140, %132, %126
  %220 = phi i32 [ -22, %184 ], [ -22, %171 ], [ -38, %140 ], [ %154, %153 ], [ -22, %132 ], [ -1, %209 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  %221 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %4, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = load ptr, ptr %222, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.17) #12
  %224 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.mmc_command, ptr %225, i32 0, i32 5
  store i32 %220, ptr %226, align 4
  %227 = load ptr, ptr %29, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %231, label %229

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.mmc_data, ptr %227, i32 0, i32 5
  store i32 %220, ptr %230, align 4
  br label %231

231:                                              ; preds = %229, %219
  store ptr null, ptr %20, align 4
  call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #11
  br label %245

232:                                              ; preds = %213, %93, %87, %34
  %233 = load ptr, ptr %1, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  call fastcc void @omap_hsmmc_start_command(ptr noundef %4, ptr noundef nonnull %233, ptr noundef null)
  br label %245

241:                                              ; preds = %235, %232
  call fastcc void @omap_hsmmc_start_dma_transfer(ptr noundef %4)
  %242 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %29, align 4
  call fastcc void @omap_hsmmc_start_command(ptr noundef %4, ptr noundef %243, ptr noundef %244)
  br label %245

245:                                              ; preds = %241, %240, %231
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_set_ios(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 16
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %5, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  switch i8 %5, label %15 [
    i8 0, label %10
    i8 1, label %12
    i8 2, label %14
  ]

10:                                               ; preds = %9
  %11 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %3, i32 noundef 0)
  br label %15

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %3, i32 noundef 1)
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12, %10, %9
  %16 = phi i32 [ 0, %9 ], [ 1, %14 ], [ 0, %12 ], [ 0, %10 ]
  %17 = load i8, ptr %4, align 2
  store i8 %17, ptr %6, align 1
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 28, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = add i8 %27, -7
  %29 = icmp ult i8 %28, 2
  %30 = and i32 %25, -524289
  %31 = select i1 %29, i32 524288, i32 0
  %32 = or i32 %31, %30
  %33 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 28, i32 6
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %59 [
    i8 3, label %35
    i8 2, label %39
    i8 0, label %49
  ]

35:                                               ; preds = %18
  %36 = or i32 %32, 32
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !9
  br label %59

39:                                               ; preds = %18
  %40 = and i32 %32, -33
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !9
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr i8, ptr %43, i32 296
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  %46 = or i32 %45, 2
  %47 = load ptr, ptr %22, align 4
  %48 = getelementptr i8, ptr %47, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !9
  br label %59

49:                                               ; preds = %18
  %50 = and i32 %32, -33
  %51 = load ptr, ptr %22, align 4
  %52 = getelementptr i8, ptr %51, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #11, !srcloc !9
  %53 = load ptr, ptr %22, align 4
  %54 = getelementptr i8, ptr %53, i32 296
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  %56 = and i32 %55, -3
  %57 = load ptr, ptr %22, align 4
  %58 = getelementptr i8, ptr %57, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !9
  br label %59

59:                                               ; preds = %49, %39, %35, %18
  %60 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %61, i32 0, i32 2
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %129, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %22, align 4
  %68 = getelementptr i8, ptr %67, i32 296
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !8
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %129, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 7
  br i1 %75, label %76, label %129

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %78) #11
  tail call void @clk_unprepare(ptr noundef %78) #11
  %79 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %3, i32 noundef 0) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = tail call fastcc i32 @omap_hsmmc_set_power(ptr noundef %3, i32 noundef 1) #11
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %79, %76 ], [ %82, %81 ]
  %85 = load ptr, ptr %77, align 4
  %86 = tail call i32 @clk_prepare(ptr noundef %85) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = tail call i32 @clk_enable(ptr noundef %85) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void @clk_unprepare(ptr noundef %85) #11
  br label %92

92:                                               ; preds = %91, %88, %83
  %93 = icmp eq i32 %84, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %92
  %95 = load ptr, ptr %22, align 4
  %96 = getelementptr i8, ptr %95, i32 296
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !8
  %98 = and i32 %97, -3585
  %99 = load ptr, ptr %22, align 4
  %100 = getelementptr i8, ptr %99, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #11, !srcloc !9
  %101 = load ptr, ptr %22, align 4
  %102 = getelementptr i8, ptr %101, i32 296
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #11, !srcloc !8
  %104 = or i32 %103, 2560
  %105 = load ptr, ptr %22, align 4
  %106 = getelementptr i8, ptr %105, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #11, !srcloc !9
  %107 = load ptr, ptr %22, align 4
  %108 = getelementptr i8, ptr %107, i32 296
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !8
  %110 = or i32 %109, 256
  %111 = load ptr, ptr %22, align 4
  %112 = getelementptr i8, ptr %111, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #11, !srcloc !9
  %113 = load i32, ptr @loops_per_jiffy, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %122, %94
  %116 = phi i32 [ %123, %122 ], [ 0, %94 ]
  %117 = load ptr, ptr %22, align 4
  %118 = getelementptr i8, ptr %117, i32 296
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  %120 = and i32 %119, 256
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %123 = add nuw i32 %116, 1
  %124 = load i32, ptr @loops_per_jiffy, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %115, label %129

126:                                              ; preds = %92
  %127 = load ptr, ptr %20, align 4
  %128 = load ptr, ptr %127, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.24) #12
  br label %129

129:                                              ; preds = %126, %122, %115, %94, %72, %66, %59
  tail call fastcc void @omap_hsmmc_set_clock(ptr noundef %3)
  %130 = icmp eq i32 %19, 0
  br i1 %130, label %169, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 2
  %133 = load i32, ptr %132, align 4
  tail call void @disable_irq(i32 noundef %133) #11
  %134 = load ptr, ptr %22, align 4
  %135 = getelementptr i8, ptr %134, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 830406707) #11, !srcloc !9
  %136 = load ptr, ptr %22, align 4
  %137 = getelementptr i8, ptr %136, i32 44
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !8
  %139 = or i32 %138, 2
  %140 = load ptr, ptr %22, align 4
  %141 = getelementptr i8, ptr %140, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #11, !srcloc !9
  %142 = load ptr, ptr %22, align 4
  %143 = getelementptr i8, ptr %142, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 0) #11, !srcloc !9
  %144 = load volatile i32, ptr @jiffies, align 64
  %145 = sub i32 -2, %144
  br label %146

146:                                              ; preds = %150, %131
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = add i32 %145, %147
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load ptr, ptr %22, align 4
  %152 = getelementptr i8, ptr %151, i32 304
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #11, !srcloc !8
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %146, label %156

156:                                              ; preds = %150, %146
  %157 = load ptr, ptr %22, align 4
  %158 = getelementptr i8, ptr %157, i32 44
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #11, !srcloc !8
  %160 = and i32 %159, -3
  %161 = load ptr, ptr %22, align 4
  %162 = getelementptr i8, ptr %161, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #11, !srcloc !9
  %163 = load ptr, ptr %22, align 4
  %164 = getelementptr i8, ptr %163, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 -1) #11, !srcloc !9
  %165 = load ptr, ptr %22, align 4
  %166 = getelementptr i8, ptr %165, i32 304
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #11, !srcloc !8
  %168 = load i32, ptr %132, align 4
  tail call void @enable_irq(i32 noundef %168) #11
  br label %169

169:                                              ; preds = %156, %129
  %170 = load ptr, ptr %20, align 4
  %171 = load ptr, ptr %22, align 4
  %172 = getelementptr i8, ptr %171, i32 44
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #11, !srcloc !8
  %174 = getelementptr inbounds %struct.mmc_host, ptr %170, i32 0, i32 28, i32 3
  %175 = load i8, ptr %174, align 4
  %176 = icmp eq i8 %175, 1
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = or i32 %173, 1
  %179 = load ptr, ptr %22, align 4
  %180 = getelementptr i8, ptr %179, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #11, !srcloc !9
  br label %185

181:                                              ; preds = %169
  %182 = and i32 %173, -2
  %183 = load ptr, ptr %22, align 4
  %184 = getelementptr i8, ptr %183, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #11, !srcloc !9
  br label %185

185:                                              ; preds = %181, %177
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 312
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = icmp ne i32 %1, 0
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %15, label %19

15:                                               ; preds = %2
  %16 = or i32 %14, 2
  store i32 %16, ptr %13, align 4
  %17 = or i32 %11, 256
  %18 = or i32 %8, 67584
  br label %23

19:                                               ; preds = %2
  %20 = and i32 %14, -3
  store i32 %20, ptr %13, align 4
  %21 = and i32 %11, -257
  %22 = and i32 %8, -67585
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %17, %15 ], [ %21, %19 ]
  %25 = phi i32 [ %18, %15 ], [ %22, %19 ]
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !9
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #11, !srcloc !9
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = and i1 %12, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i8, ptr %35, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %24) #11, !srcloc !9
  br label %37

37:                                               ; preds = %34, %23
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr i8, ptr %38, i32 308
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_start_command(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 3
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 830406707, i32 830406659
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 38
  %11 = and i32 %8, 829358131
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 12
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #11, !srcloc !9
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %12) #11, !srcloc !9
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 33
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 7
  %23 = and i32 %22, 256
  %24 = or i32 %23, %12
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr i8, ptr %25, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #11
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 28
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = and i32 %29, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = and i32 %29, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 1, ptr %27, align 4
  br label %39

39:                                               ; preds = %38, %35, %32, %3
  %40 = phi i32 [ 196608, %38 ], [ 0, %3 ], [ 65536, %32 ], [ 131072, %35 ]
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_request, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %1
  %46 = select i1 %45, i32 12582912, i32 0
  %47 = load i32, ptr %1, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %48, %40
  %50 = or i32 %49, %46
  %51 = load i32, ptr %20, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %39
  switch i32 %47, label %64 [
    i32 25, label %55
    i32 18, label %55
  ]

55:                                               ; preds = %54, %54
  %56 = load ptr, ptr %42, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = or i32 %50, 8
  %60 = getelementptr inbounds %struct.mmc_command, ptr %56, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %15, align 4
  %63 = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #11, !srcloc !9
  br label %64

64:                                               ; preds = %58, %55, %54, %39
  %65 = phi i32 [ %59, %58 ], [ %50, %55 ], [ %50, %54 ], [ %50, %39 ]
  %66 = icmp eq ptr %2, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = or i32 %65, 2097202
  br label %77

74:                                               ; preds = %67
  %75 = and i32 %65, -2097203
  %76 = or i32 %75, 2097186
  br label %77

77:                                               ; preds = %74, %72, %64
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ], [ %65, %64 ]
  %79 = load i32, ptr %5, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = or i32 %78, %81
  %83 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 31
  store i32 1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %15, align 4
  %87 = getelementptr i8, ptr %86, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #11, !srcloc !9
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr i8, ptr %88, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %82) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_start_dma_transfer(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 16
  %13 = or i32 %12, %9
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #11, !srcloc !9
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 300
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  %24 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %23, 6
  %27 = and i32 %26, 1023
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 1, i32 %27
  %30 = udiv i32 %25, %29
  %31 = udiv i32 1000000000, %30
  %32 = udiv i32 %18, %31
  %33 = zext i32 %32 to i64
  %34 = zext i32 %20 to i64
  %35 = add nuw nsw i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %7
  %38 = and i64 %35, 2147483648
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %40, %37
  %41 = phi i32 [ %43, %40 ], [ 0, %37 ]
  %42 = phi i64 [ %44, %40 ], [ %35, %37 ]
  %43 = add i32 %41, 1
  %44 = shl i64 %42, 1
  %45 = and i64 %42, 1073741824
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %40, label %47

47:                                               ; preds = %40, %37
  %48 = phi i64 [ %35, %37 ], [ %44, %40 ]
  %49 = phi i32 [ 0, %37 ], [ %43, %40 ]
  %50 = and i64 %48, 9223372036854775807
  %51 = icmp ne i64 %50, 0
  %52 = icmp ne i32 %49, 31
  %53 = select i1 %51, i1 %52, i1 false
  %54 = select i1 %53, i32 32, i32 31
  %55 = sub i32 %54, %49
  %56 = icmp ugt i32 %55, 12
  %57 = add i32 %55, -13
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 14) #11
  %59 = shl nuw nsw i32 %58, 16
  %60 = select i1 %56, i32 %59, i32 0
  br label %61

61:                                               ; preds = %47, %7
  %62 = phi i32 [ %60, %47 ], [ 0, %7 ]
  %63 = and i32 %23, -983041
  %64 = or i32 %62, %63
  %65 = load ptr, ptr %14, align 4
  %66 = getelementptr i8, ptr %65, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !9
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.mmc_data, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 256
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 26
  %73 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 27
  %74 = select i1 %71, ptr %73, ptr %72
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 50
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %75) #11
  br label %79

79:                                               ; preds = %61, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_hsmmc_dma_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %7 = load i16, ptr %2, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %44

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 27
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 26
  %24 = select i1 %21, ptr %22, ptr %23
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = select i1 %21, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef %33, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %17, %9
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 31
  %36 = load i32, ptr %35, align 4
  store i32 -1, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %37 = load i16, ptr %2, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr %10, align 4
  store ptr null, ptr %10, align 4
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void @mmc_request_done(ptr noundef %43, ptr noundef %41) #11
  br label %44

44:                                               ; preds = %40, %34, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_hsmmc_set_power(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 54
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %116, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 8
  %14 = load i8, ptr %13, align 4, !range !21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @regulator_disable(ptr noundef %10) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 0, ptr %13, align 4
  br label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.20) #12
  br label %116

22:                                               ; preds = %19, %12, %8
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %4, ptr noundef %25, i16 noundef zeroext %29) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %116

32:                                               ; preds = %27, %24
  %33 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 54, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 7
  %38 = load i8, ptr %37, align 4, !range !21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = tail call i32 @regulator_enable(ptr noundef %34) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %4, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.21) #12
  %45 = load ptr, ptr %5, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %116, label %48

47:                                               ; preds = %40
  store i8 1, ptr %37, align 4
  br label %50

48:                                               ; preds = %43
  %49 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %4, ptr noundef %45, i16 noundef zeroext 0) #11
  br label %116

50:                                               ; preds = %47, %36, %32
  %51 = load ptr, ptr %9, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %116, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 8
  %55 = load i8, ptr %54, align 4, !range !21
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %53
  %58 = tail call i32 @regulator_enable(ptr noundef %51) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  store i8 1, ptr %54, align 4
  br label %116

61:                                               ; preds = %22
  %62 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 54, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 7
  %67 = load i8, ptr %66, align 4, !range !21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @regulator_disable(ptr noundef %63) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  store i8 0, ptr %66, align 4
  br label %73

73:                                               ; preds = %72, %65, %61
  %74 = load ptr, ptr %5, align 4
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %116, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %4, ptr noundef %74, i16 noundef zeroext 0) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %116, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %62, align 4
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %116, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @regulator_enable(ptr noundef %80) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %116, label %85

85:                                               ; preds = %82, %69
  %86 = phi ptr [ @.str.22, %69 ], [ @.str.23, %82 ]
  %87 = phi i32 [ %70, %69 ], [ %77, %82 ]
  %88 = load ptr, ptr %4, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull %86) #12
  br label %116

89:                                               ; preds = %57
  %90 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.19) #12
  %91 = load ptr, ptr %33, align 4
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 7
  %95 = load i8, ptr %94, align 4, !range !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = tail call i32 @regulator_disable(ptr noundef %91) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  store i8 0, ptr %94, align 4
  br label %101

101:                                              ; preds = %100, %93, %89
  %102 = load ptr, ptr %5, align 4
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %116, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %4, ptr noundef %102, i16 noundef zeroext 0) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %33, align 4
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @regulator_enable(ptr noundef %108) #11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %97
  %114 = phi ptr [ @.str.22, %97 ], [ @.str.23, %110 ]
  %115 = load ptr, ptr %4, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull %114) #12
  br label %116

116:                                              ; preds = %113, %110, %107, %104, %101, %85, %82, %79, %76, %73, %60, %53, %50, %48, %43, %27, %20, %2
  %117 = phi i32 [ 0, %2 ], [ %17, %20 ], [ %30, %27 ], [ %41, %48 ], [ %41, %43 ], [ 0, %76 ], [ 0, %73 ], [ %58, %101 ], [ %58, %104 ], [ %58, %107 ], [ %58, %110 ], [ %58, %113 ], [ 0, %50 ], [ 0, %53 ], [ 0, %60 ], [ %87, %85 ], [ %77, %79 ], [ %77, %82 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_set_clock(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  %5 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 300
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = and i32 %8, -5
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 300
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 300
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  %18 = and i32 %17, -1048513
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #11
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %24, -1
  %27 = add i32 %26, %25
  %28 = udiv i32 %27, %25
  %29 = trunc i32 %28 to i16
  %30 = and i32 %28, 64512
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i16 %29, i16 1023
  br label %33

33:                                               ; preds = %21, %1
  %34 = phi i16 [ %32, %21 ], [ 0, %1 ]
  %35 = zext i16 %34 to i32
  %36 = shl nuw nsw i32 %35, 6
  %37 = or i32 %18, %36
  %38 = or i32 %37, 917504
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !9
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 300
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  %44 = or i32 %43, 1
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !9
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 300
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !8
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %33
  %54 = sub i32 -2, %47
  br label %55

55:                                               ; preds = %59, %53
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = add i32 %54, %56
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !23
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr i8, ptr %60, i32 300
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %55, label %65

65:                                               ; preds = %59, %55, %33
  %66 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %67, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 7
  %74 = load i8, ptr %73, align 4
  %75 = add i8 %74, -7
  %76 = icmp ult i8 %75, 2
  br i1 %76, label %102, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 320
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !8
  %81 = and i32 %80, 2097152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr i8, ptr %84, i32 296
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !8
  %87 = icmp eq i16 %34, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @clk_get_rate(ptr noundef %90) #11
  %92 = udiv i32 %91, %35
  %93 = icmp ugt i32 %92, 25000000
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = or i32 %86, 4
  br label %98

96:                                               ; preds = %88, %83
  %97 = and i32 %86, -5
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #11, !srcloc !9
  br label %102

102:                                              ; preds = %98, %77, %72, %65
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i8, ptr %103, i32 300
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #11, !srcloc !8
  %106 = or i32 %105, 4
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #11, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hsmmc_command_incomplete(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = or i32 %9, 33554432
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !9
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 300
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %23 = and i32 %22, 33554432
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %25, %19
  %26 = phi i32 [ %27, %25 ], [ 0, %19 ]
  %27 = add nuw nsw i32 %26, 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #11
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 300
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !8
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  %34 = icmp ult i32 %26, 19999
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %25, label %36

36:                                               ; preds = %25, %19, %5
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i8, ptr %37, i32 300
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !8
  %40 = and i32 %39, 33554432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %42, %36
  %43 = phi i32 [ %44, %42 ], [ 0, %36 ]
  %44 = add nuw nsw i32 %43, 1
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #11
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr i8, ptr %46, i32 300
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  %49 = and i32 %48, 33554432
  %50 = icmp ne i32 %49, 0
  %51 = icmp ult i32 %43, 19999
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %42, label %53

53:                                               ; preds = %42, %36
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 300
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !8
  %57 = and i32 %56, 33554432
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.omap_hsmmc_reset_controller_fsm) #12
  br label %63

63:                                               ; preds = %59, %53
  %64 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mmc_command, ptr %65, i32 0, i32 5
  store i32 %1, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %63, %3
  %70 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %179, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 300
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !8
  %78 = or i32 %77, 67108864
  %79 = load ptr, ptr %74, align 4
  %80 = getelementptr i8, ptr %79, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !9
  %81 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 35
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %82, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %73
  %88 = load ptr, ptr %74, align 4
  %89 = getelementptr i8, ptr %88, i32 300
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #11, !srcloc !8
  %91 = and i32 %90, 67108864
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %93, %87
  %94 = phi i32 [ %95, %93 ], [ 0, %87 ]
  %95 = add nuw nsw i32 %94, 1
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #11
  %97 = load ptr, ptr %74, align 4
  %98 = getelementptr i8, ptr %97, i32 300
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  %100 = and i32 %99, 67108864
  %101 = icmp eq i32 %100, 0
  %102 = icmp ult i32 %94, 19999
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %93, label %104

104:                                              ; preds = %93, %87, %73
  %105 = load ptr, ptr %74, align 4
  %106 = getelementptr i8, ptr %105, i32 300
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !8
  %108 = and i32 %107, 67108864
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %110, %104
  %111 = phi i32 [ %112, %110 ], [ 0, %104 ]
  %112 = add nuw nsw i32 %111, 1
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748) #11
  %114 = load ptr, ptr %74, align 4
  %115 = getelementptr i8, ptr %114, i32 300
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #11, !srcloc !8
  %117 = and i32 %116, 67108864
  %118 = icmp ne i32 %117, 0
  %119 = icmp ult i32 %111, 19999
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %110, label %121

121:                                              ; preds = %110, %104
  %122 = load ptr, ptr %74, align 4
  %123 = getelementptr i8, ptr %122, i32 300
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #11, !srcloc !8
  %125 = and i32 %124, 67108864
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.omap_hsmmc_reset_controller_fsm) #12
  br label %131

131:                                              ; preds = %127, %121
  %132 = load ptr, ptr %70, align 4
  %133 = getelementptr inbounds %struct.mmc_data, ptr %132, i32 0, i32 5
  store i32 %1, ptr %133, align 4
  %134 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 12
  %135 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %134) #11
  %136 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 25
  %137 = load i32, ptr %136, align 4
  store i32 -1, ptr %136, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %134, i32 noundef %135) #11
  %138 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 24
  %139 = load i32, ptr %138, align 4
  %140 = icmp ne i32 %139, 0
  %141 = icmp ne i32 %137, -1
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %143, label %178

143:                                              ; preds = %131
  %144 = load ptr, ptr %70, align 4
  %145 = getelementptr inbounds %struct.mmc_data, ptr %144, i32 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 256
  %148 = icmp eq i32 %147, 0
  %149 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 26
  %150 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 27
  %151 = select i1 %148, ptr %150, ptr %149
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 47
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %143
  %158 = tail call i32 %155(ptr noundef %152) #11
  %159 = load ptr, ptr %152, align 4
  %160 = load ptr, ptr %70, align 4
  %161 = getelementptr inbounds %struct.mmc_data, ptr %160, i32 0, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 256
  br label %164

164:                                              ; preds = %157, %143
  %165 = phi i32 [ %147, %143 ], [ %163, %157 ]
  %166 = phi ptr [ %144, %143 ], [ %160, %157 ]
  %167 = phi ptr [ %153, %143 ], [ %159, %157 ]
  %168 = getelementptr inbounds %struct.dma_device, ptr %167, i32 0, i32 15
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.mmc_data, ptr %166, i32 0, i32 12
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.mmc_data, ptr %166, i32 0, i32 10
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %165, 0
  %175 = select i1 %174, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %169, ptr noundef %171, i32 noundef %173, i32 noundef %175, i32 noundef 0) #11
  %176 = load ptr, ptr %70, align 4
  %177 = getelementptr inbounds %struct.mmc_data, ptr %176, i32 0, i32 13
  store i32 0, ptr %177, align 4
  br label %178

178:                                              ; preds = %164, %131
  store ptr null, ptr %70, align 4
  br label %189

179:                                              ; preds = %69
  %180 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.mmc_request, ptr %181, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.mmc_command, ptr %185, i32 0, i32 5
  store i32 %1, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %183, %179, %178
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hsmmc_request_done(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 31
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 33
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 7
  %12 = and i32 %11, 256
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #11, !srcloc !9
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %12) #11, !srcloc !9
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -1) #11, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #11
  %20 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp ne i32 %7, -1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %2
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 2
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @mmc_request_done(ptr noundef %32, ptr noundef %1) #11
  br label %33

33:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_show_slot_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 1028
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_regs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mmc_regs_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_regs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %6) #11
  %7 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull %11) #11
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %20) #11
  br label %21

21:                                               ; preds = %15, %2
  %22 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 68
  %23 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 10, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %24) #11
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #11
  %27 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %30) #11
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr i8, ptr %31, i32 292
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %33) #11
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 296
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %36) #11
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 300
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %39) #11
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 308
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %42) #11
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr i8, ptr %43, i32 312
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %45) #11
  %46 = load ptr, ptr %27, align 4
  %47 = getelementptr i8, ptr %46, i32 320
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %48) #11
  %49 = load ptr, ptr %22, align 4
  %50 = tail call i64 @ktime_get_mono_fast_ns() #11
  %51 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 11, i32 22
  store volatile i64 %50, ptr %51, align 8
  %52 = load ptr, ptr %22, align 4
  %53 = tail call i32 @__pm_runtime_suspend(ptr noundef %52, i32 noundef 13) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 51
  %11 = load i32, ptr %10, align 32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !9
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #11, !srcloc !9
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #11, !srcloc !9
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 296
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = and i32 %24, -257
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !9
  br label %28

28:                                               ; preds = %14, %5
  %29 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #11
  tail call void @clk_unprepare(ptr noundef %30) #11
  %31 = load ptr, ptr %3, align 4
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #11
  br label %33

33:                                               ; preds = %28, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #11
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = tail call i32 @clk_enable(ptr noundef %9) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %16

16:                                               ; preds = %15, %12, %5
  %17 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 51
  %20 = load i32, ptr %19, align 32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 35
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %25, i32 0, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 2560, i32 3072
  %31 = select i1 %29, i32 67108864, i32 100663296
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 296
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  %36 = and i32 %35, -3585
  %37 = or i32 %36, %30
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr i8, ptr %38, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !9
  %40 = load ptr, ptr %32, align 4
  %41 = getelementptr i8, ptr %40, i32 320
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  %43 = or i32 %42, %31
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr i8, ptr %44, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !9
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr i8, ptr %46, i32 296
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  %49 = or i32 %48, 256
  %50 = load ptr, ptr %32, align 4
  %51 = getelementptr i8, ptr %50, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #11, !srcloc !9
  %52 = load i32, ptr @loops_per_jiffy, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %61, %23
  %55 = phi i32 [ %62, %61 ], [ 0, %23 ]
  %56 = load ptr, ptr %32, align 4
  %57 = getelementptr i8, ptr %56, i32 296
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !8
  %59 = and i32 %58, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %62 = add nuw i32 %55, 1
  %63 = load i32, ptr @loops_per_jiffy, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %54, label %65

65:                                               ; preds = %61, %54, %23, %16
  %66 = load ptr, ptr %3, align 4
  %67 = tail call i64 @ktime_get_mono_fast_ns() #11
  %68 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 11, i32 22
  store volatile i64 %67, ptr %68, align 8
  %69 = load ptr, ptr %3, align 4
  %70 = tail call i32 @__pm_runtime_suspend(ptr noundef %69, i32 noundef 13) #11
  br label %71

71:                                               ; preds = %65, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 18
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 296
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 19
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 300
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 20
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 320
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  %20 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 21
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 12
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #11
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 16
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 33
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #11, !srcloc !9
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #11, !srcloc !9
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 292
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #11, !srcloc !9
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 256) #11, !srcloc !9
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 256) #11, !srcloc !9
  %51 = tail call i64 @ktime_get_mono_fast_ns() #11
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %51, ptr %52, align 8
  br label %57

53:                                               ; preds = %34
  %54 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #11
  br label %57

55:                                               ; preds = %29, %1
  %56 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #11
  br label %57

57:                                               ; preds = %55, %53, %44
  %58 = phi i32 [ 0, %53 ], [ -16, %44 ], [ 0, %55 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #11
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_hsmmc_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 296
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 300
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 21
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 320
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %158, label %34

34:                                               ; preds = %27, %20, %13, %1
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 29
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 35
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.omap_hsmmc_platform_data, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 16
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = shl nuw i32 1, %51
  %53 = icmp slt i32 %52, 2049
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %48, %34
  %56 = phi i32 [ 3072, %54 ], [ 2560, %48 ], [ 2560, %34 ]
  %57 = phi i32 [ 100663296, %54 ], [ 100663296, %48 ], [ 67108864, %34 ]
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 16
  %60 = load i32, ptr %59, align 8
  %61 = shl i32 %60, 21
  %62 = and i32 %61, 16777216
  %63 = or i32 %62, %56
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr i8, ptr %64, i32 296
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  %67 = or i32 %63, %66
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i8, ptr %68, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #11, !srcloc !9
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr i8, ptr %70, i32 320
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !8
  %73 = or i32 %72, %57
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #11, !srcloc !9
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr i8, ptr %76, i32 296
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  %79 = or i32 %78, 256
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr i8, ptr %80, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #11, !srcloc !9
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = sub i32 -2, %82
  br label %84

84:                                               ; preds = %90, %55
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr i8, ptr %85, i32 296
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !8
  %88 = and i32 %87, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load volatile i32, ptr @jiffies, align 64
  %92 = add i32 %83, %91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %84, label %94

94:                                               ; preds = %90, %84
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr i8, ptr %95, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #11, !srcloc !9
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr i8, ptr %97, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #11, !srcloc !9
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr i8, ptr %99, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 -1) #11, !srcloc !9
  %101 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 16
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %158, label %104

104:                                              ; preds = %94
  %105 = load ptr, ptr %4, align 4
  %106 = load ptr, ptr %8, align 4
  %107 = getelementptr i8, ptr %106, i32 44
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !8
  %109 = getelementptr inbounds %struct.mmc_host, ptr %105, i32 0, i32 28, i32 7
  %110 = load i8, ptr %109, align 4
  %111 = add i8 %110, -7
  %112 = icmp ult i8 %111, 2
  %113 = and i32 %108, -524289
  %114 = select i1 %112, i32 524288, i32 0
  %115 = or i32 %114, %113
  %116 = getelementptr inbounds %struct.mmc_host, ptr %105, i32 0, i32 28, i32 6
  %117 = load i8, ptr %116, align 1
  switch i8 %117, label %142 [
    i8 3, label %118
    i8 2, label %122
    i8 0, label %132
  ]

118:                                              ; preds = %104
  %119 = or i32 %115, 32
  %120 = load ptr, ptr %8, align 4
  %121 = getelementptr i8, ptr %120, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #11, !srcloc !9
  br label %142

122:                                              ; preds = %104
  %123 = and i32 %115, -33
  %124 = load ptr, ptr %8, align 4
  %125 = getelementptr i8, ptr %124, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #11, !srcloc !9
  %126 = load ptr, ptr %8, align 4
  %127 = getelementptr i8, ptr %126, i32 296
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !8
  %129 = or i32 %128, 2
  %130 = load ptr, ptr %8, align 4
  %131 = getelementptr i8, ptr %130, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #11, !srcloc !9
  br label %142

132:                                              ; preds = %104
  %133 = and i32 %115, -33
  %134 = load ptr, ptr %8, align 4
  %135 = getelementptr i8, ptr %134, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #11, !srcloc !9
  %136 = load ptr, ptr %8, align 4
  %137 = getelementptr i8, ptr %136, i32 296
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #11, !srcloc !8
  %139 = and i32 %138, -3
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr i8, ptr %140, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #11, !srcloc !9
  br label %142

142:                                              ; preds = %132, %122, %118, %104
  tail call fastcc void @omap_hsmmc_set_clock(ptr noundef %3) #11
  %143 = load ptr, ptr %4, align 4
  %144 = load ptr, ptr %8, align 4
  %145 = getelementptr i8, ptr %144, i32 44
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #11, !srcloc !8
  %147 = getelementptr inbounds %struct.mmc_host, ptr %143, i32 0, i32 28, i32 3
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %148, 1
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = or i32 %146, 1
  %152 = load ptr, ptr %8, align 4
  %153 = getelementptr i8, ptr %152, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #11, !srcloc !9
  br label %158

154:                                              ; preds = %142
  %155 = and i32 %146, -2
  %156 = load ptr, ptr %8, align 4
  %157 = getelementptr i8, ptr %156, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #11, !srcloc !9
  br label %158

158:                                              ; preds = %154, %150, %94, %27
  %159 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 12
  %160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %159) #11
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr inbounds %struct.mmc_host, ptr %161, i32 0, i32 16
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.omap_hsmmc_host, ptr %3, i32 0, i32 33
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %3, align 4
  %173 = tail call i32 @pinctrl_select_default_state(ptr noundef %172) #11
  %174 = load ptr, ptr %8, align 4
  %175 = getelementptr i8, ptr %174, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 -1) #11, !srcloc !9
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr i8, ptr %176, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 256) #11, !srcloc !9
  %178 = load ptr, ptr %8, align 4
  %179 = getelementptr i8, ptr %178, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 256) #11, !srcloc !9
  br label %183

180:                                              ; preds = %166, %158
  %181 = load ptr, ptr %3, align 4
  %182 = tail call i32 @pinctrl_select_default_state(ptr noundef %181) #11
  br label %183

183:                                              ; preds = %180, %171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %159, i32 noundef %160) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 5089066}
!9 = !{i64 5088648}
!10 = !{i64 2154141746}
!11 = !{i64 2154141588}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2154152478, i64 2154152973, i64 2154152515, i64 2154152571, i64 2154152605, i64 2154152629, i64 2154152670, i64 2154152691, i64 2154152719, i64 2154152753}
!14 = !{i64 2154153539, i64 2154154034, i64 2154153576, i64 2154153632, i64 2154153666, i64 2154153690, i64 2154153731, i64 2154153752, i64 2154153780, i64 2154153814}
!15 = !{i64 2154144411, i64 2154144906, i64 2154144448, i64 2154144504, i64 2154144538, i64 2154144562, i64 2154144603, i64 2154144624, i64 2154144652, i64 2154144686}
!16 = !{i64 2148978407}
!17 = !{i64 2148974231}
!18 = !{i64 2148974306, i64 2148974333, i64 2148974380, i64 2148974402, i64 2148974430, i64 2148974450}
!19 = !{i64 499805}
!20 = !{i64 2149002551}
!21 = !{i8 0, i8 2}
!22 = !{i64 2154123837}
!23 = !{i64 2154123679}
