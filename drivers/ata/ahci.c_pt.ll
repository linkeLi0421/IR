; ModuleID = '/llk/IR/drivers/ata/ahci.c_pt.bc'
source_filename = "../drivers/ata/ahci.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.91, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.91 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }

@__param_str_marvell_enable = internal constant [20 x i8] c"ahci.marvell_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@marvell_enable = internal global i32 1, align 4
@__param_marvell_enable = internal constant %struct.kernel_param { ptr @__param_str_marvell_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @marvell_enable } }, section "__param", align 4
@__UNIQUE_ID_marvell_enabletype291 = internal constant [33 x i8] c"ahci.parmtype=marvell_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_marvell_enable292 = internal constant [61 x i8] c"ahci.parm=marvell_enable:Marvell SATA via AHCI (1 = enabled)\00", section ".modinfo", align 1
@__param_str_mobile_lpm_policy = internal constant [23 x i8] c"ahci.mobile_lpm_policy\00", align 1
@mobile_lpm_policy = internal global i32 -1, align 4
@__param_mobile_lpm_policy = internal constant %struct.kernel_param { ptr @__param_str_mobile_lpm_policy, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @mobile_lpm_policy } }, section "__param", align 4
@__UNIQUE_ID_mobile_lpm_policytype293 = internal constant [36 x i8] c"ahci.parmtype=mobile_lpm_policy:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mobile_lpm_policy294 = internal constant [67 x i8] c"ahci.parm=mobile_lpm_policy:Default LPM policy for mobile chipsets\00", section ".modinfo", align 1
@__initcall__kmod_ahci__297_1933_ahci_pci_driver_init6 = internal global ptr @ahci_pci_driver_init, section ".initcall6.init", align 4
@ahci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ahci_pci_tbl, ptr @ahci_init_one, ptr @ahci_remove_one, ptr null, ptr null, ptr @ahci_shutdown_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_ahci_pci_driver_exit = internal global ptr @ahci_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [24 x i8] c"ahci.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [44 x i8] c"ahci.description=AHCI SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [27 x i8] c"ahci.file=drivers/ata/ahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [17 x i8] c"ahci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version302 = internal constant [17 x i8] c"ahci.version=3.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ahci\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ahci_pci_tbl = internal constant [303 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 1750, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9810, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9811, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10181, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10179, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 21128, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9857, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9858, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9859, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10182, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10273, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10274, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 10276, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10282, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10530, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10531, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10532, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10533, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10535, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10537, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10538, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10539, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10540, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10543, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10573, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10574, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 20522, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 20523, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14853, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14882, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 14885, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15138, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15139, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15140, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15141, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15145, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 15147, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 15148, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 15151, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6576, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6577, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6578, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6579, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6580, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6581, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6582, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6583, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6590, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6591, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6592, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6593, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6594, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6595, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6596, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6597, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6598, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6599, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6606, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 6607, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 7170, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7171, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7172, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7173, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7174, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7175, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7428, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7430, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10278, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8995, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7682, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7683, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7684, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7685, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7686, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7687, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7694, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35842, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35843, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35844, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35845, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35846, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35847, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35854, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35855, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39938, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39939, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39940, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39941, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39942, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39943, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39950, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 39951, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40403, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 7970, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7971, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7972, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7973, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7974, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7975, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7982, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7983, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 7986, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7987, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7988, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7989, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7990, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7991, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7998, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7999, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 10275, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10279, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17364, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17365, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17366, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 17367, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36098, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36102, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36110, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36194, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36196, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36198, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 36206, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9123, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40067, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40069, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40071, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40079, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35970, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35971, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35972, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35973, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35974, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35975, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 35982, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35983, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40195, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40197, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40199, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41218, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41219, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41221, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41222, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41223, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 41231, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41346, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41430, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41474, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41478, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41558, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41814, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 1751, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 41862, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3874, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3875, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 8867, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 23267, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 13523, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 723, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 727, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 6523, i32 -1, i32 -1, i32 -1, i32 67073, i32 16777215, i32 1, i32 0 }, %struct.pci_device_id { i32 6523, i32 9058, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 6523, i32 9071, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 17280, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4098, i32 17296, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17297, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17298, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17299, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17300, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 17301, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 7222, i32 49, i32 -1, i32 -1, i32 67073, i32 16777215, i32 8, i32 0 }, %struct.pci_device_id { i32 4130, i32 30720, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30721, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4130, i32 30976, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30977, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4130, i32 -1, i32 -1, i32 -1, i32 66560, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 -1, i32 4136, i32 -1, i32 66560, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 13129, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4358, i32 25223, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4318, i32 1100, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1101, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1102, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1103, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1116, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1117, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1118, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1119, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1360, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1361, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1362, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1363, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1364, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1365, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1366, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1367, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1368, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1369, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1370, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1371, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1408, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1409, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1410, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1411, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1412, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1413, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1414, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1415, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1416, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1417, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1418, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1419, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1420, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1421, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1422, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 1423, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2032, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2033, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2034, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2035, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2036, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2037, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2038, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2039, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2040, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2041, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2042, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2043, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4318, i32 2768, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2769, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2770, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2771, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2772, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2773, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2774, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2775, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2776, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2777, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2778, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2779, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2740, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2741, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2742, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2743, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2744, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2745, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2746, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2747, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2748, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2749, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2750, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 2751, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4318, i32 3460, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3461, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3462, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3463, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3464, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3465, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3466, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3467, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3468, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3469, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3470, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4318, i32 3471, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4153, i32 4484, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 4485, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 390, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4170, i32 52230, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 24901, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4523, i32 24865, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 6987, i32 37155, i32 -1, i32 -1, i32 67073, i32 16777215, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37157, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37240, i32 6987, i32 37232, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37242, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37234, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37250, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37266, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37280, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37282, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37283, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 6987, i32 37424, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4355, i32 1602, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4355, i32 1605, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4186, i32 16160, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 14209, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1537, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1538, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1553, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1554, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1569, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1570, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6945, i32 1572, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5197, i32 5632, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5197, i32 43008, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 7236, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 20, i32 31240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 67073, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@ahci_pci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr @ahci_pci_device_suspend, ptr @ahci_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pci_device_runtime_suspend, ptr @ahci_pci_device_runtime_resume, ptr null }, align 4
@ahci_port_info = internal unnamed_addr constant [18 x %struct.ata_port_info] [%struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 2 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 33554432 to ptr) }, %struct.ata_port_info { i32 393346, i32 2048, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 32 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 1 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 4096 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 16384 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 96 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_avn_ops, ptr null }, %struct.ata_port_info { i32 8781954, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8768 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8256 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 8192 to ptr) }, %struct.ata_port_info { i32 130, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr inttoptr (i32 113 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_pmp_retry_srst_ops, ptr inttoptr (i32 300 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_pmp_retry_srst_ops, ptr inttoptr (i32 4 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_vt8251_ops, ptr inttoptr (i32 65 to ptr) }, %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ops, ptr null }], align 4
@ahci_init_one.__print_once = internal unnamed_addr global i1 false, align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"PDC42819 can only drive SATA devices with this driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"controller is in combined mode, can't enable AHCI mode\0A\00", align 1
@dev_attr_remapped_nvme = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @remapped_nvme_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"quirky BIOS, skipping spindown on poweroff\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"BIOS update required for Link Power Management support\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"BIOS update required for suspend/resume\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"online status unreliable, applying workaround\0A\00", align 1
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"abar\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_avn_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_avn_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@ahci_pmp_retry_srst_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_vt8251_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_vt8251_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [33 x i8] c"\016ata%u.%02u: avn bounce port%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\016ata%u: avn bounce port%d\0A\00", align 1
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"\016ahci: enabling MCP89 AHCI mode\0A\00", align 1
@ahci_sb600_enable_64bit.sysids = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.16, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M2A-VM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.17 }, %struct.dmi_system_id { ptr null, ptr @.str.18, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"MICRO-STAR INTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"MS-7376\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.19, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"MICRO-STAR INTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"MS-7327\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr @.str.20, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"M3A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"ASUS M2A-VM\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"20071026\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"MSI K9A2 Platinum\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MSI K9AGM2\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"ASUS M3A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"%04d%02d%02d\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"%s: BIOS too old, forcing 32bit DMA, update BIOS\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"%s: enabling 64bit DMA\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Found %u remapped NVMe devices.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Switch your BIOS from RAID to AHCI mode to use them.\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"remapped_nvme\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ahci_broken_devslp.ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 3875, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.28 = private unnamed_addr constant [26 x i8] c"JMB361 has only one port\0A\00", align 1
@.str.29 = private unnamed_addr constant [86 x i8] c"Disabling your PATA port. Use the boot option 'ahci.marvell_enable=0' to avoid this.\0A\00", align 1
@ahci_broken_system_poweroff.broken_systems = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Compaq nx6310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i32 31 to ptr) }, %struct.dmi_system_id { ptr null, ptr @.str.31, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Compaq 6720s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i32 31 to ptr) }, %struct.dmi_system_id zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"HP Compaq nx6310\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"HP Compaq 6720s\00", align 1
@ahci_broken_lpm.sysids = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"ThinkPad X250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.32 }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"ThinkPad L450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.33 }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"ThinkPad T450s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.34 }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"ThinkPad W541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.35 }, %struct.dmi_system_id zeroinitializer], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"20180406\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"20180420\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"20180315\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"20180310\00", align 1
@ahci_broken_suspend.sysids = internal constant [6 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.36, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Pavilion dv4 Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.37 }, %struct.dmi_system_id { ptr null, ptr @.str.38, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Pavilion dv5 Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.39 }, %struct.dmi_system_id { ptr null, ptr @.str.40, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP Pavilion dv6 Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.41 }, %struct.dmi_system_id { ptr null, ptr @.str.42, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP HDX18 Notebook PC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.43 }, %struct.dmi_system_id { ptr null, ptr @.str.44, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"eMachines\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"eMachines G725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @.str.45 }, %struct.dmi_system_id zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"dv4\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"20090105\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"dv5\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"20090506\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"dv6\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"20090423\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"HDX18\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"20090430\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"G725\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"20091216\00", align 1
@ahci_broken_online.sysids = internal constant [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.46, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Gigabyte Technology Co., Ltd.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"EP45-DQ6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i32 2560 to ptr) }, %struct.dmi_system_id { ptr null, ptr @.str.47, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Gigabyte Technology Co., Ltd.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"EP45-DS5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr inttoptr (i32 768 to ptr) }, %struct.dmi_system_id zeroinitializer], align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"EP45-DQ6\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"EP45-DS5\00", align 1
@acer_sa5_271_workaround.sysids = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.48, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Switch SA5-271\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.48 = private unnamed_addr constant [21 x i8] c"Acer Switch Alpha 12\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"enabling Acer Switch Alpha 12 workaround\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"\016ahci: MRSM is on, fallback to single MSI\0A\00", align 1
@ahci_p5wdh_workaround.sysids = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.51, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTEK COMPUTER INC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"P5W DH Deluxe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [14 x i8] c"P5W DH Deluxe\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"enabling ASUS P5W DH Deluxe on-board SIMG4726 workaround\0A\00", align 1
@ahci_p5wdh_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_p5wdh_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@.str.53 = private unnamed_addr constant [19 x i8] c"DMA enable failed\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"IDE\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_marvell_enable292, ptr @__UNIQUE_ID_marvell_enabletype291, ptr @__UNIQUE_ID_mobile_lpm_policy294, ptr @__UNIQUE_ID_mobile_lpm_policytype293, ptr @__UNIQUE_ID_version302, ptr @__exitcall_ahci_pci_driver_exit, ptr @__initcall__kmod_ahci__297_1933_ahci_pci_driver_init6, ptr @__modver_attr, ptr @__param_marvell_enable, ptr @__param_mobile_lpm_policy, ptr @ahci_pci_driver_exit], section "llvm.metadata"
@switch.table.ahci_pci_print_info = private unnamed_addr constant [6 x ptr] [ptr @.str.54, ptr @.str.57, ptr @.str.57, ptr @.str.56, ptr @.str.57, ptr @.str.55], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ahci_pci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ahci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ahci_pci_driver_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @ahci_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_init_one(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [9 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [9 x i8], align 1
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [9 x i8], align 1
  %16 = alloca %struct.ata_port_info, align 4
  %17 = alloca [2 x ptr], align 8
  %18 = alloca i8, align 1
  %19 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #10
  %21 = getelementptr [18 x %struct.ata_port_info], ptr @ahci_port_info, i32 0, i32 %20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, ptr noundef align 4 dereferenceable(28) %21, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  store ptr %16, ptr %17, align 8
  %22 = getelementptr inbounds ptr, ptr %17, i32 1
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %24 = load i1, ptr @ahci_init_one.__print_once, align 1
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i1 true, ptr @ahci_init_one.__print_once, align 1
  call void @ata_print_version(ptr noundef %23, ptr noundef nonnull @.str.2) #10
  br label %26

26:                                               ; preds = %25, %2
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %28 = load i16, ptr %27, align 8
  %29 = icmp ne i16 %28, 4523
  %30 = load i32, ptr @marvell_enable, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %545

33:                                               ; preds = %26
  %34 = icmp eq i16 %28, 4318
  br i1 %34, label %35, label %49

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 3461
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 4203
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, -13431
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  call fastcc void @ahci_mcp89_apple_enable(ptr noundef %0)
  %48 = load i16, ptr %27, align 8
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i16 [ %28, %33 ], [ %48, %47 ]
  %51 = icmp eq i16 %50, 4186
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.4) #11
  %53 = load i16, ptr %27, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i16 [ %53, %52 ], [ %50, %49 ]
  switch i16 %55, label %77 [
    i16 4170, label %56
    i16 7236, label %60
    i16 6013, label %65
    i16 20, label %72
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, -13306
  br i1 %59, label %77, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, -32768
  br i1 %63, label %77, label %64

64:                                               ; preds = %60, %56
  br label %77

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, -24548
  %69 = select i1 %68, i32 0, i32 5
  %70 = icmp eq i16 %67, -24444
  %71 = select i1 %70, i32 4, i32 %69
  br label %77

72:                                               ; preds = %54
  %73 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, 31240
  %76 = select i1 %75, i32 0, i32 5
  br label %77

77:                                               ; preds = %72, %65, %64, %60, %56, %54, %43, %39, %35
  %78 = phi i32 [ 0, %56 ], [ 2, %60 ], [ %76, %72 ], [ %71, %65 ], [ 5, %64 ], [ 5, %54 ], [ 5, %43 ], [ 5, %39 ], [ 5, %35 ]
  %79 = call i32 @pcim_enable_device(ptr noundef %0) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %545

81:                                               ; preds = %77
  %82 = load i16, ptr %27, align 8
  %83 = icmp eq i16 %82, -32634
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %86 = load i16, ptr %85, align 2
  %87 = and i16 %86, -2
  %88 = icmp eq i16 %87, 9810
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 0, ptr %18, align 1, !annotation !8
  %90 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 144, ptr noundef nonnull %18) #10
  %91 = load i8, ptr %18, align 1
  %92 = and i8 %91, 3
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  br label %545

95:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  br label %96

96:                                               ; preds = %95, %84, %81
  %97 = shl nuw nsw i32 1, %78
  %98 = call i32 @pcim_iomap_regions_request_all(ptr noundef %0, i32 noundef %97, ptr noundef nonnull @.str.1) #10
  switch i32 %98, label %545 [
    i32 -16, label %99
    i32 0, label %100
  ]

99:                                               ; preds = %96
  call void @pcim_pin_device(ptr noundef %0) #10
  br label %545

100:                                              ; preds = %96
  %101 = call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 132, i32 noundef 3520) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %545, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ata_port_info, ptr %16, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = load i32, ptr %101, align 4
  %108 = or i32 %107, %106
  store i32 %108, ptr %101, align 4
  switch i32 %20, label %124 [
    i32 10, label %109
    i32 15, label %116
  ]

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %111 = load i8, ptr %110, align 4
  %112 = add i8 %111, 95
  %113 = icmp ult i8 %112, 2
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = or i32 %108, 32
  br label %122

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  %118 = load i8, ptr %117, align 4
  %119 = icmp ugt i8 %118, 63
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = and i32 %108, -5
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi i32 [ %115, %114 ], [ %121, %120 ]
  store i32 %123, ptr %101, align 4
  br label %124

