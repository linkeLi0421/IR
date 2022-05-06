; ModuleID = '/llk/IR/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.gpmi_devdata = type { i32, i32, i32, ptr, i32 }
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
%struct.gpmi_nand_data = type { ptr, ptr, ptr, %struct.resources, %struct.gpmi_nfc_hardware_timing, %struct.bch_geometry, %struct.completion, i8, %struct.boot_rom_geometry, %struct.nand_controller, %struct.nand_chip, [8 x %struct.gpmi_transfer], i32, i8, i32, i32, ptr, ptr, i32, ptr, [8 x ptr], %struct.completion }
%struct.resources = type { ptr, ptr, i32, i32, [5 x ptr] }
%struct.gpmi_nfc_hardware_timing = type { i8, i32, i32, i32, i32 }
%struct.bch_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.boot_rom_geometry = type { i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.74, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.74 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpmi_transfer = type { [8 x i8], %struct.scatterlist, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.69, i32 }
%union.anon.69 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.70, i8 }
%union.anon.70 = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_gpmi_nand__241_2634_gpmi_nand_driver_init6 = internal global ptr @gpmi_nand_driver_init, section ".initcall6.init", align 4
@gpmi_nand_driver = internal global %struct.platform_driver { ptr @gpmi_nand_probe, ptr @gpmi_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpmi_nand_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpmi_nand_driver_exit = internal global ptr @gpmi_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [47 x i8] c"gpmi_nand.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [61 x i8] c"gpmi_nand.description=i.MX GPMI NAND Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [56 x i8] c"gpmi_nand.file=drivers/mtd/nand/raw/gpmi-nand/gpmi-nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"gpmi_nand.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"gpmi-nand\00", align 1
@gpmi_nand_id_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx23 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx28 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx6sx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx7d }, %struct.of_device_id zeroinitializer], align 4
@gpmi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmi_runtime_suspend, ptr @gpmi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"driver registered.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bch\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"error requesting BCH IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"DMA channel request failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"\013%s(%p): module reset timeout\0A\00", align 1
@__func__.gpmi_reset_block = private unnamed_addr constant [17 x i8] c"gpmi_reset_block\00", align 1
@gpmi_bbt_descr = internal global %struct.nand_bbt_descr { i32 0, [8 x i32] zeroinitializer, i32 0, i32 0, [8 x i8] zeroinitializer, i32 1, i32 0, i32 0, ptr @scan_ff_pattern }, align 4
@gpmi_nand_controller_ops = internal constant %struct.nand_controller_ops { ptr @gpmi_nand_attach_chip, ptr null, ptr @gpmi_nfc_exec_op, ptr @gpmi_setup_interface }, align 4
@scan_ff_pattern = internal global [1 x i8] c"\FF", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"fsl,no-blockmark-swap\00", align 1
@gpmi_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { ptr @gpmi_ooblayout_ecc, ptr @gpmi_ooblayout_free }, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Error setting BCH geometry : %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"fsl,use-minimum-ecc\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"unsupported nand chip. ecc bits : %d, ecc size : %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"unsupported nand chip. ecc size: %d, oob size : %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [117 x i8] c"ecc strength: %d cannot be supported by the controller (%d)\0Atry to use minimum ecc strength that NAND chip required\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Multiple data instructions not supported\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"DMA timeout, last DMA\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"BCH timeout, last DMA\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"cannot set clock rate to %lu Hz: %d\0A\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Show GPMI registers :\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"offset 0x%.3x : 0x%.8x\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Show BCH registers :\0A\00", align 1
@.str.27 = private unnamed_addr constant [324 x i8] c"BCH Geometry :\0AGF length              : %u\0AECC Strength           : %u\0APage Size in Bytes     : %u\0AMetadata Size in Bytes : %u\0AECC Chunk Size in Bytes: %u\0AECC Chunk Count        : %u\0APayload Size in Bytes  : %u\0AAuxiliary Size in Bytes: %u\0AAuxiliary Status Offset: %u\0ABlock Mark Byte Offset : %u\0ABlock Mark Bit Offset  : %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Failed to mark block bad with ret %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"STMP\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"[%s] Erase failed.\0A\00", align 1
@__func__.mx23_write_transcription_stamp = private unnamed_addr constant [31 x i8] c"mx23_write_transcription_stamp\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"[%s] Write failed.\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c\00", align 1
@gpmi_devdata_imx23 = internal constant %struct.gpmi_devdata { i32 0, i32 20, i32 16000, ptr @gpmi_clks_for_mx2x, i32 1 }, align 4
@gpmi_devdata_imx28 = internal constant %struct.gpmi_devdata { i32 1, i32 20, i32 16000, ptr @gpmi_clks_for_mx2x, i32 1 }, align 4
@gpmi_devdata_imx6q = internal constant %struct.gpmi_devdata { i32 2, i32 40, i32 12000, ptr @gpmi_clks_for_mx6, i32 5 }, align 4
@gpmi_devdata_imx6sx = internal constant %struct.gpmi_devdata { i32 3, i32 62, i32 12000, ptr @gpmi_clks_for_mx6, i32 5 }, align 4
@gpmi_devdata_imx7d = internal constant %struct.gpmi_devdata { i32 4, i32 62, i32 12000, ptr @gpmi_clks_for_mx7d, i32 2 }, align 4
@gpmi_clks_for_mx2x = internal constant [1 x ptr] [ptr @.str.33], align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"gpmi_io\00", align 1
@gpmi_clks_for_mx6 = internal constant [5 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"gpmi_apb\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"gpmi_bch\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"gpmi_bch_apb\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"per1_bch\00", align 1
@gpmi_clks_for_mx7d = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.36], align 4
@.str.38 = private unnamed_addr constant [25 x i8] c"Error setting GPMI : %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Error setting BCH : %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_gpmi_nand_driver_exit, ptr @__initcall__kmod_gpmi_nand__241_2634_gpmi_nand_driver_init6, ptr @gpmi_nand_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpmi_nand_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpmi_nand_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpmi_nand_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpmi_nand_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_nand_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1928, i32 noundef 3520) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %250, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #12
  store ptr %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 2
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str) #12
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %64, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 3
  store ptr %11, ptr %14, align 4
  %15 = load ptr, ptr %9, align 8
  %16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %15, ptr noundef nonnull @.str.2) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 3, i32 1
  store ptr %16, ptr %19, align 4
  %20 = load ptr, ptr %9, align 8
  %21 = tail call i32 @platform_get_irq_byname(ptr noundef %20, ptr noundef nonnull @.str.2) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %250, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %10, align 4
  %25 = tail call i32 @devm_request_threaded_irq(ptr noundef %24, i32 noundef %21, ptr noundef nonnull @bch_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #13
  br label %250

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = tail call ptr @dma_request_chan(ptr noundef %31, ptr noundef nonnull @.str.5) #12
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 20
  store ptr %32, ptr %35, align 8
  br label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %10, align 4
  %38 = ptrtoint ptr %32 to i32
  %39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.6) #12
  tail call fastcc void @release_dma_channels(ptr noundef nonnull %4) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %250

41:                                               ; preds = %36, %34
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.gpmi_devdata, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %56, %41
  %47 = phi ptr [ %59, %56 ], [ %42, %41 ]
  %48 = phi i32 [ %58, %56 ], [ 0, %41 ]
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr inbounds %struct.gpmi_devdata, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr ptr, ptr %51, i32 %48
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @devm_clk_get(ptr noundef %49, ptr noundef %53) #12
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr %struct.gpmi_nand_data, ptr %4, i32 0, i32 3, i32 4, i32 %48
  store ptr %54, ptr %57, align 4
  %58 = add nuw nsw i32 %48, 1
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.gpmi_devdata, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %46, label %67

63:                                               ; preds = %46
  tail call fastcc void @release_dma_channels(ptr noundef %4) #12
  br label %64

64:                                               ; preds = %63, %13, %6
  %65 = phi ptr [ %54, %63 ], [ %11, %6 ], [ %16, %13 ]
  %66 = ptrtoint ptr %65 to i32
  br label %250

67:                                               ; preds = %56, %41
  %68 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef nonnull %4, i1 noundef zeroext true)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %250

70:                                               ; preds = %67
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 500) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #12
  %71 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %3) #12
  %72 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  %73 = tail call fastcc i32 @gpmi_init(ptr noundef nonnull %4)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %247

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10
  %77 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 13
  store ptr @.str, ptr %77, align 8
  %78 = load ptr, ptr %10, align 4
  %79 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 56, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 34
  store ptr %4, ptr %80, align 8
  %81 = load ptr, ptr %9, align 8
  %82 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3, i32 25
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 56, i32 25
  store ptr %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 5, i32 12
  store ptr @gpmi_block_markbad, ptr %85, align 8
  %86 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 15
  store ptr @gpmi_bbt_descr, ptr %86, align 4
  %87 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = or i32 %88, 512
  store i32 %89, ptr %87, align 8
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 7
  %94 = zext i1 %92 to i8
  store i8 %94, ptr %93, align 8
  %95 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 5, i32 6
  store i32 1024, ptr %95, align 4
  %96 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 5, i32 7
  store i32 128, ptr %96, align 4
  %97 = tail call fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef %4) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %247

99:                                               ; preds = %75
  %100 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %100, ptr noundef nonnull @.str.9, ptr noundef nonnull @nand_controller_init.__key) #12
  %101 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 9, i32 1
  store ptr @gpmi_nand_controller_ops, ptr %101, align 4
  %102 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 32
  store ptr %100, ptr %102, align 4
  %103 = load ptr, ptr %4, align 8
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, -2
  %106 = icmp eq i32 %105, 2
  %107 = icmp eq i32 %104, 4
  %108 = or i1 %107, %106
  %109 = select i1 %108, i32 2, i32 1
  %110 = tail call i32 @nand_scan_with_ids(ptr noundef %76, i32 noundef %109, ptr noundef null) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %240

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 8
  store i32 64, ptr %113, align 4
  %114 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 8, i32 1
  store i32 2, ptr %114, align 4
  %115 = load ptr, ptr %4, align 8
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %232

118:                                              ; preds = %112
  %119 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 0, ptr %2, align 1, !annotation !8
  %120 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 24, i32 1
  store i32 -1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 22
  %122 = load ptr, ptr %121, align 8
  tail call void @nand_select_target(ptr noundef %76, i32 noundef 0) #12
  %123 = tail call i32 @nand_read_page_op(ptr noundef %76, i32 noundef 0, i32 noundef 12, ptr noundef %122, i32 noundef 4) #12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %122, ptr noundef nonnull dereferenceable(4) @.str.29, i32 4) #12
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %158, label %128

128:                                              ; preds = %125, %118
  %129 = load i32, ptr %113, align 4
  %130 = tail call i32 @nand_read_page_op(ptr noundef %76, i32 noundef %129, i32 noundef 12, ptr noundef %122, i32 noundef 4) #12
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %122, ptr noundef nonnull dereferenceable(4) @.str.29, i32 4) #12
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %132, %128
  %136 = load i32, ptr %113, align 4
  %137 = shl i32 %136, 1
  %138 = tail call i32 @nand_read_page_op(ptr noundef %76, i32 noundef %137, i32 noundef 12, ptr noundef %122, i32 noundef 4) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %122, ptr noundef nonnull dereferenceable(4) @.str.29, i32 4) #12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %140, %135
  %144 = load i32, ptr %113, align 4
  %145 = mul i32 %144, 3
  %146 = tail call i32 @nand_read_page_op(ptr noundef %76, i32 noundef %145, i32 noundef 12, ptr noundef %122, i32 noundef 4) #12
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %122, ptr noundef nonnull dereferenceable(4) @.str.29, i32 4) #12
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %143
  tail call void @nand_deselect_target(ptr noundef %76) #12
  %152 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 1, i32 4
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 1, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = mul i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %189, label %159

