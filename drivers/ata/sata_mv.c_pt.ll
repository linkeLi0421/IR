; ModuleID = '/llk/IR/drivers/ata/sata_mv.c_pt.bc'
source_filename = "../drivers/ata/sata_mv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mv_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.mv_host_priv = type { i32, i32, i32, [8 x %struct.mv_port_signal], ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv_port_signal = type { i32, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.85, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.85 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mv_port_priv = type { ptr, i32, ptr, i32, [32 x ptr], [32 x i32], i32, i32, i32, %struct.mv_cached_regs, i32 }
%struct.mv_cached_regs = type { i32, i32, i32, i32 }
%struct.mv_crqb = type { i32, i32, i16, [11 x i16] }
%struct.mv_sg = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_crqb_iie = type { i32, i32, i32, i32, [4 x i32] }
%struct.mv_crpb = type { i16, i16, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@__param_str_msi = internal constant [12 x i8] c"sata_mv.msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msi = internal global i32 0, align 4
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype291 = internal constant [25 x i8] c"sata_mv.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi292 = internal constant [53 x i8] c"sata_mv.parm=msi:Enable use of PCI MSI (0=off, 1=on)\00", section ".modinfo", align 1
@__param_str_irq_coalescing_io_count = internal constant [32 x i8] c"sata_mv.irq_coalescing_io_count\00", align 1
@irq_coalescing_io_count = internal global i32 0, align 4
@__param_irq_coalescing_io_count = internal constant %struct.kernel_param { ptr @__param_str_irq_coalescing_io_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @irq_coalescing_io_count } }, section "__param", align 4
@__UNIQUE_ID_irq_coalescing_io_counttype293 = internal constant [45 x i8] c"sata_mv.parmtype=irq_coalescing_io_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_coalescing_io_count294 = internal constant [81 x i8] c"sata_mv.parm=irq_coalescing_io_count:IRQ coalescing I/O count threshold (0..255)\00", section ".modinfo", align 1
@__param_str_irq_coalescing_usecs = internal constant [29 x i8] c"sata_mv.irq_coalescing_usecs\00", align 1
@irq_coalescing_usecs = internal global i32 0, align 4
@__param_irq_coalescing_usecs = internal constant %struct.kernel_param { ptr @__param_str_irq_coalescing_usecs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @irq_coalescing_usecs } }, section "__param", align 4
@__UNIQUE_ID_irq_coalescing_usecstype295 = internal constant [42 x i8] c"sata_mv.parmtype=irq_coalescing_usecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_coalescing_usecs296 = internal constant [73 x i8] c"sata_mv.parm=irq_coalescing_usecs:IRQ coalescing time threshold in usecs\00", section ".modinfo", align 1
@mv_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mv_pci_tbl, ptr @mv_pci_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @mv_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@mv_platform_driver = internal global %struct.platform_driver { ptr @mv_platform_probe, ptr @mv_platform_remove, ptr null, ptr @mv_platform_suspend, ptr @mv_platform_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_sata_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author297 = internal constant [26 x i8] c"sata_mv.author=Brett Russ\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [71 x i8] c"sata_mv.description=SCSI low-level driver for Marvell SATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [33 x i8] c"sata_mv.file=drivers/ata/sata_mv\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"sata_mv.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version301 = internal constant [21 x i8] c"sata_mv.version=1.28\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sata_mv\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1.28\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias302 = internal constant [31 x i8] c"sata_mv.alias=platform:sata_mv\00", section ".modinfo", align 1
@__initcall__kmod_sata_mv__303_4492_mv_init6 = internal global ptr @mv_init, section ".initcall6.init", align 4
@__exitcall_mv_exit = internal global ptr @mv_exit, section ".exitcall.exit", align 4
@mv_pci_tbl = internal constant [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 20544, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 20545, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 20608, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4523, i32 20609, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4355, i32 5920, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4355, i32 5952, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4355, i32 5954, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4523, i32 24640, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4523, i32 24641, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4523, i32 24642, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4523, i32 24704, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4523, i32 24705, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 36869, i32 577, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 36869, i32 579, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4523, i32 28738, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4355, i32 8960, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4355, i32 8976, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@mv_port_info = internal constant [8 x %struct.ata_port_info] [%struct.ata_port_info { i32 578, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 1073742402, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 1073742402, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 656898, i32 0, i32 31, i32 0, i32 127, ptr @mv6_ops, ptr null }, %struct.ata_port_info { i32 1074398722, i32 0, i32 31, i32 0, i32 127, ptr @mv6_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }], align 4
@mv_pci_init_one.__print_once = internal unnamed_addr global i1 false, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DMA enable failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@mv5_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@mv6_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 31, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@mv5_ops = internal global %struct.ata_port_operations { ptr @mv_qc_defer, ptr null, ptr @mv_qc_prep, ptr @mv_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_eh_freeze, ptr @mv_eh_thaw, ptr null, ptr null, ptr @mv_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @mv5_scr_read, ptr @mv5_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_port_start, ptr @mv_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, align 4
@mv6_ops = internal global %struct.ata_port_operations { ptr @mv_qc_defer, ptr @mv_check_atapi_dma, ptr @mv_qc_prep, ptr @mv_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv6_dev_config, ptr @mv_eh_freeze, ptr @mv_eh_thaw, ptr null, ptr @mv_softreset, ptr @mv_hardreset, ptr null, ptr null, ptr @mv_softreset, ptr @mv_pmp_hardreset, ptr null, ptr @mv_pmp_error_handler, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @mv_scr_read, ptr @mv_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_port_start, ptr @mv_port_stop, ptr null, ptr null, ptr null, ptr @mv_sff_check_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_sff_irq_clear, ptr null, ptr @mv_bmdma_setup, ptr @mv_bmdma_start, ptr @mv_bmdma_stop, ptr @mv_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, align 4
@mv_iie_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr @mv_qc_prep_iie, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv6_ops }, align 4
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"drivers/ata/sata_mv.c\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\013ata%u: %s: unsupported command: %.2x\0A\00", align 1
@__func__.mv_qc_prep = private unnamed_addr constant [11 x i8] c"mv_qc_prep\00", align 1
@mv_qc_issue.limit_warnings = internal unnamed_addr global i32 10, align 4
@.str.8 = private unnamed_addr constant [87 x i8] c"\014ata%u.%02u: sata_mv: attempting PIO w/multiple DRQ: this may fail due to h/w errata\0A\00", align 1
@.str.9 = private unnamed_addr constant [82 x i8] c"\014ata%u: sata_mv: attempting PIO w/multiple DRQ: this may fail due to h/w errata\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\013ata%u: Unable to stop eDMA\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"\014ata%u: %s transmission error, ifstat=%08x\0A\00", align 1
@__func__.mv_send_fis = private unnamed_addr constant [12 x i8] c"mv_send_fis\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"\016ata%u.%02u: NCQ disabled for command-based switching\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"crqb_q\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"crpb_q\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"sg_tbl\00", align 1
@mv5xxx_ops = internal constant %struct.mv_hw_ops { ptr @mv5_phy_errata, ptr @mv5_enable_leds, ptr @mv5_read_preamp, ptr @mv5_reset_hc, ptr @mv5_reset_flash, ptr @mv5_reset_bus }, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"Applying 50XXB2 workarounds to unknown rev\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Applying B2 workarounds to unknown rev\0A\00", align 1
@mv6xxx_ops = internal constant %struct.mv_hw_ops { ptr @mv6_phy_errata, ptr @mv6_enable_leds, ptr @mv6_read_preamp, ptr @mv6_reset_hc, ptr @mv6_reset_flash, ptr @mv_reset_pci_bus }, align 4
@.str.18 = private unnamed_addr constant [115 x i8] c"Highpoint RocketRAID BIOS CORRUPTS DATA on all attached drives, regardless of if/how they are configured. BEWARE!\0A\00", align 1
@.str.19 = private unnamed_addr constant [138 x i8] c"For data safety, do not use sectors 8-9 on \22Legacy\22 drives, and avoid the final two gigabytes on all RocketRAID BIOS initialized drives.\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Applying 60X1C0 workarounds to unknown rev\0A\00", align 1
@mv_soc_65n_ops = internal constant %struct.mv_hw_ops { ptr @mv_soc_65n_phy_errata, ptr @mv_soc_enable_leds, ptr null, ptr @mv_soc_reset_hc, ptr @mv_soc_reset_flash, ptr @mv_soc_reset_bus }, align 4
@mv_soc_ops = internal constant %struct.mv_hw_ops { ptr @mv6_phy_errata, ptr @mv_soc_enable_leds, ptr @mv_soc_read_preamp, ptr @mv_soc_reset_hc, ptr @mv_soc_reset_flash, ptr @mv_soc_reset_bus }, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"BUG: invalid board index %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"PCI master won't flush\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"can't set global reset\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"can't clear global reset\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"SCSI\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"IIE\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Gen-%s %u slots %u ports %s mode IRQ via %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"PCI ERROR; PCI IRQ cause=0x%08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"PCI err cause 0x%08x\00", align 1
@.str.37 = private unnamed_addr constant [76 x i8] c"\016ata%u: %s: pmp_map=%04x qc_map=%04llx failed_links=%d nr_active_links=%d\0A\00", align 1
@__func__.mv_handle_fbs_ncq_dev_err = private unnamed_addr constant [26 x i8] c"mv_handle_fbs_ncq_dev_err\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"\016ata%u: %s: done\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"\016ata%u: %s: waiting\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"dev err\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"edma_err_cause=%08x pp_flags=%08x\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"fis_cause=%08x\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"SDB notify\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"dev error\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"parity error\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"dev disconnect\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"dev connect\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"EDMA self-disable\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"SError=%08x\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"\014ata%u: %s: err_cause=0x%x pp_flags=0x%x\0A\00", align 1
@__func__.mv_handle_dev_err = private unnamed_addr constant [18 x i8] c"mv_handle_dev_err\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"unexpected device interrupt while %s\00", align 1
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@mv_sata_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__const.mv_platform_probe.ppi = private unnamed_addr constant [2 x ptr] [ptr getelementptr (i8, ptr @mv_port_info, i64 196), ptr null], align 8
@mv_platform_probe.__print_once = internal unnamed_addr global i1 false, align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"invalid number of resources\0A\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"nr-ports\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"error parsing nr-ports property: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"nr-ports must be positive: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"cannot get optional clkdev\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"error getting phy %d\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"marvell,armada-370-sata\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"slots %u ports %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Error during HW init\0A\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_irq_coalescing_io_count294, ptr @__UNIQUE_ID_irq_coalescing_io_counttype293, ptr @__UNIQUE_ID_irq_coalescing_usecs296, ptr @__UNIQUE_ID_irq_coalescing_usecstype295, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_msi292, ptr @__UNIQUE_ID_msitype291, ptr @__UNIQUE_ID_version301, ptr @__exitcall_mv_exit, ptr @__initcall__kmod_sata_mv__303_4492_mv_init6, ptr @__modver_attr, ptr @__param_irq_coalescing_io_count, ptr @__param_irq_coalescing_usecs, ptr @__param_msi, ptr @mv_exit], section "llvm.metadata"
@switch.table.mv_scr_write = private unnamed_addr constant [4 x i32] [i32 768, i32 772, i32 776, i32 848], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @mv_pci_driver) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mv_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_platform_driver, ptr noundef null) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @pci_unregister_driver(ptr noundef nonnull @mv_pci_driver) #11
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ %4, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_pci_init_one(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %6 = getelementptr [8 x %struct.ata_port_info], ptr @mv_port_info, i32 0, i32 %5
  store ptr %6, ptr %3, align 8
  %7 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr null, ptr %7, align 4
  %8 = load i1, ptr @mv_pci_init_one.__print_once, align 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  store i1 true, ptr @mv_pci_init_one.__print_once, align 1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %10, ptr noundef nonnull @.str.2) #11
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %12, 1073741824
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 4, i32 8
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %17 = call ptr @ata_host_alloc_pinfo(ptr noundef %16, ptr noundef nonnull %3, i32 noundef %15) #11
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 132, i32 noundef 3520) #11
  %19 = icmp ne ptr %17, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %95

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 5
  store ptr %18, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 5
  store i32 %15, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 1
  store i32 %5, ptr %25, align 4
  %26 = call i32 @pcim_enable_device(ptr noundef %0) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = call i32 @pcim_iomap_regions(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1) #11
  switch i32 %29, label %95 [
    i32 -16, label %30
    i32 0, label %31
  ]

30:                                               ; preds = %28
  call void @pcim_pin_device(ptr noundef %0) #11
  br label %95

31:                                               ; preds = %28
  %32 = call ptr @pcim_iomap_table(ptr noundef %0) #11
  %33 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = load ptr, ptr %32, align 4
  %35 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 6
  store ptr %34, ptr %35, align 4
  %36 = call i32 @dma_set_mask(ptr noundef %16, i64 noundef -1) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3) #12
  br label %95

39:                                               ; preds = %31
  %40 = call i32 @dma_set_coherent_mask(ptr noundef %16, i64 noundef -1) #11
  %41 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.13, ptr noundef %16, i32 noundef 1024, i32 noundef 1024, i32 noundef 0) #11
  %42 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 15
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %95, label %44

44:                                               ; preds = %39
  %45 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.14, ptr noundef %16, i32 noundef 256, i32 noundef 256, i32 noundef 0) #11
  %46 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 16
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %95, label %48

48:                                               ; preds = %44
  %49 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.15, ptr noundef %16, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #11
  %50 = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 17
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %95, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %56, %52
  %57 = phi i32 [ %71, %56 ], [ 0, %52 ]
  %58 = getelementptr %struct.ata_host, ptr %17, i32 0, i32 12, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %35, align 4
  %61 = shl i32 %57, 14
  %62 = and i32 %61, -65536
  %63 = getelementptr i8, ptr %60, i32 139264
  %64 = getelementptr i8, ptr %63, i32 %62
  %65 = shl i32 %57, 13
  %66 = and i32 %65, 24576
  %67 = getelementptr i8, ptr %64, i32 %66
  %68 = ptrtoint ptr %67 to i32
  %69 = ptrtoint ptr %60 to i32
  %70 = sub i32 %68, %69
  call void @ata_port_pbar_desc(ptr noundef %59, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.4) #11
  call void @ata_port_pbar_desc(ptr noundef %59, i32 noundef 0, i32 noundef %70, ptr noundef nonnull @.str.5) #11
  %71 = add nuw i32 %57, 1
  %72 = load i32, ptr %53, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %56, label %74

74:                                               ; preds = %56, %52
  %75 = call fastcc i32 @mv_init_host(ptr noundef nonnull %17)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32, ptr @msi, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = call i32 @pci_enable_msi(ptr noundef %0) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, ptr %18, align 4
  %85 = or i32 %84, 1
  store i32 %85, ptr %18, align 4
  br label %86

86:                                               ; preds = %83, %80, %77
  call fastcc void @mv_dump_pci_cfg(ptr noundef %0)
  call fastcc void @mv_print_info(ptr noundef nonnull %17)
  call void @pci_set_master(ptr noundef %0) #11
  %87 = call i32 @pci_try_set_mwi(ptr noundef %0) #11
  %88 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %18, align 4
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, ptr @mv6_sht, ptr @mv5_sht
  %94 = call i32 @ata_host_activate(ptr noundef nonnull %17, i32 noundef %89, ptr noundef nonnull @mv_interrupt, i32 noundef 128, ptr noundef nonnull %93) #11
  br label %95

95:                                               ; preds = %86, %74, %48, %44, %39, %38, %30, %28, %22, %11
  %96 = phi i32 [ %36, %38 ], [ %94, %86 ], [ -12, %11 ], [ %26, %22 ], [ %29, %28 ], [ -16, %30 ], [ %75, %74 ], [ -12, %39 ], [ -12, %44 ], [ -12, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_pci_device_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ata_pci_device_do_resume(ptr noundef %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @mv_init_host(ptr noundef %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @ata_host_resume(ptr noundef %3) #11
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = phi i32 [ 0, %9 ], [ %4, %1 ], [ %7, %6 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_create_dma_pools(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef 1024, i32 noundef 1024, i32 noundef 0) #11
  %4 = getelementptr inbounds %struct.mv_host_priv, ptr %0, i32 0, i32 15
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef 256, i32 noundef 256, i32 noundef 0) #11
  %8 = getelementptr inbounds %struct.mv_host_priv, ptr %0, i32 0, i32 16
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #11
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %0, i32 0, i32 17
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, i32 -12, i32 0
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi i32 [ -12, %2 ], [ -12, %6 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_init_host(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  switch i32 %7, label %130 [
    i32 2, label %11
    i32 0, label %21
    i32 1, label %21
    i32 3, label %31
    i32 4, label %31
    i32 6, label %58
    i32 5, label %69
    i32 7, label %99
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr @mv5xxx_ops, ptr %12, align 4
  %13 = getelementptr i8, ptr %9, i32 -92
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %19 [
    i8 1, label %15
    i8 3, label %17
  ]

15:                                               ; preds = %11
  %16 = or i32 %10, 66
  br label %106

17:                                               ; preds = %11
  %18 = or i32 %10, 68
  br label %106

19:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.16) #12
  %20 = or i32 %10, 68
  br label %106

21:                                               ; preds = %1, %1
  %22 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr @mv5xxx_ops, ptr %22, align 4
  %23 = getelementptr i8, ptr %9, i32 -92
  %24 = load i8, ptr %23, align 4
  switch i8 %24, label %29 [
    i8 0, label %25
    i8 3, label %27
  ]

25:                                               ; preds = %21
  %26 = or i32 %10, 66
  br label %106

27:                                               ; preds = %21
  %28 = or i32 %10, 68
  br label %106

29:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.17) #12
  %30 = or i32 %10, 68
  br label %106

31:                                               ; preds = %1, %1
  %32 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr @mv6xxx_ops, ptr %32, align 4
  %33 = getelementptr i8, ptr %9, i32 -92
  %34 = load i8, ptr %33, align 4
  switch i8 %34, label %56 [
    i8 7, label %35
    i8 9, label %54
  ]

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.mv_host_priv, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %36, align 4
  %40 = and i32 %39, 2560
  %41 = icmp eq i32 %40, 512
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %38, i32 3328
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %45 = and i32 %44, 48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %38, i32 3072
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %50 = and i32 %49, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %50) #11, !srcloc !12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %52

52:                                               ; preds = %47, %42, %35
  %53 = or i32 %10, 136
  br label %106

54:                                               ; preds = %31
  %55 = or i32 %10, 144
  br label %106

56:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.17) #12
  %57 = or i32 %10, 136
  br label %106

58:                                               ; preds = %1
  %59 = getelementptr i8, ptr %9, i32 -104
  %60 = load i16, ptr %59, align 8
  %61 = icmp eq i16 %60, 4355
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %9, i32 -102
  %64 = load i16, ptr %63, align 2
  switch i16 %64, label %66 [
    i16 8960, label %65
    i16 8976, label %65
  ]

65:                                               ; preds = %62, %62
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.18) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.19) #12
  br label %66

66:                                               ; preds = %65, %62, %58
  %67 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr @mv6xxx_ops, ptr %67, align 4
  %68 = or i32 %10, 1792
  br label %90

69:                                               ; preds = %1
  %70 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr @mv6xxx_ops, ptr %70, align 4
  %71 = or i32 %10, 256
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr inbounds %struct.mv_host_priv, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %72, align 4
  %76 = and i32 %75, 2560
  %77 = icmp eq i32 %76, 512
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = getelementptr i8, ptr %74, i32 3328
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %81 = and i32 %80, 48
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %69
  %84 = getelementptr i8, ptr %74, i32 3072
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %86 = and i32 %85, 128
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %78
  %89 = or i32 %10, 1280
  br label %90

90:                                               ; preds = %88, %83, %66
  %91 = phi i32 [ %68, %66 ], [ %89, %88 ], [ %71, %83 ]
  %92 = getelementptr i8, ptr %9, i32 -92
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 2
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = or i32 %91, 16
  br label %106

97:                                               ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.20) #12
  %98 = or i32 %91, 16
  br label %106