124:                                              ; preds = %122, %116, %109, %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  store i32 0, ptr %13, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %15) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %15, i8 0, i32 9, i1 false) #10, !annotation !8
  %125 = call ptr @dmi_first_match(ptr noundef nonnull @ahci_sb600_enable_64bit.sysids) #10
  %126 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.pci_bus, ptr %127, i32 0, i32 12
  %129 = load i8, ptr %128, align 4
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 144
  %135 = icmp ne ptr %125, null
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.dmi_system_id, ptr %125, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = call zeroext i1 @dmi_get_date(i32 noundef 3, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #10
  %143 = load i32, ptr %12, align 4
  %144 = load i32, ptr %13, align 4
  %145 = load i32, ptr %14, align 4
  %146 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %15, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %143, i32 noundef %144, i32 noundef %145) #10
  %147 = load ptr, ptr %138, align 4
  %148 = call i32 @strcmp(ptr noundef nonnull %15, ptr noundef %147) #10
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %154, label %151

150:                                              ; preds = %131, %124
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %159

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.dmi_system_id, ptr %125, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %153) #11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %159

154:                                              ; preds = %141, %137
  %155 = getelementptr inbounds %struct.dmi_system_id, ptr %125, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.23, ptr noundef %156) #11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  %157 = load i32, ptr %101, align 4
  %158 = and i32 %157, -9
  store i32 %158, ptr %101, align 4
  br label %159

