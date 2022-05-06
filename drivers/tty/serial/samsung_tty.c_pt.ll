; ModuleID = '/llk/IR/drivers/tty/serial/samsung_tty.c_pt.bc'
source_filename = "../drivers/tty/serial/samsung_tty.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.s3c24xx_uart_port = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.uart_port, ptr, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.s3c24xx_serial_drv_data = type { ptr, ptr, [4 x i32] }
%struct.s3c24xx_uart_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.samsung_early_console_data = type { i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.s3c24xx_uart_dma = type { i32, i32, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@samsung_serial_driver = internal global %struct.platform_driver { ptr @s3c24xx_serial_probe, ptr @s3c24xx_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c24xx_uart_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_pm_ops, ptr null, ptr null }, ptr @s3c24xx_serial_driver_ids, i8 0 }, align 4
@__initcall__kmod_samsung_tty__242_2930_samsung_serial_init6 = internal global ptr @samsung_serial_init, section ".initcall6.init", align 4
@__exitcall_samsung_serial_exit = internal global ptr @samsung_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_s3c2410243 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2410\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2410-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c2412244 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2412\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2412-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c2440245 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2440\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2440-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c6400246 = internal constant %struct.earlycon_id { [15 x i8] c"s3c6400\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c6400-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s5pv210247 = internal constant %struct.earlycon_id { [15 x i8] c"s5pv210\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s5pv210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_exynos4210248 = internal constant %struct.earlycon_id { [15 x i8] c"exynos4210\00\00\00\00\00", i8 0, [128 x i8] c"samsung,exynos4210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s5l249 = internal constant %struct.earlycon_id { [15 x i8] c"s5l\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"apple,s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apple_s5l_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_alias250 = internal constant [40 x i8] c"samsung_tty.alias=platform:samsung-uart\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [55 x i8] c"samsung_tty.description=Samsung SoC Serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [48 x i8] c"samsung_tty.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [48 x i8] c"samsung_tty.file=drivers/tty/serial/samsung_tty\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [27 x i8] c"samsung_tty.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"samsung-uart\00", align 1
@s3c24xx_uart_dt_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apple,s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_serial_drv_data }, %struct.of_device_id zeroinitializer], align 4
@s3c24xx_serial_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c24xx_serial_suspend, ptr @s3c24xx_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@s3c24xx_serial_driver_ids = internal constant [10 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2412-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2440-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c6400-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s5pv210-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"exynos4210-uart\00\00\00\00\00", i32 ptrtoint (ptr @exynos4210_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"exynos5433-uart\00\00\00\00\00", i32 ptrtoint (ptr @exynos5433_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"exynos850-uart\00\00\00\00\00\00", i32 ptrtoint (ptr @exynos850_serial_drv_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@probe_index = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@s3c24xx_serial_ports = internal global [4 x %struct.s3c24xx_uart_port] [%struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 2, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 3, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"could not find driver data\0A\00", align 1
@s3c24xx_serial_ops = internal constant %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @s3c24xx_serial_startup, ptr @s3c24xx_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null }, align 4
@s3c64xx_serial_ops = internal constant %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @s3c64xx_serial_startup, ptr @s3c64xx_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null }, align 4
@apple_s5l_serial_ops = internal constant %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @apple_s5l_serial_startup, ptr @apple_s5l_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"samsung,uart-fifosize\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unsupported reg-io-width (%d)\0A\00", align 1
@s3c24xx_uart_drv = internal global %struct.uart_driver { ptr null, ptr @.str.38, ptr @.str.39, i32 204, i32 64, i32 4, ptr @s3c24xx_serial_console, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"\013Failed to register Samsung UART driver\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Unable to get desc for Tx\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"drivers/tty/serial/samsung_tty.c\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"No tty port\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"RxData copy to tty layer failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Unable to get desc for Rx\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@udivslot_table = internal unnamed_addr constant [16 x i16] [i16 0, i16 128, i16 2056, i16 2184, i16 8738, i16 18724, i16 19026, i16 21674, i16 21845, i16 -10923, i16 -10795, i16 -8747, i16 -8739, i16 -8227, i16 -8225, i16 -33], align 2
@.str.15 = private unnamed_addr constant [16 x i8] c"clk_uart_baud%d\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"s3c24xx_serial: unknown pm %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"S3C24XX\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"S3C6400/10\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"APPLE S5L\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"DMA RX channel request failed\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"insufficient DMA RX engine capabilities\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"DMA TX channel request failed\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"insufficient DMA TX engine capabilities\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"DMA mapping error for RX buffer\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"DMA mapping error for TX buffer\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"%s, DMA will not be used\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = private unnamed_addr constant [41 x i8] c"failed to find memory resource for uart\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"failed to remap controller address\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"\013%s: Controller clock not found\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"\013uart: clock failed to prepare+enable: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"\014uart: failed to enable baudclk\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"s3c2410_serial\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ttySAC\00", align 1
@s3c24xx_serial_console = internal global %struct.console { [16 x i8] c"ttySAC\00\00\00\00\00\00\00\00\00\00", ptr @s3c24xx_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @s3c24xx_serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @s3c24xx_uart_drv, ptr null }, align 4
@cons_uart = internal unnamed_addr global ptr null, align 4
@exynos4210_serial_drv_data = internal global %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral, ptr @.compoundliteral.41, [4 x i32] [i32 256, i32 64, i32 16, i32 16] }, align 4
@exynos5433_serial_drv_data = internal global %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.42, ptr @.compoundliteral.43, [4 x i32] [i32 64, i32 256, i32 16, i32 256] }, align 4
@exynos850_serial_drv_data = internal global %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.44, ptr @.compoundliteral.45, [4 x i32] [i32 256, i32 64, i32 64, i32 64] }, align 4
@.str.40 = private unnamed_addr constant [20 x i8] c"Samsung Exynos UART\00", align 1
@.compoundliteral = internal global %struct.s3c24xx_uart_info { ptr @.str.40, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.41 = internal global %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, align 4
@.compoundliteral.42 = internal global %struct.s3c24xx_uart_info { ptr @.str.40, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.43 = internal global %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, align 4
@.compoundliteral.44 = internal global %struct.s3c24xx_uart_info { ptr @.str.40, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 1 }, align 4
@.compoundliteral.45 = internal global %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, align 4
@.str.46 = private unnamed_addr constant [27 x i8] c"clk_enable clk failed: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"clk_enable baudclk failed: %d\0A\00", align 1
@s3c2410_early_console_data = internal global %struct.samsung_early_console_data { i32 512 }, align 4
@s3c2440_early_console_data = internal global %struct.samsung_early_console_data { i32 16384 }, align 4
@s5pv210_early_console_data = internal global %struct.samsung_early_console_data { i32 16777216 }, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___earlycon_exynos4210248, ptr @__UNIQUE_ID___earlycon_s3c2410243, ptr @__UNIQUE_ID___earlycon_s3c2412244, ptr @__UNIQUE_ID___earlycon_s3c2440245, ptr @__UNIQUE_ID___earlycon_s3c6400246, ptr @__UNIQUE_ID___earlycon_s5l249, ptr @__UNIQUE_ID___earlycon_s5pv210247, ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_samsung_serial_exit, ptr @__initcall__kmod_samsung_tty__242_2930_samsung_serial_init6, ptr @samsung_serial_exit], section "llvm.metadata"
@switch.table.s3c24xx_serial_probe = private unnamed_addr constant [3 x ptr] [ptr @s3c24xx_serial_ops, ptr @s3c64xx_serial_ops, ptr @apple_s5l_serial_ops], align 4
@switch.table.s3c24xx_serial_type = private unnamed_addr constant [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @samsung_serial_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_serial_driver) #13
  %1 = load i16, ptr getelementptr inbounds (%struct.console, ptr @s3c24xx_serial_console, i32 0, i32 8), align 4
  %2 = and i16 %1, 4
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @unregister_console(ptr noundef nonnull @s3c24xx_serial_console) #13
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @samsung_serial_init() #0 section ".init.text" {
  tail call void @register_console(ptr noundef nonnull @s3c24xx_serial_console) #13
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_serial_driver, ptr noundef null) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i16, ptr getelementptr inbounds (%struct.console, ptr @s3c24xx_serial_console, i32 0, i32 8), align 4
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @unregister_console(ptr noundef nonnull @s3c24xx_serial_console) #13
  br label %9

9:                                                ; preds = %7, %3, %0
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @s3c2410_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 59
  store ptr @s3c2410_early_console_data, ptr %3, align 4
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 1
  store ptr @samsung_early_write, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 0, %7 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @s3c2440_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 59
  store ptr @s3c2440_early_console_data, ptr %3, align 4
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 1
  store ptr @samsung_early_write, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 0, %7 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @s5pv210_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 59
  store ptr @s5pv210_early_console_data, ptr %3, align 4
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 1
  store ptr @samsung_early_write, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 0, %7 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @apple_s5l_early_console_setup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 section ".init.text" {
  %3 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 59
  store ptr @s3c2410_early_console_data, ptr %3, align 4
  %4 = getelementptr inbounds %struct.earlycon_device, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 1
  store ptr @samsung_early_write, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 0, %7 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_probe(ptr noundef %0) #3 {
  %2 = alloca [15 x i8], align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @probe_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @of_alias_get_id(ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #13
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %7, i32 %10
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %7, %1 ], [ %12, %9 ]
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  br label %306

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @of_match_node(ptr noundef nonnull @s3c24xx_uart_dt_match, ptr noundef nonnull %18) #13
  %22 = getelementptr inbounds %struct.of_device_id, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.platform_device_id, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi ptr [ %23, %20 ], [ %29, %24 ]
  %32 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 16
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #14
  br label %306

35:                                               ; preds = %30
  %36 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 14
  store ptr inttoptr (i32 -22 to ptr), ptr %36, align 4
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 12
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.s3c24xx_serial_drv_data, ptr %31, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi ptr [ %44, %42 ], [ %40, %35 ]
  %47 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 17
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %37, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c24xx_serial_probe, i32 0, i32 %49
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 39
  store ptr %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %51, %45
  br i1 %8, label %68, label %56

56:                                               ; preds = %55
  %57 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 23
  %58 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, ptr noundef %57, i32 noundef 1, i32 noundef 0) #13
  %59 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, ptr %3, align 4
  switch i32 %62, label %64 [
    i32 1, label %65
    i32 4, label %63
  ]

63:                                               ; preds = %61
  br label %65

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %62) #14
  br label %306

65:                                               ; preds = %63, %61
  %66 = phi i8 [ 3, %63 ], [ 2, %61 ]
  %67 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 26
  store i8 %66, ptr %67, align 2
  br label %68

68:                                               ; preds = %65, %56, %55
  %69 = load ptr, ptr %32, align 4
  %70 = getelementptr %struct.s3c24xx_serial_drv_data, ptr %69, i32 0, i32 2, i32 %14
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 23
  store i32 %71, ptr %74, align 4
  br label %84

75:                                               ; preds = %68
  %76 = load ptr, ptr %38, align 4
  %77 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 23
  br i1 %79, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, ptr %80, align 4
  br label %84

83:                                               ; preds = %75
  store i32 %78, ptr %80, align 4
  br label %84

84:                                               ; preds = %83, %81, %73
  %85 = phi i32 [ %82, %81 ], [ %78, %83 ], [ %71, %73 ]
  %86 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15
  %87 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 48
  store i8 1, ptr %87, align 4
  %88 = call i32 @llvm.smax.i32(i32 %85, i32 64)
  %89 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 6
  store i32 %88, ptr %89, align 4
  %90 = load ptr, ptr %47, align 4
  %91 = icmp eq ptr %0, null
  br i1 %91, label %306, label %92

92:                                               ; preds = %84
  %93 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 43
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %306

96:                                               ; preds = %92
  %97 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 45
  store ptr %4, ptr %97, align 4
  %98 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 22
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %90, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 8388608
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 33
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 8388608
  store i32 %106, ptr %104, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = call ptr @platform_get_resource(ptr noundef nonnull %0, i32 noundef 512, i32 noundef 0) #13
  %109 = icmp eq ptr %108, null
  %110 = load ptr, ptr %97, align 4
  br i1 %109, label %111, label %112

111:                                              ; preds = %107
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.31) #14
  br label %306

