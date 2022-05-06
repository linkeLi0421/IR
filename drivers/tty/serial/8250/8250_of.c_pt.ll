; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_of.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_serial_info = type { ptr, ptr, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__initcall__kmod_8250_of__227_350_of_platform_serial_driver_init6 = internal global ptr @of_platform_serial_driver_init, section ".initcall6.init", align 4
@of_platform_serial_driver = internal global %struct.platform_driver { ptr @of_platform_serial_probe, ptr @of_platform_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_platform_serial_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @of_serial_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_of_platform_serial_driver_exit = internal global ptr @of_platform_serial_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [45 x i8] c"8250_of.author=Arnd Bergmann <arnd@arndb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [45 x i8] c"8250_of.file=drivers/tty/serial/8250/8250_of\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"8250_of.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [74 x i8] c"8250_of.description=Serial Port driver for Open Firmware platform devices\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"of_serial\00", align 1
@of_platform_serial_table = internal constant [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns8250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16550a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16750\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ns16850\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ralink,rt2880-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 29 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,xscale-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 26 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 27 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,16550-FIFO128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 28 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-btif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 117 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 95 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,wpcm450-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 40 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 40 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@of_serial_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @of_serial_suspend, ptr @of_serial_resume, ptr @of_serial_suspend, ptr @of_serial_resume, ptr @of_serial_suspend, ptr @of_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"brcm,bcm7271-uart\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"used-by-rtas\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tx-threshold\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"overrun-throttle-ms\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"invalid address\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"reg-offset %u exceeds region size %pa\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"unsupported reg-io-width (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"mrvl,mmp-uart\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"no-loopback-test\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"fsl,ns16550\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"fsl,16550-FIFO64\00", align 1
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_of_platform_serial_driver_exit, ptr @__initcall__kmod_8250_of__227_350_of_platform_serial_driver_init6, ptr @of_platform_serial_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_platform_serial_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_platform_serial_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_platform_serial_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @of_platform_serial_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_platform_serial_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_8250_port, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 460, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.1) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %226

13:                                               ; preds = %1
  %14 = tail call ptr @of_device_get_match_data(ptr noundef %8) #7
  %15 = ptrtoint ptr %14 to i32
  %16 = icmp eq ptr %14, null
  br i1 %16, label %226, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %9, align 8
  %19 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %226

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 16) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %226, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %6, i32 320
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(460) %26, i8 0, i32 140, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #7, !annotation !8
  %27 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(320) %6, i8 0, i32 320, i1 false) #7
  tail call void @pm_runtime_enable(ptr noundef %8) #7
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #7
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %50, label %31

31:                                               ; preds = %25
  %32 = call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #7
  store ptr %32, ptr %23, align 8
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = icmp eq ptr %32, inttoptr (i32 -517 to ptr)
  br i1 %35, label %177, label %36

36:                                               ; preds = %34
  %37 = ptrtoint ptr %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %37) #9
  br label %177

38:                                               ; preds = %31
  %39 = call i32 @clk_prepare(ptr noundef %32) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 @clk_enable(ptr noundef %32) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  call void @clk_unprepare(ptr noundef %32) #7
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ %39, %38 ], [ %42, %44 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %177, label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @clk_get_rate(ptr noundef %32) #7
  store i32 %49, ptr %3, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4
  %55 = load i32, ptr %4, align 4
  %56 = shl i32 %55, 4
  %57 = udiv i32 %54, %56
  %58 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 40
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = call i32 @of_address_to_resource(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %2) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.9) #9
  br label %173

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 33
  store i32 956301312, ptr %64, align 4
  store i32 0, ptr %6, align 4
  %65 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 7936
  %68 = icmp eq i32 %67, 256
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 0, ptr %70, align 2
  %71 = load i32, ptr %2, align 4
  %72 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 1
  store i32 %71, ptr %72, align 4
  br label %108

73:                                               ; preds = %63
  %74 = load i32, ptr %2, align 4
  %75 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 43
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 1, %74
  %79 = add i32 %78, %77
  %80 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 44
  store i32 %79, ptr %80, align 4
  %81 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load i32, ptr %5, align 4
  %85 = load i32, ptr %80, align 4
  %86 = icmp ugt i32 %85, %84
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %84, ptr noundef %80) #9
  br label %173

