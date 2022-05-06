; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_pci.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_init_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_init_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_init_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_remove_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_remove_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_remove_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_suspend_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_suspend_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_suspend_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pciserial_resume_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22pciserial_resume_ports\22\09\09\09\09\09"
module asm "__kstrtabns_pciserial_resume_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_serial_quirk = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.timedia_struct = type { i32, ptr }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pciserial_board = type { i32, i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.serial_private = type { ptr, i32, ptr, ptr, [0 x i32] }
%struct.pci_bus_region = type { i32, i32 }
%struct.f815xxa_data = type { %struct.spinlock, i32 }

@pci_use_msi = internal constant [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 38672, i32 39186, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 38672, i32 39202, i32 40960, i32 4096, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5520, i32 894, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", align 1
@__kstrtab_pciserial_init_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_init_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_init_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_init_ports to i32), ptr @__kstrtab_pciserial_init_ports, ptr @__kstrtabns_pciserial_init_ports }, section "___ksymtab_gpl+pciserial_init_ports", align 4
@__kstrtab_pciserial_remove_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_remove_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_remove_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_remove_ports to i32), ptr @__kstrtab_pciserial_remove_ports, ptr @__kstrtabns_pciserial_remove_ports }, section "___ksymtab_gpl+pciserial_remove_ports", align 4
@__kstrtab_pciserial_suspend_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_suspend_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_suspend_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_suspend_ports to i32), ptr @__kstrtab_pciserial_suspend_ports, ptr @__kstrtabns_pciserial_suspend_ports }, section "___ksymtab_gpl+pciserial_suspend_ports", align 4
@__kstrtab_pciserial_resume_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_pciserial_resume_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_pciserial_resume_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pciserial_resume_ports to i32), ptr @__kstrtab_pciserial_resume_ports, ptr @__kstrtabns_pciserial_resume_ports }, section "___ksymtab_gpl+pciserial_resume_ports", align 4
@__initcall__kmod_8250_pci__230_5468_serial_pci_driver_init6 = internal global ptr @serial_pci_driver_init, section ".initcall6.init", align 4
@serial_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.15, ptr @serial_pci_tbl, ptr @pciserial_init_one, ptr @pciserial_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serial8250_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pciserial_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_serial_pci_driver_exit = internal global ptr @serial_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [47 x i8] c"8250_pci.file=drivers/tty/serial/8250/8250_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [21 x i8] c"8250_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [64 x i8] c"8250_pci.description=Generic 8250/16x50 PCI serial probe module\00", section ".modinfo", align 1
@pci_serial_quirks = internal global [76 x %struct.pci_serial_quirk] [%struct.pci_serial_quirk { i32 4328, i32 33166, i32 -1, i32 -1, ptr null, ptr null, ptr @addidata_apci7800_setup, ptr null }, %struct.pci_serial_quirk { i32 5339, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @afavlab_setup, ptr null }, %struct.pci_serial_quirk { i32 4156, i32 4168, i32 -1, i32 -1, ptr null, ptr @pci_hp_diva_init, ptr @pci_hp_diva_setup, ptr null }, %struct.pci_serial_quirk { i32 5520, i32 894, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_hp_diva_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 6496, i32 58559, i32 -1, ptr null, ptr @pci_inteli960ni_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4194, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4239, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 4229, i32 -1, i32 -1, ptr null, ptr null, ptr @skip_tx_en_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 11878, i32 -1, i32 -1, ptr null, ptr null, ptr @ce4100_serial_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 7485, i32 -1, i32 -1, ptr null, ptr null, ptr @kt_serial_setup, ptr null }, %struct.pci_serial_quirk { i32 4739, i32 34930, i32 -1, i32 -1, ptr null, ptr @pci_ite887x_init, ptr @pci_default_setup, ptr @pci_ite887x_exit }, %struct.pci_serial_quirk { i32 4243, i32 53936, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53584, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53568, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53552, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53872, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53840, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53745, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53744, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53728, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53712, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53664, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 53648, i32 -1, i32 -1, ptr null, ptr @pci_ni8420_init, ptr @pci_default_setup, ptr @pci_ni8420_exit }, %struct.pci_serial_quirk { i32 4243, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_ni8430_init, ptr @pci_ni8430_setup, ptr @pci_ni8430_exit }, %struct.pci_serial_quirk { i32 4956, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_quatech_init, ptr @pci_quatech_setup, ptr null }, %struct.pci_serial_quirk { i32 5332, i32 1024, i32 -1, i32 -1, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 5332, i32 1026, i32 -1, i32 -1, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 36944, i32 55373, i32 16469, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 36944, i32 4521, i32 21300, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4277, i32 4202, i32 4277, i32 4202, ptr null, ptr @pci_plx9050_init, ptr @pci_default_setup, ptr @pci_plx9050_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 264, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 520, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 776, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4683, i32 1, i32 4683, i32 1032, ptr null, ptr @sbs_init, ptr @sbs_setup, ptr @sbs_exit }, %struct.pci_serial_quirk { i32 4895, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_siig_init, ptr @pci_siig_setup, ptr null }, %struct.pci_serial_quirk { i32 5330, i32 32832, i32 -1, i32 -1, ptr null, ptr null, ptr @titan_400l_800l_setup, ptr null }, %struct.pci_serial_quirk { i32 5330, i32 32896, i32 -1, i32 -1, ptr null, ptr null, ptr @titan_400l_800l_setup, ptr null }, %struct.pci_serial_quirk { i32 5129, i32 29032, i32 5129, i32 -1, ptr @pci_timedia_probe, ptr @pci_timedia_init, ptr @pci_timedia_setup, ptr null }, %struct.pci_serial_quirk { i32 5129, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_timedia_setup, ptr null }, %struct.pci_serial_quirk { i32 8148, i32 6553, i32 8148, i32 -1, ptr null, ptr null, ptr @pci_sunix_setup, ptr null }, %struct.pci_serial_quirk { i32 4445, i32 259, i32 -1, i32 -1, ptr null, ptr @pci_xircom_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 38672, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_netmos_init, ptr @pci_netmos_9900_setup, ptr null }, %struct.pci_serial_quirk { i32 29697, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_endrun_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 5141, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 5410, i32 -1, i32 -1, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4431, i32 246, i32 4116, i32 -1, ptr null, ptr @pci_oxsemi_tornado_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34833, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34834, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34835, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 32902, i32 34836, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32807, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32808, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32809, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32780, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4315, i32 32781, i32 -1, i32 -1, ptr null, ptr @pci_eg20t_init, ptr @pci_default_setup, ptr null }, %struct.pci_serial_quirk { i32 4277, i32 49153, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_omegapci_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 20563, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 28755, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 13395, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 20550, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 12883, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch353_setup, ptr null }, %struct.pci_serial_quirk { i32 17224, i32 29043, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch355_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 12883, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 12880, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 13424, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_wch_ch38x_setup, ptr null }, %struct.pci_serial_quirk { i32 7168, i32 14419, i32 -1, i32 -1, ptr null, ptr @pci_wch_ch38x_init, ptr @pci_wch_ch38x_setup, ptr @pci_wch_ch38x_exit }, %struct.pci_serial_quirk { i32 38672, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_asix_setup, ptr null }, %struct.pci_serial_quirk { i32 5348, i32 5642, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_brcm_trumanage_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4356, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4360, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4370, i32 -1, i32 -1, ptr null, ptr @pci_fintek_init, ptr @pci_fintek_setup, ptr null }, %struct.pci_serial_quirk { i32 5011, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_moxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4612, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4616, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 7209, i32 4626, i32 -1, i32 -1, ptr null, ptr @pci_fintek_f815xxa_init, ptr @pci_fintek_f815xxa_setup, ptr null }, %struct.pci_serial_quirk { i32 -1, i32 -1, i32 -1, i32 -1, ptr null, ptr null, ptr @pci_default_setup, ptr null }], align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@inta_addr = internal unnamed_addr constant [7 x i16] [i16 672, i16 704, i16 544, i16 576, i16 480, i16 512, i16 640], align 2
@.str.1 = private unnamed_addr constant [8 x i8] c"ite887x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"could not find iobase\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Unknown ITE887x\00", align 1
@.str.4 = private unnamed_addr constant [177 x i8] c"%s\0APlease send the output of lspci -vv, this\0Amessage (0x%04x,0x%04x,0x%04x,0x%04x), the\0Amanufacturer and name of serial board or\0Amodem board to <linux-serial@vger.kernel.org>.\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no memory in bar\00", align 1
@quatech_cards = internal global [20 x %struct.pci_device_id] [%struct.pci_device_id { i32 4956, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 433, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 304, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 320, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 336, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4956, i32 480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 400, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 416, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 432, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 448, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4956, i32 632, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown port type '0x%04X'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"software control of RS422 features not currently supported.\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"no memory in bar 0\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Unknown SIIG card\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"ignoring Timedia subdevice %04x for parport_serial\0A\00", align 1
@timedia_data = internal unnamed_addr constant [4 x %struct.timedia_struct] [%struct.timedia_struct { i32 1, ptr @timedia_single_port }, %struct.timedia_struct { i32 2, ptr @timedia_dual_port }, %struct.timedia_struct { i32 4, ptr @timedia_quad_port }, %struct.timedia_struct { i32 8, ptr @timedia_eight_port }], align 4
@timedia_single_port = internal constant [6 x i16] [i16 16421, i16 16423, i16 16424, i16 20517, i16 20519, i16 0], align 2
@timedia_dual_port = internal constant [30 x i16] [i16 2, i16 16438, i16 16439, i16 16440, i16 16504, i16 16505, i16 16517, i16 16520, i16 16521, i16 20535, i16 20600, i16 20601, i16 20613, i16 24697, i16 28793, i16 -32647, i16 -32457, i16 -32456, i16 -32201, i16 -32200, i16 -28551, i16 -28361, i16 -28360, i16 -28105, i16 -28104, i16 -24455, i16 -20359, i16 -16263, i16 -12167, i16 0], align 2
@timedia_quad_port = internal constant [23 x i16] [i16 16469, i16 16470, i16 16533, i16 16534, i16 20566, i16 -32426, i16 -32425, i16 -32170, i16 -32169, i16 -28586, i16 -28330, i16 -28329, i16 -28328, i16 -28327, i16 -28074, i16 -28073, i16 -24490, i16 -24233, i16 -24232, i16 -24231, i16 -20394, i16 -20137, i16 0], align 2
@timedia_eight_port = internal constant [13 x i16] [i16 16485, i16 16486, i16 20581, i16 20582, i16 -32410, i16 -28570, i16 -28314, i16 -28313, i16 -28312, i16 -24474, i16 -24217, i16 -24216, i16 0], align 2
@.str.11 = private unnamed_addr constant [30 x i8] c"unknown NetMos/Mostech device\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"NetMos/Mostech serial driver ignoring port on ambiguous config.\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"unknown NetMos/Mostech program interface\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"8250_pci\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@serial_pci_tbl = internal constant [359 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 13856, i32 13856, i32 1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 5118, i32 13848, i32 13848, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5118, i32 63000, i32 13848, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 1, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 2, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 4528, i32 1, i32 4804, i32 3, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 1, i32 0, i32 0, i32 43, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 2, i32 0, i32 0, i32 42, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 3, i32 0, i32 0, i32 41, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 4, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 5, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 6, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 7, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 8, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 9, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 10, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 11, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4528, i32 2, i32 4804, i32 12, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4804, i32 513, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4804, i32 514, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 5339, i32 8528, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4958, i32 28929, i32 -1, i32 -1, i32 0, i32 0, i32 56, i32 0 }, %struct.pci_device_id { i32 4958, i32 29185, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4958, i32 29698, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4958, i32 29186, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4958, i32 29697, i32 -1, i32 -1, i32 0, i32 0, i32 58, i32 0 }, %struct.pci_device_id { i32 4958, i32 30721, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4958, i32 30723, i32 -1, i32 -1, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4958, i32 30724, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4277, i32 40961, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 4277, i32 4355, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4277, i32 4214, i32 -1, i32 -1, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 4277, i32 4215, i32 -1, i32 -1, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 5508, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4277, i32 5512, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4521, i32 21300, i32 0, i32 0, i32 67, i32 0 }, %struct.pci_device_id { i32 5332, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 69, i32 0 }, %struct.pci_device_id { i32 5332, i32 1026, i32 -1, i32 -1, i32 0, i32 0, i32 68, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4862, i32 273, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 49, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 33, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 17, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4832, i32 65, i32 0, i32 0, i32 51, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4685, i32 61441, i32 0, i32 0, i32 49, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 4685, i32 61456, i32 0, i32 0, i32 50, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 55373, i32 16469, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 4202, i32 4277, i32 4202, i32 0, i32 0, i32 70, i32 0 }, %struct.pci_device_id { i32 29697, i32 57600, i32 -1, i32 -1, i32 0, i32 0, i32 71, i32 0 }, %struct.pci_device_id { i32 4956, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 433, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 64, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4956, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4956, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 304, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 320, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4956, i32 336, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4956, i32 368, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4956, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 400, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4956, i32 416, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4956, i32 432, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4956, i32 448, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4956, i32 480, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4555, i32 38145, i32 4555, i32 40964, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 4895, i32 8272, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5141, i32 38149, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 4895, i32 9472, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 4895, i32 9520, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5141, i32 38154, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5141, i32 38155, i32 5141, i32 1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5141, i32 38145, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5141, i32 38177, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5141, i32 38200, i32 -1, i32 -1, i32 0, i32 0, i32 55, i32 0 }, %struct.pci_device_id { i32 5141, i32 49409, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49413, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49435, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49439, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49440, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49444, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49464, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49469, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 49472, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49473, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49476, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49477, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5141, i32 49496, i32 -1, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5141, i32 49501, i32 -1, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5141, i32 49672, i32 -1, i32 -1, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5141, i32 49677, i32 -1, i32 -1, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5141, i32 49928, i32 -1, i32 -1, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 5141, i32 49933, i32 -1, i32 -1, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 5141, i32 50187, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50191, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50203, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50207, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50219, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50223, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50235, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50239, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50251, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50255, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50267, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50271, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50283, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50287, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50299, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50303, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50315, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50319, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50331, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50335, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50347, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50351, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50363, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50367, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50379, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5141, i32 50383, i32 -1, i32 -1, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16385, i32 0, i32 0, i32 73, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16386, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16388, i32 0, i32 0, i32 75, i32 0 }, %struct.pci_device_id { i32 5410, i32 16384, i32 5410, i32 16392, i32 0, i32 0, i32 76, i32 0 }, %struct.pci_device_id { i32 4431, i32 246, i32 4116, i32 -1, i32 0, i32 0, i32 74, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 264, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 520, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 776, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4683, i32 1, i32 4683, i32 1032, i32 0, i32 0, i32 82, i32 0 }, %struct.pci_device_id { i32 4545, i32 1152, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 5330, i32 40961, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5330, i32 40965, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5330, i32 40963, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40964, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 32784, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 5330, i32 32800, i32 -1, i32 -1, i32 0, i32 0, i32 39, i32 0 }, %struct.pci_device_id { i32 5330, i32 32832, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 5330, i32 32896, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5330, i32 32808, i32 -1, i32 -1, i32 0, i32 0, i32 64, i32 0 }, %struct.pci_device_id { i32 5330, i32 32840, i32 -1, i32 -1, i32 0, i32 0, i32 65, i32 0 }, %struct.pci_device_id { i32 5330, i32 32904, i32 -1, i32 -1, i32 0, i32 0, i32 66, i32 0 }, %struct.pci_device_id { i32 5330, i32 40969, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40967, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40968, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 40976, i32 -1, i32 -1, i32 0, i32 0, i32 110, i32 0 }, %struct.pci_device_id { i32 5330, i32 40978, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 40979, i32 -1, i32 -1, i32 0, i32 0, i32 112, i32 0 }, %struct.pci_device_id { i32 5330, i32 40980, i32 -1, i32 -1, i32 0, i32 0, i32 113, i32 0 }, %struct.pci_device_id { i32 5330, i32 40982, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 40983, i32 -1, i32 -1, i32 0, i32 0, i32 111, i32 0 }, %struct.pci_device_id { i32 5330, i32 41734, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5330, i32 41744, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41746, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41748, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5330, i32 41749, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4895, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4098, i32 -1, i32 -1, i32 0, i32 0, i32 48, i32 0 }, %struct.pci_device_id { i32 4895, i32 4144, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4145, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4146, i32 -1, i32 -1, i32 0, i32 0, i32 59, i32 0 }, %struct.pci_device_id { i32 4895, i32 4176, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 4177, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 4178, i32 -1, i32 -1, i32 0, i32 0, i32 60, i32 0 }, %struct.pci_device_id { i32 4895, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8194, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4895, i32 8240, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8241, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8242, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4895, i32 8272, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8273, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8274, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4895, i32 8320, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4895, i32 8321, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4895, i32 8322, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 1, i32 0, i32 0, i32 79, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 2, i32 0, i32 0, i32 81, i32 0 }, %struct.pci_device_id { i32 36366, i32 770, i32 36366, i32 3, i32 0, i32 0, i32 80, i32 0 }, %struct.pci_device_id { i32 5141, i32 38161, i32 -1, i32 -1, i32 0, i32 0, i32 72, i32 0 }, %struct.pci_device_id { i32 5129, i32 29032, i32 5129, i32 -1, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 1, i32 0, i32 0, i32 105, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 2, i32 0, i32 0, i32 106, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 4, i32 0, i32 0, i32 107, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 132, i32 0, i32 0, i32 107, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 8, i32 0, i32 0, i32 108, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 136, i32 0, i32 0, i32 108, i32 0 }, %struct.pci_device_id { i32 8148, i32 6553, i32 8148, i32 16, i32 0, i32 0, i32 109, i32 0 }, %struct.pci_device_id { i32 5339, i32 8576, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5339, i32 8578, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5127, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 258, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 288, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 289, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5127, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5127, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5127, i32 512, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 514, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5127, i32 1280, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 5127, i32 1536, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 6530, i32 5632, i32 4612, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5632, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5887, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5888, i32 4612, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 5888, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 6530, i32 6143, i32 4616, i32 4, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4136, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 4136, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 40, i32 0 }, %struct.pci_device_id { i32 5546, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 57, i32 0 }, %struct.pci_device_id { i32 32902, i32 6496, i32 58559, i32 -1, i32 0, i32 0, i32 77, i32 0 }, %struct.pci_device_id { i32 4445, i32 259, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4445, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4730, i32 4100, i32 4168, i32 5376, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4265, i32 3, i32 65280, i32 0, i32 0, i32 0, i32 78, i32 0 }, %struct.pci_device_id { i32 4156, i32 4168, i32 4156, i32 4865, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4156, i32 4168, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4156, i32 4752, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 5520, i32 894, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 26214, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 61, i32 0 }, %struct.pci_device_id { i32 26214, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 62, i32 0 }, %struct.pci_device_id { i32 26214, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 5407, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4739, i32 34930, i32 -1, i32 -1, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id { i32 4954, i32 3456, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3520, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2977, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2721, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4954, i32 2145, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3361, i32 -1, i32 -1, i32 459264, i32 16776960, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 3636, i32 -1, i32 -1, i32 459264, i32 16776960, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2113, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2177, i32 -1, i32 -1, i32 0, i32 0, i32 47, i32 0 }, %struct.pci_device_id { i32 4954, i32 2273, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2241, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2211, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2657, i32 -1, i32 -1, i32 0, i32 0, i32 44, i32 0 }, %struct.pci_device_id { i32 4954, i32 2818, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2689, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 2691, i32 -1, i32 -1, i32 0, i32 0, i32 45, i32 0 }, %struct.pci_device_id { i32 4954, i32 3137, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4954, i32 2337, i32 -1, i32 -1, i32 0, i32 0, i32 46, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5471, i32 61441, i32 0, i32 0, i32 53, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5471, i32 61456, i32 0, i32 0, i32 54, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 512, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 768, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1024, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1280, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1536, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 1792, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 2048, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 3072, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 3328, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 7424, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8192, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8448, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8704, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 8960, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9216, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9472, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9728, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 9984, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12288, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12544, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 12800, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13056, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13312, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 13568, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 15360, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5410, i32 256, i32 5410, i32 15616, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 6489, i32 40964, i32 -1, i32 -1, i32 0, i32 0, i32 83, i32 0 }, %struct.pci_device_id { i32 4243, i32 53936, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4243, i32 53584, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4243, i32 53568, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53552, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53872, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53840, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53745, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4243, i32 53744, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4243, i32 53728, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53712, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 53664, i32 -1, i32 -1, i32 0, i32 0, i32 38, i32 0 }, %struct.pci_device_id { i32 4243, i32 53648, i32 -1, i32 -1, i32 0, i32 0, i32 37, i32 0 }, %struct.pci_device_id { i32 4243, i32 28800, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28891, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28893, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28895, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28898, i32 -1, i32 -1, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4243, i32 28900, i32 -1, i32 -1, i32 0, i32 0, i32 86, i32 0 }, %struct.pci_device_id { i32 4243, i32 28902, i32 -1, i32 -1, i32 0, i32 0, i32 87, i32 0 }, %struct.pci_device_id { i32 4243, i32 28903, i32 -1, i32 -1, i32 0, i32 0, i32 87, i32 0 }, %struct.pci_device_id { i32 4243, i32 28904, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28906, i32 -1, i32 -1, i32 0, i32 0, i32 84, i32 0 }, %struct.pci_device_id { i32 4243, i32 28908, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 4243, i32 28910, i32 -1, i32 -1, i32 0, i32 0, i32 85, i32 0 }, %struct.pci_device_id { i32 5011, i32 4132, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4133, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4165, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4420, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4448, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4449, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4482, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4483, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 4898, i32 -1, i32 -1, i32 0, i32 0, i32 114, i32 0 }, %struct.pci_device_id { i32 5011, i32 4930, i32 -1, i32 -1, i32 0, i32 0, i32 115, i32 0 }, %struct.pci_device_id { i32 5011, i32 4993, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5011, i32 5763, i32 -1, i32 -1, i32 0, i32 0, i32 116, i32 0 }, %struct.pci_device_id { i32 5560, i32 28672, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28673, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28674, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4328, i32 33166, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 5560, i32 28681, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28682, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28683, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5560, i32 28684, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5560, i32 28685, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5560, i32 28686, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5560, i32 28687, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5560, i32 28690, i32 -1, i32 -1, i32 0, i32 0, i32 90, i32 0 }, %struct.pci_device_id { i32 5560, i32 28689, i32 -1, i32 -1, i32 0, i32 0, i32 89, i32 0 }, %struct.pci_device_id { i32 5560, i32 28688, i32 -1, i32 -1, i32 0, i32 0, i32 88, i32 0 }, %struct.pci_device_id { i32 5560, i32 28691, i32 -1, i32 -1, i32 0, i32 0, i32 91, i32 0 }, %struct.pci_device_id { i32 38672, i32 38965, i32 4116, i32 665, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 38672, i32 39169, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39186, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39202, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39172, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39168, i32 40960, i32 12290, i32 0, i32 0, i32 94, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 4096, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 12290, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 12292, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 32902, i32 11878, i32 -1, i32 -1, i32 0, i32 0, i32 92, i32 0 }, %struct.pci_device_id { i32 4277, i32 49153, i32 -1, i32 -1, i32 0, i32 0, i32 93, i32 0 }, %struct.pci_device_id { i32 5348, i32 5642, i32 -1, i32 -1, i32 0, i32 0, i32 95, i32 0 }, %struct.pci_device_id { i32 21362, i32 26738, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 17224, i32 13395, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 17224, i32 20550, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 17224, i32 29043, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 7168, i32 12883, i32 -1, i32 -1, i32 0, i32 0, i32 102, i32 0 }, %struct.pci_device_id { i32 7168, i32 13424, i32 -1, i32 -1, i32 0, i32 0, i32 103, i32 0 }, %struct.pci_device_id { i32 7168, i32 14419, i32 -1, i32 -1, i32 0, i32 0, i32 104, i32 0 }, %struct.pci_device_id { i32 4332, i32 33130, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4332, i32 33131, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 7209, i32 4356, i32 -1, i32 -1, i32 0, i32 0, i32 96, i32 0 }, %struct.pci_device_id { i32 7209, i32 4360, i32 -1, i32 -1, i32 0, i32 0, i32 97, i32 0 }, %struct.pci_device_id { i32 7209, i32 4370, i32 -1, i32 -1, i32 0, i32 0, i32 98, i32 0 }, %struct.pci_device_id { i32 7209, i32 4612, i32 -1, i32 -1, i32 0, i32 0, i32 99, i32 0 }, %struct.pci_device_id { i32 7209, i32 4616, i32 -1, i32 -1, i32 0, i32 0, i32 100, i32 0 }, %struct.pci_device_id { i32 7209, i32 4626, i32 -1, i32 -1, i32 0, i32 0, i32 101, i32 0 }, %struct.pci_device_id { i32 5633, i32 2048, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5633, i32 43009, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 7439, i32 33360, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 458752, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 459520, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 459264, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@serial8250_err_handler = internal constant %struct.pci_error_handlers { ptr @serial8250_io_error_detected, ptr null, ptr @serial8250_io_slot_reset, ptr null, ptr null, ptr @serial8250_io_resume }, align 4
@pciserial_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr @pciserial_suspend_one, ptr @pciserial_resume_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"invalid driver_data: %ld\0A\00", align 1
@pci_boards = internal global [117 x %struct.pciserial_board] [%struct.pciserial_board { i32 0, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 5, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 1130000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1152000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1250000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 1843200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 1843200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 8, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 16, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 1250000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 9, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 1, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 2, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 1382400, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 16, i32 460800, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 8, i32 1152000, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 1, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 2, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 3, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 4, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 2, i32 2, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 10, i32 2, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 10, i32 4, i32 921600, i32 1024, i32 7, i32 0 }, %struct.pciserial_board { i32 2, i32 4, i32 921600, i32 32, i32 2, i32 3 }, %struct.pciserial_board { i32 0, i32 2, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 256, i32 32, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 32, i32 921600, i32 32, i32 2, i32 65536 }, %struct.pciserial_board { i32 128, i32 1, i32 458333, i32 8, i32 0, i32 131448 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 6, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 8, i32 921600, i32 64, i32 2, i32 512 }, %struct.pciserial_board { i32 0, i32 8, i32 460800, i32 256, i32 4, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 8333333, i32 0, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 4, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 8, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 16, i32 3686400, i32 16, i32 0, i32 2048 }, %struct.pciserial_board { i32 0, i32 1, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 3906250, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 8, i32 2, i32 921600, i32 0, i32 2, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 0, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 115200, i32 0, i32 2, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 12, i32 115200, i32 8, i32 0, i32 64 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 12, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 115200, i32 8, i32 0, i32 192 }, %struct.pciserial_board { i32 0, i32 4, i32 115200, i32 8, i32 0, i32 192 }, %struct.pciserial_board { i32 0, i32 8, i32 115200, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 2, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 4, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 8, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 16, i32 921600, i32 8, i32 0, i32 0 }, %struct.pciserial_board { i32 0, i32 1, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 2, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 4, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 0, i32 8, i32 4000000, i32 512, i32 0, i32 4096 }, %struct.pciserial_board { i32 1, i32 2, i32 921600, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 4, i32 921600, i32 512, i32 0, i32 0 }, %struct.pciserial_board { i32 1, i32 8, i32 921600, i32 512, i32 0, i32 0 }], align 4
@blacklist = internal constant [30 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 21591, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4183, i32 12370, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5443, i32 12370, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 17224, i32 28755, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 17224, i32 20563, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7168, i32 12880, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2075, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2076, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2077, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4497, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6360, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6616, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2358, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3850, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 3852, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8842, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 8844, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19351, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19352, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19353, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19354, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 19355, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40163, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 40164, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5032, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6391, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 18767, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"Redundant entry in serial pci_table.\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"Unable to re-enable ports, trying to continue.\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_serial_pci_driver_exit, ptr @__initcall__kmod_8250_pci__230_5468_serial_pci_driver_init6, ptr @__ksymtab_pciserial_init_ports, ptr @__ksymtab_pciserial_remove_ports, ptr @__ksymtab_pciserial_resume_ports, ptr @__ksymtab_pciserial_suspend_ports, ptr @serial_pci_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pciserial_init_ports(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  br label %12

12:                                               ; preds = %42, %2
  %13 = phi ptr [ @pci_serial_quirks, %2 ], [ %43, %42 ]
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, -1
  %16 = icmp ne i32 %14, %8
  %17 = and i1 %15, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i16, ptr %9, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %20, -1
  %24 = icmp ne i32 %20, %22
  %25 = and i1 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = load i16, ptr %10, align 4
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %28, -1
  %32 = icmp ne i32 %28, %30
  %33 = and i1 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i16, ptr %11, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %36, -1
  %40 = icmp ne i32 %36, %38
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34, %26, %18, %12
  %43 = getelementptr %struct.pci_serial_quirk, ptr %13, i32 1
  br label %12

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = tail call i32 %46(ptr noundef %0) #13
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = inttoptr i32 %49 to ptr
  br label %124

53:                                               ; preds = %48
  %54 = icmp eq i32 %49, 0
  %55 = select i1 %54, i32 %5, i32 %49
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i32 [ %5, %44 ], [ %55, %53 ]
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 4) #13
  %59 = extractvalue { i32, i1 } %58, 1
  %60 = extractvalue { i32, i1 } %58, 0
  %61 = tail call i32 @llvm.uadd.sat.i32(i32 %60, i32 16) #13
  %62 = select i1 %59, i32 -1, i32 %61
  %63 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %118, label %65

65:                                               ; preds = %56
  store ptr %0, ptr %63, align 64
  %66 = getelementptr inbounds %struct.serial_private, ptr %63, i32 0, i32 2
  store ptr %13, ptr %66, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %3, i8 0, i32 460, i1 false)
  %67 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 33
  store i32 285212736, ptr %67, align 4
  %68 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %69, 4
  %71 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 22
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %1, align 4
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = tail call ptr @pci_match_id(ptr noundef nonnull @pci_use_msi, ptr noundef %0) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @pci_set_master(ptr noundef %0) #13
  store i32 268435520, ptr %67, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ 7, %78 ], [ 1, %75 ]
  %81 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %80, ptr noundef null) #13
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  tail call void @kfree(ptr noundef nonnull %63) #13
  %84 = inttoptr i32 %81 to ptr
  br label %118

85:                                               ; preds = %79
  %86 = tail call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #13
  %87 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %65
  %89 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %90 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  store ptr %89, ptr %90, align 4
  %91 = icmp sgt i32 %57, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 6
  br label %94

94:                                               ; preds = %111, %92
  %95 = phi i32 [ 0, %92 ], [ %112, %111 ]
  %96 = load ptr, ptr %93, align 4
  %97 = call i32 %96(ptr noundef nonnull %63, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %95) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %3) #13
  %101 = getelementptr %struct.serial_private, ptr %63, i32 0, i32 4, i32 %95
  store i32 %100, ptr %101, align 4
  %102 = icmp slt i32 %100, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str, i32 noundef %105, i32 noundef %107, i32 noundef %110, i32 noundef %100) #15
  br label %114