112:                                              ; preds = %107
  %113 = call ptr @devm_ioremap_resource(ptr noundef %110, ptr noundef nonnull %108) #13
  %114 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 2
  store ptr %113, ptr %114, align 4
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.32) #14
  br label %306

118:                                              ; preds = %112
  %119 = load i32, ptr %108, align 4
  store i32 %119, ptr %93, align 4
  %120 = call i32 @platform_get_irq(ptr noundef nonnull %0, i32 noundef 0) #13
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 7
  store i32 %120, ptr %123, align 4
  %124 = add nuw i32 %120, 1
  %125 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 8
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i32 [ %120, %122 ], [ 0, %118 ]
  %128 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 15, i32 20
  store i32 %127, ptr %128, align 4
  %129 = load ptr, ptr %38, align 4
  %130 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = call i32 @platform_get_irq(ptr noundef nonnull %0, i32 noundef 1) #13
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 8
  store i32 %134, ptr %137, align 4
  br label %138

138:                                              ; preds = %136, %133, %126
  %139 = load ptr, ptr %5, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = call ptr @of_find_property(ptr noundef nonnull %139, ptr noundef nonnull @.str.33, ptr noundef null) #13
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %97, align 4
  %146 = call noalias ptr @devm_kmalloc(ptr noundef %145, i32 noundef 160, i32 noundef 3520) #13
  %147 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 18
  store ptr %146, ptr %147, align 4
  %148 = icmp eq ptr %146, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i32 0, ptr %93, align 4
  br label %306

150:                                              ; preds = %144, %141, %138
  %151 = call ptr @clk_get(ptr noundef %4, ptr noundef nonnull @.str.34) #13
  %152 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 13
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load ptr, ptr %4, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = phi ptr [ %159, %158 ], [ %156, %154 ]
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %161) #14
  %163 = load ptr, ptr %152, align 4
  %164 = ptrtoint ptr %163 to i32
  br label %285

165:                                              ; preds = %150
  %166 = call i32 @clk_prepare(ptr noundef %151) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = call i32 @clk_enable(ptr noundef %151) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  call void @clk_unprepare(ptr noundef %151) #13
  br label %172

172:                                              ; preds = %171, %165
  %173 = phi i32 [ %169, %171 ], [ %166, %165 ]
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %173) #14
  %175 = load ptr, ptr %152, align 4
  call void @clk_put(ptr noundef %175) #13
  br label %285

176:                                              ; preds = %168
  %177 = load ptr, ptr %97, align 4
  %178 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %2, i8 0, i32 15, i1 false) #13, !annotation !8
  %179 = load ptr, ptr %47, align 4
  %180 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %179, i32 0, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %178, i32 0, i32 10
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %176
  %187 = phi i32 [ %185, %183 ], [ %181, %176 ]
  %188 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %178, i32 0, i32 11
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %238, label %191

191:                                              ; preds = %233, %186
  %192 = phi i32 [ %234, %233 ], [ 0, %186 ]
  %193 = shl nuw i32 1, %192
  %194 = and i32 %193, %187
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %233, label %196

196:                                              ; preds = %191
  %197 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i32 noundef %192) #13
  %198 = call ptr @clk_get(ptr noundef %177, ptr noundef nonnull %2) #13
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %233, label %200

200:                                              ; preds = %196
  %201 = call i32 @clk_prepare(ptr noundef %198) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = call i32 @clk_enable(ptr noundef %198) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  call void @clk_unprepare(ptr noundef %198) #13
  br label %207

207:                                              ; preds = %206, %200
  call void @clk_put(ptr noundef %198) #13
  br label %233

208:                                              ; preds = %203
  store ptr %198, ptr %36, align 4
  %209 = call i32 @clk_get_rate(ptr noundef %198) #13
  %210 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %14, i32 5
  store i32 %209, ptr %210, align 4
  %211 = load ptr, ptr %38, align 4
  %212 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %211, i32 0, i32 11
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %237, label %215

215:                                              ; preds = %208
  %216 = load ptr, ptr %114, align 4
  %217 = getelementptr i8, ptr %216, i32 4
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #13, !srcloc !9
  %219 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %211, i32 0, i32 12
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, %218
  %222 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %211, i32 0, i32 13
  %223 = load i32, ptr %222, align 4
  %224 = lshr i32 %221, %223
  %225 = icmp eq i32 %224, %192
  br i1 %225, label %237, label %226

226:                                              ; preds = %215
  %227 = xor i32 %220, -1
  %228 = and i32 %218, %227
  %229 = shl i32 %192, %223
  %230 = or i32 %229, %228
  %231 = load ptr, ptr %114, align 4
  %232 = getelementptr i8, ptr %231, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #13, !srcloc !10
  br label %237

233:                                              ; preds = %207, %196, %191
  %234 = add nuw i32 %192, 1
  %235 = load i32, ptr %188, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %191, label %238

237:                                              ; preds = %226, %215, %208
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #13
  br label %240

238:                                              ; preds = %233, %186
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #13
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  br label %240

240:                                              ; preds = %238, %237
  %241 = load ptr, ptr %38, align 4
  %242 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 4
  switch i32 %243, label %260 [
    i32 1, label %244
    i32 2, label %251
  ]

244:                                              ; preds = %240
  %245 = load ptr, ptr %114, align 4
  %246 = getelementptr i8, ptr %245, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 15) #13, !srcloc !10
  %247 = load ptr, ptr %114, align 4
  %248 = getelementptr i8, ptr %247, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 15) #13, !srcloc !10
  %249 = load ptr, ptr %114, align 4
  %250 = getelementptr i8, ptr %249, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 15) #13, !srcloc !10
  br label %260

251:                                              ; preds = %240
  %252 = load ptr, ptr %114, align 4
  %253 = getelementptr i8, ptr %252, i32 4
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #13, !srcloc !9
  %255 = and i32 %254, -12801
  %256 = load ptr, ptr %114, align 4
  %257 = getelementptr i8, ptr %256, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #13, !srcloc !10
  %258 = load ptr, ptr %114, align 4
  %259 = getelementptr i8, ptr %258, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 1008) #13, !srcloc !10
  br label %260

260:                                              ; preds = %251, %244, %240
  %261 = load ptr, ptr %38, align 4
  %262 = load ptr, ptr %114, align 4
  %263 = getelementptr i8, ptr %262, i32 4
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #13, !srcloc !9
  %265 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %261, i32 0, i32 12
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %261, i32 0, i32 14
  %268 = load i32, ptr %267, align 4
  %269 = or i32 %268, %266
  %270 = and i32 %269, %264
  %271 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %90, i32 0, i32 6
  %272 = load i32, ptr %271, align 4
  %273 = or i32 %270, %272
  %274 = load ptr, ptr %114, align 4
  %275 = getelementptr i8, ptr %274, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #13, !srcloc !10
  %276 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %90, i32 0, i32 8
  %277 = load i32, ptr %276, align 4
  %278 = or i32 %277, 6
  %279 = load ptr, ptr %114, align 4
  %280 = getelementptr i8, ptr %279, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #13, !srcloc !10
  %281 = load i32, ptr %276, align 4
  %282 = load ptr, ptr %114, align 4
  %283 = getelementptr i8, ptr %282, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %281) #13, !srcloc !10
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %284(i32 noundef 214748) #13
  br label %288

285:                                              ; preds = %172, %160
  %286 = phi i32 [ %164, %160 ], [ %173, %172 ]
  store i32 0, ptr %93, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %306, label %288

288:                                              ; preds = %285, %260
  %289 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @s3c24xx_uart_drv, i32 0, i32 7), align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = call i32 @uart_register_driver(ptr noundef nonnull @s3c24xx_uart_drv) #13
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %306

