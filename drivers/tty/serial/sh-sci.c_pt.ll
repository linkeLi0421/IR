; ModuleID = '/llk/IR/drivers/tty/serial/sh-sci.c_pt.bc'
source_filename = "../drivers/tty/serial/sh-sci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sci_port = type { %struct.uart_port, ptr, ptr, i32, i32, ptr, [4 x ptr], [4 x i32], [6 x i32], [6 x ptr], ptr, ptr, ptr, ptr, i32, [2 x i32], i32, i32, i32, [2 x %struct.scatterlist], [2 x ptr], i32, %struct.work_struct, %struct.hrtimer, i32, i32, i32, %struct.timer_list, i32, i16, i8, i8 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sci_irq_desc = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.plat_sci_reg = type { i8, i8 }
%struct.sci_port_params = type { [20 x %struct.plat_sci_reg], i32, i32, i32, i32, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.plat_sci_port = type { i32, i32, i32, i32, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }

@sci_driver = internal global %struct.platform_driver { ptr @sci_probe, ptr @sci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_sci_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sci_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@sci_uart_driver = internal global %struct.uart_driver { ptr null, ptr @.str.35, ptr @.str.55, i32 204, i32 8, i32 20, ptr @serial_console, ptr null, ptr null }, align 4
@__UNIQUE_ID___earlycon_sci260 = internal constant %struct.earlycon_id { [15 x i8] c"sci\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,sci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sci_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif261 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scif_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif262 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzscifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scif263 = internal constant %struct.earlycon_id { [15 x i8] c"scif\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scif-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzscifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scifa264 = internal constant %struct.earlycon_id { [15 x i8] c"scifa\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scifa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scifa_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_scifb265 = internal constant %struct.earlycon_id { [15 x i8] c"scifb\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,scifb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scifb_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_hscif266 = internal constant %struct.earlycon_id { [15 x i8] c"hscif\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"renesas,hscif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hscif_early_console_setup }, section "__earlycon_table", align 4
@__initcall__kmod_sh_sci__267_3482_sci_init6 = internal global ptr @sci_init, section ".initcall6.init", align 4
@__exitcall_sci_exit = internal global ptr @sci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file268 = internal constant [38 x i8] c"sh_sci.file=drivers/tty/serial/sh-sci\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [19 x i8] c"sh_sci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [29 x i8] c"sh_sci.alias=platform:sh-sci\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [25 x i8] c"sh_sci.author=Paul Mundt\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [50 x i8] c"sh_sci.description=SuperH (H)SCI(F) serial driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"sh-sci\00", align 1
@of_sci_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473413 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473421 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473421 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen4-scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473416 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3473415 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scifa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5439491 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,scifb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6094852 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,hscif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6815756 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3407873 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@sci_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sci_suspend, ptr @sci_resume, ptr @sci_suspend, ptr @sci_resume, ptr @sci_suspend, ptr @sci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@sci_ports = internal global [20 x %struct.sci_port] zeroinitializer, align 8
@dev_attr_rx_fifo_trigger = internal global %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420 }, ptr @rx_fifo_trigger_show, ptr @rx_fifo_trigger_store }, align 4
@dev_attr_rx_fifo_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420 }, ptr @rx_fifo_timeout_show, ptr @rx_fifo_timeout_store }, align 4
@sci_ports_in_use = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get reset ctrl\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to deassert reset %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to register assert devm action, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to get alias id (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Attempting to register port %d when only %d are available\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Consider bumping CONFIG_SERIAL_SH_SCI_NR_UARTS!\0A\00", align 1
@sci_uart_registration_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sci_uart_registration_lock, i64 12), ptr getelementptr (i8, ptr @sci_uart_registration_lock, i64 12) } }, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Conflicting RTS/CTS config\0A\00", align 1
@sci_uart_ops = internal constant %struct.uart_ops { ptr @sci_tx_empty, ptr @sci_set_mctrl, ptr @sci_get_mctrl, ptr @sci_stop_tx, ptr @sci_start_tx, ptr null, ptr null, ptr null, ptr @sci_stop_rx, ptr @sci_enable_ms, ptr @sci_break_ctl, ptr @sci_startup, ptr @sci_shutdown, ptr @sci_flush_buffer, ptr @sci_set_termios, ptr null, ptr @sci_pm, ptr @sci_type, ptr @sci_release_port, ptr @sci_request_port, ptr @sci_config_port, ptr @sci_verify_port, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Failed mapping Tx DMA descriptor\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Failed to allocate Rx dma buffer, using PIO\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"dmaengine_slave_config failed %d\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"Failed preparing Tx DMA descriptor\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed submitting Tx DMA descriptor\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed submitting Rx DMA descriptor\0A\00", align 1
@sci_irq_desc = internal unnamed_addr constant [7 x %struct.sci_irq_desc] [%struct.sci_irq_desc { ptr @.str.25, ptr @sci_er_interrupt }, %struct.sci_irq_desc { ptr @.str.26, ptr @sci_rx_interrupt }, %struct.sci_irq_desc { ptr @.str.27, ptr @sci_tx_interrupt }, %struct.sci_irq_desc { ptr @.str.28, ptr @sci_br_interrupt }, %struct.sci_irq_desc { ptr @.str.29, ptr @sci_rx_interrupt }, %struct.sci_irq_desc { ptr @.str.30, ptr @sci_tx_interrupt }, %struct.sci_irq_desc { ptr @.str.31, ptr @sci_mpxed_interrupt }], align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't allocate %s IRQ\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"rx err\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"rx full\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"tx empty\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"rx ready\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"tx end\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.32 = private unnamed_addr constant [28 x i8] c"drivers/tty/serial/sh-sci.c\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"unknown FIFO configuration\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"irda\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"sci\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"scif\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"scifa\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"scifb\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"hscif\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.40 = private unnamed_addr constant [27 x i8] c"request_mem_region failed.\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"can't remap port#%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"\013Can't probe register map for given port\0A\00", align 1
@sci_port_params = internal constant <{ %struct.sci_port_params, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 }, %struct.sci_port_params, %struct.sci_port_params }> <{ %struct.sci_port_params zeroinitializer, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 1, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 3, i8 8 }, %struct.plat_sci_reg { i8 5, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 1, i32 3, i32 32, i32 -2147483648, i32 56, i32 -60 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 1, i32 3, i32 32, i32 -2147483648, i32 56, i32 -60 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 8 }, %struct.plat_sci_reg { i8 36, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 64, i32 3, i32 512, i32 67474512, i32 668, i32 -653 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 64, i8 8 }, %struct.plat_sci_reg { i8 96, i8 8 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 56, i8 16 }, %struct.plat_sci_reg { i8 60, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 256, i32 3, i32 512, i32 67474512, i32 668, i32 -653 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 8 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer], i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [9 x %struct.plat_sci_reg], [11 x %struct.plat_sci_reg] }> <{ [9 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }], [11 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [12 x %struct.plat_sci_reg], [8 x %struct.plat_sci_reg] }> <{ [12 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 40, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg { i8 36, i8 16 }], [8 x %struct.plat_sci_reg] zeroinitializer }>, i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 }, { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }>, i32, i32, i32, i32, i32, i32 } { <{ [8 x %struct.plat_sci_reg], [12 x %struct.plat_sci_reg] }> <{ [8 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 20, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 32, i8 8 }, %struct.plat_sci_reg { i8 36, i8 8 }], [12 x %struct.plat_sci_reg] zeroinitializer }>, i32 64, i32 3, i32 512, i32 32768, i32 668, i32 -653 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 4, i8 8 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg { i8 24, i8 16 }, %struct.plat_sci_reg { i8 28, i8 16 }, %struct.plat_sci_reg { i8 12, i8 8 }, %struct.plat_sci_reg { i8 20, i8 8 }, %struct.plat_sci_reg { i8 36, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 32, i8 16 }, %struct.plat_sci_reg { i8 64, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 48, i8 16 }, %struct.plat_sci_reg { i8 52, i8 16 }, %struct.plat_sci_reg { i8 84, i8 16 }, %struct.plat_sci_reg { i8 88, i8 16 }, %struct.plat_sci_reg zeroinitializer], i32 128, i32 8, i32 1, i32 -128, i32 156, i32 -141 }, %struct.sci_port_params { [20 x %struct.plat_sci_reg] [%struct.plat_sci_reg { i8 0, i8 16 }, %struct.plat_sci_reg { i8 2, i8 8 }, %struct.plat_sci_reg { i8 4, i8 16 }, %struct.plat_sci_reg { i8 8, i8 16 }, %struct.plat_sci_reg { i8 12, i8 16 }, %struct.plat_sci_reg { i8 14, i8 16 }, %struct.plat_sci_reg { i8 6, i8 8 }, %struct.plat_sci_reg { i8 10, i8 8 }, %struct.plat_sci_reg { i8 18, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 16, i8 16 }, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg zeroinitializer, %struct.plat_sci_reg { i8 20, i8 8 }], i32 16, i32 8, i32 1, i32 -2147483648, i32 156, i32 -141 } }>, align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"brg_int\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"scif_clk\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"hsck\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"peripheral_clk\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"failed to get %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Invalid register access\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"rx_fifo_trigger\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"rx_fifo_timeout\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"ttySC\00", align 1
@serial_console = internal global %struct.console { [16 x i8] c"ttySC\00\00\00\00\00\00\00\00\00\00\00", ptr @serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @sci_uart_driver, ptr null }, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@port_cfg = internal global %struct.plat_sci_port zeroinitializer, section ".init.data", align 4
@.str.56 = private unnamed_addr constant [6 x i8] c"\016%s\0A\00", align 1
@banner = internal constant [36 x i8] c"SuperH (H)SCI(F) driver initialized\00", section ".init.rodata", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___earlycon_hscif266, ptr @__UNIQUE_ID___earlycon_sci260, ptr @__UNIQUE_ID___earlycon_scif261, ptr @__UNIQUE_ID___earlycon_scif262, ptr @__UNIQUE_ID___earlycon_scif263, ptr @__UNIQUE_ID___earlycon_scifa264, ptr @__UNIQUE_ID___earlycon_scifb265, ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_sci_exit, ptr @__initcall__kmod_sh_sci__267_3482_sci_init6, ptr @sci_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sci_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sci_driver) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @sci_uart_driver, i32 0, i32 7), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @uart_unregister_driver(ptr noundef nonnull @sci_uart_driver) #11
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sci_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 52) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scif_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 53) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rzscifa_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  store i8 13, ptr getelementptr inbounds (%struct.plat_sci_port, ptr @port_cfg, i32 0, i32 4), align 4
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 53) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scifa_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 83) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scifb_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 93) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hscif_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @early_console_setup(ptr noundef %0, i32 noundef 104) #12
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sci_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @banner) #13
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sci_driver, ptr noundef null) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %8 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %11, ptr noundef nonnull @.str.2) #11
  %13 = inttoptr i32 %12 to ptr
  br label %51

14:                                               ; preds = %6
  %15 = tail call i32 @reset_control_deassert(ptr noundef %8) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %15) #13
  %18 = inttoptr i32 %15 to ptr
  br label %51

19:                                               ; preds = %14
  %20 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @sci_reset_control_assert, ptr noundef %8) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @reset_control_assert(ptr noundef %8) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %20) #13
  %24 = inttoptr i32 %20 to ptr
  br label %51

25:                                               ; preds = %19
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @of_alias_get_id(ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, ptr @sci_ports_in_use, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = xor i32 %32, -1
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #11, !range !8
  br label %38

37:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %29) #13
  br label %58

38:                                               ; preds = %34, %28
  %39 = phi i32 [ %29, %28 ], [ %36, %34 ]
  %40 = icmp ugt i32 %39, 19
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %39) #13
  br label %58

42:                                               ; preds = %38
  %43 = ptrtoint ptr %7 to i32
  %44 = lshr i32 %43, 16
  store i32 %44, ptr %26, align 4
  %45 = trunc i32 %43 to i8
  %46 = getelementptr inbounds %struct.plat_sci_port, ptr %26, i32 0, i32 4
  store i8 %45, ptr %46, align 4
  %47 = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef null) #11
  %48 = icmp ne ptr %47, null
  %49 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %39, i32 30
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 2
  br label %51

51:                                               ; preds = %42, %22, %17, %10
  %52 = phi i32 [ 0, %10 ], [ %39, %42 ], [ 0, %22 ], [ 0, %17 ]
  %53 = phi ptr [ %13, %10 ], [ %26, %42 ], [ %24, %22 ], [ %18, %17 ]
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %52
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %56, ptr %57, align 8
  br label %74

58:                                               ; preds = %51, %41, %37, %25
  %59 = phi ptr [ %53, %51 ], [ inttoptr (i32 -12 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %41 ], [ inttoptr (i32 -22 to ptr), %37 ]
  %60 = ptrtoint ptr %59 to i32
  br label %262

61:                                               ; preds = %1
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #13
  br label %262

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %68
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %69, ptr %70, align 8
  %71 = icmp ugt i32 %68, 19
  br i1 %71, label %72, label %74, !prof !9

72:                                               ; preds = %66
  %73 = add i32 %68, 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %73, i32 noundef 20) #13
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %2, ptr noundef nonnull @.str.10) #13
  br label %262

74:                                               ; preds = %66, %55
  %75 = phi ptr [ %56, %55 ], [ %69, %66 ]
  %76 = phi ptr [ %53, %55 ], [ %63, %66 ]
  %77 = phi i32 [ %52, %55 ], [ %68, %66 ]
  %78 = load i32, ptr @sci_ports_in_use, align 4
  %79 = shl nuw nsw i32 1, %77
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %262

82:                                               ; preds = %74
  tail call void @mutex_lock(ptr noundef nonnull @sci_uart_registration_lock) #11
  %83 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @sci_uart_driver, i32 0, i32 7), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = tail call i32 @uart_register_driver(ptr noundef nonnull @sci_uart_driver) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  tail call void @mutex_unlock(ptr noundef nonnull @sci_uart_registration_lock) #11
  br label %262

89:                                               ; preds = %85, %82
  tail call void @mutex_unlock(ptr noundef nonnull @sci_uart_registration_lock) #11
  %90 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 2
  store ptr %76, ptr %90, align 4
  %91 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 39
  store ptr @sci_uart_ops, ptr %91, align 4
  %92 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 26
  store i8 2, ptr %92, align 2
  %93 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 41
  store i32 %77, ptr %93, align 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 48
  store i8 1, ptr %94, align 4
  %95 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %262, label %97

97:                                               ; preds = %89
  %98 = load i32, ptr %95, align 4
  %99 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 43
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.resource, ptr %95, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %95, align 4
  %103 = add i32 %101, 1
  %104 = sub i32 %103, %102
  %105 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 4
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 8
  %107 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  store i32 %107, ptr %106, align 4
  %108 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #11
  %109 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 8, i32 1
  store i32 %108, ptr %109, align 4
  %110 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 2) #11
  %111 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 8, i32 2
  store i32 %110, ptr %111, align 4
  %112 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 3) #11
  %113 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 8, i32 3
  store i32 %112, ptr %113, align 4
  %114 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 4) #11
  %115 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 8, i32 4
  store i32 %114, ptr %115, align 4
  %116 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 5) #11
  %117 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 8, i32 5
  store i32 %116, ptr %117, align 4
  %118 = load i32, ptr %106, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %262, label %120

120:                                              ; preds = %97
  %121 = load i32, ptr %109, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 %118, ptr %109, align 4
  store i32 %118, ptr %111, align 4
  store i32 %118, ptr %113, align 4
  store i32 %118, ptr %115, align 4
  store i32 %118, ptr %117, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = tail call fastcc ptr @sci_probe_regmap(ptr noundef %76) #11
  %126 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 1
  store ptr %125, ptr %126, align 8
  %127 = icmp eq ptr %125, null
  br i1 %127, label %262, label %128, !prof !9

128:                                              ; preds = %124
  %129 = load i32, ptr %76, align 4
  switch i32 %129, label %143 [
    i32 93, label %130
    i32 104, label %132
    i32 83, label %134
    i32 53, label %136
  ]

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 26
  store i32 48, ptr %131, align 8
  br label %145

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 26
  store i32 64, ptr %133, align 8
  br label %145

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 26
  store i32 32, ptr %135, align 8
  br label %145

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.plat_sci_port, ptr %76, i32 0, i32 4
  %138 = load i8, ptr %137, align 4
  %139 = icmp eq i8 %138, 11
  %140 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 26
  br i1 %139, label %141, label %142

141:                                              ; preds = %136
  store i32 1, ptr %140, align 8
  br label %145

142:                                              ; preds = %136
  store i32 8, ptr %140, align 8
  br label %145

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 26
  store i32 1, ptr %144, align 8
  br label %145

145:                                              ; preds = %143, %142, %141, %134, %132, %130
  %146 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 28
  store i32 0, ptr %146, align 8
  %147 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 29
  store i16 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.plat_sci_port, ptr %76, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = add i32 %149, -1
  %153 = shl nuw i32 1, %152
  br label %157

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.sci_port_params, ptr %125, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i32 [ %153, %151 ], [ %156, %154 ]
  %159 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 3
  store i32 %158, ptr %159, align 8
  %160 = load ptr, ptr %90, align 4
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 104
  %163 = select i1 %162, ptr @.str.48, ptr @.str.45
  %164 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.44) #11
  %165 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %169

166:                                              ; preds = %186, %182, %177, %157
  %167 = phi ptr [ %164, %157 ], [ %180, %177 ], [ %184, %182 ], [ %188, %186 ]
  %168 = ptrtoint ptr %167 to i32
  br label %192

169:                                              ; preds = %157
  %170 = icmp eq ptr %164, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %169
  %172 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.49) #11
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = ptrtoint ptr %172 to i32
  %176 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %175, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.44) #11
  br label %192

177:                                              ; preds = %171, %169
  %178 = phi ptr [ %172, %171 ], [ %164, %169 ]
  %179 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 6, i32 0
  store ptr %178, ptr %179, align 4
  %180 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull %163) #11
  %181 = icmp ugt ptr %180, inttoptr (i32 -4096 to ptr)
  br i1 %181, label %166, label %182

182:                                              ; preds = %177
  %183 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 6, i32 1
  store ptr %180, ptr %183, align 4
  %184 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.46) #11
  %185 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %166, label %186

186:                                              ; preds = %182
  %187 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 6, i32 2
  store ptr %184, ptr %187, align 4
  %188 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.47) #11
  %189 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  br i1 %189, label %166, label %190

190:                                              ; preds = %186
  %191 = getelementptr %struct.sci_port, ptr %75, i32 0, i32 6, i32 3
  store ptr %188, ptr %191, align 4
  br label %195

192:                                              ; preds = %174, %166
  %193 = phi i32 [ %168, %166 ], [ %176, %174 ]
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %262, label %195

