; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-zynq.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-zynq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.zynq_pctrl_group = type { ptr, ptr, i32 }
%struct.zynq_pinmux_function = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
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
%struct.zynq_pinctrl = type { ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_zynq__202_1217_zynq_pinctrl_init3 = internal global ptr @zynq_pinctrl_init, section ".initcall3.init", align 4
@zynq_pinctrl_driver = internal global %struct.platform_driver { ptr @zynq_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynq_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"zynq-pinctrl\00", align 1
@zynq_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,pinctrl-zynq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to get syscon\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing IO resource\0A\00", align 1
@zynq_pctrl_groups = internal constant [187 x %struct.zynq_pctrl_group] [%struct.zynq_pctrl_group { ptr @.str.5, ptr @ethernet0_0_pins, i32 12 }, %struct.zynq_pctrl_group { ptr @.str.6, ptr @ethernet1_0_pins, i32 12 }, %struct.zynq_pctrl_group { ptr @.str.7, ptr @mdio0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.8, ptr @mdio1_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.9, ptr @qspi0_0_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.10, ptr @qspi1_0_pins, i32 5 }, %struct.zynq_pctrl_group { ptr @.str.11, ptr @qspi_fbclk_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.12, ptr @qspi_cs1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.13, ptr @spi0_0_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.14, ptr @spi0_0_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.15, ptr @spi0_0_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.16, ptr @spi0_0_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.17, ptr @spi0_1_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.18, ptr @spi0_1_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.19, ptr @spi0_1_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.20, ptr @spi0_1_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.21, ptr @spi0_2_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.22, ptr @spi0_2_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.23, ptr @spi0_2_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.24, ptr @spi0_2_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.25, ptr @spi1_0_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.26, ptr @spi1_0_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.27, ptr @spi1_0_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.28, ptr @spi1_0_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.29, ptr @spi1_1_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.30, ptr @spi1_1_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.31, ptr @spi1_1_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.32, ptr @spi1_1_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.33, ptr @spi1_2_pins, i32 3 }, %struct.zynq_pctrl_group { ptr @.str.34, ptr @spi1_2_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.35, ptr @spi1_2_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.36, ptr @spi1_2_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.37, ptr @spi1_3_pins, i32 4 }, %struct.zynq_pctrl_group { ptr @.str.38, ptr @spi1_3_ss0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.39, ptr @spi1_3_ss1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.40, ptr @spi1_3_ss2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.41, ptr @sdio0_0_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.42, ptr @sdio0_1_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.43, ptr @sdio0_2_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.44, ptr @sdio1_0_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.45, ptr @sdio1_1_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.46, ptr @sdio1_2_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.47, ptr @sdio1_3_pins, i32 6 }, %struct.zynq_pctrl_group { ptr @.str.48, ptr @sdio0_emio_wp_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.49, ptr @sdio0_emio_cd_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.50, ptr @sdio1_emio_wp_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.51, ptr @sdio1_emio_cd_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.52, ptr @smc0_nor_pins, i32 36 }, %struct.zynq_pctrl_group { ptr @.str.53, ptr @smc0_nor_cs1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.54, ptr @smc0_nor_addr25_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.55, ptr @smc0_nand_pins, i32 22 }, %struct.zynq_pctrl_group { ptr @.str.56, ptr @smc0_nand8_pins, i32 14 }, %struct.zynq_pctrl_group { ptr @.str.57, ptr @can0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.58, ptr @can0_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.59, ptr @can0_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.60, ptr @can0_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.61, ptr @can0_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.62, ptr @can0_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.63, ptr @can0_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.64, ptr @can0_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.65, ptr @can0_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.66, ptr @can0_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.67, ptr @can0_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.68, ptr @can1_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.69, ptr @can1_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.70, ptr @can1_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.71, ptr @can1_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.72, ptr @can1_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.73, ptr @can1_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.74, ptr @can1_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.75, ptr @can1_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.76, ptr @can1_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.77, ptr @can1_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.78, ptr @can1_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.79, ptr @can1_11_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.80, ptr @uart0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.81, ptr @uart0_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.82, ptr @uart0_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.83, ptr @uart0_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.84, ptr @uart0_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.85, ptr @uart0_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.86, ptr @uart0_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.87, ptr @uart0_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.88, ptr @uart0_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.89, ptr @uart0_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.90, ptr @uart0_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.91, ptr @uart1_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.92, ptr @uart1_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.93, ptr @uart1_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.94, ptr @uart1_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.95, ptr @uart1_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.96, ptr @uart1_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.97, ptr @uart1_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.98, ptr @uart1_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.99, ptr @uart1_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.100, ptr @uart1_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.101, ptr @uart1_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.102, ptr @uart1_11_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.103, ptr @i2c0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.104, ptr @i2c0_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.105, ptr @i2c0_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.106, ptr @i2c0_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.107, ptr @i2c0_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.108, ptr @i2c0_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.109, ptr @i2c0_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.110, ptr @i2c0_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.111, ptr @i2c0_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.112, ptr @i2c0_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.113, ptr @i2c0_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.114, ptr @i2c1_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.115, ptr @i2c1_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.116, ptr @i2c1_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.117, ptr @i2c1_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.118, ptr @i2c1_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.119, ptr @i2c1_5_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.120, ptr @i2c1_6_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.121, ptr @i2c1_7_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.122, ptr @i2c1_8_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.123, ptr @i2c1_9_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.124, ptr @i2c1_10_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.125, ptr @ttc0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.126, ptr @ttc0_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.127, ptr @ttc0_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.128, ptr @ttc1_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.129, ptr @ttc1_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.130, ptr @ttc1_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.131, ptr @swdt0_0_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.132, ptr @swdt0_1_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.133, ptr @swdt0_2_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.134, ptr @swdt0_3_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.135, ptr @swdt0_4_pins, i32 2 }, %struct.zynq_pctrl_group { ptr @.str.136, ptr @gpio0_0_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.137, ptr @gpio0_1_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.138, ptr @gpio0_2_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.139, ptr @gpio0_3_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.140, ptr @gpio0_4_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.141, ptr @gpio0_5_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.142, ptr @gpio0_6_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.143, ptr @gpio0_7_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.144, ptr @gpio0_8_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.145, ptr @gpio0_9_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.146, ptr @gpio0_10_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.147, ptr @gpio0_11_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.148, ptr @gpio0_12_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.149, ptr @gpio0_13_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.150, ptr @gpio0_14_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.151, ptr @gpio0_15_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.152, ptr @gpio0_16_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.153, ptr @gpio0_17_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.154, ptr @gpio0_18_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.155, ptr @gpio0_19_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.156, ptr @gpio0_20_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.157, ptr @gpio0_21_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.158, ptr @gpio0_22_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.159, ptr @gpio0_23_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.160, ptr @gpio0_24_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.161, ptr @gpio0_25_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.162, ptr @gpio0_26_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.163, ptr @gpio0_27_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.164, ptr @gpio0_28_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.165, ptr @gpio0_29_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.166, ptr @gpio0_30_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.167, ptr @gpio0_31_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.168, ptr @gpio0_32_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.169, ptr @gpio0_33_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.170, ptr @gpio0_34_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.171, ptr @gpio0_35_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.172, ptr @gpio0_36_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.173, ptr @gpio0_37_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.174, ptr @gpio0_38_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.175, ptr @gpio0_39_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.176, ptr @gpio0_40_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.177, ptr @gpio0_41_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.178, ptr @gpio0_42_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.179, ptr @gpio0_43_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.180, ptr @gpio0_44_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.181, ptr @gpio0_45_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.182, ptr @gpio0_46_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.183, ptr @gpio0_47_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.184, ptr @gpio0_48_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.185, ptr @gpio0_49_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.186, ptr @gpio0_50_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.187, ptr @gpio0_51_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.188, ptr @gpio0_52_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.189, ptr @gpio0_53_pins, i32 1 }, %struct.zynq_pctrl_group { ptr @.str.190, ptr @usb0_0_pins, i32 12 }, %struct.zynq_pctrl_group { ptr @.str.191, ptr @usb1_0_pins, i32 12 }], align 4
@zynq_pmux_functions = internal constant [36 x %struct.zynq_pinmux_function] [%struct.zynq_pinmux_function { ptr @.str.192, ptr @can0_groups, i32 11, i32 16, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.193, ptr @can1_groups, i32 12, i32 16, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.194, ptr @ethernet0_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.195, ptr @ethernet1_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.196, ptr @gpio0_groups, i32 54, i32 0, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.197, ptr @i2c0_groups, i32 11, i32 32, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.198, ptr @i2c1_groups, i32 11, i32 32, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.199, ptr @mdio0_groups, i32 1, i32 64, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.200, ptr @mdio1_groups, i32 1, i32 80, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.201, ptr @qspi0_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.202, ptr @qspi1_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.203, ptr @qspi_fbclk_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.204, ptr @qspi_cs1_groups, i32 1, i32 1, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.205, ptr @spi0_groups, i32 3, i32 80, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.206, ptr @spi1_groups, i32 4, i32 80, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.207, ptr @spi0_ss_groups, i32 9, i32 80, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.208, ptr @spi1_ss_groups, i32 12, i32 80, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.209, ptr @sdio0_groups, i32 3, i32 64, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.210, ptr @sdio0_pc_groups, i32 27, i32 12, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.211, ptr @sdio0_cd_groups, i32 53, i32 0, i32 304, i32 4128768, i8 16 }, %struct.zynq_pinmux_function { ptr @.str.212, ptr @sdio0_wp_groups, i32 53, i32 0, i32 304, i32 63, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.213, ptr @sdio1_groups, i32 4, i32 64, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.214, ptr @sdio1_pc_groups, i32 27, i32 12, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.215, ptr @sdio1_cd_groups, i32 53, i32 0, i32 308, i32 4128768, i8 16 }, %struct.zynq_pinmux_function { ptr @.str.216, ptr @sdio1_wp_groups, i32 53, i32 0, i32 308, i32 63, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.217, ptr @smc0_nor_groups, i32 1, i32 4, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.218, ptr @smc0_nor_cs1_groups, i32 1, i32 8, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.219, ptr @smc0_nor_addr25_groups, i32 1, i32 4, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.220, ptr @smc0_nand_groups, i32 2, i32 8, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.221, ptr @ttc0_groups, i32 3, i32 96, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.222, ptr @ttc1_groups, i32 3, i32 96, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.223, ptr @uart0_groups, i32 11, i32 112, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.224, ptr @uart1_groups, i32 12, i32 112, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.225, ptr @usb0_groups, i32 1, i32 2, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.226, ptr @usb1_groups, i32 1, i32 2, i32 0, i32 0, i8 0 }, %struct.zynq_pinmux_function { ptr @.str.227, ptr @swdt0_groups, i32 5, i32 48, i32 0, i32 0, i8 0 }], align 4
@zynq_desc = internal global %struct.pinctrl_desc { ptr @.str.228, ptr @zynq_pins, i32 58, ptr @zynq_pctrl_ops, ptr @zynq_pinmux_ops, ptr @zynq_pinconf_ops, ptr null, i32 1, ptr @zynq_dt_params, ptr @zynq_conf_items, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"zynq pinctrl initialized\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ethernet0_0_grp\00", align 1
@ethernet0_0_pins = internal constant [12 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"ethernet1_0_grp\00", align 1
@ethernet1_0_pins = internal constant [12 x i32] [i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"mdio0_0_grp\00", align 1
@mdio0_0_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"mdio1_0_grp\00", align 1
@mdio1_0_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"qspi0_0_grp\00", align 1
@qspi0_0_pins = internal constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"qspi1_0_grp\00", align 1
@qspi1_0_pins = internal constant [5 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13], align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"qspi_fbclk_grp\00", align 1
@qspi_fbclk_pins = internal constant [1 x i32] [i32 8], align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"qspi_cs1_grp\00", align 1
@qspi_cs1_pins = internal constant [1 x i32] zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"spi0_0_grp\00", align 1
@spi0_0_pins = internal constant [3 x i32] [i32 16, i32 17, i32 21], align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"spi0_0_ss0_grp\00", align 1
@spi0_0_ss0_pins = internal constant [1 x i32] [i32 18], align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"spi0_0_ss1_grp\00", align 1
@spi0_0_ss1_pins = internal constant [1 x i32] [i32 19], align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"spi0_0_ss2_grp\00", align 1
@spi0_0_ss2_pins = internal constant [1 x i32] [i32 20], align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"spi0_1_grp\00", align 1
@spi0_1_pins = internal constant [3 x i32] [i32 28, i32 29, i32 33], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"spi0_1_ss0_grp\00", align 1
@spi0_1_ss0_pins = internal constant [1 x i32] [i32 30], align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"spi0_1_ss1_grp\00", align 1
@spi0_1_ss1_pins = internal constant [1 x i32] [i32 31], align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"spi0_1_ss2_grp\00", align 1
@spi0_1_ss2_pins = internal constant [1 x i32] [i32 32], align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"spi0_2_grp\00", align 1
@spi0_2_pins = internal constant [3 x i32] [i32 40, i32 41, i32 45], align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"spi0_2_ss0_grp\00", align 1
@spi0_2_ss0_pins = internal constant [1 x i32] [i32 42], align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"spi0_2_ss1_grp\00", align 1
@spi0_2_ss1_pins = internal constant [1 x i32] [i32 43], align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"spi0_2_ss2_grp\00", align 1
@spi0_2_ss2_pins = internal constant [1 x i32] [i32 44], align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"spi1_0_grp\00", align 1
@spi1_0_pins = internal constant [3 x i32] [i32 10, i32 11, i32 12], align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"spi1_0_ss0_grp\00", align 1
@spi1_0_ss0_pins = internal constant [1 x i32] [i32 13], align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"spi1_0_ss1_grp\00", align 1
@spi1_0_ss1_pins = internal constant [1 x i32] [i32 14], align 4
@.str.28 = private unnamed_addr constant [15 x i8] c"spi1_0_ss2_grp\00", align 1
@spi1_0_ss2_pins = internal constant [1 x i32] [i32 15], align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"spi1_1_grp\00", align 1
@spi1_1_pins = internal constant [3 x i32] [i32 22, i32 23, i32 24], align 4
@.str.30 = private unnamed_addr constant [15 x i8] c"spi1_1_ss0_grp\00", align 1
@spi1_1_ss0_pins = internal constant [1 x i32] [i32 25], align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"spi1_1_ss1_grp\00", align 1
@spi1_1_ss1_pins = internal constant [1 x i32] [i32 26], align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"spi1_1_ss2_grp\00", align 1
@spi1_1_ss2_pins = internal constant [1 x i32] [i32 27], align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"spi1_2_grp\00", align 1
@spi1_2_pins = internal constant [3 x i32] [i32 34, i32 35, i32 36], align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"spi1_2_ss0_grp\00", align 1
@spi1_2_ss0_pins = internal constant [1 x i32] [i32 37], align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"spi1_2_ss1_grp\00", align 1
@spi1_2_ss1_pins = internal constant [1 x i32] [i32 38], align 4
@.str.36 = private unnamed_addr constant [15 x i8] c"spi1_2_ss2_grp\00", align 1
@spi1_2_ss2_pins = internal constant [1 x i32] [i32 39], align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"spi1_3_grp\00", align 1
@spi1_3_pins = internal constant [4 x i32] [i32 46, i32 47, i32 48, i32 49], align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"spi1_3_ss0_grp\00", align 1
@spi1_3_ss0_pins = internal constant [1 x i32] [i32 49], align 4
@.str.39 = private unnamed_addr constant [15 x i8] c"spi1_3_ss1_grp\00", align 1
@spi1_3_ss1_pins = internal constant [1 x i32] [i32 50], align 4
@.str.40 = private unnamed_addr constant [15 x i8] c"spi1_3_ss2_grp\00", align 1
@spi1_3_ss2_pins = internal constant [1 x i32] [i32 51], align 4
@.str.41 = private unnamed_addr constant [12 x i8] c"sdio0_0_grp\00", align 1
@sdio0_0_pins = internal constant [6 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 21], align 4
@.str.42 = private unnamed_addr constant [12 x i8] c"sdio0_1_grp\00", align 1
@sdio0_1_pins = internal constant [6 x i32] [i32 28, i32 29, i32 30, i32 31, i32 32, i32 33], align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"sdio0_2_grp\00", align 1
@sdio0_2_pins = internal constant [6 x i32] [i32 40, i32 41, i32 42, i32 43, i32 44, i32 45], align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"sdio1_0_grp\00", align 1
@sdio1_0_pins = internal constant [6 x i32] [i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
@.str.45 = private unnamed_addr constant [12 x i8] c"sdio1_1_grp\00", align 1
@sdio1_1_pins = internal constant [6 x i32] [i32 22, i32 23, i32 24, i32 25, i32 26, i32 27], align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"sdio1_2_grp\00", align 1
@sdio1_2_pins = internal constant [6 x i32] [i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"sdio1_3_grp\00", align 1
@sdio1_3_pins = internal constant [6 x i32] [i32 46, i32 47, i32 48, i32 49, i32 50, i32 51], align 4
@.str.48 = private unnamed_addr constant [18 x i8] c"sdio0_emio_wp_grp\00", align 1
@sdio0_emio_wp_pins = internal constant [1 x i32] [i32 54], align 4
@.str.49 = private unnamed_addr constant [18 x i8] c"sdio0_emio_cd_grp\00", align 1
@sdio0_emio_cd_pins = internal constant [1 x i32] [i32 55], align 4
@.str.50 = private unnamed_addr constant [18 x i8] c"sdio1_emio_wp_grp\00", align 1
@sdio1_emio_wp_pins = internal constant [1 x i32] [i32 56], align 4
@.str.51 = private unnamed_addr constant [18 x i8] c"sdio1_emio_cd_grp\00", align 1
@sdio1_emio_cd_pins = internal constant [1 x i32] [i32 57], align 4
@.str.52 = private unnamed_addr constant [13 x i8] c"smc0_nor_grp\00", align 1
@smc0_nor_pins = internal constant [36 x i32] [i32 0, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], align 4
@.str.53 = private unnamed_addr constant [17 x i8] c"smc0_nor_cs1_grp\00", align 1
@smc0_nor_cs1_pins = internal constant [1 x i32] [i32 1], align 4
@.str.54 = private unnamed_addr constant [20 x i8] c"smc0_nor_addr25_grp\00", align 1
@smc0_nor_addr25_pins = internal constant [1 x i32] [i32 1], align 4
@.str.55 = private unnamed_addr constant [14 x i8] c"smc0_nand_grp\00", align 1
@smc0_nand_pins = internal constant [22 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23], align 4
@.str.56 = private unnamed_addr constant [15 x i8] c"smc0_nand8_grp\00", align 1
@smc0_nand8_pins = internal constant [14 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 4
@.str.57 = private unnamed_addr constant [11 x i8] c"can0_0_grp\00", align 1
@can0_0_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.58 = private unnamed_addr constant [11 x i8] c"can0_1_grp\00", align 1
@can0_1_pins = internal constant [2 x i32] [i32 14, i32 15], align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"can0_2_grp\00", align 1
@can0_2_pins = internal constant [2 x i32] [i32 18, i32 19], align 4
@.str.60 = private unnamed_addr constant [11 x i8] c"can0_3_grp\00", align 1
@can0_3_pins = internal constant [2 x i32] [i32 22, i32 23], align 4
@.str.61 = private unnamed_addr constant [11 x i8] c"can0_4_grp\00", align 1
@can0_4_pins = internal constant [2 x i32] [i32 26, i32 27], align 4
@.str.62 = private unnamed_addr constant [11 x i8] c"can0_5_grp\00", align 1
@can0_5_pins = internal constant [2 x i32] [i32 30, i32 31], align 4
@.str.63 = private unnamed_addr constant [11 x i8] c"can0_6_grp\00", align 1
@can0_6_pins = internal constant [2 x i32] [i32 34, i32 35], align 4
@.str.64 = private unnamed_addr constant [11 x i8] c"can0_7_grp\00", align 1
@can0_7_pins = internal constant [2 x i32] [i32 38, i32 39], align 4
@.str.65 = private unnamed_addr constant [11 x i8] c"can0_8_grp\00", align 1
@can0_8_pins = internal constant [2 x i32] [i32 42, i32 43], align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"can0_9_grp\00", align 1
@can0_9_pins = internal constant [2 x i32] [i32 46, i32 47], align 4
@.str.67 = private unnamed_addr constant [12 x i8] c"can0_10_grp\00", align 1
@can0_10_pins = internal constant [2 x i32] [i32 50, i32 51], align 4
@.str.68 = private unnamed_addr constant [11 x i8] c"can1_0_grp\00", align 1
@can1_0_pins = internal constant [2 x i32] [i32 8, i32 9], align 4
@.str.69 = private unnamed_addr constant [11 x i8] c"can1_1_grp\00", align 1
@can1_1_pins = internal constant [2 x i32] [i32 12, i32 13], align 4
@.str.70 = private unnamed_addr constant [11 x i8] c"can1_2_grp\00", align 1
@can1_2_pins = internal constant [2 x i32] [i32 16, i32 17], align 4
@.str.71 = private unnamed_addr constant [11 x i8] c"can1_3_grp\00", align 1
@can1_3_pins = internal constant [2 x i32] [i32 20, i32 21], align 4
@.str.72 = private unnamed_addr constant [11 x i8] c"can1_4_grp\00", align 1
@can1_4_pins = internal constant [2 x i32] [i32 24, i32 25], align 4
@.str.73 = private unnamed_addr constant [11 x i8] c"can1_5_grp\00", align 1
@can1_5_pins = internal constant [2 x i32] [i32 28, i32 29], align 4
@.str.74 = private unnamed_addr constant [11 x i8] c"can1_6_grp\00", align 1
@can1_6_pins = internal constant [2 x i32] [i32 32, i32 33], align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"can1_7_grp\00", align 1
@can1_7_pins = internal constant [2 x i32] [i32 36, i32 37], align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"can1_8_grp\00", align 1
@can1_8_pins = internal constant [2 x i32] [i32 40, i32 41], align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"can1_9_grp\00", align 1
@can1_9_pins = internal constant [2 x i32] [i32 44, i32 45], align 4
@.str.78 = private unnamed_addr constant [12 x i8] c"can1_10_grp\00", align 1
@can1_10_pins = internal constant [2 x i32] [i32 48, i32 49], align 4
@.str.79 = private unnamed_addr constant [12 x i8] c"can1_11_grp\00", align 1
@can1_11_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.80 = private unnamed_addr constant [12 x i8] c"uart0_0_grp\00", align 1
@uart0_0_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.81 = private unnamed_addr constant [12 x i8] c"uart0_1_grp\00", align 1
@uart0_1_pins = internal constant [2 x i32] [i32 14, i32 15], align 4
@.str.82 = private unnamed_addr constant [12 x i8] c"uart0_2_grp\00", align 1
@uart0_2_pins = internal constant [2 x i32] [i32 18, i32 19], align 4
@.str.83 = private unnamed_addr constant [12 x i8] c"uart0_3_grp\00", align 1
@uart0_3_pins = internal constant [2 x i32] [i32 22, i32 23], align 4
@.str.84 = private unnamed_addr constant [12 x i8] c"uart0_4_grp\00", align 1
@uart0_4_pins = internal constant [2 x i32] [i32 26, i32 27], align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"uart0_5_grp\00", align 1
@uart0_5_pins = internal constant [2 x i32] [i32 30, i32 31], align 4
@.str.86 = private unnamed_addr constant [12 x i8] c"uart0_6_grp\00", align 1
@uart0_6_pins = internal constant [2 x i32] [i32 34, i32 35], align 4
@.str.87 = private unnamed_addr constant [12 x i8] c"uart0_7_grp\00", align 1
@uart0_7_pins = internal constant [2 x i32] [i32 38, i32 39], align 4
@.str.88 = private unnamed_addr constant [12 x i8] c"uart0_8_grp\00", align 1
@uart0_8_pins = internal constant [2 x i32] [i32 42, i32 43], align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"uart0_9_grp\00", align 1
@uart0_9_pins = internal constant [2 x i32] [i32 46, i32 47], align 4
@.str.90 = private unnamed_addr constant [13 x i8] c"uart0_10_grp\00", align 1
@uart0_10_pins = internal constant [2 x i32] [i32 50, i32 51], align 4
@.str.91 = private unnamed_addr constant [12 x i8] c"uart1_0_grp\00", align 1
@uart1_0_pins = internal constant [2 x i32] [i32 8, i32 9], align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"uart1_1_grp\00", align 1
@uart1_1_pins = internal constant [2 x i32] [i32 12, i32 13], align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"uart1_2_grp\00", align 1
@uart1_2_pins = internal constant [2 x i32] [i32 16, i32 17], align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"uart1_3_grp\00", align 1
@uart1_3_pins = internal constant [2 x i32] [i32 20, i32 21], align 4
@.str.95 = private unnamed_addr constant [12 x i8] c"uart1_4_grp\00", align 1
@uart1_4_pins = internal constant [2 x i32] [i32 24, i32 25], align 4
@.str.96 = private unnamed_addr constant [12 x i8] c"uart1_5_grp\00", align 1
@uart1_5_pins = internal constant [2 x i32] [i32 28, i32 29], align 4
@.str.97 = private unnamed_addr constant [12 x i8] c"uart1_6_grp\00", align 1
@uart1_6_pins = internal constant [2 x i32] [i32 32, i32 33], align 4
@.str.98 = private unnamed_addr constant [12 x i8] c"uart1_7_grp\00", align 1
@uart1_7_pins = internal constant [2 x i32] [i32 36, i32 37], align 4
@.str.99 = private unnamed_addr constant [12 x i8] c"uart1_8_grp\00", align 1
@uart1_8_pins = internal constant [2 x i32] [i32 40, i32 41], align 4
@.str.100 = private unnamed_addr constant [12 x i8] c"uart1_9_grp\00", align 1
@uart1_9_pins = internal constant [2 x i32] [i32 44, i32 45], align 4
@.str.101 = private unnamed_addr constant [13 x i8] c"uart1_10_grp\00", align 1
@uart1_10_pins = internal constant [2 x i32] [i32 48, i32 49], align 4
@.str.102 = private unnamed_addr constant [13 x i8] c"uart1_11_grp\00", align 1
@uart1_11_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.103 = private unnamed_addr constant [11 x i8] c"i2c0_0_grp\00", align 1
@i2c0_0_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.104 = private unnamed_addr constant [11 x i8] c"i2c0_1_grp\00", align 1
@i2c0_1_pins = internal constant [2 x i32] [i32 14, i32 15], align 4
@.str.105 = private unnamed_addr constant [11 x i8] c"i2c0_2_grp\00", align 1
@i2c0_2_pins = internal constant [2 x i32] [i32 18, i32 19], align 4
@.str.106 = private unnamed_addr constant [11 x i8] c"i2c0_3_grp\00", align 1
@i2c0_3_pins = internal constant [2 x i32] [i32 22, i32 23], align 4
@.str.107 = private unnamed_addr constant [11 x i8] c"i2c0_4_grp\00", align 1
@i2c0_4_pins = internal constant [2 x i32] [i32 26, i32 27], align 4
@.str.108 = private unnamed_addr constant [11 x i8] c"i2c0_5_grp\00", align 1
@i2c0_5_pins = internal constant [2 x i32] [i32 30, i32 31], align 4
@.str.109 = private unnamed_addr constant [11 x i8] c"i2c0_6_grp\00", align 1
@i2c0_6_pins = internal constant [2 x i32] [i32 34, i32 35], align 4
@.str.110 = private unnamed_addr constant [11 x i8] c"i2c0_7_grp\00", align 1
@i2c0_7_pins = internal constant [2 x i32] [i32 38, i32 39], align 4
@.str.111 = private unnamed_addr constant [11 x i8] c"i2c0_8_grp\00", align 1
@i2c0_8_pins = internal constant [2 x i32] [i32 42, i32 43], align 4
@.str.112 = private unnamed_addr constant [11 x i8] c"i2c0_9_grp\00", align 1
@i2c0_9_pins = internal constant [2 x i32] [i32 46, i32 47], align 4
@.str.113 = private unnamed_addr constant [12 x i8] c"i2c0_10_grp\00", align 1
@i2c0_10_pins = internal constant [2 x i32] [i32 50, i32 51], align 4
@.str.114 = private unnamed_addr constant [11 x i8] c"i2c1_0_grp\00", align 1
@i2c1_0_pins = internal constant [2 x i32] [i32 12, i32 13], align 4
@.str.115 = private unnamed_addr constant [11 x i8] c"i2c1_1_grp\00", align 1
@i2c1_1_pins = internal constant [2 x i32] [i32 16, i32 17], align 4
@.str.116 = private unnamed_addr constant [11 x i8] c"i2c1_2_grp\00", align 1
@i2c1_2_pins = internal constant [2 x i32] [i32 20, i32 21], align 4
@.str.117 = private unnamed_addr constant [11 x i8] c"i2c1_3_grp\00", align 1
@i2c1_3_pins = internal constant [2 x i32] [i32 24, i32 25], align 4
@.str.118 = private unnamed_addr constant [11 x i8] c"i2c1_4_grp\00", align 1
@i2c1_4_pins = internal constant [2 x i32] [i32 28, i32 29], align 4
@.str.119 = private unnamed_addr constant [11 x i8] c"i2c1_5_grp\00", align 1
@i2c1_5_pins = internal constant [2 x i32] [i32 32, i32 33], align 4
@.str.120 = private unnamed_addr constant [11 x i8] c"i2c1_6_grp\00", align 1
@i2c1_6_pins = internal constant [2 x i32] [i32 36, i32 37], align 4
@.str.121 = private unnamed_addr constant [11 x i8] c"i2c1_7_grp\00", align 1
@i2c1_7_pins = internal constant [2 x i32] [i32 40, i32 41], align 4
@.str.122 = private unnamed_addr constant [11 x i8] c"i2c1_8_grp\00", align 1
@i2c1_8_pins = internal constant [2 x i32] [i32 44, i32 45], align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"i2c1_9_grp\00", align 1
@i2c1_9_pins = internal constant [2 x i32] [i32 48, i32 49], align 4
@.str.124 = private unnamed_addr constant [12 x i8] c"i2c1_10_grp\00", align 1
@i2c1_10_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.125 = private unnamed_addr constant [11 x i8] c"ttc0_0_grp\00", align 1
@ttc0_0_pins = internal constant [2 x i32] [i32 18, i32 19], align 4
@.str.126 = private unnamed_addr constant [11 x i8] c"ttc0_1_grp\00", align 1
@ttc0_1_pins = internal constant [2 x i32] [i32 30, i32 31], align 4
@.str.127 = private unnamed_addr constant [11 x i8] c"ttc0_2_grp\00", align 1
@ttc0_2_pins = internal constant [2 x i32] [i32 42, i32 43], align 4
@.str.128 = private unnamed_addr constant [11 x i8] c"ttc1_0_grp\00", align 1
@ttc1_0_pins = internal constant [2 x i32] [i32 16, i32 17], align 4
@.str.129 = private unnamed_addr constant [11 x i8] c"ttc1_1_grp\00", align 1
@ttc1_1_pins = internal constant [2 x i32] [i32 28, i32 29], align 4
@.str.130 = private unnamed_addr constant [11 x i8] c"ttc1_2_grp\00", align 1
@ttc1_2_pins = internal constant [2 x i32] [i32 40, i32 41], align 4
@.str.131 = private unnamed_addr constant [12 x i8] c"swdt0_0_grp\00", align 1
@swdt0_0_pins = internal constant [2 x i32] [i32 14, i32 15], align 4
@.str.132 = private unnamed_addr constant [12 x i8] c"swdt0_1_grp\00", align 1
@swdt0_1_pins = internal constant [2 x i32] [i32 26, i32 27], align 4
@.str.133 = private unnamed_addr constant [12 x i8] c"swdt0_2_grp\00", align 1
@swdt0_2_pins = internal constant [2 x i32] [i32 38, i32 39], align 4
@.str.134 = private unnamed_addr constant [12 x i8] c"swdt0_3_grp\00", align 1
@swdt0_3_pins = internal constant [2 x i32] [i32 50, i32 51], align 4
@.str.135 = private unnamed_addr constant [12 x i8] c"swdt0_4_grp\00", align 1
@swdt0_4_pins = internal constant [2 x i32] [i32 52, i32 53], align 4
@.str.136 = private unnamed_addr constant [12 x i8] c"gpio0_0_grp\00", align 1
@gpio0_0_pins = internal constant [1 x i32] zeroinitializer, align 4
@.str.137 = private unnamed_addr constant [12 x i8] c"gpio0_1_grp\00", align 1
@gpio0_1_pins = internal constant [1 x i32] [i32 1], align 4
@.str.138 = private unnamed_addr constant [12 x i8] c"gpio0_2_grp\00", align 1
@gpio0_2_pins = internal constant [1 x i32] [i32 2], align 4
@.str.139 = private unnamed_addr constant [12 x i8] c"gpio0_3_grp\00", align 1
@gpio0_3_pins = internal constant [1 x i32] [i32 3], align 4
@.str.140 = private unnamed_addr constant [12 x i8] c"gpio0_4_grp\00", align 1
@gpio0_4_pins = internal constant [1 x i32] [i32 4], align 4
@.str.141 = private unnamed_addr constant [12 x i8] c"gpio0_5_grp\00", align 1
@gpio0_5_pins = internal constant [1 x i32] [i32 5], align 4
@.str.142 = private unnamed_addr constant [12 x i8] c"gpio0_6_grp\00", align 1
@gpio0_6_pins = internal constant [1 x i32] [i32 6], align 4
@.str.143 = private unnamed_addr constant [12 x i8] c"gpio0_7_grp\00", align 1
@gpio0_7_pins = internal constant [1 x i32] [i32 7], align 4
@.str.144 = private unnamed_addr constant [12 x i8] c"gpio0_8_grp\00", align 1
@gpio0_8_pins = internal constant [1 x i32] [i32 8], align 4
@.str.145 = private unnamed_addr constant [12 x i8] c"gpio0_9_grp\00", align 1
@gpio0_9_pins = internal constant [1 x i32] [i32 9], align 4
@.str.146 = private unnamed_addr constant [13 x i8] c"gpio0_10_grp\00", align 1
@gpio0_10_pins = internal constant [1 x i32] [i32 10], align 4
@.str.147 = private unnamed_addr constant [13 x i8] c"gpio0_11_grp\00", align 1
@gpio0_11_pins = internal constant [1 x i32] [i32 11], align 4
@.str.148 = private unnamed_addr constant [13 x i8] c"gpio0_12_grp\00", align 1
@gpio0_12_pins = internal constant [1 x i32] [i32 12], align 4
@.str.149 = private unnamed_addr constant [13 x i8] c"gpio0_13_grp\00", align 1
@gpio0_13_pins = internal constant [1 x i32] [i32 13], align 4
@.str.150 = private unnamed_addr constant [13 x i8] c"gpio0_14_grp\00", align 1
@gpio0_14_pins = internal constant [1 x i32] [i32 14], align 4
@.str.151 = private unnamed_addr constant [13 x i8] c"gpio0_15_grp\00", align 1
@gpio0_15_pins = internal constant [1 x i32] [i32 15], align 4
@.str.152 = private unnamed_addr constant [13 x i8] c"gpio0_16_grp\00", align 1
@gpio0_16_pins = internal constant [1 x i32] [i32 16], align 4
@.str.153 = private unnamed_addr constant [13 x i8] c"gpio0_17_grp\00", align 1
@gpio0_17_pins = internal constant [1 x i32] [i32 17], align 4
@.str.154 = private unnamed_addr constant [13 x i8] c"gpio0_18_grp\00", align 1
@gpio0_18_pins = internal constant [1 x i32] [i32 18], align 4
@.str.155 = private unnamed_addr constant [13 x i8] c"gpio0_19_grp\00", align 1
@gpio0_19_pins = internal constant [1 x i32] [i32 19], align 4
@.str.156 = private unnamed_addr constant [13 x i8] c"gpio0_20_grp\00", align 1
@gpio0_20_pins = internal constant [1 x i32] [i32 20], align 4
@.str.157 = private unnamed_addr constant [13 x i8] c"gpio0_21_grp\00", align 1
@gpio0_21_pins = internal constant [1 x i32] [i32 21], align 4
@.str.158 = private unnamed_addr constant [13 x i8] c"gpio0_22_grp\00", align 1
@gpio0_22_pins = internal constant [1 x i32] [i32 22], align 4
@.str.159 = private unnamed_addr constant [13 x i8] c"gpio0_23_grp\00", align 1
@gpio0_23_pins = internal constant [1 x i32] [i32 23], align 4
@.str.160 = private unnamed_addr constant [13 x i8] c"gpio0_24_grp\00", align 1
@gpio0_24_pins = internal constant [1 x i32] [i32 24], align 4
@.str.161 = private unnamed_addr constant [13 x i8] c"gpio0_25_grp\00", align 1
@gpio0_25_pins = internal constant [1 x i32] [i32 25], align 4
@.str.162 = private unnamed_addr constant [13 x i8] c"gpio0_26_grp\00", align 1
@gpio0_26_pins = internal constant [1 x i32] [i32 26], align 4
@.str.163 = private unnamed_addr constant [13 x i8] c"gpio0_27_grp\00", align 1
@gpio0_27_pins = internal constant [1 x i32] [i32 27], align 4
@.str.164 = private unnamed_addr constant [13 x i8] c"gpio0_28_grp\00", align 1
@gpio0_28_pins = internal constant [1 x i32] [i32 28], align 4
@.str.165 = private unnamed_addr constant [13 x i8] c"gpio0_29_grp\00", align 1
@gpio0_29_pins = internal constant [1 x i32] [i32 29], align 4
@.str.166 = private unnamed_addr constant [13 x i8] c"gpio0_30_grp\00", align 1
@gpio0_30_pins = internal constant [1 x i32] [i32 30], align 4
@.str.167 = private unnamed_addr constant [13 x i8] c"gpio0_31_grp\00", align 1
@gpio0_31_pins = internal constant [1 x i32] [i32 31], align 4
@.str.168 = private unnamed_addr constant [13 x i8] c"gpio0_32_grp\00", align 1
@gpio0_32_pins = internal constant [1 x i32] [i32 32], align 4
@.str.169 = private unnamed_addr constant [13 x i8] c"gpio0_33_grp\00", align 1
@gpio0_33_pins = internal constant [1 x i32] [i32 33], align 4
@.str.170 = private unnamed_addr constant [13 x i8] c"gpio0_34_grp\00", align 1
@gpio0_34_pins = internal constant [1 x i32] [i32 34], align 4
@.str.171 = private unnamed_addr constant [13 x i8] c"gpio0_35_grp\00", align 1
@gpio0_35_pins = internal constant [1 x i32] [i32 35], align 4
@.str.172 = private unnamed_addr constant [13 x i8] c"gpio0_36_grp\00", align 1
@gpio0_36_pins = internal constant [1 x i32] [i32 36], align 4
@.str.173 = private unnamed_addr constant [13 x i8] c"gpio0_37_grp\00", align 1
@gpio0_37_pins = internal constant [1 x i32] [i32 37], align 4
@.str.174 = private unnamed_addr constant [13 x i8] c"gpio0_38_grp\00", align 1
@gpio0_38_pins = internal constant [1 x i32] [i32 38], align 4
@.str.175 = private unnamed_addr constant [13 x i8] c"gpio0_39_grp\00", align 1
@gpio0_39_pins = internal constant [1 x i32] [i32 39], align 4
@.str.176 = private unnamed_addr constant [13 x i8] c"gpio0_40_grp\00", align 1
@gpio0_40_pins = internal constant [1 x i32] [i32 40], align 4
@.str.177 = private unnamed_addr constant [13 x i8] c"gpio0_41_grp\00", align 1
@gpio0_41_pins = internal constant [1 x i32] [i32 41], align 4
@.str.178 = private unnamed_addr constant [13 x i8] c"gpio0_42_grp\00", align 1
@gpio0_42_pins = internal constant [1 x i32] [i32 42], align 4
@.str.179 = private unnamed_addr constant [13 x i8] c"gpio0_43_grp\00", align 1
@gpio0_43_pins = internal constant [1 x i32] [i32 43], align 4
@.str.180 = private unnamed_addr constant [13 x i8] c"gpio0_44_grp\00", align 1
@gpio0_44_pins = internal constant [1 x i32] [i32 44], align 4
@.str.181 = private unnamed_addr constant [13 x i8] c"gpio0_45_grp\00", align 1
@gpio0_45_pins = internal constant [1 x i32] [i32 45], align 4
@.str.182 = private unnamed_addr constant [13 x i8] c"gpio0_46_grp\00", align 1
@gpio0_46_pins = internal constant [1 x i32] [i32 46], align 4
@.str.183 = private unnamed_addr constant [13 x i8] c"gpio0_47_grp\00", align 1
@gpio0_47_pins = internal constant [1 x i32] [i32 47], align 4
@.str.184 = private unnamed_addr constant [13 x i8] c"gpio0_48_grp\00", align 1
@gpio0_48_pins = internal constant [1 x i32] [i32 48], align 4
@.str.185 = private unnamed_addr constant [13 x i8] c"gpio0_49_grp\00", align 1
@gpio0_49_pins = internal constant [1 x i32] [i32 49], align 4
@.str.186 = private unnamed_addr constant [13 x i8] c"gpio0_50_grp\00", align 1
@gpio0_50_pins = internal constant [1 x i32] [i32 50], align 4
@.str.187 = private unnamed_addr constant [13 x i8] c"gpio0_51_grp\00", align 1
@gpio0_51_pins = internal constant [1 x i32] [i32 51], align 4
@.str.188 = private unnamed_addr constant [13 x i8] c"gpio0_52_grp\00", align 1
@gpio0_52_pins = internal constant [1 x i32] [i32 52], align 4
@.str.189 = private unnamed_addr constant [13 x i8] c"gpio0_53_grp\00", align 1
@gpio0_53_pins = internal constant [1 x i32] [i32 53], align 4
@.str.190 = private unnamed_addr constant [11 x i8] c"usb0_0_grp\00", align 1
@usb0_0_pins = internal constant [12 x i32] [i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], align 4
@.str.191 = private unnamed_addr constant [11 x i8] c"usb1_0_grp\00", align 1
@usb1_0_pins = internal constant [12 x i32] [i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51], align 4
@.str.192 = private unnamed_addr constant [5 x i8] c"can0\00", align 1
@can0_groups = internal constant [11 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], align 4
@.str.193 = private unnamed_addr constant [5 x i8] c"can1\00", align 1
@can1_groups = internal constant [12 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 4
@.str.194 = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@ethernet0_groups = internal constant [1 x ptr] [ptr @.str.5], align 4
@.str.195 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@ethernet1_groups = internal constant [1 x ptr] [ptr @.str.6], align 4
@.str.196 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@gpio0_groups = internal constant [54 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189], align 4
@.str.197 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@i2c0_groups = internal constant [11 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], align 4
@.str.198 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@i2c1_groups = internal constant [11 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], align 4
@.str.199 = private unnamed_addr constant [6 x i8] c"mdio0\00", align 1
@mdio0_groups = internal constant [1 x ptr] [ptr @.str.7], align 4
@.str.200 = private unnamed_addr constant [6 x i8] c"mdio1\00", align 1
@mdio1_groups = internal constant [1 x ptr] [ptr @.str.8], align 4
@.str.201 = private unnamed_addr constant [6 x i8] c"qspi0\00", align 1
@qspi0_groups = internal constant [1 x ptr] [ptr @.str.9], align 4
@.str.202 = private unnamed_addr constant [6 x i8] c"qspi1\00", align 1
@qspi1_groups = internal constant [1 x ptr] [ptr @.str.10], align 4
@.str.203 = private unnamed_addr constant [11 x i8] c"qspi_fbclk\00", align 1
@qspi_fbclk_groups = internal constant [1 x ptr] [ptr @.str.11], align 4
@.str.204 = private unnamed_addr constant [9 x i8] c"qspi_cs1\00", align 1
@qspi_cs1_groups = internal constant [1 x ptr] [ptr @.str.12], align 4
@.str.205 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@spi0_groups = internal constant [3 x ptr] [ptr @.str.13, ptr @.str.17, ptr @.str.21], align 4
@.str.206 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@spi1_groups = internal constant [4 x ptr] [ptr @.str.25, ptr @.str.29, ptr @.str.33, ptr @.str.37], align 4
@.str.207 = private unnamed_addr constant [8 x i8] c"spi0_ss\00", align 1
@spi0_ss_groups = internal constant [9 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.208 = private unnamed_addr constant [8 x i8] c"spi1_ss\00", align 1
@spi1_ss_groups = internal constant [12 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 4
@.str.209 = private unnamed_addr constant [6 x i8] c"sdio0\00", align 1
@sdio0_groups = internal constant [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@.str.210 = private unnamed_addr constant [9 x i8] c"sdio0_pc\00", align 1
@sdio0_pc_groups = internal constant [27 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188], align 4
@.str.211 = private unnamed_addr constant [9 x i8] c"sdio0_cd\00", align 1
@sdio0_cd_groups = internal constant [53 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.49], align 4
@.str.212 = private unnamed_addr constant [9 x i8] c"sdio0_wp\00", align 1
@sdio0_wp_groups = internal constant [53 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.48], align 4
@.str.213 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@sdio1_groups = internal constant [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4
@.str.214 = private unnamed_addr constant [9 x i8] c"sdio1_pc\00", align 1
@sdio1_pc_groups = internal constant [27 x ptr] [ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189], align 4
@.str.215 = private unnamed_addr constant [9 x i8] c"sdio1_cd\00", align 1
@sdio1_cd_groups = internal constant [53 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.51], align 4
@.str.216 = private unnamed_addr constant [9 x i8] c"sdio1_wp\00", align 1
@sdio1_wp_groups = internal constant [53 x ptr] [ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.50], align 4
@.str.217 = private unnamed_addr constant [9 x i8] c"smc0_nor\00", align 1
@smc0_nor_groups = internal constant [1 x ptr] [ptr @.str.52], align 4
@.str.218 = private unnamed_addr constant [13 x i8] c"smc0_nor_cs1\00", align 1
@smc0_nor_cs1_groups = internal constant [1 x ptr] [ptr @.str.53], align 4
@.str.219 = private unnamed_addr constant [16 x i8] c"smc0_nor_addr25\00", align 1
@smc0_nor_addr25_groups = internal constant [1 x ptr] [ptr @.str.54], align 4
@.str.220 = private unnamed_addr constant [10 x i8] c"smc0_nand\00", align 1
@smc0_nand_groups = internal constant [2 x ptr] [ptr @.str.55, ptr @.str.56], align 4
@.str.221 = private unnamed_addr constant [5 x i8] c"ttc0\00", align 1
@ttc0_groups = internal constant [3 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.127], align 4
@.str.222 = private unnamed_addr constant [5 x i8] c"ttc1\00", align 1
@ttc1_groups = internal constant [3 x ptr] [ptr @.str.128, ptr @.str.129, ptr @.str.130], align 4
@.str.223 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@uart0_groups = internal constant [11 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], align 4
@.str.224 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_groups = internal constant [12 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], align 4
@.str.225 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@usb0_groups = internal constant [1 x ptr] [ptr @.str.190], align 4
@.str.226 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@usb1_groups = internal constant [1 x ptr] [ptr @.str.191], align 4
@.str.227 = private unnamed_addr constant [6 x i8] c"swdt0\00", align 1
@swdt0_groups = internal constant [5 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], align 4
@.str.228 = private unnamed_addr constant [13 x i8] c"zynq_pinctrl\00", align 1
@zynq_pins = internal constant [58 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.229, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.230, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.231, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.232, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.233, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.234, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.235, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.236, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.237, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.238, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.239, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.240, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.241, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.242, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.243, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.244, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.245, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.246, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.247, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.248, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.249, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.250, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.251, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.252, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.253, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.254, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.255, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.256, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.257, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.258, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.259, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.260, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.261, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.262, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.263, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.264, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.265, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.266, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.267, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.268, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.269, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.270, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.271, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.272, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.273, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.274, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.275, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.276, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.277, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.278, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.279, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.280, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.281, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.282, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.283, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.284, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.285, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.286, ptr null }], align 4
@zynq_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @zynq_pctrl_get_groups_count, ptr @zynq_pctrl_get_group_name, ptr @zynq_pctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, align 4
@zynq_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @zynq_pmux_get_functions_count, ptr @zynq_pmux_get_function_name, ptr @zynq_pmux_get_function_groups, ptr @zynq_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@zynq_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @zynq_pinconf_cfg_get, ptr @zynq_pinconf_cfg_set, ptr null, ptr @zynq_pinconf_group_set, ptr null, ptr null, ptr null }, align 4
@zynq_dt_params = internal constant [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.289, i32 128, i32 1 }], align 4
@zynq_conf_items = internal constant [1 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.290, ptr null, i8 1 }], align 4
@.str.229 = private unnamed_addr constant [5 x i8] c"MIO0\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"MIO1\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"MIO2\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"MIO3\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"MIO4\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"MIO5\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"MIO6\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"MIO7\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"MIO8\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"MIO9\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"MIO10\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"MIO11\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"MIO12\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"MIO13\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"MIO14\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"MIO15\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"MIO16\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"MIO17\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"MIO18\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"MIO19\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"MIO20\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"MIO21\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"MIO22\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"MIO23\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"MIO24\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"MIO25\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"MIO26\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"MIO27\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"MIO28\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"MIO29\00", align 1
@.str.259 = private unnamed_addr constant [6 x i8] c"MIO30\00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c"MIO31\00", align 1
@.str.261 = private unnamed_addr constant [6 x i8] c"MIO32\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"MIO33\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c"MIO34\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"MIO35\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"MIO36\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"MIO37\00", align 1
@.str.267 = private unnamed_addr constant [6 x i8] c"MIO38\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"MIO39\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"MIO40\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"MIO41\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"MIO42\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"MIO43\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"MIO44\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"MIO45\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"MIO46\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"MIO47\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"MIO48\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"MIO49\00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"MIO50\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"MIO51\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"MIO52\00", align 1
@.str.282 = private unnamed_addr constant [6 x i8] c"MIO53\00", align 1
@.str.283 = private unnamed_addr constant [12 x i8] c"EMIO_SD0_WP\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"EMIO_SD0_CD\00", align 1
@.str.285 = private unnamed_addr constant [12 x i8] c"EMIO_SD1_WP\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"EMIO_SD1_CD\00", align 1
@.str.287 = private unnamed_addr constant [30 x i8] c"unsupported IO standard '%u'\0A\00", align 1
@.str.288 = private unnamed_addr constant [42 x i8] c"unsupported configuration parameter '%u'\0A\00", align 1
@.str.289 = private unnamed_addr constant [12 x i8] c"io-standard\00", align 1
@.str.290 = private unnamed_addr constant [12 x i8] c"IO-standard\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_zynq__202_1217_zynq_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @zynq_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynq_pinctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %9 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %12 = ptrtoint ptr %8 to i32
  br label %30

13:                                               ; preds = %5
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %30

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 3
  store ptr @zynq_pctrl_groups, ptr %20, align 4
  %21 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 4
  store i32 187, ptr %21, align 4
  %22 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 5
  store ptr @zynq_pmux_functions, ptr %22, align 4
  %23 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 6
  store i32 36, ptr %23, align 4
  %24 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @zynq_desc, ptr noundef nonnull %3) #6
  store ptr %24, ptr %3, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = ptrtoint ptr %24 to i32
  br label %30

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %30

30:                                               ; preds = %28, %26, %16, %11, %1
  %31 = phi i32 [ %12, %11 ], [ %27, %26 ], [ 0, %28 ], [ -19, %16 ], [ -12, %1 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pctrl_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.zynq_pinctrl, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zynq_pctrl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.zynq_pctrl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.zynq_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.zynq_pctrl_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.zynq_pctrl_group, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pmux_get_functions_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.zynq_pinctrl, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zynq_pmux_get_function_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.zynq_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.zynq_pinmux_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pmux_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.zynq_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.zynq_pinmux_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.zynq_pinmux_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  switch i32 %1, label %11 [
    i32 24, label %20
    i32 23, label %20
    i32 20, label %20
    i32 19, label %20
  ]

11:                                               ; preds = %3
  %12 = getelementptr %struct.zynq_pctrl_group, ptr %8, i32 %2, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.zynq_pctrl_group, ptr %8, i32 %2, i32 1
  %17 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 2
  %18 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 1
  %19 = getelementptr %struct.zynq_pinmux_function, ptr %10, i32 %1, i32 3
  br label %55

20:                                               ; preds = %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %21 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.zynq_pinmux_function, ptr %10, i32 %1, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = call i32 @regmap_read(ptr noundef %22, i32 noundef %27, ptr noundef nonnull %4) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %77

31:                                               ; preds = %20
  %32 = getelementptr %struct.zynq_pinmux_function, ptr %10, i32 %1, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, ptr %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, ptr %4, align 4
  %37 = getelementptr %struct.zynq_pctrl_group, ptr %8, i32 %2, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.zynq_pinmux_function, ptr %10, i32 %1, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = shl i32 %39, %42
  %44 = or i32 %43, %36
  store i32 %44, ptr %4, align 4
  %45 = load ptr, ptr %21, align 4
  %46 = load i32, ptr %23, align 4
  %47 = load i32, ptr %25, align 4
  %48 = add i32 %47, %46
  %49 = call i32 @regmap_write(ptr noundef %45, i32 noundef %48, i32 noundef %44) #6
  %50 = icmp eq i32 %49, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br i1 %50, label %76, label %77

51:                                               ; preds = %67
  %52 = add nuw i32 %56, 1
  %53 = load i32, ptr %12, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51, %15
  %56 = phi i32 [ 0, %15 ], [ %52, %51 ]
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i32, ptr %57, i32 %56
  %59 = load i32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %60 = load i32, ptr %17, align 4
  %61 = shl i32 %59, 2
  %62 = add i32 %60, %61
  %63 = load ptr, ptr %18, align 4
  %64 = call i32 @regmap_read(ptr noundef %63, i32 noundef %62, ptr noundef nonnull %5) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %77

67:                                               ; preds = %55
  %68 = load i32, ptr %5, align 4
  %69 = and i32 %68, -255
  %70 = load i32, ptr %19, align 4
  %71 = shl i32 %70, 1
  %72 = or i32 %71, %69
  store i32 %72, ptr %5, align 4
  %73 = load ptr, ptr %18, align 4
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef %62, i32 noundef %72) #6
  %75 = icmp eq i32 %74, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br i1 %75, label %51, label %77

76:                                               ; preds = %51, %31, %11
  br label %77

77:                                               ; preds = %76, %67, %66, %31, %30
  %78 = phi i32 [ 0, %76 ], [ %49, %31 ], [ %28, %30 ], [ %64, %66 ], [ %74, %67 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pinconf_cfg_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %8 = icmp ugt i32 %1, 53
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.zynq_pinctrl, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.zynq_pinctrl, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw nsw i32 %1, 2
  %15 = add i32 %13, %14
  %16 = call i32 @regmap_read(ptr noundef %11, i32 noundef %15, ptr noundef nonnull %4) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %9
  %19 = trunc i32 %5 to i8
  switch i8 %19, label %53 [
    i8 5, label %20
    i8 2, label %24
    i8 1, label %28
    i8 24, label %32
    i8 15, label %36
    i8 -128, label %45
    i8 21, label %45
  ]

20:                                               ; preds = %18
  %21 = load i32, ptr %4, align 4
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %49

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %49

28:                                               ; preds = %18
  %29 = load i32, ptr %4, align 4
  %30 = and i32 %29, 4097
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %53

32:                                               ; preds = %18
  %33 = load i32, ptr %4, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 1
  br label %49

36:                                               ; preds = %18
  %37 = load i32, ptr %4, align 4
  %38 = and i32 %37, 3584
  %39 = icmp eq i32 %38, 2048
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = and i32 %37, 8192
  %42 = icmp eq i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  br i1 %42, label %53, label %49

45:                                               ; preds = %18, %18
  %46 = load i32, ptr %4, align 4
  %47 = lshr i32 %46, 9
  %48 = and i32 %47, 7
  br label %49

49:                                               ; preds = %45, %40, %32, %28, %24, %20
  %50 = phi i32 [ %48, %45 ], [ %44, %40 ], [ %35, %32 ], [ 1, %20 ], [ 1, %24 ], [ 0, %28 ]
  %51 = shl nuw nsw i32 %50, 8
  %52 = or i32 %51, %6
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %49, %40, %36, %28, %24, %20, %18, %9, %3
  %54 = phi i32 [ 0, %49 ], [ -22, %40 ], [ -524, %3 ], [ -5, %9 ], [ -22, %20 ], [ -22, %24 ], [ -22, %28 ], [ -524, %18 ], [ -22, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pinconf_cfg_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %7 = icmp ugt i32 %1, 53
  br i1 %7, label %84, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.zynq_pinctrl, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw nsw i32 %1, 2
  %14 = add i32 %12, %13
  %15 = call i32 @regmap_read(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %5) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %8
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  br label %21

21:                                               ; preds = %60, %19
  %22 = phi i32 [ 0, %19 ], [ %62, %60 ]
  %23 = phi i32 [ 0, %19 ], [ %61, %60 ]
  %24 = phi i32 [ 0, %19 ], [ %63, %60 ]
  %25 = getelementptr i32, ptr %2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 255
  %28 = lshr i32 %26, 8
  %29 = trunc i32 %26 to i8
  switch i8 %29, label %58 [
    i8 5, label %60
    i8 2, label %30
    i8 1, label %31
    i8 24, label %34
    i8 -128, label %41
    i8 21, label %41
    i8 15, label %51
  ]

30:                                               ; preds = %21
  br label %60

31:                                               ; preds = %21
  %32 = load i32, ptr %5, align 4
  %33 = and i32 %32, -4098
  store i32 %33, ptr %5, align 4
  br label %60

34:                                               ; preds = %21
  %35 = icmp ult i32 %26, 256
  %36 = load i32, ptr %5, align 4
  br i1 %35, label %39, label %37

37:                                               ; preds = %34
  %38 = or i32 %36, 256
  store i32 %38, ptr %5, align 4
  br label %60

39:                                               ; preds = %34
  %40 = and i32 %36, -257
  store i32 %40, ptr %5, align 4
  br label %60

41:                                               ; preds = %21, %21
  %42 = add nsw i32 %28, -5
  %43 = icmp ult i32 %42, -4
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.287, i32 noundef %27) #7
  br label %60

46:                                               ; preds = %41
  %47 = load i32, ptr %5, align 4
  %48 = and i32 %47, -3585
  %49 = shl nuw nsw i32 %28, 9
  %50 = or i32 %48, %49
  store i32 %50, ptr %5, align 4
  br label %60

51:                                               ; preds = %21
  %52 = icmp ult i32 %26, 256
  %53 = load i32, ptr %5, align 4
  br i1 %52, label %56, label %54

54:                                               ; preds = %51
  %55 = or i32 %53, 8192
  store i32 %55, ptr %5, align 4
  br label %60

56:                                               ; preds = %51
  %57 = and i32 %53, -8193
  store i32 %57, ptr %5, align 4
  br label %60

58:                                               ; preds = %21
  %59 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.288, i32 noundef %27) #7
  br label %60

60:                                               ; preds = %58, %56, %54, %46, %44, %39, %37, %31, %30, %21
  %61 = phi i32 [ %23, %58 ], [ %23, %54 ], [ %23, %56 ], [ %23, %44 ], [ %23, %46 ], [ %23, %37 ], [ %23, %39 ], [ %23, %31 ], [ %23, %30 ], [ 4096, %21 ]
  %62 = phi i32 [ %22, %58 ], [ %22, %54 ], [ %22, %56 ], [ %22, %44 ], [ %22, %46 ], [ %22, %37 ], [ %22, %39 ], [ %22, %31 ], [ 1, %30 ], [ %22, %21 ]
  %63 = add nuw i32 %24, 1
  %64 = icmp eq i32 %63, %3
  br i1 %64, label %65, label %21

65:                                               ; preds = %60, %17
  %66 = phi i32 [ 0, %17 ], [ %61, %60 ]
  %67 = phi i32 [ 0, %17 ], [ %62, %60 ]
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne i32 %66, 0
  %70 = select i1 %68, i1 true, i1 %69
  %71 = load i32, ptr %5, align 4
  br i1 %70, label %72, label %76

72:                                               ; preds = %65
  %73 = and i32 %71, -4098
  %74 = or i32 %67, %66
  %75 = or i32 %74, %73
  store i32 %75, ptr %5, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i32 [ %75, %72 ], [ %71, %65 ]
  %78 = load ptr, ptr %9, align 4
  %79 = load i32, ptr %11, align 4
  %80 = add i32 %79, %13
  %81 = call i32 @regmap_write(ptr noundef %78, i32 noundef %80, i32 noundef %77) #6
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 0, i32 -5
  br label %84

84:                                               ; preds = %76, %8, %4
  %85 = phi i32 [ -524, %4 ], [ -5, %8 ], [ %83, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.zynq_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.zynq_pctrl_group, ptr %7, i32 %1, i32 1
  %9 = getelementptr %struct.zynq_pctrl_group, ptr %7, i32 %1, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = add nuw i32 %17, 1
  %14 = load i32, ptr %9, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %4
  %17 = phi i32 [ %13, %12 ], [ 0, %4 ]
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i32, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @zynq_pinconf_cfg_set(ptr noundef %0, i32 noundef %20, ptr noundef %2, i32 noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %12, label %23

23:                                               ; preds = %16, %12, %4
  %24 = phi i32 [ 0, %4 ], [ 0, %12 ], [ %21, %16 ]
  ret i32 %24
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