111:                                              ; preds = %99
  %112 = add nuw nsw i32 %95, 1
  %113 = icmp eq i32 %112, %57
  br i1 %113, label %114, label %94

114:                                              ; preds = %111, %103, %94, %88
  %115 = phi i32 [ %95, %103 ], [ 0, %88 ], [ %57, %111 ], [ %95, %94 ]
  %116 = getelementptr inbounds %struct.serial_private, ptr %63, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.serial_private, ptr %63, i32 0, i32 3
  store ptr %1, ptr %117, align 4
  br label %124

118:                                              ; preds = %83, %56
  %119 = phi ptr [ %84, %83 ], [ inttoptr (i32 -12 to ptr), %56 ]
  %120 = getelementptr inbounds %struct.pci_serial_quirk, ptr %13, i32 0, i32 7
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  tail call void %121(ptr noundef %0) #13
  br label %124

124:                                              ; preds = %123, %118, %114, %51
  %125 = phi ptr [ %63, %114 ], [ %52, %51 ], [ %119, %123 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %3) #13
  ret ptr %125
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pciserial_remove_ports(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serial_private, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = getelementptr %struct.serial_private, ptr %0, i32 0, i32 4, i32 %6
  %8 = load i32, ptr %7, align 4
  tail call void @serial8250_unregister_port(i32 noundef %8) #13
  %9 = add nuw i32 %6, 1
  %10 = load i32, ptr %2, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %1
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 7
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %18 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 9
  %19 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 10
  br label %20

20:                                               ; preds = %50, %12
  %21 = phi ptr [ @pci_serial_quirks, %12 ], [ %51, %50 ]
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, -1
  %24 = icmp ne i32 %22, %16
  %25 = and i1 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.pci_serial_quirk, ptr %21, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i16, ptr %17, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %28, -1
  %32 = icmp ne i32 %28, %30
  %33 = and i1 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.pci_serial_quirk, ptr %21, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = load i16, ptr %18, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %36, -1
  %40 = icmp ne i32 %36, %38
  %41 = and i1 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.pci_serial_quirk, ptr %21, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load i16, ptr %19, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %44, -1
  %48 = icmp ne i32 %44, %46
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %34, %26, %20
  %51 = getelementptr %struct.pci_serial_quirk, ptr %21, i32 1
  br label %20

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.pci_serial_quirk, ptr %21, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void %54(ptr noundef %13) #13
  br label %57

57:                                               ; preds = %56, %52
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pciserial_suspend_ports(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serial_private, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %13, %1
  %6 = phi i32 [ %14, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %8 = getelementptr %struct.serial_private, ptr %0, i32 0, i32 4, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @serial8250_suspend_port(i32 noundef %9) #13
  %12 = load i32, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %6, %5 ], [ %12, %11 ]
  %15 = add nuw i32 %7, 1
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %5, label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.serial_private, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pci_serial_quirk, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %0, align 4
  tail call void %21(ptr noundef %24) #13
  br label %25

25:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pciserial_resume_ports(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serial_private, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_serial_quirk, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 %5(ptr noundef %8) #13
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.serial_private, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ %23, %22 ], [ %12, %10 ]
  %16 = phi i32 [ %24, %22 ], [ 0, %10 ]
  %17 = getelementptr %struct.serial_private, ptr %0, i32 0, i32 4, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  tail call void @serial8250_resume_port(i32 noundef %18) #13
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %15, %14 ], [ %21, %20 ]
  %24 = add nuw i32 %16, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %14, label %26

26:                                               ; preds = %22, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @serial_pci_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @serial_pci_driver, ptr noundef null, ptr noundef nonnull @.str.14) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @serial_pci_driver_exit() #5 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @serial_pci_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addidata_apci7800_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, 7
  %9 = icmp slt i32 %3, 2
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = icmp ult i32 %3, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %8, 1
  %14 = add nsw i32 %3, -2
  br label %23