195:                                              ; preds = %192, %190
  %196 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 45
  store ptr %2, ptr %196, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #11
  %197 = load i32, ptr %76, align 4
  %198 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 38
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.plat_sci_port, ptr %76, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = or i32 %200, 805306368
  %202 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 33
  store i32 %201, ptr %202, align 4
  %203 = load ptr, ptr %126, align 8
  %204 = getelementptr inbounds %struct.sci_port_params, ptr %203, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 23
  store i32 %205, ptr %206, align 4
  %207 = icmp eq i32 %197, 52
  br i1 %207, label %208, label %213

208:                                              ; preds = %195
  %209 = load i32, ptr %105, align 4
  %210 = icmp ugt i32 %209, 31
  %211 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 25
  %212 = select i1 %210, i8 2, i8 1
  store i8 %212, ptr %211, align 1
  br label %213

213:                                              ; preds = %208, %195
  %214 = load i32, ptr %109, align 4
  %215 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 20
  store i32 %214, ptr %215, align 4
  %216 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 21
  store i32 0, ptr %216, align 4
  %217 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 3
  store ptr @sci_serial_in, ptr %217, align 4
  %218 = getelementptr inbounds %struct.uart_port, ptr %75, i32 0, i32 4
  store ptr @sci_serial_out, ptr %218, align 4
  %219 = tail call ptr @mctrl_gpio_init(ptr noundef %75, i32 noundef 0) #11
  %220 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 5
  store ptr %219, ptr %220, align 8
  %221 = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %242, label %222

222:                                              ; preds = %213
  %223 = getelementptr inbounds %struct.sci_port, ptr %75, i32 0, i32 30
  %224 = load i8, ptr %223, align 2, !range !10
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %222
  %227 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %219, i32 noundef 0) #11
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load ptr, ptr %220, align 8
  %231 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %230, i32 noundef 4) #11
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %229, %226
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #13
  br label %262

234:                                              ; preds = %229
  %235 = load i32, ptr %202, align 8
  %236 = or i32 %235, 3145728
  store i32 %236, ptr %202, align 8
  br label %237

237:                                              ; preds = %234, %222
  %238 = tail call i32 @uart_add_one_port(ptr noundef nonnull @sci_uart_driver, ptr noundef %75) #11
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %196, align 8
  tail call void @__pm_runtime_disable(ptr noundef %241, i1 noundef zeroext true) #11
  br label %262

242:                                              ; preds = %213
  %243 = ptrtoint ptr %219 to i32
  br label %262

244:                                              ; preds = %237
  %245 = load i32, ptr %206, align 4
  %246 = icmp ugt i32 %245, 1
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #11
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247, %244
  %251 = load i32, ptr %198, align 4
  switch i32 %251, label %259 [
    i32 83, label %252
    i32 93, label %252
    i32 104, label %252
  ]

252:                                              ; preds = %250, %250, %250
  %253 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_rx_fifo_timeout) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %206, align 4
  %257 = icmp ugt i32 %256, 1
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #11
  br label %262

259:                                              ; preds = %252, %250
  %260 = load i32, ptr @sci_ports_in_use, align 4
  %261 = or i32 %260, %79
  store i32 %261, ptr @sci_ports_in_use, align 4
  br label %262

262:                                              ; preds = %259, %258, %255, %247, %242, %240, %233, %192, %124, %97, %89, %88, %74, %72, %65, %58
  %263 = phi i32 [ %60, %58 ], [ 0, %259 ], [ -22, %65 ], [ %243, %242 ], [ %248, %247 ], [ %253, %258 ], [ %253, %255 ], [ -12, %89 ], [ -6, %97 ], [ -22, %124 ], [ %193, %192 ], [ -16, %74 ], [ %86, %88 ], [ %238, %240 ], [ -22, %233 ], [ -22, %72 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 38
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 41
  %7 = load i32, ptr %6, align 8
  %8 = shl nuw i32 1, %7
  %9 = xor i32 %8, -1
  %10 = load i32, ptr @sci_ports_in_use, align 4
  %11 = and i32 %10, %9
  store i32 %11, ptr @sci_ports_in_use, align 4
  %12 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @sci_uart_driver, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  %14 = load ptr, ptr %13, align 8
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #11
  %15 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %19, ptr noundef nonnull @dev_attr_rx_fifo_trigger) #11
  br label %20

20:                                               ; preds = %18, %1
  switch i32 %5, label %23 [
    i32 104, label %21
    i32 93, label %21
    i32 83, label %21
  ]

21:                                               ; preds = %20, %20, %20
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %22, ptr noundef nonnull @dev_attr_rx_fifo_timeout) #11
  br label %23

23:                                               ; preds = %21, %20
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_reset_control_assert(ptr noundef %0) #2 {
  %2 = tail call i32 @reset_control_assert(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sci_probe_regmap(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.plat_sci_port, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr [14 x %struct.sci_port_params], ptr @sci_port_params, i32 0, i32 %6
  br label %20

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 4
  switch i32 %9, label %15 [
    i32 52, label %17
    i32 54, label %10
    i32 83, label %11
    i32 93, label %12
    i32 53, label %13
    i32 104, label %14
  ]

10:                                               ; preds = %8
  br label %17

11:                                               ; preds = %8
  br label %17

12:                                               ; preds = %8
  br label %17

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %8
  br label %17

15:                                               ; preds = %8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %20

17:                                               ; preds = %14, %13, %12, %11, %10, %8
  %18 = phi i32 [ 12, %14 ], [ 7, %13 ], [ 4, %12 ], [ 3, %11 ], [ 2, %10 ], [ 1, %8 ]
  %19 = getelementptr [14 x %struct.sci_port_params], ptr @sci_port_params, i32 0, i32 %18
  br label %20

20:                                               ; preds = %17, %15, %5
  %21 = phi ptr [ %7, %5 ], [ null, %15 ], [ %19, %17 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_serial_in(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr [20 x %struct.plat_sci_reg], ptr %4, i32 0, i32 %1
  %6 = getelementptr [20 x %struct.plat_sci_reg], ptr %4, i32 0, i32 %1, i32 1
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %32 [
    i8 8, label %8
    i8 16, label %20
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %5, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %12, %15
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %19 = zext i8 %18 to i32
  br label %33

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %5, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %24, %27
  %29 = getelementptr i8, ptr %22, i32 %28
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %31 = zext i16 %30 to i32
  br label %33

32:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 514, i32 noundef 9, ptr noundef nonnull @.str.51) #11
  br label %33

33:                                               ; preds = %32, %20, %8
  %34 = phi i32 [ %19, %8 ], [ %31, %20 ], [ 0, %32 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_serial_out(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr [20 x %struct.plat_sci_reg], ptr %5, i32 0, i32 %1
  %7 = getelementptr [20 x %struct.plat_sci_reg], ptr %5, i32 0, i32 %1, i32 1
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %31 [
    i8 8, label %9
    i8 16, label %20
  ]

9:                                                ; preds = %3
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %6, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %14, %17
  %19 = getelementptr i8, ptr %12, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %10) #11, !srcloc !16
  br label %32

20:                                               ; preds = %3
  %21 = trunc i32 %2 to i16
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %6, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %25, %28
  %30 = getelementptr i8, ptr %23, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %21) #11, !srcloc !18
  br label %32

31:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 528, i32 noundef 9, ptr noundef nonnull @.str.51) #11
  br label %32

32:                                               ; preds = %31, %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_tx_empty(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 3) #11
  %5 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr [20 x %struct.plat_sci_reg], ptr %6, i32 0, i32 9, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sci_port_params, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 1
  %14 = add i32 %13, -1
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 9) #11
  %17 = and i32 %16, %14
  br label %31

18:                                               ; preds = %1
  %19 = getelementptr [20 x %struct.plat_sci_reg], ptr %6, i32 0, i32 5, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %2, align 4
  br i1 %21, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call i32 %22(ptr noundef %0, i32 noundef 5) #11
  %25 = ashr i32 %24, 8
  br label %31

26:                                               ; preds = %18
  %27 = tail call i32 %22(ptr noundef %0, i32 noundef 3) #11
  %28 = lshr i32 %27, 7
  %29 = and i32 %28, 1
  %30 = xor i32 %29, 1
  br label %31

31:                                               ; preds = %26, %23, %10
  %32 = phi i32 [ %17, %10 ], [ %25, %23 ], [ %30, %26 ]
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 52
  %37 = select i1 %36, i32 4, i32 64
  %38 = and i32 %37, %4
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i16 %33, 0
  %41 = select i1 %39, i1 %40, i1 false
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_set_mctrl(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 32768
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr [20 x %struct.plat_sci_reg], ptr %7, i32 0, i32 4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef 4) #11
  %15 = or i32 %14, 1
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0, i32 noundef 4, i32 noundef %15) #11
  br label %18

18:                                               ; preds = %11, %5, %2
  %19 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  tail call void @mctrl_gpio_set(ptr noundef %20, i32 noundef %1) #11
  %21 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 30
  %22 = load i8, ptr %21, align 2, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %104, label %24

24:                                               ; preds = %18
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 4) #11
  %31 = and i32 %30, -9
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %0, i32 noundef 4, i32 noundef %31) #11
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %46 [
    i32 83, label %36
    i32 93, label %36
  ]

36:                                               ; preds = %27, %27
  %37 = load ptr, ptr %28, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 14) #11
  %39 = and i32 %38, 65519
  %40 = or i32 %39, 16
  %41 = load ptr, ptr %32, align 4
  tail call void %41(ptr noundef %0, i32 noundef 14, i32 noundef %40) #11
  %42 = load ptr, ptr %28, align 4
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef 13) #11
  %44 = or i32 %43, 16
  %45 = load ptr, ptr %32, align 4
  tail call void %45(ptr noundef %0, i32 noundef 13, i32 noundef %44) #11
  br label %104

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr [20 x %struct.plat_sci_reg], ptr %48, i32 0, i32 11, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %104, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %28, align 4
  %54 = tail call i32 %53(ptr noundef %0, i32 noundef 11) #11
  %55 = and i32 %54, 65471
  %56 = or i32 %55, 64
  %57 = load ptr, ptr %32, align 4
  tail call void %57(ptr noundef %0, i32 noundef 11, i32 noundef %56) #11
  br label %104

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  %60 = load i8, ptr %59, align 1, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %63 = load i32, ptr %62, align 4
  br i1 %61, label %79, label %64

64:                                               ; preds = %58
  switch i32 %63, label %72 [
    i32 83, label %65
    i32 93, label %65
  ]

65:                                               ; preds = %64, %64
  %66 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %0, i32 noundef 13) #11
  %69 = and i32 %68, -17
  %70 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %0, i32 noundef 13, i32 noundef %69) #11
  br label %72

72:                                               ; preds = %65, %64
  %73 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 %74(ptr noundef %0, i32 noundef 4) #11
  %76 = or i32 %75, 8
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %0, i32 noundef 4, i32 noundef %76) #11
  br label %104

79:                                               ; preds = %58
  switch i32 %63, label %91 [
    i32 83, label %80
    i32 93, label %80
  ]

80:                                               ; preds = %79, %79
  %81 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %0, i32 noundef 14) #11
  %84 = and i32 %83, 65519
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %0, i32 noundef 14, i32 noundef %84) #11
  %87 = load ptr, ptr %81, align 4
  %88 = tail call i32 %87(ptr noundef %0, i32 noundef 13) #11
  %89 = or i32 %88, 16
  %90 = load ptr, ptr %85, align 4
  tail call void %90(ptr noundef %0, i32 noundef 13, i32 noundef %89) #11
  br label %104

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr [20 x %struct.plat_sci_reg], ptr %93, i32 0, i32 11, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 %99(ptr noundef %0, i32 noundef 11) #11
  %101 = and i32 %100, 65471
  %102 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %0, i32 noundef 11, i32 noundef %101) #11
  br label %104

104:                                              ; preds = %97, %91, %80, %72, %52, %46, %36, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_get_mctrl(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %5 = call i32 @mctrl_gpio_get(ptr noundef %4, ptr noundef nonnull %2) #11
  %6 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  %7 = load i8, ptr %6, align 1, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 83, label %18
    i32 93, label %18
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr [20 x %struct.plat_sci_reg], ptr %14, i32 0, i32 11, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12, %9, %9
  %19 = phi i32 [ 14, %9 ], [ 14, %9 ], [ 11, %12 ]
  %20 = phi i32 [ 8, %9 ], [ 8, %9 ], [ 16, %12 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef %19) #11
  %24 = and i32 %23, %20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18, %12
  %27 = load i32, ptr %2, align 4
  %28 = or i32 %27, 32
  store i32 %28, ptr %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %4, i32 noundef 0) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, ptr %2, align 4
  %34 = or i32 %33, 32
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %32, %29, %26, %18
  %36 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %4, i32 noundef 1) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr %2, align 4
  %40 = or i32 %39, 256
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = call ptr @mctrl_gpio_to_gpiod(ptr noundef %4, i32 noundef 2) #11
  %43 = icmp eq ptr %42, null
  %44 = load i32, ptr %2, align 4
  %45 = or i32 %44, 64
  %46 = select i1 %43, i32 %45, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_stop_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 2) #11
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 83, label %7
    i32 93, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = and i32 %4, 32767
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = and i32 %10, 65407
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i32 noundef 2, i32 noundef %11) #11
  %14 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 47
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef nonnull %15) #11
  br label %28

28:                                               ; preds = %26, %21
  store i32 -22, ptr %18, align 4
  br label %29

29:                                               ; preds = %28, %17, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_start_tx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %19 [
    i32 83, label %4
    i32 93, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 2) #11
  %8 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = and i32 %7, 32767
  %12 = or i32 %11, 32768
  %13 = select i1 %10, i32 %11, i32 %12
  %14 = and i32 %7, 65535
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 2, i32 noundef %13) #11
  br label %19

19:                                               ; preds = %16, %4, %1
  %20 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  store i32 0, ptr %32, align 4
  %36 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %36) #11
  %39 = load ptr, ptr %20, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35, %31, %23
  %42 = load i32, ptr %2, align 4
  switch i32 %42, label %51 [
    i32 83, label %43
    i32 93, label %43
  ]

43:                                               ; preds = %41, %41, %35, %19
  %44 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %0, i32 noundef 2) #11
  %47 = and i32 %46, 65407
  %48 = or i32 %47, 128
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %0, i32 noundef 2, i32 noundef %48) #11
  br label %51

51:                                               ; preds = %43, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_stop_rx(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 2) #11
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 83, label %7
    i32 93, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = and i32 %4, 49151
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.plat_sci_port, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = xor i32 %15, 65471
  %17 = and i32 %16, %10
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, i32 noundef 2, i32 noundef %17) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_enable_ms(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  tail call void @mctrl_gpio_enable_ms(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_break_ctl(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr [20 x %struct.plat_sci_reg], ptr %4, i32 0, i32 11, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 11) #11
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef 2) #11
  %15 = icmp eq i32 %1, -1
  %16 = and i32 %12, 65532
  %17 = and i32 %14, 65503
  %18 = or i32 %14, 32
  %19 = select i1 %15, i32 2, i32 1
  %20 = or i32 %16, %19
  %21 = select i1 %15, i32 %17, i32 %18
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0, i32 noundef 11, i32 noundef %20) #11
  %24 = and i32 %21, 65535
  %25 = load ptr, ptr %22, align 4
  tail call void %25(ptr noundef %0, i32 noundef 2, i32 noundef %24) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %9) #11
  br label %26

26:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_startup(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 9
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %174, label %15

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %174, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  store i32 -22, ptr %22, align 4
  %23 = load ptr, ptr %18, align 8
  %24 = tail call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %174, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #11
  %27 = load ptr, ptr %16, align 4
  %28 = tail call ptr @dma_request_chan(ptr noundef %27, ptr noundef nonnull @.str.15) #11
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %30 = icmp eq ptr %28, null
  %31 = or i1 %29, %30
  br i1 %31, label %58, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %33, i8 0, i32 44, i1 false) #11
  store i32 1, ptr %3, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr [20 x %struct.plat_sci_reg], ptr %37, i32 0, i32 6
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %40, %43
  %45 = add i32 %44, %35
  %46 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 1, ptr %47, align 4
  %48 = load ptr, ptr %28, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 44
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = call i32 %50(ptr noundef nonnull %28, ptr noundef nonnull %3) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %32
  %56 = phi i32 [ %53, %52 ], [ -38, %32 ]
  %57 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.17, i32 noundef %56) #13
  call void @dma_release_channel(ptr noundef nonnull %28) #11
  br label %58

58:                                               ; preds = %55, %26
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  br label %102

59:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #11
  %60 = load ptr, ptr %28, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.uart_state, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = call zeroext i1 @is_vmalloc_addr(ptr noundef %66) #11
  %68 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %80, !prof !9

71:                                               ; preds = %59
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %72 = call ptr @dev_driver_string(ptr noundef %62) #11
  %73 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %62, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ %74, %71 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %72, ptr noundef %79) #11
  br label %80

80:                                               ; preds = %78, %59
  br i1 %67, label %81, label %83

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 17
  store i32 -1, ptr %82, align 4
  br label %93

83:                                               ; preds = %80
  %84 = load ptr, ptr @mem_map, align 4
  %85 = ptrtoint ptr %66 to i32
  %86 = add i32 %85, 1073741824
  %87 = lshr i32 %86, 12
  %88 = getelementptr %struct.page, ptr %84, i32 %87
  %89 = and i32 %85, 4095
  %90 = call i32 @dma_map_page_attrs(ptr noundef %62, ptr noundef %88, i32 noundef %89, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %91 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 17
  store i32 %90, ptr %91, align 4
  %92 = icmp eq i32 %90, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %83, %81
  %94 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.13) #13
  call void @dma_release_channel(ptr noundef nonnull %28) #11
  br label %102

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22
  store i32 -32, ptr %96, align 8
  %97 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22, i32 1
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22, i32 1, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22, i32 2
  store ptr @sci_dma_tx_work_fn, ptr %99, align 4
  %100 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  store ptr %28, ptr %100, align 4
  %101 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 12
  store ptr %28, ptr %101, align 4
  br label %102

102:                                              ; preds = %95, %93, %58
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #11
  %103 = load ptr, ptr %16, align 4
  %104 = call ptr @dma_request_chan(ptr noundef %103, ptr noundef nonnull @.str.16) #11
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  %106 = icmp eq ptr %104, null
  %107 = or i1 %105, %106
  br i1 %107, label %134, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds i8, ptr %2, i32 4
  %110 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %110, i8 0, i32 40, i1 false) #11
  store i32 2, ptr %2, align 4
  %111 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr [20 x %struct.plat_sci_reg], ptr %114, i32 0, i32 7
  %116 = load i8, ptr %115, align 2
  %117 = zext i8 %116 to i32
  %118 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 25
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %117, %120
  %122 = add i32 %121, %112
  store i32 %122, ptr %109, align 4
  %123 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 1, ptr %123, align 4
  %124 = load ptr, ptr %104, align 4
  %125 = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 44
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %108
  %129 = call i32 %126(ptr noundef nonnull %104, ptr noundef nonnull %2) #11
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128, %108
  %132 = phi i32 [ %129, %128 ], [ -38, %108 ]
  %133 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.17, i32 noundef %132) #13
  call void @dma_release_channel(ptr noundef nonnull %104) #11
  br label %134

