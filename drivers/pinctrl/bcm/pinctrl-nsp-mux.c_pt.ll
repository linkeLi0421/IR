; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-nsp-mux.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-nsp-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nsp_pin = type { i32, ptr, i32 }
%struct.nsp_pin_group = type { ptr, ptr, i32, %struct.nsp_mux }
%struct.nsp_mux = type { i32, i32, i32, i32 }
%struct.nsp_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.nsp_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nsp_mux_log = type { %struct.nsp_mux, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_nsp_mux__206_642_nsp_pinmux_init3 = internal global ptr @nsp_pinmux_init, section ".initcall3.init", align 4
@nsp_pinmux_driver = internal global %struct.platform_driver { ptr @nsp_pinmux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nsp_pinmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"nsp-pinmux\00", align 1
@nsp_pinmux_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map I/O space\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to initialize IOMUX log\0A\00", align 1
@nsp_pins = internal global [43 x %struct.nsp_pin] [%struct.nsp_pin { i32 0, ptr @.str.4, i32 1 }, %struct.nsp_pin { i32 1, ptr @.str.5, i32 1 }, %struct.nsp_pin { i32 2, ptr @.str.6, i32 1 }, %struct.nsp_pin { i32 3, ptr @.str.7, i32 1 }, %struct.nsp_pin { i32 4, ptr @.str.8, i32 1 }, %struct.nsp_pin { i32 5, ptr @.str.9, i32 1 }, %struct.nsp_pin { i32 6, ptr @.str.10, i32 1 }, %struct.nsp_pin { i32 7, ptr @.str.11, i32 1 }, %struct.nsp_pin { i32 8, ptr @.str.12, i32 1 }, %struct.nsp_pin { i32 9, ptr @.str.13, i32 1 }, %struct.nsp_pin { i32 10, ptr @.str.14, i32 1 }, %struct.nsp_pin { i32 11, ptr @.str.15, i32 1 }, %struct.nsp_pin { i32 12, ptr @.str.16, i32 1 }, %struct.nsp_pin { i32 13, ptr @.str.17, i32 1 }, %struct.nsp_pin { i32 14, ptr @.str.18, i32 1 }, %struct.nsp_pin { i32 15, ptr @.str.19, i32 1 }, %struct.nsp_pin { i32 16, ptr @.str.20, i32 1 }, %struct.nsp_pin { i32 17, ptr @.str.21, i32 1 }, %struct.nsp_pin { i32 18, ptr @.str.22, i32 0 }, %struct.nsp_pin { i32 19, ptr @.str.23, i32 0 }, %struct.nsp_pin { i32 20, ptr @.str.24, i32 0 }, %struct.nsp_pin { i32 21, ptr @.str.25, i32 1 }, %struct.nsp_pin { i32 22, ptr @.str.26, i32 1 }, %struct.nsp_pin { i32 23, ptr @.str.27, i32 1 }, %struct.nsp_pin { i32 24, ptr @.str.28, i32 1 }, %struct.nsp_pin { i32 25, ptr @.str.29, i32 1 }, %struct.nsp_pin { i32 26, ptr @.str.30, i32 0 }, %struct.nsp_pin { i32 27, ptr @.str.31, i32 0 }, %struct.nsp_pin { i32 28, ptr @.str.32, i32 1 }, %struct.nsp_pin { i32 29, ptr @.str.33, i32 1 }, %struct.nsp_pin { i32 30, ptr @.str.34, i32 1 }, %struct.nsp_pin { i32 31, ptr @.str.35, i32 1 }, %struct.nsp_pin { i32 32, ptr @.str.36, i32 0 }, %struct.nsp_pin { i32 33, ptr @.str.37, i32 0 }, %struct.nsp_pin { i32 34, ptr @.str.38, i32 0 }, %struct.nsp_pin { i32 35, ptr @.str.39, i32 0 }, %struct.nsp_pin { i32 36, ptr @.str.40, i32 0 }, %struct.nsp_pin { i32 37, ptr @.str.41, i32 0 }, %struct.nsp_pin { i32 38, ptr @.str.42, i32 0 }, %struct.nsp_pin { i32 39, ptr @.str.43, i32 0 }, %struct.nsp_pin { i32 40, ptr @.str.44, i32 0 }, %struct.nsp_pin { i32 41, ptr @.str.45, i32 0 }, %struct.nsp_pin { i32 42, ptr @.str.46, i32 0 }], align 4
@nsp_pin_groups = internal constant [23 x %struct.nsp_pin_group] [%struct.nsp_pin_group { ptr @.str.47, ptr @spi_pins, i32 4, %struct.nsp_mux { i32 0, i32 0, i32 15, i32 0 } }, %struct.nsp_pin_group { ptr @.str.48, ptr @i2c_pins, i32 2, %struct.nsp_mux { i32 0, i32 3, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.49, ptr @mdio_pins, i32 2, %struct.nsp_mux { i32 0, i32 5, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.50, ptr @gpio_b_0_pins, i32 1, %struct.nsp_mux { i32 0, i32 7, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.51, ptr @pwm0_pins, i32 1, %struct.nsp_mux { i32 1, i32 0, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.52, ptr @gpio_b_1_pins, i32 1, %struct.nsp_mux { i32 0, i32 8, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.53, ptr @pwm1_pins, i32 1, %struct.nsp_mux { i32 1, i32 1, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.54, ptr @gpio_b_2_pins, i32 1, %struct.nsp_mux { i32 0, i32 9, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.55, ptr @pwm2_pins, i32 1, %struct.nsp_mux { i32 1, i32 2, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.56, ptr @gpio_b_3_pins, i32 1, %struct.nsp_mux { i32 0, i32 10, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.57, ptr @pwm3_pins, i32 1, %struct.nsp_mux { i32 1, i32 3, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.58, ptr @uart1_pins, i32 4, %struct.nsp_mux { i32 0, i32 11, i32 15, i32 0 } }, %struct.nsp_pin_group { ptr @.str.59, ptr @uart2_pins, i32 2, %struct.nsp_mux { i32 0, i32 15, i32 3, i32 0 } }, %struct.nsp_pin_group { ptr @.str.60, ptr @synce_pins, i32 1, %struct.nsp_mux { i32 0, i32 17, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.61, ptr @sata0_led_pins, i32 1, %struct.nsp_mux { i32 0, i32 18, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.62, ptr @sata1_led_pins, i32 1, %struct.nsp_mux { i32 0, i32 19, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.63, ptr @xtal_out_pins, i32 1, %struct.nsp_mux { i32 0, i32 20, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.64, ptr @sdio_pwr_pins, i32 1, %struct.nsp_mux { i32 0, i32 21, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.65, ptr @sdio_1p8v_pins, i32 1, %struct.nsp_mux { i32 0, i32 22, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.66, ptr @switch_p05_led0_pins, i32 1, %struct.nsp_mux { i32 0, i32 26, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.67, ptr @switch_p05_led1_pins, i32 1, %struct.nsp_mux { i32 0, i32 27, i32 1, i32 1 } }, %struct.nsp_pin_group { ptr @.str.68, ptr @nand_pins, i32 11, %struct.nsp_mux { i32 2, i32 0, i32 1, i32 0 } }, %struct.nsp_pin_group { ptr @.str.69, ptr @emmc_pins, i32 11, %struct.nsp_mux { i32 2, i32 0, i32 1, i32 1 } }], align 4
@nsp_pin_functions = internal constant [14 x %struct.nsp_pin_function] [%struct.nsp_pin_function { ptr @.str.70, ptr @spi_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.71, ptr @i2c_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.11, ptr @mdio_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.72, ptr @pwm_grps, i32 4 }, %struct.nsp_pin_function { ptr @.str.73, ptr @gpio_b_grps, i32 4 }, %struct.nsp_pin_function { ptr @.str.74, ptr @uart1_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.75, ptr @uart2_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.22, ptr @synce_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.76, ptr @sata_led_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.25, ptr @xtal_out_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.77, ptr @sdio_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.78, ptr @switch_led_grps, i32 2 }, %struct.nsp_pin_function { ptr @.str.79, ptr @nand_grps, i32 1 }, %struct.nsp_pin_function { ptr @.str.80, ptr @emmc_grps, i32 1 }], align 4
@nsp_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @nsp_pinctrl_ops, ptr @nsp_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to register nsp IOMUX pinctrl\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"spi_clk\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"spi_ss\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"spi_mosi\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"spi_miso\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pwm0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"uart1_rx\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"uart1_tx\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"uart1_cts\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"uart1_rts\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"uart2_rx\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"uart2_tx\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"synce\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sata0_led\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sata1_led\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"xtal_out\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"sdio_pwr\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"sdio_en_1p8v\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"gpio_24\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"gpio_25\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"p5_led0\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"p5_led1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"gpio_28\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"gpio_29\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"gpio_30\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"gpio_31\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nand_ale\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"nand_ce0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"nand_r/b\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"nand_dq0\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"nand_dq1\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"nand_dq2\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"nand_dq3\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"nand_dq4\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"nand_dq5\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"nand_dq6\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"nand_dq7\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"spi_grp\00", align 1
@spi_pins = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"i2c_grp\00", align 1
@i2c_pins = internal constant [2 x i32] [i32 4, i32 5], align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"mdio_grp\00", align 1
@mdio_pins = internal constant [2 x i32] [i32 6, i32 7], align 4
@.str.50 = private unnamed_addr constant [13 x i8] c"gpio_b_0_grp\00", align 1
@gpio_b_0_pins = internal constant [1 x i32] [i32 8], align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"pwm0_grp\00", align 1
@pwm0_pins = internal constant [1 x i32] [i32 8], align 4
@.str.52 = private unnamed_addr constant [13 x i8] c"gpio_b_1_grp\00", align 1
@gpio_b_1_pins = internal constant [1 x i32] [i32 9], align 4
@.str.53 = private unnamed_addr constant [9 x i8] c"pwm1_grp\00", align 1
@pwm1_pins = internal constant [1 x i32] [i32 9], align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"gpio_b_2_grp\00", align 1
@gpio_b_2_pins = internal constant [1 x i32] [i32 10], align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"pwm2_grp\00", align 1
@pwm2_pins = internal constant [1 x i32] [i32 10], align 4
@.str.56 = private unnamed_addr constant [13 x i8] c"gpio_b_3_grp\00", align 1
@gpio_b_3_pins = internal constant [1 x i32] [i32 11], align 4
@.str.57 = private unnamed_addr constant [9 x i8] c"pwm3_grp\00", align 1
@pwm3_pins = internal constant [1 x i32] [i32 11], align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"uart1_grp\00", align 1
@uart1_pins = internal constant [4 x i32] [i32 12, i32 13, i32 14, i32 15], align 4
@.str.59 = private unnamed_addr constant [10 x i8] c"uart2_grp\00", align 1
@uart2_pins = internal constant [2 x i32] [i32 16, i32 17], align 4
@.str.60 = private unnamed_addr constant [10 x i8] c"synce_grp\00", align 1
@synce_pins = internal constant [1 x i32] [i32 18], align 4
@.str.61 = private unnamed_addr constant [14 x i8] c"sata0_led_grp\00", align 1
@sata0_led_pins = internal constant [1 x i32] [i32 19], align 4
@.str.62 = private unnamed_addr constant [14 x i8] c"sata1_led_grp\00", align 1
@sata1_led_pins = internal constant [1 x i32] [i32 20], align 4
@.str.63 = private unnamed_addr constant [13 x i8] c"xtal_out_grp\00", align 1
@xtal_out_pins = internal constant [1 x i32] [i32 21], align 4
@.str.64 = private unnamed_addr constant [13 x i8] c"sdio_pwr_grp\00", align 1
@sdio_pwr_pins = internal constant [1 x i32] [i32 22], align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"sdio_1p8v_grp\00", align 1
@sdio_1p8v_pins = internal constant [1 x i32] [i32 23], align 4
@.str.66 = private unnamed_addr constant [20 x i8] c"switch_p05_led0_grp\00", align 1
@switch_p05_led0_pins = internal constant [1 x i32] [i32 26], align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"switch_p05_led1_grp\00", align 1
@switch_p05_led1_pins = internal constant [1 x i32] [i32 27], align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"nand_grp\00", align 1
@nand_pins = internal constant [11 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"emmc_grp\00", align 1
@emmc_pins = internal constant [11 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], align 4
@.str.70 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spi_grps = internal constant [1 x ptr] [ptr @.str.47], align 4
@.str.71 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@i2c_grps = internal constant [1 x ptr] [ptr @.str.48], align 4
@mdio_grps = internal constant [1 x ptr] [ptr @.str.49], align 4
@.str.72 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_grps = internal constant [4 x ptr] [ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57], align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"gpio_b\00", align 1
@gpio_b_grps = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56], align 4
@.str.74 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_grps = internal constant [1 x ptr] [ptr @.str.58], align 4
@.str.75 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@uart2_grps = internal constant [1 x ptr] [ptr @.str.59], align 4
@synce_grps = internal constant [1 x ptr] [ptr @.str.60], align 4
@.str.76 = private unnamed_addr constant [9 x i8] c"sata_led\00", align 1
@sata_led_grps = internal constant [2 x ptr] [ptr @.str.61, ptr @.str.62], align 4
@xtal_out_grps = internal constant [1 x ptr] [ptr @.str.63], align 4
@.str.77 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@sdio_grps = internal constant [2 x ptr] [ptr @.str.64, ptr @.str.65], align 4
@.str.78 = private unnamed_addr constant [11 x i8] c"switch_led\00", align 1
@switch_led_grps = internal constant [2 x ptr] [ptr @.str.66, ptr @.str.67], align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@nand_grps = internal constant [1 x ptr] [ptr @.str.68], align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@emmc_grps = internal constant [1 x ptr] [ptr @.str.69], align 4
@nsp_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @nsp_get_groups_count, ptr @nsp_get_group_name, ptr @nsp_get_group_pins, ptr @nsp_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@nsp_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @nsp_get_functions_count, ptr @nsp_get_function_name, ptr @nsp_get_function_groups, ptr @nsp_pinmux_enable, ptr @nsp_gpio_request_enable, ptr @nsp_gpio_disable_free, ptr null, i8 0 }, align 4
@.str.81 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"double configuration error detected!\0A\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"func:%s grp:%s\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_nsp_mux__206_642_nsp_pinmux_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nsp_pinmux_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 10
  store i32 0, ptr %8, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %10 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %9 to i32
  br label %85

14:                                               ; preds = %5
  %15 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %85, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 1, %18
  %22 = add i32 %21, %20
  %23 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %18, i32 noundef %22) #5
  %24 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %85

27:                                               ; preds = %17
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 2) #5
  %29 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 4
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %85

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 4
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 460, i32 noundef 3520) #5
  %36 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 9
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  store i32 0, ptr %35, align 4
  %39 = getelementptr inbounds %struct.nsp_mux, ptr %35, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nsp_mux, ptr %35, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.nsp_mux_log, ptr %35, i32 0, i32 1
  store i8 0, ptr %41, align 4
  %42 = getelementptr %struct.nsp_mux_log, ptr %35, i32 1
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.nsp_mux_log, ptr %35, i32 1, i32 0, i32 1
  store i32 3, ptr %43, align 4
  %44 = getelementptr %struct.nsp_mux_log, ptr %35, i32 1, i32 0, i32 3
  store i32 0, ptr %44, align 4
  %45 = getelementptr %struct.nsp_mux_log, ptr %35, i32 1, i32 1
  store i8 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %46, %38
  %47 = phi i32 [ 2, %38 ], [ %57, %46 ]
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr %struct.nsp_mux_log, ptr %48, i32 %47
  %50 = getelementptr [23 x %struct.nsp_pin_group], ptr @nsp_pin_groups, i32 0, i32 %47, i32 3
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %49, align 4
  %52 = getelementptr [23 x %struct.nsp_pin_group], ptr @nsp_pin_groups, i32 0, i32 %47, i32 3, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nsp_mux, ptr %49, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nsp_mux, ptr %49, i32 0, i32 3
  store i32 0, ptr %55, align 4
  %56 = getelementptr %struct.nsp_mux_log, ptr %48, i32 %47, i32 1
  store i8 0, ptr %56, align 4
  %57 = add nuw nsw i32 %47, 1
  %58 = icmp eq i32 %57, 23
  br i1 %58, label %60, label %46

59:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %85

60:                                               ; preds = %46
  %61 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 516, i32 noundef 3520) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %85, label %63

63:                                               ; preds = %63, %60
  %64 = phi i32 [ %73, %63 ], [ 0, %60 ]
  %65 = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %64
  store i32 %66, ptr %67, align 4
  %68 = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %64, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %64, i32 1
  store ptr %69, ptr %70, align 4
  %71 = getelementptr [43 x %struct.nsp_pin], ptr @nsp_pins, i32 0, i32 %64, i32 2
  %72 = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %64, i32 2
  store ptr %71, ptr %72, align 4
  %73 = add nuw nsw i32 %64, 1
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %63

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 5
  store ptr @nsp_pin_groups, ptr %76, align 4
  %77 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 6
  store i32 23, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 7
  store ptr @nsp_pin_functions, ptr %78, align 4
  %79 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 8
  store i32 14, ptr %79, align 4
  store ptr %61, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nsp_pinctrl_desc, i32 0, i32 1), align 4
  store i32 43, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nsp_pinctrl_desc, i32 0, i32 2), align 4
  %80 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @nsp_pinctrl_desc, ptr noundef nonnull %3) #5
  store ptr %80, ptr %3, align 4
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %83 = load ptr, ptr %3, align 4
  %84 = ptrtoint ptr %83 to i32
  br label %85

85:                                               ; preds = %82, %75, %60, %59, %31, %26, %14, %12, %1
  %86 = phi i32 [ %13, %12 ], [ %32, %31 ], [ -12, %59 ], [ %84, %82 ], [ -12, %26 ], [ -12, %1 ], [ -22, %14 ], [ -12, %60 ], [ 0, %75 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.nsp_pinctrl, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nsp_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.nsp_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.nsp_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.nsp_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.nsp_pin_group, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef %12) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_get_functions_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.nsp_pinctrl, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nsp_get_function_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.nsp_pinctrl, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.nsp_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.nsp_pinctrl, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.nsp_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.nsp_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_pinmux_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %81

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.nsp_pin_function, ptr %14, i32 %1
  %16 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2
  %19 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2, i32 3
  %22 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2, i32 3, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %50, %12
  %25 = phi i32 [ 0, %12 ], [ %51, %50 ]
  %26 = getelementptr %struct.nsp_mux_log, ptr %20, i32 %25
  %27 = getelementptr inbounds %struct.nsp_mux, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, ptr %21, align 4
  %32 = load i32, ptr %26, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = getelementptr %struct.nsp_mux_log, ptr %20, i32 %25, i32 1
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nsp_mux, ptr %26, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2, i32 3, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %81, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.82) #6
  %47 = load ptr, ptr %45, align 4
  %48 = load ptr, ptr %15, align 4
  %49 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.83, ptr noundef %48, ptr noundef %49) #6
  br label %81

50:                                               ; preds = %30, %24
  %51 = add nuw i32 %25, 1
  %52 = icmp eq i32 %51, %6
  br i1 %52, label %81, label %24

53:                                               ; preds = %34
  %54 = icmp eq i32 %25, %6
  br i1 %54, label %81, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2, i32 3, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.nsp_pin_group, ptr %17, i32 %2, i32 3, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.nsp_mux_log, ptr %20, i32 %25, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  store i8 1, ptr %35, align 4
  %61 = load i32, ptr %21, align 4
  switch i32 %61, label %81 [
    i32 0, label %62
    i32 1, label %64
    i32 2, label %66
  ]

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 2
  br label %68

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 3
  br label %68

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 4
  br label %68

68:                                               ; preds = %66, %64, %62
  %69 = phi ptr [ %67, %66 ], [ %65, %64 ], [ %63, %62 ]
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 10
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %71) #5
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %74 = load i32, ptr %22, align 4
  %75 = shl i32 %57, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  %78 = load i32, ptr %58, align 4
  %79 = shl i32 %78, %74
  %80 = or i32 %77, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %80) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %72) #5
  br label %81

81:                                               ; preds = %68, %55, %53, %50, %44, %38, %8, %3
  %82 = phi i32 [ -22, %8 ], [ -22, %3 ], [ -22, %44 ], [ 0, %68 ], [ 0, %38 ], [ -22, %53 ], [ -22, %55 ], [ -22, %50 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %2, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 10
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %16 = shl nuw i32 1, %2
  %17 = and i32 %15, %16
  %18 = load i32, ptr %10, align 4
  %19 = shl i32 %18, %2
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = xor i32 %16, -1
  %23 = and i32 %15, %22
  %24 = or i32 %19, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #5, !srcloc !12
  br label %26

26:                                               ; preds = %21, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %2, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 10
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.nsp_pinctrl, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %16 = shl nuw i32 1, %2
  %17 = and i32 %15, %16
  %18 = load i32, ptr %10, align 4
  %19 = shl i32 %18, %2
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = xor i32 %16, -1
  %23 = and i32 %15, %22
  %24 = icmp eq i32 %18, 0
  %25 = or i32 %15, %16
  %26 = select i1 %24, i32 %25, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #5, !srcloc !12
  br label %28

28:                                               ; preds = %21, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 377725}
!10 = !{i64 2152214867}
!11 = !{i64 2152215047}
!12 = !{i64 377307}
!13 = !{i64 2152217199}
!14 = !{i64 2152217535}
!15 = !{i64 2152218346}
!16 = !{i64 2152218528}
