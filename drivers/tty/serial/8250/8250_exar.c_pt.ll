; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_exar.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_exar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exar8250_board = type { i32, i32, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.exar8250_platform = type { ptr, ptr, ptr }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.71 }
%union.anon.71 = type { %union.anon.72 }
%union.anon.72 = type { [1 x i64] }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.exar8250 = type { i32, ptr, ptr, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_8250_exar__230_880_exar_pci_driver_init6 = internal global ptr @exar_pci_driver_init, section ".initcall6.init", align 4
@exar_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @exar_pci_tbl, ptr @exar_pci_probe, ptr @exar_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exar_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_exar_pci_driver_exit = internal global ptr @exar_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [49 x i8] c"8250_exar.file=drivers/tty/serial/8250/8250_exar\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"8250_exar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [41 x i8] c"8250_exar.description=Exar Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [67 x i8] c"8250_exar.author=Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"8250_exar\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"exar_serial\00", align 1
@exar_pci_tbl = internal constant [36 x %struct.pci_device_id] [%struct.pci_device_id { i32 18767, i32 4178, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_2x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4189, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_4x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4204, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4264, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4306, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_2x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4315, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_4x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4330, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 768, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 769, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 770, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 784, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 785, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 786, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 800, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 801, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 802, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 816, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 817, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 818, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4116, i32 980, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_ibm_saturn to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 850, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 852, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 856, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 17240, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V4358 to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 33624, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V8358 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_2 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_8 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_2 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 11, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_8 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@exar_pci_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exar_suspend, ptr @exar_resume, ptr @exar_suspend, ptr @exar_resume, ptr @exar_suspend, ptr @exar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@acces_com_2x = internal constant %struct.exar8250_board { i32 2, i32 0, ptr @pci_xr17c154_setup, ptr null }, align 4
@acces_com_4x = internal constant %struct.exar8250_board { i32 4, i32 0, ptr @pci_xr17c154_setup, ptr null }, align 4
@acces_com_8x = internal constant %struct.exar8250_board { i32 8, i32 0, ptr @pci_xr17c154_setup, ptr null }, align 4
@pbn_connect = internal constant %struct.exar8250_board { i32 0, i32 0, ptr @pci_connect_tech_setup, ptr null }, align 4
@pbn_exar_ibm_saturn = internal constant %struct.exar8250_board { i32 1, i32 0, ptr @pci_xr17c154_setup, ptr null }, align 4
@pbn_exar_XR17C15x = internal constant %struct.exar8250_board { i32 0, i32 0, ptr @pci_xr17c154_setup, ptr null }, align 4
@pbn_exar_XR17V35x = internal constant %struct.exar8250_board { i32 0, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_exar_XR17V4358 = internal constant %struct.exar8250_board { i32 12, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_exar_XR17V8358 = internal constant %struct.exar8250_board { i32 16, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_fastcom35x_2 = internal constant %struct.exar8250_board { i32 2, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_fastcom35x_4 = internal constant %struct.exar8250_board { i32 4, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_fastcom35x_8 = internal constant %struct.exar8250_board { i32 8, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, align 4
@pbn_fastcom335_2 = internal constant %struct.exar8250_board { i32 2, i32 0, ptr @pci_fastcom335_setup, ptr null }, align 4
@pbn_fastcom335_4 = internal constant %struct.exar8250_board { i32 4, i32 0, ptr @pci_fastcom335_setup, ptr null }, align 4
@pbn_fastcom335_8 = internal constant %struct.exar8250_board { i32 8, i32 0, ptr @pci_fastcom335_setup, ptr null }, align 4
@exar_platforms = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -114, [79 x i8] c"SIMATIC IOT2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @iot2040_platform }, %struct.dmi_system_id zeroinitializer], align 4
@exar8250_default_platform = internal unnamed_addr constant %struct.exar8250_platform { ptr @generic_rs485_config, ptr @xr17v35x_register_gpio, ptr @xr17v35x_unregister_gpio }, align 4
@iot2040_platform = internal constant %struct.exar8250_platform { ptr @iot2040_rs485_config, ptr @iot2040_register_gpio, ptr @xr17v35x_unregister_gpio }, align 4
@iot2040_gpio_node = internal constant %struct.software_node { ptr null, ptr null, ptr @iot2040_gpio_properties }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"gpio_exar\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"exar,first-pin\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@iot2040_gpio_properties = internal constant <{ { ptr, i32, i8, i32, { { [2 x i32] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.3, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 10, i32 0] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.4, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 1, i32 0] } } }, %struct.property_entry zeroinitializer }>, align 8
@exar_gpio_node = internal constant %struct.software_node { ptr null, ptr null, ptr @exar_gpio_properties }, align 4
@exar_gpio_properties = internal constant <{ { ptr, i32, i8, i32, { { [2 x i32] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.3, i32 4, i8 1, i32 2, { { [2 x i32] } } zeroinitializer }, { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.4, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 16, i32 0] } } }, %struct.property_entry zeroinitializer }>, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"exar_uart\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to setup port %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_exar_pci_driver_exit, ptr @__initcall__kmod_8250_exar__230_880_exar_pci_driver_init6, ptr @exar_pci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exar_pci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @exar_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exar_pci_driver_exit() #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @exar_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exar_pci_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.uart_8250_port, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @pcim_enable_device(ptr noundef %0) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %100

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %13, 1
  %19 = sub i32 %18, %17
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %19, %15 ], [ 0, %11 ]
  %22 = getelementptr inbounds %struct.exar8250_board, ptr %6, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 3
  %25 = lshr i32 %21, %24
  %26 = load i32, ptr %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 15
  %32 = zext i16 %31 to i32
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi i32 [ %32, %28 ], [ %26, %20 ]
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #9
  %37 = extractvalue { i32, i1 } %36, 1
  %38 = extractvalue { i32, i1 } %36, 0
  %39 = tail call i32 @llvm.uadd.sat.i32(i32 %38, i32 12) #9
  %40 = select i1 %37, i32 -1, i32 %39
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef %40, i32 noundef 3520) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %100, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.exar8250, ptr %41, i32 0, i32 1
  store ptr %6, ptr %44, align 4
  %45 = tail call ptr @pcim_iomap(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  %46 = getelementptr inbounds %struct.exar8250, ptr %41, i32 0, i32 2
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %100, label %48

48:                                               ; preds = %43
  tail call void @pci_set_master(ptr noundef %0) #9
  %49 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #9
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %100, label %51

51:                                               ; preds = %48
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %3, i8 0, i32 460, i1 false)
  %52 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 33
  store i32 721420288, ptr %52, align 4
  %53 = tail call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #9
  %54 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 20
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  store ptr %35, ptr %55, align 4
  %56 = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %53, ptr noundef nonnull @exar_misc_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %41) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %51
  %59 = load ptr, ptr %46, align 4
  %60 = getelementptr i8, ptr %59, i32 128
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %62 = load ptr, ptr %44, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load ptr, ptr %46, align 4
  %67 = getelementptr i8, ptr %66, i32 8320
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %67) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %69

69:                                               ; preds = %65, %58
  %70 = icmp ne i32 %34, 0
  %71 = icmp ne i32 %25, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.exar8250_board, ptr %6, i32 0, i32 2
  br label %75

75:                                               ; preds = %92, %73
  %76 = phi i32 [ 0, %73 ], [ %93, %92 ]
  %77 = load ptr, ptr %74, align 4
  %78 = call i32 %77(ptr noundef nonnull %41, ptr noundef %0, ptr noundef nonnull %3, i32 noundef %76) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %76) #10
  br label %97

81:                                               ; preds = %75
  %82 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %3) #9
  %83 = getelementptr %struct.exar8250, ptr %41, i32 0, i32 3, i32 %76
  store i32 %82, ptr %83, align 4
  %84 = icmp slt i32 %82, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %54, align 4
  %89 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, i32 noundef %87, i32 noundef %88, i32 noundef %91, i32 noundef %82) #10
  br label %97