15:                                               ; preds = %10
  %16 = icmp ult i32 %3, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %8, 2
  %19 = add nsw i32 %3, -4
  br label %23

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %8, 3
  %22 = add nsw i32 %3, -6
  br label %23

23:                                               ; preds = %20, %17, %12, %4
  %24 = phi i32 [ %14, %12 ], [ %22, %20 ], [ %19, %17 ], [ %3, %4 ]
  %25 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %18, %17 ], [ %8, %4 ]
  %26 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, %24
  %29 = add i32 %28, %6
  %30 = trunc i32 %25 to i8
  %31 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = icmp ugt i8 %30, 5
  br i1 %34, label %69, label %35

35:                                               ; preds = %23
  %36 = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 %25
  %37 = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 %25, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @pcim_iomap(ptr noundef %33, i32 noundef %25, i32 noundef 0) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call ptr @pcim_iomap_table(ptr noundef %33) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %48, align 2
  %49 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = load i32, ptr %36, align 8
  %51 = add i32 %50, %29
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %51, ptr %52, align 4
  %53 = tail call ptr @pcim_iomap_table(ptr noundef %33) #13
  %54 = getelementptr ptr, ptr %53, i32 %25
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %29
  %57 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = trunc i32 %32 to i8
  br label %66

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %60, align 2
  %61 = load i32, ptr %36, align 8
  %62 = add i32 %61, %29
  %63 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %65, align 4
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi i8 [ %58, %47 ], [ 0, %59 ]
  %68 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %67, ptr %68, align 1
  br label %69

69:                                               ; preds = %66, %44, %23
  %70 = phi i32 [ -22, %23 ], [ -12, %44 ], [ 0, %66 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afavlab_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %3, 4
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %3, -4
  %10 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = add i32 %12, %6
  br label %21

14:                                               ; preds = %4
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, 7
  %17 = add nsw i32 %16, %3
  %18 = trunc i32 %17 to i8
  %19 = and i32 %17, 255
  %20 = icmp ugt i8 %18, 5
  br i1 %20, label %60, label %21

21:                                               ; preds = %14, %8
  %22 = phi i32 [ 4, %8 ], [ %19, %14 ]
  %23 = phi i32 [ %13, %8 ], [ %6, %14 ]
  %24 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr %struct.pci_dev, ptr %26, i32 0, i32 47, i32 %22
  %28 = getelementptr %struct.pci_dev, ptr %26, i32 0, i32 47, i32 %22, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %21
  %33 = tail call ptr @pcim_iomap(ptr noundef %26, i32 noundef %22, i32 noundef 0) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call ptr @pcim_iomap_table(ptr noundef %26) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %35, %32
  %39 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %39, align 2
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = load i32, ptr %27, align 8
  %42 = add i32 %41, %23
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %42, ptr %43, align 4
  %44 = tail call ptr @pcim_iomap_table(ptr noundef %26) #13
  %45 = getelementptr ptr, ptr %44, i32 %22
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %23
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = trunc i32 %25 to i8
  br label %57

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %51, align 2
  %52 = load i32, ptr %27, align 8
  %53 = add i32 %52, %23
  %54 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %56, align 4
  br label %57

57:                                               ; preds = %50, %38
  %58 = phi i8 [ %49, %38 ], [ 0, %50 ]
  %59 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %58, ptr %59, align 1
  br label %60

60:                                               ; preds = %57, %35, %14
  %61 = phi i32 [ -22, %14 ], [ -12, %35 ], [ 0, %57 ]
  ret i32 %61
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_hp_diva_init(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %8 [
    i16 4169, label %4
    i16 4643, label %4
    i16 4646, label %4
    i16 4738, label %4
    i16 4170, label %5
    i16 4171, label %6
    i16 4647, label %7
    i16 4906, label %7
  ]

4:                                                ; preds = %1, %1, %1, %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1, %1
  br label %8

8:                                                ; preds = %7, %6, %5, %4, %1
  %9 = phi i32 [ 0, %1 ], [ 1, %7 ], [ 4, %6 ], [ 2, %5 ], [ 3, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_hp_diva_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 10
  %10 = load i16, ptr %9, align 2
  switch i16 %10, label %21 [
    i16 4171, label %11
    i16 4738, label %14
  ]

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 3
  %13 = select i1 %12, i32 4, i32 %3
  br label %21

14:                                               ; preds = %4
  %15 = icmp sgt i32 %3, 0
  %16 = zext i1 %15 to i32
  %17 = add i32 %16, %3
  %18 = icmp sgt i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = add i32 %17, %19
  br label %21

21:                                               ; preds = %14, %11, %4
  %22 = phi i32 [ %3, %4 ], [ %13, %11 ], [ %20, %14 ]
  %23 = icmp sgt i32 %22, 2
  %24 = select i1 %23, i32 24, i32 %6
  %25 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %22
  %28 = add i32 %24, %27
  %29 = trunc i32 %7 to i8
  %30 = and i8 %29, 7
  %31 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = zext i8 %30 to i32
  %34 = icmp ugt i8 %30, 5
  br i1 %34, label %69, label %35

35:                                               ; preds = %21
  %36 = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %33
  %37 = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %33, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @pcim_iomap(ptr noundef %8, i32 noundef %33, i32 noundef 0) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call ptr @pcim_iomap_table(ptr noundef %8) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %48, align 2
  %49 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = load i32, ptr %36, align 8
  %51 = add i32 %50, %28
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %51, ptr %52, align 4
  %53 = tail call ptr @pcim_iomap_table(ptr noundef %8) #13
  %54 = getelementptr ptr, ptr %53, i32 %33
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %28
  %57 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = trunc i32 %32 to i8
  br label %66

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %60, align 2
  %61 = load i32, ptr %36, align 8
  %62 = add i32 %61, %28
  %63 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %65, align 4
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi i8 [ %58, %47 ], [ 0, %59 ]
  %68 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %67, ptr %68, align 1
  br label %69

69:                                               ; preds = %66, %44, %21
  %70 = phi i32 [ -22, %21 ], [ -12, %44 ], [ 0, %66 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_inteli960ni_init(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 4096
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %2) #13
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 4096
  %11 = select i1 %10, i32 -19, i32 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ -19, %1 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_default_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, 7
  %9 = and i32 %7, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = add i32 %8, %3
  br label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %3
  %17 = add i32 %16, %6
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %12, %11 ], [ %8, %13 ]
  %20 = phi i32 [ %6, %11 ], [ %17, %13 ]
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr %struct.pci_dev, ptr %21, i32 0, i32 47, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = getelementptr %struct.pci_dev, ptr %21, i32 0, i32 47, i32 %19
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %23, 1
  %29 = sub i32 %28, %27
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i32 [ %29, %25 ], [ 0, %18 ]
  %32 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %33 = and i32 %7, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, ptr %32, align 4
  br label %43

37:                                               ; preds = %30
  %38 = sub i32 %31, %6
  %39 = load i32, ptr %32, align 4
  %40 = add i32 %39, 3
  %41 = lshr i32 %38, %40
  %42 = icmp ugt i32 %41, %3
  br i1 %42, label %43, label %82

43:                                               ; preds = %37, %35
  %44 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %45 = trunc i32 %19 to i8
  %46 = and i32 %19, 255
  %47 = icmp ugt i8 %45, 5
  br i1 %47, label %82, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.pci_dev, ptr %21, i32 0, i32 47, i32 %46
  %50 = getelementptr %struct.pci_dev, ptr %21, i32 0, i32 47, i32 %46, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = tail call ptr @pcim_iomap(ptr noundef %21, i32 noundef %46, i32 noundef 0) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = tail call ptr @pcim_iomap_table(ptr noundef %21) #13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %82, label %60

60:                                               ; preds = %57, %54
  %61 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %61, align 2
  %62 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %62, align 4
  %63 = load i32, ptr %49, align 8
  %64 = add i32 %63, %20
  %65 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %64, ptr %65, align 4
  %66 = tail call ptr @pcim_iomap_table(ptr noundef %21) #13
  %67 = getelementptr ptr, ptr %66, i32 %46
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %20
  %70 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %69, ptr %70, align 4
  %71 = trunc i32 %44 to i8
  br label %79

72:                                               ; preds = %48
  %73 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %73, align 2
  %74 = load i32, ptr %49, align 8
  %75 = add i32 %74, %20
  %76 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %72, %60
  %80 = phi i8 [ %71, %60 ], [ 0, %72 ]
  %81 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %80, ptr %81, align 1
  br label %82

82:                                               ; preds = %79, %57, %43, %37
  %83 = phi i32 [ 1, %37 ], [ -22, %43 ], [ -12, %57 ], [ 0, %79 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skip_tx_en_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 27
  %6 = load i8, ptr %5, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 1
  %8 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ce4100_serial_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = trunc i32 %3 to i8
  %6 = load ptr, ptr %0, align 4
  %7 = and i32 %3, 255
  %8 = icmp ugt i8 %5, 5
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 %7
  %11 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 %7, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @pcim_iomap(ptr noundef %6, i32 noundef %7, i32 noundef 0) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call ptr @pcim_iomap_table(ptr noundef %6) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %22, align 2
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = load i32, ptr %10, align 8
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %24, ptr %25, align 4
  %26 = tail call ptr @pcim_iomap_table(ptr noundef %6) #13
  %27 = getelementptr ptr, ptr %26, i32 %7
  %28 = load ptr, ptr %27, align 4
  br label %34

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %30, align 2
  %31 = load i32, ptr %10, align 8
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi ptr [ null, %29 ], [ %28, %21 ]
  %36 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %18, %4
  %38 = phi i32 [ -22, %4 ], [ -12, %18 ], [ 0, %34 ]
  %39 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 3, ptr %39, align 2
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 15, ptr %40, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 671088640
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 2, ptr %44, align 1
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kt_serial_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 3
  store ptr @kt_serial_in, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 17
  store ptr @kt_handle_break, ptr %9, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 27
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 1
  %13 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_ite887x_init(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  br label %5

5:                                                ; preds = %23, %1
  %6 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %7 = getelementptr [7 x i16], ptr @inta_addr, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 0) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  %13 = or i32 %9, -452984832
  %14 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 96, i32 noundef %13) #13
  %15 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 120, i32 noundef %9) #13
  %16 = and i32 %9, 1048575
  %17 = or i32 %16, -18874368
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %20 = icmp eq i8 %19, -1
  %21 = load i32, ptr %10, align 4
  br i1 %20, label %22, label %28

22:                                               ; preds = %12
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %21, i32 noundef 32) #13
  br label %23

23:                                               ; preds = %22, %5
  %24 = add nuw nsw i32 %6, 1
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %5

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2) #15
  br label %93