158:                                              ; preds = %148, %140, %132, %125
  tail call void @nand_deselect_target(ptr noundef %76) #12
  br label %231

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 19
  %161 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 18
  %162 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 17
  %163 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 4
  br label %164

164:                                              ; preds = %186, %159
  %165 = phi i32 [ 0, %159 ], [ %187, %186 ]
  %166 = load i32, ptr %160, align 4
  %167 = load i32, ptr %161, align 8
  %168 = sub i32 %166, %167
  %169 = lshr i32 %165, %168
  %170 = load i32, ptr %162, align 4
  %171 = sub i32 %167, %170
  %172 = shl i32 %165, %171
  call void @nand_select_target(ptr noundef %76, i32 noundef %169) #12
  %173 = load i32, ptr %163, align 4
  %174 = call i32 @nand_read_page_op(ptr noundef %76, i32 noundef %172, i32 noundef %173, ptr noundef nonnull %2, i32 noundef 1) #12
  call void @nand_deselect_target(ptr noundef %76) #12
  %175 = icmp eq i32 %174, 0
  %176 = load i8, ptr %2, align 1
  %177 = icmp ne i8 %176, -1
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %186

179:                                              ; preds = %164
  %180 = shl i32 %165, %167
  %181 = zext i32 %180 to i64
  %182 = load ptr, ptr %85, align 8
  %183 = call i32 %182(ptr noundef %76, i64 noundef %181) #12
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.28, i32 noundef %183) #13
  br label %186

186:                                              ; preds = %185, %179, %164
  %187 = add nuw i32 %165, 1
  %188 = icmp eq i32 %187, %156
  br i1 %188, label %189, label %164

189:                                              ; preds = %186, %151
  %190 = load ptr, ptr %10, align 4
  store i32 -1, ptr %120, align 4
  %191 = load ptr, ptr %121, align 8
  %192 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 3
  %193 = load i32, ptr %192, align 8
  %194 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 0, i32 0, i32 4
  %195 = load i32, ptr %194, align 4
  %196 = udiv i32 %193, %195
  %197 = load i32, ptr %114, align 4
  %198 = load i32, ptr %113, align 4
  %199 = shl i32 %198, %197
  %200 = add i32 %196, -1
  %201 = add i32 %200, %199
  call void @nand_select_target(ptr noundef %76, i32 noundef 0) #12
  %202 = icmp ugt i32 %196, %201
  br i1 %202, label %214, label %203

203:                                              ; preds = %189
  %204 = udiv i32 %201, %196
  %205 = call i32 @llvm.umax.i32(i32 %204, i32 1) #12
  br label %206

206:                                              ; preds = %211, %203
  %207 = phi i32 [ %212, %211 ], [ 0, %203 ]
  %208 = call i32 @nand_erase_op(ptr noundef %76, i32 noundef %207) #12
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.mx23_write_transcription_stamp) #13
  br label %211

211:                                              ; preds = %210, %206
  %212 = add nuw i32 %207, 1
  %213 = icmp eq i32 %212, %205
  br i1 %213, label %214, label %206

214:                                              ; preds = %211, %189
  %215 = load i32, ptr %194, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %191, i8 -1, i32 %215, i1 false) #12
  %216 = getelementptr i8, ptr %191, i32 12
  store i32 1347245139, ptr %216, align 1
  %217 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 10, i32 33, i32 17
  br label %218

218:                                              ; preds = %226, %214
  %219 = phi i32 [ 0, %214 ], [ %227, %226 ]
  %220 = load i32, ptr %113, align 4
  %221 = mul i32 %220, %219
  %222 = load ptr, ptr %217, align 4
  %223 = call i32 %222(ptr noundef %76, ptr noundef %191, i32 noundef 0, i32 noundef %221) #12
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %218
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.mx23_write_transcription_stamp) #13
  br label %226

226:                                              ; preds = %225, %218
  %227 = add i32 %219, 1
  %228 = lshr i32 %227, %197
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %218, label %230

230:                                              ; preds = %226
  call void @nand_deselect_target(ptr noundef %76) #12
  br label %231

231:                                              ; preds = %230, %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %232

232:                                              ; preds = %231, %112
  %233 = call i32 @nand_create_bbt(ptr noundef %76) #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = call i32 @mtd_device_parse_register(ptr noundef %76, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %235, %232
  %239 = phi i32 [ %233, %232 ], [ %236, %235 ]
  call void @nand_cleanup(ptr noundef %76) #12
  br label %240

240:                                              ; preds = %238, %99
  %241 = phi i32 [ %110, %99 ], [ %239, %238 ]
  call fastcc void @gpmi_free_dma_buffer(ptr noundef %4) #12
  br label %247

242:                                              ; preds = %235
  %243 = call i64 @ktime_get_mono_fast_ns() #12
  %244 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %243, ptr %244, align 8
  %245 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #12
  %246 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %246, ptr noundef nonnull @.str.1) #13
  br label %250

247:                                              ; preds = %240, %75, %70
  %248 = phi i32 [ %73, %70 ], [ %97, %75 ], [ %241, %240 ]
  %249 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #12
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #12
  call fastcc void @release_dma_channels(ptr noundef %4) #12
  br label %250

250:                                              ; preds = %247, %242, %67, %64, %36, %27, %18, %1
  %251 = phi i32 [ 0, %242 ], [ -12, %1 ], [ %66, %64 ], [ %68, %67 ], [ %248, %247 ], [ %21, %18 ], [ %25, %27 ], [ %39, %36 ]
  ret i32 %251
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_nand_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #12
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #12
  %7 = tail call i32 @mtd_device_unregister(ptr noundef %4) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 2559, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %1
  tail call void @nand_cleanup(ptr noundef %4) #12
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %3)
  tail call fastcc void @release_dma_channels(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__gpmi_enable_clk(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %100, label %6

6:                                                ; preds = %2
  br i1 %1, label %7, label %21

7:                                                ; preds = %6
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %100

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %97

13:                                               ; preds = %73, %57, %42, %28
  %14 = phi i32 [ 4, %73 ], [ 3, %57 ], [ 2, %42 ], [ 1, %28 ]
  %15 = phi ptr [ %62, %73 ], [ %47, %57 ], [ %33, %42 ], [ %19, %28 ]
  %16 = phi i32 [ %74, %73 ], [ %58, %57 ], [ %43, %42 ], [ %29, %28 ]
  tail call void @clk_unprepare(ptr noundef nonnull %15) #12
  br label %76

17:                                               ; preds = %10
  %18 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %100, label %25

21:                                               ; preds = %6
  tail call void @clk_disable(ptr noundef nonnull %4) #12
  tail call void @clk_unprepare(ptr noundef nonnull %4) #12
  %22 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %100, label %35

25:                                               ; preds = %17
  %26 = tail call i32 @clk_prepare(ptr noundef nonnull %19) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = tail call i32 @clk_enable(ptr noundef nonnull %19) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %13

31:                                               ; preds = %28
  %32 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %100, label %39

35:                                               ; preds = %21
  tail call void @clk_disable(ptr noundef nonnull %23) #12
  tail call void @clk_unprepare(ptr noundef nonnull %23) #12
  %36 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %100, label %49

39:                                               ; preds = %31
  %40 = tail call i32 @clk_prepare(ptr noundef nonnull %33) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = tail call i32 @clk_enable(ptr noundef nonnull %33) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %13

45:                                               ; preds = %42
  %46 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %100, label %53

49:                                               ; preds = %35
  tail call void @clk_disable(ptr noundef nonnull %37) #12
  tail call void @clk_unprepare(ptr noundef nonnull %37) #12
  %50 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %100, label %64

53:                                               ; preds = %45
  br i1 %1, label %54, label %64

54:                                               ; preds = %53
  %55 = tail call i32 @clk_prepare(ptr noundef nonnull %47) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = tail call i32 @clk_enable(ptr noundef nonnull %47) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %13

60:                                               ; preds = %57
  %61 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %100, label %70

64:                                               ; preds = %53, %49
  %65 = phi ptr [ %47, %53 ], [ %51, %49 ]
  tail call void @clk_disable(ptr noundef nonnull %65) #12
  tail call void @clk_unprepare(ptr noundef nonnull %65) #12
  %66 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %100, label %69

69:                                               ; preds = %64
  tail call void @clk_disable(ptr noundef nonnull %67) #12
  br label %97

70:                                               ; preds = %60
  %71 = tail call i32 @clk_prepare(ptr noundef nonnull %62) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = tail call i32 @clk_enable(ptr noundef nonnull %62) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %100, label %13

76:                                               ; preds = %70, %54, %39, %25, %13
  %77 = phi i32 [ %16, %13 ], [ %71, %70 ], [ %55, %54 ], [ %40, %39 ], [ %26, %25 ]
  %78 = phi i32 [ %14, %13 ], [ 4, %70 ], [ 3, %54 ], [ 2, %39 ], [ 1, %25 ]
  %79 = add nsw i32 %78, -1
  %80 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 %79
  %81 = load ptr, ptr %80, align 4
  tail call void @clk_disable(ptr noundef %81) #12
  tail call void @clk_unprepare(ptr noundef %81) #12
  %82 = icmp ugt i32 %78, 1
  br i1 %82, label %83, label %100

83:                                               ; preds = %76
  %84 = add nsw i32 %78, -2
  %85 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 %84
  %86 = load ptr, ptr %85, align 4
  tail call void @clk_disable(ptr noundef %86) #12
  tail call void @clk_unprepare(ptr noundef %86) #12
  %87 = icmp ugt i32 %79, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = add nsw i32 %78, -3
  %90 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 %89
  %91 = load ptr, ptr %90, align 4
  tail call void @clk_disable(ptr noundef %91) #12
  tail call void @clk_unprepare(ptr noundef %91) #12
  %92 = icmp ugt i32 %84, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = add nsw i32 %78, -4
  %95 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 4, i32 %94
  %96 = load ptr, ptr %95, align 4
  tail call void @clk_disable(ptr noundef %96) #12
  tail call void @clk_unprepare(ptr noundef %96) #12
  br label %100

97:                                               ; preds = %69, %10
  %98 = phi ptr [ %67, %69 ], [ %4, %10 ]
  %99 = phi i32 [ 0, %69 ], [ %11, %10 ]
  tail call void @clk_unprepare(ptr noundef nonnull %98) #12
  br label %100

100:                                              ; preds = %97, %93, %88, %83, %76, %73, %64, %60, %49, %45, %35, %31, %21, %17, %7, %2
  %101 = phi i32 [ 0, %73 ], [ 0, %64 ], [ 0, %49 ], [ 0, %35 ], [ 0, %21 ], [ 0, %60 ], [ 0, %45 ], [ 0, %31 ], [ 0, %17 ], [ 0, %2 ], [ %8, %7 ], [ %99, %97 ], [ %77, %93 ], [ %77, %88 ], [ %77, %83 ], [ %77, %76 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #12, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  br label %44

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 4
  %16 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %15, i1 noundef zeroext false)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 2
  %24 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %20, i1 noundef zeroext %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !14
  tail call void @arm_heavy_mb() #12
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 4) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 8) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !18
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 262144) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 17301504) #12, !srcloc !15
  br label %37