99:                                               ; preds = %1
  %100 = getelementptr i8, ptr %5, i32 140192
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @mv_soc_ops, ptr @mv_soc_65n_ops
  %104 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  store ptr %103, ptr %104, align 4
  %105 = or i32 %10, 2320
  br label %106

106:                                              ; preds = %99, %97, %95, %56, %54, %52, %29, %27, %25, %19, %17, %15
  %107 = phi i32 [ %105, %99 ], [ %96, %95 ], [ %98, %97 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ]
  store i32 %107, ptr %3, align 4
  %108 = and i32 %107, 512
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 9
  %111 = select i1 %109, i32 7512, i32 6400
  %112 = select i1 %109, i32 7516, i32 6416
  %113 = select i1 %109, i32 8388607, i32 1034
  store i32 %111, ptr %110, align 4
  %114 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 10
  store i32 %112, ptr %114, align 4
  %115 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 11
  store i32 %113, ptr %115, align 4
  %116 = and i32 %107, 2048
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 7520, i32 131104
  %119 = select i1 %117, i32 7524, i32 131108
  %120 = getelementptr i8, ptr %5, i32 %118
  %121 = getelementptr i8, ptr %5, i32 %119
  %122 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 7
  store ptr %120, ptr %122, align 4
  %123 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 8
  store ptr %121, ptr %123, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %125 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 2
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %2, align 4
  %127 = getelementptr inbounds %struct.mv_host_priv, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %131

130:                                              ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %7) #12
  br label %339

131:                                              ; preds = %106
  store i32 0, ptr %127, align 4
  %132 = getelementptr inbounds %struct.mv_host_priv, ptr %126, i32 0, i32 8
  %133 = load ptr, ptr %132, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #11, !srcloc !12
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %135

135:                                              ; preds = %131, %106
  %136 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 12
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ata_port, ptr %137, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1073741824
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 1, i32 2
  %143 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  br label %148

148:                                              ; preds = %157, %146
  %149 = phi i32 [ %144, %146 ], [ %158, %157 ]
  %150 = phi i32 [ 0, %146 ], [ %159, %157 ]
  %151 = load ptr, ptr %147, align 4
  %152 = getelementptr inbounds %struct.mv_hw_ops, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %148
  tail call void %153(ptr noundef %3, i32 noundef %150, ptr noundef %5) #11
  %156 = load i32, ptr %143, align 4
  br label %157

157:                                              ; preds = %155, %148
  %158 = phi i32 [ %149, %148 ], [ %156, %155 ]
  %159 = add nuw i32 %150, 1
  %160 = icmp ult i32 %159, %158
  br i1 %160, label %148, label %161

161:                                              ; preds = %157, %135
  %162 = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.mv_hw_ops, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 %165(ptr noundef %0, ptr noundef %5, i32 noundef %142) #11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %339

168:                                              ; preds = %161
  %169 = load ptr, ptr %162, align 4
  %170 = getelementptr inbounds %struct.mv_hw_ops, ptr %169, i32 0, i32 4
  %171 = load ptr, ptr %170, align 4
  tail call void %171(ptr noundef %3, ptr noundef %5) #11
  %172 = load ptr, ptr %162, align 4
  %173 = getelementptr inbounds %struct.mv_hw_ops, ptr %172, i32 0, i32 5
  %174 = load ptr, ptr %173, align 4
  tail call void %174(ptr noundef %0, ptr noundef %5) #11
  %175 = load ptr, ptr %162, align 4
  %176 = getelementptr inbounds %struct.mv_hw_ops, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %3, ptr noundef %5) #11
  %178 = load i32, ptr %143, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %168
  %181 = getelementptr i8, ptr %5, i32 139264
  br label %184

182:                                              ; preds = %184, %168
  %183 = getelementptr i8, ptr %5, i32 131092
  br label %225

184:                                              ; preds = %184, %180
  %185 = phi i32 [ 0, %180 ], [ %222, %184 ]
  %186 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %185
  %187 = load ptr, ptr %186, align 4
  %188 = shl i32 %185, 14
  %189 = and i32 %188, -65536
  %190 = getelementptr i8, ptr %181, i32 %189
  %191 = shl i32 %185, 13
  %192 = and i32 %191, 24576
  %193 = getelementptr i8, ptr %190, i32 %192
  %194 = getelementptr i8, ptr %193, i32 256
  %195 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 1
  store ptr %194, ptr %195, align 4
  %196 = getelementptr i8, ptr %193, i32 260
  %197 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 3
  store ptr %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 2
  store ptr %196, ptr %198, align 4
  %199 = getelementptr i8, ptr %193, i32 264
  %200 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 4
  store ptr %199, ptr %200, align 4
  %201 = getelementptr i8, ptr %193, i32 268
  %202 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 5
  store ptr %201, ptr %202, align 4
  %203 = getelementptr i8, ptr %193, i32 272
  %204 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 6
  store ptr %203, ptr %204, align 4
  %205 = getelementptr i8, ptr %193, i32 276
  %206 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 7
  store ptr %205, ptr %206, align 4
  %207 = getelementptr i8, ptr %193, i32 280
  %208 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 8
  store ptr %207, ptr %208, align 4
  %209 = getelementptr i8, ptr %193, i32 284
  %210 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 10
  store ptr %209, ptr %210, align 4
  %211 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 9
  store ptr %209, ptr %211, align 4
  %212 = getelementptr i8, ptr %193, i32 288
  %213 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 12
  store ptr %212, ptr %213, align 4
  %214 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 8, i32 11
  store ptr %212, ptr %214, align 4
  %215 = getelementptr i8, ptr %193, i32 772
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %216) #11, !srcloc !12
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %218 = getelementptr i8, ptr %193, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 0) #11, !srcloc !12
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %220 = getelementptr i8, ptr %193, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 -65101825) #11, !srcloc !12
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %222 = add nuw i32 %185, 1
  %223 = load i32, ptr %143, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %184, label %182

225:                                              ; preds = %225, %182
  %226 = phi i32 [ 0, %182 ], [ %230, %225 ]
  %227 = shl i32 %226, 16
  %228 = getelementptr i8, ptr %183, i32 %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 0) #11, !srcloc !12
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %230 = add nuw nsw i32 %226, 1
  %231 = icmp eq i32 %230, %142
  br i1 %231, label %232, label %225

232:                                              ; preds = %225
  %233 = load i32, ptr %3, align 4
  %234 = and i32 %233, 2048
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load i32, ptr %110, align 4
  %238 = getelementptr i8, ptr %5, i32 %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 0) #11, !srcloc !12
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %240 = load i32, ptr %115, align 4
  %241 = load i32, ptr %114, align 4
  %242 = getelementptr i8, ptr %5, i32 %241
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #11, !srcloc !12
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %244

244:                                              ; preds = %236, %232
  %245 = load ptr, ptr %2, align 4
  %246 = getelementptr inbounds %struct.mv_host_priv, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = or i32 %247, 262144
  %249 = icmp eq i32 %248, %247
  br i1 %249, label %263, label %250

250:                                              ; preds = %244
  store i32 %248, ptr %246, align 4
  %251 = and i32 %247, 2097408
  %252 = icmp eq i32 %251, 0
  %253 = and i32 %248, -171
  %254 = select i1 %252, i32 %248, i32 %253
  %255 = and i32 %254, 2228224
  %256 = icmp eq i32 %255, 0
  %257 = and i32 %254, -87041
  %258 = select i1 %256, i32 %254, i32 %257
  %259 = getelementptr inbounds %struct.mv_host_priv, ptr %245, i32 0, i32 8
  %260 = load ptr, ptr %259, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %258) #11, !srcloc !12
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %262 = load ptr, ptr %2, align 4
  br label %263

263:                                              ; preds = %250, %244
  %264 = phi ptr [ %245, %244 ], [ %262, %250 ]
  %265 = load i32, ptr @irq_coalescing_io_count, align 4
  %266 = load i32, ptr @irq_coalescing_usecs, align 4
  %267 = getelementptr inbounds %struct.mv_host_priv, ptr %264, i32 0, i32 6
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.mv_host_priv, ptr %264, i32 0, i32 5
  %270 = load i32, ptr %269, align 4
  %271 = icmp sgt i32 %270, 4
  %272 = icmp ne i32 %266, 0
  %273 = icmp ne i32 %265, 0
  %274 = and i1 %273, %272
  br i1 %274, label %275, label %279

275:                                              ; preds = %263
  %276 = mul i32 %266, 150
  %277 = tail call i32 @llvm.umin.i32(i32 %276, i32 16777215) #11
  %278 = tail call i32 @llvm.umin.i32(i32 %265, i32 255) #11
  br label %279

279:                                              ; preds = %275, %263
  %280 = phi i32 [ %277, %275 ], [ 0, %263 ]
  %281 = phi i32 [ %278, %275 ], [ 0, %263 ]
  %282 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %283 = load ptr, ptr %2, align 4
  %284 = getelementptr inbounds %struct.mv_host_priv, ptr %283, i32 0, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = and i32 %285, -2228481
  %287 = icmp eq i32 %286, %285
  br i1 %287, label %292, label %288

288:                                              ; preds = %279
  store i32 %286, ptr %284, align 4
  %289 = getelementptr inbounds %struct.mv_host_priv, ptr %283, i32 0, i32 8
  %290 = load ptr, ptr %289, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %286) #11, !srcloc !12
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %292

292:                                              ; preds = %288, %279
  br i1 %271, label %293, label %303

293:                                              ; preds = %292
  %294 = load i32, ptr %264, align 4
  %295 = and i32 %294, 64
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !18
  tail call void @arm_heavy_mb() #11
  %298 = getelementptr i8, ptr %268, i32 98512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %280) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %299 = getelementptr i8, ptr %268, i32 98508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %281) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %300 = getelementptr i8, ptr %268, i32 98312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 -17) #11, !srcloc !12
  %301 = icmp eq i32 %281, 0
  %302 = select i1 %301, i32 0, i32 2097152
  br label %303

303:                                              ; preds = %297, %293, %292
  %304 = phi i32 [ 0, %293 ], [ %302, %297 ], [ 0, %292 ]
  %305 = phi i32 [ %280, %293 ], [ 0, %297 ], [ %280, %292 ]
  %306 = phi i32 [ %281, %293 ], [ 0, %297 ], [ %281, %292 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %307 = getelementptr i8, ptr %268, i32 131088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %305) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %308 = getelementptr i8, ptr %268, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %306) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  %309 = getelementptr i8, ptr %268, i32 131092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 -17) #11, !srcloc !12
  %310 = icmp eq i32 %306, 0
  %311 = or i32 %304, 256
  %312 = select i1 %310, i32 %304, i32 %311
  br i1 %271, label %313, label %319

313:                                              ; preds = %303
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %314 = getelementptr i8, ptr %268, i32 196624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %305) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %315 = getelementptr i8, ptr %268, i32 196620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %306) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %316 = getelementptr i8, ptr %268, i32 196628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 -17) #11, !srcloc !12
  %317 = or i32 %304, 131328
  %318 = select i1 %310, i32 %304, i32 %317
  br label %319

319:                                              ; preds = %313, %303
  %320 = phi i32 [ %312, %303 ], [ %318, %313 ]
  %321 = load ptr, ptr %2, align 4
  %322 = getelementptr inbounds %struct.mv_host_priv, ptr %321, i32 0, i32 2
  %323 = load i32, ptr %322, align 4
  %324 = or i32 %323, %320
  %325 = icmp eq i32 %324, %323
  br i1 %325, label %338, label %326

326:                                              ; preds = %319
  store i32 %324, ptr %322, align 4
  %327 = and i32 %324, 2097408
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %324, -171
  %330 = select i1 %328, i32 %324, i32 %329
  %331 = and i32 %330, 2228224
  %332 = icmp eq i32 %331, 0
  %333 = and i32 %330, -87041
  %334 = select i1 %332, i32 %330, i32 %333
  %335 = getelementptr inbounds %struct.mv_host_priv, ptr %321, i32 0, i32 8
  %336 = load ptr, ptr %335, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %334) #11, !srcloc !12
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %338

338:                                              ; preds = %326, %319
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %282) #11
  br label %339

339:                                              ; preds = %338, %161, %130
  %340 = phi i32 [ -22, %130 ], [ %166, %161 ], [ 0, %338 ]
  ret i32 %340
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_dump_pci_cfg(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca [38 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %3) #11
  br label %6

4:                                                ; preds = %6
  %5 = icmp ult i32 %9, 100
  br i1 %5, label %21, label %24

6:                                                ; preds = %21, %1
  %7 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %8 = phi i32 [ 0, %1 ], [ %23, %21 ]
  %9 = phi i32 [ 0, %1 ], [ %16, %21 ]
  %10 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %2) #11
  %11 = getelementptr i8, ptr %3, i32 %7
  %12 = sub i32 38, %7
  %13 = load i32, ptr %2, align 4
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @.str.25, i32 noundef %13)
  %15 = add i32 %14, %7
  %16 = add nuw nsw i32 %9, 4
  %17 = add nuw nsw i32 %8, 1
  %18 = icmp ult i32 %9, 100
  %19 = icmp ult i32 %8, 3
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %4

21:                                               ; preds = %6, %4
  %22 = phi i32 [ %15, %6 ], [ 0, %4 ]
  %23 = phi i32 [ %17, %6 ], [ 0, %4 ]
  br label %6

24:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_print_info(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -136
  %6 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !27
  %8 = call i32 @pci_read_config_byte(ptr noundef %5, i32 noundef 10, ptr noundef nonnull %2) #11
  %9 = load i8, ptr %2, align 1
  %10 = load i32, ptr %7, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = and i32 %10, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = and i32 %10, 256
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.28, ptr @.str.31
  br label %20

20:                                               ; preds = %16, %13, %1
  %21 = phi ptr [ @.str.29, %1 ], [ @.str.30, %13 ], [ %19, %16 ]
  %22 = icmp eq i8 %9, 0
  %23 = icmp eq i8 %9, 1
  %24 = select i1 %23, ptr @.str.27, ptr @.str.28
  %25 = select i1 %22, ptr @.str.26, ptr %24
  %26 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %10, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.34, ptr @.str.33
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.32, ptr noundef nonnull %21, i32 noundef 32, i32 noundef %27, ptr noundef nonnull %25, ptr noundef nonnull %30) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #11, !srcloc !12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %17 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i32 %16, -1
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %420

23:                                               ; preds = %13
  %24 = and i32 %19, 262144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %5, align 4
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33, !prof !29

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call fastcc void @mv_pci_error(ptr noundef %1, ptr noundef %32)
  br label %420

33:                                               ; preds = %26, %23
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.mv_host_priv, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = and i32 %19, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %40 = getelementptr i8, ptr %36, i32 98312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -17) #11, !srcloc !12
  br label %41

41:                                               ; preds = %39, %33
  %42 = getelementptr inbounds %struct.mv_host_priv, ptr %34, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %420, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %36, i32 131092
  br label %47

47:                                               ; preds = %414, %45
  %48 = phi i32 [ %43, %45 ], [ %418, %414 ]
  %49 = phi i32 [ 0, %45 ], [ %417, %414 ]
  %50 = phi i32 [ 0, %45 ], [ %415, %414 ]
  %51 = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %49
  %52 = load ptr, ptr %51, align 4
  %53 = lshr i32 %49, 2
  %54 = mul i32 %53, 9
  %55 = and i32 %49, 3
  %56 = shl nuw nsw i32 %55, 1
  %57 = add i32 %54, %56
  %58 = icmp eq i32 %55, 0
  %59 = lshr i32 %19, %57
  br i1 %58, label %60, label %102

60:                                               ; preds = %47
  %61 = and i32 %59, 511
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = add nuw i32 %49, 3
  br label %414

65:                                               ; preds = %60
  %66 = lshr i32 %59, 4
  %67 = and i32 %66, 16
  %68 = icmp ult i32 %49, %48
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = and i32 %59, 3
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 257
  %73 = or i32 %72, %67
  %74 = add nuw i32 %49, 1
  %75 = icmp ult i32 %74, %48
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = and i32 %59, 12
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 514
  %80 = or i32 %79, %73
  %81 = add nuw i32 %49, 2
  %82 = icmp ult i32 %81, %48
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = and i32 %59, 48
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 1028
  %87 = or i32 %86, %80
  %88 = add nuw i32 %49, 3
  %89 = icmp ult i32 %88, %48
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = and i32 %59, 192
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 2056
  %94 = or i32 %93, %87
  br label %95

95:                                               ; preds = %90, %83, %76, %69, %65
  %96 = phi i32 [ %67, %65 ], [ %73, %69 ], [ %80, %76 ], [ %87, %83 ], [ %94, %90 ]
  %97 = shl i32 %49, 14
  %98 = and i32 %97, -65536
  %99 = xor i32 %96, -1
  %100 = getelementptr i8, ptr %46, i32 %98
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #11, !srcloc !12
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %102

102:                                              ; preds = %95, %47
  %103 = phi i32 [ 1, %95 ], [ %50, %47 ]
  %104 = and i32 %59, 3
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %414, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 48
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.mv_port_priv, ptr %108, i32 0, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  %113 = and i32 %59, 2
  %114 = icmp eq i32 %113, 0
  %115 = or i1 %114, %112
  br i1 %115, label %121, label %116

116:                                              ; preds = %106
  call fastcc void @mv_process_crpb_entries(ptr noundef %52, ptr noundef %108) #11
  %117 = load i32, ptr %109, align 4
  %118 = and i32 %117, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %52) #11
  br label %121

121:                                              ; preds = %120, %116, %106
  %122 = and i32 %59, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %348, label %124, !prof !31

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 31
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ata_host, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.mv_host_priv, ptr %128, i32 0, i32 6
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = shl i32 %132, 14
  %134 = and i32 %133, -65536
  %135 = getelementptr i8, ptr %130, i32 139264
  %136 = getelementptr i8, ptr %135, i32 %134
  %137 = shl i32 %132, 13
  %138 = and i32 %137, 24576
  %139 = getelementptr i8, ptr %136, i32 %138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %140 = load ptr, ptr %107, align 4
  %141 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25
  %142 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11
  %143 = call i32 @sata_scr_read(ptr noundef %141, i32 noundef 1, ptr noundef nonnull %3) #11
  %144 = load i32, ptr %3, align 4
  %145 = call i32 @sata_scr_write_flush(ptr noundef %141, i32 noundef 1, i32 noundef %144) #11
  %146 = getelementptr i8, ptr %139, i32 8
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !32
  %148 = load i32, ptr %128, align 4
  %149 = and i32 %148, 256
  %150 = icmp eq i32 %149, 0
  %151 = and i32 %147, 256
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %124
  %155 = getelementptr i8, ptr %139, i32 868
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !33
  %157 = xor i32 %156, -1
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %157) #11, !srcloc !12
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %159

159:                                              ; preds = %154, %124
  %160 = phi i32 [ %156, %154 ], [ 0, %124 ]
  %161 = xor i32 %147, -1
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %161) #11, !srcloc !12
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %163 = and i32 %147, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %187, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %107, align 4
  %167 = getelementptr inbounds %struct.mv_port_priv, ptr %166, i32 0, i32 8
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 5
  %170 = icmp eq i32 %169, 5
  br i1 %170, label %171, label %187

171:                                              ; preds = %165
  %172 = and i32 %147, -65101825
  %173 = and i32 %147, -65101957
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = and i32 %168, 2
  %177 = icmp eq i32 %176, 0
  %178 = and i32 %147, 128
  %179 = icmp eq i32 %178, 0
  br i1 %177, label %181, label %180

180:                                              ; preds = %175
  br i1 %179, label %182, label %183

181:                                              ; preds = %175
  br i1 %179, label %183, label %187

182:                                              ; preds = %180
  call fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %52) #11
  br label %347

183:                                              ; preds = %181, %180
  %184 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 5
  %185 = load i32, ptr %184, align 4
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %185, ptr noundef nonnull @__func__.mv_handle_dev_err, i32 noundef %172, i32 noundef %168) #12
  br label %187