28:                                               ; preds = %12
  %29 = add i32 %21, 24
  %30 = and i32 %29, 1048575
  %31 = or i32 %30, -18874368
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !11
  %34 = and i8 %33, 15
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -2
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 31)
  switch i32 %37, label %39 [
    i32 0, label %90
    i32 4, label %90
    i32 6, label %53
    i32 2, label %38
    i32 3, label %53
  ]

38:                                               ; preds = %28
  br label %53

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %41 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %52) #15
  br label %90

53:                                               ; preds = %38, %28, %28
  %54 = phi i1 [ false, %28 ], [ false, %28 ], [ true, %38 ]
  %55 = phi i32 [ 2, %28 ], [ 2, %28 ], [ 1, %38 ]
  %56 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %4) #13
  %57 = load i32, ptr %4, align 4
  %58 = and i32 %57, 65280
  store i32 %58, ptr %4, align 4
  %59 = or i32 %58, -486539264
  %60 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 100, i32 noundef %59) #13
  %61 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 124, ptr noundef nonnull %3) #13
  %62 = load i32, ptr %3, align 4
  %63 = and i32 %62, -65536
  %64 = load i32, ptr %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, ptr %3, align 4
  %66 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 124, i32 noundef %65) #13
  %67 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 156, ptr noundef nonnull %2) #13
  %68 = load i32, ptr %2, align 4
  %69 = and i32 %68, -8450049
  %70 = or i32 %69, 8388608
  store i32 %70, ptr %2, align 4
  %71 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 156, i32 noundef %70) #13
  br i1 %54, label %93, label %72

72:                                               ; preds = %53
  %73 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %4) #13
  %74 = load i32, ptr %4, align 4
  %75 = and i32 %74, 65280
  store i32 %75, ptr %4, align 4
  %76 = or i32 %75, -486539264
  %77 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 104, i32 noundef %76) #13
  %78 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 124, ptr noundef nonnull %3) #13
  %79 = load i32, ptr %3, align 4
  %80 = and i32 %79, 65535
  %81 = load i32, ptr %4, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %82, %80
  store i32 %83, ptr %3, align 4
  %84 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 124, i32 noundef %83) #13
  %85 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 156, ptr noundef nonnull %2) #13
  %86 = load i32, ptr %2, align 4
  %87 = and i32 %86, -4198145
  %88 = or i32 %87, 4194304
  store i32 %88, ptr %2, align 4
  %89 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 156, i32 noundef %88) #13
  br label %93

90:                                               ; preds = %39, %28, %28
  %91 = phi i32 [ 0, %28 ], [ 0, %28 ], [ -19, %39 ]
  %92 = load i32, ptr %10, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %92, i32 noundef 32) #13
  br label %93

93:                                               ; preds = %90, %72, %53, %26
  %94 = phi i32 [ -19, %26 ], [ %91, %90 ], [ %55, %72 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_ite887x_exit(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 96, ptr noundef nonnull %2) #13
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 65535
  store i32 %5, ptr %2, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef 32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_ni8420_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #15
  br label %27

20:                                               ; preds = %1
  %21 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !12
  tail call void @arm_heavy_mb() #13
  %24 = getelementptr i8, ptr %21, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %26 = or i32 %25, 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #13, !srcloc !15
  tail call void @iounmap(ptr noundef nonnull %21) #13
  br label %27

27:                                               ; preds = %23, %20, %6
  %28 = phi i32 [ 0, %6 ], [ 0, %23 ], [ -12, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_ni8420_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #15
  br label %27

20:                                               ; preds = %1
  %21 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !16
  tail call void @arm_heavy_mb() #13
  %24 = getelementptr i8, ptr %21, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !17
  %26 = and i32 %25, -8193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #13, !srcloc !15
  tail call void @iounmap(ptr noundef nonnull %21) #13
  br label %27

27:                                               ; preds = %23, %20, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_ni8430_init(ptr noundef %0) #0 {
  %2 = alloca %struct.pci_bus_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21) #15
  br label %38

22:                                               ; preds = %1
  %23 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  call void @pcibios_resource_to_bus(ptr noundef %27, ptr noundef nonnull %2, ptr noundef %3) #13
  %28 = load i32, ptr %2, align 8
  %29 = add i32 %28, 2048
  %30 = and i32 %29, -256
  %31 = or i32 %30, 138
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  call void @arm_heavy_mb() #13
  %32 = getelementptr i8, ptr %23, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #13, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !19
  call void @arm_heavy_mb() #13
  %33 = getelementptr i8, ptr %23, i32 244
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #13, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !20
  %35 = and i32 %34, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #13, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !21
  call void @arm_heavy_mb() #13
  %36 = getelementptr i8, ptr %23, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #13, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !22
  call void @arm_heavy_mb() #13
  %37 = getelementptr i8, ptr %23, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -2147483648) #13, !srcloc !15
  call void @iounmap(ptr noundef nonnull %23) #13
  br label %38

38:                                               ; preds = %25, %22, %8
  %39 = phi i32 [ 0, %8 ], [ 0, %25 ], [ -12, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_ni8430_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %3
  br i1 %7, label %8, label %64

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, 7
  %14 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @pci_ioremap_bar(ptr noundef %11, i32 noundef %13) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %8
  %19 = mul i32 %15, %3
  %20 = add i32 %19, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !23
  tail call void @arm_heavy_mb() #13
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = getelementptr i8, ptr %21, i32 15
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !24
  %24 = or i8 %23, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %24) #13, !srcloc !25
  tail call void @iounmap(ptr noundef nonnull %16) #13
  %25 = trunc i32 %13 to i8
  %26 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = icmp ugt i8 %25, 5
  br i1 %29, label %64, label %30

30:                                               ; preds = %18
  %31 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 %13
  %32 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 %13, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %30
  %37 = tail call ptr @pcim_iomap(ptr noundef %28, i32 noundef %13, i32 noundef 0) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call ptr @pcim_iomap_table(ptr noundef %28) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %43, align 2
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %44, align 4
  %45 = load i32, ptr %31, align 8
  %46 = add i32 %45, %20
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %46, ptr %47, align 4
  %48 = tail call ptr @pcim_iomap_table(ptr noundef %28) #13
  %49 = getelementptr ptr, ptr %48, i32 %13
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %20
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = trunc i32 %27 to i8
  br label %61

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %55, align 2
  %56 = load i32, ptr %31, align 8
  %57 = add i32 %56, %20
  %58 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %60, align 4
  br label %61

61:                                               ; preds = %54, %42
  %62 = phi i8 [ %53, %42 ], [ 0, %54 ]
  %63 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %62, ptr %63, align 1
  br label %64

64:                                               ; preds = %61, %39, %18, %8, %4
  %65 = phi i32 [ 1, %4 ], [ -12, %8 ], [ -22, %18 ], [ -12, %39 ], [ 0, %61 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_ni8430_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #15
  br label %25

20:                                               ; preds = %1
  %21 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !26
  tail call void @arm_heavy_mb() #13
  %24 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1073741824) #13, !srcloc !15
  tail call void @iounmap(ptr noundef nonnull %21) #13
  br label %25

25:                                               ; preds = %23, %20, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_quatech_init(ptr noundef %0) #0 {
  %2 = tail call ptr @pci_match_id(ptr noundef nonnull @quatech_cards, ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_device_id, ptr %2, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %12) #15
  br label %31

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !27
  tail call void @arm_heavy_mb() #13
  %18 = add i32 %15, 56
  %19 = and i32 %18, 1048575
  %20 = or i32 %19, -18874368
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !28
  %23 = or i32 %22, 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %23) #13, !srcloc !15
  %24 = add i32 %15, 60
  %25 = and i32 %24, 1048575
  %26 = or i32 %25, -18874368
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !30
  tail call void @arm_heavy_mb() #13
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %29) #13, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !31
  tail call void @arm_heavy_mb() #13
  %30 = and i32 %28, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %30) #13, !srcloc !15
  br label %31

31:                                               ; preds = %17, %13, %8, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_quatech_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 7
  %8 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %7
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = add i32 %9, 3
  %12 = and i32 %11, 1048575
  %13 = or i32 %12, -18874368
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -65) #13, !srcloc !25
  %16 = add i32 %9, 7
  %17 = and i32 %16, 1048575
  %18 = or i32 %17, -18874368
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %15) #13, !srcloc !25
  %21 = and i8 %20, 63
  %22 = load i32, ptr %10, align 4
  %23 = add i32 %22, 3
  %24 = and i32 %23, 1048575
  %25 = or i32 %24, -18874368
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -65) #13, !srcloc !25
  %28 = add i32 %22, 7
  %29 = and i32 %28, 1048575
  %30 = or i32 %29, -18874368
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %21) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %27) #13, !srcloc !25
  %33 = load i32, ptr %10, align 4
  %34 = add i32 %33, 3
  %35 = and i32 %34, 1048575
  %36 = or i32 %35, -18874368
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 -65) #13, !srcloc !25
  %39 = add i32 %33, 7
  %40 = and i32 %39, 1048575
  %41 = or i32 %40, -18874368
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %38) #13, !srcloc !25
  %44 = icmp ult i8 %43, 64
  br i1 %44, label %45, label %217

45:                                               ; preds = %4
  %46 = or i8 %21, 64
  %47 = load i32, ptr %10, align 4
  %48 = add i32 %47, 3
  %49 = and i32 %48, 1048575
  %50 = or i32 %49, -18874368
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 -65) #13, !srcloc !25
  %53 = add i32 %47, 7
  %54 = and i32 %53, 1048575
  %55 = or i32 %54, -18874368
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %46) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %52) #13, !srcloc !25
  %58 = load i32, ptr %10, align 4
  %59 = add i32 %58, 3
  %60 = and i32 %59, 1048575
  %61 = or i32 %60, -18874368
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 -65) #13, !srcloc !25
  %64 = add i32 %58, 7
  %65 = and i32 %64, 1048575
  %66 = or i32 %65, -18874368
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %63) #13, !srcloc !25
  %69 = and i8 %68, -64
  %70 = icmp eq i8 %69, 64
  br i1 %70, label %71, label %217

71:                                               ; preds = %45
  %72 = or i8 %21, -128
  %73 = load i32, ptr %10, align 4
  %74 = add i32 %73, 3
  %75 = and i32 %74, 1048575
  %76 = or i32 %75, -18874368
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -65) #13, !srcloc !25
  %79 = add i32 %73, 7
  %80 = and i32 %79, 1048575
  %81 = or i32 %80, -18874368
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %72) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %78) #13, !srcloc !25
  %84 = load i32, ptr %10, align 4
  %85 = add i32 %84, 3
  %86 = and i32 %85, 1048575
  %87 = or i32 %86, -18874368
  %88 = inttoptr i32 %87 to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 -65) #13, !srcloc !25
  %90 = add i32 %84, 7
  %91 = and i32 %90, 1048575
  %92 = or i32 %91, -18874368
  %93 = inttoptr i32 %92 to ptr
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %93) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 %89) #13, !srcloc !25
  %95 = and i8 %94, -64
  %96 = icmp eq i8 %95, 64
  br i1 %96, label %97, label %217

97:                                               ; preds = %71
  %98 = or i8 %20, -64
  %99 = load i32, ptr %10, align 4
  %100 = add i32 %99, 3
  %101 = and i32 %100, 1048575
  %102 = or i32 %101, -18874368
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 -65) #13, !srcloc !25
  %105 = add i32 %99, 7
  %106 = and i32 %105, 1048575
  %107 = or i32 %106, -18874368
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 %98) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %104) #13, !srcloc !25
  %110 = load i32, ptr %10, align 4
  %111 = add i32 %110, 3
  %112 = and i32 %111, 1048575
  %113 = or i32 %112, -18874368
  %114 = inttoptr i32 %113 to ptr
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %114) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 -65) #13, !srcloc !25
  %116 = add i32 %110, 7
  %117 = and i32 %116, 1048575
  %118 = or i32 %117, -18874368
  %119 = inttoptr i32 %118 to ptr
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 %115) #13, !srcloc !25
  %121 = and i8 %120, -64
  %122 = icmp eq i8 %121, -128
  br i1 %122, label %123, label %217