37:                                               ; preds = %26, %18, %14
  %38 = phi i32 [ %16, %14 ], [ %24, %18 ], [ 0, %26 ]
  %39 = load ptr, ptr %3, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #12
  %41 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = load ptr, ptr %3, align 4
  %43 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #12
  br label %44

44:                                               ; preds = %37, %13, %7
  %45 = phi i32 [ %38, %37 ], [ %5, %7 ], [ %5, %13 ]
  ret i32 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bch_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  tail call void @arm_heavy_mb() #12
  %3 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #12, !srcloc !15
  %6 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %6) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @release_dma_channels(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dma_release_channel(ptr noundef nonnull %8) #12
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dma_release_channel(ptr noundef nonnull %13) #12
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dma_release_channel(ptr noundef nonnull %18) #12
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @dma_release_channel(ptr noundef nonnull %23) #12
  store ptr null, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @dma_release_channel(ptr noundef nonnull %28) #12
  store ptr null, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @dma_release_channel(ptr noundef nonnull %33) #12
  store ptr null, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 20, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @dma_release_channel(ptr noundef nonnull %38) #12
  store ptr null, ptr %37, align 4
  br label %41

41:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_reset_block(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %3 = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147483648) #12, !srcloc !15
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ 1024, %2 ], [ %10, %9 ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %6, -1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %5

12:                                               ; preds = %5
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %49, label %14, !prof !24

14:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !25
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1073741824) #12, !srcloc !15
  br i1 %1, label %26, label %15

15:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !26
  tail call void @arm_heavy_mb() #12
  %16 = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -2147483648) #12, !srcloc !15
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #12
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi i32 [ 1024, %15 ], [ %24, %23 ]
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !27
  %21 = and i32 %20, 1073741824
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = add nsw i32 %19, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %18

26:                                               ; preds = %18, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147483648) #12, !srcloc !15
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #12
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi i32 [ 1024, %26 ], [ %33, %32 ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = add nsw i32 %29, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %28

35:                                               ; preds = %28
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %49, label %37, !prof !24

37:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1073741824) #12, !srcloc !15
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #12
  br label %39

39:                                               ; preds = %44, %37
  %40 = phi i32 [ 1024, %37 ], [ %45, %44 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %42 = and i32 %41, 1073741824
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = add nsw i32 %40, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %39

47:                                               ; preds = %39
  %48 = icmp eq i32 %40, 0
  br i1 %48, label %49, label %51, !prof !24

49:                                               ; preds = %47, %44, %35, %32, %23, %12, %9
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gpmi_reset_block, ptr noundef %0) #13
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ -110, %49 ], [ 0, %47 ]
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_block_markbad(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = ashr i64 %1, %7
  %9 = trunc i64 %8 to i32
  tail call void @nand_select_target(ptr noundef %0, i32 noundef %9) #12
  %10 = load ptr, ptr %4, align 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.gpmi_nand_data, ptr %4, i32 0, i32 16
  %19 = load ptr, ptr %18, align 8
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = ashr i64 %1, %22
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %24, i32 noundef %17, ptr noundef %19, i32 noundef 1) #12
  tail call void @nand_deselect_target(ptr noundef %0) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 4096, i32 %5
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3521) #14
  %9 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 16
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 18
  %15 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %13, ptr noundef %14, i32 noundef 1, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 17
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 4096, i32 %19
  %22 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #14
  %26 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 19
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %11, %1
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %0)
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi i32 [ -12, %28 ], [ 0, %18 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_create_bbt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmi_free_dma_buffer(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = icmp ugt ptr %5, inttoptr (i32 -1073741825 to ptr)
  %9 = load ptr, ptr @high_memory, align 4
  %10 = icmp ult ptr %5, %9
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = ptrtoint ptr %5 to i32
  %14 = add i32 %13, 1073741824
  %15 = lshr i32 %14, 12
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %16, %15
  %18 = tail call i32 @pfn_valid(i32 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 18
  %25 = load i32, ptr %24, align 8
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %22, ptr noundef %23, i32 noundef %25, i32 noundef 0) #12
  br label %26

26:                                               ; preds = %20, %12, %7, %1
  %27 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  tail call void @kfree(ptr noundef %28) #12
  %29 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #12
  store ptr null, ptr %27, align 8
  store ptr null, ptr %29, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_deselect_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_nand_attach_chip(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = or i32 %5, 262144
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef null) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 7
  store i8 0, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %8, %1
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 5
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %3) #12
  %20 = tail call fastcc i32 @bch_set_geometry(ptr noundef %3) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %20) #13
  br label %63

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef %3) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33
  %30 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 18
  store ptr @gpmi_ecc_read_page, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 21
  store ptr @gpmi_ecc_write_page, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 24
  store ptr @gpmi_ecc_read_oob, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 25
  store ptr @gpmi_ecc_write_oob, ptr %33, align 4
  %34 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 16
  store ptr @gpmi_ecc_read_page_raw, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 17
  store ptr @gpmi_ecc_write_page_raw, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 23
  store ptr @gpmi_ecc_read_oob_raw, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 22
  store ptr @gpmi_ecc_write_oob_raw, ptr %37, align 4
  store i32 3, ptr %29, align 4
  %38 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 5, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 4
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 5, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 7
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 15
  store ptr @gpmi_ooblayout_ops, ptr %44, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -2
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %59

49:                                               ; preds = %28
  %50 = load i32, ptr %19, align 4
  %51 = mul i32 %50, %42
  %52 = and i32 %51, 7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 33, i32 19
  store ptr @gpmi_ecc_read_subpage, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 10, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, 4096
  store i32 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %54, %49, %28
  %60 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 8
  %62 = or i32 %61, 65536
  store i32 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %59, %25, %22
  %64 = phi i32 [ 0, %59 ], [ %26, %25 ], [ %20, %22 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_nfc_exec_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = alloca [6 x i32], align 4
  %5 = alloca [6 x i32], align 4
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %8 = load ptr, ptr %7, align 8
  br i1 %2, label %415, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 12
  store i32 0, ptr %10, align 8
  %11 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 0, i32 2
  store i32 3, ptr %11, align 4
  %12 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 1, i32 2
  store i32 3, ptr %12, align 4
  %13 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 2, i32 2
  store i32 3, ptr %13, align 4
  %14 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 3, i32 2
  store i32 3, ptr %14, align 4
  %15 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 4, i32 2
  store i32 3, ptr %15, align 4
  %16 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 5, i32 2
  store i32 3, ptr %16, align 4
  %17 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 6, i32 2
  store i32 3, ptr %17, align 4
  %18 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 7, i32 2
  store i32 3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %20, i32 noundef 4) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %9
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 0, i32 -1, ptr elementtype(i32) %25) #12, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %415, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  br label %415

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 4
  %32 = load i8, ptr %31, align 8, !range !28
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %84, label %34

34:                                               ; preds = %30
  store i8 0, ptr %31, align 8
  %35 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %43) #12
  tail call void @clk_unprepare(ptr noundef %43) #12
  br label %44

44:                                               ; preds = %41, %34
  %45 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 4, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @clk_set_rate(ptr noundef %46, i32 noundef %48) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %19, align 4
  %53 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.22, i32 noundef %53, i32 noundef %49) #13
  br label %408

54:                                               ; preds = %44
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -2
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load ptr, ptr %45, align 4
  %61 = tail call i32 @clk_prepare(ptr noundef %60) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %408

63:                                               ; preds = %59
  %64 = tail call i32 @clk_enable(ptr noundef %60) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @clk_unprepare(ptr noundef %60) #12
  br label %408

67:                                               ; preds = %63, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !29
  tail call void @arm_heavy_mb() #12
  %68 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 4, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %36, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !30
  tail call void @arm_heavy_mb() #12
  %71 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 4, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %36, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !31
  tail call void @arm_heavy_mb() #12
  %74 = getelementptr i8, ptr %36, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 12840960) #12, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !32
  tail call void @arm_heavy_mb() #12
  %75 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 4, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %36, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #12, !srcloc !15
  %78 = load i32, ptr %47, align 4
  %79 = icmp ugt i32 %78, 1000000
  %80 = udiv i32 1000000, %78
  %81 = shl nuw nsw i32 %80, 6
  %82 = select i1 %79, i32 1, i32 %81
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #12
  br label %84

84:                                               ; preds = %67, %30
  %85 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %304, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nand_operation, ptr %1, i32 0, i32 1
  %90 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 20
  %91 = getelementptr inbounds i8, ptr %4, i32 4
  %92 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 10, i32 28
  %93 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 13
  %94 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %95 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %96 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %97 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 18
  %98 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %99 = getelementptr inbounds i8, ptr %5, i32 4
  %100 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 2
  %101 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 3
  %102 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 4
  %103 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 5
  %104 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  br label %105

105:                                              ; preds = %290, %88
  %106 = phi i32 [ %86, %88 ], [ %292, %290 ]
  %107 = phi ptr [ null, %88 ], [ %298, %290 ]
  %108 = phi i8 [ 0, %88 ], [ %297, %290 ]
  %109 = phi i32 [ 0, %88 ], [ %296, %290 ]
  %110 = phi i32 [ 0, %88 ], [ %295, %290 ]
  %111 = phi i32 [ 0, %88 ], [ %291, %290 ]
  %112 = phi ptr [ null, %88 ], [ %294, %290 ]
  %113 = phi i8 [ 0, %88 ], [ %293, %290 ]
  %114 = load ptr, ptr %89, align 4
  %115 = getelementptr %struct.nand_op_instr, ptr %114, i32 %111
  %116 = load i32, ptr %115, align 4
  switch i32 %116, label %279 [
    i32 4, label %117
    i32 0, label %139
    i32 1, label %150
    i32 3, label %156
    i32 2, label %216
  ]

117:                                              ; preds = %105
  %118 = load ptr, ptr %90, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %119 = load i32, ptr %92, align 4
  %120 = shl i32 %119, 20
  %121 = load ptr, ptr %8, align 8
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 3145728, i32 7340032
  %125 = and i32 %124, %120
  %126 = or i32 %125, 58720256
  store i32 %126, ptr %6, align 8
  store i32 0, ptr %104, align 4
  %127 = icmp eq ptr %118, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %117
  %129 = load ptr, ptr %118, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 39
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = call ptr %133(ptr noundef nonnull %118, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 4, i32 noundef -1073741824, ptr noundef null) #12
  br label %137