159:                                              ; preds = %154, %151, %150
  %160 = call ptr @pcim_iomap_table(ptr noundef %0) #10
  %161 = getelementptr ptr, ptr %160, i32 %78
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 3
  store ptr %162, ptr %163, align 4
  %164 = load i16, ptr %27, align 8
  %165 = icmp eq i16 %164, -32634
  br i1 %165, label %166, label %230

166:                                              ; preds = %159
  %167 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %78, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %230, label %170

170:                                              ; preds = %166
  %171 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %78
  %172 = load i32, ptr %171, align 8
  %173 = add i32 %168, 1
  %174 = sub i32 %173, %172
  %175 = icmp ult i32 %174, 524288
  %176 = icmp ne i32 %78, 5
  %177 = or i1 %176, %175
  br i1 %177, label %230, label %178

178:                                              ; preds = %170
  %179 = getelementptr i8, ptr %162, i32 164
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %230, label %183

183:                                              ; preds = %178
  %184 = load ptr, ptr %163, align 4
  %185 = getelementptr i8, ptr %184, i32 2048
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %187 = getelementptr i8, ptr %184, i32 2052
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %189 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 14
  %190 = and i32 %186, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %183
  %193 = load ptr, ptr %163, align 4
  %194 = getelementptr i8, ptr %193, i32 2176
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %196 = icmp eq i32 %195, 67586
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, ptr %189, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %189, align 4
  br label %200