123:                                              ; preds = %97
  %124 = load i32, ptr %10, align 4
  %125 = add i32 %124, 3
  %126 = and i32 %125, 1048575
  %127 = or i32 %126, -18874368
  %128 = inttoptr i32 %127 to ptr
  %129 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %128) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 -65) #13, !srcloc !25
  %130 = add i32 %124, 7
  %131 = and i32 %130, 1048575
  %132 = or i32 %131, -18874368
  %133 = inttoptr i32 %132 to ptr
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %133) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 %20) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 %129) #13, !srcloc !25
  %135 = load i32, ptr %10, align 4
  %136 = add i32 %135, 3
  %137 = and i32 %136, 1048575
  %138 = or i32 %137, -18874368
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %139) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 -65) #13, !srcloc !25
  %141 = add i32 %135, 7
  %142 = and i32 %141, 1048575
  %143 = or i32 %142, -18874368
  %144 = inttoptr i32 %143 to ptr
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %144) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 %140) #13, !srcloc !25
  %146 = and i8 %145, -4
  %147 = load i32, ptr %10, align 4
  %148 = add i32 %147, 3
  %149 = and i32 %148, 1048575
  %150 = or i32 %149, -18874368
  %151 = inttoptr i32 %150 to ptr
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %151) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 -65) #13, !srcloc !25
  %153 = add i32 %147, 7
  %154 = and i32 %153, 1048575
  %155 = or i32 %154, -18874368
  %156 = inttoptr i32 %155 to ptr
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %156) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 %146) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 %152) #13, !srcloc !25
  %158 = load i32, ptr %10, align 4
  %159 = add i32 %158, 3
  %160 = and i32 %159, 1048575
  %161 = or i32 %160, -18874368
  %162 = inttoptr i32 %161 to ptr
  %163 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %162) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 -65) #13, !srcloc !25
  %164 = add i32 %158, 7
  %165 = and i32 %164, 1048575
  %166 = or i32 %165, -18874368
  %167 = inttoptr i32 %166 to ptr
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %167) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %163) #13, !srcloc !25
  %169 = and i8 %168, 3
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %123
  %172 = or i8 %145, 3
  %173 = load i32, ptr %10, align 4
  %174 = add i32 %173, 3
  %175 = and i32 %174, 1048575
  %176 = or i32 %175, -18874368
  %177 = inttoptr i32 %176 to ptr
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %177) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 -65) #13, !srcloc !25
  %179 = add i32 %173, 7
  %180 = and i32 %179, 1048575
  %181 = or i32 %180, -18874368
  %182 = inttoptr i32 %181 to ptr
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %182) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 %172) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 %178) #13, !srcloc !25
  %184 = load i32, ptr %10, align 4
  %185 = add i32 %184, 3
  %186 = and i32 %185, 1048575
  %187 = or i32 %186, -18874368
  %188 = inttoptr i32 %187 to ptr
  %189 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %188) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !33
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 -65) #13, !srcloc !25
  %190 = add i32 %184, 7
  %191 = and i32 %190, 1048575
  %192 = or i32 %191, -18874368
  %193 = inttoptr i32 %192 to ptr
  %194 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %193) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !35
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 %189) #13, !srcloc !25
  %195 = and i8 %194, 3
  %196 = zext i8 %195 to i32
  switch i32 %196, label %198 [
    i32 0, label %203
    i32 1, label %199
    i32 2, label %197
  ]

197:                                              ; preds = %171
  br label %199

198:                                              ; preds = %171
  br label %199

199:                                              ; preds = %198, %197, %171
  %200 = phi i8 [ 2, %197 ], [ 3, %198 ], [ 1, %171 ]
  %201 = phi i32 [ 7372800, %197 ], [ 14745600, %198 ], [ 3685400, %171 ]
  %202 = or i8 %200, %146
  br label %203

203:                                              ; preds = %199, %171, %123
  %204 = phi i8 [ %202, %199 ], [ %145, %123 ], [ %145, %171 ]
  %205 = phi i32 [ %201, %199 ], [ 1843200, %123 ], [ 1843200, %171 ]
  %206 = load i32, ptr %10, align 4
  %207 = add i32 %206, 3
  %208 = and i32 %207, 1048575
  %209 = or i32 %208, -18874368
  %210 = inttoptr i32 %209 to ptr
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !37
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 -65) #13, !srcloc !25
  %212 = add i32 %206, 7
  %213 = and i32 %212, 1048575
  %214 = or i32 %213, -18874368
  %215 = inttoptr i32 %214 to ptr
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !39
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %215, i8 %204) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !40
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 %211) #13, !srcloc !25
  br label %217

217:                                              ; preds = %203, %97, %71, %45, %4
  %218 = phi i32 [ %205, %203 ], [ 1843200, %4 ], [ 1843200, %45 ], [ 1843200, %71 ], [ 1843200, %97 ]
  %219 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 %218, ptr %219, align 4
  %220 = load i32, ptr %10, align 4
  %221 = add i32 %220, 3
  %222 = and i32 %221, 1048575
  %223 = or i32 %222, -18874368
  %224 = inttoptr i32 %223 to ptr
  %225 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %224) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !41
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !42
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 -65) #13, !srcloc !25
  %226 = add i32 %220, 7
  %227 = and i32 %226, 1048575
  %228 = or i32 %227, -18874368
  %229 = inttoptr i32 %228 to ptr
  %230 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %229) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !43
  %231 = and i8 %230, 32
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %308, label %233

233:                                              ; preds = %217
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !44
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874365 to ptr), i8 -128) #13, !srcloc !25
  %234 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874361 to ptr)) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !45
  %235 = and i8 %234, 32
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %308

237:                                              ; preds = %233
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !46
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 %225) #13, !srcloc !25
  %238 = load i32, ptr %10, align 4
  %239 = add i32 %238, 3
  %240 = and i32 %239, 1048575
  %241 = or i32 %240, -18874368
  %242 = inttoptr i32 %241 to ptr
  %243 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %242) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !48
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 -65) #13, !srcloc !25
  %244 = add i32 %238, 7
  %245 = and i32 %244, 1048575
  %246 = or i32 %245, -18874368
  %247 = inttoptr i32 %246 to ptr
  %248 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %247) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !49
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !50
  tail call void @arm_heavy_mb() #13
  %249 = or i8 %248, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 %249) #13, !srcloc !25
  %250 = add i32 %238, 4
  %251 = and i32 %250, 1048575
  %252 = or i32 %251, -18874368
  %253 = inttoptr i32 %252 to ptr
  %254 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %253) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !51
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !52
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 %248) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !53
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 %243) #13, !srcloc !25
  %255 = load i32, ptr %10, align 4
  %256 = add i32 %255, 3
  %257 = and i32 %256, 1048575
  %258 = or i32 %257, -18874368
  %259 = inttoptr i32 %258 to ptr
  %260 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %259) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !55
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 -65) #13, !srcloc !25
  %261 = add i32 %255, 7
  %262 = and i32 %261, 1048575
  %263 = or i32 %262, -18874368
  %264 = inttoptr i32 %263 to ptr
  %265 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %264) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !56
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !57
  tail call void @arm_heavy_mb() #13
  %266 = or i8 %265, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 %266) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !58
  tail call void @arm_heavy_mb() #13
  %267 = add i32 %255, 4
  %268 = and i32 %267, 1048575
  %269 = or i32 %268, -18874368
  %270 = inttoptr i32 %269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %270, i8 -1) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !59
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 %265) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !60
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 %260) #13, !srcloc !25
  %271 = load i32, ptr %10, align 4
  %272 = add i32 %271, 3
  %273 = and i32 %272, 1048575
  %274 = or i32 %273, -18874368
  %275 = inttoptr i32 %274 to ptr
  %276 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %275) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !48
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %275, i8 -65) #13, !srcloc !25
  %277 = add i32 %271, 7
  %278 = and i32 %277, 1048575
  %279 = or i32 %278, -18874368
  %280 = inttoptr i32 %279 to ptr
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %280) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !49
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !50
  tail call void @arm_heavy_mb() #13
  %282 = or i8 %281, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 %282) #13, !srcloc !25
  %283 = add i32 %271, 4
  %284 = and i32 %283, 1048575
  %285 = or i32 %284, -18874368
  %286 = inttoptr i32 %285 to ptr
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %286) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !51
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !52
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 %281) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !53
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %275, i8 %276) #13, !srcloc !25
  %288 = icmp eq i8 %287, 0
  %289 = load i32, ptr %10, align 4
  %290 = add i32 %289, 3
  %291 = and i32 %290, 1048575
  %292 = or i32 %291, -18874368
  %293 = inttoptr i32 %292 to ptr
  %294 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %293) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !54
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !55
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %293, i8 -65) #13, !srcloc !25
  %295 = add i32 %289, 7
  %296 = and i32 %295, 1048575
  %297 = or i32 %296, -18874368
  %298 = inttoptr i32 %297 to ptr
  %299 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %298) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !56
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !57
  tail call void @arm_heavy_mb() #13
  %300 = or i8 %299, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 %300) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !58
  tail call void @arm_heavy_mb() #13
  %301 = add i32 %289, 4
  %302 = and i32 %301, 1048575
  %303 = or i32 %302, -18874368
  %304 = inttoptr i32 %303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %304, i8 %254) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !59
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 %299) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !60
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %293, i8 %294) #13, !srcloc !25
  br i1 %288, label %308, label %305

305:                                              ; preds = %237
  %306 = load ptr, ptr %0, align 4
  %307 = getelementptr inbounds %struct.pci_dev, ptr %306, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %307, ptr noundef nonnull @.str.7) #15
  br label %308

308:                                              ; preds = %305, %237, %233, %217
  %309 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %309
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_plx9050_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20) #15
  br label %47

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %23 = load i16, ptr %22, align 8
  %24 = icmp eq i16 %23, 5332
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, -10163
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8 [ 67, %29 ], [ 65, %25 ]
  %32 = icmp eq i16 %23, 4277
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 4202
  %37 = select i1 %36, i8 91, i8 %31
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i8 [ %31, %30 ], [ %37, %33 ]
  %40 = load i32, ptr %2, align 8
  %41 = tail call ptr @ioremap(i32 noundef %40, i32 noundef 128) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !61
  tail call void @arm_heavy_mb() #13
  %44 = zext i8 %39 to i32
  %45 = getelementptr i8, ptr %41, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #13, !srcloc !15
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !62
  tail call void @iounmap(ptr noundef nonnull %41) #13
  br label %47

47:                                               ; preds = %43, %38, %7
  %48 = phi i32 [ 0, %7 ], [ 0, %43 ], [ -12, %38 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_plx9050_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %8 = load i32, ptr %7, align 8
  %9 = tail call ptr @ioremap(i32 noundef %8, i32 noundef 128) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !63
  tail call void @arm_heavy_mb() #13
  %12 = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #13, !srcloc !15
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !64
  tail call void @iounmap(ptr noundef nonnull %9) #13
  br label %14

14:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_init(ptr noundef %0) #0 {
  %2 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !65
  tail call void @arm_heavy_mb() #13
  %5 = getelementptr i8, ptr %2, i32 1280
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 16) #13, !srcloc !25
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !66
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 0) #13, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !67
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 4) #13, !srcloc !25
  tail call void @iounmap(ptr noundef nonnull %2) #13
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sbs_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %3, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %3
  br label %19

12:                                               ; preds = %4
  %13 = icmp ult i32 %3, 8
  br i1 %13, label %14, label %57

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %3
  %18 = add i32 %17, 3072
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i32 [ %11, %8 ], [ %18, %14 ]
  %21 = add i32 %20, %6
  %22 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 0
  %26 = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %19
  %31 = tail call ptr @pcim_iomap(ptr noundef %24, i32 noundef 0, i32 noundef 0) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = tail call ptr @pcim_iomap_table(ptr noundef %24) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %37, align 2
  %38 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %38, align 4
  %39 = load i32, ptr %25, align 8
  %40 = add i32 %39, %21
  %41 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %40, ptr %41, align 4
  %42 = tail call ptr @pcim_iomap_table(ptr noundef %24) #13
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %21
  %45 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = trunc i32 %23 to i8
  br label %54

47:                                               ; preds = %19
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %48, align 2
  %49 = load i32, ptr %25, align 8
  %50 = add i32 %49, %21
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %36
  %55 = phi i8 [ %46, %36 ], [ 0, %47 ]
  %56 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %55, ptr %56, align 1
  br label %57

57:                                               ; preds = %54, %33, %12
  %58 = phi i32 [ 1, %12 ], [ -12, %33 ], [ 0, %54 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sbs_exit(ptr noundef %0) #0 {
  %2 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !68
  tail call void @arm_heavy_mb() #13
  %5 = getelementptr i8, ptr %2, i32 1280
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 0) #13, !srcloc !25
  br label %6

6:                                                ; preds = %4, %1
  tail call void @iounmap(ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_siig_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, -256
  switch i16 %5, label %34 [
    i16 4096, label %6
    i16 8192, label %21
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %8 = load i32, ptr %7, align 8
  %9 = tail call ptr @ioremap(i32 noundef %8, i32 noundef 128) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = and i16 %4, -8
  %13 = icmp eq i16 %12, 4096
  %14 = icmp eq i16 %12, 4144
  %15 = select i1 %14, i16 -2049, i16 -5
  %16 = select i1 %13, i16 -33, i16 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !69
  tail call void @arm_heavy_mb() #13
  %17 = getelementptr i8, ptr %9, i32 40
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #13, !srcloc !70
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !71
  %19 = and i16 %18, %16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %19) #13, !srcloc !72
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #13, !srcloc !70
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !73
  tail call void @iounmap(ptr noundef nonnull %9) #13
  br label %46

21:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !annotation !8
  %22 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 111, ptr noundef nonnull %2) #13
  %23 = load i8, ptr %2, align 1
  %24 = and i8 %23, -17
  %25 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 111, i8 noundef zeroext %24) #13
  %26 = load i16, ptr %3, align 2
  %27 = and i16 %26, -4
  switch i16 %27, label %33 [
    i16 8240, label %28
    i16 8288, label %28
  ]