187:                                              ; preds = %183, %181, %171, %165, %159
  %188 = load ptr, ptr %107, align 4
  %189 = getelementptr inbounds %struct.mv_port_priv, ptr %188, i32 0, i32 8
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 3
  %195 = load i32, ptr %194, align 32
  %196 = icmp ugt i32 %195, 32
  %197 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %195
  %198 = icmp eq ptr %197, null
  %199 = or i1 %196, %198
  br i1 %199, label %216, label %200, !prof !29

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.ata_port_operations, ptr %202, i32 0, i32 22
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %195, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 65537
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %216

211:                                              ; preds = %206, %200
  %212 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %195, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 64
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %211, %206, %193
  br label %217

217:                                              ; preds = %216, %211, %187
  %218 = phi ptr [ null, %216 ], [ null, %187 ], [ %197, %211 ]
  call void @ata_ehi_clear_desc(ptr noundef %142) #11
  %219 = getelementptr inbounds %struct.mv_port_priv, ptr %140, i32 0, i32 8
  %220 = load i32, ptr %219, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.41, i32 noundef %147, i32 noundef %220) #11
  %221 = load i32, ptr %128, align 4
  %222 = and i32 %221, 256
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, i1 true, i1 %152
  br i1 %224, label %233, label %225

225:                                              ; preds = %217
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.42, i32 noundef %160) #11
  %226 = and i32 %160, 512
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %225
  %229 = and i32 %147, -65102081
  %230 = call i32 @sata_async_notification(ptr noundef %52) #11
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %347, label %232

232:                                              ; preds = %228
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.43) #11
  br label %233

233:                                              ; preds = %232, %225, %217
  br i1 %164, label %235, label %234

234:                                              ; preds = %233
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.44) #11
  br label %235

235:                                              ; preds = %234, %233
  %236 = phi i32 [ 1, %234 ], [ 0, %233 ]
  %237 = phi i32 [ 6, %234 ], [ 0, %233 ]
  %238 = and i32 %147, 3587
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %235
  %241 = or i32 %236, 16
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.45) #11
  br label %242

242:                                              ; preds = %240, %235
  %243 = phi i32 [ %241, %240 ], [ %236, %235 ]
  %244 = phi i32 [ 6, %240 ], [ %237, %235 ]
  %245 = and i32 %147, 24
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %263, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = or i32 %249, 3
  store i32 %250, ptr %248, align 4
  %251 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 5
  %252 = load i32, ptr %251, align 4
  %253 = or i32 %252, 1
  store i32 %253, ptr %251, align 4
  %254 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 3
  %255 = load i32, ptr %254, align 4
  %256 = or i32 %255, 14
  store i32 %256, ptr %254, align 4
  %257 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = or i32 %258, 16
  store i32 %259, ptr %257, align 4
  %260 = and i32 %147, 8
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, ptr @.str.47, ptr @.str.46
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull %262) #11
  br label %263

263:                                              ; preds = %247, %242
  %264 = phi i32 [ 6, %247 ], [ %244, %242 ]
  %265 = load i32, ptr %128, align 4
  %266 = and i32 %265, 64
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %263
  br i1 %152, label %284, label %269

269:                                              ; preds = %268
  %270 = load i32, ptr %219, align 4
  %271 = and i32 %270, -2
  store i32 %271, ptr %219, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.48) #11
  br label %284

272:                                              ; preds = %263
  %273 = and i32 %147, 128
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = load i32, ptr %219, align 4
  %277 = and i32 %276, -2
  store i32 %277, ptr %219, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.48) #11
  br label %278

278:                                              ; preds = %275, %272
  %279 = and i32 %147, 32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %142, ptr noundef nonnull @.str.49, i32 noundef %282) #11
  %283 = or i32 %243, 16
  br label %284

284:                                              ; preds = %281, %278, %269, %268
  %285 = phi i32 [ %243, %269 ], [ %243, %268 ], [ %283, %281 ], [ %243, %278 ]
  %286 = phi i32 [ %264, %269 ], [ %264, %268 ], [ 6, %281 ], [ %264, %278 ]
  %287 = phi i32 [ 8059, %269 ], [ 8059, %268 ], [ -65102149, %281 ], [ -65102149, %278 ]
  %288 = icmp eq i32 %285, 0
  %289 = or i32 %286, 6
  %290 = select i1 %288, i32 256, i32 %285
  %291 = select i1 %288, i32 %289, i32 %286
  %292 = load i32, ptr %3, align 4
  %293 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = or i32 %294, %292
  store i32 %295, ptr %293, align 4
  %296 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, %291
  store i32 %298, ptr %296, align 4
  %299 = icmp eq ptr %218, null
  %300 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 2
  %301 = getelementptr inbounds %struct.ata_queued_cmd, ptr %218, i32 0, i32 20
  %302 = select i1 %299, ptr %300, ptr %301
  %303 = load i32, ptr %302, align 4
  %304 = or i32 %303, %290
  store i32 %304, ptr %302, align 4
  %305 = icmp eq i32 %290, 1
  br i1 %305, label %306, label %334

306:                                              ; preds = %284
  call fastcc void @mv_stop_edma(ptr noundef %52) #11
  %307 = load i32, ptr %131, align 4
  %308 = lshr i32 %307, 2
  %309 = mul i32 %308, 9
  %310 = shl i32 %307, 1
  %311 = and i32 %310, 6
  %312 = add i32 %309, %311
  %313 = shl i32 3, %312
  %314 = load ptr, ptr %125, align 4
  %315 = getelementptr inbounds %struct.ata_host, ptr %314, i32 0, i32 5
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr inbounds %struct.mv_host_priv, ptr %316, i32 0, i32 2
  %318 = load i32, ptr %317, align 4
  %319 = xor i32 %313, -1
  %320 = and i32 %318, %319
  %321 = icmp eq i32 %320, %318
  br i1 %321, label %339, label %322

322:                                              ; preds = %306
  store i32 %320, ptr %317, align 4
  %323 = and i32 %320, 2097408
  %324 = icmp eq i32 %323, 0
  %325 = and i32 %320, -171
  %326 = select i1 %324, i32 %320, i32 %325
  %327 = and i32 %326, 2228224
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %326, -87041
  %330 = select i1 %328, i32 %326, i32 %329
  %331 = getelementptr inbounds %struct.mv_host_priv, ptr %316, i32 0, i32 8
  %332 = load ptr, ptr %331, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 %330) #11, !srcloc !12
  %333 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %339

334:                                              ; preds = %284
  %335 = and i32 %287, %147
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %334
  %338 = call i32 @ata_port_freeze(ptr noundef %52) #11
  br label %347

339:                                              ; preds = %334, %322, %306
  br i1 %299, label %345, label %340

340:                                              ; preds = %339
  %341 = getelementptr inbounds %struct.ata_queued_cmd, ptr %218, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = load ptr, ptr %342, align 64
  %344 = call i32 @ata_link_abort(ptr noundef %343) #11
  br label %347

345:                                              ; preds = %339
  %346 = call i32 @ata_port_abort(ptr noundef %52) #11
  br label %347

347:                                              ; preds = %345, %340, %337, %228, %182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %414

348:                                              ; preds = %121
  br i1 %112, label %349, label %414

349:                                              ; preds = %348
  %350 = load ptr, ptr %107, align 4
  %351 = getelementptr inbounds %struct.mv_port_priv, ptr %350, i32 0, i32 8
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %380

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 3
  %357 = load i32, ptr %356, align 32
  %358 = icmp ugt i32 %357, 32
  %359 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %357
  %360 = icmp eq ptr %359, null
  %361 = or i1 %358, %360
  br i1 %361, label %380, label %362, !prof !29

362:                                              ; preds = %355
  %363 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 1
  %364 = load ptr, ptr %363, align 4
  %365 = getelementptr inbounds %struct.ata_port_operations, ptr %364, i32 0, i32 22
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %362
  %369 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %357, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = and i32 %370, 65537
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %380

373:                                              ; preds = %368, %362
  %374 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %357, i32 4
  %375 = load i32, ptr %374, align 4
  %376 = and i32 %375, 64
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = call i32 @ata_bmdma_port_intr(ptr noundef %52, ptr noundef nonnull %359) #11
  br label %414

380:                                              ; preds = %373, %368, %355, %349
  %381 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11
  call void @ata_ehi_clear_desc(ptr noundef %381) #11
  %382 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 3
  %383 = load i32, ptr %382, align 32
  %384 = icmp ugt i32 %383, 32
  %385 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %383
  %386 = icmp eq ptr %385, null
  %387 = or i1 %384, %386
  br i1 %387, label %405, label %388, !prof !29

388:                                              ; preds = %380
  %389 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.ata_port_operations, ptr %390, i32 0, i32 22
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %399, label %394

394:                                              ; preds = %388
  %395 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %383, i32 6
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, 65537
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %394, %388
  %400 = getelementptr %struct.ata_port, ptr %52, i32 0, i32 19, i32 %383, i32 4
  %401 = load i32, ptr %400, align 4
  %402 = and i32 %401, 64
  %403 = icmp eq i32 %402, 0
  %404 = select i1 %403, ptr @.str.51, ptr @.str.53
  br label %405

405:                                              ; preds = %399, %394, %380
  %406 = phi ptr [ %404, %399 ], [ @.str.51, %380 ], [ @.str.51, %394 ]
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %381, ptr noundef nonnull @.str.54, ptr noundef nonnull %406) #11
  %407 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = or i32 %408, 256
  store i32 %409, ptr %407, align 4
  %410 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 25, i32 11, i32 3
  %411 = load i32, ptr %410, align 4
  %412 = or i32 %411, 6
  store i32 %412, ptr %410, align 4
  %413 = call i32 @ata_port_freeze(ptr noundef %52) #11
  br label %414

414:                                              ; preds = %405, %378, %348, %347, %102, %63
  %415 = phi i32 [ %103, %102 ], [ %50, %63 ], [ %103, %347 ], [ %103, %348 ], [ %103, %378 ], [ %103, %405 ]
  %416 = phi i32 [ %49, %102 ], [ %64, %63 ], [ %49, %347 ], [ %49, %348 ], [ %49, %378 ], [ %49, %405 ]
  %417 = add i32 %416, 1
  %418 = load i32, ptr %42, align 4
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %47, label %420

420:                                              ; preds = %414, %41, %30, %13
  %421 = phi i32 [ 1, %30 ], [ 0, %13 ], [ 0, %41 ], [ %415, %414 ]
  br i1 %8, label %435, label %422

422:                                              ; preds = %420
  %423 = load i32, ptr %17, align 4
  %424 = and i32 %423, 2097408
  %425 = icmp eq i32 %424, 0
  %426 = and i32 %423, -171
  %427 = select i1 %425, i32 %423, i32 %426
  %428 = and i32 %427, 2228224
  %429 = icmp eq i32 %428, 0
  %430 = and i32 %427, -87041
  %431 = select i1 %429, i32 %427, i32 %430
  %432 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 8
  %433 = load ptr, ptr %432, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 %431) #11, !srcloc !12
  %434 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %435

435:                                              ; preds = %422, %420
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !34
  %436 = load i16, ptr %1, align 4
  %437 = add i16 %436, 1
  store i16 %437, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %438 = icmp ne i32 %421, 0
  %439 = zext i1 %438 to i32
  ret i32 %439
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_qc_defer(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 29
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !31

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, %14
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %20 = load i32, ptr %19, align 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 32
  store i32 %25, ptr %23, align 4
  br label %39

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %28 = load i32, ptr %27, align 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = and i32 %9, 3
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store ptr %4, ptr %13, align 4
  br label %39

39:                                               ; preds = %38, %33, %30, %26, %22, %18, %16, %1
  %40 = phi i32 [ 0, %22 ], [ 2, %38 ], [ 2, %1 ], [ 2, %18 ], [ 2, %16 ], [ 0, %26 ], [ 0, %33 ], [ 2, %30 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_qc_prep(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %193 [
    i8 2, label %8
    i8 6, label %31
    i8 1, label %12
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %193, label %31

12:                                               ; preds = %1
  %13 = load i32, ptr %5, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %193, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %18 = load i8, ptr %17, align 1
  switch i8 %18, label %193 [
    i8 -60, label %19
    i8 -59, label %19
    i8 41, label %19
    i8 57, label %19
    i8 -50, label %19
  ]

19:                                               ; preds = %16, %16, %16, %16, %16
  %20 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ata_device, ptr %21, i32 0, i32 15
  %23 = load i32, ptr %22, align 16
  %24 = icmp ugt i32 %23, 7
  br i1 %24, label %25, label %193

25:                                               ; preds = %19
  switch i8 %18, label %193 [
    i8 -59, label %29
    i8 -50, label %26
    i8 57, label %28
  ]

26:                                               ; preds = %25
  %27 = and i32 %13, -33
  store i32 %27, ptr %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i8 [ 52, %28 ], [ 48, %25 ]
  store i8 %30, ptr %17, align 1
  br label %193

31:                                               ; preds = %8, %1
  %32 = load i32, ptr %5, align 4
  %33 = lshr i32 %32, 3
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 31
  br i1 %37, label %38, label %40, !prof !29

38:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2057, i32 noundef 9, ptr noundef null) #11
  %39 = load i32, ptr %35, align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi i32 [ %39, %38 ], [ %36, %31 ]
  %42 = shl i32 %41, 1
  %43 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 64
  %46 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 12
  %49 = or i32 %42, %34
  %50 = or i32 %48, %49
  %51 = trunc i32 %50 to i16
  %52 = xor i16 %51, 1
  %53 = getelementptr inbounds %struct.mv_port_priv, ptr %4, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.mv_port_priv, ptr %4, i32 0, i32 5, i32 %41
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr %struct.mv_crqb, ptr %57, i32 %54
  store i32 %56, ptr %58, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr %struct.mv_crqb, ptr %59, i32 %54, i32 1
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr %struct.mv_crqb, ptr %61, i32 %54, i32 2
  store i16 %52, ptr %62, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr %struct.mv_crqb, ptr %63, i32 %54, i32 3
  %65 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %66 = load i8, ptr %65, align 1
  switch i8 %66, label %78 [
    i8 -56, label %67
    i8 37, label %67
    i8 -54, label %67
    i8 53, label %67
    i8 61, label %67
    i8 96, label %70
    i8 97, label %70
  ]

67:                                               ; preds = %40, %40, %40, %40, %40
  %68 = getelementptr i16, ptr %64, i32 1
  %69 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  br label %83

70:                                               ; preds = %40, %40
  %71 = getelementptr i16, ptr %64, i32 1
  %72 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  %73 = load i8, ptr %72, align 2
  %74 = zext i8 %73 to i16
  %75 = or i16 %74, 4352
  store i16 %75, ptr %64, align 2
  %76 = getelementptr i16, ptr %64, i32 2
  %77 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  br label %83

78:                                               ; preds = %40
  %79 = zext i8 %66 to i32
  %80 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %81, ptr noundef nonnull @__func__.mv_qc_prep, i32 noundef %79) #12
  br label %193

83:                                               ; preds = %70, %67
  %84 = phi ptr [ %77, %70 ], [ %69, %67 ]
  %85 = phi i16 [ 4352, %70 ], [ 4608, %67 ]
  %86 = phi ptr [ %71, %70 ], [ %64, %67 ]
  %87 = phi ptr [ %76, %70 ], [ %68, %67 ]
  %88 = load i8, ptr %84, align 1
  %89 = zext i8 %88 to i16
  %90 = or i16 %85, %89
  store i16 %90, ptr %86, align 2
  %91 = getelementptr i16, ptr %87, i32 1
  %92 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i16
  %95 = or i16 %94, 4608
  store i16 %95, ptr %87, align 2
  %96 = getelementptr i16, ptr %87, i32 2
  %97 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  %100 = or i16 %99, 4864
  store i16 %100, ptr %91, align 2
  %101 = getelementptr i16, ptr %87, i32 3
  %102 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  %105 = or i16 %104, 4864
  store i16 %105, ptr %96, align 2
  %106 = getelementptr i16, ptr %87, i32 4
  %107 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i16
  %110 = or i16 %109, 5120
  store i16 %110, ptr %101, align 2
  %111 = getelementptr i16, ptr %87, i32 5
  %112 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  %113 = load i8, ptr %112, align 2
  %114 = zext i8 %113 to i16
  %115 = or i16 %114, 5120
  store i16 %115, ptr %106, align 2
  %116 = getelementptr i16, ptr %87, i32 6
  %117 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  %118 = load i8, ptr %117, align 2
  %119 = zext i8 %118 to i16
  %120 = or i16 %119, 5376
  store i16 %120, ptr %111, align 2
  %121 = getelementptr i16, ptr %87, i32 7
  %122 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  %125 = or i16 %124, 5376
  store i16 %125, ptr %116, align 2
  %126 = getelementptr i16, ptr %87, i32 8
  %127 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i16
  %130 = or i16 %129, 5632
  store i16 %130, ptr %121, align 2
  %131 = load i8, ptr %65, align 1
  %132 = zext i8 %131 to i16
  %133 = or i16 %132, -26880
  store i16 %133, ptr %126, align 2
  %134 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %193, label %138

138:                                              ; preds = %83
  %139 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %192, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %0, align 4
  %146 = getelementptr inbounds %struct.ata_port, ptr %145, i32 0, i32 48
  %147 = load ptr, ptr %146, align 4
  %148 = load i32, ptr %35, align 4
  %149 = getelementptr %struct.mv_port_priv, ptr %147, i32 0, i32 4, i32 %148
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %179, %142
  %152 = phi i32 [ %182, %179 ], [ 0, %142 ]
  %153 = phi ptr [ %181, %179 ], [ null, %142 ]
  %154 = phi ptr [ %180, %179 ], [ %150, %142 ]
  %155 = phi ptr [ %183, %179 ], [ %144, %142 ]
  %156 = getelementptr inbounds %struct.scatterlist, ptr %155, i32 0, i32 4
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %179, label %159

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.scatterlist, ptr %155, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  br label %162

162:                                              ; preds = %162, %159
  %163 = phi i32 [ %175, %162 ], [ %157, %159 ]
  %164 = phi i32 [ %176, %162 ], [ %161, %159 ]
  %165 = phi ptr [ %177, %162 ], [ %154, %159 ]
  %166 = and i32 %164, 65535
  %167 = add i32 %166, %163
  %168 = icmp ugt i32 %167, 65536
  %169 = sub nuw nsw i32 65536, %166
  %170 = select i1 %168, i32 %169, i32 %163
  store i32 %164, ptr %165, align 4
  %171 = getelementptr inbounds %struct.mv_sg, ptr %165, i32 0, i32 2
  store i32 0, ptr %171, align 4
  %172 = and i32 %170, 65535
  %173 = getelementptr inbounds %struct.mv_sg, ptr %165, i32 0, i32 1
  store i32 %172, ptr %173, align 4
  %174 = getelementptr inbounds %struct.mv_sg, ptr %165, i32 0, i32 3
  store i32 0, ptr %174, align 4
  %175 = sub i32 %163, %170
  %176 = add i32 %170, %164
  %177 = getelementptr %struct.mv_sg, ptr %165, i32 1
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %179, label %162

179:                                              ; preds = %162, %151
  %180 = phi ptr [ %154, %151 ], [ %177, %162 ]
  %181 = phi ptr [ %153, %151 ], [ %165, %162 ]
  %182 = add nuw i32 %152, 1
  %183 = tail call ptr @sg_next(ptr noundef %155) #11
  %184 = load i32, ptr %139, align 4
  %185 = icmp ult i32 %182, %184
  br i1 %185, label %151, label %186

186:                                              ; preds = %179
  %187 = icmp eq ptr %181, null
  br i1 %187, label %192, label %188, !prof !29

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.mv_sg, ptr %181, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, -2147483648
  store i32 %191, ptr %189, align 4
  br label %192

192:                                              ; preds = %188, %186, %138
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  br label %193

193:                                              ; preds = %192, %83, %78, %29, %25, %19, %16, %12, %8, %1
  %194 = phi i32 [ 128, %78 ], [ 0, %192 ], [ 0, %8 ], [ 0, %1 ], [ 0, %83 ], [ 0, %12 ], [ 0, %16 ], [ 0, %19 ], [ 0, %25 ], [ 0, %29 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_qc_issue(ptr noundef %0) #2 {
  %2 = alloca [5 x i32], align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 131072
  %13 = shl i32 %11, 14
  %14 = and i32 %13, -65536
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr i8, ptr %15, i32 8192
  %17 = shl i32 %11, 13
  %18 = and i32 %17, 24576
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -17
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %27 = load i8, ptr %26, align 4
  switch i8 %27, label %147 [
    i8 2, label %28
    i8 6, label %38
    i8 1, label %106
    i8 0, label %139
    i8 9, label %139
    i8 8, label %139
  ]

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 6
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ata_port_operations, ptr %34, i32 0, i32 49
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %298, label %147

38:                                               ; preds = %28, %1
  %39 = icmp eq i8 %27, 6
  %40 = zext i1 %39 to i32
  %41 = and i32 %23, 1
  %42 = icmp eq i32 %41, 0
  %43 = lshr i32 %23, 1
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, %40
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  tail call fastcc void @mv_stop_edma(ptr noundef %3) #11
  %48 = load i32, ptr %22, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi i32 [ %48, %47 ], [ %24, %38 ]
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %49
  tail call fastcc void @mv_edma_cfg(ptr noundef %3, i32 noundef %40, i32 noundef 1) #11
  %54 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 31
  store i32 %56, ptr %54, align 4
  %57 = shl nuw nsw i32 %56, 5
  %58 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1023
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !31

62:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1004, i32 noundef 9, ptr noundef null) #11
  br label %63

63:                                               ; preds = %62, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %64 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #11, !srcloc !12
  %65 = load i32, ptr %58, align 4
  %66 = and i32 %65, -1024
  %67 = or i32 %66, %57
  %68 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #11, !srcloc !12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %70 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %57) #11, !srcloc !12
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %72 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 31
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !31

79:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %80

80:                                               ; preds = %79, %63
  %81 = shl nuw nsw i32 %74, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %82 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #11, !srcloc !12
  %83 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #11, !srcloc !12
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %85 = load i32, ptr %75, align 4
  %86 = and i32 %85, -256
  %87 = or i32 %86, %81
  %88 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %87) #11, !srcloc !12
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %3, ptr noundef %19, i32 noundef 3) #11
  %90 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1) #11, !srcloc !12
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %92 = load i32, ptr %22, align 4
  %93 = or i32 %92, 1
  store i32 %93, ptr %22, align 4
  br label %94