200:                                              ; preds = %197, %192, %183
  %201 = and i32 %186, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %163, align 4
  %205 = getelementptr i8, ptr %204, i32 2304
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %207 = icmp eq i32 %206, 67586
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, ptr %189, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %189, align 4
  br label %211

211:                                              ; preds = %208, %203, %200
  %212 = and i32 %186, 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %163, align 4
  %216 = getelementptr i8, ptr %215, i32 2432
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %218 = icmp eq i32 %217, 67586
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, ptr %189, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %189, align 4
  br label %224

222:                                              ; preds = %214, %211
  %223 = load i32, ptr %189, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi i32 [ %223, %222 ], [ %221, %219 ]
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef %225) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.25) #11
  %228 = load i32, ptr %101, align 4
  %229 = or i32 %228, 32
  store i32 %229, ptr %101, align 4
  br label %230

230:                                              ; preds = %227, %224, %178, %170, %166, %159
  %231 = call i32 @sysfs_add_file_to_group(ptr noundef %23, ptr noundef nonnull @dev_attr_remapped_nvme, ptr noundef null) #10
  %232 = call ptr @pci_match_id(ptr noundef nonnull @ahci_broken_devslp.ids, ptr noundef %0) #10
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %101, align 4
  %236 = or i32 %235, 131072
  store i32 %236, ptr %101, align 4
  br label %237

237:                                              ; preds = %234, %230
  %238 = load i16, ptr %27, align 8
  %239 = icmp eq i16 %238, 6523
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %242 = load i16, ptr %241, align 2
  %243 = icmp eq i16 %242, 9057
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.28) #11
  %245 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 1
  store i32 1, ptr %245, align 4
  br label %246

246:                                              ; preds = %244, %240, %237
  %247 = load i32, ptr %101, align 4
  %248 = and i32 %247, 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %252 = load i16, ptr %251, align 2
  %253 = icmp eq i16 %252, 24865
  %254 = select i1 %253, i32 3, i32 15
  %255 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 2
  store i32 %254, ptr %255, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.29) #11
  br label %256

256:                                              ; preds = %250, %246
  call void @ahci_save_initial_config(ptr noundef %23, ptr noundef nonnull %101) #10
  %257 = call ptr @pci_match_id(ptr noundef nonnull @ahci_pci_tbl, ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i16 0, ptr %11, align 2, !annotation !8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %278, label %259

259:                                              ; preds = %256
  %260 = load i32, ptr %257, align 4
  %261 = icmp eq i32 %260, 32902
  br i1 %261, label %262, label %278

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.pci_device_id, ptr %257, i32 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = icmp ugt i32 %264, 16
  br i1 %265, label %278, label %266

266:                                              ; preds = %262
  %267 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 146, ptr noundef nonnull %11) #10
  %268 = load i16, ptr %11, align 2
  %269 = zext i16 %268 to i32
  %270 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 7
  %271 = load i32, ptr %270, align 4
  %272 = and i32 %271, %269
  %273 = icmp eq i32 %272, %271
  br i1 %273, label %278, label %274

274:                                              ; preds = %266
  %275 = trunc i32 %271 to i16
  %276 = or i16 %268, %275
  store i16 %276, ptr %11, align 2
  %277 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 146, i16 noundef zeroext %276) #10
  br label %278

278:                                              ; preds = %274, %266, %262, %259, %256
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  %279 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 4
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 1073741824
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = load i32, ptr %16, align 4
  %285 = load i32, ptr %101, align 4
  %286 = and i32 %285, 8192
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %287, i32 17408, i32 1024
  %289 = or i32 %284, %288
  %290 = or i32 %289, 1048576
  store i32 %290, ptr %16, align 4
  br label %291

291:                                              ; preds = %283, %278
  %292 = and i32 %280, 131072
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %16, align 4
  %296 = or i32 %295, 524288
  store i32 %296, ptr %16, align 4
  br label %297