92:                                               ; preds = %81
  %93 = add nuw i32 %76, 1
  %94 = icmp ult i32 %93, %34
  %95 = icmp ult i32 %93, %25
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %75, label %97

97:                                               ; preds = %92, %85, %80, %69
  %98 = phi i32 [ %76, %85 ], [ %76, %80 ], [ 0, %69 ], [ %93, %92 ]
  store i32 %98, ptr %41, align 4
  %99 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %41, ptr %99, align 8
  br label %100

100:                                              ; preds = %97, %51, %48, %43, %33, %8, %2
  %101 = phi i32 [ 0, %97 ], [ -22, %2 ], [ %9, %8 ], [ -12, %33 ], [ -12, %43 ], [ %49, %48 ], [ %56, %51 ]
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %3) #9
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exar_pci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %10, %6 ], [ 0, %1 ]
  %8 = getelementptr %struct.exar8250, ptr %3, i32 0, i32 3, i32 %7
  %9 = load i32, ptr %8, align 4
  tail call void @serial8250_unregister_port(i32 noundef %9) #9
  %10 = add nuw i32 %7, 1
  %11 = load i32, ptr %3, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %1
  %14 = getelementptr inbounds %struct.exar8250, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.exar8250_board, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef %0) #9
  br label %20

20:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_xr17c154_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = shl i32 %3, 9
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 14745600, ptr %6, align 4
  %7 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %9, align 2
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %5
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %5
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.exar8250_board, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %16, i32 141
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  switch i8 %23, label %29 [
    i8 -120, label %24
    i8 -124, label %24
    i8 -126, label %24
  ]