94:                                               ; preds = %80, %49
  %95 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  %98 = and i32 %97, 31
  store i32 %98, ptr %95, align 4
  %99 = shl nuw nsw i32 %98, 5
  %100 = getelementptr inbounds %struct.mv_port_priv, ptr %21, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, -1024
  %103 = or i32 %102, %99
  %104 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %103) #11, !srcloc !12
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %298

106:                                              ; preds = %1
  %107 = load i32, ptr @mv_qc_issue.limit_warnings, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 12
  %113 = load i32, ptr %112, align 4
  %114 = udiv i32 %111, %113
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %139

116:                                              ; preds = %109
  %117 = add nsw i32 %107, -1
  store i32 %117, ptr @mv_qc_issue.limit_warnings, align 4
  %118 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %119, align 64
  %121 = load ptr, ptr %120, align 64
  %122 = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 27
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 26
  %127 = load ptr, ptr %126, align 64
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125, %116
  %130 = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.ata_link, ptr %120, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %131, i32 noundef %133) #12
  br label %139

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %137) #12
  br label %139

139:                                              ; preds = %135, %129, %109, %106, %1, %1, %1
  %140 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 512
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, ptr %25, align 4
  %146 = or i32 %145, 64
  store i32 %146, ptr %25, align 4
  br label %147

147:                                              ; preds = %144, %139, %32, %1
  %148 = load i32, ptr %25, align 4
  %149 = and i32 %148, 64
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 3, i32 1
  tail call fastcc void @mv_stop_edma(ptr noundef %3)
  %152 = load ptr, ptr %4, align 4
  %153 = getelementptr inbounds %struct.ata_host, ptr %152, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.mv_host_priv, ptr %154, i32 0, i32 6
  %156 = load ptr, ptr %155, align 4
  %157 = load i32, ptr %10, align 4
  %158 = getelementptr i8, ptr %156, i32 131072
  %159 = shl i32 %157, 14
  %160 = and i32 %159, -65536
  %161 = getelementptr i8, ptr %158, i32 %160
  %162 = getelementptr i8, ptr %161, i32 8192
  %163 = shl i32 %157, 13
  %164 = and i32 %163, 24576
  %165 = getelementptr i8, ptr %162, i32 %164
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %3, ptr noundef %165, i32 noundef %151)
  %166 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %167, align 64
  %169 = getelementptr inbounds %struct.ata_link, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 524288
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %198, label %175

175:                                              ; preds = %147
  %176 = load ptr, ptr %4, align 4
  %177 = getelementptr inbounds %struct.ata_host, ptr %176, i32 0, i32 5
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.mv_host_priv, ptr %178, i32 0, i32 6
  %180 = load ptr, ptr %179, align 4
  %181 = load i32, ptr %10, align 4
  %182 = getelementptr i8, ptr %180, i32 131072
  %183 = shl i32 %181, 14
  %184 = and i32 %183, -65536
  %185 = getelementptr i8, ptr %182, i32 %184
  %186 = getelementptr i8, ptr %185, i32 8192
  %187 = shl i32 %181, 13
  %188 = and i32 %187, 24576
  %189 = getelementptr i8, ptr %186, i32 %188
  %190 = getelementptr i8, ptr %189, i32 836
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !41
  %192 = and i32 %191, 15
  %193 = icmp eq i32 %192, %170
  br i1 %193, label %198, label %194

194:                                              ; preds = %175
  %195 = and i32 %191, -16
  %196 = or i32 %195, %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %196) #11, !srcloc !12
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %198

198:                                              ; preds = %194, %175, %147
  %199 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %200 = load i8, ptr %199, align 1
  %201 = icmp eq i8 %200, 47
  br i1 %201, label %202, label %296

202:                                              ; preds = %198
  %203 = load ptr, ptr %4, align 4
  %204 = getelementptr inbounds %struct.ata_host, ptr %203, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 128
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %296, label %209

209:                                              ; preds = %202
  %210 = load ptr, ptr %0, align 4
  %211 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 48
  %212 = load ptr, ptr %211, align 4
  %213 = load ptr, ptr %166, align 4
  %214 = load ptr, ptr %213, align 64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #11, !annotation !27
  %215 = getelementptr inbounds %struct.ata_link, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = trunc i32 %216 to i8
  call void @ata_tf_to_fis(ptr noundef %25, i8 noundef zeroext %217, i32 noundef 1, ptr noundef nonnull %2) #11
  %218 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 31
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.ata_host, ptr %219, i32 0, i32 5
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.mv_host_priv, ptr %221, i32 0, i32 6
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 7
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr i8, ptr %223, i32 131072
  %227 = shl i32 %225, 14
  %228 = and i32 %227, -65536
  %229 = getelementptr i8, ptr %226, i32 %228
  %230 = getelementptr i8, ptr %229, i32 8192
  %231 = shl i32 %225, 13
  %232 = and i32 %231, 24576
  %233 = getelementptr i8, ptr %230, i32 %232
  %234 = getelementptr i8, ptr %233, i32 836
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %236 = and i32 %235, 15
  %237 = or i32 %236, 256
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %237) #11, !srcloc !12
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %239 = getelementptr i8, ptr %233, i32 860
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  call void @arm_heavy_mb() #11
  %240 = load i32, ptr %2, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %240) #11, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  call void @arm_heavy_mb() #11
  %241 = getelementptr inbounds i32, ptr %2, i32 1
  %242 = load i32, ptr %241, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %242) #11, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  call void @arm_heavy_mb() #11
  %243 = getelementptr inbounds i32, ptr %2, i32 2
  %244 = load i32, ptr %243, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %244) #11, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  call void @arm_heavy_mb() #11
  %245 = getelementptr inbounds i32, ptr %2, i32 3
  %246 = load i32, ptr %245, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %246) #11, !srcloc !12
  %247 = or i32 %236, 768
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %247) #11, !srcloc !12
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %249 = getelementptr inbounds i32, ptr %2, i32 4
  %250 = load i32, ptr %249, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %250) #11, !srcloc !12
  %251 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %252 = getelementptr i8, ptr %233, i32 844
  br label %253

253:                                              ; preds = %253, %209
  %254 = phi i32 [ 200, %209 ], [ %258, %253 ]
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  %256 = and i32 %255, 4096
  %257 = icmp ne i32 %256, 0
  %258 = add nsw i32 %254, -1
  %259 = icmp eq i32 %258, 0
  %260 = select i1 %257, i1 true, i1 %259
  br i1 %260, label %261, label %253

261:                                              ; preds = %253
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %235) #11, !srcloc !12
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %263 = and i32 %255, 12288
  %264 = icmp eq i32 %263, 4096
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %267, ptr noundef nonnull @__func__.mv_send_fis, i32 noundef %255) #12
  br label %294

269:                                              ; preds = %261
  %270 = load i8, ptr %26, align 4
  switch i8 %270, label %287 [
    i8 9, label %271
    i8 8, label %275
    i8 1, label %277
  ]

271:                                              ; preds = %269
  %272 = getelementptr inbounds %struct.mv_port_priv, ptr %212, i32 0, i32 8
  %273 = load i32, ptr %272, align 4
  %274 = or i32 %273, 16
  store i32 %274, ptr %272, align 4
  br label %275

275:                                              ; preds = %271, %269
  %276 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 37
  store i32 1, ptr %276, align 16
  br label %289

277:                                              ; preds = %269
  %278 = getelementptr inbounds %struct.mv_port_priv, ptr %212, i32 0, i32 8
  %279 = load i32, ptr %278, align 4
  %280 = or i32 %279, 16
  store i32 %280, ptr %278, align 4
  %281 = load i32, ptr %25, align 4
  %282 = and i32 %281, 8
  %283 = icmp eq i32 %282, 0
  %284 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 37
  br i1 %283, label %286, label %285

285:                                              ; preds = %277
  store i32 1, ptr %284, align 16
  br label %289

286:                                              ; preds = %277
  store i32 2, ptr %284, align 16
  br label %289

287:                                              ; preds = %269
  %288 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 37
  store i32 3, ptr %288, align 16
  br label %289

289:                                              ; preds = %287, %286, %285, %275
  %290 = load i32, ptr %25, align 4
  %291 = and i32 %290, 64
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  call void @ata_sff_queue_pio_task(ptr noundef %214, i32 noundef 0) #11
  br label %294

294:                                              ; preds = %293, %289, %265
  %295 = phi i32 [ 256, %265 ], [ 0, %293 ], [ 0, %289 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br label %298

296:                                              ; preds = %202, %198
  %297 = call i32 @ata_bmdma_qc_issue(ptr noundef %0) #11
  br label %298

298:                                              ; preds = %296, %294, %94, %32
  %299 = phi i32 [ %297, %296 ], [ %295, %294 ], [ 0, %94 ], [ 256, %32 ]
  ret i32 %299
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_eh_freeze(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @mv_stop_edma(ptr noundef %0)
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 2
  %5 = mul i32 %4, 9
  %6 = shl i32 %3, 1
  %7 = and i32 %6, 6
  %8 = add i32 %5, %7
  %9 = shl i32 3, %8
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mv_host_priv, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %9, -1
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  store i32 %17, ptr %14, align 4
  %20 = and i32 %17, 2097408
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %17, -171
  %23 = select i1 %21, i32 %17, i32 %22
  %24 = and i32 %23, 2228224
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %23, -87041
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = getelementptr inbounds %struct.mv_host_priv, ptr %13, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %31

31:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_eh_thaw(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3
  %9 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 131072
  %12 = shl i32 %7, 14
  %13 = and i32 %12, -65536
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 8192
  %16 = shl i32 %7, 13
  %17 = and i32 %16, 24576
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !45
  tail call void @arm_heavy_mb() #11
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #11, !srcloc !12
  %20 = shl nuw nsw i32 257, %8
  %21 = xor i32 %20, -1
  %22 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #11, !srcloc !12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %24 = load i32, ptr %6, align 4
  %25 = lshr i32 %24, 2
  %26 = mul i32 %25, 9
  %27 = shl i32 %24, 1
  %28 = and i32 %27, 6
  %29 = add i32 %26, %28
  %30 = shl i32 3, %29
  %31 = shl nuw i32 1, %29
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.ata_host, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mv_host_priv, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %30, -1
  %38 = and i32 %36, %37
  %39 = or i32 %38, %31
  %40 = icmp eq i32 %39, %36
  br i1 %40, label %53, label %41

41:                                               ; preds = %1
  store i32 %39, ptr %35, align 4
  %42 = and i32 %39, 2097408
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %39, -171
  %45 = select i1 %43, i32 %39, i32 %44
  %46 = and i32 %45, 2228224
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %45, -87041
  %49 = select i1 %47, i32 %45, i32 %48
  %50 = getelementptr inbounds %struct.mv_host_priv, ptr %34, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #11, !srcloc !12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %53

53:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_hardreset(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 48
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mv_host_priv, ptr %10, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !27
  %15 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  tail call fastcc void @mv_reset_channel(ptr noundef %10, ptr noundef %14, i32 noundef %16)
  %17 = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -24
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %21 = add i32 %2, -100
  br label %22

22:                                               ; preds = %72, %3
  %23 = phi i32 [ 0, %3 ], [ %74, %72 ]
  %24 = phi i32 [ 0, %3 ], [ %75, %72 ]
  %25 = load i32, ptr %20, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %29 = add i32 %24, %2
  %30 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %29, ptr noundef nonnull %5, ptr noundef null) #11
  %31 = load i8, ptr %5, align 1, !range !46
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 %30, i32 -11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %104

35:                                               ; preds = %22
  %36 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #11
  %37 = load i32, ptr %10, align 4
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = add i32 %23, 1
  %42 = icmp sgt i32 %41, 4
  %43 = load i32, ptr %4, align 4
  %44 = icmp eq i32 %43, 289
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mv_host_priv, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %15, align 4
  %53 = shl i32 %52, 14
  %54 = and i32 %53, -65536
  %55 = getelementptr i8, ptr %51, i32 139344
  %56 = shl i32 %52, 13
  %57 = and i32 %56, 24576
  %58 = getelementptr i8, ptr %55, i32 %54
  %59 = getelementptr i8, ptr %58, i32 %57
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %61 = and i32 %60, 3967
  %62 = or i32 %61, 10162176
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %62) #11, !srcloc !12
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = sub i32 %21, %64
  %66 = icmp slt i32 %65, 0
  %67 = select i1 %66, i32 100, i32 %24
  br label %68

68:                                               ; preds = %46, %35
  %69 = phi i32 [ %23, %35 ], [ %41, %46 ]
  %70 = phi i32 [ %24, %35 ], [ %67, %46 ]
  %71 = load i32, ptr %4, align 4
  br label %72

72:                                               ; preds = %68, %40
  %73 = phi i32 [ %71, %68 ], [ %43, %40 ]
  %74 = phi i32 [ %69, %68 ], [ %41, %40 ]
  %75 = phi i32 [ %70, %68 ], [ %24, %40 ]
  switch i32 %73, label %22 [
    i32 291, label %76
    i32 275, label %76
    i32 0, label %76
  ]

76:                                               ; preds = %72, %72, %72
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.ata_host, ptr %77, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.mv_host_priv, ptr %79, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %15, align 4
  %83 = getelementptr i8, ptr %81, i32 131072
  %84 = shl i32 %82, 14
  %85 = and i32 %84, -65536
  %86 = getelementptr i8, ptr %83, i32 %85
  %87 = getelementptr i8, ptr %86, i32 8192
  %88 = shl i32 %82, 13
  %89 = and i32 %88, 24576
  %90 = getelementptr i8, ptr %87, i32 %89
  %91 = load ptr, ptr %11, align 4
  %92 = getelementptr i8, ptr %90, i32 864
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %94 = getelementptr inbounds %struct.mv_port_priv, ptr %91, i32 0, i32 9
  store i32 %93, ptr %94, align 4
  %95 = getelementptr i8, ptr %90, i32 780
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !49
  %97 = getelementptr inbounds %struct.mv_port_priv, ptr %91, i32 0, i32 9, i32 1
  store i32 %96, ptr %97, align 4
  %98 = getelementptr i8, ptr %90, i32 96
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !50
  %100 = getelementptr inbounds %struct.mv_port_priv, ptr %91, i32 0, i32 9, i32 2
  store i32 %99, ptr %100, align 4
  %101 = getelementptr i8, ptr %90, i32 108
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  %103 = getelementptr inbounds %struct.mv_port_priv, ptr %91, i32 0, i32 9, i32 3
  store i32 %102, ptr %103, align 4
  call fastcc void @mv_edma_cfg(ptr noundef %6, i32 noundef 0, i32 noundef 0)
  br label %104

104:                                              ; preds = %76, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv5_scr_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp ugt i32 %1, 2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %1, 2
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 131072
  %15 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 14
  %18 = and i32 %17, -65536
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = shl i32 %16, 8
  %21 = and i32 %20, 768
  %22 = add nuw nsw i32 %21, 256
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = getelementptr i8, ptr %23, i32 %6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !52
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %5, %3
  %27 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv5_scr_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ugt i32 %1, 2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 %1, 2
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 131072
  %15 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 14
  %18 = and i32 %17, -65536
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = shl i32 %16, 8
  %21 = and i32 %20, 768
  %22 = add nuw nsw i32 %21, 256
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = getelementptr i8, ptr %23, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %2) #11, !srcloc !12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %26

26:                                               ; preds = %5, %3
  %27 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_port_start(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 304, i32 noundef 3520) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  store ptr %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mv_port_priv, ptr %8, i32 0, i32 1
  %15 = tail call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 3520, ptr noundef %14) #11
  store ptr %15, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %91, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mv_port_priv, ptr %8, i32 0, i32 3
  %21 = tail call ptr @dma_pool_alloc(ptr noundef %19, i32 noundef 3520, ptr noundef %20) #11
  %22 = getelementptr inbounds %struct.mv_port_priv, ptr %8, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %90, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %7, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 262144
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.mv_port_priv, ptr %8, i32 0, i32 4
  %34 = getelementptr inbounds %struct.mv_port_priv, ptr %8, i32 0, i32 5
  %35 = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 17
  br label %36