297:                                              ; preds = %294, %291
  call void @ahci_set_em_messages(ptr noundef nonnull %101, ptr noundef nonnull %16) #10
  %298 = call ptr @dmi_first_match(ptr noundef nonnull @ahci_broken_system_poweroff.broken_systems) #10
  %299 = icmp eq ptr %298, null
  br i1 %299, label %312, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.dmi_system_id, ptr %298, i32 0, i32 3
  %302 = load ptr, ptr %301, align 4
  %303 = ptrtoint ptr %302 to i32
  %304 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %305 = load i32, ptr %304, align 4
  %306 = lshr i32 %305, 3
  %307 = and i32 %306, 31
  %308 = icmp eq i32 %307, %303
  br i1 %308, label %309, label %312

309:                                              ; preds = %300
  %310 = load i32, ptr %16, align 4
  %311 = or i32 %310, 2048
  store i32 %311, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.6) #11
  br label %312

312:                                              ; preds = %309, %300, %297
  %313 = call ptr @dmi_first_match(ptr noundef nonnull @ahci_broken_lpm.sysids) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %10, i8 0, i32 9, i1 false) #10, !annotation !8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %329

316:                                              ; preds = %312
  %317 = call zeroext i1 @dmi_get_date(i32 noundef 3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %318 = load i32, ptr %7, align 4
  %319 = load i32, ptr %8, align 4
  %320 = load i32, ptr %9, align 4
  %321 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %318, i32 noundef %319, i32 noundef %320) #10
  %322 = getelementptr inbounds %struct.dmi_system_id, ptr %313, i32 0, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = call i32 @strcmp(ptr noundef nonnull %10, ptr noundef %323) #10
  %325 = icmp slt i32 %324, 0
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %325, label %326, label %329

326:                                              ; preds = %316
  %327 = load i32, ptr %16, align 4
  %328 = or i32 %327, 4
  store i32 %328, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.7) #11
  br label %329

329:                                              ; preds = %326, %316, %315
  %330 = call ptr @dmi_first_match(ptr noundef nonnull @ahci_broken_suspend.sysids) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %6, i8 0, i32 9, i1 false) #10, !annotation !8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = load ptr, ptr %126, align 8
  %334 = getelementptr inbounds %struct.pci_bus, ptr %333, i32 0, i32 12
  %335 = load i8, ptr %334, align 4
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 250
  br i1 %340, label %342, label %341

341:                                              ; preds = %337, %332, %329
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %355

342:                                              ; preds = %337
  %343 = call zeroext i1 @dmi_get_date(i32 noundef 3, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %344 = load i32, ptr %3, align 4
  %345 = load i32, ptr %4, align 4
  %346 = load i32, ptr %5, align 4
  %347 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %344, i32 noundef %345, i32 noundef %346) #10
  %348 = getelementptr inbounds %struct.dmi_system_id, ptr %330, i32 0, i32 3
  %349 = load ptr, ptr %348, align 4
  %350 = call i32 @strcmp(ptr noundef nonnull %6, ptr noundef %349) #10
  %351 = icmp slt i32 %350, 0
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %351, label %352, label %355

352:                                              ; preds = %342
  %353 = load i32, ptr %101, align 4
  %354 = or i32 %353, 1024
  store i32 %354, ptr %101, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.8) #11
  br label %355

355:                                              ; preds = %352, %342, %341
  %356 = call ptr @dmi_first_match(ptr noundef nonnull @ahci_broken_online.sysids) #10
  %357 = icmp eq ptr %356, null
  br i1 %357, label %376, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.dmi_system_id, ptr %356, i32 0, i32 3
  %360 = load ptr, ptr %359, align 4
  %361 = ptrtoint ptr %360 to i32
  %362 = load ptr, ptr %126, align 8
  %363 = getelementptr inbounds %struct.pci_bus, ptr %362, i32 0, i32 12
  %364 = load i8, ptr %363, align 4
  %365 = zext i8 %364 to i32
  %366 = lshr i32 %361, 8
  %367 = icmp eq i32 %366, %365
  br i1 %367, label %368, label %376

368:                                              ; preds = %358
  %369 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = and i32 %361, 255
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load i32, ptr %101, align 4
  %375 = or i32 %374, 2048
  store i32 %375, ptr %101, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.9) #11
  br label %376

376:                                              ; preds = %373, %368, %358, %355
  %377 = call i32 @dmi_check_system(ptr noundef nonnull @acer_sa5_271_workaround.sysids) #10
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.49) #11
  %380 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 8
  %381 = load i32, ptr %380, align 4
  %382 = and i32 %381, -952828160
  %383 = icmp eq i32 %382, -952828160
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 7
  store i32 7, ptr %385, align 4
  store i32 -952828158, ptr %279, align 4
  br label %386

386:                                              ; preds = %384, %379, %376
  %387 = load i32, ptr %279, align 4
  %388 = and i32 %387, 31
  %389 = add nuw nsw i32 %388, 1
  %390 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 7
  %391 = load i32, ptr %390, align 4
  %392 = icmp eq i32 %391, 0
  %393 = call i32 @llvm.ctlz.i32(i32 %391, i1 false) #10, !range !14
  %394 = sub nuw nsw i32 32, %393
  %395 = select i1 %392, i32 0, i32 %394
  %396 = call i32 @llvm.smax.i32(i32 %389, i32 %395)
  %397 = call ptr @ata_host_alloc_pinfo(ptr noundef %23, ptr noundef nonnull %17, i32 noundef %396) #10
  %398 = icmp eq ptr %397, null
  br i1 %398, label %545, label %399

399:                                              ; preds = %386
  %400 = getelementptr inbounds %struct.ata_host, ptr %397, i32 0, i32 5
  store ptr %101, ptr %400, align 4
  %401 = load i32, ptr %101, align 4
  %402 = and i32 %401, 32
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %427

404:                                              ; preds = %399
  %405 = icmp ugt i32 %396, 1
  br i1 %405, label %406, label %421

406:                                              ; preds = %404
  %407 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef %396, i32 noundef 2147483647, i32 noundef 6, ptr noundef null) #10
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %421