134:                                              ; preds = %131, %102
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  br label %174

135:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !19
  %136 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @llvm.umax.i32(i32 %137, i32 16) #11
  %139 = shl i32 %138, 1
  %140 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 21
  store i32 %139, ptr %140, align 4
  %141 = load ptr, ptr %104, align 4
  %142 = getelementptr inbounds %struct.dma_device, ptr %141, i32 0, i32 15
  %143 = load ptr, ptr %142, align 4
  %144 = shl i32 %138, 2
  %145 = call ptr @dma_alloc_attrs(ptr noundef %143, i32 noundef %144, ptr noundef nonnull %4, i32 noundef 3264, i32 noundef 0) #11
  %146 = icmp eq ptr %145, null
  br i1 %146, label %169, label %147

147:                                              ; preds = %135
  %148 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 0
  call void @sg_init_table(ptr noundef %148, i32 noundef 1) #11
  %149 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 20, i32 0
  store ptr %145, ptr %149, align 4
  %150 = load i32, ptr %4, align 4
  %151 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 0, i32 3
  store i32 %150, ptr %151, align 4
  %152 = load i32, ptr %140, align 4
  %153 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 0, i32 4
  store i32 %152, ptr %153, align 4
  %154 = getelementptr i8, ptr %145, i32 %152
  %155 = add i32 %152, %150
  store i32 %155, ptr %4, align 4
  %156 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 1
  call void @sg_init_table(ptr noundef %156, i32 noundef 1) #11
  %157 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 20, i32 1
  store ptr %154, ptr %157, align 4
  %158 = load i32, ptr %4, align 4
  %159 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 1, i32 3
  store i32 %158, ptr %159, align 4
  %160 = load i32, ptr %140, align 4
  %161 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 1, i32 4
  store i32 %160, ptr %161, align 4
  %162 = add i32 %160, %158
  store i32 %162, ptr %4, align 4
  %163 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 23
  call void @hrtimer_init(ptr noundef %163, i32 noundef 1, i32 noundef 1) #11
  %164 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 23, i32 2
  store ptr @sci_dma_rx_timer_fn, ptr %164, align 8
  %165 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 11
  store ptr %104, ptr %165, align 8
  %166 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 13
  store ptr %104, ptr %166, align 8
  %167 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %168 = load i32, ptr %167, align 4
  switch i32 %168, label %173 [
    i32 83, label %171
    i32 93, label %171
  ]

169:                                              ; preds = %135
  %170 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %170, ptr noundef nonnull @.str.14) #13
  call void @dma_release_channel(ptr noundef nonnull %104) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %174

171:                                              ; preds = %147, %147
  %172 = call fastcc i32 @sci_dma_rx_submit(ptr noundef %0, i1 noundef zeroext false) #11
  br label %173

173:                                              ; preds = %171, %147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %174

174:                                              ; preds = %173, %169, %134, %21, %15, %8
  %175 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 8
  %176 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 1
  %177 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %178 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %179 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 21
  br label %180

180:                                              ; preds = %239, %174
  %181 = phi i32 [ 0, %174 ], [ %242, %239 ]
  %182 = phi i32 [ 0, %174 ], [ %241, %239 ]
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %182
  %186 = load i32, ptr %185, align 4
  %187 = add nuw nsw i32 %182, 1
  br label %188

188:                                              ; preds = %188, %184
  %189 = phi i32 [ 0, %184 ], [ %194, %188 ]
  %190 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %189
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %186
  %193 = select i1 %192, i32 %187, i32 %189
  %194 = add i32 %193, 1
  %195 = icmp slt i32 %194, %182
  br i1 %195, label %188, label %196

196:                                              ; preds = %188, %180
  %197 = phi i32 [ 0, %180 ], [ %194, %188 ]
  %198 = icmp sgt i32 %197, %182
  br i1 %198, label %239, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %175, align 4
  %201 = load i32, ptr %176, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = icmp ne i32 %200, 0
  %205 = icmp slt i32 %201, 0
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %207, label %209

207:                                              ; preds = %203, %199
  %208 = load i32, ptr %177, align 4
  br label %213

209:                                              ; preds = %203
  %210 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %182
  %211 = load i32, ptr %210, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %239, label %213, !prof !9

213:                                              ; preds = %209, %207
  %214 = phi i32 [ 6, %207 ], [ %182, %209 ]
  %215 = phi i32 [ %208, %207 ], [ %211, %209 ]
  %216 = getelementptr %struct.sci_irq_desc, ptr @sci_irq_desc, i32 %214
  %217 = load ptr, ptr %178, align 4
  %218 = getelementptr inbounds %struct.device, ptr %217, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load ptr, ptr %217, align 4
  br label %223

223:                                              ; preds = %221, %213
  %224 = phi ptr [ %222, %221 ], [ %219, %213 ]
  %225 = load ptr, ptr %216, align 4
  %226 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef %224, ptr noundef %225) #11
  %227 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 9, i32 %181
  store ptr %226, ptr %227, align 4
  %228 = icmp eq ptr %226, null
  br i1 %228, label %251, label %229

229:                                              ; preds = %223
  %230 = getelementptr %struct.sci_irq_desc, ptr @sci_irq_desc, i32 %214, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = load i32, ptr %179, align 4
  %233 = call i32 @request_threaded_irq(i32 noundef %215, ptr noundef %231, ptr noundef null, i32 noundef %232, ptr noundef nonnull %226, ptr noundef %0) #11
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235, !prof !20

235:                                              ; preds = %229
  %236 = load ptr, ptr %178, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.24, ptr noundef %225) #13
  %237 = add i32 %214, -1
  %238 = icmp sgt i32 %237, -1
  br i1 %238, label %244, label %251

239:                                              ; preds = %229, %209, %196
  %240 = phi i32 [ %214, %229 ], [ %182, %209 ], [ %182, %196 ]
  %241 = add i32 %240, 1
  %242 = add i32 %181, 1
  %243 = icmp slt i32 %241, 6
  br i1 %243, label %180, label %264

244:                                              ; preds = %244, %235
  %245 = phi i32 [ %249, %244 ], [ %237, %235 ]
  %246 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %245
  %247 = load i32, ptr %246, align 4
  %248 = call ptr @free_irq(i32 noundef %247, ptr noundef %0) #11
  %249 = add nsw i32 %245, -1
  %250 = icmp eq i32 %245, 0
  br i1 %250, label %251, label %244

251:                                              ; preds = %244, %235, %223
  %252 = phi i32 [ %233, %235 ], [ %233, %244 ], [ -12, %223 ]
  %253 = add i32 %181, -1
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %261

255:                                              ; preds = %255, %251
  %256 = phi i32 [ %259, %255 ], [ %253, %251 ]
  %257 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 9, i32 %256
  %258 = load ptr, ptr %257, align 4
  call void @kfree(ptr noundef %258) #11
  %259 = add nsw i32 %256, -1
  %260 = icmp eq i32 %256, 0
  br i1 %260, label %261, label %255

261:                                              ; preds = %255, %251
  %262 = icmp slt i32 %252, 0
  br i1 %262, label %263, label %264, !prof !9

263:                                              ; preds = %261
  call fastcc void @sci_free_dma(ptr noundef %0)
  br label %264

264:                                              ; preds = %263, %261, %239
  %265 = phi i32 [ %252, %263 ], [ 0, %261 ], [ 0, %239 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @mctrl_gpio_disable_ms(ptr noundef %4) #11
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 2) #11
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %13 [
    i32 83, label %11
    i32 93, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = and i32 %8, 49151
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ %8, %1 ]
  %15 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.plat_sci_port, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = xor i32 %19, 65471
  %21 = and i32 %20, %14
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0, i32 noundef 2, i32 noundef %21) #11
  %24 = load ptr, ptr %6, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef 2) #11
  %26 = load i32, ptr %9, align 4
  switch i32 %26, label %29 [
    i32 83, label %27
    i32 93, label %27
  ]

27:                                               ; preds = %13, %13
  %28 = and i32 %25, 32767
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i32 [ %28, %27 ], [ %25, %13 ]
  %31 = and i32 %30, 65407
  %32 = load ptr, ptr %22, align 4
  tail call void %32(ptr noundef %0, i32 noundef 2, i32 noundef %31) #11
  %33 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %43(ptr noundef nonnull %34) #11
  br label %47

47:                                               ; preds = %45, %40
  store i32 -22, ptr %37, align 4
  br label %48

48:                                               ; preds = %47, %36, %29
  %49 = load ptr, ptr %6, align 4
  %50 = tail call i32 %49(ptr noundef %0, i32 noundef 2) #11
  %51 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 29
  %52 = load i16, ptr %51, align 4
  %53 = or i16 %52, 3
  %54 = zext i16 %53 to i32
  %55 = and i32 %50, %54
  %56 = load ptr, ptr %22, align 4
  tail call void %56(ptr noundef %0, i32 noundef 2, i32 noundef %55) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #11
  %57 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 13
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 23
  %62 = tail call i32 @hrtimer_cancel(ptr noundef %61) #11
  br label %63

63:                                               ; preds = %60, %48
  %64 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 26
  %65 = load i32, ptr %64, align 8
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 28
  %69 = load i32, ptr %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 27
  %73 = tail call i32 @del_timer_sync(ptr noundef %72) #11
  br label %74

74:                                               ; preds = %71, %67, %63
  %75 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 8
  %76 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 1
  br label %77

77:                                               ; preds = %112, %74
  %78 = phi i32 [ 0, %74 ], [ %113, %112 ]
  %79 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84, !prof !9

82:                                               ; preds = %77
  %83 = add nuw nsw i32 %78, 1
  br label %114

84:                                               ; preds = %77
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %84
  %87 = add nuw nsw i32 %78, 1
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ 0, %86 ], [ %94, %88 ]
  %90 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %80
  %93 = select i1 %92, i32 %87, i32 %89
  %94 = add i32 %93, 1
  %95 = icmp slt i32 %94, %78
  br i1 %95, label %88, label %96

96:                                               ; preds = %88
  %97 = icmp sgt i32 %94, %78
  br i1 %97, label %114, label %98

98:                                               ; preds = %96, %84
  %99 = tail call ptr @free_irq(i32 noundef %80, ptr noundef %0) #11
  %100 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 9, i32 %78
  %101 = load ptr, ptr %100, align 4
  tail call void @kfree(ptr noundef %101) #11
  %102 = load i32, ptr %75, align 4
  %103 = load i32, ptr %76, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %98
  %106 = icmp ne i32 %102, 0
  %107 = icmp slt i32 %103, 0
  %108 = select i1 %106, i1 %107, i1 false
  %109 = add nuw nsw i32 %78, 1
  %110 = icmp eq i32 %109, 6
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %114, %105
  %113 = phi i32 [ %115, %114 ], [ %109, %105 ]
  br label %77

114:                                              ; preds = %96, %82
  %115 = phi i32 [ %83, %82 ], [ %87, %96 ]
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %117, label %112

117:                                              ; preds = %114, %105, %98
  tail call fastcc void @sci_free_dma(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_flush_buffer(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 18
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef nonnull %4) #11
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  store i32 -22, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 48
  %7 = icmp eq i32 %6, 32
  %8 = select i1 %7, i32 64, i32 0
  %9 = lshr i32 %5, 3
  %10 = and i32 %9, 32
  %11 = and i32 %5, 512
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %10, i32 48
  %14 = and i32 %9, 8
  %15 = or i32 %13, %14
  %16 = or i32 %15, %8
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %3
  %21 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 %24)
  %26 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %28, i32 %30)
  %32 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 true), !range !8
  %35 = add nuw nsw i32 %34, 1
  %36 = udiv i32 %31, %35
  %37 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %36) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %384, label %41

39:                                               ; preds = %3
  %40 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 115200) #11
  br label %384

41:                                               ; preds = %20
  %42 = load i32, ptr %23, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %87, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %47 [
    i32 83, label %87
    i32 93, label %87
  ]

47:                                               ; preds = %44
  %48 = icmp ne i32 %46, 104
  %49 = zext i1 %48 to i32
  %50 = shl i32 %42, %49
  %51 = load i32, ptr %32, align 8
  %52 = icmp eq i32 %51, 0
  %53 = tail call i32 @llvm.ctlz.i32(i32 %51, i1 false) #11, !range !8
  %54 = sub nuw nsw i32 32, %53
  %55 = select i1 %52, i32 0, i32 %54
  %56 = tail call i32 @llvm.cttz.i32(i32 %51, i1 true) #11, !range !8
  %57 = add nuw nsw i32 %56, 1
  %58 = select i1 %52, i32 0, i32 %57
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %87, label %60

60:                                               ; preds = %78, %47
  %61 = phi i32 [ %79, %78 ], [ 15, %47 ]
  %62 = phi i32 [ %80, %78 ], [ 2147483647, %47 ]
  %63 = phi i32 [ %64, %78 ], [ %55, %47 ]
  %64 = add i32 %63, -1
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %51
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %60
  %69 = lshr i32 %63, 1
  %70 = add i32 %69, %50
  %71 = udiv i32 %70, %63
  %72 = sub i32 %71, %37
  %73 = tail call i32 @llvm.abs.i32(i32 %72, i1 false) #11
  %74 = tail call i32 @llvm.abs.i32(i32 %62, i1 false) #11
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = icmp eq i32 %72, 0
  br i1 %77, label %376, label %78

78:                                               ; preds = %76, %68, %60
  %79 = phi i32 [ %61, %60 ], [ %61, %68 ], [ %64, %76 ]
  %80 = phi i32 [ %62, %60 ], [ %62, %68 ], [ %72, %76 ]
  %81 = icmp ult i32 %64, %58
  br i1 %81, label %82, label %60

82:                                               ; preds = %78
  %83 = tail call i32 @llvm.abs.i32(i32 %80, i1 false)
  %84 = icmp eq i32 %83, 2147483647
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %376, label %87

87:                                               ; preds = %85, %82, %47, %44, %44, %41
  %88 = phi i32 [ 15, %41 ], [ %79, %82 ], [ %79, %85 ], [ 15, %44 ], [ 15, %44 ], [ 15, %47 ]
  %89 = phi i32 [ -1, %41 ], [ -1, %82 ], [ 1, %85 ], [ -1, %44 ], [ -1, %44 ], [ -1, %47 ]
  %90 = phi i32 [ 2147483647, %41 ], [ 2147483647, %82 ], [ %80, %85 ], [ 2147483647, %44 ], [ 2147483647, %44 ], [ 2147483647, %47 ]
  %91 = phi i32 [ 0, %41 ], [ 0, %82 ], [ 32768, %85 ], [ 0, %44 ], [ 0, %44 ], [ 0, %47 ]
  %92 = phi i32 [ 15, %41 ], [ 15, %82 ], [ %79, %85 ], [ 15, %44 ], [ 15, %44 ], [ 15, %47 ]
  %93 = phi i32 [ 0, %41 ], [ 0, %82 ], [ 2, %85 ], [ 0, %44 ], [ 0, %44 ], [ 0, %47 ]
  %94 = load i32, ptr %29, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %157, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr [20 x %struct.plat_sci_reg], ptr %98, i32 0, i32 15, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %157, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %104 = load i32, ptr %103, align 4
  %105 = icmp ne i32 %104, 104
  %106 = zext i1 %105 to i32
  %107 = shl i32 %94, %106
  %108 = load i32, ptr %32, align 8
  %109 = icmp eq i32 %108, 0
  %110 = tail call i32 @llvm.ctlz.i32(i32 %108, i1 false) #11, !range !8
  %111 = sub nuw nsw i32 32, %110
  %112 = select i1 %109, i32 0, i32 %111
  %113 = tail call i32 @llvm.cttz.i32(i32 %108, i1 true) #11, !range !8
  %114 = add nuw nsw i32 %113, 1
  %115 = select i1 %109, i32 0, i32 %114
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %157, label %117

117:                                              ; preds = %143, %102
  %118 = phi i32 [ %144, %143 ], [ %88, %102 ]
  %119 = phi i32 [ %145, %143 ], [ 0, %102 ]
  %120 = phi i32 [ %146, %143 ], [ 2147483647, %102 ]
  %121 = phi i32 [ %122, %143 ], [ %112, %102 ]
  %122 = add i32 %121, -1
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %108
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %117
  %127 = mul i32 %121, %37
  %128 = lshr i32 %127, 1
  %129 = add i32 %128, %107
  %130 = udiv i32 %129, %127
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 1) #11
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 65535) #11
  %133 = mul i32 %132, %121
  %134 = lshr i32 %133, 1
  %135 = add i32 %134, %107
  %136 = udiv i32 %135, %133
  %137 = sub i32 %136, %37
  %138 = tail call i32 @llvm.abs.i32(i32 %137, i1 false) #11
  %139 = tail call i32 @llvm.abs.i32(i32 %120, i1 false) #11
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = icmp eq i32 %137, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %141, %126, %117
  %144 = phi i32 [ %118, %117 ], [ %118, %126 ], [ %122, %141 ]
  %145 = phi i32 [ %119, %117 ], [ %119, %126 ], [ %132, %141 ]
  %146 = phi i32 [ %120, %117 ], [ %120, %126 ], [ %137, %141 ]
  %147 = icmp ult i32 %122, %115
  br i1 %147, label %148, label %117

148:                                              ; preds = %143
  %149 = tail call i32 @llvm.abs.i32(i32 %146, i1 false)
  %150 = tail call i32 @llvm.abs.i32(i32 %90, i1 false)
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %155, label %157

152:                                              ; preds = %141
  %153 = tail call i32 @llvm.abs.i32(i32 %90, i1 false)
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %376, label %157

155:                                              ; preds = %148
  %156 = icmp eq i32 %146, 0
  br i1 %156, label %376, label %157