296:                                              ; preds = %291, %288
  %297 = call i32 @uart_add_one_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef %86) #13
  %298 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %86, ptr %298, align 8
  %299 = load ptr, ptr %152, align 4
  call void @clk_disable(ptr noundef %299) #13
  call void @clk_unprepare(ptr noundef %299) #13
  %300 = load ptr, ptr %36, align 4
  %301 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %303, label %302

302:                                              ; preds = %296
  call void @clk_disable(ptr noundef %300) #13
  call void @clk_unprepare(ptr noundef %300) #13
  br label %303

303:                                              ; preds = %302, %296
  %304 = load i32, ptr @probe_index, align 4
  %305 = add i32 %304, 1
  store i32 %305, ptr @probe_index, align 4
  br label %306

306:                                              ; preds = %303, %294, %285, %149, %116, %111, %92, %84, %64, %34, %16
  %307 = phi i32 [ -22, %16 ], [ -22, %64 ], [ 0, %303 ], [ %292, %294 ], [ -19, %34 ], [ %286, %285 ], [ -12, %149 ], [ -22, %92 ], [ -19, %84 ], [ -16, %116 ], [ -22, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %307
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  tail call void @uart_unregister_driver(ptr noundef nonnull @s3c24xx_uart_drv) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_tx_empty(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !9
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %3, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %3, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %7
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  br label %29

24:                                               ; preds = %1
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #13, !srcloc !9
  %28 = and i32 %27, 4
  br label %29

29:                                               ; preds = %24, %18, %13
  %30 = phi i32 [ %28, %24 ], [ 0, %13 ], [ %23, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_set_mctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  %7 = and i32 %6, -2
  %8 = lshr i32 %1, 2
  %9 = and i32 %8, 1
  %10 = or i32 %7, %9
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #13, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_get_mctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %15 [
    i8 2, label %4
    i8 3, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #13, !srcloc !11
  %9 = zext i8 %8 to i32
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !9
  br label %15

15:                                               ; preds = %10, %4, %1
  %16 = phi i32 [ %14, %10 ], [ %9, %4 ], [ 0, %1 ]
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 320, i32 352
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_stop_tx(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr i8, ptr %0, i32 328
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -45
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %133, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %33 [
    i32 1, label %15
    i32 2, label %24
  ]

15:                                               ; preds = %10
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !9
  %21 = or i32 %20, 4
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #13, !srcloc !13
  br label %36

24:                                               ; preds = %10
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #13, !srcloc !9
  %30 = and i32 %29, -8193
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #13, !srcloc !13
  br label %36

33:                                               ; preds = %10
  %34 = getelementptr i8, ptr %0, i32 -28
  %35 = load i32, ptr %34, align 4
  tail call void @disable_irq_nosync(i32 noundef %35) #13
  br label %36

36:                                               ; preds = %33, %24, %15
  %37 = icmp eq ptr %4, null
  br i1 %37, label %97, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %97, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 -24
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 45
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = tail call i32 %49(ptr noundef nonnull %40) #13
  %53 = load ptr, ptr %39, align 4
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi ptr [ %47, %46 ], [ %54, %51 ]
  %57 = phi ptr [ %40, %46 ], [ %53, %51 ]
  %58 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 49
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %2) #13
  %63 = load ptr, ptr %39, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 47
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %55
  %69 = call i32 %66(ptr noundef %63) #13
  %70 = load ptr, ptr %39, align 4
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %68, %55
  %73 = phi ptr [ %64, %55 ], [ %71, %68 ]
  %74 = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 13
  %79 = load i32, ptr %78, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef 1) #13
  %80 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 14
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = sub i32 %86, %88
  %90 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 2, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %89
  %93 = and i32 %92, 4095
  store i32 %93, ptr %90, align 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %89
  store i32 %96, ptr %94, align 4
  br label %97

97:                                               ; preds = %72, %42, %38, %36
  store i8 0, ptr %7, align 1
  %98 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 8388608
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %97
  %104 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %105 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %106

106:                                              ; preds = %113, %103
  %107 = phi i32 [ 9999, %103 ], [ %115, %113 ]
  %108 = load ptr, ptr %105, align 4
  %109 = getelementptr i8, ptr %108, i32 16
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #13, !srcloc !9
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 21474800) #13
  %115 = add nsw i32 %107, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %106

117:                                              ; preds = %113, %106
  %118 = load ptr, ptr %105, align 4
  %119 = getelementptr i8, ptr %118, i32 8
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #13, !srcloc !9
  %121 = or i32 %120, 2
  %122 = load ptr, ptr %105, align 4
  %123 = getelementptr i8, ptr %122, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #13, !srcloc !10
  %124 = load ptr, ptr %105, align 4
  %125 = getelementptr i8, ptr %124, i32 4
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #13, !srcloc !9
  %127 = or i32 %126, 1
  %128 = load ptr, ptr %105, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #13, !srcloc !10
  %130 = getelementptr i8, ptr %0, i32 -46
  store i8 1, ptr %130, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %104) #13
  br label %131

131:                                              ; preds = %117, %97
  %132 = getelementptr i8, ptr %0, i32 -20
  store i32 0, ptr %132, align 4
  br label %133

133:                                              ; preds = %131, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_start_tx(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -45
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #13, !srcloc !9
  %19 = and i32 %18, -2
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #13, !srcloc !10
  %22 = getelementptr i8, ptr %0, i32 -46
  store i8 0, ptr %22, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #13
  br label %23

23:                                               ; preds = %13, %8
  store i8 1, ptr %5, align 1
  %24 = getelementptr i8, ptr %0, i32 328
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  tail call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %2)
  br label %32

32:                                               ; preds = %31, %27, %1
  %33 = getelementptr i8, ptr %0, i32 328
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %71, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %34, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %71, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %71, label %46

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 -24
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.uart_state, ptr %51, i32 0, i32 2, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 4096, %53
  %55 = getelementptr inbounds %struct.uart_state, ptr %51, i32 0, i32 2, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = and i32 %57, 4095
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 %54) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %0) #13
  br label %71

62:                                               ; preds = %50
  %63 = getelementptr i8, ptr %0, i32 -36
  %64 = load i32, ptr %63, align 4
  %65 = icmp uge i32 %59, %64
  %66 = and i32 %53, 63
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  tail call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %2) #13
  br label %71

70:                                               ; preds = %62
  tail call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %2, i32 noundef %59) #13
  br label %71

71:                                               ; preds = %70, %69, %61, %46, %40, %36, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_stop_rx(ptr nocapture noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = getelementptr i8, ptr %0, i32 328
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr i8, ptr %0, i32 -46
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %41 [
    i32 1, label %16
    i32 2, label %25
  ]

16:                                               ; preds = %11
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %18 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #13, !srcloc !9
  %22 = or i32 %21, 1
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #13, !srcloc !13
  br label %44

25:                                               ; preds = %11
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %27 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #13, !srcloc !9
  %31 = and i32 %30, -4097
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #13, !srcloc !13
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #13, !srcloc !9
  %38 = and i32 %37, -513
  %39 = load ptr, ptr %27, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #13, !srcloc !13
  br label %44

41:                                               ; preds = %11
  %42 = getelementptr i8, ptr %0, i32 -32
  %43 = load i32, ptr %42, align 4
  tail call void @disable_irq_nosync(i32 noundef %43) #13
  br label %44

44:                                               ; preds = %41, %25, %16
  store i8 0, ptr %8, align 2
  br label %45

45:                                               ; preds = %44, %1
  %46 = icmp eq ptr %5, null
  br i1 %46, label %85, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 45
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = tail call i32 %56(ptr noundef %53) #13
  %60 = load ptr, ptr %48, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi ptr [ %49, %51 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 49
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %62, i32 noundef %64, ptr noundef nonnull %2) #13
  %69 = add i32 %68, -1
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  %77 = load ptr, ptr %48, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 47
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  %83 = call i32 %80(ptr noundef %77) #13
  br label %84

84:                                               ; preds = %82, %71
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %3, ptr noundef %7, i32 noundef %76)
  br label %85

85:                                               ; preds = %84, %61, %47, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_break_ctl(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !9
  %8 = icmp eq i32 %1, 0
  %9 = and i32 %7, -17
  %10 = select i1 %8, i32 0, i32 16
  %11 = or i32 %9, %10
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #13, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_startup(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -46
  store i8 1, ptr %3, align 2
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @s3c24xx_serial_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef %2) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %14) #14
  br label %49

15:                                               ; preds = %1
  store i8 1, ptr %2, align 4
  %16 = getelementptr i8, ptr %0, i32 -45
  store i8 1, ptr %16, align 1
  %17 = getelementptr i8, ptr %0, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 -16
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @s3c24xx_serial_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef %2) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 4
  %26 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %26) #14
  %27 = getelementptr i8, ptr %0, i32 -47
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %17, align 4
  %32 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %2) #13
  store i8 0, ptr %16, align 1
  store i8 0, ptr %27, align 1
  %33 = getelementptr i8, ptr %0, i32 -20
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i8, ptr %2, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %4, align 4
  %39 = tail call ptr @free_irq(i32 noundef %38, ptr noundef %2) #13
  store i8 0, ptr %2, align 4
  store i8 0, ptr %3, align 2
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr i8, ptr %0, i32 328
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %2) #13
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %46, align 4
  br label %49

47:                                               ; preds = %15
  %48 = getelementptr i8, ptr %0, i32 -47
  store i8 1, ptr %48, align 1
  br label %49

49:                                               ; preds = %47, %45, %12
  %50 = phi i32 [ %10, %12 ], [ %22, %45 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -47
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %2) #13
  %10 = getelementptr i8, ptr %0, i32 -45
  store i8 0, ptr %10, align 1
  store i8 0, ptr %3, align 1
  %11 = getelementptr i8, ptr %0, i32 -20
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i8, ptr %2, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -32
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %2) #13
  store i8 0, ptr %2, align 4
  %19 = getelementptr i8, ptr %0, i32 -46
  store i8 0, ptr %19, align 2
  br label %20