28:                                               ; preds = %21, %21
  %29 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 115, ptr noundef nonnull %2) #13
  %30 = load i8, ptr %2, align 1
  %31 = and i8 %30, -17
  %32 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 115, i8 noundef zeroext %31) #13
  br label %33

33:                                               ; preds = %28, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %46

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = zext i16 %4 to i32
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %39, i32 noundef %42, i32 noundef %45) #15
  br label %46

46:                                               ; preds = %34, %33, %11, %6
  %47 = phi i32 [ 0, %33 ], [ -19, %34 ], [ 0, %11 ], [ -12, %6 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_siig_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %1, align 4
  %6 = and i32 %5, 7
  %7 = add i32 %6, %3
  %8 = icmp sgt i32 %3, 3
  %9 = shl i32 %3, 3
  %10 = add i32 %9, -32
  %11 = select i1 %8, i32 %10, i32 0
  %12 = trunc i32 %7 to i8
  %13 = select i1 %8, i8 4, i8 %12
  %14 = load ptr, ptr %0, align 4
  %15 = zext i8 %13 to i32
  %16 = icmp ugt i8 %13, 5
  br i1 %16, label %49, label %17

17:                                               ; preds = %4
  %18 = getelementptr %struct.pci_dev, ptr %14, i32 0, i32 47, i32 %15
  %19 = getelementptr %struct.pci_dev, ptr %14, i32 0, i32 47, i32 %15, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @pcim_iomap(ptr noundef %14, i32 noundef %15, i32 noundef 0) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call ptr @pcim_iomap_table(ptr noundef %14) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %30, align 2
  %31 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = load i32, ptr %18, align 8
  %33 = add i32 %32, %11
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %33, ptr %34, align 4
  %35 = tail call ptr @pcim_iomap_table(ptr noundef %14) #13
  %36 = getelementptr ptr, ptr %35, i32 %15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %11
  br label %45

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %40, align 2
  %41 = load i32, ptr %18, align 8
  %42 = add i32 %41, %11
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %39, %29
  %46 = phi ptr [ null, %39 ], [ %38, %29 ]
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %45, %26, %4
  %50 = phi i32 [ -22, %4 ], [ -12, %26 ], [ 0, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @titan_400l_800l_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  switch i32 %3, label %8 [
    i32 0, label %13
    i32 1, label %7
  ]

7:                                                ; preds = %4
  br label %13

8:                                                ; preds = %4
  %9 = add i32 %3, -2
  %10 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  br label %13

13:                                               ; preds = %8, %7, %4
  %14 = phi i32 [ 4, %8 ], [ 2, %7 ], [ 1, %4 ]
  %15 = phi i32 [ %12, %8 ], [ %6, %7 ], [ %6, %4 ]
  %16 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr %struct.pci_dev, ptr %18, i32 0, i32 47, i32 %14
  %20 = getelementptr %struct.pci_dev, ptr %18, i32 0, i32 47, i32 %14, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %13
  %25 = tail call ptr @pcim_iomap(ptr noundef %18, i32 noundef %14, i32 noundef 0) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = tail call ptr @pcim_iomap_table(ptr noundef %18) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %31, align 2
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %19, align 8
  %34 = add i32 %33, %15
  %35 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %34, ptr %35, align 4
  %36 = tail call ptr @pcim_iomap_table(ptr noundef %18) #13
  %37 = getelementptr ptr, ptr %36, i32 %14
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %15
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = trunc i32 %17 to i8
  br label %49

42:                                               ; preds = %13
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %43, align 2
  %44 = load i32, ptr %19, align 8
  %45 = add i32 %44, %15
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %48, align 4
  br label %49

49:                                               ; preds = %42, %30
  %50 = phi i8 [ %41, %30 ], [ 0, %42 ]
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %50, ptr %51, align 1
  br label %52

52:                                               ; preds = %49, %27
  %53 = phi i32 [ -12, %27 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_timedia_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 240
  %6 = icmp ugt i32 %5, 111
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %4) #15
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ -19, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @pci_timedia_init(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %8 [
    i16 16421, label %4
    i16 16423, label %4
    i16 16424, label %4
    i16 20517, label %4
    i16 20519, label %4
  ]

4:                                                ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %1, %1, %1, %1, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %8 ], [ 2, %10 ], [ 3, %12 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 2, %10 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ], [ 3, %12 ]
  %6 = getelementptr [4 x %struct.timedia_struct], ptr @timedia_data, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i16, ptr %2, align 2
  switch i16 %9, label %10 [
    i16 2, label %4
    i16 16438, label %4
    i16 16439, label %4
    i16 16440, label %4
    i16 16504, label %4
    i16 16505, label %4
    i16 16517, label %4
    i16 16520, label %4
    i16 16521, label %4
    i16 20535, label %4
    i16 20600, label %4
    i16 20601, label %4
    i16 20613, label %4
    i16 24697, label %4
    i16 28793, label %4
    i16 -32647, label %4
    i16 -32457, label %4
    i16 -32456, label %4
    i16 -32201, label %4
    i16 -32200, label %4
    i16 -28551, label %4
    i16 -28361, label %4
    i16 -28360, label %4
    i16 -28105, label %4
    i16 -28104, label %4
    i16 -24455, label %4
    i16 -20359, label %4
    i16 -16263, label %4
    i16 -12167, label %4
  ]

10:                                               ; preds = %8
  %11 = load i16, ptr %2, align 2
  switch i16 %11, label %12 [
    i16 16469, label %4
    i16 16470, label %4
    i16 16533, label %4
    i16 16534, label %4
    i16 20566, label %4
    i16 -32426, label %4
    i16 -32425, label %4
    i16 -32170, label %4
    i16 -32169, label %4
    i16 -28586, label %4
    i16 -28330, label %4
    i16 -28329, label %4
    i16 -28328, label %4
    i16 -28327, label %4
    i16 -28074, label %4
    i16 -28073, label %4
    i16 -24490, label %4
    i16 -24233, label %4
    i16 -24232, label %4
    i16 -24231, label %4
    i16 -20394, label %4
    i16 -20137, label %4
  ]

12:                                               ; preds = %10
  %13 = load i16, ptr %2, align 2
  switch i16 %13, label %14 [
    i16 16485, label %4
    i16 16486, label %4
    i16 20581, label %4
    i16 20582, label %4
    i16 -32410, label %4
    i16 -28570, label %4
    i16 -28314, label %4
    i16 -28313, label %4
    i16 -28312, label %4
    i16 -24474, label %4
    i16 -24217, label %4
    i16 -24216, label %4
  ]

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %7, %4 ], [ 0, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_timedia_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  switch i32 %3, label %18 [
    i32 7, label %14
    i32 1, label %7
    i32 2, label %10
    i32 3, label %11
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  br label %18

10:                                               ; preds = %4
  br label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %4, %4, %4, %4
  %15 = phi i32 [ %6, %4 ], [ %6, %4 ], [ %6, %4 ], [ %6, %4 ], [ %13, %11 ]
  %16 = add nuw nsw i32 %3, 254
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %14, %10, %7, %4
  %19 = phi i32 [ %17, %14 ], [ 1, %10 ], [ 0, %7 ], [ 0, %4 ]
  %20 = phi i32 [ %15, %14 ], [ %6, %10 ], [ %9, %7 ], [ %6, %4 ]
  %21 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr %struct.pci_dev, ptr %23, i32 0, i32 47, i32 %19
  %25 = getelementptr %struct.pci_dev, ptr %23, i32 0, i32 47, i32 %19, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %18
  %30 = tail call ptr @pcim_iomap(ptr noundef %23, i32 noundef %19, i32 noundef 0) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call ptr @pcim_iomap_table(ptr noundef %23) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %36, align 2
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = load i32, ptr %24, align 8
  %39 = add i32 %38, %20
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @pcim_iomap_table(ptr noundef %23) #13
  %42 = getelementptr ptr, ptr %41, i32 %19
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %20
  %45 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = trunc i32 %22 to i8
  br label %54

47:                                               ; preds = %18
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %48, align 2
  %49 = load i32, ptr %24, align 8
  %50 = add i32 %49, %20
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %35
  %55 = phi i8 [ %46, %35 ], [ 0, %47 ]
  %56 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %55, ptr %56, align 1
  br label %57

57:                                               ; preds = %54, %32
  %58 = phi i32 [ -12, %32 ], [ 0, %54 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_sunix_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 134217728
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 121, ptr %9, align 4
  %10 = icmp slt i32 %3, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %3
  br label %26

15:                                               ; preds = %4
  %16 = add nsw i32 %3, -4
  %17 = zext i32 %16 to i64
  %18 = call i64 @div_s64_rem(i64 noundef %17, i32 noundef 4, ptr noundef nonnull %5) #13
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 6
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %21
  %25 = add i32 %24, %20
  br label %26

26:                                               ; preds = %15, %11
  %27 = phi i32 [ %25, %15 ], [ %14, %11 ]
  %28 = phi i32 [ 1, %15 ], [ 0, %11 ]
  store i32 %27, ptr %5, align 4
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 %28
  %31 = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 %28, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %26
  %36 = call ptr @pcim_iomap(ptr noundef %29, i32 noundef %28, i32 noundef 0) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call ptr @pcim_iomap_table(ptr noundef %29) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38, %35
  %42 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %42, align 2
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = load i32, ptr %30, align 8
  %45 = add i32 %44, %27
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %45, ptr %46, align 4
  %47 = call ptr @pcim_iomap_table(ptr noundef %29) #13
  %48 = getelementptr ptr, ptr %47, i32 %28
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 %27
  br label %57

51:                                               ; preds = %26
  %52 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %52, align 2
  %53 = load i32, ptr %30, align 8
  %54 = add i32 %53, %27
  %55 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %51, %41
  %58 = phi ptr [ null, %51 ], [ %50, %41 ]
  %59 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 0, ptr %60, align 1
  br label %61

61:                                               ; preds = %57, %38
  %62 = phi i32 [ -12, %38 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_xircom_init(ptr nocapture noundef readnone %0) #0 {
  tail call void @msleep(i32 noundef 100) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_netmos_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 15
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  switch i16 %7, label %8 [
    i16 -26367, label %46
    i16 -26523, label %46
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 4116
  %12 = icmp eq i16 %3, 665
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %46, label %14

14:                                               ; preds = %8
  switch i16 %7, label %33 [
    i16 -26364, label %15
    i16 -26350, label %15
    i16 -26334, label %15
    i16 -26368, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %25 [
    i8 2, label %46
    i8 0, label %19
  ]

19:                                               ; preds = %15
  %20 = icmp eq i16 %7, -26368
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = icmp eq i16 %4, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.12) #15
  br label %35

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  %30 = zext i16 %7 to i32
  %31 = zext i16 %10 to i32
  %32 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32) #15
  br label %35

33:                                               ; preds = %14
  %34 = icmp eq i16 %4, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %33, %25, %23
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = load i16, ptr %6, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, ptr %9, align 4
  %43 = zext i16 %42 to i32
  %44 = load i16, ptr %2, align 2
  %45 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #15
  br label %46

46:                                               ; preds = %35, %33, %21, %15, %8, %1, %1
  %47 = phi i32 [ -19, %35 ], [ 0, %1 ], [ 0, %1 ], [ 0, %8 ], [ %5, %33 ], [ 1, %15 ], [ %5, %21 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_netmos_9900_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -26523
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 10
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, -256
  %13 = icmp eq i16 %12, 12288
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = trunc i32 %3 to i8
  %16 = mul i8 %15, 3
  %17 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = zext i8 %16 to i32
  %20 = icmp ugt i8 %16, 5
  br i1 %20, label %54, label %21

21:                                               ; preds = %14
  %22 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %19
  %23 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %19, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @pcim_iomap(ptr noundef %5, i32 noundef %19, i32 noundef 0) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call ptr @pcim_iomap_table(ptr noundef %5) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %34, align 2
  %35 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = load i32, ptr %22, align 8
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %36, ptr %37, align 4
  %38 = tail call ptr @pcim_iomap_table(ptr noundef %5) #13
  %39 = getelementptr ptr, ptr %38, i32 %19
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = trunc i32 %18 to i8
  br label %49

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %44, align 2
  %45 = load i32, ptr %22, align 8
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr null, ptr %48, align 4
  br label %49

49:                                               ; preds = %43, %33
  %50 = phi i8 [ %42, %33 ], [ 0, %43 ]
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %50, ptr %51, align 1
  br label %54

52:                                               ; preds = %9, %4
  %53 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %54

54:                                               ; preds = %52, %49, %30, %14
  %55 = phi i32 [ %53, %52 ], [ -22, %14 ], [ -12, %30 ], [ 0, %49 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_endrun_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, 29697
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -8192
  br i1 %9, label %10, label %22

10:                                               ; preds = %5, %1
  %11 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 5) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !74
  %15 = icmp eq i32 %14, 117441024
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !75
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %19, %16 ], [ 0, %13 ]
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %11) #13
  br label %22

22:                                               ; preds = %20, %10, %5
  %23 = phi i32 [ %21, %20 ], [ 0, %5 ], [ -12, %10 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_oxsemi_tornado_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, 5141
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -16384
  br i1 %9, label %10, label %22

10:                                               ; preds = %5, %1
  %11 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 5) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !74
  %15 = icmp eq i32 %14, 117441024
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !75
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %19, %16 ], [ 0, %13 ]
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %11) #13
  br label %22

22:                                               ; preds = %20, %10, %5
  %23 = phi i32 [ %21, %20 ], [ 0, %5 ], [ -12, %10 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_eg20t_init(ptr nocapture noundef readnone %0) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_omegapci_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = shl i32 %3, 3
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 2
  %8 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 2, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @pcim_iomap(ptr noundef %6, i32 noundef 2, i32 noundef 0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call ptr @pcim_iomap_table(ptr noundef %6) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %19, align 2
  %20 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = load i32, ptr %7, align 8
  %22 = add i32 %21, %5
  %23 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %22, ptr %23, align 4
  %24 = tail call ptr @pcim_iomap_table(ptr noundef %6) #13
  %25 = getelementptr ptr, ptr %24, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %5
  br label %34

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %29, align 2
  %30 = load i32, ptr %7, align 8
  %31 = add i32 %30, %5
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = phi ptr [ null, %28 ], [ %27, %18 ]
  %36 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 0, ptr %37, align 1
  br label %38

38:                                               ; preds = %34, %15
  %39 = phi i32 [ -12, %15 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_wch_ch353_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 134217728
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 4, ptr %8, align 4
  %9 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_wch_ch355_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 134217728
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 4, ptr %8, align 4
  %9 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_wch_ch38x_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 134217728
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 12, ptr %8, align 4
  %9 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_wch_ch38x_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 14419
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %7 = load i32, ptr %6, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !76
  tail call void @arm_heavy_mb() #13
  %8 = add i32 %7, 235
  %9 = and i32 %8, 1048575
  %10 = or i32 %9, -18874368
  %11 = inttoptr i32 %10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 2) #13, !srcloc !25
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 8, %5 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_wch_ch38x_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %3 = load i32, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !77
  tail call void @arm_heavy_mb() #13
  %4 = add i32 %3, 235
  %5 = and i32 %4, 1048575
  %6 = or i32 %5, -18874368
  %7 = inttoptr i32 %6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #13, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_asix_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_8250_port, ptr %2, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = or i16 %6, 16
  store i16 %7, ptr %5, align 4
  %8 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_brcm_trumanage_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @pci_default_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 25, ptr %6, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 671088640
  store i32 %9, ptr %7, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fintek_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %109, label %11

11:                                               ; preds = %1
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %109, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %109, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %25 = load i16, ptr %24, align 2
  switch i16 %25, label %109 [
    i16 4356, label %26
    i16 4360, label %26
    i16 4370, label %29
  ]

26:                                               ; preds = %23, %23
  %27 = and i16 %25, 255
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %28, %26 ], [ 12, %23 ]
  %31 = load i32, ptr %6, align 8
  store i32 %31, ptr %3, align 4
  %32 = load i32, ptr %12, align 8
  %33 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %18, align 8
  %35 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %109, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %39 = icmp eq ptr %5, null
  br label %40

40:                                               ; preds = %106, %37
  %41 = phi i32 [ 0, %37 ], [ %107, %106 ]
  %42 = shl i32 %41, 3
  %43 = add nuw nsw i32 %42, 64
  %44 = lshr i32 %41, 2
  %45 = getelementptr [3 x i32], ptr %3, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 224
  %48 = and i32 %42, 24
  %49 = or i32 %47, %48
  %50 = and i32 %43, 248
  %51 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %50, i8 noundef zeroext 1) #13
  %52 = or i32 %50, 1
  %53 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %52, i8 noundef zeroext 51) #13
  %54 = or i32 %50, 4
  %55 = trunc i32 %49 to i8
  %56 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %54, i8 noundef zeroext %55) #13
  %57 = or i32 %50, 5
  %58 = lshr i32 %46, 8
  %59 = trunc i32 %58 to i8
  %60 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %57, i8 noundef zeroext %59) #13
  %61 = or i32 %50, 6
  %62 = load i32, ptr %38, align 4
  %63 = trunc i32 %62 to i8
  %64 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %61, i8 noundef zeroext %63) #13
  br i1 %39, label %103, label %65