137:                                              ; preds = %135, %131, %128, %117
  %138 = phi ptr [ %136, %135 ], [ null, %131 ], [ null, %128 ], [ null, %117 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %279

139:                                              ; preds = %105
  %140 = getelementptr %struct.nand_op_instr, ptr %114, i32 %111, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = add nuw i32 %111, 1
  %143 = icmp eq i32 %142, %106
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr %struct.nand_op_instr, ptr %114, i32 %142
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %290, label %148

148:                                              ; preds = %144, %139
  %149 = call fastcc ptr @gpmi_chain_command(ptr noundef %8, i8 noundef zeroext %141, ptr noundef null, i32 noundef 0)
  br label %279

150:                                              ; preds = %105
  %151 = getelementptr %struct.nand_op_instr, ptr %114, i32 %111, i32 1
  %152 = getelementptr inbounds %struct.nand_op_addr_instr, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %151, align 4
  %155 = call fastcc ptr @gpmi_chain_command(ptr noundef %8, i8 noundef zeroext %108, ptr noundef %153, i32 noundef %154)
  br label %279

156:                                              ; preds = %105
  %157 = getelementptr %struct.nand_op_instr, ptr %114, i32 %111, i32 1
  %158 = getelementptr inbounds %struct.nand_op_data_instr, ptr %157, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %157, align 4
  %161 = add i32 %109, 1
  %162 = load ptr, ptr %90, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %99, i8 0, i32 20, i1 false) #12
  %163 = load i32, ptr %10, align 8
  %164 = add i32 %163, 1
  store i32 %164, ptr %10, align 8
  %165 = icmp eq i32 %164, 8
  %166 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %163
  %167 = icmp eq ptr %166, null
  %168 = or i1 %165, %167
  br i1 %168, label %214, label %169

169:                                              ; preds = %156
  %170 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %163, i32 2
  store i32 1, ptr %170, align 4
  %171 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %163, i32 1
  %172 = call fastcc zeroext i1 @prepare_data_dma(ptr noundef %8, ptr noundef %159, i32 noundef %160, ptr noundef %171, i32 noundef 1) #12
  %173 = load i32, ptr %92, align 4
  %174 = shl i32 %173, 20
  %175 = load ptr, ptr %8, align 8
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 3145728, i32 7340032
  %179 = and i32 %178, %174
  %180 = and i32 %160, 65535
  %181 = or i32 %180, %179
  %182 = or i32 %181, 8388608
  store i32 %182, ptr %5, align 4
  %183 = load i8, ptr %93, align 4, !range !28
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %169
  store i32 12799, ptr %100, align 4
  store i32 %160, ptr %101, align 4
  %186 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %163, i32 1, i32 3
  %187 = load i32, ptr %186, align 4
  store i32 %187, ptr %102, align 4
  %188 = load i32, ptr %97, align 8
  store i32 %188, ptr %103, align 4
  br label %189

189:                                              ; preds = %185, %169
  %190 = phi i32 [ -2147483648, %185 ], [ 0, %169 ]
  %191 = icmp eq ptr %162, null
  br i1 %191, label %214, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %162, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %214, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.dma_device, ptr %193, i32 0, i32 39
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %214, label %199

199:                                              ; preds = %195
  %200 = call ptr %197(ptr noundef nonnull %162, ptr noundef nonnull %5, i32 noundef 6, i32 noundef 4, i32 noundef %190, ptr noundef null) #12
  %201 = icmp eq ptr %200, null
  br i1 %201, label %214, label %202

202:                                              ; preds = %199
  %203 = load i8, ptr %93, align 4, !range !28
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load ptr, ptr %162, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.dma_device, ptr %206, i32 0, i32 39
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call ptr %210(ptr noundef nonnull %162, ptr noundef %171, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648, ptr noundef null) #12
  br label %214

214:                                              ; preds = %212, %208, %205, %202, %199, %195, %192, %189, %156
  %215 = phi ptr [ null, %156 ], [ null, %199 ], [ %200, %202 ], [ %213, %212 ], [ null, %208 ], [ null, %205 ], [ null, %195 ], [ null, %192 ], [ null, %189 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %279

216:                                              ; preds = %105
  %217 = getelementptr %struct.nand_op_instr, ptr %114, i32 %111, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %279, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.nand_op_data_instr, ptr %217, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = add i32 %109, 1
  %224 = load ptr, ptr %90, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %91, i8 0, i32 20, i1 false) #12
  %225 = load i32, ptr %10, align 8
  %226 = add i32 %225, 1
  store i32 %226, ptr %10, align 8
  %227 = icmp eq i32 %226, 8
  %228 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %225
  %229 = icmp eq ptr %228, null
  %230 = or i1 %227, %229
  br i1 %230, label %276, label %231

231:                                              ; preds = %220
  %232 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %225, i32 2
  store i32 2, ptr %232, align 4
  %233 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %225, i32 1
  %234 = call fastcc zeroext i1 @prepare_data_dma(ptr noundef %8, ptr noundef %222, i32 noundef %218, ptr noundef %233, i32 noundef 2) #12
  %235 = zext i1 %234 to i8
  %236 = load i32, ptr %92, align 4
  %237 = shl i32 %236, 20
  %238 = load ptr, ptr %8, align 8
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i32 3145728, i32 7340032
  %242 = and i32 %241, %237
  %243 = and i32 %218, 65535
  %244 = or i32 %243, %242
  %245 = or i32 %244, 25165824
  store i32 %245, ptr %4, align 4
  %246 = load i8, ptr %93, align 4, !range !28
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %231
  store i32 4607, ptr %94, align 4
  store i32 %218, ptr %95, align 4
  %249 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %225, i32 1, i32 3
  %250 = load i32, ptr %249, align 4
  store i32 %250, ptr %96, align 4
  %251 = load i32, ptr %97, align 8
  store i32 %251, ptr %98, align 4
  br label %252

252:                                              ; preds = %248, %231
  %253 = icmp eq ptr %224, null
  br i1 %253, label %276, label %254

254:                                              ; preds = %252
  %255 = load ptr, ptr %224, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %276, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.dma_device, ptr %255, i32 0, i32 39
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %276, label %261

261:                                              ; preds = %257
  %262 = call ptr %259(ptr noundef nonnull %224, ptr noundef nonnull %4, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null) #12
  %263 = icmp eq ptr %262, null
  br i1 %263, label %276, label %264

264:                                              ; preds = %261
  %265 = load i8, ptr %93, align 4, !range !28
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load ptr, ptr %224, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.dma_device, ptr %268, i32 0, i32 39
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %270
  %275 = call ptr %272(ptr noundef nonnull %224, ptr noundef %233, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648, ptr noundef null) #12
  br label %276

276:                                              ; preds = %274, %270, %267, %264, %261, %257, %254, %252, %220
  %277 = phi i8 [ %113, %220 ], [ %235, %252 ], [ %235, %254 ], [ %235, %257 ], [ %235, %261 ], [ %235, %267 ], [ %235, %270 ], [ %235, %274 ], [ %235, %264 ]
  %278 = phi ptr [ null, %220 ], [ null, %252 ], [ null, %254 ], [ null, %257 ], [ null, %261 ], [ null, %267 ], [ null, %270 ], [ %275, %274 ], [ %262, %264 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %279

279:                                              ; preds = %276, %216, %214, %150, %148, %137, %105
  %280 = phi i8 [ %113, %105 ], [ %113, %216 ], [ %277, %276 ], [ %113, %214 ], [ %113, %150 ], [ %113, %148 ], [ %113, %137 ]
  %281 = phi ptr [ %112, %105 ], [ %112, %216 ], [ %278, %276 ], [ %215, %214 ], [ %155, %150 ], [ %149, %148 ], [ %138, %137 ]
  %282 = phi i32 [ %110, %105 ], [ %110, %216 ], [ %218, %276 ], [ %160, %214 ], [ %110, %150 ], [ %110, %148 ], [ %110, %137 ]
  %283 = phi i32 [ %109, %105 ], [ %109, %216 ], [ %223, %276 ], [ %161, %214 ], [ %109, %150 ], [ %109, %148 ], [ %109, %137 ]
  %284 = phi i8 [ %108, %105 ], [ %108, %216 ], [ %108, %276 ], [ %108, %214 ], [ %108, %150 ], [ %141, %148 ], [ %108, %137 ]
  %285 = phi ptr [ %107, %105 ], [ %107, %216 ], [ %222, %276 ], [ %107, %214 ], [ %107, %150 ], [ %107, %148 ], [ %107, %137 ]
  %286 = icmp eq ptr %281, null
  br i1 %286, label %366, label %287

287:                                              ; preds = %279
  %288 = load i32, ptr %85, align 4
  %289 = add nuw i32 %111, 1
  br label %290

290:                                              ; preds = %287, %144
  %291 = phi i32 [ %289, %287 ], [ %142, %144 ]
  %292 = phi i32 [ %288, %287 ], [ %106, %144 ]
  %293 = phi i8 [ %280, %287 ], [ %113, %144 ]
  %294 = phi ptr [ %281, %287 ], [ %112, %144 ]
  %295 = phi i32 [ %282, %287 ], [ %110, %144 ]
  %296 = phi i32 [ %283, %287 ], [ %109, %144 ]
  %297 = phi i8 [ %284, %287 ], [ %141, %144 ]
  %298 = phi ptr [ %285, %287 ], [ %107, %144 ]
  %299 = icmp ult i32 %291, %292
  br i1 %299, label %105, label %300

300:                                              ; preds = %290
  %301 = icmp sgt i32 %296, 1
  br i1 %301, label %302, label %304

302:                                              ; preds = %300
  %303 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.19) #13
  br label %366

304:                                              ; preds = %300, %84
  %305 = phi ptr [ %298, %300 ], [ null, %84 ]
  %306 = phi i32 [ %295, %300 ], [ 0, %84 ]
  %307 = phi ptr [ %294, %300 ], [ null, %84 ]
  %308 = phi i8 [ %293, %300 ], [ 0, %84 ]
  %309 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 13
  %310 = load i8, ptr %309, align 4, !range !28
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %322, label %312

312:                                              ; preds = %304
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  call void @arm_heavy_mb() #12
  %313 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 14
  %314 = load i32, ptr %313, align 8
  %315 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr i8, ptr %316, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %314) #12, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !34
  call void @arm_heavy_mb() #12
  %318 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 15
  %319 = load i32, ptr %318, align 4
  %320 = load ptr, ptr %315, align 4
  %321 = getelementptr i8, ptr %320, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %319) #12, !srcloc !15
  br label %322

322:                                              ; preds = %312, %304
  %323 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %307, i32 0, i32 6
  store ptr @dma_irq_callback, ptr %323, align 4
  %324 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %307, i32 0, i32 8
  store ptr %8, ptr %324, align 4
  %325 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 21
  store i32 0, ptr %325, align 4
  %326 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 21, i32 1
  call void @__init_swait_queue_head(ptr noundef %326, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #12
  %327 = load i8, ptr %309, align 4, !range !28
  %328 = icmp ne i8 %327, 0
  %329 = icmp ne ptr %305, null
  %330 = select i1 %328, i1 %329, i1 false
  br i1 %330, label %331, label %337

331:                                              ; preds = %322
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !35
  call void @arm_heavy_mb() #12
  %332 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr i8, ptr %333, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 256) #12, !srcloc !15
  %335 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %335, align 4
  %336 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %336, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #12
  br label %337

337:                                              ; preds = %331, %322
  %338 = phi ptr [ %335, %331 ], [ null, %322 ]
  %339 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %307, i32 0, i32 4
  %340 = load ptr, ptr %339, align 4
  %341 = call i32 %340(ptr noundef %307) #12
  %342 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 20
  %343 = load ptr, ptr %342, align 8
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.dma_device, ptr %344, i32 0, i32 50
  %346 = load ptr, ptr %345, align 4
  call void %346(ptr noundef %343) #12
  %347 = call i32 @wait_for_completion_timeout(ptr noundef %325, i32 noundef 100) #12
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %337
  %350 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %350, ptr noundef nonnull @.str.20) #13
  call fastcc void @gpmi_dump_info(ptr noundef %8)
  br label %366