157:                                              ; preds = %155, %152, %148, %102, %96, %87
  %158 = phi i32 [ %88, %87 ], [ %88, %96 ], [ %144, %155 ], [ %144, %148 ], [ %88, %102 ], [ %122, %152 ]
  %159 = phi i32 [ 0, %87 ], [ 0, %96 ], [ %145, %155 ], [ %145, %148 ], [ 0, %102 ], [ %132, %152 ]
  %160 = phi i32 [ %89, %87 ], [ %89, %96 ], [ 3, %155 ], [ %89, %148 ], [ %89, %102 ], [ %89, %152 ]
  %161 = phi i32 [ %90, %87 ], [ %90, %96 ], [ %146, %155 ], [ %90, %148 ], [ %90, %102 ], [ %90, %152 ]
  %162 = phi i32 [ %91, %87 ], [ %91, %96 ], [ 0, %155 ], [ %91, %148 ], [ %91, %102 ], [ %91, %152 ]
  %163 = phi i32 [ 0, %87 ], [ 0, %96 ], [ %145, %155 ], [ 0, %148 ], [ 0, %102 ], [ 0, %152 ]
  %164 = phi i32 [ %92, %87 ], [ %92, %96 ], [ %144, %155 ], [ %92, %148 ], [ %92, %102 ], [ %92, %152 ]
  %165 = phi i32 [ %93, %87 ], [ %93, %96 ], [ 2, %155 ], [ %93, %148 ], [ %93, %102 ], [ %93, %152 ]
  %166 = load i32, ptr %26, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %229, label %168

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr [20 x %struct.plat_sci_reg], ptr %170, i32 0, i32 15, i32 1
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %229, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %176 = load i32, ptr %175, align 4
  %177 = icmp ne i32 %176, 104
  %178 = zext i1 %177 to i32
  %179 = shl i32 %166, %178
  %180 = load i32, ptr %32, align 8
  %181 = icmp eq i32 %180, 0
  %182 = tail call i32 @llvm.ctlz.i32(i32 %180, i1 false) #11, !range !8
  %183 = sub nuw nsw i32 32, %182
  %184 = select i1 %181, i32 0, i32 %183
  %185 = tail call i32 @llvm.cttz.i32(i32 %180, i1 true) #11, !range !8
  %186 = add nuw nsw i32 %185, 1
  %187 = select i1 %181, i32 0, i32 %186
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %229, label %189

189:                                              ; preds = %215, %174
  %190 = phi i32 [ %216, %215 ], [ %158, %174 ]
  %191 = phi i32 [ %217, %215 ], [ %159, %174 ]
  %192 = phi i32 [ %218, %215 ], [ 2147483647, %174 ]
  %193 = phi i32 [ %194, %215 ], [ %184, %174 ]
  %194 = add i32 %193, -1
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %180
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %189
  %199 = mul i32 %193, %37
  %200 = lshr i32 %199, 1
  %201 = add i32 %200, %179
  %202 = udiv i32 %201, %199
  %203 = tail call i32 @llvm.umax.i32(i32 %202, i32 1) #11
  %204 = tail call i32 @llvm.umin.i32(i32 %203, i32 65535) #11
  %205 = mul i32 %204, %193
  %206 = lshr i32 %205, 1
  %207 = add i32 %206, %179
  %208 = udiv i32 %207, %205
  %209 = sub i32 %208, %37
  %210 = tail call i32 @llvm.abs.i32(i32 %209, i1 false) #11
  %211 = tail call i32 @llvm.abs.i32(i32 %192, i1 false) #11
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %198
  %214 = icmp eq i32 %209, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %213, %198, %189
  %216 = phi i32 [ %190, %189 ], [ %190, %198 ], [ %194, %213 ]
  %217 = phi i32 [ %191, %189 ], [ %191, %198 ], [ %204, %213 ]
  %218 = phi i32 [ %192, %189 ], [ %192, %198 ], [ %209, %213 ]
  %219 = icmp ult i32 %194, %187
  br i1 %219, label %220, label %189

220:                                              ; preds = %215
  %221 = tail call i32 @llvm.abs.i32(i32 %218, i1 false)
  %222 = tail call i32 @llvm.abs.i32(i32 %161, i1 false)
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %227, label %229

224:                                              ; preds = %213
  %225 = tail call i32 @llvm.abs.i32(i32 %161, i1 false)
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %376, label %229

227:                                              ; preds = %220
  %228 = icmp eq i32 %218, 0
  br i1 %228, label %376, label %229

229:                                              ; preds = %227, %224, %220, %174, %168, %157
  %230 = phi i32 [ %158, %157 ], [ %158, %168 ], [ %216, %227 ], [ %216, %220 ], [ %158, %174 ], [ %194, %224 ]
  %231 = phi i32 [ %160, %157 ], [ %160, %168 ], [ 2, %227 ], [ %160, %220 ], [ %160, %174 ], [ %160, %224 ]
  %232 = phi i32 [ %161, %157 ], [ %161, %168 ], [ %218, %227 ], [ %161, %220 ], [ %161, %174 ], [ %161, %224 ]
  %233 = phi i32 [ %162, %157 ], [ %162, %168 ], [ 16384, %227 ], [ %162, %220 ], [ %162, %174 ], [ %162, %224 ]
  %234 = phi i32 [ %163, %157 ], [ %163, %168 ], [ %217, %227 ], [ %163, %220 ], [ %163, %174 ], [ %163, %224 ]
  %235 = phi i32 [ %164, %157 ], [ %164, %168 ], [ %216, %227 ], [ %164, %220 ], [ %164, %174 ], [ %164, %224 ]
  %236 = phi i32 [ %165, %157 ], [ %165, %168 ], [ 2, %227 ], [ %165, %220 ], [ %165, %174 ], [ %165, %224 ]
  %237 = load i32, ptr %21, align 4
  %238 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %239 = load i32, ptr %238, align 4
  %240 = icmp ne i32 %239, 104
  %241 = zext i1 %240 to i32
  %242 = shl i32 %237, %241
  %243 = load i32, ptr %32, align 8
  %244 = icmp eq i32 %243, 0
  %245 = tail call i32 @llvm.ctlz.i32(i32 %243, i1 false) #11, !range !8
  %246 = sub nuw nsw i32 32, %245
  %247 = select i1 %244, i32 0, i32 %246
  %248 = tail call i32 @llvm.cttz.i32(i32 %243, i1 true) #11, !range !8
  %249 = add nuw nsw i32 %248, 1
  %250 = select i1 %244, i32 0, i32 %249
  %251 = icmp ult i32 %247, %250
  br i1 %251, label %368, label %252

252:                                              ; preds = %362, %229
  %253 = phi i32 [ %363, %362 ], [ 255, %229 ]
  %254 = phi i32 [ %364, %362 ], [ 0, %229 ]
  %255 = phi i32 [ %365, %362 ], [ %230, %229 ]
  %256 = phi i32 [ %258, %362 ], [ %247, %229 ]
  %257 = phi i32 [ %366, %362 ], [ 2147483647, %229 ]
  %258 = add i32 %256, -1
  %259 = shl nuw i32 1, %258
  %260 = and i32 %259, %243
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %362, label %262

262:                                              ; preds = %252
  %263 = shl i32 %256, 1
  %264 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %263, i32 %37) #11
  %265 = extractvalue { i32, i1 } %264, 1
  br i1 %265, label %362, label %266

266:                                              ; preds = %262
  %267 = mul i32 %263, %37
  %268 = lshr exact i32 %267, 1
  %269 = add i32 %268, %242
  %270 = udiv i32 %269, %267
  %271 = tail call i32 @llvm.umax.i32(i32 %270, i32 1) #11
  %272 = tail call i32 @llvm.umin.i32(i32 %271, i32 256) #11
  %273 = mul i32 %272, %263
  %274 = lshr exact i32 %273, 1
  %275 = add i32 %274, %242
  %276 = udiv i32 %275, %273
  %277 = sub i32 %276, %37
  %278 = tail call i32 @llvm.abs.i32(i32 %277, i1 false) #11
  %279 = tail call i32 @llvm.abs.i32(i32 %257, i1 false) #11
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %266
  %282 = add nsw i32 %272, -1
  %283 = icmp eq i32 %277, 0
  br i1 %283, label %368, label %284

284:                                              ; preds = %281, %266
  %285 = phi i32 [ %282, %281 ], [ %253, %266 ]
  %286 = phi i32 [ 0, %281 ], [ %254, %266 ]
  %287 = phi i32 [ %258, %281 ], [ %255, %266 ]
  %288 = phi i32 [ %277, %281 ], [ %257, %266 ]
  %289 = shl i32 %256, 3
  %290 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %289, i32 %37) #11
  %291 = extractvalue { i32, i1 } %290, 1
  br i1 %291, label %362, label %292

292:                                              ; preds = %284
  %293 = mul i32 %289, %37
  %294 = lshr exact i32 %293, 1
  %295 = add i32 %294, %242
  %296 = udiv i32 %295, %293
  %297 = tail call i32 @llvm.umax.i32(i32 %296, i32 1) #11
  %298 = tail call i32 @llvm.umin.i32(i32 %297, i32 256) #11
  %299 = mul i32 %298, %289
  %300 = lshr exact i32 %299, 1
  %301 = add i32 %300, %242
  %302 = udiv i32 %301, %299
  %303 = sub i32 %302, %37
  %304 = tail call i32 @llvm.abs.i32(i32 %303, i1 false) #11
  %305 = tail call i32 @llvm.abs.i32(i32 %288, i1 false) #11
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %292
  %308 = add nsw i32 %298, -1
  %309 = icmp eq i32 %303, 0
  br i1 %309, label %368, label %310

310:                                              ; preds = %307, %292
  %311 = phi i32 [ %308, %307 ], [ %285, %292 ]
  %312 = phi i32 [ 1, %307 ], [ %286, %292 ]
  %313 = phi i32 [ %258, %307 ], [ %287, %292 ]
  %314 = phi i32 [ %303, %307 ], [ %288, %292 ]
  %315 = shl i32 %256, 5
  %316 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %315, i32 %37) #11
  %317 = extractvalue { i32, i1 } %316, 1
  br i1 %317, label %362, label %318

318:                                              ; preds = %310
  %319 = mul i32 %315, %37
  %320 = lshr exact i32 %319, 1
  %321 = add i32 %320, %242
  %322 = udiv i32 %321, %319
  %323 = tail call i32 @llvm.umax.i32(i32 %322, i32 1) #11
  %324 = tail call i32 @llvm.umin.i32(i32 %323, i32 256) #11
  %325 = mul i32 %324, %315
  %326 = lshr exact i32 %325, 1
  %327 = add i32 %326, %242
  %328 = udiv i32 %327, %325
  %329 = sub i32 %328, %37
  %330 = tail call i32 @llvm.abs.i32(i32 %329, i1 false) #11
  %331 = tail call i32 @llvm.abs.i32(i32 %314, i1 false) #11
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %318
  %334 = add nsw i32 %324, -1
  %335 = icmp eq i32 %329, 0
  br i1 %335, label %368, label %336

336:                                              ; preds = %333, %318
  %337 = phi i32 [ %334, %333 ], [ %311, %318 ]
  %338 = phi i32 [ 2, %333 ], [ %312, %318 ]
  %339 = phi i32 [ %258, %333 ], [ %313, %318 ]
  %340 = phi i32 [ %329, %333 ], [ %314, %318 ]
  %341 = shl i32 %256, 7
  %342 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %341, i32 %37) #11
  %343 = extractvalue { i32, i1 } %342, 1
  br i1 %343, label %362, label %344

344:                                              ; preds = %336
  %345 = mul i32 %341, %37
  %346 = lshr exact i32 %345, 1
  %347 = add i32 %346, %242
  %348 = udiv i32 %347, %345
  %349 = tail call i32 @llvm.umax.i32(i32 %348, i32 1) #11
  %350 = tail call i32 @llvm.umin.i32(i32 %349, i32 256) #11
  %351 = mul i32 %350, %341
  %352 = lshr exact i32 %351, 1
  %353 = add i32 %352, %242
  %354 = udiv i32 %353, %351
  %355 = sub i32 %354, %37
  %356 = tail call i32 @llvm.abs.i32(i32 %355, i1 false) #11
  %357 = tail call i32 @llvm.abs.i32(i32 %340, i1 false) #11
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %344
  %360 = add nsw i32 %350, -1
  %361 = icmp eq i32 %355, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %359, %344, %336, %310, %284, %262, %252
  %363 = phi i32 [ %253, %252 ], [ %253, %262 ], [ %285, %284 ], [ %311, %310 ], [ %337, %336 ], [ %360, %359 ], [ %337, %344 ]
  %364 = phi i32 [ %254, %252 ], [ %254, %262 ], [ %286, %284 ], [ %312, %310 ], [ %338, %336 ], [ 3, %359 ], [ %338, %344 ]
  %365 = phi i32 [ %255, %252 ], [ %255, %262 ], [ %287, %284 ], [ %313, %310 ], [ %339, %336 ], [ %258, %359 ], [ %339, %344 ]
  %366 = phi i32 [ %257, %252 ], [ %257, %262 ], [ %288, %284 ], [ %314, %310 ], [ %340, %336 ], [ %355, %359 ], [ %340, %344 ]
  %367 = icmp ult i32 %258, %250
  br i1 %367, label %368, label %252

368:                                              ; preds = %362, %359, %333, %307, %281, %229
  %369 = phi i32 [ 255, %229 ], [ %360, %359 ], [ %334, %333 ], [ %308, %307 ], [ %282, %281 ], [ %363, %362 ]
  %370 = phi i32 [ 0, %229 ], [ 3, %359 ], [ 2, %333 ], [ 1, %307 ], [ 0, %281 ], [ %364, %362 ]
  %371 = phi i32 [ %230, %229 ], [ %258, %359 ], [ %258, %333 ], [ %258, %307 ], [ %258, %281 ], [ %365, %362 ]
  %372 = phi i32 [ 2147483647, %229 ], [ 0, %359 ], [ 0, %333 ], [ 0, %307 ], [ 0, %281 ], [ %366, %362 ]
  %373 = tail call i32 @llvm.abs.i32(i32 %372, i1 false)
  %374 = tail call i32 @llvm.abs.i32(i32 %232, i1 false)
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %368, %227, %224, %155, %152, %85, %76
  %377 = phi i32 [ 0, %85 ], [ 0, %155 ], [ 0, %227 ], [ %372, %368 ], [ 0, %152 ], [ 0, %224 ], [ 0, %76 ]
  %378 = phi i32 [ 32768, %85 ], [ 0, %155 ], [ 16384, %227 ], [ %233, %368 ], [ 0, %152 ], [ 16384, %224 ], [ 32768, %76 ]
  %379 = phi i32 [ 0, %85 ], [ %145, %155 ], [ %217, %227 ], [ %234, %368 ], [ %132, %152 ], [ %204, %224 ], [ 0, %76 ]
  %380 = phi i32 [ %79, %85 ], [ %144, %155 ], [ %216, %227 ], [ %371, %368 ], [ %122, %152 ], [ %194, %224 ], [ %64, %76 ]
  %381 = phi i32 [ 0, %85 ], [ 0, %155 ], [ 0, %227 ], [ %370, %368 ], [ 0, %152 ], [ 0, %224 ], [ 0, %76 ]
  %382 = phi i32 [ 255, %85 ], [ 255, %155 ], [ 255, %227 ], [ %369, %368 ], [ 255, %152 ], [ 255, %224 ], [ 255, %76 ]
  %383 = phi i32 [ 2, %85 ], [ 2, %155 ], [ 2, %227 ], [ 0, %368 ], [ 2, %152 ], [ 2, %224 ], [ 2, %76 ]
  tail call fastcc void @sci_port_enable(ptr noundef %0)
  br label %388

384:                                              ; preds = %39, %20
  %385 = phi i32 [ %40, %39 ], [ 0, %20 ]
  tail call fastcc void @sci_port_enable(ptr noundef %0)
  br label %405

386:                                              ; preds = %368
  tail call fastcc void @sci_port_enable(ptr noundef %0)
  %387 = icmp sgt i32 %231, -1
  br i1 %387, label %388, label %405

388:                                              ; preds = %386, %376
  %389 = phi i32 [ %383, %376 ], [ %236, %386 ]
  %390 = phi i32 [ %382, %376 ], [ 255, %386 ]
  %391 = phi i32 [ %381, %376 ], [ 0, %386 ]
  %392 = phi i32 [ %380, %376 ], [ %235, %386 ]
  %393 = phi i32 [ %379, %376 ], [ %234, %386 ]
  %394 = phi i32 [ %378, %376 ], [ %233, %386 ]
  %395 = phi i32 [ %377, %376 ], [ %232, %386 ]
  %396 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %397 = load ptr, ptr %396, align 8
  %398 = getelementptr [20 x %struct.plat_sci_reg], ptr %397, i32 0, i32 16, i32 1
  %399 = load i8, ptr %398, align 1
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %388
  %402 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %403 = load ptr, ptr %402, align 4
  tail call void %403(ptr noundef %0, i32 noundef 15, i32 noundef %393) #11
  %404 = load ptr, ptr %402, align 4
  tail call void %404(ptr noundef %0, i32 noundef 16, i32 noundef %394) #11
  br label %405

405:                                              ; preds = %401, %388, %386, %384
  %406 = phi i1 [ true, %401 ], [ true, %388 ], [ false, %386 ], [ false, %384 ]
  %407 = phi i32 [ %37, %401 ], [ %37, %388 ], [ %37, %386 ], [ %385, %384 ]
  %408 = phi i32 [ %389, %401 ], [ %389, %388 ], [ %236, %386 ], [ 0, %384 ]
  %409 = phi i32 [ %390, %401 ], [ %390, %388 ], [ 255, %386 ], [ 255, %384 ]
  %410 = phi i32 [ %391, %401 ], [ %391, %388 ], [ 0, %386 ], [ 0, %384 ]
  %411 = phi i32 [ %392, %401 ], [ %392, %388 ], [ %235, %386 ], [ 15, %384 ]
  %412 = phi i32 [ %395, %401 ], [ %395, %388 ], [ %232, %386 ], [ 2147483647, %384 ]
  %413 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %414 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 29
  %415 = load i16, ptr %414, align 4
  %416 = zext i16 %415 to i32
  %417 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %418 = load ptr, ptr %417, align 4
  tail call void %418(ptr noundef %0, i32 noundef 2, i32 noundef %416) #11
  %419 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %420 = load ptr, ptr %419, align 8
  %421 = getelementptr [20 x %struct.plat_sci_reg], ptr %420, i32 0, i32 4, i32 1
  %422 = load i8, ptr %421, align 1
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %405
  %425 = load ptr, ptr %417, align 4
  tail call void %425(ptr noundef %0, i32 noundef 4, i32 noundef 6) #11
  %426 = load ptr, ptr %419, align 8
  br label %427

427:                                              ; preds = %424, %405
  %428 = phi ptr [ %426, %424 ], [ %420, %405 ]
  %429 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %430 = load i32, ptr %429, align 4
  %431 = icmp eq i32 %430, 52
  %432 = select i1 %431, i32 -92, i32 -28
  %433 = getelementptr inbounds %struct.sci_port_params, ptr %428, i32 0, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = and i32 %432, %434
  %436 = select i1 %431, i32 -60, i32 -29
  %437 = and i32 %435, %436
  br i1 %431, label %449, label %438