65:                                               ; preds = %40
  %66 = getelementptr %struct.serial_private, ptr %5, i32 0, i32 4, i32 %41
  %67 = load i32, ptr %66, align 4
  %68 = call ptr @serial8250_get_port(i32 noundef %67) #13
  %69 = getelementptr inbounds %struct.uart_port, ptr %68, i32 0, i32 45
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !annotation !8
  %72 = getelementptr inbounds %struct.uart_port, ptr %68, i32 0, i32 59
  %73 = load ptr, ptr %72, align 4
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 3
  %77 = add nuw nsw i32 %76, 71
  %78 = call i32 @pci_read_config_byte(ptr noundef %71, i32 noundef %77, ptr noundef nonnull %2) #13
  %79 = getelementptr inbounds %struct.uart_port, ptr %68, i32 0, i32 56
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 3
  store i32 %81, ptr %79, align 4
  %82 = and i32 %80, 1
  %83 = icmp eq i32 %82, 0
  %84 = load i8, ptr %2, align 1
  br i1 %83, label %94, label %85

85:                                               ; preds = %65
  %86 = and i32 %80, 2
  %87 = icmp eq i32 %86, 0
  %88 = or i8 %84, 48
  %89 = and i8 %84, -49
  %90 = or i8 %89, 16
  %91 = select i1 %87, i8 %88, i8 %90
  store i8 %91, ptr %2, align 1
  %92 = getelementptr inbounds %struct.uart_port, ptr %68, i32 0, i32 56, i32 2
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.uart_port, ptr %68, i32 0, i32 56, i32 1
  store i32 0, ptr %93, align 4
  br label %96

94:                                               ; preds = %65
  %95 = and i8 %84, -49
  store i8 %95, ptr %2, align 1
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i8 [ %95, %94 ], [ %91, %85 ]
  %98 = load i8, ptr %73, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 3
  %101 = add nuw nsw i32 %100, 71
  %102 = call i32 @pci_write_config_byte(ptr noundef %71, i32 noundef %101, i8 noundef zeroext %97) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %106

103:                                              ; preds = %40
  %104 = or i32 %50, 7
  %105 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %104, i8 noundef zeroext 1) #13
  br label %106

106:                                              ; preds = %103, %96
  %107 = add nuw nsw i32 %41, 1
  %108 = icmp eq i32 %107, %30
  br i1 %108, label %109, label %40

109:                                              ; preds = %106, %29, %23, %17, %11, %1
  %110 = phi i32 [ -19, %17 ], [ -19, %11 ], [ -19, %1 ], [ -22, %23 ], [ 0, %29 ], [ %30, %106 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fintek_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %7 = shl i32 %3, 3
  %8 = add i32 %7, 64
  %9 = and i32 %8, 248
  %10 = or i32 %9, 4
  %11 = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %10, ptr noundef nonnull %5) #13
  %12 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %12, align 2
  %13 = load i16, ptr %5, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 18
  store ptr @pci_fintek_rs485_config, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 1, i32 noundef 3520) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = trunc i32 %3 to i8
  store i8 %21, ptr %18, align 1
  %22 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = phi i32 [ 0, %20 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_moxa_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  %9 = icmp eq i32 %3, 3
  %10 = and i1 %9, %8
  %11 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = select i1 %10, i32 7, i32 %3
  %14 = mul i32 %12, %13
  %15 = trunc i32 %5 to i8
  %16 = and i8 %15, 7
  %17 = load ptr, ptr %0, align 4
  %18 = zext i8 %16 to i32
  %19 = icmp ugt i8 %16, 5
  br i1 %19, label %52, label %20

20:                                               ; preds = %4
  %21 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %18
  %22 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %18, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @pcim_iomap(ptr noundef %17, i32 noundef %18, i32 noundef 0) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call ptr @pcim_iomap_table(ptr noundef %17) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %33, align 2
  %34 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = load i32, ptr %21, align 8
  %36 = add i32 %35, %14
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %36, ptr %37, align 4
  %38 = tail call ptr @pcim_iomap_table(ptr noundef %17) #13
  %39 = getelementptr ptr, ptr %38, i32 %18
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %14
  br label %48

42:                                               ; preds = %20
  %43 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 0, ptr %43, align 2
  %44 = load i32, ptr %21, align 8
  %45 = add i32 %44, %14
  %46 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %42, %32
  %49 = phi ptr [ null, %42 ], [ %41, %32 ]
  %50 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 0, ptr %51, align 1
  br label %52

52:                                               ; preds = %48, %29, %4
  %53 = phi i32 [ -22, %4 ], [ -12, %29 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fintek_f815xxa_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  switch i16 %8, label %27 [
    i16 4612, label %11
    i16 4616, label %11
    i16 4626, label %9
  ]

9:                                                ; preds = %6
  %10 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 521, i8 noundef zeroext 64) #13
  br label %16

11:                                               ; preds = %6, %6
  %12 = and i16 %8, 255
  %13 = zext i16 %12 to i32
  %14 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 521, i8 noundef zeroext 64) #13
  %15 = icmp eq i16 %12, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ 12, %9 ], [ %13, %11 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %25, %18 ], [ 0, %16 ]
  %20 = shl i32 %19, 3
  %21 = add nuw nsw i32 %20, 672
  %22 = add nuw nsw i32 %20, 673
  %23 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %22, i8 noundef zeroext 51) #13
  %24 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 1) #13
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %11, %6, %1
  %28 = phi i32 [ -19, %1 ], [ -22, %6 ], [ 0, %11 ], [ %17, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fintek_f815xxa_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 8, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.f815xxa_data, ptr %7, i32 0, i32 1
  store i32 %3, ptr %10, align 4
  store i32 0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 59
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %12, align 2
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 33
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, -2147483648
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 47
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %3, 3
  %19 = add i32 %17, %18
  %20 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 4
  store ptr @f815xxa_mem_serial_out, ptr %21, align 4
  br label %22

22:                                               ; preds = %9, %4
  %23 = phi i32 [ 0, %9 ], [ -12, %4 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kt_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = and i32 %5, 1048575
  %7 = or i32 %6, -18874368
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !78
  %10 = icmp eq i32 %1, 1
  %11 = icmp eq i8 %9, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 2
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i8 [ %15, %13 ], [ %9, %2 ]
  %18 = zext i8 %17 to i32
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kt_handle_break(ptr noundef %0) #0 {
  tail call void @serial8250_clear_and_reinit_fifos(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_clear_and_reinit_fifos(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @moan_device(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fintek_rs485_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = add nuw nsw i32 %11, 71
  %13 = call i32 @pci_read_config_byte(ptr noundef %6, i32 noundef %12, ptr noundef nonnull %3) #13
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %17 = load i32, ptr %16, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.serial_rs485, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %23, i8 0, i32 20, i1 false)
  br label %25

24:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %41

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %19, %22 ], [ %17, %15 ]
  %27 = phi ptr [ %1, %22 ], [ %16, %15 ]
  %28 = and i32 %26, 3
  store i32 %28, ptr %27, align 4
  %29 = and i32 %26, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i8, ptr %3, align 1
  %33 = and i32 %26, 2
  %34 = icmp eq i32 %33, 0
  %35 = or i8 %32, 48
  %36 = and i8 %32, -49
  %37 = or i8 %36, 16
  %38 = select i1 %34, i8 %35, i8 %37
  store i8 %38, ptr %3, align 1
  %39 = getelementptr inbounds %struct.serial_rs485, ptr %27, i32 0, i32 2
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.serial_rs485, ptr %27, i32 0, i32 1
  store i32 0, ptr %40, align 4
  br label %45

41:                                               ; preds = %25, %24
  %42 = phi ptr [ %1, %24 ], [ %27, %25 ]
  %43 = load i8, ptr %3, align 1
  %44 = and i8 %43, -49
  store i8 %44, ptr %3, align 1
  br label %45

45:                                               ; preds = %41, %31
  %46 = phi ptr [ %42, %41 ], [ %27, %31 ]
  %47 = phi i8 [ %44, %41 ], [ %38, %31 ]
  %48 = load i8, ptr %8, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = add nuw nsw i32 %50, 71
  %52 = call i32 @pci_write_config_byte(ptr noundef %6, i32 noundef %51, i8 noundef zeroext %47) #13
  %53 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %54 = icmp eq ptr %46, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %53, ptr noundef align 4 dereferenceable(32) %46, i32 32, i1 false)
  br label %56

56:                                               ; preds = %55, %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f815xxa_mem_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !79
  tail call void @arm_heavy_mb() #13
  %7 = trunc i32 %2 to i8
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %7) #13, !srcloc !25
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 7
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pciserial_init_one(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.pciserial_board, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  br label %10

10:                                               ; preds = %40, %2
  %11 = phi ptr [ @pci_serial_quirks, %2 ], [ %41, %40 ]
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, -1
  %14 = icmp ne i32 %12, %6
  %15 = and i1 %13, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.pci_serial_quirk, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i16, ptr %7, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %18, -1
  %22 = icmp ne i32 %18, %20
  %23 = and i1 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.pci_serial_quirk, ptr %11, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = load i16, ptr %8, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, -1
  %30 = icmp ne i32 %26, %28
  %31 = and i1 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.pci_serial_quirk, ptr %11, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = load i16, ptr %9, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp ne i32 %34, -1
  %38 = icmp ne i32 %34, %36
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %24, %16, %10
  %41 = getelementptr %struct.pci_serial_quirk, ptr %11, i32 1
  br label %10

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.pci_serial_quirk, ptr %11, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %44(ptr noundef %0) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %111

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 116
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16, i32 noundef %51) #15
  br label %111

55:                                               ; preds = %49
  %56 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51
  %57 = tail call ptr @pci_match_id(ptr noundef nonnull @blacklist, ptr noundef %0) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %111

59:                                               ; preds = %55
  %60 = tail call i32 @pcim_enable_device(ptr noundef %0) #13
  %61 = tail call i32 @pci_save_state(ptr noundef %0) #13
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %59
  %64 = load i32, ptr %50, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef align 4 dereferenceable(24) %56, i32 24, i1 false)
  %67 = call fastcc i32 @serial_pci_guess_board(ptr noundef %0, ptr noundef nonnull %3)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %103, label %111

69:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) @pci_boards, i32 24, i1 false)
  %70 = call fastcc i32 @serial_pci_guess_board(ptr noundef %0, ptr noundef nonnull %3)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.pciserial_board, ptr %3, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.pciserial_board, ptr %3, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.pciserial_board, ptr %3, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.pciserial_board, ptr %3, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = getelementptr [117 x %struct.pciserial_board], ptr @pci_boards, i32 0, i32 %51, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.pciserial_board, ptr %3, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  tail call fastcc void @moan_device(ptr noundef nonnull @.str.17, ptr noundef %0)
  br label %103

103:                                              ; preds = %102, %96, %90, %84, %78, %72, %69, %66
  %104 = phi ptr [ %3, %66 ], [ %56, %102 ], [ %56, %96 ], [ %56, %69 ], [ %56, %90 ], [ %56, %84 ], [ %56, %78 ], [ %56, %72 ]
  %105 = call ptr @pciserial_init_ports(ptr noundef %0, ptr noundef %104)
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = ptrtoint ptr %105 to i32
  br label %111

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %105, ptr %110, align 8
  br label %111