409:                                              ; preds = %406
  %410 = load ptr, ptr %163, align 4
  %411 = getelementptr i8, ptr %410, i32 4
  %412 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %413 = and i32 %412, 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 28
  store ptr @ahci_get_irq_vector, ptr %416, align 4
  %417 = load i32, ptr %101, align 4
  %418 = or i32 %417, 1048576
  store i32 %418, ptr %101, align 4
  br label %428

419:                                              ; preds = %409
  %420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #11
  call void @pci_free_irq_vectors(ptr noundef %0) #10
  br label %421

421:                                              ; preds = %419, %406, %404
  %422 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #10
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %428, label %424

424:                                              ; preds = %421
  %425 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 4, ptr noundef null) #10
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %424, %399
  call void @pci_intx(ptr noundef %0, i32 noundef 1) #10
  br label %428

428:                                              ; preds = %427, %424, %421, %415
  %429 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #10
  %430 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 24
  store i32 %429, ptr %430, align 4
  %431 = load i32, ptr %279, align 4
  %432 = and i32 %431, 134217728
  %433 = icmp eq i32 %432, 0
  %434 = load i32, ptr @ahci_ignore_sss, align 4
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %433, i1 true, i1 %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %428
  %438 = getelementptr inbounds %struct.ata_host, ptr %397, i32 0, i32 7
  %439 = load i32, ptr %438, align 4
  %440 = or i32 %439, 4
  store i32 %440, ptr %438, align 4
  br label %442

441:                                              ; preds = %428
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.10) #11
  br label %442

442:                                              ; preds = %441, %437
  %443 = load i32, ptr %16, align 4
  %444 = and i32 %443, 2097152
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %442
  %447 = call i32 @ahci_reset_em(ptr noundef nonnull %397) #10
  br label %448

448:                                              ; preds = %446, %442
  %449 = getelementptr inbounds %struct.ata_host, ptr %397, i32 0, i32 3
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %491, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.ahci_host_priv, ptr %101, i32 0, i32 13
  br label %454

454:                                              ; preds = %487, %452
  %455 = phi i32 [ 0, %452 ], [ %488, %487 ]
  %456 = getelementptr %struct.ata_host, ptr %397, i32 0, i32 12, i32 %455
  %457 = load ptr, ptr %456, align 4
  call void @ata_port_pbar_desc(ptr noundef %457, i32 noundef %78, i32 noundef -1, ptr noundef nonnull @.str.11) #10
  %458 = getelementptr inbounds %struct.ata_port, ptr %457, i32 0, i32 7
  %459 = load i32, ptr %458, align 4
  %460 = shl i32 %459, 7
  %461 = add i32 %460, 256
  call void @ata_port_pbar_desc(ptr noundef %457, i32 noundef %78, i32 noundef %461, ptr noundef nonnull @.str.12) #10
  %462 = getelementptr inbounds %struct.ata_port, ptr %457, i32 0, i32 3
  %463 = load i32, ptr %462, align 4
  %464 = and i32 %463, 2097152
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %469, label %466

466:                                              ; preds = %454
  %467 = load i32, ptr %453, align 4
  %468 = getelementptr inbounds %struct.ata_port, ptr %457, i32 0, i32 47
  store i32 %467, ptr %468, align 8
  br label %469

469:                                              ; preds = %466, %454
  %470 = load i32, ptr %101, align 4
  %471 = and i32 %470, 33554432
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %480, label %473

473:                                              ; preds = %469
  %474 = load i32, ptr @mobile_lpm_policy, align 4
  %475 = icmp eq i32 %474, -1
  %476 = select i1 %475, i32 0, i32 %474
  %477 = icmp ult i32 %476, 6
  br i1 %477, label %478, label %480

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.ata_port, ptr %457, i32 0, i32 43
  store i32 %476, ptr %479, align 64
  br label %480

480:                                              ; preds = %478, %473, %469
  %481 = load i32, ptr %390, align 4
  %482 = shl nuw i32 1, %455
  %483 = and i32 %481, %482
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.ata_port, ptr %457, i32 0, i32 1
  store ptr @ata_dummy_port_ops, ptr %486, align 4
  br label %487

487:                                              ; preds = %485, %480
  %488 = add nuw i32 %455, 1
  %489 = load i32, ptr %449, align 4
  %490 = icmp ult i32 %488, %489
  br i1 %490, label %454, label %491

491:                                              ; preds = %487, %448
  %492 = getelementptr inbounds %struct.ata_host, ptr %397, i32 0, i32 1
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr i8, ptr %493, i32 -128
  %495 = load ptr, ptr %494, align 8
  %496 = getelementptr inbounds %struct.pci_bus, ptr %495, i32 0, i32 12
  %497 = load i8, ptr %496, align 4
  %498 = icmp eq i8 %497, 0
  br i1 %498, label %499, label %513

499:                                              ; preds = %491
  %500 = getelementptr i8, ptr %493, i32 -108
  %501 = load i32, ptr %500, align 4
  %502 = icmp eq i32 %501, 250
  br i1 %502, label %503, label %513

503:                                              ; preds = %499
  %504 = call i32 @dmi_check_system(ptr noundef nonnull @ahci_p5wdh_workaround.sysids) #10
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %513, label %506

506:                                              ; preds = %503
  %507 = getelementptr %struct.ata_host, ptr %397, i32 1, i32 1
  %508 = load ptr, ptr %507, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %493, ptr noundef nonnull @.str.52) #11
  %509 = getelementptr inbounds %struct.ata_port, ptr %508, i32 0, i32 1
  store ptr @ahci_p5wdh_ops, ptr %509, align 4
  %510 = getelementptr inbounds %struct.ata_port, ptr %508, i32 0, i32 25, i32 5
  %511 = load i32, ptr %510, align 8
  %512 = or i32 %511, 12
  store i32 %512, ptr %510, align 8
  br label %513