438:                                              ; preds = %427
  %439 = getelementptr inbounds %struct.sci_port_params, ptr %428, i32 0, i32 3
  %440 = load i32, ptr %439, align 4
  %441 = icmp eq i32 %440, 512
  br i1 %441, label %442, label %447

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %444 = load ptr, ptr %443, align 4
  %445 = tail call i32 %444(ptr noundef %0, i32 noundef 3) #11
  %446 = and i32 %445, %437
  br label %449

447:                                              ; preds = %438
  %448 = and i32 %437, -65308
  br label %449

449:                                              ; preds = %447, %442, %427
  %450 = phi i32 [ %446, %442 ], [ %448, %447 ], [ %437, %427 ]
  %451 = load ptr, ptr %417, align 4
  tail call void %451(ptr noundef %0, i32 noundef 3, i32 noundef %450) #11
  %452 = load ptr, ptr %419, align 8
  %453 = getelementptr [20 x %struct.plat_sci_reg], ptr %452, i32 0, i32 8, i32 1
  %454 = load i8, ptr %453, align 1
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %462, label %456

456:                                              ; preds = %449
  %457 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %458 = load ptr, ptr %457, align 4
  %459 = tail call i32 %458(ptr noundef %0, i32 noundef 8) #11
  %460 = and i32 %459, -6
  %461 = load ptr, ptr %417, align 4
  tail call void %461(ptr noundef %0, i32 noundef 8, i32 noundef %460) #11
  br label %462

462:                                              ; preds = %456, %449
  %463 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 26
  %464 = load i32, ptr %463, align 8
  %465 = icmp sgt i32 %464, 1
  br i1 %465, label %466, label %479

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 28
  %468 = load i32, ptr %467, align 8
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %466
  %471 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %0, i32 noundef 1) #11
  %472 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %472, ptr noundef nonnull @rx_fifo_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %479

473:                                              ; preds = %466
  %474 = load i32, ptr %429, align 4
  switch i32 %474, label %477 [
    i32 83, label %475
    i32 93, label %475
  ]

475:                                              ; preds = %473, %473
  %476 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %0, i32 noundef 1) #11
  br label %479

477:                                              ; preds = %473
  %478 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %0, i32 noundef %464) #11
  br label %479

479:                                              ; preds = %477, %475, %470, %462
  %480 = load i32, ptr %4, align 4
  tail call void @uart_update_timeout(ptr noundef %0, i32 noundef %480, i32 noundef %407) #11
  %481 = load i32, ptr %4, align 4
  %482 = tail call zeroext i8 @tty_get_frame_size(i32 noundef %481) #11
  %483 = zext i8 %482 to i32
  %484 = load ptr, ptr %419, align 8
  %485 = getelementptr [20 x %struct.plat_sci_reg], ptr %484, i32 0, i32 19, i32 1
  %486 = load i8, ptr %485, align 1
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %490, label %488

488:                                              ; preds = %479
  %489 = load ptr, ptr %417, align 4
  tail call void %489(ptr noundef %0, i32 noundef 19, i32 noundef 0) #11
  br label %490

490:                                              ; preds = %488, %479
  br i1 %406, label %491, label %555

491:                                              ; preds = %490
  %492 = load i32, ptr %429, align 4
  switch i32 %492, label %510 [
    i32 83, label %493
    i32 93, label %493
  ]

493:                                              ; preds = %491, %491
  %494 = add i32 %411, -4
  %495 = tail call i32 @llvm.fshl.i32(i32 %494, i32 %494, i32 31)
  switch i32 %495, label %510 [
    i32 0, label %496
    i32 1, label %498
    i32 3, label %500
    i32 4, label %502
    i32 11, label %508
    i32 6, label %504
    i32 7, label %506
  ]

496:                                              ; preds = %493
  %497 = or i32 %16, 256
  br label %510

498:                                              ; preds = %493
  %499 = or i32 %16, 512
  br label %510

500:                                              ; preds = %493
  %501 = or i32 %16, 768
  br label %510

502:                                              ; preds = %493
  %503 = or i32 %16, 1024
  br label %510

504:                                              ; preds = %493
  %505 = or i32 %16, 1280
  br label %510

506:                                              ; preds = %493
  %507 = or i32 %16, 1536
  br label %510

508:                                              ; preds = %493
  %509 = or i32 %16, 1792
  br label %510

510:                                              ; preds = %508, %506, %504, %502, %500, %498, %496, %493, %491
  %511 = phi i32 [ %509, %508 ], [ %507, %506 ], [ %505, %504 ], [ %503, %502 ], [ %501, %500 ], [ %499, %498 ], [ %497, %496 ], [ %16, %491 ], [ %16, %493 ]
  %512 = or i32 %511, %410
  %513 = load i16, ptr %414, align 4
  %514 = zext i16 %513 to i32
  %515 = or i32 %408, %514
  %516 = load ptr, ptr %417, align 4
  tail call void %516(ptr noundef %0, i32 noundef 2, i32 noundef %515) #11
  %517 = load ptr, ptr %417, align 4
  tail call void %517(ptr noundef %0, i32 noundef 0, i32 noundef %512) #11
  %518 = load ptr, ptr %417, align 4
  tail call void %518(ptr noundef %0, i32 noundef 1, i32 noundef %409) #11
  %519 = load ptr, ptr %419, align 8
  %520 = getelementptr [20 x %struct.plat_sci_reg], ptr %519, i32 0, i32 12, i32 1
  %521 = load i8, ptr %520, align 1
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %551, label %523

523:                                              ; preds = %510
  %524 = or i32 %411, 32768
  %525 = shl nuw nsw i32 %483, 1
  %526 = add nsw i32 %525, -1
  %527 = add i32 %411, 1
  %528 = mul i32 %527, %412
  %529 = mul i32 %528, %526
  %530 = shl i32 %407, 1
  %531 = icmp slt i32 %529, 1
  %532 = icmp sgt i32 %530, 0
  %533 = xor i1 %532, %531
  %534 = select i1 %533, i32 2, i32 -2
  %535 = sdiv i32 %530, %534
  %536 = add i32 %535, %529
  %537 = sdiv i32 %536, %530
  %538 = tail call i32 @llvm.abs.i32(i32 %537, i1 false)
  %539 = icmp sgt i32 %538, 1
  br i1 %539, label %540, label %548

540:                                              ; preds = %523
  %541 = sdiv i32 %537, 2
  %542 = tail call i32 @llvm.smax.i32(i32 %541, i32 -8)
  %543 = tail call i32 @llvm.smin.i32(i32 %542, i32 7)
  %544 = shl nsw i32 %543, 8
  %545 = and i32 %544, 3840
  %546 = or i32 %411, %545
  %547 = or i32 %546, 49152
  br label %548

548:                                              ; preds = %540, %523
  %549 = phi i32 [ %547, %540 ], [ %524, %523 ]
  %550 = load ptr, ptr %417, align 4
  tail call void %550(ptr noundef %0, i32 noundef 12, i32 noundef %549) #11
  br label %551

551:                                              ; preds = %548, %510
  %552 = add i32 %407, 999999
  %553 = udiv i32 %552, %407
  %554 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %554(i32 noundef %553) #11
  br label %571

555:                                              ; preds = %490
  %556 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %557 = load ptr, ptr %556, align 4
  %558 = getelementptr inbounds %struct.plat_sci_port, ptr %557, i32 0, i32 3
  %559 = load i32, ptr %558, align 4
  %560 = and i32 %559, 3
  %561 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %562 = load ptr, ptr %561, align 4
  %563 = tail call i32 %562(ptr noundef %0, i32 noundef 0) #11
  %564 = and i32 %563, 5891
  %565 = or i32 %564, %16
  %566 = load i16, ptr %414, align 4
  %567 = zext i16 %566 to i32
  %568 = or i32 %560, %567
  %569 = load ptr, ptr %417, align 4
  tail call void %569(ptr noundef %0, i32 noundef 2, i32 noundef %568) #11
  %570 = load ptr, ptr %417, align 4
  tail call void %570(ptr noundef %0, i32 noundef 0, i32 noundef %565) #11
  br label %571

571:                                              ; preds = %555, %551
  %572 = phi i32 [ %408, %551 ], [ %560, %555 ]
  %573 = load i32, ptr %4, align 4
  %574 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %575 = load ptr, ptr %574, align 4
  %576 = getelementptr inbounds %struct.plat_sci_port, ptr %575, i32 0, i32 5
  %577 = load ptr, ptr %576, align 4
  %578 = icmp eq ptr %577, null
  br i1 %578, label %583, label %579

579:                                              ; preds = %571
  %580 = load ptr, ptr %577, align 4
  %581 = icmp eq ptr %580, null
  br i1 %581, label %583, label %582

582:                                              ; preds = %579
  tail call void %580(ptr noundef %0, i32 noundef %573) #11
  br label %653

583:                                              ; preds = %579, %571
  %584 = load i32, ptr %429, align 4
  switch i32 %584, label %625 [
    i32 83, label %585
    i32 93, label %585
  ]

585:                                              ; preds = %583, %583
  %586 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %587 = load ptr, ptr %586, align 4
  %588 = tail call i32 %587(ptr noundef %0, i32 noundef 14) #11
  %589 = load ptr, ptr %586, align 4
  %590 = tail call i32 %589(ptr noundef %0, i32 noundef 13) #11
  %591 = trunc i32 %590 to i16
  %592 = and i16 %591, -4
  %593 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 30
  %594 = load i8, ptr %593, align 2, !range !10
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %618, label %596

596:                                              ; preds = %585
  %597 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %598 = load i32, ptr %597, align 4
  %599 = and i32 %598, 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %596
  %602 = or i16 %592, 16
  %603 = and i32 %588, 65519
  %604 = or i32 %603, 16
  br label %614

605:                                              ; preds = %596
  %606 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  %607 = load i8, ptr %606, align 1, !range !10
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %605
  %610 = or i16 %592, 16
  %611 = and i32 %588, 65519
  br label %614

612:                                              ; preds = %605
  %613 = and i16 %591, -20
  br label %614

614:                                              ; preds = %612, %609, %601
  %615 = phi i32 [ %588, %612 ], [ %611, %609 ], [ %604, %601 ]
  %616 = phi i16 [ %613, %612 ], [ %610, %609 ], [ %602, %601 ]
  %617 = and i16 %616, -9
  br label %618

618:                                              ; preds = %614, %585
  %619 = phi i32 [ %615, %614 ], [ %588, %585 ]
  %620 = phi i16 [ %617, %614 ], [ %592, %585 ]
  %621 = and i32 %619, 65535
  %622 = load ptr, ptr %417, align 4
  tail call void %622(ptr noundef %0, i32 noundef 14, i32 noundef %621) #11
  %623 = zext i16 %620 to i32
  %624 = load ptr, ptr %417, align 4
  tail call void %624(ptr noundef %0, i32 noundef 13, i32 noundef %623) #11
  br label %653

625:                                              ; preds = %583
  %626 = load ptr, ptr %419, align 8
  %627 = getelementptr [20 x %struct.plat_sci_reg], ptr %626, i32 0, i32 11, i32 1
  %628 = load i8, ptr %627, align 1
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %653, label %630

630:                                              ; preds = %625
  %631 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %632 = load ptr, ptr %631, align 4
  %633 = tail call i32 %632(ptr noundef %0, i32 noundef 11) #11
  %634 = trunc i32 %633 to i16
  %635 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %636 = load i32, ptr %635, align 4
  %637 = and i32 %636, 4
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %630
  %640 = or i16 %634, 192
  br label %648

641:                                              ; preds = %630
  %642 = or i16 %634, 128
  %643 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  %644 = load i8, ptr %643, align 1, !range !10
  %645 = icmp eq i8 %644, 0
  %646 = and i16 %642, -65
  %647 = select i1 %645, i16 %646, i16 %642
  br label %648

648:                                              ; preds = %641, %639
  %649 = phi i16 [ %640, %639 ], [ %647, %641 ]
  %650 = and i16 %649, -41
  %651 = zext i16 %650 to i32
  %652 = load ptr, ptr %417, align 4
  tail call void %652(ptr noundef %0, i32 noundef 11, i32 noundef %651) #11
  br label %653

653:                                              ; preds = %648, %625, %618, %582
  %654 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %655 = load i32, ptr %654, align 4
  %656 = and i32 %655, -9
  store i32 %656, ptr %654, align 4
  %657 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 31
  store i8 0, ptr %657, align 1
  %658 = load ptr, ptr %419, align 8
  %659 = getelementptr [20 x %struct.plat_sci_reg], ptr %658, i32 0, i32 4, i32 1
  %660 = load i8, ptr %659, align 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %679, label %662

662:                                              ; preds = %653
  %663 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %664 = load ptr, ptr %663, align 4
  %665 = tail call i32 %664(ptr noundef %0, i32 noundef 4) #11
  %666 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %667 = load i32, ptr %666, align 4
  %668 = and i32 %667, 3145728
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %676, label %670

670:                                              ; preds = %662
  %671 = load i32, ptr %4, align 4
  %672 = icmp sgt i32 %671, -1
  br i1 %672, label %676, label %673

673:                                              ; preds = %670
  %674 = load i32, ptr %654, align 4
  %675 = or i32 %674, 8
  store i32 %675, ptr %654, align 4
  store i8 1, ptr %657, align 1
  br label %676

676:                                              ; preds = %673, %670, %662
  %677 = and i32 %665, 65529
  %678 = load ptr, ptr %417, align 4
  tail call void %678(ptr noundef %0, i32 noundef 4, i32 noundef %677) #11
  br label %679

679:                                              ; preds = %676, %653
  %680 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %681 = load i32, ptr %680, align 4
  %682 = and i32 %681, 3145728
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %687, label %684

684:                                              ; preds = %679
  %685 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %686 = load i32, ptr %685, align 4
  tail call void @sci_set_mctrl(ptr noundef %0, i32 noundef %686)
  br label %687

687:                                              ; preds = %684, %679
  %688 = load ptr, ptr %574, align 4
  %689 = getelementptr inbounds %struct.plat_sci_port, ptr %688, i32 0, i32 3
  %690 = load i32, ptr %689, align 4
  %691 = and i32 %690, -52
  %692 = load i16, ptr %414, align 4
  %693 = zext i16 %692 to i32
  %694 = or i32 %572, %691
  %695 = or i32 %694, %693
  %696 = or i32 %695, 48
  %697 = load ptr, ptr %417, align 4
  tail call void %697(ptr noundef %0, i32 noundef 2, i32 noundef %696) #11
  %698 = icmp eq i32 %411, 4
  br i1 %698, label %699, label %705

699:                                              ; preds = %687
  %700 = load i32, ptr %429, align 4
  switch i32 %700, label %705 [
    i32 83, label %701
    i32 93, label %701
  ]

701:                                              ; preds = %699, %699
  %702 = add i32 %407, 9999999
  %703 = udiv i32 %702, %407
  %704 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %704(i32 noundef %703) #11
  br label %705

705:                                              ; preds = %701, %699, %687
  %706 = mul nuw nsw i32 %483, 10000
  %707 = udiv i32 %407, 100
  %708 = udiv i32 %706, %707
  %709 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 25
  store i32 %708, ptr %709, align 4
  %710 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 21
  %711 = load i32, ptr %710, align 4
  %712 = shl nuw nsw i32 %708, 1
  %713 = mul i32 %712, %711
  %714 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 24
  store i32 %713, ptr %714, align 8
  %715 = load i32, ptr %4, align 4
  %716 = and i32 %715, 128
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %735, label %718

718:                                              ; preds = %705
  %719 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %720 = load ptr, ptr %719, align 4
  %721 = tail call i32 %720(ptr noundef %0, i32 noundef 2) #11
  %722 = load ptr, ptr %574, align 4
  %723 = getelementptr inbounds %struct.plat_sci_port, ptr %722, i32 0, i32 3
  %724 = load i32, ptr %723, align 4
  %725 = and i32 %724, 8
  %726 = or i32 %721, %725
  %727 = or i32 %726, 64
  %728 = load i32, ptr %429, align 4
  switch i32 %728, label %731 [
    i32 83, label %729
    i32 93, label %729
  ]

729:                                              ; preds = %718, %718
  %730 = and i32 %727, 49151
  br label %731

731:                                              ; preds = %729, %718
  %732 = phi i32 [ %730, %729 ], [ %727, %718 ]
  %733 = and i32 %732, 65535
  %734 = load ptr, ptr %417, align 4
  tail call void %734(ptr noundef %0, i32 noundef 2, i32 noundef %733) #11
  br label %735

735:                                              ; preds = %731, %705
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %413) #11
  tail call fastcc void @sci_port_disable(ptr noundef %0)
  %736 = load i32, ptr %680, align 4
  %737 = and i32 %736, 2048
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %743

739:                                              ; preds = %735
  %740 = load i32, ptr %4, align 4
  %741 = and i32 %740, -2147481600
  %742 = icmp eq i32 %741, 2048
  br i1 %742, label %746, label %743

743:                                              ; preds = %739, %735
  %744 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 5
  %745 = load ptr, ptr %744, align 8
  tail call void @mctrl_gpio_enable_ms(ptr noundef %745) #11
  br label %746

746:                                              ; preds = %743, %739
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_pm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @sci_port_disable(ptr noundef %0)
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @sci_port_enable(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @sci_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %9 [
    i32 54, label %10
    i32 52, label %4
    i32 53, label %5
    i32 83, label %6
    i32 93, label %7
    i32 104, label %8
  ]

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %1
  %11 = phi ptr [ null, %9 ], [ @.str.39, %8 ], [ @.str.38, %7 ], [ @.str.37, %6 ], [ @.str.36, %5 ], [ @.str.35, %4 ], [ @.str.34, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_release_port(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @iounmap(ptr noundef %13) #11
  store ptr null, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %18) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_request_port(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %9, %1 ]
  %15 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %5, ptr noundef %14, i32 noundef 0) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !9

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40) #13
  br label %45

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %23
  %33 = load i32, ptr %2, align 4
  %34 = load i32, ptr %4, align 4
  %35 = tail call ptr @ioremap(i32 noundef %33, i32 noundef %34) #11
  store ptr %35, ptr %20, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %45, !prof !9

37:                                               ; preds = %28
  %38 = load i32, ptr %2, align 4
  %39 = inttoptr i32 %38 to ptr
  store ptr %39, ptr %20, align 4
  br label %45

40:                                               ; preds = %32
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %43) #13
  %44 = tail call i32 @release_resource(ptr noundef nonnull %15) #11
  br label %45