24:                                               ; preds = %4, %4, %4
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 9
  store ptr @xr17v35x_get_divisor, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 10
  store ptr @xr17v35x_set_divisor, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @xr17v35x_startup, ptr %28, align 4
  br label %31

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 21, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @exar_pm, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @exar_shutdown, ptr %33, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @xr17v35x_get_divisor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %1, 1
  %7 = add i32 %5, %6
  %8 = udiv i32 %7, %1
  %9 = and i32 %8, 15
  store i32 %9, ptr %2, align 4
  %10 = lshr i32 %8, 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xr17v35x_set_divisor(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  tail call void @serial8250_do_set_divisor(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 2) #9
  %8 = and i32 %7, 240
  %9 = or i32 %8, %3
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i32 noundef 2, i32 noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xr17v35x_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0, i32 noundef 9, i32 noundef 16) #9
  %4 = load ptr, ptr %2, align 4
  tail call void %4(ptr noundef %0, i32 noundef 1, i32 noundef 0) #9
  %5 = tail call i32 @serial8250_do_startup(ptr noundef %0) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exar_pm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 0, i32 255
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef 139, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exar_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %17, %7 ]
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 5) #9
  %11 = and i32 %10, 96
  %12 = icmp eq i32 %11, 0
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp ne i32 %13, %14
  %16 = select i1 %15, i1 %12, i1 false
  %17 = add nuw nsw i32 %8, 1
  %18 = icmp ult i32 %8, 1000
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %7, label %20

20:                                               ; preds = %7
  tail call void @serial8250_do_shutdown(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_divisor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_connect_tech_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = shl i32 %3, 9
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 29491200, ptr %6, align 4
  %7 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %9, align 2
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %5
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %5
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.exar8250_board, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %16, i32 141
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  switch i8 %23, label %29 [
    i8 -120, label %24
    i8 -124, label %24
    i8 -126, label %24
  ]

24:                                               ; preds = %4, %4, %4
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 9
  store ptr @xr17v35x_get_divisor, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 10
  store ptr @xr17v35x_set_divisor, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @xr17v35x_startup, ptr %28, align 4
  br label %31

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 21, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @exar_pm, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @exar_shutdown, ptr %33, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_xr17v35x_setup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @dmi_first_match(ptr noundef nonnull @exar_platforms) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dmi_system_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ @exar8250_default_platform, %4 ]
  %12 = shl i32 %3, 10
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 125000000, ptr %13, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 18
  store ptr %14, ptr %15, align 4
  %16 = icmp sgt i32 %3, 7
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 62500000, ptr %13, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %21, align 2
  %22 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %12
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %12
  %29 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.exar8250_board, ptr %20, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %32, ptr %33, align 1
  %34 = getelementptr i8, ptr %28, i32 141
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  switch i8 %35, label %41 [
    i8 -120, label %36
    i8 -124, label %36
    i8 -126, label %36
  ]

36:                                               ; preds = %18, %18, %18
  %37 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 24, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 9
  store ptr @xr17v35x_get_divisor, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 10
  store ptr @xr17v35x_set_divisor, ptr %39, align 4
  %40 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @xr17v35x_startup, ptr %40, align 4
  br label %43

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 21, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @exar_pm, ptr %44, align 4
  %45 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @exar_shutdown, ptr %45, align 4
  %46 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %47 = getelementptr i8, ptr %46, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %48 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 -64) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %49 = getelementptr i8, ptr %46, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 -128) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %50 = getelementptr i8, ptr %46, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 -128) #9, !srcloc !13
  %51 = icmp eq i32 %3, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %54 = load i16, ptr %53, align 8
  %55 = icmp eq i16 %54, 5032
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, 4958
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8 [ 0, %60 ], [ -1, %56 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %63 = getelementptr i8, ptr %46, i32 143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %64 = getelementptr i8, ptr %46, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %65 = getelementptr i8, ptr %46, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %66 = getelementptr i8, ptr %46, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %67 = getelementptr i8, ptr %46, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %62) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %68 = getelementptr i8, ptr %46, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %69 = getelementptr i8, ptr %46, i32 149
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %70 = getelementptr i8, ptr %46, i32 150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %71 = getelementptr i8, ptr %46, i32 151
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %72 = getelementptr i8, ptr %46, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %73 = getelementptr i8, ptr %46, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %62) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %74 = getelementptr i8, ptr %46, i32 154
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 0) #9, !srcloc !13
  %75 = getelementptr inbounds %struct.exar8250_platform, ptr %11, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %1, ptr noundef %2) #9
  br label %78