351:                                              ; preds = %337
  %352 = load i8, ptr %309, align 4, !range !28
  %353 = icmp ne i8 %352, 0
  %354 = select i1 %353, i1 %329, i1 false
  br i1 %354, label %355, label %360

355:                                              ; preds = %351
  %356 = call i32 @wait_for_completion_timeout(ptr noundef %338, i32 noundef 100) #12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %359, ptr noundef nonnull @.str.21) #13
  call fastcc void @gpmi_dump_info(ptr noundef %8)
  br label %366

360:                                              ; preds = %355, %351
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !36
  call void @arm_heavy_mb() #12
  %361 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 3, i32 1
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr i8, ptr %362, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 256) #12, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  call void @arm_heavy_mb() #12
  %364 = load ptr, ptr %361, align 4
  %365 = getelementptr i8, ptr %364, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 1) #12, !srcloc !15
  br label %366

366:                                              ; preds = %360, %358, %349, %302, %279
  %367 = phi i8 [ %293, %302 ], [ %308, %349 ], [ %308, %358 ], [ %308, %360 ], [ %280, %279 ]
  %368 = phi i1 [ false, %302 ], [ false, %349 ], [ false, %358 ], [ true, %360 ], [ false, %279 ]
  %369 = phi i32 [ -22, %302 ], [ -110, %349 ], [ -110, %358 ], [ 0, %360 ], [ -6, %279 ]
  %370 = phi i32 [ %295, %302 ], [ %306, %349 ], [ %306, %358 ], [ %306, %360 ], [ %282, %279 ]
  %371 = phi ptr [ %298, %302 ], [ %305, %349 ], [ %305, %358 ], [ %305, %360 ], [ %285, %279 ]
  %372 = load i32, ptr %10, align 8
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %388

374:                                              ; preds = %384, %366
  %375 = phi i32 [ %385, %384 ], [ %372, %366 ]
  %376 = phi i32 [ %386, %384 ], [ 0, %366 ]
  %377 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %376, i32 2
  %378 = load i32, ptr %377, align 4
  %379 = icmp eq i32 %378, 3
  br i1 %379, label %384, label %380

380:                                              ; preds = %374
  %381 = load ptr, ptr %19, align 4
  %382 = getelementptr %struct.gpmi_nand_data, ptr %8, i32 0, i32 11, i32 %376, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %381, ptr noundef %382, i32 noundef 1, i32 noundef %378, i32 noundef 0) #12
  %383 = load i32, ptr %10, align 8
  br label %384

384:                                              ; preds = %380, %374
  %385 = phi i32 [ %383, %380 ], [ %375, %374 ]
  %386 = add nuw nsw i32 %376, 1
  %387 = icmp slt i32 %386, %385
  br i1 %387, label %374, label %388

388:                                              ; preds = %384, %366
  %389 = icmp ne ptr %371, null
  %390 = select i1 %368, i1 %389, i1 false
  %391 = icmp eq i8 %367, 0
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %393, label %406

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 16
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 13
  %397 = load i8, ptr %396, align 4, !range !28
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %393
  %400 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 5, i32 4
  %401 = load i32, ptr %400, align 4
  %402 = sub i32 0, %401
  %403 = and i32 %370, %402
  br label %404

404:                                              ; preds = %399, %393
  %405 = phi i32 [ %403, %399 ], [ %370, %393 ]
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %371, ptr align 1 %395, i32 %405, i1 false)
  br label %406

406:                                              ; preds = %404, %388
  %407 = getelementptr inbounds %struct.gpmi_nand_data, ptr %8, i32 0, i32 13
  store i8 0, ptr %407, align 4
  br label %408

408:                                              ; preds = %406, %66, %59, %51
  %409 = phi i32 [ %369, %406 ], [ %49, %51 ], [ %64, %66 ], [ %61, %59 ]
  %410 = load ptr, ptr %19, align 4
  %411 = call i64 @ktime_get_mono_fast_ns() #12
  %412 = getelementptr inbounds %struct.device, ptr %410, i32 0, i32 11, i32 22
  store volatile i64 %411, ptr %412, align 8
  %413 = load ptr, ptr %19, align 4
  %414 = call i32 @__pm_runtime_suspend(ptr noundef %413, i32 noundef 13) #12
  br label %415

415:                                              ; preds = %408, %29, %23, %3
  %416 = phi i32 [ %409, %408 ], [ 0, %3 ], [ %21, %23 ], [ %21, %29 ]
  ret i32 %416
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_setup_interface(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %2, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.nand_interface_config, ptr %2, i32 0, i32 1, i32 1
  %9 = select i1 %7, ptr %8, ptr inttoptr (i32 -22 to ptr)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = ptrtoint ptr %9 to i32
  br label %137

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 22
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 25001
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -2
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %22, label %137

22:                                               ; preds = %17, %13
  %23 = icmp slt i32 %1, 0
  br i1 %23, label %137, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.gpmi_devdata, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %15, 29999
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4, i32 1
  store i32 22000000, ptr %30, align 4
  br label %36

31:                                               ; preds = %24
  %32 = icmp ugt i32 %15, 24999
  %33 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4, i32 1
  br i1 %32, label %34, label %35

34:                                               ; preds = %31
  store i32 80000000, ptr %33, align 4
  br label %36

35:                                               ; preds = %31
  store i32 100000000, ptr %33, align 4
  br label %36

36:                                               ; preds = %35, %34, %29
  %37 = phi i32 [ 22000000, %29 ], [ 80000000, %34 ], [ 100000000, %35 ]
  %38 = phi i32 [ 0, %29 ], [ 12582912, %34 ], [ 12582912, %35 ]
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 1000000000000) #15, !srcloc !37
  %40 = extractvalue { i64, i64 } %39, 1
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 6
  %43 = load i32, ptr %42, align 8
  %44 = zext i32 %43 to i64
  %45 = and i64 %40, 4294967295
  %46 = add nsw i64 %45, -1
  %47 = add nsw i64 %46, %44
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %52, !prof !9

49:                                               ; preds = %36
  %50 = trunc i64 %47 to i32
  %51 = udiv i32 %50, %41
  br label %56

52:                                               ; preds = %36
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %47) #15, !srcloc !37
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 18
  %59 = load i32, ptr %58, align 8
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %46, %60
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %66, !prof !9

63:                                               ; preds = %56
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %41
  br label %70

66:                                               ; preds = %56
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %61) #15, !srcloc !37
  %68 = extractvalue { i64, i64 } %67, 1
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ]
  %72 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %46, %74
  %76 = icmp ult i64 %75, 4294967296
  br i1 %76, label %77, label %80, !prof !9

77:                                               ; preds = %70
  %78 = trunc i64 %75 to i32
  %79 = udiv i32 %78, %41
  br label %84

80:                                               ; preds = %70
  %81 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %75) #15, !srcloc !37
  %82 = extractvalue { i64, i64 } %81, 1
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i32 [ %83, %80 ], [ %79, %77 ]
  %86 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 32
  %87 = load i32, ptr %86, align 8
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = add nsw i64 %46, %88
  %92 = add i64 %91, %90
  %93 = icmp ult i64 %92, 4294967296
  br i1 %93, label %94, label %97, !prof !9

94:                                               ; preds = %84
  %95 = trunc i64 %92 to i32
  %96 = udiv i32 %95, %41
  br label %101

97:                                               ; preds = %84
  %98 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %92) #15, !srcloc !37
  %99 = extractvalue { i64, i64 } %98, 1
  %100 = trunc i64 %99 to i32
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i32 [ %96, %94 ], [ %100, %97 ]
  %103 = shl i32 %57, 16
  %104 = and i32 %103, 16711680
  %105 = shl i32 %85, 8
  %106 = and i32 %105, 65280
  %107 = and i32 %71, 255
  %108 = or i32 %107, %106
  %109 = or i32 %108, %104
  %110 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4, i32 2
  store i32 %109, ptr %110, align 4
  %111 = shl i32 %102, 28
  %112 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4, i32 3
  store i32 %111, ptr %112, align 4
  %113 = mul i32 %71, %41
  %114 = getelementptr inbounds %struct.nand_sdr_timings, ptr %9, i32 0, i32 23
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 4000, %113
  %117 = add i32 %116, %115
  %118 = shl i32 %117, 3
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %101
  %121 = icmp ult i32 %27, %41
  %122 = zext i1 %121 to i32
  %123 = lshr i32 %41, %122
  %124 = select i1 %121, i32 65536, i32 0
  %125 = udiv i32 %118, %123
  %126 = icmp ugt i32 %123, %118
  %127 = shl i32 %125, 12
  %128 = and i32 %127, 61440
  %129 = or i32 %38, %124
  %130 = or i32 %129, %128
  %131 = or i32 %130, 131072
  br i1 %126, label %132, label %133

132:                                              ; preds = %120, %101
  br label %133

133:                                              ; preds = %132, %120
  %134 = phi i32 [ %38, %132 ], [ %131, %120 ]
  %135 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4, i32 4
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.gpmi_nand_data, ptr %5, i32 0, i32 4
  store i8 1, ptr %136, align 8
  br label %137

137:                                              ; preds = %133, %22, %17, %11
  %138 = phi i32 [ %12, %11 ], [ 0, %133 ], [ -524, %17 ], [ 0, %22 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 24
  %17 = add i32 %16, -16777216
  %18 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 16
  %21 = and i32 %20, 16711680
  %22 = or i32 %21, %17
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -2
  %26 = icmp ult i32 %25, 3
  %27 = shl i32 %10, 11
  %28 = and i32 %27, 63488
  %29 = shl i32 %10, 12
  %30 = and i32 %29, 61440
  %31 = select i1 %26, i32 %28, i32 %30
  %32 = or i32 %31, %22
  %33 = icmp eq i32 %11, 14
  %34 = select i1 %33, i32 1024, i32 0
  %35 = select i1 %26, i32 %34, i32 0
  %36 = or i32 %32, %35
  %37 = lshr i32 %13, 2
  %38 = and i32 %37, 1023
  %39 = and i32 %13, 4095
  %40 = select i1 %26, i32 %38, i32 %39
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 14
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %23, align 4
  %46 = add i32 %45, -2
  %47 = icmp ult i32 %46, 3
  %48 = select i1 %47, i32 %28, i32 %30
  %49 = select i1 %47, i32 %34, i32 0
  %50 = select i1 %47, i32 %38, i32 %39
  %51 = shl i32 %44, 16
  %52 = or i32 %48, %51
  %53 = or i32 %52, %49
  %54 = or i32 %53, %50
  %55 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 15
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 13
  store i8 1, ptr %56, align 4
  %57 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %1, i32 noundef %44) #12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %111