45:                                               ; preds = %40, %37, %32, %19, %17
  %46 = phi i32 [ -16, %17 ], [ -6, %40 ], [ 0, %19 ], [ 0, %32 ], [ 0, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_config_port(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 %8, ptr %9, align 4
  %10 = tail call i32 @sci_request_port(ptr noundef %0)
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sci_verify_port(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 2400
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctrl_gpio_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_enable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sci_free_dma(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 10
  store ptr null, ptr %8, align 4
  store ptr null, ptr %2, align 4
  %9 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  store i32 -22, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = tail call i32 %12(ptr noundef nonnull %3) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 48
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef nonnull %3) #11
  br label %23

23:                                               ; preds = %22, %17, %14, %5
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %28, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  br label %29

29:                                               ; preds = %23, %1
  %30 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 13
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8
  %34 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %34, align 8
  %35 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 0
  store i32 -22, ptr %35, align 4
  %36 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 1
  store i32 -22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 16
  store i32 0, ptr %37, align 8
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 47
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = tail call i32 %40(ptr noundef nonnull %31) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 48
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void %48(ptr noundef nonnull %31) #11
  br label %51

51:                                               ; preds = %50, %45, %42, %33
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 21
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 1
  %58 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 20
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 19, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %57, ptr noundef %59, i32 noundef %61, i32 noundef 0) #11
  tail call void @dma_release_channel(ptr noundef nonnull %31) #11
  br label %62

62:                                               ; preds = %51, %29
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_dma_tx_work_fn(ptr noundef %0) #2 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr i8, ptr %0, i32 -512
  %4 = getelementptr i8, ptr %0, i32 -92
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -404
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, 4095
  %15 = add i32 %13, %14
  %16 = sub i32 %9, %11
  %17 = and i32 %16, 4095
  %18 = sub i32 4096, %11
  %19 = add i32 %18, %9
  %20 = and i32 %19, 4095
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 %18)
  %22 = tail call i32 @llvm.umin.i32(i32 %17, i32 %21)
  %23 = getelementptr i8, ptr %0, i32 -56
  store i32 %22, ptr %23, align 8
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %26 = load i16, ptr %3, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %69

28:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #11, !annotation !19
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #11
  %29 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %15, ptr %29, align 4
  %30 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %22, ptr %30, align 4
  %31 = icmp eq ptr %5, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 39
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32, %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br label %43

40:                                               ; preds = %35
  %41 = call ptr %37(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %44 = load i16, ptr %3, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %64

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %23, align 8
  call void @dma_sync_single_for_device(ptr noundef %49, i32 noundef %15, i32 noundef %50, i32 noundef 1) #11
  %51 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 6
  store ptr @sci_dma_tx_complete, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 8
  store ptr %3, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef nonnull %41) #11
  %56 = getelementptr i8, ptr %0, i32 -76
  store i32 %55, ptr %56, align 4
  %57 = icmp sgt i32 %55, -1
  call void asm sideeffect "dmb ish", "~{memory}"() #11
  %58 = load i16, ptr %3, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11
  call void asm sideeffect "", "~{memory}"() #11
  br i1 %57, label %60, label %64

60:                                               ; preds = %46
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 50
  %63 = load ptr, ptr %62, align 4
  call void %63(ptr noundef nonnull %5) #11
  br label %69

64:                                               ; preds = %46, %43
  %65 = phi ptr [ @.str.20, %43 ], [ @.str.21, %46 ]
  %66 = getelementptr i8, ptr %0, i32 -304
  %67 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull %65) #13
  %68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  store ptr null, ptr %4, align 4
  call void @sci_start_tx(ptr noundef %3)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %68) #11
  br label %69

69:                                               ; preds = %64, %60, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_dma_rx_timer_fn(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr i8, ptr %0, i32 -528
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !19
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %7 = getelementptr i8, ptr %0, i32 -80
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 -88
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -84
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #11
  br label %98

17:                                               ; preds = %12, %1
  %18 = phi i32 [ 0, %1 ], [ 1, %12 ]
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 49
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %19, i32 noundef %8, ptr noundef nonnull %2) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #11
  br label %98

26:                                               ; preds = %17
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 45
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 %29(ptr noundef %5) #11
  br label %33

33:                                               ; preds = %31, %26
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %7, align 8
  %36 = load ptr, ptr %34, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 49
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %2) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #11
  br label %98

42:                                               ; preds = %33
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 47
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call i32 %46(ptr noundef %43) #11
  br label %50

50:                                               ; preds = %48, %42
  %51 = getelementptr i8, ptr %0, i32 -68
  %52 = getelementptr [2 x %struct.scatterlist], ptr %51, i32 0, i32 %18
  %53 = getelementptr inbounds %struct.scatterlist, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %78, label %58

58:                                               ; preds = %50
  %59 = sub i32 %54, %56
  %60 = getelementptr i8, ptr %0, i32 -28
  %61 = getelementptr [2 x ptr], ptr %60, i32 0, i32 %18
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %0, i32 -420
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %64, ptr noundef %62, i8 noundef zeroext 0, i32 noundef %59) #11
  %66 = icmp ult i32 %65, %59
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = getelementptr i8, ptr %0, i32 -376
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %58
  %72 = getelementptr i8, ptr %0, i32 -400
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %65
  store i32 %74, ptr %72, align 4
  %75 = icmp eq i32 %65, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %63, align 4
  call void @tty_flip_buffer_push(ptr noundef %77) #11
  br label %78

78:                                               ; preds = %76, %71, %50
  %79 = getelementptr i8, ptr %0, i32 -348
  %80 = load i32, ptr %79, align 4
  switch i32 %80, label %83 [
    i32 83, label %81
    i32 93, label %81
  ]

81:                                               ; preds = %78, %78
  %82 = call fastcc i32 @sci_dma_rx_submit(ptr noundef %3, i1 noundef zeroext true)
  br label %83

83:                                               ; preds = %81, %78
  %84 = getelementptr i8, ptr %0, i32 -516
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %3, i32 noundef 2) #11
  %87 = load i32, ptr %79, align 4
  switch i32 %87, label %92 [
    i32 83, label %88
    i32 93, label %88
  ]

88:                                               ; preds = %83, %83
  %89 = and i32 %86, 49151
  %90 = getelementptr i8, ptr %0, i32 -152
  %91 = load i32, ptr %90, align 4
  call void @enable_irq(i32 noundef %91) #11
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i32 [ %89, %88 ], [ %86, %83 ]
  %94 = and i32 %93, 65471
  %95 = or i32 %94, 64
  %96 = getelementptr i8, ptr %0, i32 -512
  %97 = load ptr, ptr %96, align 4
  call void %97(ptr noundef %3, i32 noundef 2, i32 noundef %95) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #11
  br label %98

98:                                               ; preds = %92, %41, %25, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sci_dma_rx_submit(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 0
  br i1 %5, label %50, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = tail call ptr %12(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %15, i32 0, i32 6
  store ptr @sci_dma_rx_complete, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %15, i32 0, i32 8
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %15, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %15) #11
  %23 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 0
  store i32 %22, ptr %23, align 4
  %24 = icmp sgt i32 %22, -1
  br i1 %24, label %25, label %50

25:                                               ; preds = %17
  %26 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 1
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 39
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = tail call ptr %31(ptr noundef nonnull %4, ptr noundef %26, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 6
  store ptr @sci_dma_rx_complete, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 8
  store ptr %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %34) #11
  %42 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 1
  store i32 %41, ptr %42, align 4
  %43 = icmp sgt i32 %41, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, ptr %23, align 8
  %46 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 16
  store i32 %45, ptr %46, align 8
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 50
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef nonnull %4) #11
  br label %87

50:                                               ; preds = %36, %33, %29, %25, %17, %14, %10, %7, %2
  %51 = phi i1 [ false, %36 ], [ false, %33 ], [ false, %29 ], [ false, %25 ], [ true, %2 ], [ true, %7 ], [ true, %10 ], [ true, %14 ], [ true, %17 ]
  br i1 %1, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %52 ]
  br i1 %51, label %63, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 47
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = tail call i32 %59(ptr noundef %4) #11
  br label %63

63:                                               ; preds = %61, %56, %54
  store ptr null, ptr %3, align 8
  %64 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 0
  store i32 -22, ptr %64, align 4
  %65 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 1
  store i32 -22, ptr %65, align 4
  %66 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 16
  store i32 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %0, i32 noundef 2) #11
  %70 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.plat_sci_port, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 8
  %75 = or i32 %69, %74
  %76 = or i32 %75, 64
  %77 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %81 [
    i32 83, label %79
    i32 93, label %79
  ]

79:                                               ; preds = %63, %63
  %80 = and i32 %76, 49151
  br label %81

81:                                               ; preds = %79, %63
  %82 = phi i32 [ %80, %79 ], [ %76, %63 ]
  %83 = and i32 %82, 65535
  %84 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %0, i32 noundef 2, i32 noundef %83) #11
  br i1 %1, label %87, label %86

86:                                               ; preds = %81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %55) #11
  br label %87

87:                                               ; preds = %86, %81, %44
  %88 = phi i32 [ 0, %44 ], [ -11, %86 ], [ -11, %81 ]
  ret i32 %88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_dma_tx_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = and i32 %9, 4095
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %5, align 8
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  %18 = sub i32 %16, %17
  %19 = and i32 %18, 3840
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  tail call void @uart_write_wakeup(ptr noundef %0) #11
  %22 = load i32, ptr %15, align 4
  %23 = load i32, ptr %7, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ %23, %21 ], [ %17, %1 ]
  %26 = phi i32 [ %22, %21 ], [ %16, %1 ]
  %27 = icmp eq i32 %26, %25
  %28 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 14
  br i1 %27, label %33, label %29

29:                                               ; preds = %24
  store i32 0, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 22
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #11
  br label %43

33:                                               ; preds = %24
  store i32 -22, ptr %28, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %43 [
    i32 83, label %36
    i32 93, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0, i32 noundef 2) #11
  %40 = and i32 %39, 65407
  %41 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0, i32 noundef 2, i32 noundef %40) #11
  br label %43

43:                                               ; preds = %36, %33, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sci_dma_rx_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %6, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10, %1
  %15 = phi i32 [ 0, %1 ], [ 1, %10 ]
  %16 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 20, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %21, ptr noundef %17, i8 noundef zeroext 0, i32 noundef %19) #11
  %23 = icmp ult i32 %22, %19
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %22
  store i32 %31, ptr %29, align 4
  %32 = icmp eq i32 %22, 0
  %33 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 23
  %34 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 24
  %35 = load i32, ptr %34, align 8
  %36 = freeze i32 %35
  %37 = udiv i32 %36, 1000000
  %38 = mul i32 %37, 1000000
  %39 = sub i32 %36, %38
  %40 = mul nuw nsw i32 %39, 1000
  %41 = zext i32 %37 to i64
  %42 = mul nuw nsw i64 %41, 1000000000
  %43 = zext i32 %40 to i64
  %44 = add nuw nsw i64 %42, %43
  tail call void @hrtimer_start_range_ns(ptr noundef %33, i64 noundef %44, i64 noundef 0, i32 noundef 1) #11
  br i1 %32, label %60, label %45

45:                                               ; preds = %28
  %46 = load ptr, ptr %20, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %46) #11
  br label %60

47:                                               ; preds = %10
  %48 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 23
  %49 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 24
  %50 = load i32, ptr %49, align 8
  %51 = freeze i32 %50
  %52 = udiv i32 %51, 1000000
  %53 = mul i32 %52, 1000000
  %54 = sub i32 %51, %53
  %55 = mul nuw nsw i32 %54, 1000
  %56 = zext i32 %52 to i64
  %57 = mul nuw nsw i64 %56, 1000000000
  %58 = zext i32 %55 to i64
  %59 = add nuw nsw i64 %57, %58
  tail call void @hrtimer_start_range_ns(ptr noundef %48, i64 noundef %59, i64 noundef 0, i32 noundef 1) #11
  br label %60

60:                                               ; preds = %47, %45, %28
  %61 = phi i32 [ -1, %47 ], [ %15, %45 ], [ %15, %28 ]
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 19, i32 %61
  %64 = icmp eq ptr %62, null
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %62, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %91, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 39
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = tail call ptr %70(ptr noundef nonnull %62, ptr noundef %63, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %73, i32 0, i32 6
  store ptr @sci_dma_rx_complete, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %73, i32 0, i32 8
  store ptr %0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %73, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 %79(ptr noundef nonnull %73) #11
  %81 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 %61
  store i32 %80, ptr %81, align 4
  %82 = icmp sgt i32 %80, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = icmp eq i32 %61, 0
  %85 = zext i1 %84 to i32
  %86 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 %85
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %5, align 8
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 50
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %3) #11
  br label %118

91:                                               ; preds = %75, %72, %68, %65, %60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #11
  %92 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %93 = load ptr, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.22) #13
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #11
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr inbounds %struct.dma_device, ptr %95, i32 0, i32 47
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %91
  %100 = tail call i32 %97(ptr noundef %3) #11
  br label %101

101:                                              ; preds = %99, %91
  store ptr null, ptr %2, align 8
  store i32 -22, ptr %7, align 4
  %102 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 15, i32 1
  store i32 -22, ptr %102, align 4
  store i32 0, ptr %5, align 8
  %103 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef %0, i32 noundef 2) #11
  %106 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %107 = load i32, ptr %106, align 4
  switch i32 %107, label %112 [
    i32 83, label %108
    i32 93, label %108
  ]

108:                                              ; preds = %101, %101
  %109 = and i32 %105, 49151
  %110 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 8, i32 1
  %111 = load i32, ptr %110, align 4
  tail call void @enable_irq(i32 noundef %111) #11
  br label %112

112:                                              ; preds = %108, %101
  %113 = phi i32 [ %109, %108 ], [ %105, %101 ]
  %114 = and i32 %113, 65471
  %115 = or i32 %114, 64
  %116 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef %0, i32 noundef 2, i32 noundef %115) #11
  br label %118

118:                                              ; preds = %112, %83
  %119 = phi i32 [ %94, %112 ], [ %4, %83 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %119) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_er_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.sci_port, ptr %1, i32 0, i32 8, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %1, i32 noundef 3) #11
  %12 = and i32 %11, 65535
  %13 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 52
  %16 = select i1 %15, i32 0, i32 16
  %17 = and i32 %16, %11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call i32 @sci_br_interrupt(i32 noundef %0, ptr noundef %1)
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sci_port_params, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %12, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %204, label %28

28:                                               ; preds = %21, %2
  %29 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 52
  br i1 %31, label %32, label %171

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %1, i32 noundef 3) #11
  %36 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %37 = load ptr, ptr %36, align 4
  %38 = and i32 %35, 65535
  %39 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.sci_port_params, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %38, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.tty_bufhead, ptr %37, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tty_buffer, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.tty_buffer, ptr %50, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tty_buffer, ptr %50, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tty_buffer, ptr %50, i32 0, i32 6
  %63 = getelementptr i8, ptr %62, i32 %57
  %64 = getelementptr i8, ptr %63, i32 %59
  store i8 4, ptr %64, align 1
  %65 = load i32, ptr %56, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %56, align 4
  %67 = getelementptr i8, ptr %62, i32 %65
  store i8 0, ptr %67, align 1
  br label %72

68:                                               ; preds = %55, %45
  %69 = tail call i32 @__tty_insert_flip_char(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 4) #11
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %68, %61, %32
  %73 = phi i32 [ 0, %32 ], [ 1, %61 ], [ %71, %68 ]
  %74 = load i32, ptr %29, align 4
  %75 = icmp eq i32 %74, 52
  %76 = select i1 %75, i32 16, i32 8
  %77 = and i32 %76, %35
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.tty_bufhead, ptr %37, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %89, %79
  %96 = tail call i32 @__tty_insert_flip_char(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 2) #11
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = add nuw nsw i32 %73, %98
  br label %100

100:                                              ; preds = %95, %72
  %101 = phi i32 [ %73, %72 ], [ %99, %95 ]
  %102 = load i32, ptr %29, align 4
  %103 = icmp eq i32 %102, 52
  %104 = select i1 %103, i32 8, i32 4
  %105 = and i32 %104, %35
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %148, label %119

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 6
  %109 = getelementptr i8, ptr %108, i32 %91
  %110 = getelementptr i8, ptr %109, i32 %93
  store i8 2, ptr %110, align 1
  %111 = load i32, ptr %90, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %90, align 4
  %113 = getelementptr i8, ptr %108, i32 %111
  store i8 0, ptr %113, align 1
  %114 = load i32, ptr %29, align 4
  %115 = icmp eq i32 %114, 52
  %116 = select i1 %115, i32 8, i32 4
  %117 = and i32 %116, %35
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %107, %100
  %120 = phi i32 [ 1, %107 ], [ %101, %100 ]
  %121 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 8
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  %124 = getelementptr inbounds %struct.tty_bufhead, ptr %37, i32 0, i32 8
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.tty_buffer, ptr %125, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.tty_buffer, ptr %125, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.tty_buffer, ptr %125, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tty_buffer, ptr %125, i32 0, i32 6
  %138 = getelementptr i8, ptr %137, i32 %132
  %139 = getelementptr i8, ptr %138, i32 %134
  store i8 3, ptr %139, align 1
  %140 = load i32, ptr %131, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %131, align 4
  %142 = getelementptr i8, ptr %137, i32 %140
  store i8 0, ptr %142, align 1
  br label %150

143:                                              ; preds = %130, %119
  %144 = tail call i32 @__tty_insert_flip_char(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 3) #11
  %145 = icmp eq i32 %144, 0
  %146 = icmp eq i32 %120, 0
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %177, label %150

148:                                              ; preds = %100
  %149 = icmp eq i32 %101, 0
  br i1 %149, label %177, label %150

150:                                              ; preds = %148, %143, %136, %107
  tail call void @tty_flip_buffer_push(ptr noundef %37) #11
  %151 = load ptr, ptr %33, align 4
  %152 = tail call i32 %151(ptr noundef %1, i32 noundef 3) #11
  %153 = load i32, ptr %29, align 4
  %154 = icmp eq i32 %153, 52
  %155 = select i1 %154, i32 -68, i32 -4
  br i1 %154, label %167, label %156

156:                                              ; preds = %150
  %157 = load ptr, ptr %39, align 8
  %158 = getelementptr inbounds %struct.sci_port_params, ptr %157, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 512
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load ptr, ptr %33, align 4
  %163 = tail call i32 %162(ptr noundef %1, i32 noundef 3) #11
  %164 = and i32 %163, %155
  br label %167

165:                                              ; preds = %156
  %166 = and i32 %155, -65284
  br label %167

167:                                              ; preds = %165, %161, %150
  %168 = phi i32 [ %164, %161 ], [ %166, %165 ], [ -68, %150 ]
  %169 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  tail call void %170(ptr noundef %1, i32 noundef 3, i32 noundef %168) #11
  br label %177

171:                                              ; preds = %28
  %172 = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %1)
  %173 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 11
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  tail call fastcc void @sci_receive_chars(ptr noundef %1)
  br label %177