36:                                               ; preds = %54, %32
  %37 = phi i32 [ 0, %32 ], [ %55, %54 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 4
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39, %36
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr %struct.mv_port_priv, ptr %8, i32 0, i32 5, i32 %37
  %46 = tail call ptr @dma_pool_alloc(ptr noundef %44, i32 noundef 3264, ptr noundef %45) #11
  %47 = getelementptr %struct.mv_port_priv, ptr %8, i32 0, i32 4, i32 %37
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %90, label %54

49:                                               ; preds = %39
  %50 = load ptr, ptr %33, align 4
  %51 = getelementptr %struct.mv_port_priv, ptr %8, i32 0, i32 4, i32 %37
  store ptr %50, ptr %51, align 4
  %52 = load i32, ptr %34, align 4
  %53 = getelementptr %struct.mv_port_priv, ptr %8, i32 0, i32 5, i32 %37
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = add nuw nsw i32 %37, 1
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %36

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #11
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.ata_host, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mv_host_priv, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %65, i32 131072
  %69 = shl i32 %67, 14
  %70 = and i32 %69, -65536
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = getelementptr i8, ptr %71, i32 8192
  %73 = shl i32 %67, 13
  %74 = and i32 %73, 24576
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = load ptr, ptr %11, align 4
  %77 = getelementptr i8, ptr %75, i32 864
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  %79 = getelementptr inbounds %struct.mv_port_priv, ptr %76, i32 0, i32 9
  store i32 %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %75, i32 780
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !49
  %82 = getelementptr inbounds %struct.mv_port_priv, ptr %76, i32 0, i32 9, i32 1
  store i32 %81, ptr %82, align 4
  %83 = getelementptr i8, ptr %75, i32 96
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !50
  %85 = getelementptr inbounds %struct.mv_port_priv, ptr %76, i32 0, i32 9, i32 2
  store i32 %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %75, i32 108
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  %88 = getelementptr inbounds %struct.mv_port_priv, ptr %76, i32 0, i32 9, i32 3
  store i32 %87, ptr %88, align 4
  tail call fastcc void @mv_edma_cfg(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %89 = load ptr, ptr %58, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %60) #11
  br label %91

90:                                               ; preds = %43, %17
  tail call fastcc void @mv_port_free_dma_mem(ptr noundef %0)
  br label %91

91:                                               ; preds = %90, %57, %10, %1
  %92 = phi i32 [ -12, %90 ], [ 0, %57 ], [ -12, %1 ], [ -12, %10 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_port_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  tail call fastcc void @mv_stop_edma(ptr noundef %0)
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 2
  %8 = mul i32 %7, 9
  %9 = shl i32 %6, 1
  %10 = and i32 %9, 6
  %11 = add i32 %8, %10
  %12 = shl i32 3, %11
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mv_host_priv, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %12, -1
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  store i32 %20, ptr %17, align 4
  %23 = and i32 %20, 2097408
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %20, -171
  %26 = select i1 %24, i32 %20, i32 %25
  %27 = and i32 %26, 2228224
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %26, -87041
  %30 = select i1 %28, i32 %26, i32 %29
  %31 = getelementptr inbounds %struct.mv_host_priv, ptr %16, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %34

34:                                               ; preds = %22, %1
  %35 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %4) #11
  tail call fastcc void @mv_port_free_dma_mem(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_stop_edma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 131072
  %11 = shl i32 %9, 14
  %12 = and i32 %11, -65536
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 8192
  %15 = shl i32 %9, 13
  %16 = and i32 %15, 24576
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mv_port_priv, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %1
  %25 = and i32 %21, -2
  store i32 %25, ptr %20, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.ata_host, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mv_host_priv, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %8, align 4
  %32 = getelementptr i8, ptr %30, i32 131072
  %33 = shl i32 %31, 14
  %34 = and i32 %33, -65536
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = getelementptr i8, ptr %35, i32 8192
  %37 = shl i32 %31, 13
  %38 = and i32 %37, 24576
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = getelementptr i8, ptr %39, i32 48
  br label %41

41:                                               ; preds = %46, %24
  %42 = phi i32 [ 0, %24 ], [ %48, %46 ]
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !53
  %44 = and i32 %43, 192
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 1073740) #11
  %48 = add nuw nsw i32 %42, 1
  %49 = icmp eq i32 %48, 3000
  br i1 %49, label %50, label %41

50:                                               ; preds = %46, %41
  %51 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 2) #11, !srcloc !12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %53

53:                                               ; preds = %58, %50
  %54 = phi i32 [ 10000, %50 ], [ %60, %58 ]
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #11
  %60 = add nsw i32 %54, -1
  %61 = icmp ugt i32 %54, 1
  br i1 %61, label %53, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %64) #12
  br label %66

66:                                               ; preds = %62, %53
  tail call fastcc void @mv_edma_cfg(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %67

67:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_clear_and_enable_port_irqs(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 131072
  %14 = shl i32 %9, 14
  %15 = and i32 %14, -65536
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %19 = shl nuw nsw i32 257, %10
  %20 = xor i32 %19, -1
  %21 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #11, !srcloc !12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = getelementptr i8, ptr %1, i32 868
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #11, !srcloc !12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, ptr %8, align 4
  %31 = lshr i32 %30, 2
  %32 = mul i32 %31, 9
  %33 = shl i32 %30, 1
  %34 = and i32 %33, 6
  %35 = add i32 %32, %34
  %36 = shl i32 3, %35
  %37 = shl i32 %2, %35
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.ata_host, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mv_host_priv, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %36, -1
  %44 = and i32 %42, %43
  %45 = or i32 %44, %37
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %59, label %47

47:                                               ; preds = %29
  store i32 %45, ptr %41, align 4
  %48 = and i32 %45, 2097408
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %45, -171
  %51 = select i1 %49, i32 %45, i32 %50
  %52 = and i32 %51, 2228224
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %51, -87041
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = getelementptr inbounds %struct.mv_host_priv, ptr %40, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !12
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %59

59:                                               ; preds = %47, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_edma_cfg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mv_host_priv, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mv_port_priv, ptr %5, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -23
  store i32 %16, ptr %14, align 4
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %233

20:                                               ; preds = %3
  %21 = and i32 %17, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.ata_host, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mv_host_priv, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 66800
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !55
  %31 = icmp eq i32 %1, 0
  %32 = and i32 %30, -4194305
  %33 = select i1 %31, i32 0, i32 4194304
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %34, %30
  br i1 %35, label %233, label %36

36:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !56
  tail call void @arm_heavy_mb() #11
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #11, !srcloc !12
  br label %233

39:                                               ; preds = %20
  %40 = and i32 %17, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %233, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %44 = load i32, ptr %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = and i32 %46, %1
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.mv_port_priv, ptr %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.mv_port_priv, ptr %48, i32 0, i32 9, i32 1
  %51 = getelementptr inbounds %struct.mv_port_priv, ptr %48, i32 0, i32 9, i32 2
  %52 = load i32, ptr %50, align 4
  %53 = load i32, ptr %51, align 4
  %54 = or i32 %53, 4
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %42
  %57 = load i32, ptr %49, align 4
  %58 = or i32 %52, 256
  %59 = icmp eq i32 %1, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = or i32 %57, 65536
  %62 = and i32 %53, -5
  br label %69

63:                                               ; preds = %56
  %64 = or i32 %57, 65792
  br label %69

65:                                               ; preds = %42
  %66 = and i32 %52, -257
  %67 = load i32, ptr %49, align 4
  %68 = and i32 %67, -65793
  br label %69

69:                                               ; preds = %65, %63, %60
  %70 = phi i32 [ %57, %60 ], [ %57, %63 ], [ %67, %65 ]
  %71 = phi i32 [ %61, %60 ], [ %64, %63 ], [ %68, %65 ]
  %72 = phi i32 [ %58, %60 ], [ %58, %63 ], [ %66, %65 ]
  %73 = phi i32 [ %62, %60 ], [ %54, %63 ], [ %54, %65 ]
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds %struct.ata_host, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.mv_host_priv, ptr %76, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %12, align 4
  %80 = getelementptr i8, ptr %78, i32 131072
  %81 = shl i32 %79, 14
  %82 = and i32 %81, -65536
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = getelementptr i8, ptr %83, i32 8192
  %85 = shl i32 %79, 13
  %86 = and i32 %85, 24576
  %87 = getelementptr i8, ptr %84, i32 %86
  %88 = getelementptr i8, ptr %87, i32 864
  %89 = icmp eq i32 %70, %71
  br i1 %89, label %100, label %90

90:                                               ; preds = %69
  store i32 %71, ptr %49, align 4
  %91 = ptrtoint ptr %88 to i32
  %92 = and i32 %91, 65535
  %93 = add nsw i32 %92, -768
  %94 = icmp ult i32 %93, 61
  %95 = and i32 %91, 7
  %96 = icmp eq i32 %95, 4
  %97 = and i1 %96, %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %71) #11
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %100

100:                                              ; preds = %98, %90, %69
  %101 = getelementptr i8, ptr %87, i32 780
  %102 = load i32, ptr %50, align 4
  %103 = icmp eq i32 %102, %72
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  store i32 %72, ptr %50, align 4
  %105 = ptrtoint ptr %101 to i32
  %106 = and i32 %105, 65535
  %107 = add nsw i32 %106, -768
  %108 = icmp ult i32 %107, 61
  %109 = and i32 %105, 7
  %110 = icmp eq i32 %109, 4
  %111 = and i1 %110, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %72) #11
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %114

114:                                              ; preds = %112, %104, %100
  %115 = getelementptr i8, ptr %87, i32 96
  %116 = load i32, ptr %51, align 4
  %117 = icmp eq i32 %116, %73
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  store i32 %73, ptr %51, align 4
  %119 = ptrtoint ptr %115 to i32
  %120 = and i32 %119, 65535
  %121 = add nsw i32 %120, -768
  %122 = icmp ult i32 %121, 61
  %123 = and i32 %119, 7
  %124 = icmp eq i32 %123, 4
  %125 = and i1 %124, %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %73) #11
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %128

128:                                              ; preds = %126, %118, %114
  br i1 %55, label %132, label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %14, align 4
  %131 = or i32 %130, 4
  store i32 %131, ptr %14, align 4
  br label %132

132:                                              ; preds = %129, %128
  %133 = phi i32 [ 8454175, %129 ], [ 8388639, %128 ]
  %134 = icmp eq i32 %2, 0
  %135 = load i32, ptr %9, align 4
  %136 = and i32 %135, 2048
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 4456448, i32 4194304
  %139 = select i1 %134, i32 0, i32 %138
  %140 = or i32 %133, %139
  %141 = shl i32 %135, 7
  %142 = and i32 %141, 131072
  %143 = or i32 %142, %140
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr inbounds %struct.mv_port_priv, ptr %144, i32 0, i32 9, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -2
  %148 = zext i1 %134 to i32
  %149 = or i32 %147, %148
  %150 = load ptr, ptr %6, align 4
  %151 = getelementptr inbounds %struct.ata_host, ptr %150, i32 0, i32 5
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.mv_host_priv, ptr %152, i32 0, i32 6
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %12, align 4
  %156 = getelementptr i8, ptr %154, i32 131072
  %157 = shl i32 %155, 14
  %158 = and i32 %157, -65536
  %159 = getelementptr i8, ptr %156, i32 %158
  %160 = getelementptr i8, ptr %159, i32 8192
  %161 = shl i32 %155, 13
  %162 = and i32 %161, 24576
  %163 = getelementptr i8, ptr %160, i32 %162
  %164 = getelementptr i8, ptr %163, i32 108
  %165 = icmp eq i32 %146, %149
  br i1 %165, label %176, label %166

166:                                              ; preds = %132
  store i32 %149, ptr %145, align 4
  %167 = ptrtoint ptr %164 to i32
  %168 = and i32 %167, 65535
  %169 = add nsw i32 %168, -768
  %170 = icmp ult i32 %169, 61
  %171 = and i32 %167, 7
  %172 = icmp eq i32 %171, 4
  %173 = and i1 %172, %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %149) #11
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %176

176:                                              ; preds = %174, %166, %132
  %177 = load i32, ptr %9, align 4
  %178 = and i32 %177, 2048
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %233, label %180

180:                                              ; preds = %176
  %181 = icmp eq i32 %1, 0
  %182 = load ptr, ptr %6, align 4
  %183 = getelementptr inbounds %struct.ata_host, ptr %182, i32 0, i32 5
  %184 = load ptr, ptr %183, align 4
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 4096
  %187 = icmp eq i32 %186, 0
  br i1 %181, label %202, label %188

188:                                              ; preds = %180
  br i1 %187, label %189, label %236

189:                                              ; preds = %188
  %190 = or i32 %185, 4096
  store i32 %190, ptr %184, align 4
  %191 = load ptr, ptr %183, align 4
  %192 = getelementptr inbounds %struct.mv_host_priv, ptr %191, i32 0, i32 6
  %193 = load ptr, ptr %192, align 4
  %194 = load i32, ptr %12, align 4
  %195 = getelementptr i8, ptr %193, i32 131072
  %196 = shl i32 %194, 14
  %197 = and i32 %196, -65536
  %198 = getelementptr i8, ptr %195, i32 %197
  %199 = getelementptr i8, ptr %198, i32 44
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !57
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !58
  tail call void @arm_heavy_mb() #11
  %201 = or i32 %200, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %201) #11, !srcloc !12
  br label %236

202:                                              ; preds = %180
  br i1 %187, label %241, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.mv_host_priv, ptr %184, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %220, label %210

207:                                              ; preds = %210
  %208 = add nuw i32 %211, 1
  %209 = icmp eq i32 %208, %205
  br i1 %209, label %220, label %210

210:                                              ; preds = %207, %203
  %211 = phi i32 [ %208, %207 ], [ 0, %203 ]
  %212 = getelementptr %struct.ata_host, ptr %182, i32 0, i32 12, i32 %211
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.ata_port, ptr %213, i32 0, i32 48
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.mv_port_priv, ptr %215, i32 0, i32 8
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %207, label %233

220:                                              ; preds = %207, %203
  %221 = and i32 %185, -4097
  store i32 %221, ptr %184, align 4
  %222 = load ptr, ptr %183, align 4
  %223 = getelementptr inbounds %struct.mv_host_priv, ptr %222, i32 0, i32 6
  %224 = load ptr, ptr %223, align 4
  %225 = load i32, ptr %12, align 4
  %226 = getelementptr i8, ptr %224, i32 131072
  %227 = shl i32 %225, 14
  %228 = and i32 %227, -65536
  %229 = getelementptr i8, ptr %226, i32 %228
  %230 = getelementptr i8, ptr %229, i32 44
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !59
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !60
  tail call void @arm_heavy_mb() #11
  %232 = and i32 %231, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %232) #11, !srcloc !12
  br label %233

233:                                              ; preds = %220, %210, %176, %39, %36, %23, %3
  %234 = phi i32 [ 31, %39 ], [ 287, %3 ], [ %143, %176 ], [ 10271, %23 ], [ 10271, %36 ], [ %143, %220 ], [ %143, %210 ]
  %235 = icmp eq i32 %1, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %233, %189, %188
  %237 = phi i32 [ %234, %233 ], [ %143, %189 ], [ %143, %188 ]
  %238 = or i32 %237, 32
  %239 = load i32, ptr %14, align 4
  %240 = or i32 %239, 2
  store i32 %240, ptr %14, align 4
  br label %241

241:                                              ; preds = %236, %233, %202
  %242 = phi i32 [ %238, %236 ], [ %234, %233 ], [ %143, %202 ]
  %243 = getelementptr i8, ptr %11, i32 131072
  %244 = shl i32 %13, 14
  %245 = and i32 %244, -65536
  %246 = getelementptr i8, ptr %243, i32 %245
  %247 = getelementptr i8, ptr %246, i32 8192
  %248 = shl i32 %13, 13
  %249 = and i32 %248, 24576
  %250 = getelementptr i8, ptr %247, i32 %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %242) #11, !srcloc !12
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %250) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_queue_pio_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_reset_channel(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr i8, ptr %1, i32 131072
  %5 = shl i32 %2, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 8192
  %9 = shl i32 %2, 13
  %10 = and i32 %9, 24576
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 2) #11, !srcloc !12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %14

14:                                               ; preds = %19, %3
  %15 = phi i32 [ 10000, %3 ], [ %21, %19 ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #11
  %21 = add nsw i32 %15, -1
  %22 = icmp ugt i32 %15, 1
  br i1 %22, label %14, label %23

23:                                               ; preds = %19, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #11, !srcloc !12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %25 = load i32, ptr %0, align 4
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %11, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %31 = and i32 %30, 3967
  %32 = or i32 %31, 10162304
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %32) #11, !srcloc !12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %34

34:                                               ; preds = %28, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #11, !srcloc !12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 5368700) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #11, !srcloc !12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %38 = getelementptr inbounds %struct.mv_host_priv, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  %41 = load i32, ptr %0, align 4
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #11
  br label %45

45:                                               ; preds = %44, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_port_free_dma_mem(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef nonnull %8, i32 noundef %14) #11
  store ptr null, ptr %7, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %17, i32 noundef %23) #11
  store ptr null, ptr %16, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 17
  %26 = getelementptr %struct.mv_port_priv, ptr %7, i32 0, i32 4, i32 0
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr %struct.mv_port_priv, ptr %7, i32 0, i32 5, i32 0
  %32 = load i32, ptr %31, align 4
  tail call void @dma_pool_free(ptr noundef %30, ptr noundef nonnull %27, i32 noundef %32) #11
  store ptr null, ptr %26, align 4
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %48, %33
  %35 = phi i32 [ %49, %48 ], [ 1, %33 ]
  %36 = getelementptr %struct.mv_port_priv, ptr %7, i32 0, i32 4, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %5, align 4
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load ptr, ptr %25, align 4
  %45 = getelementptr %struct.mv_port_priv, ptr %7, i32 0, i32 5, i32 %35
  %46 = load i32, ptr %45, align 4
  tail call void @dma_pool_free(ptr noundef %44, ptr noundef nonnull %37, i32 noundef %46) #11
  br label %47

47:                                               ; preds = %43, %39
  store ptr null, ptr %36, align 4
  br label %48

48:                                               ; preds = %47, %34
  %49 = add nuw nsw i32 %35, 1
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %34, !llvm.loop !61

51:                                               ; preds = %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mv_check_atapi_dma(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %9 [
    i8 8, label %10
    i8 40, label %10
    i8 -88, label %10
    i8 10, label %10
    i8 42, label %10
    i8 -86, label %10
    i8 -66, label %10
    i8 -65, label %10
    i8 93, label %10
  ]

9:                                                ; preds = %5, %1
  br label %10

10:                                               ; preds = %9, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %11 = phi i32 [ -95, %9 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv6_dev_config(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 64
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = and i32 %3, -9
  store i32 %13, ptr %2, align 4
  %14 = load ptr, ptr %7, align 64
  %15 = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_link, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %16, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_softreset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %14 = load ptr, ptr %13, align 64
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = phi i32 [ %18, %16 ], [ 15, %9 ], [ 15, %12 ]
  %21 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mv_host_priv, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %26, i32 131072
  %30 = shl i32 %28, 14
  %31 = and i32 %30, -65536
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = getelementptr i8, ptr %32, i32 8192
  %34 = shl i32 %28, 13
  %35 = and i32 %34, 24576
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = getelementptr i8, ptr %36, i32 836
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !41
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, %20
  br i1 %40, label %45, label %41

41:                                               ; preds = %19
  %42 = and i32 %38, -16
  %43 = or i32 %42, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %43) #11, !srcloc !12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %45

45:                                               ; preds = %41, %19, %3
  %46 = tail call i32 @ata_sff_softreset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_pmp_hardreset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %14 = load ptr, ptr %13, align 64
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = phi i32 [ %18, %16 ], [ 15, %9 ], [ 15, %12 ]
  %21 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mv_host_priv, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %26, i32 131072
  %30 = shl i32 %28, 14
  %31 = and i32 %30, -65536
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = getelementptr i8, ptr %32, i32 8192
  %34 = shl i32 %28, 13
  %35 = and i32 %34, 24576
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = getelementptr i8, ptr %36, i32 836
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !41
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, %20
  br i1 %40, label %45, label %41

41:                                               ; preds = %19
  %42 = and i32 %38, -16
  %43 = or i32 %42, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %43) #11, !srcloc !12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %45

45:                                               ; preds = %41, %19, %3
  %46 = tail call i32 @sata_std_hardreset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_pmp_error_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %5, -9
  store i32 %11, ptr %4, align 4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  br label %15

15:                                               ; preds = %26, %13
  %16 = phi i32 [ 0, %13 ], [ %28, %26 ]
  %17 = phi i32 [ %10, %13 ], [ %27, %26 ]
  %18 = shl nuw i32 1, %16
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %14, align 8
  %23 = getelementptr %struct.ata_link, ptr %22, i32 %16
  %24 = xor i32 %18, -1
  %25 = and i32 %17, %24
  tail call void @ata_eh_analyze_ncq_error(ptr noundef %23) #11
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ %25, %21 ], [ %17, %15 ]
  %28 = add i32 %16, 1
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %15

30:                                               ; preds = %26, %8
  %31 = tail call i32 @ata_port_freeze(ptr noundef %0) #11
  br label %32