59:                                               ; preds = %4
  %60 = load i32, ptr %14, align 4
  %61 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = tail call fastcc i32 @gpmi_count_bitflips(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %60, i32 noundef %62)
  %64 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 17
  %65 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 7
  %66 = load i8, ptr %65, align 8, !range !28
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %59
  %69 = load ptr, ptr %64, align 4
  %70 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 9
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr i8, ptr %1, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %76, %71
  %78 = getelementptr i8, ptr %74, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = sub i32 8, %71
  %82 = shl i32 %80, %81
  %83 = or i32 %82, %77
  %84 = trunc i32 %83 to i8
  %85 = load i8, ptr %69, align 1
  store i8 %84, ptr %69, align 1
  %86 = shl nsw i32 -1, %71
  %87 = load i8, ptr %74, align 1
  %88 = zext i8 %87 to i32
  %89 = xor i32 %86, -1
  %90 = and i32 %88, %89
  %91 = zext i8 %85 to i32
  %92 = shl i32 %91, %71
  %93 = or i32 %90, %92
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %74, align 1
  %95 = load i8, ptr %78, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %86, %96
  %98 = lshr i32 %91, %81
  %99 = or i32 %97, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %78, align 1
  br label %101

101:                                              ; preds = %68, %59
  %102 = icmp eq i32 %2, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %107 = load i32, ptr %106, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %105, i8 -1, i32 %107, i1 false)
  %108 = load ptr, ptr %64, align 4
  %109 = load i8, ptr %108, align 1
  %110 = load ptr, ptr %104, align 4
  store i8 %109, ptr %110, align 1
  br label %111

111:                                              ; preds = %103, %101, %4
  %112 = phi i32 [ %57, %4 ], [ %63, %103 ], [ %63, %101 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 24
  %17 = add i32 %16, -16777216
  %18 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 16
  %21 = and i32 %20, 16711680
  %22 = or i32 %21, %17
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -2
  %26 = icmp ult i32 %25, 3
  %27 = shl i32 %10, 11
  %28 = and i32 %27, 63488
  %29 = shl i32 %10, 12
  %30 = and i32 %29, 61440
  %31 = select i1 %26, i32 %28, i32 %30
  %32 = or i32 %31, %22
  %33 = icmp eq i32 %11, 14
  %34 = select i1 %33, i32 1024, i32 0
  %35 = select i1 %26, i32 %34, i32 0
  %36 = or i32 %32, %35
  %37 = lshr i32 %13, 2
  %38 = and i32 %37, 1023
  %39 = and i32 %13, 4095
  %40 = select i1 %26, i32 %38, i32 %39
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 14
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %23, align 4
  %46 = add i32 %45, -2
  %47 = icmp ult i32 %46, 3
  %48 = select i1 %47, i32 %28, i32 %30
  %49 = select i1 %47, i32 %34, i32 0
  %50 = select i1 %47, i32 %38, i32 %39
  %51 = shl i32 %44, 16
  %52 = or i32 %48, %51
  %53 = or i32 %52, %49
  %54 = or i32 %53, %50
  %55 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 15
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 13
  store i8 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 7
  %62 = load i32, ptr %61, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %60, i32 %62, i1 false)
  %63 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 7
  %64 = load i8, ptr %63, align 8, !range !28
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %4
  %67 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 16
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %1, i32 %70, i1 false)
  %71 = load ptr, ptr %67, align 8
  %72 = load i8, ptr %63, align 8, !range !28
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %107, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %57, align 4
  %76 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %71, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = lshr i32 %82, %77
  %84 = getelementptr i8, ptr %80, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = sub i32 8, %77
  %88 = shl i32 %86, %87
  %89 = or i32 %88, %83
  %90 = trunc i32 %89 to i8
  %91 = load i8, ptr %75, align 1
  store i8 %90, ptr %75, align 1
  %92 = shl nsw i32 -1, %77
  %93 = load i8, ptr %80, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %92, -1
  %96 = and i32 %94, %95
  %97 = zext i8 %91 to i32
  %98 = shl i32 %97, %77
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %80, align 1
  %101 = load i8, ptr %84, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %92, %102
  %104 = lshr i32 %97, %87
  %105 = or i32 %103, %104
  %106 = trunc i32 %105 to i8
  store i8 %106, ptr %84, align 1
  br label %107

107:                                              ; preds = %74, %66, %4
  %108 = phi ptr [ %1, %4 ], [ %71, %66 ], [ %71, %74 ]
  %109 = load i32, ptr %43, align 4
  %110 = tail call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %108, i32 noundef %109) #12
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %6, i8 -1, i32 %8, i1 false)
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %7, align 4
  %13 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %10, ptr noundef %11, i32 noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef %20, i32 noundef 1) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %19, %2
  %25 = phi i32 [ 0, %23 ], [ %13, %2 ], [ %21, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_oob(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  %4 = call i32 @mtd_ooblayout_free(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #12
  %5 = getelementptr inbounds %struct.mtd_oob_region, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !24

12:                                               ; preds = %8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.17) #12
  %13 = load i32, ptr %9, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %10, %8 ]
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %3, align 8
  %21 = add i32 %20, %19
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %20
  %25 = load i32, ptr %5, align 4
  %26 = call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %21, ptr noundef %24, i32 noundef %25) #12
  br label %27

27:                                               ; preds = %17, %14, %2
  %28 = phi i32 [ %26, %17 ], [ -1, %2 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %7, align 4
  %13 = mul i32 %12, %11
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %15, i32 noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 7
  %27 = load i8, ptr %26, align 8, !range !28
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %15, align 1
  %31 = load i32, ptr %18, align 4
  %32 = getelementptr i8, ptr %15, i32 %31
  %33 = load i8, ptr %32, align 1
  store i8 %33, ptr %15, align 1
  %34 = load i32, ptr %18, align 4
  %35 = getelementptr i8, ptr %15, i32 %34
  store i8 %30, ptr %35, align 1
  br label %36

36:                                               ; preds = %29, %25
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 3
  %40 = load i32, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %15, i32 %40, i1 false)
  br label %41

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 3
  %45 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %41
  %49 = icmp eq ptr %1, null
  %50 = shl i32 %9, 3
  br label %51

51:                                               ; preds = %76, %48
  %52 = phi i32 [ %46, %48 ], [ %77, %76 ]
  %53 = phi i32 [ 0, %48 ], [ %80, %76 ]
  %54 = phi i32 [ %44, %48 ], [ %79, %76 ]
  %55 = phi i32 [ %44, %48 ], [ %78, %76 ]
  %56 = phi i32 [ %13, %48 ], [ %73, %76 ]
  br i1 %49, label %60, label %57

57:                                               ; preds = %51
  %58 = mul i32 %50, %53
  tail call void @nand_extract_bits(ptr noundef nonnull %1, i32 noundef %58, ptr noundef %15, i32 noundef %55, i32 noundef %50) #12
  %59 = load i32, ptr %45, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i32 [ %59, %57 ], [ %52, %51 ]
  %62 = add i32 %55, %50
  %63 = add i32 %61, -1
  %64 = icmp eq i32 %53, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = add i32 %54, %56
  %67 = and i32 %66, 7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = add i32 %56, 8
  %71 = sub i32 %70, %67
  br label %72

72:                                               ; preds = %69, %65, %60
  %73 = phi i32 [ %71, %69 ], [ %56, %65 ], [ %56, %60 ]
  br i1 %37, label %76, label %74

74:                                               ; preds = %72
  tail call void @nand_extract_bits(ptr noundef %17, i32 noundef %54, ptr noundef %15, i32 noundef %62, i32 noundef %73) #12
  %75 = load i32, ptr %45, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %75, %74 ], [ %61, %72 ]
  %78 = add i32 %73, %62
  %79 = add i32 %73, %54
  %80 = add nuw i32 %53, 1
  %81 = icmp ult i32 %80, %77
  br i1 %81, label %51, label %82

82:                                               ; preds = %76, %41
  %83 = phi i32 [ %44, %41 ], [ %79, %76 ]
  br i1 %37, label %94, label %84

84:                                               ; preds = %82
  %85 = lshr i32 %83, 3
  %86 = load i32, ptr %20, align 4
  %87 = icmp ugt i32 %86, %85
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %17, i32 %85
  %90 = load i32, ptr %18, align 4
  %91 = getelementptr i8, ptr %15, i32 %90
  %92 = getelementptr i8, ptr %91, i32 %85
  %93 = sub i32 %86, %85
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %89, ptr align 1 %92, i32 %93, i1 false)
  br label %94

94:                                               ; preds = %88, %84, %82, %4
  %95 = phi i32 [ %23, %4 ], [ 0, %84 ], [ 0, %88 ], [ 0, %82 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %7, align 4
  %13 = mul i32 %12, %11
  %14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %1, null
  %19 = icmp ne i32 %2, 0
  %20 = and i1 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  tail call void @llvm.memset.p0.i32(ptr align 1 %15, i8 -1, i32 %26, i1 false)
  br label %27

27:                                               ; preds = %21, %4
  %28 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 3
  %29 = load i32, ptr %28, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %17, i32 %29, i1 false)
  %30 = load i32, ptr %28, align 4
  %31 = shl i32 %30, 3
  %32 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 5, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %27
  %36 = shl i32 %9, 3
  br label %37

37:                                               ; preds = %62, %35
  %38 = phi i32 [ %33, %35 ], [ %63, %62 ]
  %39 = phi i32 [ 0, %35 ], [ %66, %62 ]
  %40 = phi i32 [ %31, %35 ], [ %65, %62 ]
  %41 = phi i32 [ %31, %35 ], [ %64, %62 ]
  %42 = phi i32 [ %13, %35 ], [ %59, %62 ]
  br i1 %18, label %43, label %46

43:                                               ; preds = %37
  %44 = mul i32 %36, %39
  tail call void @nand_extract_bits(ptr noundef %15, i32 noundef %41, ptr noundef nonnull %1, i32 noundef %44, i32 noundef %36) #12
  %45 = load i32, ptr %32, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %45, %43 ], [ %38, %37 ]
  %48 = add i32 %41, %36
  %49 = add i32 %47, -1
  %50 = icmp eq i32 %39, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = add i32 %40, %42
  %53 = and i32 %52, 7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = add i32 %42, 8
  %57 = sub i32 %56, %53
  br label %58

58:                                               ; preds = %55, %51, %46
  %59 = phi i32 [ %57, %55 ], [ %42, %51 ], [ %42, %46 ]
  br i1 %19, label %60, label %62

60:                                               ; preds = %58
  tail call void @nand_extract_bits(ptr noundef %15, i32 noundef %48, ptr noundef %17, i32 noundef %40, i32 noundef %59) #12
  %61 = load i32, ptr %32, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %61, %60 ], [ %47, %58 ]
  %64 = add i32 %59, %48
  %65 = add i32 %59, %40
  %66 = add nuw i32 %39, 1
  %67 = icmp ult i32 %66, %63
  br i1 %67, label %37, label %68

68:                                               ; preds = %62, %27
  %69 = phi i32 [ %31, %27 ], [ %65, %62 ]
  %70 = lshr i32 %69, 3
  br i1 %19, label %71, label %82

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, %70
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %15, i32 %77
  %79 = getelementptr i8, ptr %78, i32 %70
  %80 = getelementptr i8, ptr %17, i32 %70
  %81 = sub i32 %73, %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 1 %80, i32 %81, i1 false)
  br label %82