78:                                               ; preds = %61, %43
  %79 = phi i32 [ %77, %61 ], [ 0, %43 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_xr17v35x_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call ptr @dmi_first_match(ptr noundef nonnull @exar_platforms) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dmi_system_id, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ @exar8250_default_platform, %1 ]
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.exar8250, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @serial8250_get_port(i32 noundef %12) #9
  %14 = getelementptr inbounds %struct.exar8250_platform, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %13) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iot2040_rs485_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %16, label %8

8:                                                ; preds = %2
  %9 = and i32 %3, 16
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 2, i8 3
  %12 = trunc i32 %3 to i8
  %13 = lshr i8 %12, 3
  %14 = and i8 %13, 4
  %15 = or i8 %14, %11
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i8 [ 1, %2 ], [ %15, %8 ]
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  %21 = shl nsw i8 %17, 4
  %22 = select i1 %20, i8 %21, i8 %17
  %23 = select i1 %20, i8 15, i8 -16
  %24 = getelementptr i8, ptr %7, i32 144
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %26 = and i8 %23, %25
  %27 = or i8 %26, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !30
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %27) #9, !srcloc !13
  %28 = load i32, ptr %1, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %34 = and i8 %33, -33
  %35 = trunc i32 %29 to i8
  %36 = shl nuw nsw i8 %35, 5
  %37 = or i8 %34, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %37) #9, !srcloc !13
  br i1 %30, label %40, label %38

38:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %39 = getelementptr i8, ptr %31, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 64) #9, !srcloc !13
  br label %40

40:                                               ; preds = %38, %16
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %41, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iot2040_register_gpio(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr i8, ptr %4, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 17) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !35
  tail call void @arm_heavy_mb() #9
  %6 = getelementptr i8, ptr %4, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -120) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !36
  tail call void @arm_heavy_mb() #9
  %7 = getelementptr i8, ptr %4, i32 150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 3) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !37
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr i8, ptr %4, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 -8) #9, !srcloc !13
  %9 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -2) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 1
  store ptr %12, ptr %14, align 4
  %15 = tail call i32 @device_add_software_node(ptr noundef %13, ptr noundef nonnull @iot2040_gpio_node) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @platform_device_add(ptr noundef nonnull %9) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %11
  tail call void @platform_device_put(ptr noundef nonnull %9) #9
  br label %21

21:                                               ; preds = %20, %17, %2
  %22 = phi ptr [ null, %20 ], [ null, %2 ], [ %9, %17 ]
  %23 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  store ptr %22, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xr17v35x_unregister_gpio(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %6) #9
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_rs485_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %10 = and i8 %9, -33
  %11 = trunc i32 %4 to i8
  %12 = shl nuw nsw i8 %11, 5
  %13 = or i8 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %13) #9, !srcloc !13
  br i1 %5, label %16, label %14

14:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %15 = getelementptr i8, ptr %7, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 64) #9, !srcloc !13
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %17, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xr17v35x_register_gpio(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 5032
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -2) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %11 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 1
  store ptr %10, ptr %12, align 4
  %13 = tail call i32 @device_add_software_node(ptr noundef %11, ptr noundef nonnull @exar_gpio_node) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @platform_device_add(ptr noundef nonnull %7) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %9
  tail call void @platform_device_put(ptr noundef nonnull %7) #9
  br label %19