513:                                              ; preds = %506, %503, %499, %491
  %514 = load i32, ptr %279, align 4
  %515 = icmp sgt i32 %514, -1
  %516 = select i1 %515, i32 32, i32 64
  %517 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 28
  %518 = load i64, ptr %517, align 8
  %519 = add i64 %518, -1
  %520 = icmp ult i64 %519, 4294967294
  br i1 %520, label %533, label %521

521:                                              ; preds = %513
  br i1 %515, label %522, label %526

522:                                              ; preds = %521
  %523 = zext i32 %516 to i64
  %524 = shl nsw i64 -1, %523
  %525 = xor i64 %524, -1
  br label %526

526:                                              ; preds = %522, %521
  %527 = phi i64 [ %525, %522 ], [ -1, %521 ]
  %528 = call i32 @dma_set_mask(ptr noundef %23, i64 noundef %527) #10
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %526
  %531 = call i32 @dma_set_coherent_mask(ptr noundef %23, i64 noundef %527) #10
  br label %533

532:                                              ; preds = %526
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.53) #11
  br label %545

533:                                              ; preds = %530, %513
  %534 = call i32 @ahci_reset_controller(ptr noundef nonnull %397) #10
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %545

536:                                              ; preds = %533
  call fastcc void @ahci_pci_init_controller(ptr noundef nonnull %397)
  call fastcc void @ahci_pci_print_info(ptr noundef nonnull %397)
  call void @pci_set_master(ptr noundef %0) #10
  %537 = call i32 @ahci_host_activate(ptr noundef nonnull %397, ptr noundef nonnull @ahci_sht) #10
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %540) #10, !srcloc !17
  %541 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %540, ptr %540, i32 0, i32 -1, ptr elementtype(i32) %540) #10, !srcloc !18
  %542 = extractvalue { i32, i32, i32 } %541, 0
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %539
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  br label %545

545:                                              ; preds = %544, %539, %536, %533, %532, %386, %100, %99, %96, %94, %77, %26
  %546 = phi i32 [ -19, %26 ], [ %79, %77 ], [ -19, %94 ], [ %98, %96 ], [ -16, %99 ], [ -12, %100 ], [ -12, %386 ], [ %528, %532 ], [ %534, %533 ], [ %537, %536 ], [ 0, %539 ], [ 0, %544 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #10
  ret i32 %546
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_remove_one(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @sysfs_remove_file_from_group(ptr noundef %2, ptr noundef nonnull @dev_attr_remapped_nvme, ptr noundef null) #10
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #10, !srcloc !20
  tail call void @ata_pci_remove_one(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_shutdown_one(ptr noundef %0) #2 {
  tail call void @ata_pci_shutdown_one(ptr noundef %0) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_mcp89_apple_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  %4 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 248, ptr noundef nonnull %2) #10
  %5 = load i32, ptr %2, align 4
  %6 = or i32 %5, 134217728
  store i32 %6, ptr %2, align 4
  %7 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 248, i32 noundef %6) #10
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1356, ptr noundef nonnull %2) #10
  %9 = load i32, ptr %2, align 4
  %10 = or i32 %9, 4096
  store i32 %10, ptr %2, align 4
  %11 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1356, i32 noundef %10) #10
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1188, ptr noundef nonnull %2) #10
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 255
  %15 = or i32 %14, 17170688
  store i32 %15, ptr %2, align 4
  %16 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1188, i32 noundef %15) #10
  %17 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 1356, ptr noundef nonnull %2) #10
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, -4097
  store i32 %19, ptr %2, align 4
  %20 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 1356, i32 noundef %19) #10
  %21 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 248, ptr noundef nonnull %2) #10
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, -134217729
  store i32 %23, ptr %2, align 4
  %24 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 248, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_set_em_messages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_em(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_pci_init_controller(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -102
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 24865
  %13 = select i1 %12, i32 256, i32 512
  %14 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  %17 = getelementptr i8, ptr %16, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %18 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #10, !srcloc !22
  %19 = getelementptr i8, ptr %17, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #10, !srcloc !22
  br label %23

23:                                               ; preds = %22, %7, %1
  tail call void @ahci_init_controller(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_pci_print_info(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 0, ptr %2, align 2, !annotation !8
  %6 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 10, ptr noundef nonnull %2) #10
  %7 = load i16, ptr %2, align 2
  %8 = add i16 %7, -257
  %9 = icmp ult i16 %8, 6
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = sext i16 %8 to i32
  %12 = getelementptr inbounds [6 x ptr], ptr @switch.table.ahci_pci_print_info, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ @.str.57, %1 ]
  call void @ahci_print_info(ptr noundef %0, ptr noundef nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_avn_hardreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %13 = load ptr, ptr %0, align 64
  %14 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ahci_port_priv, ptr %15, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 64
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %2, %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %25 = getelementptr inbounds %struct.ahci_host_priv, ptr %19, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %13) #10
  %28 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 7
  %29 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  %34 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  br label %35

35:                                               ; preds = %76, %3
  %36 = phi i32 [ %2, %3 ], [ %87, %76 ]
  %37 = phi i1 [ true, %3 ], [ false, %76 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %38 = load i32, ptr %28, align 4
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr inbounds %struct.ata_host, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 -136
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  %43 = load ptr, ptr %29, align 64
  %44 = load ptr, ptr %43, align 64
  %45 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 9
  %46 = load i8, ptr %45, align 4
  store i8 %46, ptr %30, align 1
  %47 = load i32, ptr %31, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i8 -96, i8 -80
  store i8 %49, ptr %32, align 4
  store i8 -128, ptr %33, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %22) #10
  %50 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %36, ptr noundef nonnull %5, ptr noundef nonnull @ahci_check_ready) #10
  %51 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %35
  %54 = load i32, ptr %7, align 4
  %55 = and i32 %54, 15
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 64
  %59 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 27
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 26
  %64 = load ptr, ptr %63, align 64
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %34, align 4
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %68, i32 noundef %69, i32 noundef %38) #11
  br label %76

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %73, i32 noundef %38) #11
  br label %76