82:                                               ; preds = %75, %71, %68
  %83 = getelementptr inbounds %struct.gpmi_nand_data, ptr %6, i32 0, i32 7
  %84 = load i8, ptr %83, align 8, !range !28
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i8, ptr %15, align 1
  %88 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i8, ptr %15, i32 %89
  %91 = load i8, ptr %90, align 1
  store i8 %91, ptr %15, align 1
  %92 = load i32, ptr %88, align 4
  %93 = getelementptr i8, ptr %15, i32 %92
  store i8 %87, ptr %93, align 1
  br label %94

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %96
  %100 = tail call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %15, i32 noundef %99) #12
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @gpmi_ecc_read_page_raw(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_oob_raw(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @gpmi_ecc_write_page_raw(ptr noundef %0, ptr noundef null, i32 noundef 1, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_subpage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = lshr i32 %14, 3
  %16 = udiv i32 %1, %10
  %17 = add i32 %1, -1
  %18 = add i32 %17, %2
  %19 = udiv i32 %18, %10
  %20 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 7
  %21 = load i8, ptr %20, align 8, !range !28
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %25, %10
  %27 = icmp slt i32 %19, %26
  %28 = icmp sgt i32 %16, %26
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call i32 @gpmi_ecc_read_page(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  br label %105

32:                                               ; preds = %23, %5
  %33 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %10, %1
  %36 = add i32 %15, %10
  %37 = mul i32 %36, %16
  %38 = add i32 %34, %37
  %39 = mul i32 %16, %10
  %40 = select i1 %35, i32 0, i32 %39
  %41 = getelementptr i8, ptr %3, i32 %40
  %42 = select i1 %35, i32 %34, i32 0
  %43 = select i1 %35, i32 0, i32 %38
  %44 = sub i32 %19, %16
  %45 = add i32 %44, 1
  %46 = mul i32 %45, %36
  %47 = add i32 %42, %46
  %48 = lshr i32 %13, 1
  %49 = shl i32 %44, 24
  %50 = shl i32 %42, 16
  %51 = and i32 %50, 16711680
  %52 = or i32 %51, %49
  %53 = load ptr, ptr %7, align 8
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -2
  %56 = icmp ult i32 %55, 3
  %57 = shl i32 %48, 11
  %58 = and i32 %57, 63488
  %59 = shl i32 %48, 12
  %60 = and i32 %59, 61440
  %61 = select i1 %56, i32 %58, i32 %60
  %62 = or i32 %61, %52
  br i1 %56, label %63, label %71

63:                                               ; preds = %32
  %64 = icmp eq i32 %11, 14
  %65 = select i1 %64, i32 1024, i32 0
  %66 = or i32 %62, %65
  %67 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 2
  %70 = and i32 %69, 1023
  br label %75

71:                                               ; preds = %32
  %72 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 4095
  br label %75

75:                                               ; preds = %71, %63
  %76 = phi i32 [ %68, %63 ], [ %73, %71 ]
  %77 = phi i32 [ %66, %63 ], [ %62, %71 ]
  %78 = phi i32 [ %70, %63 ], [ %74, %71 ]
  %79 = or i32 %78, %77
  %80 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 14
  store i32 %79, ptr %80, align 8
  %81 = shl i32 %47, 16
  %82 = load i32, ptr %53, align 4
  %83 = add i32 %82, -2
  %84 = icmp ult i32 %83, 3
  %85 = select i1 %84, i32 %58, i32 %60
  %86 = or i32 %85, %81
  br i1 %84, label %87, label %93

87:                                               ; preds = %75
  %88 = icmp eq i32 %11, 14
  %89 = select i1 %88, i32 1024, i32 0
  %90 = or i32 %86, %89
  %91 = lshr i32 %76, 2
  %92 = and i32 %91, 1023
  br label %95

93:                                               ; preds = %75
  %94 = and i32 %76, 4095
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi i32 [ %90, %87 ], [ %86, %93 ]
  %97 = phi i32 [ %92, %87 ], [ %94, %93 ]
  %98 = or i32 %97, %96
  %99 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 15
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 13
  store i8 1, ptr %100, align 4
  %101 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %4, i32 noundef %43, ptr noundef %41, i32 noundef %47) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = tail call fastcc i32 @gpmi_count_bitflips(ptr noundef %0, ptr noundef %41, i32 noundef %16, i32 noundef %19, i32 noundef %42)
  br label %105

105:                                              ; preds = %103, %95, %30
  %106 = phi i32 [ %31, %30 ], [ %104, %103 ], [ %101, %95 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bch_set_geometry(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 33, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 33, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @set_geometry_by_ecc_info(ptr noundef %0, i32 noundef %3, i32 noundef %7) #12
  br label %89

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef null) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5
  %20 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 3
  store i32 10, ptr %20, align 4
  store i32 13, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 4
  store i32 512, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 512
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  store i32 14, ptr %19, align 4
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i32 [ 512, %25 ], [ %28, %26 ]
  %28 = shl i32 %27, 1
  %29 = icmp ult i32 %28, %23
  br i1 %29, label %26, label %30

30:                                               ; preds = %26
  store i32 %28, ptr %21, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = phi i32 [ 14, %30 ], [ 13, %18 ]
  %33 = phi i32 [ %28, %30 ], [ 512, %18 ]
  %34 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = udiv i32 %35, %33
  %37 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 5
  store i32 %36, ptr %37, align 4
  %38 = shl i32 %23, 3
  %39 = add i32 %38, -80
  %40 = mul i32 %36, %32
  %41 = udiv i32 %39, %40
  %42 = and i32 %41, -2
  %43 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %0, align 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, 2
  %47 = select i1 %46, i1 %24, i1 false
  %48 = getelementptr inbounds %struct.gpmi_devdata, ptr %44, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %42, %49
  %51 = select i1 %47, i1 true, i1 %50
  br i1 %51, label %77, label %52

52:                                               ; preds = %31
  %53 = add i32 %35, 10
  %54 = mul i32 %42, %32
  %55 = mul i32 %54, %36
  %56 = lshr i32 %55, 3
  %57 = add i32 %53, %56
  %58 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 6
  store i32 %35, ptr %59, align 4
  %60 = add i32 %36, 15
  %61 = and i32 %60, -4
  %62 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 7
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 8
  store i32 12, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 7
  %65 = load i8, ptr %64, align 8, !range !28
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %52
  %68 = shl i32 %35, 3
  %69 = sub i32 1, %36
  %70 = mul i32 %54, %69
  %71 = add i32 %68, -80
  %72 = add i32 %71, %70
  %73 = lshr i32 %72, 3
  %74 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 9
  store i32 %73, ptr %74, align 4
  %75 = and i32 %72, 6
  %76 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 10
  store i32 %75, ptr %76, align 4
  br label %92

77:                                               ; preds = %31
  %78 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.15, i32 noundef %42, i32 noundef %49) #13
  br label %79

79:                                               ; preds = %77, %11
  %80 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 2, i32 1, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 2, i32 1, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %83
  %88 = tail call fastcc i32 @set_geometry_by_ecc_info(ptr noundef %0, i32 noundef %81, i32 noundef %85) #12
  br label %89

89:                                               ; preds = %87, %9
  %90 = phi i32 [ %10, %9 ], [ %88, %87 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89, %67, %52
  %93 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @__pm_runtime_resume(ptr noundef %94, i32 noundef 4) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %0, align 8
  %101 = load i32, ptr %100, align 4
  %102 = icmp ult i32 %101, 2
  %103 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %99, i1 noundef zeroext %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !38
  tail call void @arm_heavy_mb() #12
  %106 = load ptr, ptr %98, align 4
  %107 = getelementptr i8, ptr %106, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #12, !srcloc !15
  br label %108

108:                                              ; preds = %105, %97
  %109 = load ptr, ptr %93, align 4
  %110 = tail call i64 @ktime_get_mono_fast_ns() #12
  %111 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 11, i32 22
  store volatile i64 %110, ptr %111, align 8
  br label %112

112:                                              ; preds = %108, %92
  %113 = phi i32 [ %103, %108 ], [ %95, %92 ]
  %114 = load ptr, ptr %93, align 4
  %115 = tail call i32 @__pm_runtime_suspend(ptr noundef %114, i32 noundef 13) #12
  br label %116

116:                                              ; preds = %112, %89, %83, %79
  %117 = phi i32 [ %90, %89 ], [ -22, %83 ], [ -22, %79 ], [ %113, %112 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_geometry_by_ecc_info(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5
  switch i32 %2, label %6 [
    i32 512, label %13
    i32 1024, label %5
  ]

5:                                                ; preds = %3
  br label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 2, i32 1, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 2, i32 1, i32 4
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %10, i32 noundef %12) #13
  br label %66

13:                                               ; preds = %5, %3
  %14 = phi i1 [ false, %3 ], [ true, %5 ]
  %15 = phi i32 [ 13, %3 ], [ 14, %5 ]
  store i32 %15, ptr %4, align 4
  %16 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 4
  store i32 %2, ptr %16, align 4
  %17 = add i32 %1, -1
  %18 = or i32 %17, 1
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 2
  %24 = and i1 %14, %23
  br i1 %24, label %66, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.gpmi_devdata, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %19, %27
  br i1 %28, label %66, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %2
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14, i32 noundef %2, i32 noundef %31) #13
  br label %66

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 3
  store i32 10, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = udiv i32 %39, %2
  %41 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 5
  store i32 %40, ptr %41, align 4
  %42 = add i32 %39, 10
  %43 = mul i32 %15, %19
  %44 = mul i32 %40, %43
  %45 = lshr i32 %44, 3
  %46 = add i32 %42, %45
  %47 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 6
  store i32 %39, ptr %48, align 4
  %49 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 8
  store i32 12, ptr %49, align 4
  %50 = add nuw nsw i32 %40, 15
  %51 = and i32 %50, -4
  %52 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 7
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 7
  %54 = load i8, ptr %53, align 8, !range !28
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %36
  %57 = shl i32 %39, 3
  %58 = sub nsw i32 1, %40
  %59 = mul i32 %58, %43
  %60 = add i32 %57, -80
  %61 = add i32 %60, %59
  %62 = lshr i32 %61, 3
  %63 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 9
  store i32 %62, ptr %63, align 4
  %64 = and i32 %61, 6
  %65 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 10
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %56, %36, %33, %25, %13, %6
  %67 = phi i32 [ -22, %6 ], [ -22, %33 ], [ 0, %56 ], [ -22, %25 ], [ 0, %36 ], [ -22, %13 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_count_bitflips(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 17
  %10 = icmp slt i32 %2, %3
  br i1 %10, label %11, label %102

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 4
  %13 = add i32 %4, 3
  %14 = and i32 %13, -4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 19
  %18 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 3
  %19 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 4
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %22

22:                                               ; preds = %97, %11
  %23 = phi i32 [ %2, %11 ], [ %99, %97 ]
  %24 = phi ptr [ %15, %11 ], [ %100, %97 ]
  %25 = phi i32 [ 0, %11 ], [ %98, %97 ]
  %26 = load i8, ptr %24, align 1
  switch i8 %26, label %90 [
    i8 0, label %97
    i8 -1, label %97
    i8 -2, label %27
  ]

27:                                               ; preds = %22
  %28 = load i32, ptr %16, align 4
  %29 = load i32, ptr %8, align 4
  %30 = mul i32 %29, %28
  %31 = load ptr, ptr %17, align 4
  %32 = load i32, ptr %18, align 4
  %33 = shl i32 %32, 3
  %34 = load i32, ptr %19, align 4
  %35 = shl i32 %34, 3
  %36 = add i32 %35, %30
  %37 = add nsw i32 %23, 1
  %38 = mul i32 %36, %37
  %39 = add i32 %38, %33
  %40 = sub i32 %39, %30
  %41 = freeze i32 %40
  %42 = sdiv i32 %41, 8
  %43 = mul i32 %42, 8
  %44 = sub i32 %41, %43
  %45 = add i32 %39, 7
  %46 = sdiv i32 %45, 8
  %47 = sub nsw i32 %46, %42
  %48 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %42, ptr noundef %31, i32 noundef %47, i1 noundef zeroext false) #12
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %27
  %51 = sub nsw i32 32, %44
  %52 = lshr i32 -1, %51
  %53 = load i8, ptr %31, align 1
  %54 = trunc i32 %52 to i8
  %55 = or i8 %53, %54
  store i8 %55, ptr %31, align 1
  br label %56

56:                                               ; preds = %50, %27
  %57 = add i32 %44, %30
  %58 = srem i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = shl nsw i32 -1, %58
  %62 = add nsw i32 %47, -1
  %63 = getelementptr i8, ptr %31, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = trunc i32 %61 to i8
  %66 = or i8 %64, %65
  store i8 %66, ptr %63, align 1
  br label %67

67:                                               ; preds = %60, %56
  %68 = icmp eq i32 %23, 0
  %69 = load i32, ptr %19, align 4
  br i1 %68, label %70, label %75

70:                                               ; preds = %67
  %71 = load ptr, ptr %9, align 4
  %72 = load i32, ptr %18, align 4
  %73 = load i32, ptr %16, align 4
  %74 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %1, i32 noundef %69, ptr noundef %31, i32 noundef %47, ptr noundef %71, i32 noundef %72, i32 noundef %73) #12
  br label %80

75:                                               ; preds = %67
  %76 = mul i32 %69, %23
  %77 = getelementptr i8, ptr %1, i32 %76
  %78 = load i32, ptr %16, align 4
  %79 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %77, i32 noundef %69, ptr noundef %31, i32 noundef %47, ptr noundef null, i32 noundef 0, i32 noundef %78) #12
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i32 [ %74, %70 ], [ %79, %75 ]
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = tail call i32 @llvm.umax.i32(i32 %25, i32 %81)
  %85 = load i32, ptr %21, align 4
  %86 = add i32 %85, %81
  store i32 %86, ptr %21, align 4
  br label %97

87:                                               ; preds = %80
  %88 = load i32, ptr %20, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %20, align 4
  br label %97

90:                                               ; preds = %22
  %91 = zext i8 %26 to i32
  %92 = load i32, ptr %21, align 4
  %93 = add i32 %92, %91
  store i32 %93, ptr %21, align 4
  %94 = load i8, ptr %24, align 1
  %95 = zext i8 %94 to i32
  %96 = tail call i32 @llvm.umax.i32(i32 %25, i32 %95)
  br label %97

97:                                               ; preds = %90, %87, %83, %22, %22
  %98 = phi i32 [ %25, %22 ], [ %96, %90 ], [ %25, %22 ], [ %84, %83 ], [ %25, %87 ]
  %99 = add nsw i32 %23, 1
  %100 = getelementptr i8, ptr %24, i32 1
  %101 = icmp eq i32 %99, %3
  br i1 %101, label %102, label %22

102:                                              ; preds = %97, %5
  %103 = phi i32 [ 0, %5 ], [ %98, %97 ]
  ret i32 %103
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_extract_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gpmi_ooblayout_ecc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr %6, align 8
  store i32 0, ptr %2, align 4
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gpmi_ooblayout_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %7, i32 0, i32 5, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = sub i32 %9, %11
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %12, align 4
  %19 = sub i32 %18, %17
  %20 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %5, %3
  %22 = phi i32 [ -34, %3 ], [ 0, %16 ], [ 0, %5 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gpmi_chain_command(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x i32], align 4
  %6 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 10, i32 28
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %10 = shl i32 %9, 20
  %11 = load ptr, ptr %0, align 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 3145728, i32 7340032
  %15 = and i32 %14, %10
  %16 = add i32 %3, 1
  %17 = and i32 %16, 65535
  %18 = or i32 %17, %15
  %19 = or i32 %18, 8585216
  store i32 %19, ptr %5, align 4
  %20 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = icmp eq ptr %7, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %4
  %24 = load ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 39
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = call ptr %28(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 3, i32 noundef 4, i32 noundef 0, ptr noundef null) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 12
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  %37 = icmp eq i32 %36, 8
  %38 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 11, i32 %35
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %33
  store i8 %1, ptr %38, align 4
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = getelementptr [8 x i8], ptr %38, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %2, i32 %3, i1 false)
  br label %45

45:                                               ; preds = %43, %41
  %46 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 11, i32 %35, i32 1
  call void @sg_init_one(ptr noundef %46, ptr noundef nonnull %38, i32 noundef %16) #12
  %47 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 @dma_map_sg_attrs(ptr noundef %48, ptr noundef %46, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %50 = getelementptr %struct.gpmi_nand_data, ptr %0, i32 0, i32 11, i32 %35, i32 2
  store i32 1, ptr %50, align 4
  %51 = load ptr, ptr %7, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 39
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call ptr %55(ptr noundef nonnull %7, ptr noundef %46, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648, ptr noundef null) #12
  br label %59

59:                                               ; preds = %57, %53, %45, %33, %30, %26, %23, %4
  %60 = phi ptr [ null, %30 ], [ null, %33 ], [ %58, %57 ], [ null, %53 ], [ null, %45 ], [ null, %26 ], [ null, %23 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_irq_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 21
  tail call void @complete(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpmi_dump_info(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24) #13
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef %6) #13
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef 16, i32 noundef %10) #13
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef 32, i32 noundef %14) #13
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef 48, i32 noundef %18) #13
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %23 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef 64, i32 noundef %22) #13
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %27 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25, i32 noundef 80, i32 noundef %26) #13
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 96
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef 96, i32 noundef %30) #13
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 112
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef 112, i32 noundef %34) #13
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 128
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.25, i32 noundef 128, i32 noundef %38) #13
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i8, ptr %40, i32 144
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %43 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.25, i32 noundef 144, i32 noundef %42) #13
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr i8, ptr %44, i32 160
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %47 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.25, i32 noundef 160, i32 noundef %46) #13
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 176
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %51 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.25, i32 noundef 176, i32 noundef %50) #13
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr i8, ptr %52, i32 192
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %55 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.25, i32 noundef 192, i32 noundef %54) #13
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 208
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !39
  %59 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.25, i32 noundef 208, i32 noundef %58) #13
  %60 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.26) #13
  %61 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 3, i32 1
  br label %62