19:                                               ; preds = %18, %15, %6
  %20 = phi ptr [ null, %18 ], [ null, %6 ], [ %7, %15 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 59
  store ptr %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_fastcom335_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = shl i32 %3, 9
  %6 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 22
  store i32 29491200, ptr %6, align 4
  %7 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 26
  store i8 2, ptr %9, align 2
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %5
  %13 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 43
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.exar8250, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %5
  %17 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.exar8250_board, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 25
  store i8 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %16, i32 141
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  switch i8 %23, label %29 [
    i8 -120, label %24
    i8 -124, label %24
    i8 -126, label %24
  ]

24:                                               ; preds = %4, %4, %4
  %25 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 9
  store ptr @xr17v35x_get_divisor, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 10
  store ptr @xr17v35x_set_divisor, ptr %27, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 11
  store ptr @xr17v35x_startup, ptr %28, align 4
  br label %31

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 38
  store i32 21, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 16
  store ptr @exar_pm, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_port, ptr %2, i32 0, i32 12
  store ptr @exar_shutdown, ptr %33, align 4
  %34 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !38
  tail call void @arm_heavy_mb() #9
  %35 = getelementptr i8, ptr %34, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !39
  tail call void @arm_heavy_mb() #9
  %36 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 -64) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !40
  tail call void @arm_heavy_mb() #9
  %37 = getelementptr i8, ptr %34, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 32) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %38 = getelementptr i8, ptr %34, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 32) #9, !srcloc !13
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %42 = load i16, ptr %41, align 2
  switch i16 %42, label %51 [
    i16 4, label %43
    i16 2, label %43
    i16 10, label %47
    i16 11, label %47
  ]

43:                                               ; preds = %40, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %44 = getelementptr i8, ptr %34, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 120) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %45 = getelementptr i8, ptr %34, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %46 = getelementptr i8, ptr %34, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 0) #9, !srcloc !13
  br label %51

47:                                               ; preds = %40, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %48 = getelementptr i8, ptr %34, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %49 = getelementptr i8, ptr %34, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 -64) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  tail call void @arm_heavy_mb() #9
  %50 = getelementptr i8, ptr %34, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 -64) #9, !srcloc !13
  br label %51

51:                                               ; preds = %47, %43, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %52 = getelementptr i8, ptr %34, i32 143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %53 = getelementptr i8, ptr %34, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %54 = getelementptr i8, ptr %34, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 0) #9, !srcloc !13
  br label %55

55:                                               ; preds = %51, %31
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exar_misc_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 128
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %7 = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 8
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 8320
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %15

15:                                               ; preds = %11, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exar_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %15, %1
  %8 = phi i32 [ %16, %15 ], [ %5, %1 ]
  %9 = phi i32 [ %17, %15 ], [ 0, %1 ]
  %10 = getelementptr %struct.exar8250, ptr %4, i32 0, i32 3, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @serial8250_suspend_port(i32 noundef %11) #9
  %14 = load i32, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %8, %7 ], [ %14, %13 ]
  %17 = add nuw i32 %9, 1
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %7, label %19

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.exar8250, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.exar8250_board, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %2) #9
  br label %26

26:                                               ; preds = %25, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exar_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exar8250, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 128
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %8 = getelementptr inbounds %struct.exar8250, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 8
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 8320
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %27, %16
  %20 = phi i32 [ %28, %27 ], [ %17, %16 ]
  %21 = phi i32 [ %29, %27 ], [ 0, %16 ]
  %22 = getelementptr %struct.exar8250, ptr %3, i32 0, i32 3, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  tail call void @serial8250_resume_port(i32 noundef %23) #9
  %26 = load i32, ptr %3, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %20, %19 ], [ %26, %25 ]
  %29 = add nuw i32 %21, 1
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %19, label %31

31:                                               ; preds = %27, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 4364642}
!9 = !{i64 2154177913}
!10 = !{i64 2154178139}
!11 = !{i64 2154166936}
!12 = !{i64 2154176801}
!13 = !{i64 4364247}
!14 = !{i64 2154177035}
!15 = !{i64 2154177263}
!16 = !{i64 2154177490}
!17 = !{i64 2154170140}
!18 = !{i64 2154170369}
!19 = !{i64 2154170598}
!20 = !{i64 2154170827}
!21 = !{i64 2154171055}
!22 = !{i64 2154171283}
!23 = !{i64 2154171512}
!24 = !{i64 2154171741}
!25 = !{i64 2154171970}
!26 = !{i64 2154172199}
!27 = !{i64 2154172427}
!28 = !{i64 2154172655}
!29 = !{i64 2154174538}
!30 = !{i64 2154174721}
!31 = !{i64 2154173802}
!32 = !{i64 2154173995}
!33 = !{i64 2154174240}
!34 = !{i64 2154175792}
!35 = !{i64 2154176026}
!36 = !{i64 2154176260}
!37 = !{i64 2154176494}
!38 = !{i64 2154167124}
!39 = !{i64 2154167358}
!40 = !{i64 2154167585}
!41 = !{i64 2154167810}
!42 = !{i64 2154168051}
!43 = !{i64 2154168280}
!44 = !{i64 2154168509}
!45 = !{i64 2154168752}
!46 = !{i64 2154168981}
!47 = !{i64 2154169210}
!48 = !{i64 2154169439}
!49 = !{i64 2154169668}
!50 = !{i64 2154169897}