20:                                               ; preds = %15, %12
  %21 = getelementptr i8, ptr %0, i32 328
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %2)
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca [15 x i8], align 1
  %5 = getelementptr %struct.uart_port, ptr %0, i32 0, i32 45
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 324
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -1073744897
  %16 = or i32 %15, 2048
  store i32 %16, ptr %13, align 4
  %17 = tail call i32 @uart_get_baud_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 3000000) #13
  %18 = getelementptr i8, ptr %0, i32 -12
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %4, i8 0, i32 15, i1 false) #13, !annotation !8
  %20 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %0, i32 324
  %25 = shl i32 %17, 3
  %26 = shl i32 %17, 4
  br label %27

27:                                               ; preds = %71, %23
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %23 ], [ %72, %71 ]
  %29 = phi i32 [ 0, %23 ], [ %73, %71 ]
  %30 = phi i32 [ 1073741823, %23 ], [ %75, %71 ]
  %31 = phi i32 [ 0, %23 ], [ %74, %71 ]
  %32 = phi i32 [ 0, %23 ], [ %76, %71 ]
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = shl nuw i32 1, %32
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %37, %27
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.15, i32 noundef %32) #13
  %43 = load ptr, ptr %5, align 4
  %44 = call ptr @clk_get(ptr noundef %43, ptr noundef nonnull %4) #13
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = call i32 @clk_get_rate(ptr noundef %44) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %18, align 4
  %51 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %50, i32 0, i32 15
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = udiv i32 %47, %17
  %57 = lshr i32 %56, 4
  br label %62

58:                                               ; preds = %49
  %59 = add i32 %47, %25
  %60 = udiv i32 %59, %26
  %61 = shl i32 %60, 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %58 ]
  %64 = phi i32 [ %57, %55 ], [ %60, %58 ]
  %65 = udiv i32 %47, %63
  %66 = sub i32 %17, %65
  %67 = call i32 @llvm.abs.i32(i32 %66, i1 false) #13
  %68 = icmp slt i32 %67, %30
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = add i32 %64, -1
  br label %71

71:                                               ; preds = %69, %62, %46, %41, %37
  %72 = phi ptr [ %28, %41 ], [ %28, %46 ], [ %44, %69 ], [ %28, %62 ], [ %28, %37 ]
  %73 = phi i32 [ %29, %41 ], [ %29, %46 ], [ %32, %69 ], [ %29, %62 ], [ %29, %37 ]
  %74 = phi i32 [ %31, %41 ], [ %31, %46 ], [ %70, %69 ], [ %31, %62 ], [ %31, %37 ]
  %75 = phi i32 [ %30, %41 ], [ %30, %46 ], [ %67, %69 ], [ %30, %62 ], [ %30, %37 ]
  %76 = add nuw i32 %32, 1
  %77 = load i32, ptr %20, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %27, label %79

79:                                               ; preds = %71, %11
  %80 = phi ptr [ inttoptr (i32 -22 to ptr), %11 ], [ %72, %71 ]
  %81 = phi i32 [ 0, %11 ], [ %73, %71 ]
  %82 = phi i32 [ 0, %11 ], [ %74, %71 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %4) #13
  %83 = icmp eq i32 %17, 38400
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 4144
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 40
  %91 = load i32, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %84, %79
  %93 = phi i32 [ %91, %89 ], [ %82, %84 ], [ %82, %79 ]
  %94 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %235, label %95

95:                                               ; preds = %92
  %96 = getelementptr i8, ptr %0, i32 -4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %80
  br i1 %98, label %141, label %99

99:                                               ; preds = %95
  %100 = call i32 @clk_prepare(ptr noundef %80) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = call i32 @clk_enable(ptr noundef %80) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @clk_unprepare(ptr noundef %80) #13
  br label %106

106:                                              ; preds = %105, %102, %99
  %107 = load ptr, ptr %18, align 4
  %108 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %107, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %130, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 4
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #13, !srcloc !9
  %116 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %107, i32 0, i32 12
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, %115
  %119 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %107, i32 0, i32 13
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %118, %120
  %122 = icmp eq i32 %121, %81
  br i1 %122, label %130, label %123

123:                                              ; preds = %111
  %124 = xor i32 %117, -1
  %125 = and i32 %115, %124
  %126 = shl i32 %81, %120
  %127 = or i32 %126, %125
  %128 = load ptr, ptr %112, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #13, !srcloc !10
  br label %130

130:                                              ; preds = %123, %111, %106
  %131 = load ptr, ptr %96, align 4
  %132 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call void @clk_disable(ptr noundef %131) #13
  call void @clk_unprepare(ptr noundef %131) #13
  br label %134

134:                                              ; preds = %133, %130
  store ptr %80, ptr %96, align 4
  %135 = icmp eq ptr %80, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = call i32 @clk_get_rate(ptr noundef nonnull %80) #13
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %137, %136 ], [ 0, %134 ]
  %140 = getelementptr i8, ptr %0, i32 -40
  store i32 %139, ptr %140, align 4
  br label %141

141:                                              ; preds = %138, %95
  %142 = load ptr, ptr %18, align 4
  %143 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %142, i32 0, i32 15
  %144 = load i8, ptr %143, align 4
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %141
  %148 = getelementptr i8, ptr %0, i32 -40
  %149 = load i32, ptr %148, align 4
  %150 = udiv i32 %149, %17
  %151 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %12, i32 0, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %150, 15
  br i1 %153, label %155, label %159

155:                                              ; preds = %147
  %156 = getelementptr [16 x i16], ptr @udivslot_table, i32 0, i32 %154
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  br label %159

159:                                              ; preds = %155, %147, %141
  %160 = phi i32 [ 0, %141 ], [ %158, %155 ], [ %154, %147 ]
  %161 = load i32, ptr %13, align 4
  %162 = lshr i32 %161, 4
  %163 = and i32 %162, 3
  %164 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %12, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, 64
  %167 = or i32 %163, %166
  %168 = and i32 %162, 4
  %169 = or i32 %167, %168
  %170 = and i32 %161, 256
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %159
  %173 = and i32 %161, 512
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = or i32 %169, 32
  br label %179

177:                                              ; preds = %172
  %178 = or i32 %169, 40
  br label %179

179:                                              ; preds = %177, %175, %159
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ], [ %169, %159 ]
  %181 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %182 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %180) #13, !srcloc !10
  %184 = load ptr, ptr %182, align 4
  %185 = getelementptr i8, ptr %184, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %93) #13, !srcloc !10
  %186 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, -9
  store i32 %188, ptr %186, align 4
  %189 = load ptr, ptr %182, align 4
  %190 = getelementptr i8, ptr %189, i32 12
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #13, !srcloc !9
  %192 = load i32, ptr %13, align 4
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %197, label %194

194:                                              ; preds = %179
  %195 = and i32 %191, -241
  %196 = or i32 %195, 16
  store i32 8, ptr %186, align 4
  br label %199

197:                                              ; preds = %179
  %198 = and i32 %191, -17
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i32 [ %196, %194 ], [ %198, %197 ]
  %201 = load ptr, ptr %182, align 4
  %202 = getelementptr i8, ptr %201, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #13, !srcloc !10
  %203 = load ptr, ptr %18, align 4
  %204 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %203, i32 0, i32 15
  %205 = load i8, ptr %204, align 4
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %199
  %209 = load ptr, ptr %182, align 4
  %210 = getelementptr i8, ptr %209, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %160) #13, !srcloc !10
  br label %211

211:                                              ; preds = %208, %199
  %212 = load i32, ptr %13, align 4
  call void @uart_update_timeout(ptr noundef %0, i32 noundef %212, i32 noundef %17) #13
  %213 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 28
  store i32 1, ptr %213, align 4
  %214 = load i32, ptr %1, align 4
  %215 = and i32 %214, 16
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 1, i32 4101
  store i32 %217, ptr %213, align 4
  %218 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  store i32 0, ptr %218, align 4
  %219 = load i32, ptr %1, align 4
  %220 = lshr i32 %219, 2
  %221 = and i32 %220, 1
  store i32 %221, ptr %218, align 4
  %222 = load i32, ptr %1, align 4
  %223 = and i32 %222, 5
  %224 = icmp eq i32 %223, 5
  br i1 %224, label %225, label %227

225:                                              ; preds = %211
  %226 = or i32 %221, 4
  store i32 %226, ptr %218, align 4
  br label %227

227:                                              ; preds = %225, %211
  %228 = phi i32 [ %226, %225 ], [ %221, %211 ]
  %229 = load i32, ptr %13, align 4
  %230 = and i32 %229, 128
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = or i32 %228, 268435456
  store i32 %233, ptr %218, align 4
  br label %234

234:                                              ; preds = %232, %227
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %181) #13
  br label %235

235:                                              ; preds = %234, %92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_pm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -44
  store i32 %1, ptr %4, align 4
  switch i32 %1, label %46 [
    i32 3, label %5
    i32 0, label %26
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %14, %5
  %8 = phi i32 [ 9999, %5 ], [ %16, %14 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !9
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #13
  %16 = add nsw i32 %8, -1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %7

18:                                               ; preds = %14, %7
  %19 = getelementptr i8, ptr %0, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef %20) #13
  tail call void @clk_unprepare(ptr noundef %20) #13
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr i8, ptr %0, i32 -8
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #13
  tail call void @clk_unprepare(ptr noundef %25) #13
  br label %49

26:                                               ; preds = %3
  %27 = getelementptr i8, ptr %0, i32 -8
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = tail call i32 @clk_enable(ptr noundef %28) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @clk_unprepare(ptr noundef %28) #13
  br label %35

35:                                               ; preds = %34, %31, %26
  %36 = getelementptr i8, ptr %0, i32 -4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @clk_prepare(ptr noundef %37) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = tail call i32 @clk_enable(ptr noundef %37) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %37) #13
  br label %49

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.16, i32 noundef %1) #14
  br label %49