177:                                              ; preds = %176, %171, %167, %148, %143
  %178 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.sci_port_params, ptr %179, i32 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = load i32, ptr %29, align 4
  %183 = icmp eq i32 %182, 52
  br i1 %183, label %195, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.sci_port_params, ptr %179, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 512
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = tail call i32 %190(ptr noundef %1, i32 noundef 3) #11
  %192 = and i32 %191, %181
  br label %195

193:                                              ; preds = %184
  %194 = and i32 %181, -65281
  br label %195

195:                                              ; preds = %193, %188, %177
  %196 = phi i32 [ %192, %188 ], [ %194, %193 ], [ %181, %177 ]
  %197 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %198 = load ptr, ptr %197, align 4
  tail call void %198(ptr noundef %1, i32 noundef 3, i32 noundef %196) #11
  %199 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 10
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = tail call i32 @sci_tx_interrupt(i32 noundef %0, ptr noundef %1)
  br label %204

204:                                              ; preds = %202, %195, %21
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_rx_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %1, i32 noundef 2) #11
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 %10(ptr noundef %1, i32 noundef 3) #11
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %17 [
    i32 83, label %14
    i32 93, label %14
  ]

14:                                               ; preds = %6, %6
  tail call void @disable_irq_nosync(i32 noundef %0) #11
  %15 = and i32 %9, 49151
  %16 = or i32 %15, 16384
  br label %22

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @sci_dma_rx_submit(ptr noundef %1, i1 noundef zeroext false)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %17
  %21 = and i32 %9, 65471
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %20 ]
  %24 = and i32 %23, 65535
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %1, i32 noundef 2, i32 noundef %24) #11
  %27 = and i32 %11, 65534
  %28 = load i32, ptr %12, align 4
  %29 = icmp eq i32 %28, 52
  %30 = select i1 %29, i32 -66, i32 -4
  %31 = and i32 %27, %30
  %32 = load ptr, ptr %25, align 4
  tail call void %32(ptr noundef %1, i32 noundef 3, i32 noundef %31) #11
  %33 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 23
  %34 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 24
  %35 = load i32, ptr %34, align 8
  %36 = freeze i32 %35
  %37 = udiv i32 %36, 1000000
  %38 = mul i32 %37, 1000000
  %39 = sub i32 %36, %38
  %40 = mul nuw nsw i32 %39, 1000
  %41 = zext i32 %37 to i64
  %42 = mul nuw nsw i64 %41, 1000000000
  %43 = zext i32 %40 to i64
  %44 = add nuw nsw i64 %42, %43
  tail call void @hrtimer_start_range_ns(ptr noundef %33, i64 noundef %44, i64 noundef 0, i32 noundef 1) #11
  br label %85

45:                                               ; preds = %17, %2
  %46 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 26
  %47 = load i32, ptr %46, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 28
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr [20 x %struct.plat_sci_reg], ptr %55, i32 0, i32 17, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  br i1 %58, label %63, label %61

61:                                               ; preds = %53
  %62 = tail call i32 %60(ptr noundef %1, i32 noundef 17) #11
  br label %66

63:                                               ; preds = %53
  %64 = tail call i32 %60(ptr noundef %1, i32 noundef 4) #11
  %65 = and i32 %64, 192
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %65, %63 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, ptr %46, align 8
  %71 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %1, i32 noundef %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 27
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 25
  %76 = load i32, ptr %75, align 4
  %77 = mul i32 %76, 100
  %78 = load i32, ptr %50, align 8
  %79 = mul i32 %77, %78
  %80 = add i32 %79, 999999
  %81 = udiv i32 %80, 1000000
  %82 = add i32 %81, %74
  %83 = tail call i32 @mod_timer(ptr noundef %73, i32 noundef %82) #11
  br label %84

84:                                               ; preds = %72, %49, %45
  tail call fastcc void @sci_receive_chars(ptr noundef %1)
  br label %85

85:                                               ; preds = %84, %22
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_tx_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 19, i32 1
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 35
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ 1, %10 ], [ %18, %14 ]
  %21 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %1, i32 noundef 3) #11
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 52
  %27 = select i1 %26, i32 128, i32 32
  %28 = and i32 %27, %23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  %31 = load ptr, ptr %21, align 4
  %32 = tail call i32 %31(ptr noundef %1, i32 noundef 2) #11
  %33 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  %38 = and i32 %32, 65407
  %39 = or i32 %32, 128
  %40 = select i1 %37, i32 %38, i32 %39
  %41 = and i32 %40, 65535
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %1, i32 noundef 2, i32 noundef %41) #11
  br label %161

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 23
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr [20 x %struct.plat_sci_reg], ptr %48, i32 0, i32 9, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.sci_port_params, ptr %48, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 1
  %56 = add i32 %55, -1
  %57 = load ptr, ptr %21, align 4
  %58 = tail call i32 %57(ptr noundef %1, i32 noundef 9) #11
  %59 = and i32 %58, %56
  br label %73

60:                                               ; preds = %44
  %61 = getelementptr [20 x %struct.plat_sci_reg], ptr %48, i32 0, i32 5, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  %64 = load ptr, ptr %21, align 4
  br i1 %63, label %68, label %65

65:                                               ; preds = %60
  %66 = tail call i32 %64(ptr noundef %1, i32 noundef 5) #11
  %67 = ashr i32 %66, 8
  br label %73

68:                                               ; preds = %60
  %69 = tail call i32 %64(ptr noundef %1, i32 noundef 3) #11
  %70 = lshr i32 %69, 7
  %71 = and i32 %70, 1
  %72 = xor i32 %71, 1
  br label %73

73:                                               ; preds = %68, %65, %52
  %74 = phi i32 [ %59, %52 ], [ %67, %65 ], [ %72, %68 ]
  %75 = sub i32 %46, %74
  %76 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 24
  %77 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %78 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %79 = icmp ne i32 %20, 0
  %80 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %81 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 5
  br label %82

82:                                               ; preds = %98, %73
  %83 = phi i32 [ %75, %73 ], [ %104, %98 ]
  %84 = load i8, ptr %76, align 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i8 0, ptr %76, align 4
  br label %98

87:                                               ; preds = %82
  %88 = load i32, ptr %77, align 4
  %89 = load i32, ptr %78, align 4
  %90 = icmp eq i32 %88, %89
  %91 = select i1 %90, i1 true, i1 %79
  br i1 %91, label %106, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %6, align 4
  %94 = getelementptr i8, ptr %93, i32 %89
  %95 = load i8, ptr %94, align 1
  %96 = add i32 %89, 1
  %97 = and i32 %96, 4095
  store i32 %97, ptr %78, align 4
  br label %98

98:                                               ; preds = %92, %86
  %99 = phi i8 [ %84, %86 ], [ %95, %92 ]
  %100 = zext i8 %99 to i32
  %101 = load ptr, ptr %80, align 4
  tail call void %101(ptr noundef %1, i32 noundef 6, i32 noundef %100) #11
  %102 = load i32, ptr %81, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %81, align 4
  %104 = add i32 %83, -1
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %82, label %106

106:                                              ; preds = %98, %87
  %107 = load i32, ptr %24, align 4
  %108 = icmp eq i32 %107, 52
  %109 = select i1 %108, i32 -136, i32 -33
  br i1 %108, label %121, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %47, align 8
  %112 = getelementptr inbounds %struct.sci_port_params, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 512
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load ptr, ptr %21, align 4
  %117 = tail call i32 %116(ptr noundef %1, i32 noundef 3) #11
  %118 = and i32 %117, %109
  br label %121

119:                                              ; preds = %110
  %120 = and i32 %109, -65281
  br label %121

121:                                              ; preds = %119, %115, %106
  %122 = phi i32 [ %118, %115 ], [ %120, %119 ], [ -136, %106 ]
  %123 = load ptr, ptr %80, align 4
  tail call void %123(ptr noundef %1, i32 noundef 3, i32 noundef %122) #11
  %124 = load i32, ptr %77, align 4
  %125 = load i32, ptr %78, align 4
  %126 = sub i32 %124, %125
  %127 = and i32 %126, 3840
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  tail call void @uart_write_wakeup(ptr noundef %1) #11
  %130 = load i32, ptr %77, align 4
  %131 = load i32, ptr %78, align 4
  br label %132

132:                                              ; preds = %129, %121
  %133 = phi i32 [ %131, %129 ], [ %125, %121 ]
  %134 = phi i32 [ %130, %129 ], [ %124, %121 ]
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = load ptr, ptr %21, align 4
  %138 = tail call i32 %137(ptr noundef %1, i32 noundef 2) #11
  %139 = load i32, ptr %24, align 4
  switch i32 %139, label %142 [
    i32 83, label %140
    i32 93, label %140
  ]

140:                                              ; preds = %136, %136
  %141 = and i32 %138, 32767
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i32 [ %141, %140 ], [ %138, %136 ]
  %144 = and i32 %143, 65407
  %145 = load ptr, ptr %80, align 4
  tail call void %145(ptr noundef %1, i32 noundef 2, i32 noundef %144) #11
  %146 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 10
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 14
  %151 = load i32, ptr %150, align 4
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load ptr, ptr %147, align 4
  %155 = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 47
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = tail call i32 %156(ptr noundef nonnull %147) #11
  br label %160

160:                                              ; preds = %158, %153
  store i32 -22, ptr %150, align 4
  br label %161

161:                                              ; preds = %160, %149, %142, %132, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_br_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %1, i32 noundef 3) #11
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9(ptr noundef %1) #11
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 48
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.console, ptr %18, i32 0, i32 9
  %22 = load i16, ptr %21, align 2
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 46
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  store i32 0, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %20, %16, %12
  %33 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void @do_SAK(ptr noundef %39) #11
  br label %43

40:                                               ; preds = %27
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %41, 500
  store i32 %42, ptr %28, align 4
  br label %79

43:                                               ; preds = %37, %32
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 52
  %47 = select i1 %46, i32 0, i32 16
  %48 = and i32 %47, %5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 31, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.tty_buffer, ptr %55, i32 0, i32 6
  %68 = getelementptr i8, ptr %67, i32 %62
  %69 = getelementptr i8, ptr %68, i32 %64
  store i8 1, ptr %69, align 1
  %70 = load i32, ptr %61, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %61, align 4
  %72 = getelementptr i8, ptr %67, i32 %70
  store i8 0, ptr %72, align 1
  br label %76

73:                                               ; preds = %60, %50
  %74 = tail call i32 @__tty_insert_flip_char(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73, %66
  tail call void @tty_flip_buffer_push(ptr noundef %7) #11
  br label %77

77:                                               ; preds = %76, %73, %43
  %78 = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %1) #11
  br label %79

79:                                               ; preds = %77, %40
  %80 = load ptr, ptr %3, align 4
  %81 = tail call i32 %80(ptr noundef %1, i32 noundef 7) #11
  %82 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 52
  %85 = select i1 %84, i32 -60, i32 -29
  br i1 %84, label %98, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.sci_port_params, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 512
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load ptr, ptr %3, align 4
  %94 = tail call i32 %93(ptr noundef %1, i32 noundef 3) #11
  %95 = and i32 %94, %85
  br label %98

96:                                               ; preds = %86
  %97 = and i32 %85, -65305
  br label %98

98:                                               ; preds = %96, %92, %79
  %99 = phi i32 [ %95, %92 ], [ %97, %96 ], [ -60, %79 ]
  %100 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef %1, i32 noundef 3, i32 noundef %99) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_mpxed_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %1, i32 noundef 3) #11
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 %6(ptr noundef %1, i32 noundef 2) #11
  %8 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sci_port_params, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr [20 x %struct.plat_sci_reg], ptr %9, i32 0, i32 %11, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 %18(ptr noundef %1, i32 noundef %11) #11
  br label %20

20:                                               ; preds = %17, %13, %2
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.plat_sci_port, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 8
  %27 = or i32 %26, 64
  %28 = and i32 %27, %7
  %29 = and i32 %5, 65535
  %30 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 52
  %33 = select i1 %32, i32 128, i32 32
  %34 = and i32 %33, %5
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %7, 128
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call i32 @sci_tx_interrupt(i32 noundef %0, ptr noundef %1)
  %45 = load i32, ptr %30, align 4
  br label %46

46:                                               ; preds = %43, %39, %20
  %47 = phi i32 [ %31, %39 ], [ %45, %43 ], [ %31, %20 ]
  %48 = phi i32 [ 0, %39 ], [ 1, %43 ], [ 0, %20 ]
  %49 = icmp eq i32 %47, 52
  %50 = select i1 %49, i32 64, i32 3
  %51 = and i32 %50, %5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 11
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  %57 = and i32 %7, 64
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %65, label %63

60:                                               ; preds = %46
  %61 = and i32 %7, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %53
  %64 = tail call i32 @sci_rx_interrupt(i32 noundef %0, ptr noundef %1)
  br label %65

65:                                               ; preds = %63, %60, %53
  %66 = phi i32 [ 1, %63 ], [ %48, %60 ], [ %48, %53 ]
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds %struct.sci_port_params, ptr %67, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %29, %69
  %71 = icmp ne i32 %70, 0
  %72 = icmp ne i32 %28, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = tail call i32 @sci_er_interrupt(i32 noundef %0, ptr noundef %1)
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi i32 [ 1, %74 ], [ %66, %65 ]
  %78 = getelementptr inbounds %struct.sci_port, ptr %1, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.sci_port, ptr %1, i32 0, i32 8, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load i32, ptr %30, align 4
  %85 = icmp eq i32 %84, 52
  %86 = select i1 %85, i32 0, i32 16
  %87 = and i32 %86, %5
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %88, i1 %72, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = tail call i32 @sci_br_interrupt(i32 noundef %0, ptr noundef %1)
  br label %92

92:                                               ; preds = %90, %83, %76
  %93 = phi i32 [ 1, %90 ], [ %77, %83 ], [ %77, %76 ]
  %94 = and i32 %21, 65535
  %95 = load ptr, ptr %8, align 8
  %96 = getelementptr inbounds %struct.sci_port_params, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %94, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = tail call fastcc i32 @sci_handle_fifo_overrun(ptr noundef %1)
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi i32 [ 1, %100 ], [ %93, %92 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sci_handle_fifo_overrun(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sci_port_params, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [20 x %struct.plat_sci_reg], ptr %5, i32 0, i32 %7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef %7) #11
  %15 = and i32 %14, 65535
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.sci_port_params, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %11
  %22 = xor i32 %18, -1
  %23 = getelementptr inbounds %struct.sci_port_params, ptr %16, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %15, %22
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0, i32 noundef %24, i32 noundef %25) #11
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %45 = getelementptr i8, ptr %44, i32 %39
  %46 = getelementptr i8, ptr %45, i32 %41
  store i8 4, ptr %46, align 1
  %47 = load i32, ptr %38, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %38, align 4
  %49 = getelementptr i8, ptr %44, i32 %47
  store i8 0, ptr %49, align 1
  br label %52

50:                                               ; preds = %37, %21
  %51 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 4) #11
  br label %52

52:                                               ; preds = %50, %43
  tail call void @tty_flip_buffer_push(ptr noundef %3) #11
  br label %53

53:                                               ; preds = %52, %11, %1
  %54 = phi i32 [ 0, %1 ], [ 1, %52 ], [ 0, %11 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sci_receive_chars(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 3) #11
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 52
  %10 = select i1 %9, i32 64, i32 3
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %255, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 6
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 8
  %18 = getelementptr inbounds %struct.tty_bufhead, ptr %3, i32 0, i32 8
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 4
  br label %21

21:                                               ; preds = %224, %13
  %22 = phi i32 [ %227, %224 ], [ 0, %13 ]
  %23 = load ptr, ptr %14, align 8
  %24 = getelementptr inbounds %struct.sci_port_params, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 1
  %27 = add i32 %26, -1
  %28 = getelementptr [20 x %struct.plat_sci_reg], ptr %23, i32 0, i32 10, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %4, align 4
  %33 = tail call i32 %32(ptr noundef %0, i32 noundef 10) #11
  %34 = and i32 %33, %27
  br label %51

35:                                               ; preds = %21
  %36 = getelementptr [20 x %struct.plat_sci_reg], ptr %23, i32 0, i32 5, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %4, align 4
  br i1 %38, label %43, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %39(ptr noundef %0, i32 noundef 5) #11
  %42 = and i32 %41, %27
  br label %51

43:                                               ; preds = %35
  %44 = tail call i32 %39(ptr noundef %0, i32 noundef 3) #11
  %45 = load i32, ptr %7, align 4
  %46 = icmp eq i32 %45, 52
  %47 = select i1 %46, i32 64, i32 3
  %48 = and i32 %47, %44
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %43, %40, %31
  %52 = phi i32 [ %34, %31 ], [ %42, %40 ], [ %50, %43 ]
  %53 = tail call i32 @tty_buffer_request_room(ptr noundef %3, i32 noundef %52) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %230, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %7, align 4
  %57 = icmp eq i32 %56, 52
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = icmp sgt i32 %53, 0
  br i1 %59, label %104, label %206

60:                                               ; preds = %55
  %61 = load ptr, ptr %4, align 4
  %62 = tail call i32 %61(ptr noundef %0, i32 noundef 7) #11
  %63 = and i32 %62, 255
  %64 = load i32, ptr %15, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %66
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = sub i32 %69, %64
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = tail call i32 @sysrq_mask() #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %63) #11
  br i1 %76, label %206, label %77

77:                                               ; preds = %75, %68, %66
  store i32 0, ptr %15, align 4
  br label %79

78:                                               ; preds = %72
  tail call void @handle_sysrq(i32 noundef %63) #11
  store i32 0, ptr %15, align 4
  br label %206

79:                                               ; preds = %77, %60
  %80 = trunc i32 %62 to i8
  %81 = load ptr, ptr %18, align 4
  %82 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 6
  %94 = getelementptr i8, ptr %93, i32 %83
  %95 = getelementptr i8, ptr %94, i32 %85
  store i8 0, ptr %95, align 1
  %96 = load i32, ptr %82, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i32 [ %96, %92 ], [ %83, %87 ]
  %99 = add i32 %98, 1
  store i32 %99, ptr %82, align 4
  %100 = getelementptr inbounds %struct.tty_buffer, ptr %81, i32 0, i32 6
  %101 = getelementptr i8, ptr %100, i32 %98
  store i8 %80, ptr %101, align 1
  br label %206

102:                                              ; preds = %79
  %103 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext %80, i8 noundef zeroext 0) #11
  br label %206

104:                                              ; preds = %204, %58
  %105 = phi i32 [ %205, %204 ], [ %56, %58 ]
  %106 = phi i32 [ %201, %204 ], [ %53, %58 ]
  %107 = phi i32 [ %202, %204 ], [ 0, %58 ]
  switch i32 %105, label %113 [
    i32 53, label %108
    i32 104, label %108
  ]