32:                                               ; preds = %30, %1
  tail call void @sata_pmp_error_handler(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_scr_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp ult i32 %1, 4
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.mv_scr_write, i32 0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mv_host_priv, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 131072
  %18 = shl i32 %16, 14
  %19 = and i32 %18, -65536
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr i8, ptr %20, i32 8192
  %22 = shl i32 %16, 13
  %23 = and i32 %22, 24576
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %7
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !63
  store i32 %26, ptr %2, align 4
  br label %27

27:                                               ; preds = %5, %3
  %28 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_scr_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %1, 4
  br i1 %4, label %5, label %67

5:                                                ; preds = %3
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.mv_scr_write, i32 0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mv_host_priv, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 131072
  %18 = shl i32 %16, 14
  %19 = and i32 %18, -65536
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr i8, ptr %20, i32 8192
  %22 = shl i32 %16, 13
  %23 = and i32 %22, 24576
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %7
  %26 = icmp eq i32 %1, 2
  br i1 %26, label %27, label %64

27:                                               ; preds = %5
  %28 = and i32 %2, 15
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !64
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27
  %35 = or i32 %2, 61440
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ %2, %30 ]
  %38 = load i32, ptr %12, align 4
  %39 = and i32 %38, 8192
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 64
  %43 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 31
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ata_host, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mv_host_priv, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %48, i32 131072
  %52 = shl i32 %50, 14
  %53 = and i32 %52, -65536
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = getelementptr i8, ptr %54, i32 8192
  %56 = shl i32 %50, 13
  %57 = and i32 %56, 24576
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = getelementptr i8, ptr %58, i32 88
  %60 = and i32 %37, 240
  %61 = icmp eq i32 %60, 16
  %62 = select i1 %61, i32 7, i32 551
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %62) #11, !srcloc !12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %64

64:                                               ; preds = %41, %36, %5
  %65 = phi i32 [ %37, %41 ], [ %37, %36 ], [ %2, %5 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %65) #11, !srcloc !12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %67

67:                                               ; preds = %64, %3
  %68 = phi i32 [ 0, %64 ], [ -22, %3 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mv_sff_check_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #11, !srcloc !65
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !66
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_port_priv, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = and i8 %4, -119
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = and i32 %8, -17
  store i32 %15, ptr %7, align 4
  br label %16

16:                                               ; preds = %14, %11, %1
  %17 = phi i8 [ %4, %14 ], [ %4, %1 ], [ -128, %11 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_sff_irq_clear(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 131072
  %11 = shl i32 %9, 14
  %12 = and i32 %11, -65536
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 8192
  %15 = shl i32 %9, 13
  %16 = and i32 %15, 24576
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %0, ptr noundef %17, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_bmdma_setup(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_host_priv, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.mv_port_priv, ptr %12, i32 0, i32 4, i32 %20
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %51, %16
  %24 = phi i32 [ %54, %51 ], [ 0, %16 ]
  %25 = phi ptr [ %53, %51 ], [ null, %16 ]
  %26 = phi ptr [ %52, %51 ], [ %22, %16 ]
  %27 = phi ptr [ %55, %51 ], [ %18, %16 ]
  %28 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i32 [ %47, %34 ], [ %29, %31 ]
  %36 = phi i32 [ %48, %34 ], [ %33, %31 ]
  %37 = phi ptr [ %49, %34 ], [ %26, %31 ]
  %38 = and i32 %36, 65535
  %39 = add i32 %38, %35
  %40 = icmp ugt i32 %39, 65536
  %41 = sub nuw nsw i32 65536, %38
  %42 = select i1 %40, i32 %41, i32 %35
  store i32 %36, ptr %37, align 4
  %43 = getelementptr inbounds %struct.mv_sg, ptr %37, i32 0, i32 2
  store i32 0, ptr %43, align 4
  %44 = and i32 %42, 65535
  %45 = getelementptr inbounds %struct.mv_sg, ptr %37, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mv_sg, ptr %37, i32 0, i32 3
  store i32 0, ptr %46, align 4
  %47 = sub i32 %35, %42
  %48 = add i32 %42, %36
  %49 = getelementptr %struct.mv_sg, ptr %37, i32 1
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %51, label %34

51:                                               ; preds = %34, %23
  %52 = phi ptr [ %26, %23 ], [ %49, %34 ]
  %53 = phi ptr [ %25, %23 ], [ %37, %34 ]
  %54 = add nuw i32 %24, 1
  %55 = tail call ptr @sg_next(ptr noundef %27) #11
  %56 = load i32, ptr %13, align 4
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %23, label %58

58:                                               ; preds = %51
  %59 = icmp eq ptr %53, null
  br i1 %59, label %64, label %60, !prof !29

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.mv_sg, ptr %53, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, -2147483648
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %58, %1
  %65 = getelementptr i8, ptr %8, i32 131072
  %66 = shl i32 %10, 14
  %67 = and i32 %66, -65536
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = getelementptr i8, ptr %68, i32 8192
  %70 = shl i32 %10, 13
  %71 = and i32 %70, 24576
  %72 = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !67
  tail call void @arm_heavy_mb() #11
  %73 = getelementptr i8, ptr %72, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !68
  tail call void @arm_heavy_mb() #11
  %74 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %75 = getelementptr i8, ptr %72, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #11, !srcloc !12
  %76 = load i32, ptr %74, align 4
  %77 = getelementptr %struct.mv_port_priv, ptr %12, i32 0, i32 5, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %72, i32 556
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #11, !srcloc !12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %81 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ata_port_operations, ptr %82, i32 0, i32 43
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  tail call void %84(ptr noundef %2, ptr noundef %85) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_bmdma_start(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_host_priv, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 131072
  %12 = shl i32 %10, 14
  %13 = and i32 %12, -65536
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 8192
  %16 = shl i32 %10, 13
  %17 = and i32 %16, 24576
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = xor i32 %21, 9
  %23 = getelementptr i8, ptr %18, i32 548
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #11, !srcloc !12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_bmdma_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_host_priv, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 131072
  %12 = shl i32 %10, 14
  %13 = and i32 %12, -65536
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 8192
  %16 = shl i32 %10, 13
  %17 = and i32 %16, 24576
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr i8, ptr %18, i32 548
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !69
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = and i32 %20, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %24) #11, !srcloc !12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  tail call void @ata_sff_dma_pause(ptr noundef %2) #11
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mv_bmdma_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 131072
  %11 = shl i32 %9, 14
  %12 = and i32 %11, -65536
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr i8, ptr %13, i32 8192
  %15 = shl i32 %9, 13
  %16 = and i32 %15, 24576
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr i8, ptr %17, i32 552
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !70
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %1
  %23 = and i32 %19, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = trunc i32 %23 to i8
  %27 = or i8 %26, 4
  br label %57

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.ata_host, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mv_host_priv, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %8, align 4
  %35 = getelementptr i8, ptr %33, i32 131072
  %36 = shl i32 %34, 14
  %37 = and i32 %36, -65536
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr i8, ptr %38, i32 8192
  %40 = shl i32 %34, 13
  %41 = and i32 %40, 24576
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = getelementptr i8, ptr %42, i32 548
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !69
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = and i32 %44, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %48) #11, !srcloc !12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  tail call void @ata_sff_dma_pause(ptr noundef %0) #11
  br label %50

50:                                               ; preds = %47, %28
  %51 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #11, !srcloc !65
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !66
  %54 = lshr i8 %53, 5
  %55 = and i8 %54, 4
  %56 = xor i8 %55, 4
  br label %57

57:                                               ; preds = %50, %25, %1
  %58 = phi i8 [ %27, %25 ], [ 1, %1 ], [ %56, %50 ]
  ret i8 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_softreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_analyze_ncq_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_qc_prep_iie(ptr noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %159 [
    i8 2, label %8
    i8 6, label %8
  ]

8:                                                ; preds = %1, %1
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %159, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 4
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 1
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 31
  br i1 %18, label %19, label %21, !prof !29

19:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2150, i32 noundef 9, ptr noundef null) #11
  %20 = load i32, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %17, %12 ]
  %23 = shl i32 %22, 1
  %24 = or i32 %23, %15
  %25 = shl i32 %22, 17
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.ata_link, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 12
  %33 = and i32 %32, 61440
  %34 = or i32 %26, %33
  %35 = xor i32 %34, 1
  %36 = getelementptr inbounds %struct.mv_port_priv, ptr %4, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr %struct.mv_crqb, ptr %38, i32 %37
  %40 = getelementptr %struct.mv_port_priv, ptr %4, i32 0, i32 5, i32 %22
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.mv_crqb_iie, ptr %39, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mv_crqb_iie, ptr %39, i32 0, i32 2
  store i32 %35, ptr %43, align 4
  %44 = load i8, ptr %9, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, 24
  %51 = or i32 %50, %46
  %52 = getelementptr inbounds %struct.mv_crqb_iie, ptr %39, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %59, %55
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 16
  %65 = or i32 %60, %64
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = or i32 %65, %69
  %71 = getelementptr [4 x i32], ptr %52, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %78, %74
  %80 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  %81 = load i8, ptr %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or i32 %79, %83
  %85 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  %86 = load i8, ptr %85, align 2
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 %87, 24
  %89 = or i32 %84, %88
  %90 = getelementptr [4 x i32], ptr %52, i32 0, i32 2
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i32
  %94 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or i32 %97, %93
  %99 = getelementptr [4 x i32], ptr %52, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %159, label %104

104:                                              ; preds = %21
  %105 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %158, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %0, align 4
  %112 = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 48
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %16, align 4
  %115 = getelementptr %struct.mv_port_priv, ptr %113, i32 0, i32 4, i32 %114
  %116 = load ptr, ptr %115, align 4
  br label %117

117:                                              ; preds = %145, %108
  %118 = phi i32 [ %148, %145 ], [ 0, %108 ]
  %119 = phi ptr [ %147, %145 ], [ null, %108 ]
  %120 = phi ptr [ %146, %145 ], [ %116, %108 ]
  %121 = phi ptr [ %149, %145 ], [ %110, %108 ]
  %122 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %128, %125
  %129 = phi i32 [ %141, %128 ], [ %123, %125 ]
  %130 = phi i32 [ %142, %128 ], [ %127, %125 ]
  %131 = phi ptr [ %143, %128 ], [ %120, %125 ]
  %132 = and i32 %130, 65535
  %133 = add i32 %132, %129
  %134 = icmp ugt i32 %133, 65536
  %135 = sub nuw nsw i32 65536, %132
  %136 = select i1 %134, i32 %135, i32 %129
  store i32 %130, ptr %131, align 4
  %137 = getelementptr inbounds %struct.mv_sg, ptr %131, i32 0, i32 2
  store i32 0, ptr %137, align 4
  %138 = and i32 %136, 65535
  %139 = getelementptr inbounds %struct.mv_sg, ptr %131, i32 0, i32 1
  store i32 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.mv_sg, ptr %131, i32 0, i32 3
  store i32 0, ptr %140, align 4
  %141 = sub i32 %129, %136
  %142 = add i32 %136, %130
  %143 = getelementptr %struct.mv_sg, ptr %131, i32 1
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %145, label %128

145:                                              ; preds = %128, %117
  %146 = phi ptr [ %120, %117 ], [ %143, %128 ]
  %147 = phi ptr [ %119, %117 ], [ %131, %128 ]
  %148 = add nuw i32 %118, 1
  %149 = tail call ptr @sg_next(ptr noundef %121) #11
  %150 = load i32, ptr %105, align 4
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %117, label %152

152:                                              ; preds = %145
  %153 = icmp eq ptr %147, null
  br i1 %153, label %158, label %154, !prof !29

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.mv_sg, ptr %147, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, -2147483648
  store i32 %157, ptr %155, align 4
  br label %158

158:                                              ; preds = %154, %152, %104
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  br label %159

159:                                              ; preds = %158, %21, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv5_phy_errata(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 131072
  %5 = shl i32 %2, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = shl i32 %2, 8
  %9 = and i32 %8, 768
  %10 = add nuw nsw i32 %9, 256
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = load i32, ptr %0, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %11, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !71
  %18 = or i32 %17, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !72
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #11, !srcloc !12
  %19 = getelementptr i8, ptr %11, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !73
  %21 = and i32 %20, -4
  %22 = or i32 %21, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !74
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #11, !srcloc !12
  br label %23

23:                                               ; preds = %15, %3
  %24 = getelementptr i8, ptr %11, i32 116
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !75
  %26 = and i32 %25, -6369
  %27 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %2
  %28 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %26
  %31 = load i32, ptr %27, align 4
  %32 = or i32 %30, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !76
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %32) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv5_enable_leds(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !77
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr i8, ptr %1, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #11, !srcloc !12
  %4 = getelementptr i8, ptr %1, i32 3372
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !78
  %6 = or i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !79
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv5_read_preamp(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %2, i32 131072
  %5 = shl i32 %1, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = shl i32 %1, 8
  %9 = and i32 %8, 768
  %10 = add nuw nsw i32 %9, 256
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr i8, ptr %11, i32 116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !80
  %14 = and i32 %13, 6144
  %15 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1
  %16 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1, i32 1
  store i32 %14, ptr %16, align 4
  %17 = and i32 %13, 224
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv5_reset_hc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 131072
  %9 = getelementptr i8, ptr %1, i32 139264
  br label %10

10:                                               ; preds = %36, %7
  %11 = phi i32 [ 0, %7 ], [ %47, %36 ]
  %12 = shl i32 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %34, %13 ]
  %15 = add nuw nsw i32 %14, %12
  %16 = shl i32 %15, 14
  %17 = and i32 %16, -65536
  %18 = getelementptr i8, ptr %9, i32 %17
  %19 = shl i32 %15, 13
  %20 = and i32 %19, 24576
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call fastcc void @mv_reset_channel(ptr noundef %5, ptr noundef %1, i32 noundef %15) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  %22 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !82
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 287) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  %23 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  %24 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  %25 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !86
  tail call void @arm_heavy_mb() #11
  %26 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !87
  tail call void @arm_heavy_mb() #11
  %27 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !88
  tail call void @arm_heavy_mb() #11
  %28 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !89
  tail call void @arm_heavy_mb() #11
  %29 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !90
  tail call void @arm_heavy_mb() #11
  %30 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  %31 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %32 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %33 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 188) #11, !srcloc !12
  %34 = add nuw nsw i32 %14, 1
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %13

36:                                               ; preds = %13
  %37 = shl i32 %11, 16
  %38 = getelementptr i8, ptr %8, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !94
  tail call void @arm_heavy_mb() #11
  %39 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %40 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  %41 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !97
  tail call void @arm_heavy_mb() #11
  %42 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #11, !srcloc !12
  %43 = getelementptr i8, ptr %38, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !98
  %45 = and i32 %44, 471604252
  %46 = or i32 %45, 50529027
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !99
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %46) #11, !srcloc !12
  %47 = add nuw i32 %11, 1
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %49, label %10

49:                                               ; preds = %36, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv5_reset_flash(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !100
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr i8, ptr %1, i32 66668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 265289727) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv5_reset_bus(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -102
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 20608
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %4, i32 -92
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr i8, ptr %1, i32 3372
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !101
  %15 = or i32 %14, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !102
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #11, !srcloc !12
  br label %16

16:                                               ; preds = %12, %8
  tail call void @mv_reset_pci_bus(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_reset_pci_bus(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 3328
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !103
  %7 = and i32 %6, -16711681
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !104
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !105
  tail call void @arm_heavy_mb() #11
  %8 = getelementptr i8, ptr %1, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !106
  tail call void @arm_heavy_mb() #11
  %9 = getelementptr i8, ptr %1, i32 3128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !107
  tail call void @arm_heavy_mb() #11
  %10 = getelementptr i8, ptr %1, i32 7428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 65791) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !108
  tail call void @arm_heavy_mb() #11
  %11 = getelementptr i8, ptr %1, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !109
  tail call void @arm_heavy_mb() #11
  %12 = getelementptr inbounds %struct.mv_host_priv, ptr %4, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !110
  tail call void @arm_heavy_mb() #11
  %15 = getelementptr inbounds %struct.mv_host_priv, ptr %4, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %1, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !111
  tail call void @arm_heavy_mb() #11
  %18 = getelementptr i8, ptr %1, i32 7488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !112
  tail call void @arm_heavy_mb() #11
  %19 = getelementptr i8, ptr %1, i32 7492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %20 = getelementptr i8, ptr %1, i32 7496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !114
  tail call void @arm_heavy_mb() #11
  %21 = getelementptr i8, ptr %1, i32 7504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv6_phy_errata(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 131072
  %5 = shl i32 %2, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 8192
  %9 = shl i32 %2, 13
  %10 = and i32 %9, 24576
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = load i32, ptr %0, align 4
  %13 = and i32 %12, 24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %11, i32 816
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !115
  %18 = and i32 %17, 2147418111
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !116
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %19) #11, !srcloc !12
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 42949600) #11
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !117
  %22 = and i32 %21, 2147418111
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !118
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %22) #11, !srcloc !12
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 42949600) #11
  br label %24

24:                                               ; preds = %15, %3
  %25 = getelementptr i8, ptr %11, i32 784
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !119
  %27 = load i32, ptr %0, align 4
  br i1 %14, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %11, i32 788
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !120
  %31 = load i32, ptr %0, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %30, -1575223296
  %35 = or i32 %34, 5
  %36 = and i32 %30, -4
  %37 = or i32 %36, 1
  %38 = select i1 %33, i32 %37, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !121
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %38) #11, !srcloc !12
  br label %39

39:                                               ; preds = %28, %24
  %40 = and i32 %27, 2048
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %26, 31
  %43 = or i32 %42, -1431650272
  %44 = and i32 %43, -1431650269
  %45 = select i1 %41, i32 %43, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %45) #11, !srcloc !12
  %46 = getelementptr i8, ptr %11, i32 816
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !123
  %48 = and i32 %47, -67553
  %49 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, %48
  %52 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %2, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %51, %53
  %55 = and i32 %54, -65537
  %56 = load i32, ptr %0, align 4
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %54, 1022365664
  %60 = or i32 %59, 36879
  %61 = select i1 %58, i32 %55, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !124
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %61) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv6_enable_leds(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr i8, ptr %1, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 96) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv6_read_preamp(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %2, i32 98520
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !126
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %2, i32 131072
  %10 = shl i32 %1, 14
  %11 = and i32 %10, -65536
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr i8, ptr %12, i32 8192
  %14 = shl i32 %1, 13
  %15 = and i32 %14, 24576
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr i8, ptr %16, i32 816
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !127
  %19 = and i32 %18, 1792
  %20 = and i32 %18, 224
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %19, %8 ], [ 1792, %3 ]
  %23 = phi i32 [ %20, %8 ], [ 32, %3 ]
  %24 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1
  store i32 %22, ptr %24, align 4
  %25 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1, i32 1
  store i32 %23, ptr %25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv6_reset_hc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 3376
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !128
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %6 = or i32 %5, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #11, !srcloc !12
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, 1000
  br i1 %9, label %93, label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %3 ], [ %8, %7 ]
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !130
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %7, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %17 = or i32 %13, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %17) #11, !srcloc !12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #11
  %20 = and i32 %18, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %23 = or i32 %18, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %23) #11, !srcloc !12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #11
  %26 = and i32 %24, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %29 = or i32 %24, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %29) #11, !srcloc !12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #11
  %32 = and i32 %30, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %35 = or i32 %30, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %35) #11, !srcloc !12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #11
  %38 = and i32 %36, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %41 = or i32 %36, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %41) #11, !srcloc !12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #11
  %44 = and i32 %42, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %47 = or i32 %42, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %47) #11, !srcloc !12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !132
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #11
  %50 = and i32 %48, 16
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %46, %40, %34, %28, %22, %16
  %53 = phi i32 [ %18, %16 ], [ %24, %22 ], [ %30, %28 ], [ %36, %34 ], [ %42, %40 ], [ %48, %46 ]
  %54 = phi i1 [ %21, %16 ], [ %27, %22 ], [ %33, %28 ], [ %39, %34 ], [ %45, %40 ], [ %51, %46 ]
  br i1 %54, label %93, label %55

55:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %56 = and i32 %53, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %56) #11, !srcloc !12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #11
  %59 = and i32 %57, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %62 = and i32 %57, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %62) #11, !srcloc !12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #11
  %65 = and i32 %63, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %68 = and i32 %63, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %68) #11, !srcloc !12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #11
  %71 = and i32 %69, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %74 = and i32 %69, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %74) #11, !srcloc !12
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #11
  %77 = and i32 %75, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %80 = and i32 %75, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %80) #11, !srcloc !12
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #11
  %83 = and i32 %81, 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %86 = and i32 %81, -21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %86) #11, !srcloc !12
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !134
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #11
  %89 = and i32 %87, 16
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %85, %79, %73, %67, %61, %55
  %92 = phi i1 [ %60, %55 ], [ %66, %61 ], [ %72, %67 ], [ %78, %73 ], [ %84, %79 ], [ %90, %85 ]
  br i1 %92, label %97, label %93