49:                                               ; preds = %46, %45, %42, %39, %35, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @s3c24xx_serial_type(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c24xx_serial_type, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @s3c24xx_serial_config_port(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @s3c24xx_serial_verify_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %3, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %2
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ 0, %11 ], [ -22, %5 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 9
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #13, !srcloc !10
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !9
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #13, !srcloc !10
  %20 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %36 [
    i32 1, label %24
    i32 2, label %32
  ]

24:                                               ; preds = %5
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 56
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #13, !srcloc !9
  %29 = and i32 %28, -5
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #13, !srcloc !13
  br label %39

32:                                               ; preds = %5
  %33 = or i32 %16, 8196
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #13, !srcloc !10
  br label %39

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  tail call void @enable_irq(i32 noundef %38) #13
  br label %39

39:                                               ; preds = %36, %32, %24
  store i32 1, ptr %2, align 4
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %0) #13
  br label %45

45:                                               ; preds = %44, %39, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_tx_chars(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 4096, %7
  %9 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = and i32 %11, 4095
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %8)
  %14 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %13, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = and i32 %7, 63
  %27 = sub nuw nsw i32 64, %26
  %28 = sub i32 %13, %27
  %29 = icmp ult i32 %28, %23
  %30 = select i1 %29, i32 0, i32 %28
  %31 = select i1 %29, i32 %13, i32 %27
  br label %32

32:                                               ; preds = %25, %21, %17, %1
  %33 = phi i32 [ %30, %25 ], [ 0, %21 ], [ 0, %17 ], [ 0, %1 ]
  %34 = phi i32 [ %31, %25 ], [ %13, %21 ], [ %13, %17 ], [ %13, %1 ]
  %35 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 24
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 26
  %40 = load i8, ptr %39, align 2
  switch i8 %40, label %50 [
    i8 2, label %41
    i8 3, label %45
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %36) #13, !srcloc !14
  br label %50

45:                                               ; preds = %38
  %46 = zext i8 %36 to i32
  %47 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #13, !srcloc !10
  br label %50

50:                                               ; preds = %45, %41, %38
  %51 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  store i8 0, ptr %35, align 4
  br label %143

54:                                               ; preds = %32
  %55 = icmp eq i32 %10, %7
  br i1 %55, label %68, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tty_struct, ptr %58, i32 0, i32 19, i32 1
  %62 = load i8, ptr %61, align 4, !range !15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 35
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %60, %54
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %2)
  br label %143

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 23
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %34, %71
  %73 = select i1 %72, i32 0, i32 %33
  %74 = tail call i32 @llvm.umin.i32(i32 %34, i32 %71)
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %116

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %78 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 12
  %79 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 26
  %80 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 5
  br label %81

81:                                               ; preds = %104, %76
  %82 = phi i32 [ %74, %76 ], [ %110, %104 ]
  %83 = load ptr, ptr %77, align 4
  %84 = getelementptr i8, ptr %83, i32 24
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #13, !srcloc !9
  %86 = load ptr, ptr %78, align 4
  %87 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %86, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %85
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %81
  %92 = load ptr, ptr %5, align 4
  %93 = load i32, ptr %6, align 4
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = load i8, ptr %79, align 2
  switch i8 %96, label %104 [
    i8 2, label %97
    i8 3, label %100
  ]

97:                                               ; preds = %91
  %98 = load ptr, ptr %77, align 4
  %99 = getelementptr i8, ptr %98, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 %95) #13, !srcloc !14
  br label %104

100:                                              ; preds = %91
  %101 = zext i8 %95 to i32
  %102 = load ptr, ptr %77, align 4
  %103 = getelementptr i8, ptr %102, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #13, !srcloc !10
  br label %104

104:                                              ; preds = %100, %97, %91
  %105 = load i32, ptr %6, align 4
  %106 = add i32 %105, 1
  %107 = and i32 %106, 4095
  store i32 %107, ptr %6, align 4
  %108 = load i32, ptr %80, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %80, align 4
  %110 = add nsw i32 %82, -1
  %111 = load i32, ptr %9, align 4
  %112 = load i32, ptr %6, align 4
  %113 = icmp ne i32 %111, %112
  %114 = icmp sgt i32 %82, 1
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %81, label %116

116:                                              ; preds = %104, %69
  %117 = phi i32 [ %7, %69 ], [ %112, %104 ]
  %118 = phi i32 [ %10, %69 ], [ %111, %104 ]
  %119 = phi i32 [ %74, %69 ], [ %110, %104 ]
  %120 = icmp eq i32 %119, 0
  %121 = icmp ne i32 %73, 0
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  tail call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %0, i32 noundef %73)
  br label %143

124:                                              ; preds = %81
  %125 = load i32, ptr %9, align 4
  %126 = load i32, ptr %6, align 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = phi i32 [ %126, %124 ], [ %117, %116 ]
  %129 = phi i32 [ %125, %124 ], [ %118, %116 ]
  %130 = sub i32 %129, %128
  %131 = and i32 %130, 3840
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %134 = load i16, ptr %2, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  tail call void @uart_write_wakeup(ptr noundef %2) #13
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %136 = load i32, ptr %9, align 4
  %137 = load i32, ptr %6, align 4
  br label %138

138:                                              ; preds = %133, %127
  %139 = phi i32 [ %137, %133 ], [ %128, %127 ]
  %140 = phi i32 [ %136, %133 ], [ %129, %127 ]
  %141 = icmp eq i32 %140, %139
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %2)
  br label %143

143:                                              ; preds = %142, %138, %123, %68, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %26 [
    i32 1, label %16
    i32 2, label %25
  ]

16:                                               ; preds = %11
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %18 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #13, !srcloc !9
  %22 = or i32 %21, 4
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #13, !srcloc !13
  br label %29

25:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 370, i32 noundef 9, ptr noundef null) #13
  br label %29

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  tail call void @disable_irq_nosync(i32 noundef %28) #13
  br label %29

29:                                               ; preds = %26, %25, %16
  %30 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !9
  %34 = and i32 %33, -15728653
  %35 = or i32 %34, 3145736
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #13, !srcloc !10
  store i32 2, ptr %8, align 4
  br label %38

38:                                               ; preds = %29, %2
  %39 = and i32 %1, -64
  %40 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 11
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %51, i32 noundef %45, i32 noundef %39, i32 noundef 1) #13
  %52 = load ptr, ptr %47, align 4
  %53 = load i32, ptr %46, align 4
  %54 = load i32, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #13, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #13
  %55 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %53, ptr %55, align 4
  %56 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 %54, ptr %56, align 4
  %57 = icmp eq ptr %52, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %38
  %59 = load ptr, ptr %52, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 39
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58, %38
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  %66 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 14
  store ptr null, ptr %66, align 4
  br label %71

67:                                               ; preds = %61
  %68 = call ptr %63(ptr noundef nonnull %52, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  %69 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 14
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %65
  %72 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 45
  %73 = load ptr, ptr %72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.9) #14
  br label %90

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %68, i32 0, i32 6
  store ptr @s3c24xx_serial_tx_dma_complete, ptr %75, align 4
  %76 = load ptr, ptr %69, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %76, i32 0, i32 8
  store ptr %0, ptr %77, align 4
  %78 = load i32, ptr %40, align 4
  %79 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 16
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 9
  store i32 2, ptr %80, align 4
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 %83(ptr noundef %81) #13
  %85 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 9
  store i32 %84, ptr %85, align 4
  %86 = load ptr, ptr %47, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 50
  %89 = load ptr, ptr %88, align 4
  call void %89(ptr noundef %86) #13
  br label %90

90:                                               ; preds = %74, %71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_tx_dma_complete(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %2) #13
  %16 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 1) #13
  %34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %35 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %20
  %38 = and i32 %37, 4095
  store i32 %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %20
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 9
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %35, align 4
  %46 = sub i32 %44, %45
  %47 = and i32 %46, 3840
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  call void @uart_write_wakeup(ptr noundef %3) #13
  br label %50

50:                                               ; preds = %49, %1
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.uart_state, ptr %51, i32 0, i32 2, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 4096, %53
  %55 = getelementptr inbounds %struct.uart_state, ptr %51, i32 0, i32 2, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = and i32 %57, 4095
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 %54) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  call void @s3c24xx_serial_stop_tx(ptr noundef %3) #13
  br label %78

62:                                               ; preds = %50
  %63 = load ptr, ptr %6, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %63, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = icmp uge i32 %59, %71
  %73 = and i32 %53, 63
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %77, label %76

76:                                               ; preds = %69, %65, %62
  call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %0) #13
  br label %78

77:                                               ; preds = %69
  call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %0, i32 noundef %59) #13
  br label %78

78:                                               ; preds = %77, %76, %61
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %34) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %7, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 2) #13
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %2
  store i32 %19, ptr %17, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %6
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %22, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef nonnull %1, ptr noundef %24, i8 noundef zeroext 0, i32 noundef %2) #13
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 532, i32 noundef 9, ptr noundef null) #13
  br label %28

28:                                               ; preds = %27, %6
  %29 = phi ptr [ @.str.12, %27 ], [ @.str.11, %6 ]
  %30 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 45
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %29) #14
  br label %32

32:                                               ; preds = %28, %21, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_rx_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.dma_tx_state, align 4
  %4 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %97, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %97, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15
  %13 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @tty_port_tty_get(ptr noundef %14) #13
  %16 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #13, !srcloc !9
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef %12) #13
  %24 = and i32 %20, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %11
  tail call fastcc void @s3c64xx_start_rx_dma(ptr noundef %1) #13
  %27 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #13, !srcloc !9
  %34 = and i32 %33, -1047684
  %35 = or i32 %34, 260226
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #13, !srcloc !10
  store i32 2, ptr %27, align 4
  br label %94

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 45
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = tail call i32 %46(ptr noundef %43) #13
  %50 = load ptr, ptr %8, align 4
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi ptr [ %44, %42 ], [ %51, %48 ]
  %54 = phi ptr [ %43, %42 ], [ %50, %48 ]
  %55 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 49
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %54, i32 noundef %56, ptr noundef nonnull %3) #13
  %60 = load ptr, ptr %8, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 47
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %52
  %66 = call i32 %63(ptr noundef %60) #13
  br label %67