88:                                               ; preds = %83
  %89 = load i32, ptr %75, align 4
  %90 = add i32 %89, %84
  store i32 %90, ptr %75, align 4
  %91 = sub i32 %85, %84
  store i32 %91, ptr %80, align 4
  br label %92

92:                                               ; preds = %88, %73
  %93 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 2, ptr %93, align 2
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, ptr %5, align 4
  switch i32 %97, label %102 [
    i32 1, label %103
    i32 2, label %98
    i32 4, label %99
  ]

98:                                               ; preds = %96
  br label %103

99:                                               ; preds = %96
  %100 = call zeroext i1 @of_device_is_big_endian(ptr noundef %27) #7
  %101 = select i1 %100, i8 6, i8 3
  br label %103

102:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %97) #9
  br label %173

103:                                              ; preds = %99, %98, %96
  %104 = phi i8 [ 7, %98 ], [ %101, %99 ], [ 2, %96 ]
  store i8 %104, ptr %93, align 2
  br label %105

105:                                              ; preds = %103, %92
  %106 = load i32, ptr %64, align 4
  %107 = or i32 %106, -2147483648
  store i32 %107, ptr %64, align 4
  br label %108

108:                                              ; preds = %105, %69
  %109 = call i32 @of_device_is_compatible(ptr noundef %27, ptr noundef nonnull @.str.14) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 25
  store i8 2, ptr %112, align 1
  br label %113

113:                                              ; preds = %111, %108
  %114 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, ptr %5, align 4
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 25
  store i8 %118, ptr %119, align 1
  br label %120

120:                                              ; preds = %116, %113
  %121 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, ptr %5, align 4
  %125 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 23
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = call i32 @of_alias_get_id(ptr noundef %27, ptr noundef nonnull @.str.17) #7
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  store i32 %127, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = call i32 @of_irq_get(ptr noundef %27, i32 noundef 0) #7
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = icmp eq i32 %132, -517
  br i1 %135, label %173, label %136

136:                                              ; preds = %134, %131
  %137 = phi i32 [ %132, %131 ], [ 0, %134 ]
  %138 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 20
  store i32 %137, ptr %138, align 4
  %139 = call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %140 = getelementptr inbounds %struct.of_serial_info, ptr %23, i32 0, i32 1
  store ptr %139, ptr %140, align 4
  %141 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = ptrtoint ptr %139 to i32
  br label %173

144:                                              ; preds = %136
  %145 = call i32 @reset_control_deassert(ptr noundef %139) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 38
  store i32 %15, ptr %148, align 4
  %149 = load i32, ptr %3, align 4
  %150 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 22
  store i32 %149, ptr %150, align 4
  %151 = call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i32, ptr %64, align 4
  %155 = or i32 %154, 64
  store i32 %155, ptr %64, align 4
  br label %156

156:                                              ; preds = %153, %147
  %157 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 45
  store ptr %8, ptr %157, align 4
  %158 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 18
  store ptr @serial8250_em485_config, ptr %158, align 4
  %159 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 24
  store ptr @serial8250_em485_start_tx, ptr %159, align 4
  %160 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 25
  store ptr @serial8250_em485_stop_tx, ptr %160, align 4
  %161 = icmp eq ptr %14, inttoptr (i32 29 to ptr)
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 26
  store i8 4, ptr %163, align 2
  br label %164

164:                                              ; preds = %162, %156
  %165 = call i32 @of_device_is_compatible(ptr noundef %27, ptr noundef nonnull @.str.19) #7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = call i32 @of_device_is_compatible(ptr noundef %27, ptr noundef nonnull @.str.20) #7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %167, %164
  %171 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 15
  store ptr @fsl8250_handle_irq, ptr %171, align 4
  %172 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 48
  store i8 1, ptr %172, align 4
  br label %176