75:                                               ; preds = %53, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br label %88

76:                                               ; preds = %71, %66
  %77 = call i32 @pci_read_config_word(ptr noundef %42, i32 noundef 146, ptr noundef nonnull %6) #10
  %78 = shl nuw i32 1, %38
  %79 = load i16, ptr %6, align 2
  %80 = trunc i32 %78 to i16
  %81 = xor i16 %80, -1
  %82 = and i16 %79, %81
  store i16 %82, ptr %6, align 2
  %83 = call i32 @pci_write_config_word(ptr noundef %42, i32 noundef 146, i16 noundef zeroext %82) #10
  call void @ata_msleep(ptr noundef %13, i32 noundef 1000) #10
  %84 = load i16, ptr %6, align 2
  %85 = or i16 %84, %80
  store i16 %85, ptr %6, align 2
  %86 = call i32 @pci_write_config_word(ptr noundef %42, i32 noundef 146, i16 noundef zeroext %85) #10
  %87 = add i32 %24, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br i1 %37, label %35, label %88

88:                                               ; preds = %76, %75
  %89 = getelementptr inbounds %struct.ahci_host_priv, ptr %19, i32 0, i32 25
  %90 = load ptr, ptr %89, align 4
  call void %90(ptr noundef %13) #10
  %91 = load i8, ptr %5, align 1, !range !25
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 @ahci_dev_classify(ptr noundef %13) #10
  store i32 %94, ptr %1, align 4
  br label %95

95:                                               ; preds = %93, %88
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_vt8251_hardreset(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %5) #10
  %13 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %18 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #10
  %19 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 25
  %20 = load ptr, ptr %19, align 4
  call void %20(ptr noundef %5) #10
  %21 = load i8, ptr %4, align 1, !range !25
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 %18, i32 -11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmi_get_date(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remapped_nvme_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %9) #10
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_get_irq_vector(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -136
  %6 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %1) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_p5wdh_hardreset(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahci_port_priv, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %16 = getelementptr inbounds %struct.ahci_host_priv, ptr %12, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %6) #10
  %19 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  %20 = load ptr, ptr %19, align 64
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 9
  %23 = load i8, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i8 -96, i8 -80
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -128, ptr %30, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %15) #10
  %31 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %36 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #10
  %37 = getelementptr inbounds %struct.ahci_host_priv, ptr %12, i32 0, i32 25
  %38 = load ptr, ptr %37, align 4
  call void %38(ptr noundef %6) #10
  %39 = load i8, ptr %5, align 1, !range !25
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %3
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = add i32 %42, 200
  %44 = call i32 @ata_wait_after_reset(ptr noundef %0, i32 noundef %43, ptr noundef nonnull @ahci_check_ready) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @ahci_kick_engine(ptr noundef %6) #10
  br label %48

48:                                               ; preds = %46, %41, %3
  %49 = phi i32 [ %44, %46 ], [ 0, %41 ], [ %36, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_after_reset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_kick_engine(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_shutdown_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %15 = and i32 %14, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #10, !srcloc !22
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %17 = tail call i32 @ata_host_suspend(ptr noundef %3, [1 x i32] [i32 2]) #10
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi i32 [ -5, %9 ], [ %17, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -104
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 4318
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -102
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 3461
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -100
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 4203
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -98
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -13431
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @ahci_mcp89_apple_enable(ptr noundef %2)
  br label %21

21:                                               ; preds = %20, %16, %12, %8, %1
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = tail call i32 @ahci_reset_controller(ptr noundef %4) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 -102
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 24865
  %40 = select i1 %39, i32 256, i32 512
  %41 = getelementptr inbounds %struct.ahci_host_priv, ptr %30, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 256
  %44 = getelementptr i8, ptr %43, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %45 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #10, !srcloc !22
  %46 = getelementptr i8, ptr %44, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %47) #10, !srcloc !22
  br label %50

50:                                               ; preds = %49, %34, %28
  tail call void @ahci_init_controller(ptr noundef %4) #10
  br label %51

51:                                               ; preds = %50, %21
  tail call void @ata_host_resume(ptr noundef %4) #10
  br label %52

52:                                               ; preds = %51, %25
  %53 = phi i32 [ 0, %51 ], [ %26, %25 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %10 = and i32 %9, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #10, !srcloc !22
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pci_device_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ahci_reset_controller(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -102
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 24865
  %18 = select i1 %17, i32 256, i32 512
  %19 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 256
  %22 = getelementptr i8, ptr %21, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %23 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #10, !srcloc !22
  %24 = getelementptr i8, ptr %22, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %25) #10, !srcloc !22
  br label %28

28:                                               ; preds = %27, %12, %6
  tail call void @ahci_init_controller(ptr noundef %3) #10
  br label %29

29:                                               ; preds = %28, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
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
!9 = !{i64 3878168}
!10 = !{i64 2155203384}
!11 = !{i64 2154530869}
!12 = !{i64 2154531167}
!13 = !{i64 2155203780}
!14 = !{i32 0, i32 33}
!15 = !{i64 2155206785}
!16 = !{i64 2147974530}
!17 = !{i64 472840, i64 2147962811, i64 2147962837, i64 2147962884, i64 2147962906, i64 2147962934, i64 2147962954}
!18 = !{i64 459409, i64 459434, i64 459456, i64 459472, i64 459484, i64 459504, i64 459528, i64 459544, i64 459556}
!19 = !{i64 2147974656}
!20 = !{i64 2147975023, i64 2147975049, i64 2147975078, i64 2147975112, i64 2147975143, i64 2147975166}
!21 = !{i64 2155182842}
!22 = !{i64 3877750}
!23 = !{i64 2155183333}
!24 = !{i64 2155184091}
!25 = !{i8 0, i8 2}
!26 = !{i64 2155187499}
!27 = !{i64 2155187682}
!28 = !{i64 2155188137}