67:                                               ; preds = %65, %52
  %68 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %69, %71
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %1, ptr noundef %16, i32 noundef %72) #13
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #13, !srcloc !9
  %76 = and i32 %75, -4
  %77 = or i32 %76, 1
  %78 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 2
  %83 = and i32 %77, -64643
  %84 = or i32 %83, 61568
  %85 = select i1 %82, i32 %77, i32 %84
  %86 = load ptr, ptr %17, align 4
  %87 = getelementptr i8, ptr %86, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #13, !srcloc !10
  store i32 1, ptr %39, align 4
  br label %88

88:                                               ; preds = %67, %38
  call fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %1) #13
  %89 = icmp eq ptr %15, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  call void @tty_flip_buffer_push(ptr noundef %16) #13
  call void @tty_kref_put(ptr noundef nonnull %15) #13
  br label %91

91:                                               ; preds = %90, %88
  %92 = load ptr, ptr %17, align 4
  %93 = getelementptr i8, ptr %92, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 8) #13, !srcloc !10
  br label %94

94:                                               ; preds = %91, %30, %26
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %95 = load i16, ptr %12, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %101

97:                                               ; preds = %7, %2
  %98 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %98) #13
  tail call fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %1) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %101

101:                                              ; preds = %97, %94
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_tx_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_start_rx_dma(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 2) #13
  %14 = load ptr, ptr %5, align 4
  %15 = load i32, ptr %10, align 4
  %16 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #13, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #13
  %17 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %16, ptr %18, align 4
  %19 = icmp eq ptr %14, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr %14, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 39
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %28 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 15
  store ptr null, ptr %28, align 4
  br label %33

29:                                               ; preds = %23
  %30 = call ptr %25(ptr noundef nonnull %14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  %31 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 15
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %27
  %34 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 45
  %35 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14) #14
  br label %51

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 6
  store ptr @s3c24xx_serial_rx_dma_complete, ptr %37, align 4
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %38, i32 0, i32 8
  store ptr %0, ptr %39, align 4
  %40 = load i32, ptr %12, align 4
  %41 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 17
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %42) #13
  %46 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %4, i32 0, i32 8
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %50 = load ptr, ptr %49, align 4
  call void %50(ptr noundef %47) #13
  br label %51

51:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %141

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 2
  %8 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 26
  %10 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 33
  %11 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 4
  %13 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 9
  %14 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 6
  %15 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 31, i32 7
  %16 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 28
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 46
  br label %18

18:                                               ; preds = %139, %6
  %19 = phi i32 [ %4, %6 ], [ %21, %139 ]
  %20 = phi i32 [ 0, %6 ], [ %46, %139 ]
  %21 = add nsw i32 %19, -1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #13, !srcloc !9
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = load i32, ptr %3, align 4
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %27, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %26
  %38 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %27, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %37, %39
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %34 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %141, label %44

44:                                               ; preds = %41, %18
  %45 = phi i32 [ %42, %41 ], [ %20, %18 ]
  %46 = add i32 %45, -1
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr i8, ptr %47, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #13, !srcloc !9
  %50 = load i8, ptr %9, align 2
  switch i8 %50, label %60 [
    i8 2, label %51
    i8 3, label %56
  ]

51:                                               ; preds = %44
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 36
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #13, !srcloc !11
  %55 = zext i8 %54 to i32
  br label %60

56:                                               ; preds = %44
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr i8, ptr %57, i32 36
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #13, !srcloc !9
  br label %60

60:                                               ; preds = %56, %51, %44
  %61 = phi i32 [ %59, %56 ], [ %55, %51 ], [ 0, %44 ]
  %62 = load i32, ptr %10, align 4
  %63 = and i32 %62, 8388608
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr i8, ptr %66, i32 16
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #13, !srcloc !9
  %69 = and i32 %68, 4
  %70 = load i8, ptr %11, align 2
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i32 %69, 0
  br i1 %71, label %75, label %73

73:                                               ; preds = %65
  br i1 %72, label %74, label %83

74:                                               ; preds = %73
  store i8 0, ptr %11, align 2
  br label %139

75:                                               ; preds = %65
  br i1 %72, label %139, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr i8, ptr %77, i32 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #13, !srcloc !9
  %80 = or i32 %79, 2
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr i8, ptr %81, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #13, !srcloc !10
  store i8 1, ptr %11, align 2
  br label %144

83:                                               ; preds = %73, %60
  %84 = load i32, ptr %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %12, align 4
  %86 = and i32 %49, 13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %120, label %88, !prof !20

88:                                               ; preds = %83
  %89 = and i32 %49, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %13, align 4
  %94 = tail call fastcc i32 @uart_handle_break(ptr noundef %2)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %91, %88
  %97 = and i32 %49, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %14, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %14, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = and i32 %49, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %15, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, ptr %16, align 4
  %110 = and i32 %109, %49
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = and i32 %110, 4096
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = and i32 %110, 5
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 2
  br label %120

120:                                              ; preds = %116, %113, %108, %83
  %121 = phi i32 [ %49, %83 ], [ %110, %108 ], [ %110, %113 ], [ %110, %116 ]
  %122 = phi i32 [ 0, %83 ], [ 1, %108 ], [ 3, %113 ], [ %119, %116 ]
  %123 = load i32, ptr %17, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %120
  %126 = icmp eq i32 %61, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %125
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = sub i32 %128, %123
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = tail call i32 @sysrq_mask() #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %2, i32 noundef %61) #13
  br i1 %135, label %139, label %136

136:                                              ; preds = %134, %127, %125
  store i32 0, ptr %17, align 4
  br label %138

137:                                              ; preds = %131
  tail call void @handle_sysrq(i32 noundef %61) #13
  store i32 0, ptr %17, align 4
  br label %139

138:                                              ; preds = %136, %120
  tail call void @uart_insert_char(ptr noundef %2, i32 noundef %121, i32 noundef 1, i32 noundef %61, i32 noundef %122) #13
  br label %139

139:                                              ; preds = %138, %137, %134, %91, %75, %74
  %140 = icmp ugt i32 %19, 1
  br i1 %140, label %18, label %141

141:                                              ; preds = %139, %41, %1
  %142 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 30
  %143 = load ptr, ptr %142, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %143) #13
  br label %144

144:                                              ; preds = %141, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_rx_dma_complete(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 15, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @tty_port_tty_get(ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 49
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %2) #13
  %17 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %5, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr %23, align 4
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %27 = icmp eq i32 %18, %20
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = sub i32 %18, %20
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %0, ptr noundef %7, i32 noundef %29)
  br label %30

30:                                               ; preds = %28, %1
  %31 = icmp eq ptr %8, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  call void @tty_flip_buffer_push(ptr noundef %7) #13
  call void @tty_kref_put(ptr noundef nonnull %8) #13
  br label %33

33:                                               ; preds = %32, %30
  call fastcc void @s3c64xx_start_rx_dma(ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %26) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.console, ptr %14, i32 0, i32 9
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 46
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %28, 500
  store i32 %29, ptr %24, align 4
  br label %39

30:                                               ; preds = %23
  store i32 0, ptr %24, align 4
  br label %31

31:                                               ; preds = %30, %16, %12, %8
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @do_SAK(ptr noundef %38) #13
  br label %39

39:                                               ; preds = %36, %31, %27
  %40 = phi i32 [ 1, %27 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_release_dma(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef nonnull %5) #13
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %8, %7 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 2, i32 noundef 0) #13
  %24 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #13
  %26 = load ptr, ptr %4, align 4
  tail call void @dma_release_channel(ptr noundef %26) #13
  store ptr null, ptr %4, align 4
  br label %27

27:                                               ; preds = %16, %1
  %28 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 47
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = tail call i32 %34(ptr noundef nonnull %29) #13
  %38 = load ptr, ptr %28, align 4
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %32, %31 ], [ %39, %36 ]
  %42 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %45, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #13
  %46 = load ptr, ptr %28, align 4
  tail call void @dma_release_channel(ptr noundef %46) #13
  store ptr null, ptr %28, align 4
  br label %47

47:                                               ; preds = %40, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_serial_startup(ptr noundef %0) #3 {
  %2 = alloca %struct.dma_slave_caps, align 4
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = getelementptr %struct.uart_port, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 15) #13, !srcloc !10
  %7 = getelementptr i8, ptr %0, i32 328
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %171, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #13, !annotation !8
  %11 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 2
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 2, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 200
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 36
  %16 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 2, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 2, i32 5
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 3
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 3, i32 4
  store i32 1, ptr %19, align 4
  %20 = load i32, ptr %13, align 4
  %21 = add i32 %20, 32
  %22 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 3, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 3, i32 6
  store i32 1, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 208
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @dma_request_chan(ptr noundef %25, ptr noundef nonnull @.str.20) #13
  %27 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 4
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = ptrtoint ptr %26 to i32
  br label %163

31:                                               ; preds = %10
  %32 = call i32 @dma_get_slave_caps(ptr noundef %26, ptr noundef nonnull %2) #13
  %33 = icmp slt i32 %32, 0
  %34 = getelementptr inbounds %struct.dma_slave_caps, ptr %2, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 2
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %151, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %27, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 44
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 %42(ptr noundef %39, ptr noundef %11) #13
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr %24, align 4
  %48 = call ptr @dma_request_chan(ptr noundef %47, ptr noundef nonnull @.str.23) #13
  %49 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 5
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = ptrtoint ptr %48 to i32
  br label %151

53:                                               ; preds = %46
  %54 = call i32 @dma_get_slave_caps(ptr noundef %48, ptr noundef nonnull %2) #13
  %55 = icmp slt i32 %54, 0
  %56 = load i32, ptr %34, align 4
  %57 = icmp ult i32 %56, 2
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %155, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %49, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 44
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = call i32 %63(ptr noundef %60, ptr noundef %18) #13
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 12
  store i32 4096, ptr %68, align 4
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %70 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 4096) #15
  %71 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 10
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %155, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %27, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %68, align 4
  %79 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %70) #13
  %80 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %92, !prof !21