108:                                              ; preds = %104, %104
  %109 = load ptr, ptr %4, align 4
  %110 = tail call i32 %109(ptr noundef %0, i32 noundef 3) #11
  %111 = load ptr, ptr %4, align 4
  %112 = tail call i32 %111(ptr noundef %0, i32 noundef 7) #11
  br label %118

113:                                              ; preds = %104
  %114 = load ptr, ptr %4, align 4
  %115 = tail call i32 %114(ptr noundef %0, i32 noundef 7) #11
  %116 = load ptr, ptr %4, align 4
  %117 = tail call i32 %116(ptr noundef %0, i32 noundef 3) #11
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i32 [ %110, %108 ], [ %117, %113 ]
  %120 = phi i32 [ %112, %108 ], [ %115, %113 ]
  %121 = trunc i32 %120 to i8
  %122 = and i32 %120, 255
  %123 = load i32, ptr %15, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %118
  %126 = icmp eq i32 %122, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %125
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = sub i32 %128, %123
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = tail call i32 @sysrq_mask() #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %0, i32 noundef %122) #11
  br i1 %135, label %138, label %136

136:                                              ; preds = %134, %127, %125
  store i32 0, ptr %15, align 4
  br label %141

137:                                              ; preds = %131
  tail call void @handle_sysrq(i32 noundef %122) #11
  store i32 0, ptr %15, align 4
  br label %138

138:                                              ; preds = %137, %134
  %139 = add nsw i32 %106, -1
  %140 = add i32 %107, -1
  br label %199

141:                                              ; preds = %136, %118
  %142 = load i32, ptr %7, align 4
  %143 = icmp eq i32 %142, 52
  %144 = select i1 %143, i32 16, i32 8
  %145 = and i32 %144, %119
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = select i1 %143, i32 8, i32 4
  %149 = and i32 %148, %119
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %147, %141
  %152 = phi ptr [ %16, %141 ], [ %17, %147 ]
  %153 = phi i8 [ 2, %141 ], [ 3, %147 ]
  %154 = load i32, ptr %152, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %152, align 4
  %156 = load ptr, ptr %18, align 4
  %157 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 5
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %196

161:                                              ; preds = %147
  %162 = load ptr, ptr %18, align 4
  %163 = getelementptr inbounds %struct.tty_buffer, ptr %162, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.tty_buffer, ptr %162, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %174, label %196

168:                                              ; preds = %151
  %169 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.tty_buffer, ptr %156, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %179, label %196

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct.tty_buffer, ptr %162, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174, %168
  %180 = phi ptr [ %162, %174 ], [ %156, %168 ]
  %181 = phi i8 [ 0, %174 ], [ %153, %168 ]
  %182 = phi ptr [ %163, %174 ], [ %169, %168 ]
  %183 = phi i32 [ %164, %174 ], [ %170, %168 ]
  %184 = phi i32 [ %166, %174 ], [ %172, %168 ]
  %185 = getelementptr inbounds %struct.tty_buffer, ptr %180, i32 0, i32 6
  %186 = getelementptr i8, ptr %185, i32 %183
  %187 = getelementptr i8, ptr %186, i32 %184
  store i8 %181, ptr %187, align 1
  %188 = load i32, ptr %182, align 4
  br label %189

189:                                              ; preds = %179, %174
  %190 = phi ptr [ %180, %179 ], [ %162, %174 ]
  %191 = phi ptr [ %182, %179 ], [ %163, %174 ]
  %192 = phi i32 [ %188, %179 ], [ %164, %174 ]
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 4
  %194 = getelementptr inbounds %struct.tty_buffer, ptr %190, i32 0, i32 6
  %195 = getelementptr i8, ptr %194, i32 %192
  store i8 %121, ptr %195, align 1
  br label %199

196:                                              ; preds = %168, %161, %151
  %197 = phi i8 [ 0, %161 ], [ %153, %151 ], [ %153, %168 ]
  %198 = tail call i32 @__tty_insert_flip_char(ptr noundef %3, i8 noundef zeroext %121, i8 noundef zeroext %197) #11
  br label %199

199:                                              ; preds = %196, %189, %138
  %200 = phi i32 [ %140, %138 ], [ %107, %189 ], [ %107, %196 ]
  %201 = phi i32 [ %139, %138 ], [ %106, %189 ], [ %106, %196 ]
  %202 = add i32 %200, 1
  %203 = icmp slt i32 %202, %201
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, ptr %7, align 4
  br label %104

206:                                              ; preds = %199, %102, %97, %78, %75, %58
  %207 = phi i32 [ 0, %78 ], [ %53, %97 ], [ %53, %102 ], [ 0, %75 ], [ %53, %58 ], [ %201, %199 ]
  %208 = load ptr, ptr %4, align 4
  %209 = tail call i32 %208(ptr noundef %0, i32 noundef 3) #11
  %210 = load i32, ptr %7, align 4
  %211 = icmp eq i32 %210, 52
  %212 = select i1 %211, i32 -68, i32 -4
  br i1 %211, label %224, label %213

213:                                              ; preds = %206
  %214 = load ptr, ptr %14, align 8
  %215 = getelementptr inbounds %struct.sci_port_params, ptr %214, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 512
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load ptr, ptr %4, align 4
  %220 = tail call i32 %219(ptr noundef %0, i32 noundef 3) #11
  %221 = and i32 %220, %212
  br label %224

222:                                              ; preds = %213
  %223 = and i32 %212, -65284
  br label %224

224:                                              ; preds = %222, %218, %206
  %225 = phi i32 [ %221, %218 ], [ %223, %222 ], [ -68, %206 ]
  %226 = load ptr, ptr %19, align 4
  tail call void %226(ptr noundef %0, i32 noundef 3, i32 noundef %225) #11
  %227 = add i32 %207, %22
  %228 = load i32, ptr %20, align 4
  %229 = add i32 %228, %207
  store i32 %229, ptr %20, align 4
  br label %21

230:                                              ; preds = %51
  %231 = icmp eq i32 %22, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %230
  tail call void @tty_flip_buffer_push(ptr noundef %3) #11
  br label %255

233:                                              ; preds = %230
  %234 = load ptr, ptr %4, align 4
  %235 = tail call i32 %234(ptr noundef %0, i32 noundef 7) #11
  %236 = load ptr, ptr %4, align 4
  %237 = tail call i32 %236(ptr noundef %0, i32 noundef 3) #11
  %238 = load i32, ptr %7, align 4
  %239 = icmp eq i32 %238, 52
  %240 = select i1 %239, i32 -68, i32 -4
  br i1 %239, label %252, label %241

241:                                              ; preds = %233
  %242 = load ptr, ptr %14, align 8
  %243 = getelementptr inbounds %struct.sci_port_params, ptr %242, i32 0, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 512
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load ptr, ptr %4, align 4
  %248 = tail call i32 %247(ptr noundef %0, i32 noundef 3) #11
  %249 = and i32 %248, %240
  br label %252

250:                                              ; preds = %241
  %251 = and i32 %240, -65284
  br label %252

252:                                              ; preds = %250, %246, %233
  %253 = phi i32 [ %249, %246 ], [ %251, %250 ], [ -68, %233 ]
  %254 = load ptr, ptr %19, align 4
  tail call void %254(ptr noundef %0, i32 noundef 3, i32 noundef %253) #11
  br label %255

255:                                              ; preds = %252, %232, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scif_set_rtrg(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  %6 = add i32 %4, -1
  %7 = select i1 %5, i32 %1, i32 %6
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr [20 x %struct.plat_sci_reg], ptr %10, i32 0, i32 17, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i32 noundef 17, i32 noundef %8) #11
  br label %47

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %36 [
    i32 53, label %20
    i32 83, label %28
    i32 93, label %28
  ]

20:                                               ; preds = %17
  %21 = icmp ult i32 %8, 4
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %8, 8
  br i1 %23, label %37, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %8, 14
  %26 = select i1 %25, i32 8, i32 14
  %27 = select i1 %25, i32 128, i32 192
  br label %37

28:                                               ; preds = %17, %17
  %29 = icmp ult i32 %8, 16
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = icmp ult i32 %8, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = icmp ult i32 %8, 48
  %34 = select i1 %33, i32 32, i32 48
  %35 = select i1 %33, i32 128, i32 192
  br label %37

36:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1065, i32 noundef 9, ptr noundef nonnull @.str.33) #11
  br label %47

37:                                               ; preds = %32, %30, %28, %24, %22, %20
  %38 = phi i32 [ 1, %20 ], [ 4, %22 ], [ %26, %24 ], [ 1, %28 ], [ 16, %30 ], [ %34, %32 ]
  %39 = phi i32 [ 0, %20 ], [ 64, %22 ], [ %27, %24 ], [ 0, %28 ], [ 64, %30 ], [ %35, %32 ]
  %40 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef 4) #11
  %43 = and i32 %42, -193
  %44 = or i32 %43, %39
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %0, i32 noundef 4, i32 noundef %44) #11
  br label %47

47:                                               ; preds = %37, %36, %14
  %48 = phi i32 [ %8, %14 ], [ 1, %36 ], [ %38, %37 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_disable_ms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sci_port_enable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %3, i32 noundef 4) #11
  %7 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call i32 @clk_enable(ptr noundef %8) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %15

15:                                               ; preds = %14, %11, %5
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 @clk_get_rate(ptr noundef %16) #11
  %18 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 0
  store i32 %17, ptr %18, align 4
  %19 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = tail call i32 @clk_enable(ptr noundef %20) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #11
  br label %27

27:                                               ; preds = %26, %23, %15
  %28 = load ptr, ptr %19, align 4
  %29 = tail call i32 @clk_get_rate(ptr noundef %28) #11
  %30 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = tail call i32 @clk_enable(ptr noundef %32) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #11
  br label %39

39:                                               ; preds = %38, %35, %27
  %40 = load ptr, ptr %31, align 4
  %41 = tail call i32 @clk_get_rate(ptr noundef %40) #11
  %42 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @clk_prepare(ptr noundef %44) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = tail call i32 @clk_enable(ptr noundef %44) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @clk_unprepare(ptr noundef %44) #11
  br label %51

51:                                               ; preds = %50, %47, %39
  %52 = load ptr, ptr %43, align 4
  %53 = tail call i32 @clk_get_rate(ptr noundef %52) #11
  %54 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 7, i32 3
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %18, align 4
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_frame_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sci_port_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %10 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %12 = getelementptr %struct.sci_port, ptr %0, i32 0, i32 6, i32 0
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  %14 = load ptr, ptr %2, align 8
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #11
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_fifo_timer_fn(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -588
  %3 = tail call fastcc i32 @scif_set_rtrg(ptr noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_fifo_trigger_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sci_port, ptr %5, i32 0, i32 26
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_fifo_trigger_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !19
  %8 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = call fastcc i32 @scif_set_rtrg(ptr noundef %7, i32 noundef %11)
  %13 = getelementptr inbounds %struct.sci_port, ptr %7, i32 0, i32 26
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 38
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %18 [
    i32 83, label %16
    i32 93, label %16
  ]

16:                                               ; preds = %10, %10
  %17 = call fastcc i32 @scif_set_rtrg(ptr noundef %7, i32 noundef 1)
  br label %18

18:                                               ; preds = %16, %10, %4
  %19 = phi i32 [ %8, %4 ], [ %3, %10 ], [ %3, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_fifo_timeout_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 38
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 104
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sci_port, ptr %5, i32 0, i32 29
  %11 = load i16, ptr %10, align 4
  %12 = lshr i16 %11, 14
  %13 = zext i16 %12 to i32
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sci_port, ptr %5, i32 0, i32 28
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %13, %9 ], [ %16, %14 ]
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_fifo_timeout_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !19
  %8 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 38
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 104
  %14 = load i32, ptr %5, align 4
  br i1 %13, label %15, label %21

15:                                               ; preds = %10
  %16 = icmp ugt i32 %14, 3
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = trunc i32 %14 to i16
  %19 = shl nuw i16 %18, 14
  %20 = getelementptr inbounds %struct.sci_port, ptr %7, i32 0, i32 29
  store i16 %19, ptr %20, align 4
  br label %28

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.sci_port, ptr %7, i32 0, i32 28
  store i32 %14, ptr %22, align 8
  %23 = call fastcc i32 @scif_set_rtrg(ptr noundef %7, i32 noundef 1)
  %24 = load i32, ptr %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sci_port, ptr %7, i32 0, i32 27
  call void @init_timer_key(ptr noundef %27, ptr noundef nonnull @rx_fifo_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %28

28:                                               ; preds = %26, %21, %17, %15, %4
  %29 = phi i32 [ %8, %4 ], [ -22, %15 ], [ %3, %21 ], [ %3, %26 ], [ %3, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_suspend_port(ptr noundef nonnull @sci_uart_driver, ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sci_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_resume_port(ptr noundef nonnull @sci_uart_driver, ptr noundef nonnull %3) #11
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial_console_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 46
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, ptr @oops_in_progress, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %16 = tail call i32 @_raw_spin_trylock(ptr noundef %7) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #11, !srcloc !27
  br label %21

19:                                               ; preds = %11
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  br label %21

21:                                               ; preds = %19, %18, %14, %3
  %22 = phi i1 [ true, %18 ], [ false, %14 ], [ true, %3 ], [ false, %19 ]
  %23 = phi i32 [ %15, %18 ], [ %15, %14 ], [ 0, %3 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %7, i32 noundef 2) #11
  %27 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %6, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.plat_sci_port, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 65484
  %32 = and i32 %26, 65535
  %33 = and i32 %26, 3
  %34 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %6, i32 29
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = or i32 %33, %31
  %38 = or i32 %37, %36
  %39 = or i32 %38, 48
  %40 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 4
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef %7, i32 noundef 2, i32 noundef %39) #11
  tail call void @uart_console_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @serial_console_putchar) #11
  %42 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 38
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 52
  %45 = load ptr, ptr %24, align 4
  %46 = tail call i32 %45(ptr noundef %7, i32 noundef 3) #11
  %47 = select i1 %44, i32 132, i32 96
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, %47
  br i1 %49, label %55, label %50

50:                                               ; preds = %50, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !29
  %51 = load ptr, ptr %24, align 4
  %52 = tail call i32 %51(ptr noundef %7, i32 noundef 3) #11
  %53 = and i32 %52, %47
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %55, label %50

55:                                               ; preds = %50, %21
  %56 = load ptr, ptr %40, align 8
  tail call void %56(ptr noundef %7, i32 noundef 2, i32 noundef %32) #11
  br i1 %22, label %58, label %57

57:                                               ; preds = %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %23) #11
  br label %58

58:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @serial_console_setup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 115200, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 8, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 110, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 110, ptr %6, align 4
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 19
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = zext i16 %8 to i32
  %12 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 39
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 45
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 33
  %28 = load i32, ptr %27, align 8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 43
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr [20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 %11, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @ioremap(i32 noundef %32, i32 noundef %34) #11
  store ptr %35, ptr %17, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %45, !prof !9

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 43
  %39 = load i32, ptr %38, align 8
  %40 = inttoptr i32 %39 to ptr
  store ptr %40, ptr %17, align 8
  br label %45

41:                                               ; preds = %30
  %42 = load ptr, ptr %21, align 8
  %43 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 41
  %44 = load i32, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41, i32 noundef %44) #13
  br label %58

45:                                               ; preds = %37, %30, %16
  %46 = icmp eq ptr %1, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %5, align 4
  %50 = load i32, ptr %4, align 4
  %51 = load i32, ptr %6, align 4
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i32 [ %51, %47 ], [ 110, %45 ]
  %54 = phi i32 [ %50, %47 ], [ 8, %45 ]
  %55 = phi i32 [ %49, %47 ], [ 110, %45 ]
  %56 = phi i32 [ %48, %47 ], [ 115200, %45 ]
  %57 = call i32 @uart_set_options(ptr noundef %12, ptr noundef %0, i32 noundef %56, i32 noundef %55, i32 noundef %54, i32 noundef %53) #11
  br label %58

58:                                               ; preds = %52, %41, %10, %2
  %59 = phi i32 [ %57, %52 ], [ -19, %2 ], [ -19, %10 ], [ -6, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @serial_console_putchar(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  br label %5

5:                                                ; preds = %5, %2
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 3) #11
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 52
  %10 = select i1 %9, i32 128, i32 32
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %5
  %14 = and i32 %1, 255
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i32 noundef 6, i32 noundef %14) #11
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 52
  %19 = select i1 %18, i32 -136, i32 -97
  br i1 %18, label %32, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sci_port, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sci_port_params, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 512
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 3) #11
  %29 = and i32 %28, %19
  br label %32

30:                                               ; preds = %20
  %31 = and i32 %19, -65281
  br label %32

32:                                               ; preds = %30, %26, %13
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ], [ -136, %13 ]
  %34 = load ptr, ptr %15, align 4
  tail call void %34(ptr noundef %0, i32 noundef 3, i32 noundef %33) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @early_console_setup(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 3
  store ptr @sci_serial_in, ptr %8, align 4
  %9 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 4
  store ptr @sci_serial_out, ptr %9, align 4
  %10 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 38
  store i32 %1, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(320) @sci_ports, ptr noundef align 4 dereferenceable(320) %7, i32 320, i1 false)
  store i32 %1, ptr @port_cfg, align 4
  store ptr @port_cfg, ptr getelementptr inbounds ([20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 0, i32 2), align 4
  %11 = tail call fastcc ptr @sci_probe_regmap(ptr noundef nonnull @port_cfg)
  store ptr %11, ptr getelementptr inbounds ([20 x %struct.sci_port], ptr @sci_ports, i32 0, i32 0, i32 1), align 8
  %12 = tail call i32 @sci_serial_in(ptr noundef nonnull @sci_ports, i32 noundef 2)
  store i32 %12, ptr getelementptr inbounds (%struct.plat_sci_port, ptr @port_cfg, i32 0, i32 3), align 4
  %13 = or i32 %12, 48
  tail call void @sci_serial_out(ptr noundef nonnull @sci_ports, i32 noundef 2, i32 noundef %13)
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.console, ptr %14, i32 0, i32 1
  store ptr @serial_console_write, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 5438318}
!12 = !{i64 2152969555}
!13 = !{i64 5437700}
!14 = !{i64 2152970028}
!15 = !{i64 2152970853}
!16 = !{i64 5437923}
!17 = !{i64 2152971250}
!18 = !{i64 5437500}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148963378}
!22 = !{i64 2148959202}
!23 = !{i64 2148959277, i64 2148959304, i64 2148959351, i64 2148959373, i64 2148959401, i64 2148959421}
!24 = !{i64 420310}
!25 = !{i64 2148987522}
!26 = !{i64 420065, i64 420126}
!27 = !{i64 423082}
!28 = !{i64 2153861566}
!29 = !{i64 2153861408}