62:                                               ; preds = %62, %1
  %63 = phi i32 [ 0, %1 ], [ %69, %62 ]
  %64 = load ptr, ptr %61, align 4
  %65 = shl i32 %63, 4
  %66 = getelementptr i8, ptr %64, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !40
  %68 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.25, i32 noundef %65, i32 noundef %67) #13
  %69 = add nuw nsw i32 %63, 1
  %70 = icmp eq i32 %69, 24
  br i1 %70, label %71, label %62

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5
  %73 = load ptr, ptr %3, align 4
  %74 = load i32, ptr %72, align 4
  %75 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 10
  %94 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.27, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepare_data_dma(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 4, !range !28
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 5, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 0, %11
  %13 = and i32 %12, %2
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ %13, %9 ], [ %2, %5 ]
  %16 = icmp ugt ptr %1, inttoptr (i32 -1073741825 to ptr)
  %17 = load ptr, ptr @high_memory, align 4
  %18 = icmp ugt ptr %17, %1
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = ptrtoint ptr %1 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %25 = add i32 %24, %23
  %26 = tail call i32 @pfn_valid(i32 noundef %25) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %20
  %29 = tail call ptr @llvm.thread.pointer() #12
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, %1
  %33 = getelementptr i8, ptr %31, i32 8192
  %34 = icmp ule ptr %33, %1
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  tail call void @sg_init_one(ptr noundef %3, ptr noundef nonnull %1, i32 noundef %15) #12
  %37 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @dma_map_sg_attrs(ptr noundef %38, ptr noundef %3, i32 noundef 1, i32 noundef %4, i32 noundef 0) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %28, %20, %14
  %42 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 16
  %43 = load ptr, ptr %42, align 8
  tail call void @sg_init_one(ptr noundef %3, ptr noundef %43, i32 noundef %15) #12
  %44 = icmp eq i32 %4, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load ptr, ptr %42, align 8
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %1, i32 %15, i1 false)
  br label %49

49:                                               ; preds = %48, %45, %41
  %50 = getelementptr inbounds %struct.gpmi_nand_data, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @dma_map_sg_attrs(ptr noundef %51, ptr noundef %3, i32 noundef 1, i32 noundef %4, i32 noundef 0) #12
  br label %53

53:                                               ; preds = %49, %36
  %54 = phi i1 [ false, %49 ], [ true, %36 ]
  ret i1 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_erase_op(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @release_dma_channels(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_pm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call ptr @dma_request_chan(ptr noundef %6, ptr noundef nonnull @.str.5) #12
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 20
  store ptr %7, ptr %10, align 8
  br label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %7 to i32
  %15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.6) #12
  tail call fastcc void @release_dma_channels(ptr noundef %3) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %11, %9
  %18 = tail call fastcc i32 @gpmi_init(ptr noundef %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef %18) #13
  br label %35

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 4
  store i8 1, ptr %28, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = tail call fastcc i32 @bch_set_geometry(ptr noundef %3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gpmi_nand_data, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.39, i32 noundef %30) #13
  br label %35

35:                                               ; preds = %32, %29, %20, %11
  %36 = phi i32 [ %18, %20 ], [ %30, %32 ], [ %15, %11 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef %3, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpmi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef %3, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148016364}
!11 = !{i64 514674, i64 2148004645, i64 2148004671, i64 2148004718, i64 2148004740, i64 2148004768, i64 2148004788}
!12 = !{i64 501243, i64 501268, i64 501290, i64 501306, i64 501318, i64 501338, i64 501362, i64 501378, i64 501390}
!13 = !{i64 2148016490}
!14 = !{i64 2153480403}
!15 = !{i64 3331155}
!16 = !{i64 2153480768}
!17 = !{i64 2153481133}
!18 = !{i64 2153481500}
!19 = !{i64 2153481918}
!20 = !{i64 2153519917}
!21 = !{i64 2153476899}
!22 = !{i64 3331573}
!23 = !{i64 2153477854}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2153478099}
!26 = !{i64 2153478443}
!27 = !{i64 2153479432}
!28 = !{i8 0, i8 2}
!29 = !{i64 2153517227}
!30 = !{i64 2153517586}
!31 = !{i64 2153518272}
!32 = !{i64 2153518722}
!33 = !{i64 2153559230}
!34 = !{i64 2153559652}
!35 = !{i64 2153560081}
!36 = !{i64 2153561558}
!37 = !{i64 2148430037, i64 2148430317, i64 2148430651, i64 2148430985}
!38 = !{i64 2153493712}
!39 = !{i64 2153482996}
!40 = !{i64 2153484464}