83:                                               ; preds = %73
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %84 = call ptr @dev_driver_string(ptr noundef %77) #13
  %85 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %77, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi ptr [ %89, %88 ], [ %86, %83 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %84, ptr noundef %91) #13
  br label %92

92:                                               ; preds = %90, %73
  br i1 %79, label %93, label %95

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 6
  store i32 -1, ptr %94, align 4
  br label %148

95:                                               ; preds = %92
  %96 = load ptr, ptr @mem_map, align 4
  %97 = ptrtoint ptr %70 to i32
  %98 = add i32 %97, 1073741824
  %99 = lshr i32 %98, 12
  %100 = getelementptr %struct.page, ptr %96, i32 %99
  %101 = and i32 %97, 4088
  %102 = call i32 @dma_map_page_attrs(ptr noundef %77, ptr noundef %100, i32 noundef %101, i32 noundef %78, i32 noundef 2, i32 noundef 0) #13
  %103 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 6
  store i32 %102, ptr %103, align 4
  %104 = icmp eq i32 %102, -1
  br i1 %104, label %148, label %105

105:                                              ; preds = %95
  %106 = load ptr, ptr %49, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 15
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %0, i32 108
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.uart_state, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = call zeroext i1 @is_vmalloc_addr(ptr noundef %113) #13
  %115 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %116 = xor i1 %115, true
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %127, !prof !21

118:                                              ; preds = %105
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %119 = call ptr @dev_driver_string(ptr noundef %109) #13
  %120 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load ptr, ptr %109, align 4
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi ptr [ %124, %123 ], [ %121, %118 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %119, ptr noundef %126) #13
  br label %127

127:                                              ; preds = %125, %105
  br i1 %114, label %128, label %130

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 7
  store i32 -1, ptr %129, align 4
  br label %141

130:                                              ; preds = %127
  %131 = load ptr, ptr @mem_map, align 4
  %132 = ptrtoint ptr %113 to i32
  %133 = add i32 %132, 1073741824
  %134 = lshr i32 %133, 12
  %135 = getelementptr %struct.page, ptr %131, i32 %134
  %136 = and i32 %132, 4095
  %137 = call i32 @dma_map_page_attrs(ptr noundef %109, ptr noundef %135, i32 noundef %136, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #13
  %138 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 7
  store i32 %137, ptr %138, align 4
  %139 = icmp eq i32 %137, -1
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  br label %171

141:                                              ; preds = %130, %128
  %142 = load ptr, ptr %27, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.dma_device, ptr %143, i32 0, i32 15
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %103, align 4
  %147 = load i32, ptr %68, align 4
  call void @dma_unmap_page_attrs(ptr noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef 2, i32 noundef 0) #13
  br label %148

148:                                              ; preds = %141, %95, %93
  %149 = phi ptr [ @.str.27, %141 ], [ @.str.26, %95 ], [ @.str.26, %93 ]
  %150 = load ptr, ptr %71, align 4
  call void @kfree(ptr noundef %150) #13
  br label %155

151:                                              ; preds = %51, %31
  %152 = phi ptr [ @.str.22, %31 ], [ @.str.24, %51 ]
  %153 = phi i32 [ -95, %31 ], [ %52, %51 ]
  %154 = load ptr, ptr %27, align 4
  call void @dma_release_channel(ptr noundef %154) #13
  br label %163

155:                                              ; preds = %148, %67, %53
  %156 = phi ptr [ %149, %148 ], [ @.str.25, %53 ], [ null, %67 ]
  %157 = load ptr, ptr %49, align 4
  call void @dma_release_channel(ptr noundef %157) #13
  %158 = load ptr, ptr %27, align 4
  call void @dma_release_channel(ptr noundef %158) #13
  %159 = icmp eq ptr %156, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.28, ptr noundef nonnull %156) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  br label %168

162:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  br label %168

163:                                              ; preds = %151, %29
  %164 = phi i32 [ %30, %29 ], [ %153, %151 ]
  %165 = phi ptr [ @.str.21, %29 ], [ %152, %151 ]
  %166 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %166, ptr noundef nonnull @.str.28, ptr noundef nonnull %165) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  %167 = icmp slt i32 %164, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163, %162, %160
  %169 = load ptr, ptr %24, align 4
  %170 = load ptr, ptr %7, align 4
  call void @devm_kfree(ptr noundef %169, ptr noundef %170) #13
  store ptr null, ptr %7, align 4
  br label %171

171:                                              ; preds = %168, %163, %140, %1
  %172 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr i8, ptr %175, i32 -16
  %177 = load ptr, ptr %176, align 8
  %178 = call i32 @request_threaded_irq(i32 noundef %173, ptr noundef nonnull @s3c64xx_serial_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef %177, ptr noundef %3) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load ptr, ptr %174, align 4
  %182 = load i32, ptr %172, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.13, i32 noundef %182) #14
  br label %230

183:                                              ; preds = %171
  %184 = getelementptr i8, ptr %0, i32 -46
  store i8 1, ptr %184, align 2
  %185 = getelementptr i8, ptr %0, i32 -45
  store i8 0, ptr %185, align 1
  %186 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %187 = load ptr, ptr %4, align 4
  %188 = getelementptr i8, ptr %187, i32 8
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #13, !srcloc !9
  %190 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %183
  %194 = or i32 %189, 34
  %195 = getelementptr inbounds %struct.console, ptr %191, i32 0, i32 9
  %196 = load i16, ptr %195, align 2
  %197 = sext i16 %196 to i32
  %198 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, %197
  br i1 %200, label %203, label %201

201:                                              ; preds = %193, %183
  %202 = or i32 %189, 38
  br label %203

203:                                              ; preds = %201, %193
  %204 = phi i32 [ %194, %193 ], [ %202, %201 ]
  %205 = load ptr, ptr %4, align 4
  %206 = getelementptr i8, ptr %205, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #13, !srcloc !10
  %207 = load ptr, ptr %4, align 4
  %208 = getelementptr i8, ptr %207, i32 4
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #13, !srcloc !9
  %210 = and i32 %209, -4
  %211 = or i32 %210, 1
  %212 = getelementptr i8, ptr %0, i32 -12
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 2
  %217 = and i32 %211, -64643
  %218 = or i32 %217, 61568
  %219 = select i1 %216, i32 %211, i32 %218
  %220 = load ptr, ptr %4, align 4
  %221 = getelementptr i8, ptr %220, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %219) #13, !srcloc !10
  %222 = getelementptr i8, ptr %0, i32 -16
  store i32 1, ptr %222, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %186) #13
  %223 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %224 = load ptr, ptr %4, align 4
  %225 = getelementptr i8, ptr %224, i32 56
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #13, !srcloc !9
  %227 = and i32 %226, -2
  %228 = load ptr, ptr %4, align 4
  %229 = getelementptr i8, ptr %228, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #13, !srcloc !10
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %223) #13, !srcloc !13
  br label %230

230:                                              ; preds = %203, %180
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c64xx_serial_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -45
  store i8 0, ptr %3, align 1
  %4 = getelementptr i8, ptr %0, i32 -20
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 -46
  store i8 0, ptr %5, align 2
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %2) #13
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 15) #13, !srcloc !10
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 15) #13, !srcloc !10
  %14 = getelementptr i8, ptr %0, i32 328
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %2)
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %19, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c64xx_serial_handle_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @s3c24xx_serial_rx_irq(i32 noundef %0, ptr noundef %1)
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #13, !srcloc !10
  br label %13

13:                                               ; preds = %9, %2
  %14 = and i32 %6, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %17) #13
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %1) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 4) #13, !srcloc !10
  br label %22

22:                                               ; preds = %16, %13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apple_s5l_serial_startup(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1008) #13, !srcloc !10
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -16
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @apple_serial_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef %2) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %8, align 4
  %16 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %16) #14
  br label %71

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 -46
  store i8 1, ptr %18, align 2
  %19 = getelementptr i8, ptr %0, i32 -45
  store i8 0, ptr %19, align 1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #13
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !9
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %17
  %28 = or i32 %23, 34
  %29 = getelementptr inbounds %struct.console, ptr %25, i32 0, i32 9
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %37, label %35

35:                                               ; preds = %27, %17
  %36 = or i32 %23, 38
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi i32 [ %28, %27 ], [ %36, %35 ]
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #13, !srcloc !10
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #13, !srcloc !9
  %44 = and i32 %43, -4
  %45 = or i32 %44, 1
  %46 = getelementptr i8, ptr %0, i32 -12
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 2
  %51 = and i32 %45, -64643
  %52 = or i32 %51, 61568
  %53 = select i1 %50, i32 %45, i32 %52
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #13, !srcloc !10
  %56 = getelementptr i8, ptr %0, i32 -16
  store i32 1, ptr %56, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %20) #13
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #13, !srcloc !9
  %61 = or i32 %60, 4096
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #13, !srcloc !13
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !12
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #13, !srcloc !9
  %68 = or i32 %67, 512
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #13, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #13, !srcloc !13
  br label %71

71:                                               ; preds = %37, %14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @apple_s5l_serial_shutdown(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  %7 = and i32 %6, -12801
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #13, !srcloc !10
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1008) #13, !srcloc !10
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %2) #13
  %15 = getelementptr i8, ptr %0, i32 -45
  store i8 0, ptr %15, align 1
  %16 = getelementptr i8, ptr %0, i32 -20
  store i32 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 -46
  store i8 0, ptr %17, align 2
  %18 = getelementptr i8, ptr %0, i32 328
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %2)
  br label %22