173:                                              ; preds = %144, %142, %134, %102, %87, %62
  %174 = phi i32 [ %60, %62 ], [ %143, %142 ], [ %145, %144 ], [ -22, %87 ], [ -22, %102 ], [ -517, %134 ]
  %175 = load ptr, ptr %23, align 8
  call void @clk_disable(ptr noundef %175) #7
  call void @clk_unprepare(ptr noundef %175) #7
  br label %177

176:                                              ; preds = %170, %167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  br label %181

177:                                              ; preds = %173, %45, %36, %34
  %178 = phi i32 [ %37, %36 ], [ -517, %34 ], [ %46, %45 ], [ %174, %173 ]
  %179 = call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #7
  call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %181, label %224

181:                                              ; preds = %177, %176
  %182 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 23
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 3
  store i32 256, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = load ptr, ptr %9, align 8
  %189 = call i32 @of_property_read_variable_u32_array(ptr noundef %188, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #7
  %190 = icmp sgt i32 %189, -1
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32, ptr %7, align 4
  %193 = load i32, ptr %182, align 4
  %194 = icmp ugt i32 %193, %192
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = sub i32 %193, %192
  %197 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 6
  store i32 %196, ptr %197, align 4
  br label %198

198:                                              ; preds = %195, %191, %187
  %199 = load ptr, ptr %9, align 8
  %200 = call ptr @of_find_property(ptr noundef %199, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = or i32 %204, 2048
  store i32 %205, ptr %203, align 4
  br label %206

206:                                              ; preds = %202, %198
  %207 = load ptr, ptr %9, align 8
  %208 = getelementptr inbounds %struct.uart_8250_port, ptr %6, i32 0, i32 27
  %209 = call i32 @of_property_read_variable_u32_array(ptr noundef %207, ptr noundef nonnull @.str.5, ptr noundef %208, i32 noundef 1, i32 noundef 0) #7
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %212, label %211

211:                                              ; preds = %206
  store i32 0, ptr %208, align 4
  br label %212

212:                                              ; preds = %211, %206
  %213 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %6) #7
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.of_serial_info, ptr %23, i32 0, i32 2
  store i32 %15, ptr %216, align 8
  %217 = getelementptr inbounds %struct.of_serial_info, ptr %23, i32 0, i32 3
  store i32 %213, ptr %217, align 4
  %218 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %23, ptr %218, align 8
  br label %226

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 20
  %221 = load i32, ptr %220, align 4
  call void @irq_dispose_mapping(i32 noundef %221) #7
  %222 = call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #7
  call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #7
  %223 = load ptr, ptr %23, align 8
  call void @clk_disable(ptr noundef %223) #7
  call void @clk_unprepare(ptr noundef %223) #7
  br label %224

224:                                              ; preds = %219, %177
  %225 = phi i32 [ %178, %177 ], [ %213, %219 ]
  call void @kfree(ptr noundef nonnull %23) #7
  br label %226

226:                                              ; preds = %224, %215, %21, %17, %13, %1
  %227 = phi i32 [ %225, %224 ], [ 0, %215 ], [ -19, %1 ], [ -22, %13 ], [ -16, %17 ], [ -12, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 460, ptr nonnull %6) #7
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_platform_serial_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.of_serial_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #7
  %6 = getelementptr inbounds %struct.of_serial_info, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  %11 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_start_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_stop_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl8250_handle_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_serial_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.of_serial_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @serial8250_get_port(i32 noundef %5) #7
  %7 = load i32, ptr %4, align 4
  tail call void @serial8250_suspend_port(i32 noundef %7) #7
  %8 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 9
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  %18 = load i8, ptr @console_suspend_enabled, align 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %24, label %21

21:                                               ; preds = %11, %1
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  %23 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %21, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_serial_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.of_serial_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @serial8250_get_port(i32 noundef %5) #7
  %7 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 9
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %13
  %17 = load i8, ptr @console_suspend_enabled, align 1
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %29, label %20

20:                                               ; preds = %10, %1
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #7
  %22 = load ptr, ptr %3, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #7
  br label %29

29:                                               ; preds = %28, %25, %20, %10
  %30 = load i32, ptr %4, align 4
  tail call void @serial8250_resume_port(i32 noundef %30) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