111:                                              ; preds = %109, %107, %66, %59, %55, %53, %46
  %112 = phi i32 [ -22, %53 ], [ %108, %107 ], [ 0, %109 ], [ %47, %46 ], [ -19, %55 ], [ %60, %59 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pciserial_remove_one(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pciserial_remove_ports(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @serial_pci_guess_board(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 8
  switch i32 %5, label %220 [
    i32 1792, label %6
    i32 1794, label %6
    i32 1795, label %6
  ]

6:                                                ; preds = %2, %2, %2
  %7 = and i32 %4, 255
  %8 = icmp ugt i32 %7, 6
  %9 = and i32 %4, -256
  %10 = icmp eq i32 %9, 459264
  %11 = or i1 %8, %10
  br i1 %11, label %220, label %12

12:                                               ; preds = %6
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i1 %16 to i32
  %20 = lshr i32 %14, 9
  %21 = and i32 %20, 1
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  %26 = lshr exact i32 %15, 8
  %27 = xor i32 %26, 1
  %28 = xor i1 %25, true
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %18, %29
  %31 = select i1 %25, i32 %19, i32 %27
  %32 = lshr i32 %23, 9
  %33 = and i32 %32, 1
  %34 = add nuw nsw i32 %33, %21
  %35 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  %39 = icmp eq i32 %31, -1
  %40 = select i1 %39, i32 2, i32 %31
  %41 = xor i1 %38, true
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %30, %42
  %44 = select i1 %38, i32 %31, i32 %40
  %45 = lshr i32 %36, 9
  %46 = and i32 %45, 1
  %47 = add nuw nsw i32 %46, %34
  %48 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq i32 %44, -1
  %53 = select i1 %52, i32 3, i32 %44
  %54 = xor i1 %51, true
  %55 = zext i1 %54 to i32
  %56 = add nuw nsw i32 %43, %55
  %57 = select i1 %51, i32 %44, i32 %53
  %58 = lshr i32 %49, 9
  %59 = and i32 %58, 1
  %60 = add nuw nsw i32 %59, %47
  %61 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  %65 = icmp eq i32 %57, -1
  %66 = select i1 %65, i32 4, i32 %57
  %67 = xor i1 %64, true
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %56, %68
  %70 = select i1 %64, i32 %57, i32 %66
  %71 = lshr i32 %62, 9
  %72 = and i32 %71, 1
  %73 = add nuw nsw i32 %72, %60
  %74 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  %78 = icmp eq i32 %70, -1
  %79 = select i1 %78, i32 5, i32 %70
  %80 = xor i1 %77, true
  %81 = zext i1 %80 to i32
  %82 = add nuw nsw i32 %69, %81
  %83 = select i1 %77, i32 %70, i32 %79
  %84 = lshr i32 %75, 9
  %85 = and i32 %84, 1
  %86 = add nuw nsw i32 %85, %73
  %87 = icmp ult i32 %86, 2
  %88 = icmp eq i32 %82, 1
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %92, label %90

90:                                               ; preds = %12
  %91 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  br i1 %16, label %111, label %102

92:                                               ; preds = %12
  store i32 %83, ptr %1, align 4
  %93 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %83, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %217, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %83
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %94, 1
  %100 = sub i32 %99, %98
  %101 = lshr i32 %100, 3
  br label %217

102:                                              ; preds = %90
  %103 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %91, align 8
  %108 = sub i32 %104, %107
  %109 = icmp eq i32 %108, 7
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %106, %102, %90
  %112 = phi i32 [ 0, %106 ], [ 0, %90 ], [ 1, %110 ], [ 0, %102 ]
  %113 = phi i1 [ true, %106 ], [ true, %90 ], [ false, %110 ], [ true, %102 ]
  %114 = phi i32 [ -1, %106 ], [ -1, %90 ], [ 0, %110 ], [ -1, %102 ]
  %115 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  br i1 %25, label %131, label %116

116:                                              ; preds = %111
  %117 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %115, align 8
  %122 = sub i32 %118, %121
  %123 = icmp eq i32 %122, 7
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = add nsw i32 %114, %112
  %126 = icmp eq i32 %125, 1
  %127 = select i1 %113, i1 true, i1 %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = add nuw nsw i32 %112, 1
  %130 = select i1 %113, i32 1, i32 %114
  br label %131

131:                                              ; preds = %128, %124, %120, %116, %111
  %132 = phi i32 [ %112, %120 ], [ %112, %111 ], [ %112, %124 ], [ %129, %128 ], [ %112, %116 ]
  %133 = phi i32 [ %114, %120 ], [ %114, %111 ], [ %114, %124 ], [ %130, %128 ], [ %114, %116 ]
  %134 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  br i1 %38, label %151, label %135

135:                                              ; preds = %131
  %136 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %134, align 8
  %141 = sub i32 %137, %140
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = icmp eq i32 %133, -1
  %145 = add nsw i32 %133, %132
  %146 = icmp eq i32 %145, 2
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = add nuw nsw i32 %132, 1
  %150 = select i1 %144, i32 2, i32 %133
  br label %151

151:                                              ; preds = %148, %143, %139, %135, %131
  %152 = phi i32 [ %132, %139 ], [ %132, %131 ], [ %132, %143 ], [ %149, %148 ], [ %132, %135 ]
  %153 = phi i32 [ %133, %139 ], [ %133, %131 ], [ %133, %143 ], [ %150, %148 ], [ %133, %135 ]
  %154 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  br i1 %51, label %171, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %154, align 8
  %161 = sub i32 %157, %160
  %162 = icmp eq i32 %161, 7
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = icmp eq i32 %153, -1
  %165 = add nsw i32 %153, %152
  %166 = icmp eq i32 %165, 3
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = add nuw nsw i32 %152, 1
  %170 = select i1 %164, i32 3, i32 %153
  br label %171

171:                                              ; preds = %168, %163, %159, %155, %151
  %172 = phi i32 [ %152, %159 ], [ %152, %151 ], [ %152, %163 ], [ %169, %168 ], [ %152, %155 ]
  %173 = phi i32 [ %153, %159 ], [ %153, %151 ], [ %153, %163 ], [ %170, %168 ], [ %153, %155 ]
  %174 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  br i1 %64, label %191, label %175

175:                                              ; preds = %171
  %176 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %174, align 8
  %181 = sub i32 %177, %180
  %182 = icmp eq i32 %181, 7
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = icmp eq i32 %173, -1
  %185 = add nsw i32 %173, %172
  %186 = icmp eq i32 %185, 4
  %187 = select i1 %184, i1 true, i1 %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = add nuw nsw i32 %172, 1
  %190 = select i1 %184, i32 4, i32 %173
  br label %191

191:                                              ; preds = %188, %183, %179, %175, %171
  %192 = phi i32 [ %172, %179 ], [ %172, %171 ], [ %172, %183 ], [ %189, %188 ], [ %172, %175 ]
  %193 = phi i32 [ %173, %179 ], [ %173, %171 ], [ %173, %183 ], [ %190, %188 ], [ %173, %175 ]
  %194 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  br i1 %77, label %211, label %195

195:                                              ; preds = %191
  %196 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = load i32, ptr %194, align 8
  %201 = sub i32 %197, %200
  %202 = icmp eq i32 %201, 7
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = icmp eq i32 %193, -1
  %205 = add nsw i32 %193, %192
  %206 = icmp eq i32 %205, 5
  %207 = select i1 %204, i1 true, i1 %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = add nuw nsw i32 %192, 1
  %210 = select i1 %204, i32 5, i32 %193
  br label %211

211:                                              ; preds = %208, %203, %199, %195, %191
  %212 = phi i32 [ %192, %199 ], [ %192, %191 ], [ %192, %203 ], [ %209, %208 ], [ %192, %195 ]
  %213 = phi i32 [ %193, %199 ], [ %193, %191 ], [ %193, %203 ], [ %210, %208 ], [ %193, %195 ]
  %214 = icmp ugt i32 %212, 1
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = or i32 %213, 8
  store i32 %216, ptr %1, align 4
  br label %217

217:                                              ; preds = %215, %96, %92
  %218 = phi i32 [ %212, %215 ], [ %101, %96 ], [ 0, %92 ]
  %219 = getelementptr inbounds %struct.pciserial_board, ptr %1, i32 0, i32 1
  store i32 %218, ptr %219, align 4
  br label %220

220:                                              ; preds = %217, %211, %6, %2
  %221 = phi i32 [ -19, %211 ], [ -19, %2 ], [ -19, %6 ], [ 0, %217 ]
  ret i32 %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_io_error_detected(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 3
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.serial_private, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %14 = getelementptr %struct.serial_private, ptr %4, i32 0, i32 4, i32 %13
  %15 = load i32, ptr %14, align 4
  tail call void @serial8250_unregister_port(i32 noundef %15) #13
  %16 = add nuw i32 %13, 1
  %17 = load i32, ptr %9, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %8
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 7
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %25 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 9
  %26 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 10
  br label %27

27:                                               ; preds = %57, %19
  %28 = phi ptr [ @pci_serial_quirks, %19 ], [ %58, %57 ]
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, -1
  %31 = icmp ne i32 %29, %23
  %32 = and i1 %30, %31
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.pci_serial_quirk, ptr %28, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i16, ptr %24, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %35, -1
  %39 = icmp ne i32 %35, %37
  %40 = and i1 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.pci_serial_quirk, ptr %28, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i16, ptr %25, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp ne i32 %43, -1
  %47 = icmp ne i32 %43, %45
  %48 = and i1 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.pci_serial_quirk, ptr %28, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load i16, ptr %26, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %51, -1
  %55 = icmp ne i32 %51, %53
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %41, %33, %27
  %58 = getelementptr %struct.pci_serial_quirk, ptr %28, i32 1
  br label %27

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.pci_serial_quirk, ptr %28, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void %61(ptr noundef %20) #13
  br label %64

64:                                               ; preds = %63, %59, %6
  tail call void @pci_disable_device(ptr noundef %0) #13
  br label %65

65:                                               ; preds = %64, %2
  %66 = phi i32 [ 3, %64 ], [ 4, %2 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial8250_io_slot_reset(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_enable_device(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @pci_restore_state(ptr noundef %0) #13
  %5 = tail call i32 @pci_save_state(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 5, %4 ], [ 4, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial8250_io_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serial_private, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @pciserial_init_ports(ptr noundef %0, ptr noundef %7)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store ptr %8, ptr %2, align 8
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %11

11:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pciserial_suspend_one(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.serial_private, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %17, %5
  %10 = phi i32 [ %18, %17 ], [ %7, %5 ]
  %11 = phi i32 [ %19, %17 ], [ 0, %5 ]
  %12 = getelementptr %struct.serial_private, ptr %3, i32 0, i32 4, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  tail call void @serial8250_suspend_port(i32 noundef %13) #13
  %16 = load i32, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %10, %9 ], [ %16, %15 ]
  %19 = add nuw i32 %11, 1
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %9, label %21

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %struct.serial_private, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pci_serial_quirk, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 4
  tail call void %25(ptr noundef %28) #13
  br label %29

29:                                               ; preds = %27, %21, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pciserial_resume_one(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -136
  %7 = tail call i32 @pci_enable_device(ptr noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #15
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.serial_private, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pci_serial_quirk, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 %14(ptr noundef %17) #13
  br label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds %struct.serial_private, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %31, %19
  %24 = phi i32 [ %32, %31 ], [ %21, %19 ]
  %25 = phi i32 [ %33, %31 ], [ 0, %19 ]
  %26 = getelementptr %struct.serial_private, ptr %3, i32 0, i32 4, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  tail call void @serial8250_resume_port(i32 noundef %27) #13
  %30 = load i32, ptr %20, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %24, %23 ], [ %30, %29 ]
  %33 = add nuw i32 %25, 1
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %19, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!9 = !{i64 3953588}
!10 = !{i64 2153723574}
!11 = !{i64 2153724889}
!12 = !{i64 2153718333}
!13 = !{i64 3953808}
!14 = !{i64 2153718786}
!15 = !{i64 3953390}
!16 = !{i64 2153712181}
!17 = !{i64 2153712639}
!18 = !{i64 2153719080}
!19 = !{i64 2153719904}
!20 = !{i64 2153720367}
!21 = !{i64 2153720581}
!22 = !{i64 2153720910}
!23 = !{i64 2153721635}
!24 = !{i64 2153721782}
!25 = !{i64 3953193}
!26 = !{i64 2153712922}
!27 = !{i64 2153742089}
!28 = !{i64 2153742359}
!29 = !{i64 2153742924}
!30 = !{i64 2153743156}
!31 = !{i64 2153743571}
!32 = !{i64 2153732458}
!33 = !{i64 2153732641}
!34 = !{i64 2153733010}
!35 = !{i64 2153733192}
!36 = !{i64 2153733561}
!37 = !{i64 2153733744}
!38 = !{i64 2153734113}
!39 = !{i64 2153734296}
!40 = !{i64 2153734597}
!41 = !{i64 2153738942}
!42 = !{i64 2153739125}
!43 = !{i64 2153739494}
!44 = !{i64 2153739670}
!45 = !{i64 2153740018}
!46 = !{i64 2153740200}
!47 = !{i64 2153734966}
!48 = !{i64 2153735149}
!49 = !{i64 2153735518}
!50 = !{i64 2153735707}
!51 = !{i64 2153736076}
!52 = !{i64 2153736258}
!53 = !{i64 2153736559}
!54 = !{i64 2153736928}
!55 = !{i64 2153737111}
!56 = !{i64 2153737480}
!57 = !{i64 2153737669}
!58 = !{i64 2153737971}
!59 = !{i64 2153738272}
!60 = !{i64 2153738573}
!61 = !{i64 2153710283}
!62 = !{i64 2153710724}
!63 = !{i64 2153711011}
!64 = !{i64 2153711434}
!65 = !{i64 2153713261}
!66 = !{i64 2153714034}
!67 = !{i64 2153714264}
!68 = !{i64 2153714512}
!69 = !{i64 2153715374}
!70 = !{i64 3952970}
!71 = !{i64 2153715825}
!72 = !{i64 3952770}
!73 = !{i64 2153716141}
!74 = !{i64 2151493261}
!75 = !{i64 2151492315}
!76 = !{i64 2153751655}
!77 = !{i64 2153752006}
!78 = !{i64 2153751298}
!79 = !{i64 2153748635}
!80 = !{i64 2153748893}