93:                                               ; preds = %91, %52, %7
  %94 = phi ptr [ @.str.23, %52 ], [ @.str.24, %91 ], [ @.str.22, %7 ]
  %95 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull %94) #12
  br label %97

97:                                               ; preds = %93, %91
  %98 = phi i32 [ 0, %91 ], [ 1, %93 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv6_reset_flash(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !100
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr i8, ptr %1, i32 66668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 265289727) #11, !srcloc !12
  %4 = getelementptr i8, ptr %1, i32 66800
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !135
  %6 = and i32 %5, 3
  %7 = or i32 %6, 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !136
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_soc_65n_phy_errata(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 131072
  %5 = shl i32 %2, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 8192
  %9 = shl i32 %2, 13
  %10 = and i32 %9, 24576
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %11, i32 784
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !137
  %14 = and i32 %13, -2013265921
  %15 = or i32 %14, 671088640
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !138
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #11, !srcloc !12
  %16 = getelementptr i8, ptr %11, i32 788
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !139
  %18 = and i32 %17, -65538
  %19 = or i32 %18, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !140
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %19) #11, !srcloc !12
  %20 = getelementptr i8, ptr %11, i32 920
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !141
  %22 = and i32 %21, -16400
  %23 = or i32 %22, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !142
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #11, !srcloc !12
  %24 = getelementptr i8, ptr %11, i32 924
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !143
  %26 = and i32 %25, -16400
  %27 = or i32 %26, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !144
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %27) #11, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mv_soc_enable_leds(ptr nocapture noundef %0, ptr nocapture noundef %1) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_soc_reset_hc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 139264
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %31, %11 ]
  %13 = shl i32 %12, 14
  %14 = and i32 %13, -65536
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = shl i32 %12, 13
  %17 = and i32 %16, 24576
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call fastcc void @mv_reset_channel(ptr noundef %5, ptr noundef %1, i32 noundef %12) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !145
  tail call void @arm_heavy_mb() #11
  %19 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 4127) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %20 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %21 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !149
  tail call void @arm_heavy_mb() #11
  %22 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !150
  tail call void @arm_heavy_mb() #11
  %23 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  %24 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !152
  tail call void @arm_heavy_mb() #11
  %25 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !153
  tail call void @arm_heavy_mb() #11
  %26 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %27 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !155
  tail call void @arm_heavy_mb() #11
  %28 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !156
  tail call void @arm_heavy_mb() #11
  %29 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !157
  tail call void @arm_heavy_mb() #11
  %30 = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 2048) #11, !srcloc !12
  %31 = add nuw i32 %12, 1
  %32 = load i32, ptr %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %11, label %34

34:                                               ; preds = %11, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !158
  tail call void @arm_heavy_mb() #11
  %35 = getelementptr i8, ptr %1, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %36 = getelementptr i8, ptr %1, i32 131088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %37 = getelementptr i8, ptr %1, i32 131092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #11, !srcloc !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mv_soc_reset_flash(ptr nocapture noundef %0, ptr nocapture noundef %1) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mv_soc_reset_bus(ptr nocapture noundef %0, ptr nocapture noundef %1) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_soc_read_preamp(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %2, i32 131072
  %5 = shl i32 %1, 14
  %6 = and i32 %5, -65536
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 8192
  %9 = shl i32 %1, 13
  %10 = and i32 %9, 24576
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr i8, ptr %11, i32 816
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !161
  %14 = and i32 %13, 1792
  %15 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1
  store i32 %14, ptr %15, align 4
  %16 = and i32 %13, 224
  %17 = getelementptr %struct.mv_host_priv, ptr %0, i32 0, i32 3, i32 %1, i32 1
  store i32 %16, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_pci_error(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [38 x i8], align 1
  %4 = alloca [38 x i8], align 1
  %5 = alloca [38 x i8], align 1
  %6 = alloca [38 x i8], align 1
  %7 = alloca [38 x i8], align 1
  %8 = alloca [38 x i8], align 1
  %9 = alloca [38 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [38 x i8], align 1
  %12 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mv_host_priv, ptr %13, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %1, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !162
  %18 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.35, i32 noundef %17) #12
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr i8, ptr %20, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %11) #11
  br label %22

22:                                               ; preds = %22, %2
  %23 = phi i32 [ %37, %22 ], [ 0, %2 ]
  %24 = phi i32 [ %38, %22 ], [ 0, %2 ]
  %25 = phi i32 [ %32, %22 ], [ 0, %2 ]
  %26 = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef %25, ptr noundef nonnull %10) #11
  %27 = getelementptr i8, ptr %11, i32 %23
  %28 = sub i32 38, %23
  %29 = load i32, ptr %10, align 4
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %27, i32 noundef %28, ptr noundef nonnull @.str.25, i32 noundef %29) #11
  %31 = add i32 %30, %23
  %32 = add nuw nsw i32 %25, 4
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp ult i32 %25, 100
  %35 = icmp ult i32 %24, 3
  %36 = select i1 %34, i1 %35, i1 false
  %37 = select i1 %36, i32 %31, i32 0
  %38 = select i1 %36, i32 %33, i32 0
  br i1 %34, label %22, label %39

39:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %40 = getelementptr i8, ptr %1, i32 3072
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %9) #11
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ %51, %41 ], [ 0, %39 ]
  %43 = phi i32 [ %56, %41 ], [ 0, %39 ]
  %44 = phi i32 [ %57, %41 ], [ 0, %39 ]
  %45 = getelementptr i8, ptr %9, i32 %44
  %46 = sub i32 38, %44
  %47 = getelementptr i8, ptr %40, i32 %42
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %45, i32 noundef %46, ptr noundef nonnull @.str.25, i32 noundef %48) #11
  %50 = add i32 %49, %44
  %51 = add nuw nsw i32 %42, 4
  %52 = add nuw nsw i32 %43, 1
  %53 = icmp ult i32 %42, 56
  %54 = icmp ult i32 %43, 3
  %55 = select i1 %53, i1 %54, i1 false
  %56 = select i1 %55, i32 %52, i32 0
  %57 = select i1 %55, i32 %50, i32 0
  br i1 %53, label %41, label %58

58:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %9) #11
  %59 = getelementptr i8, ptr %1, i32 3328
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %8) #11
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ %70, %60 ], [ 0, %58 ]
  %62 = phi i32 [ %75, %60 ], [ 0, %58 ]
  %63 = phi i32 [ %76, %60 ], [ 0, %58 ]
  %64 = getelementptr i8, ptr %8, i32 %63
  %65 = sub i32 38, %63
  %66 = getelementptr i8, ptr %59, i32 %61
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %64, i32 noundef %65, ptr noundef nonnull @.str.25, i32 noundef %67) #11
  %69 = add i32 %68, %63
  %70 = add nuw nsw i32 %61, 4
  %71 = add nuw nsw i32 %62, 1
  %72 = icmp ult i32 %61, 48
  %73 = icmp ult i32 %62, 3
  %74 = select i1 %72, i1 %73, i1 false
  %75 = select i1 %74, i32 %71, i32 0
  %76 = select i1 %74, i32 %69, i32 0
  br i1 %72, label %60, label %77

77:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %8) #11
  %78 = getelementptr i8, ptr %1, i32 3840
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %7) #11
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %80 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 38, ptr noundef nonnull @.str.25, i32 noundef %79) #11
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %7) #11
  %81 = getelementptr i8, ptr %1, i32 7424
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %6) #11
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi i32 [ %92, %82 ], [ 0, %77 ]
  %84 = phi i32 [ %97, %82 ], [ 0, %77 ]
  %85 = phi i32 [ %98, %82 ], [ 0, %77 ]
  %86 = getelementptr i8, ptr %6, i32 %85
  %87 = sub i32 38, %85
  %88 = getelementptr i8, ptr %81, i32 %83
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %86, i32 noundef %87, ptr noundef nonnull @.str.25, i32 noundef %89) #11
  %91 = add i32 %90, %85
  %92 = add nuw nsw i32 %83, 4
  %93 = add nuw nsw i32 %84, 1
  %94 = icmp ult i32 %83, 104
  %95 = icmp ult i32 %84, 3
  %96 = select i1 %94, i1 %95, i1 false
  %97 = select i1 %96, i32 %93, i32 0
  %98 = select i1 %96, i32 %91, i32 0
  br i1 %94, label %82, label %99

99:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %5) #11
  %100 = getelementptr i8, ptr %1, i32 131072
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 38, ptr noundef nonnull @.str.25, i32 noundef %101) #11
  %103 = getelementptr i8, ptr %5, i32 %102
  %104 = sub i32 38, %102
  %105 = getelementptr i8, ptr %1, i32 131076
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %103, i32 noundef %104, ptr noundef nonnull @.str.25, i32 noundef %106) #11
  %108 = add i32 %107, %102
  %109 = getelementptr i8, ptr %5, i32 %108
  %110 = sub i32 38, %108
  %111 = getelementptr i8, ptr %1, i32 131080
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %113 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %109, i32 noundef %110, ptr noundef nonnull @.str.25, i32 noundef %112) #11
  %114 = add i32 %113, %108
  %115 = getelementptr i8, ptr %5, i32 %114
  %116 = sub i32 38, %114
  %117 = getelementptr i8, ptr %1, i32 131084
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %119 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %115, i32 noundef %116, ptr noundef nonnull @.str.25, i32 noundef %118) #11
  %120 = getelementptr i8, ptr %1, i32 131088
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %122 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 38, ptr noundef nonnull @.str.25, i32 noundef %121) #11
  %123 = getelementptr i8, ptr %5, i32 %122
  %124 = sub i32 38, %122
  %125 = getelementptr i8, ptr %1, i32 131092
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %127 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %123, i32 noundef %124, ptr noundef nonnull @.str.25, i32 noundef %126) #11
  %128 = add i32 %127, %122
  %129 = getelementptr i8, ptr %5, i32 %128
  %130 = sub i32 38, %128
  %131 = getelementptr i8, ptr %1, i32 131096
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %129, i32 noundef %130, ptr noundef nonnull @.str.25, i32 noundef %132) #11
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %5) #11
  %134 = getelementptr i8, ptr %1, i32 196608
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 38, ptr noundef nonnull @.str.25, i32 noundef %135) #11
  %137 = getelementptr i8, ptr %5, i32 %136
  %138 = sub i32 38, %136
  %139 = getelementptr i8, ptr %1, i32 196612
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %141 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %137, i32 noundef %138, ptr noundef nonnull @.str.25, i32 noundef %140) #11
  %142 = add i32 %141, %136
  %143 = getelementptr i8, ptr %5, i32 %142
  %144 = sub i32 38, %142
  %145 = getelementptr i8, ptr %1, i32 196616
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %147 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %143, i32 noundef %144, ptr noundef nonnull @.str.25, i32 noundef %146) #11
  %148 = add i32 %147, %142
  %149 = getelementptr i8, ptr %5, i32 %148
  %150 = sub i32 38, %148
  %151 = getelementptr i8, ptr %1, i32 196620
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %153 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %149, i32 noundef %150, ptr noundef nonnull @.str.25, i32 noundef %152) #11
  %154 = getelementptr i8, ptr %1, i32 196624
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %156 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 38, ptr noundef nonnull @.str.25, i32 noundef %155) #11
  %157 = getelementptr i8, ptr %5, i32 %156
  %158 = sub i32 38, %156
  %159 = getelementptr i8, ptr %1, i32 196628
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %161 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %157, i32 noundef %158, ptr noundef nonnull @.str.25, i32 noundef %160) #11
  %162 = add i32 %161, %156
  %163 = getelementptr i8, ptr %5, i32 %162
  %164 = sub i32 38, %162
  %165 = getelementptr i8, ptr %1, i32 196632
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %167 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %163, i32 noundef %164, ptr noundef nonnull @.str.25, i32 noundef %166) #11
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %5) #11
  %168 = getelementptr i8, ptr %1, i32 139264
  br label %169

169:                                              ; preds = %213, %99
  %170 = phi i32 [ 0, %99 ], [ %214, %213 ]
  %171 = shl i32 %170, 14
  %172 = and i32 %171, -65536
  %173 = getelementptr i8, ptr %168, i32 %172
  %174 = shl i32 %170, 13
  %175 = and i32 %174, 24576
  %176 = getelementptr i8, ptr %173, i32 %175
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %4) #11
  br label %177

177:                                              ; preds = %177, %169
  %178 = phi i32 [ %187, %177 ], [ 0, %169 ]
  %179 = phi i32 [ %192, %177 ], [ 0, %169 ]
  %180 = phi i32 [ %193, %177 ], [ 0, %169 ]
  %181 = getelementptr i8, ptr %4, i32 %180
  %182 = sub i32 38, %180
  %183 = getelementptr i8, ptr %176, i32 %178
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %185 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %181, i32 noundef %182, ptr noundef nonnull @.str.25, i32 noundef %184) #11
  %186 = add i32 %185, %180
  %187 = add nuw nsw i32 %178, 4
  %188 = add nuw nsw i32 %179, 1
  %189 = icmp ult i32 %178, 80
  %190 = icmp ult i32 %179, 3
  %191 = select i1 %189, i1 %190, i1 false
  %192 = select i1 %191, i32 %188, i32 0
  %193 = select i1 %191, i32 %186, i32 0
  br i1 %189, label %177, label %194

194:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %4) #11
  %195 = getelementptr i8, ptr %176, i32 768
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %3) #11
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi i32 [ %206, %196 ], [ 0, %194 ]
  %198 = phi i32 [ %211, %196 ], [ 0, %194 ]
  %199 = phi i32 [ %212, %196 ], [ 0, %194 ]
  %200 = getelementptr i8, ptr %3, i32 %199
  %201 = sub i32 38, %199
  %202 = getelementptr i8, ptr %195, i32 %197
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !163
  %204 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %200, i32 noundef %201, ptr noundef nonnull @.str.25, i32 noundef %203) #11
  %205 = add i32 %204, %199
  %206 = add nuw nsw i32 %197, 4
  %207 = add nuw nsw i32 %198, 1
  %208 = icmp ult i32 %197, 92
  %209 = icmp ult i32 %198, 3
  %210 = select i1 %208, i1 %209, i1 false
  %211 = select i1 %210, i32 %207, i32 0
  %212 = select i1 %210, i32 %205, i32 0
  br i1 %208, label %196, label %213

213:                                              ; preds = %196
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %3) #11
  %214 = add nuw nsw i32 %170, 1
  %215 = icmp eq i32 %214, 8
  br i1 %215, label %216, label %169

216:                                              ; preds = %213
  %217 = load i32, ptr %14, align 4
  %218 = getelementptr i8, ptr %1, i32 %217
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 0) #11, !srcloc !12
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %220 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %268, label %223

223:                                              ; preds = %263, %216
  %224 = phi i32 [ %265, %263 ], [ 0, %216 ]
  %225 = phi i32 [ %264, %263 ], [ 0, %216 ]
  %226 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %224
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 25
  %229 = call zeroext i1 @ata_link_offline(ptr noundef %228) #11
  br i1 %229, label %263, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 25, i32 11
  call void @ata_ehi_clear_desc(ptr noundef %231) #11
  %232 = add i32 %225, 1
  %233 = icmp eq i32 %225, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %231, ptr noundef nonnull @.str.36, i32 noundef %17) #11
  br label %235

235:                                              ; preds = %234, %230
  %236 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 25, i32 11, i32 3
  store i32 6, ptr %236, align 4
  %237 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 25, i32 3
  %238 = load i32, ptr %237, align 32
  %239 = icmp ugt i32 %238, 32
  %240 = getelementptr %struct.ata_port, ptr %227, i32 0, i32 19, i32 %238
  %241 = icmp eq ptr %240, null
  %242 = or i1 %239, %241
  br i1 %242, label %256, label %243, !prof !29

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.ata_port_operations, ptr %245, i32 0, i32 22
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %243
  %250 = getelementptr %struct.ata_port, ptr %227, i32 0, i32 19, i32 %238, i32 6
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 65537
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %256

254:                                              ; preds = %249, %243
  %255 = getelementptr %struct.ata_port, ptr %227, i32 0, i32 19, i32 %238, i32 20
  br label %258

256:                                              ; preds = %249, %235
  %257 = getelementptr inbounds %struct.ata_port, ptr %227, i32 0, i32 25, i32 11, i32 2
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi ptr [ %257, %256 ], [ %255, %254 ]
  %260 = load i32, ptr %259, align 4
  %261 = or i32 %260, 32
  store i32 %261, ptr %259, align 4
  %262 = call i32 @ata_port_freeze(ptr noundef %227) #11
  br label %263

263:                                              ; preds = %258, %223
  %264 = phi i32 [ %225, %223 ], [ %232, %258 ]
  %265 = add nuw i32 %224, 1
  %266 = load i32, ptr %220, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %223, label %268

268:                                              ; preds = %263, %216
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_process_crpb_entries(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_host_priv, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 131072
  %12 = shl i32 %10, 14
  %13 = and i32 %12, -65536
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr i8, ptr %14, i32 8192
  %16 = shl i32 %10, 13
  %17 = and i32 %16, 24576
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !164
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 31
  %25 = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %79, label %28

28:                                               ; preds = %2
  %29 = and i32 %20, 2
  %30 = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 3
  %33 = icmp ne i32 %29, 0
  br label %34

34:                                               ; preds = %62, %28
  %35 = phi i32 [ %26, %28 ], [ %38, %62 ]
  %36 = phi i32 [ 0, %28 ], [ %63, %62 ]
  %37 = add i32 %35, 1
  %38 = and i32 %37, 31
  store i32 %38, ptr %25, align 4
  %39 = load i32, ptr %6, align 4
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, ptr %32, align 32
  br label %49

44:                                               ; preds = %34
  %45 = getelementptr %struct.mv_crpb, ptr %31, i32 %35
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 31
  %48 = zext i16 %47 to i32
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = getelementptr %struct.mv_crpb, ptr %31, i32 %35, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, 251
  %54 = icmp eq i16 %53, 0
  %55 = select i1 %33, i1 true, i1 %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = and i16 %52, -22272
  %58 = icmp eq i16 %57, 0
  %59 = shl nuw i32 1, %50
  %60 = select i1 %58, i32 %59, i32 0
  %61 = or i32 %60, %36
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi i32 [ %36, %49 ], [ %61, %56 ]
  %64 = icmp eq i32 %24, %38
  br i1 %64, label %65, label %34

65:                                               ; preds = %62
  br i1 %27, label %79, label %66

66:                                               ; preds = %65
  %67 = tail call i64 @ata_qc_get_active(ptr noundef %0) #11
  %68 = zext i32 %63 to i64
  %69 = xor i64 %67, %68
  %70 = tail call i32 @ata_qc_complete_multiple(ptr noundef %0, i64 noundef %69) #11
  %71 = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, -256
  %74 = load i32, ptr %25, align 4
  %75 = shl i32 %74, 3
  %76 = or i32 %75, %73
  %77 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #11, !srcloc !12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %79

79:                                               ; preds = %66, %65, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  br label %14

11:                                               ; preds = %1
  %12 = or i32 %5, 8
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 10
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %11 ]
  %16 = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 10
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mv_host_priv, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 131072
  %26 = shl i32 %24, 14
  %27 = and i32 %26, -65536
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr i8, ptr %28, i32 8192
  %30 = shl i32 %24, 13
  %31 = and i32 %30, 24576
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = getelementptr i8, ptr %32, i32 840
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !165
  %35 = lshr i32 %34, 16
  %36 = or i32 %35, %15
  %37 = icmp eq i32 %15, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %14
  store i32 %36, ptr %16, align 4
  %39 = xor i32 %15, -1
  %40 = and i32 %35, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  br label %44