22:                                               ; preds = %21, %1
  %23 = getelementptr i8, ptr %0, i32 -24
  store i32 0, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @apple_serial_handle_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  %7 = and i32 %6, 528
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 528) #13, !srcloc !10
  %12 = tail call i32 @s3c24xx_serial_rx_irq(i32 noundef %0, ptr noundef %1)
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 1, %9 ], [ 0, %2 ]
  %15 = and i32 %6, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 32) #13, !srcloc !10
  %20 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %20) #13
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %1) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i32 [ 1, %17 ], [ %14, %13 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_console_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr @cons_uart, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #13, !srcloc !9
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @cons_uart, align 4
  tail call void @uart_console_write(ptr noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @s3c24xx_serial_console_putchar) #13
  br label %13

13:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_console_setup(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca [15 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 9600, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 110, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 110, ptr %7, align 4
  %8 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, -1
  %11 = icmp sgt i16 %9, 3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i16 0, ptr %8, align 2
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i16 [ %9, %2 ], [ 0, %13 ]
  %16 = sext i16 %15 to i32
  %17 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %16, i32 15
  %18 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %16, i32 15, i32 43
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %87, label %21

21:                                               ; preds = %14
  store ptr %17, ptr @cons_uart, align 4
  %22 = icmp eq ptr %1, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  call void @uart_parse_options(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %5, align 4
  %27 = load i32, ptr %7, align 4
  br label %81

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %3, i8 0, i32 15, i1 false) #13, !annotation !8
  %29 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %16, i32 15, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #13, !srcloc !9
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #13, !srcloc !9
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr i8, ptr %35, i32 40
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #13, !srcloc !9
  %38 = and i32 %34, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %28
  %41 = and i32 %31, 3
  %42 = add nuw nsw i32 %41, 5
  store i32 %42, ptr %5, align 4
  %43 = and i32 %31, 56
  %44 = icmp eq i32 %43, 32
  %45 = select i1 %44, i32 111, i32 110
  %46 = icmp eq i32 %43, 40
  %47 = select i1 %46, i32 101, i32 %45
  store i32 %47, ptr %6, align 4
  %48 = getelementptr i8, ptr %17, i32 -12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %63, label %53

53:                                               ; preds = %40
  %54 = load ptr, ptr %29, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #13, !srcloc !9
  %57 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %49, i32 0, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %56
  %60 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %49, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %59, %61
  br label %63

63:                                               ; preds = %53, %40
  %64 = phi i32 [ %62, %53 ], [ 0, %40 ]
  %65 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, i32 noundef %64) #13
  %66 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %16, i32 15, i32 45
  %67 = load ptr, ptr %66, align 4
  %68 = call ptr @clk_get(ptr noundef %67, ptr noundef nonnull %3) #13
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = call i32 @clk_get_rate(ptr noundef %68) #13
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %71, %70 ], [ 1, %63 ]
  %74 = shl i32 %37, 4
  %75 = add i32 %74, 16
  %76 = udiv i32 %73, %75
  store i32 %76, ptr %4, align 4
  br label %77

77:                                               ; preds = %72, %28
  %78 = phi i32 [ 8, %28 ], [ %42, %72 ]
  %79 = phi i32 [ 110, %28 ], [ %47, %72 ]
  %80 = phi i32 [ 9600, %28 ], [ %76, %72 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #13
  br label %81

81:                                               ; preds = %77, %23
  %82 = phi i32 [ 110, %77 ], [ %27, %23 ]
  %83 = phi i32 [ %78, %77 ], [ %26, %23 ]
  %84 = phi i32 [ %79, %77 ], [ %25, %23 ]
  %85 = phi i32 [ %80, %77 ], [ %24, %23 ]
  %86 = call i32 @uart_set_options(ptr noundef %17, ptr noundef %0, i32 noundef %85, i32 noundef %84, i32 noundef %83, i32 noundef %82) #13
  br label %87

87:                                               ; preds = %81, %14
  %88 = phi i32 [ %86, %81 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c24xx_serial_console_putchar(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr i8, ptr %0, i32 -12
  br label %10

10:                                               ; preds = %30, %2
  br i1 %8, label %21, label %11

11:                                               ; preds = %10
  %12 = load ptr, ptr %9, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !9
  %16 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %12, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %27

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !9
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 1
  br label %27

27:                                               ; preds = %21, %11
  %28 = phi i32 [ %20, %11 ], [ %26, %21 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !23
  br label %10

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %33 = load i8, ptr %32, align 2
  switch i8 %33, label %41 [
    i8 2, label %34
    i8 3, label %38
  ]

34:                                               ; preds = %31
  %35 = trunc i32 %1 to i8
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %35) #13, !srcloc !14
  br label %41

38:                                               ; preds = %31
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %1) #13, !srcloc !10
  br label %41

41:                                               ; preds = %38, %34, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @uart_suspend_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @clk_enable(ptr noundef %7) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #13
  br label %14

14:                                               ; preds = %13, %10, %5
  %15 = getelementptr i8, ptr %3, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_prepare(ptr noundef %16) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef %16) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %16) #13
  br label %25

25:                                               ; preds = %24, %21, %18, %14
  %26 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 45
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %3, i32 324
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ null, %25 ]
  %34 = getelementptr i8, ptr %3, i32 -12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #13, !srcloc !9
  %40 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %35, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %35, i32 0, i32 14
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = and i32 %44, %39
  %46 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %33, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %45, %47
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #13, !srcloc !10
  %51 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %33, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 6
  %54 = load ptr, ptr %36, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #13, !srcloc !10
  %56 = load i32, ptr %51, align 4
  %57 = load ptr, ptr %36, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #13, !srcloc !10
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #13
  %60 = load ptr, ptr %15, align 4
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %63, label %62

62:                                               ; preds = %32
  tail call void @clk_disable(ptr noundef %60) #13
  tail call void @clk_unprepare(ptr noundef %60) #13
  br label %63

63:                                               ; preds = %62, %32
  %64 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %64) #13
  tail call void @clk_unprepare(ptr noundef %64) #13
  %65 = tail call i32 @uart_resume_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %3) #13
  br label %66

66:                                               ; preds = %63, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_resume_noirq(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %96 [
    i32 1, label %10
    i32 2, label %48
  ]

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %3, i32 -45
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 15, i32 11
  %15 = getelementptr i8, ptr %3, i32 -46
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 0
  %18 = and i32 %14, 14
  %19 = select i1 %17, i32 %14, i32 %18
  %20 = getelementptr i8, ptr %3, i32 -8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = tail call i32 @clk_enable(ptr noundef %21) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #13
  br label %28

28:                                               ; preds = %27, %24, %10
  %29 = getelementptr i8, ptr %3, i32 -4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @clk_prepare(ptr noundef %30) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef %30) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %30) #13
  br label %39

39:                                               ; preds = %38, %35, %32, %28
  %40 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %19) #13, !srcloc !10
  %43 = load ptr, ptr %29, align 4
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @clk_disable(ptr noundef %43) #13
  tail call void @clk_unprepare(ptr noundef %43) #13
  br label %46

46:                                               ; preds = %45, %39
  %47 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %47) #13
  tail call void @clk_unprepare(ptr noundef %47) #13
  br label %96

48:                                               ; preds = %5
  %49 = getelementptr i8, ptr %3, i32 -8
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @clk_prepare(ptr noundef %50) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = tail call i32 @clk_enable(ptr noundef %50) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %50) #13
  br label %57

57:                                               ; preds = %56, %48
  %58 = phi i32 [ %54, %56 ], [ %51, %48 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %58) #14
  br label %96

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %3, i32 -4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @clk_prepare(ptr noundef %61) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = tail call i32 @clk_enable(ptr noundef %61) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  tail call void @clk_unprepare(ptr noundef %61) #13
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %67, %69 ], [ %64, %63 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %71) #14
  %72 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %72) #13
  tail call void @clk_unprepare(ptr noundef %72) #13
  br label %96

73:                                               ; preds = %66, %59
  %74 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #13, !srcloc !9
  %78 = and i32 %77, -12801
  %79 = getelementptr i8, ptr %3, i32 -45
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  %82 = or i32 %78, 8192
  %83 = select i1 %81, i32 %78, i32 %82
  %84 = getelementptr i8, ptr %3, i32 -46
  %85 = load i8, ptr %84, align 2
  %86 = icmp eq i8 %85, 0
  %87 = or i32 %83, 4608
  %88 = select i1 %86, i32 %83, i32 %87
  %89 = load ptr, ptr %74, align 4
  %90 = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #13, !srcloc !10
  %91 = load ptr, ptr %60, align 4
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %94, label %93

93:                                               ; preds = %73
  tail call void @clk_disable(ptr noundef %91) #13
  tail call void @clk_unprepare(ptr noundef %91) #13
  br label %94

94:                                               ; preds = %93, %73
  %95 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %95) #13
  tail call void @clk_unprepare(ptr noundef %95) #13
  br label %96

96:                                               ; preds = %94, %70, %57, %46, %5, %1
  %97 = phi i32 [ 0, %94 ], [ 0, %46 ], [ 0, %5 ], [ 0, %1 ], [ %58, %57 ], [ %71, %70 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_early_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.earlycon_device, ptr %5, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @samsung_early_putc) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_early_putc(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !24
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %12, %9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !25
  %16 = load i32, ptr %11, align 4
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %12

19:                                               ; preds = %19, %2
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !26
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %19, label %25

25:                                               ; preds = %19, %12
  %26 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %27 = load i8, ptr %26, align 2
  switch i8 %27, label %35 [
    i8 2, label %28
    i8 3, label %32
  ]

28:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !27
  tail call void @arm_heavy_mb() #13
  %29 = trunc i32 %1 to i8
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %29) #13, !srcloc !14
  br label %35

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !28
  tail call void @arm_heavy_mb() #13
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %1) #13, !srcloc !10
  br label %35

35:                                               ; preds = %32, %28, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i64 5079565}
!10 = !{i64 5079147}
!11 = !{i64 5079345}
!12 = !{i64 732785, i64 732846}
!13 = !{i64 735802}
!14 = !{i64 5078950}
!15 = !{i8 0, i8 2}
!16 = !{i64 2149340979}
!17 = !{i64 2149336803}
!18 = !{i64 2149336878, i64 2149336905, i64 2149336952, i64 2149336974, i64 2149337002, i64 2149337022}
!19 = !{i64 2149363982}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153627634}
!23 = !{i64 2153627476}
!24 = !{i64 2153639242}
!25 = !{i64 2153638886}
!26 = !{i64 2153638523}
!27 = !{i64 2153637707}
!28 = !{i64 2153638026}