44:                                               ; preds = %63, %42
  %45 = phi i32 [ %40, %42 ], [ %64, %63 ]
  %46 = phi i32 [ 0, %42 ], [ %65, %63 ]
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %43, align 8
  %52 = getelementptr %struct.ata_link, ptr %51, i32 %46
  %53 = getelementptr %struct.ata_link, ptr %51, i32 %46, i32 11
  %54 = xor i32 %47, -1
  %55 = and i32 %45, %54
  tail call void @ata_ehi_clear_desc(ptr noundef %53) #11
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %53, ptr noundef nonnull @.str.40) #11
  %56 = getelementptr %struct.ata_link, ptr %51, i32 %46, i32 11, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = getelementptr %struct.ata_link, ptr %51, i32 %46, i32 11, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 6
  store i32 %61, ptr %59, align 4
  %62 = tail call i32 @ata_link_abort(ptr noundef %52) #11
  br label %63

63:                                               ; preds = %50, %44
  %64 = phi i32 [ %55, %50 ], [ %45, %44 ]
  %65 = add i32 %46, 1
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %44

67:                                               ; preds = %63, %38, %14
  %68 = tail call i32 @__sw_hweight16(i32 noundef %36) #11
  %69 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %16, align 4
  %72 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 21
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 22
  %75 = load i32, ptr %74, align 32
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %70, ptr noundef nonnull @__func__.mv_handle_fbs_ncq_dev_err, i32 noundef %71, i64 noundef %73, i32 noundef %68, i32 noundef %75) #12
  %77 = load i32, ptr %74, align 32
  %78 = icmp sgt i32 %77, %68
  br i1 %78, label %129, label %79

79:                                               ; preds = %67
  %80 = load ptr, ptr %17, align 4
  %81 = getelementptr inbounds %struct.ata_host, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mv_host_priv, ptr %82, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %23, align 4
  %86 = getelementptr i8, ptr %84, i32 131072
  %87 = shl i32 %85, 14
  %88 = and i32 %87, -65536
  %89 = getelementptr i8, ptr %86, i32 %88
  %90 = getelementptr i8, ptr %89, i32 8192
  %91 = shl i32 %85, 13
  %92 = and i32 %91, 24576
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = getelementptr i8, ptr %93, i32 20
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !166
  %96 = getelementptr i8, ptr %93, i32 24
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !167
  %98 = xor i32 %97, %95
  %99 = and i32 %98, 992
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %79
  tail call fastcc void @mv_process_crpb_entries(ptr noundef %0, ptr noundef %3)
  tail call fastcc void @mv_stop_edma(ptr noundef %0)
  tail call fastcc void @mv_stop_edma(ptr noundef %0) #11
  %102 = load i32, ptr %23, align 4
  %103 = lshr i32 %102, 2
  %104 = mul i32 %103, 9
  %105 = shl i32 %102, 1
  %106 = and i32 %105, 6
  %107 = add i32 %104, %106
  %108 = shl i32 3, %107
  %109 = load ptr, ptr %17, align 4
  %110 = getelementptr inbounds %struct.ata_host, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.mv_host_priv, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = xor i32 %108, -1
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, %113
  br i1 %116, label %129, label %117

117:                                              ; preds = %101
  store i32 %115, ptr %112, align 4
  %118 = and i32 %115, 2097408
  %119 = icmp eq i32 %118, 0
  %120 = and i32 %115, -171
  %121 = select i1 %119, i32 %115, i32 %120
  %122 = and i32 %121, 2228224
  %123 = icmp eq i32 %122, 0
  %124 = and i32 %121, -87041
  %125 = select i1 %123, i32 %121, i32 %124
  %126 = getelementptr inbounds %struct.mv_host_priv, ptr %111, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #11, !srcloc !12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  br label %129

129:                                              ; preds = %117, %101, %79, %67
  %130 = phi ptr [ @.str.38, %101 ], [ @.str.38, %117 ], [ @.str.39, %67 ], [ @.str.39, %79 ]
  %131 = load i32, ptr %69, align 4
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %130, i32 noundef %131, ptr noundef nonnull @__func__.mv_handle_fbs_ncq_dev_err) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ata_qc_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_platform_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %5 = load i64, ptr @__const.mv_platform_probe.ppi, align 8
  store i64 %5, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %6 = load i1, ptr @mv_platform_probe.__print_once, align 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  store i1 true, ptr @mv_platform_probe.__print_once, align 1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @ata_print_version(ptr noundef %8, ptr noundef nonnull @.str.2) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %15, label %13, !prof !31

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.55) #12
  br label %193

15:                                               ; preds = %9
  %16 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %193, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.56, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.57, i32 noundef %24) #12
  br label %193

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %28) #12
  br label %193

31:                                               ; preds = %27
  %32 = load ptr, ptr %20, align 8
  %33 = call i32 @irq_of_parse_and_map(ptr noundef %32, i32 noundef 0) #11
  br label %39

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %3, align 4
  %38 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %33, %31 ], [ %38, %34 ]
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %193, label %42

42:                                               ; preds = %39
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %193, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %3, align 4
  %46 = call ptr @ata_host_alloc_pinfo(ptr noundef %19, ptr noundef nonnull %2, i32 noundef %45) #11
  %47 = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 132, i32 noundef 3520) #11
  %48 = icmp ne ptr %46, null
  %49 = icmp ne ptr %47, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %193

51:                                               ; preds = %44
  %52 = load i32, ptr %3, align 4
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #11
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %55, label %57, !prof !29

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 13
  store ptr null, ptr %56, align 4
  br label %193

57:                                               ; preds = %51
  %58 = extractvalue { i32, i1 } %53, 0
  %59 = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %58, i32 noundef 3520) #11
  %60 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 13
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %193, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %3, align 4
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #11
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %66, label %68, !prof !29

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 14
  store ptr null, ptr %67, align 4
  br label %193

68:                                               ; preds = %62
  %69 = extractvalue { i32, i1 } %64, 0
  %70 = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %69, i32 noundef 3520) #11
  %71 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 14
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %193, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ata_host, ptr %46, i32 0, i32 5
  store ptr %47, ptr %74, align 4
  %75 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 1
  store i32 7, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ata_host, ptr %46, i32 0, i32 2
  store ptr null, ptr %76, align 4
  %77 = load i32, ptr %16, align 4
  %78 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 1, %77
  %81 = add i32 %80, %79
  %82 = call ptr @devm_ioremap(ptr noundef %19, i32 noundef %77, i32 noundef %81) #11
  %83 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 6
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %193, label %85

85:                                               ; preds = %73
  %86 = getelementptr i8, ptr %82, i32 -131072
  store ptr %86, ptr %83, align 4
  %87 = call ptr @clk_get(ptr noundef %19, ptr noundef null) #11
  %88 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 12
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %19, ptr noundef nonnull @.str.59) #12
  br label %98

91:                                               ; preds = %85
  %92 = call i32 @clk_prepare(ptr noundef %87) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = call i32 @clk_enable(ptr noundef %87) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @clk_unprepare(ptr noundef %87) #11
  br label %98

98:                                               ; preds = %97, %94, %91, %90
  %99 = load i32, ptr %3, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %134, %98
  %102 = phi i32 [ %136, %134 ], [ 0, %98 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !27
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.60, i32 noundef %102)
  %104 = call ptr @clk_get(ptr noundef %19, ptr noundef nonnull %4) #11
  %105 = load ptr, ptr %60, align 4
  %106 = getelementptr ptr, ptr %105, i32 %102
  store ptr %104, ptr %106, align 4
  %107 = load ptr, ptr %60, align 4
  %108 = getelementptr ptr, ptr %107, i32 %102
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %118, label %111

111:                                              ; preds = %101
  %112 = call i32 @clk_prepare(ptr noundef %109) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i32 @clk_enable(ptr noundef %109) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @clk_unprepare(ptr noundef %109) #11
  br label %118

118:                                              ; preds = %117, %114, %111, %101
  %119 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.61, i32 noundef %102)
  %120 = call ptr @devm_phy_optional_get(ptr noundef %19, ptr noundef nonnull %4) #11
  %121 = load ptr, ptr %71, align 4
  %122 = getelementptr ptr, ptr %121, i32 %102
  store ptr %120, ptr %122, align 4
  %123 = load ptr, ptr %71, align 4
  %124 = getelementptr ptr, ptr %123, i32 %102
  %125 = load ptr, ptr %124, align 4
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = getelementptr ptr, ptr %123, i32 %102
  %129 = ptrtoint ptr %125 to i32
  store ptr null, ptr %128, align 4
  %130 = icmp eq ptr %125, inttoptr (i32 -517 to ptr)
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.62, i32 noundef %129) #12
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 5
  store i32 %102, ptr %133, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %165

134:                                              ; preds = %118
  %135 = call i32 @phy_power_on(ptr noundef %125) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %136 = add nuw nsw i32 %102, 1
  %137 = load i32, ptr %3, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %101, label %139

139:                                              ; preds = %134, %98
  %140 = phi i32 [ %99, %98 ], [ %137, %134 ]
  %141 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 5
  store i32 %140, ptr %141, align 4
  %142 = call ptr @mv_mbus_dram_info() #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  call fastcc void @mv_conf_mbus_windows(ptr noundef nonnull %47, ptr noundef nonnull %142)
  br label %145

145:                                              ; preds = %144, %139
  %146 = call fastcc i32 @mv_create_dma_pools(ptr noundef nonnull %47, ptr noundef %19)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load ptr, ptr %20, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = call i32 @of_device_is_compatible(ptr noundef nonnull %149, ptr noundef nonnull @.str.63) #11
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %47, align 4
  %156 = or i32 %155, 8192
  store i32 %156, ptr %47, align 4
  br label %157

157:                                              ; preds = %154, %151, %148
  %158 = call fastcc i32 @mv_init_host(ptr noundef nonnull %46)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.ata_host, ptr %46, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.64, i32 noundef 32, i32 noundef %162) #12
  %163 = call i32 @ata_host_activate(ptr noundef nonnull %46, i32 noundef %40, ptr noundef nonnull @mv_interrupt, i32 noundef 128, ptr noundef nonnull @mv6_sht) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %193, label %165

165:                                              ; preds = %160, %157, %145, %132
  %166 = phi i32 [ %129, %132 ], [ %146, %145 ], [ %158, %157 ], [ %163, %160 ]
  %167 = load ptr, ptr %88, align 4
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  call void @clk_disable(ptr noundef %167) #11
  call void @clk_unprepare(ptr noundef %167) #11
  %170 = load ptr, ptr %88, align 4
  call void @clk_put(ptr noundef %170) #11
  br label %171

171:                                              ; preds = %169, %165
  %172 = getelementptr inbounds %struct.mv_host_priv, ptr %47, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %185, %171
  %176 = phi i32 [ %190, %185 ], [ 0, %171 ]
  %177 = load ptr, ptr %60, align 4
  %178 = getelementptr ptr, ptr %177, i32 %176
  %179 = load ptr, ptr %178, align 4
  %180 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %185, label %181

181:                                              ; preds = %175
  call void @clk_disable(ptr noundef %179) #11
  call void @clk_unprepare(ptr noundef %179) #11
  %182 = load ptr, ptr %60, align 4
  %183 = getelementptr ptr, ptr %182, i32 %176
  %184 = load ptr, ptr %183, align 4
  call void @clk_put(ptr noundef %184) #11
  br label %185

185:                                              ; preds = %181, %175
  %186 = load ptr, ptr %71, align 4
  %187 = getelementptr ptr, ptr %186, i32 %176
  %188 = load ptr, ptr %187, align 4
  %189 = call i32 @phy_power_off(ptr noundef %188) #11
  %190 = add nuw nsw i32 %176, 1
  %191 = load i32, ptr %172, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %175, label %193

193:                                              ; preds = %185, %171, %160, %73, %68, %66, %57, %55, %44, %42, %39, %30, %26, %15, %13
  %194 = phi i32 [ -22, %13 ], [ %24, %26 ], [ -22, %30 ], [ -22, %15 ], [ %40, %39 ], [ -22, %42 ], [ -12, %44 ], [ -12, %57 ], [ -12, %68 ], [ -12, %73 ], [ 0, %160 ], [ -12, %55 ], [ -12, %66 ], [ %166, %171 ], [ %166, %185 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_platform_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @ata_host_detach(ptr noundef %3) #11
  %6 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %10 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %10) #11
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 13
  %17 = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 14
  br label %18

18:                                               ; preds = %28, %15
  %19 = phi i32 [ 0, %15 ], [ %33, %28 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr ptr, ptr %25, i32 %19
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_put(ptr noundef %27) #11
  br label %28

28:                                               ; preds = %24, %18
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr ptr, ptr %29, i32 %19
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @phy_power_off(ptr noundef %31) #11
  %33 = add nuw i32 %19, 1
  %34 = load i32, ptr %12, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %18, label %36

36:                                               ; preds = %28, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_platform_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ata_host_suspend(ptr noundef nonnull %4, [1 x i32] %1) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_platform_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @mv_mbus_dram_info() #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @mv_conf_mbus_windows(ptr noundef %7, ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %10, %5
  %12 = tail call fastcc i32 @mv_init_host(ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.65) #12
  br label %17

16:                                               ; preds = %11
  tail call void @ata_host_resume(ptr noundef nonnull %3) #11
  br label %17

17:                                               ; preds = %16, %14, %1
  %18 = phi i32 [ %12, %14 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_conf_mbus_windows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mv_host_priv, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 131120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 131124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 131136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 131140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 131152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 131156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 131168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 131172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #11, !srcloc !12
  %20 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 2
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %52, %25 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !170
  tail call void @arm_heavy_mb() #11
  %27 = getelementptr %struct.mbus_dram_window, ptr %24, i32 %26, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr %struct.mbus_dram_window, ptr %24, i32 %26, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = load i8, ptr %1, align 8
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 4
  %36 = trunc i64 %28 to i32
  %37 = add i32 %36, -1
  %38 = and i32 %37, -65536
  %39 = or i32 %38, %32
  %40 = or i32 %35, %39
  %41 = or i32 %40, 1
  %42 = load ptr, ptr %3, align 4
  %43 = shl i32 %26, 4
  %44 = add i32 %43, 131120
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %46 = getelementptr %struct.mbus_dram_window, ptr %24, i32 %26, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %3, align 4
  %50 = add i32 %43, 131124
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #11, !srcloc !12
  %52 = add nuw nsw i32 %26, 1
  %53 = load i32, ptr %20, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %25, label %55

55:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3938954}
!9 = !{i64 2155251548}
!10 = !{i64 2155252240}
!11 = !{i64 2155162240}
!12 = !{i64 3938536}
!13 = !{i64 2155162653}
!14 = !{i64 2155251894}
!15 = !{i64 2155248730}
!16 = !{i64 2155259760}
!17 = !{i64 2155251129}
!18 = !{i64 2155172569}
!19 = !{i64 2155172911}
!20 = !{i64 2155173260}
!21 = !{i64 2155173630}
!22 = !{i64 2155173984}
!23 = !{i64 2155174333}
!24 = !{i64 2155174690}
!25 = !{i64 2155175044}
!26 = !{i64 2155175393}
!27 = !{!"auto-init"}
!28 = !{i64 2155210919}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2155207387}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2155206127}
!33 = !{i64 2155206527}
!34 = !{i64 2149049544}
!35 = !{i64 2149045368}
!36 = !{i64 2149045443, i64 2149045470, i64 2149045517, i64 2149045539, i64 2149045567, i64 2149045587}
!37 = !{i64 2149072547}
!38 = !{i64 2155189589}
!39 = !{i64 2155170652}
!40 = !{i64 2155171566}
!41 = !{i64 2155250050}
!42 = !{i64 2155194342}
!43 = !{i64 2155194542}
!44 = !{i64 2155195041}
!45 = !{i64 2155250696}
!46 = !{i8 0, i8 2}
!47 = !{i64 2155249079}
!48 = !{i64 2155164342}
!49 = !{i64 2155168740}
!50 = !{i64 2155169098}
!51 = !{i64 2155169468}
!52 = !{i64 2155211410}
!53 = !{i64 2155175897}
!54 = !{i64 2155176818}
!55 = !{i64 2155185445}
!56 = !{i64 2155185640}
!57 = !{i64 2155186128}
!58 = !{i64 2155186344}
!59 = !{i64 2155186879}
!60 = !{i64 2155187096}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.peeled.count", i32 1}
!63 = !{i64 2155183608}
!64 = !{i64 2155183906}
!65 = !{i64 3938734}
!66 = !{i64 2151477461}
!67 = !{i64 2155189871}
!68 = !{i64 2155190231}
!69 = !{i64 2155190789}
!70 = !{i64 2155191144}
!71 = !{i64 2155215401}
!72 = !{i64 2155215590}
!73 = !{i64 2155216072}
!74 = !{i64 2155216262}
!75 = !{i64 2155216748}
!76 = !{i64 2155216939}
!77 = !{i64 2155214219}
!78 = !{i64 2155214717}
!79 = !{i64 2155214914}
!80 = !{i64 2155214033}
!81 = !{i64 2155217296}
!82 = !{i64 2155217615}
!83 = !{i64 2155217973}
!84 = !{i64 2155218324}
!85 = !{i64 2155218675}
!86 = !{i64 2155219026}
!87 = !{i64 2155219377}
!88 = !{i64 2155219728}
!89 = !{i64 2155220079}
!90 = !{i64 2155220430}
!91 = !{i64 2155220781}
!92 = !{i64 2155221132}
!93 = !{i64 2155221458}
!94 = !{i64 2155221818}
!95 = !{i64 2155222163}
!96 = !{i64 2155222508}
!97 = !{i64 2155222853}
!98 = !{i64 2155223305}
!99 = !{i64 2155223487}
!100 = !{i64 2155213539}
!101 = !{i64 2155213010}
!102 = !{i64 2155213207}
!103 = !{i64 2155223950}
!104 = !{i64 2155224136}
!105 = !{i64 2155224502}
!106 = !{i64 2155224876}
!107 = !{i64 2155225212}
!108 = !{i64 2155225596}
!109 = !{i64 2155225979}
!110 = !{i64 2155226367}
!111 = !{i64 2155226754}
!112 = !{i64 2155227143}
!113 = !{i64 2155227527}
!114 = !{i64 2155227904}
!115 = !{i64 2155235541}
!116 = !{i64 2155235729}
!117 = !{i64 2155236754}
!118 = !{i64 2155236942}
!119 = !{i64 2155237967}
!120 = !{i64 2155238356}
!121 = !{i64 2155238586}
!122 = !{i64 2155238905}
!123 = !{i64 2155239382}
!124 = !{i64 2155239612}
!125 = !{i64 2155235049}
!126 = !{i64 2155234508}
!127 = !{i64 2155234854}
!128 = !{i64 2155228996}
!129 = !{i64 2155229183}
!130 = !{i64 2155230158}
!131 = !{i64 2155230888}
!132 = !{i64 2155231321}
!133 = !{i64 2155232608}
!134 = !{i64 2155233083}
!135 = !{i64 2155228384}
!136 = !{i64 2155228572}
!137 = !{i64 2155246002}
!138 = !{i64 2155246191}
!139 = !{i64 2155246670}
!140 = !{i64 2155246859}
!141 = !{i64 2155247353}
!142 = !{i64 2155247547}
!143 = !{i64 2155248046}
!144 = !{i64 2155248240}
!145 = !{i64 2155240311}
!146 = !{i64 2155240631}
!147 = !{i64 2155240991}
!148 = !{i64 2155241342}
!149 = !{i64 2155241693}
!150 = !{i64 2155242044}
!151 = !{i64 2155242395}
!152 = !{i64 2155242746}
!153 = !{i64 2155243097}
!154 = !{i64 2155243448}
!155 = !{i64 2155243799}
!156 = !{i64 2155244150}
!157 = !{i64 2155244477}
!158 = !{i64 2155244839}
!159 = !{i64 2155245184}
!160 = !{i64 2155245529}
!161 = !{i64 2155240089}
!162 = !{i64 2155208105}
!163 = !{i64 2155178335}
!164 = !{i64 2155207038}
!165 = !{i64 2155199414}
!166 = !{i64 2155199784}
!167 = !{i64 2155200157}
!168 = !{i64 2155261676}
!169 = !{i64 2155262051}
!170 = !{i64 2155262522}
!171 = !{i64 2155263096}
