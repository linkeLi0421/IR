; ModuleID = '/llk/IR/drivers/clk/renesas/r9a06g032-clocks.c_pt.bc'
source_filename = "../drivers/clk/renesas/r9a06g032-clocks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.7 = type { i16, i16 }
%struct.r9a06g032_gate = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.8 = type { i8, i16, i16, i16, i16, i16 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.r9a06g032_priv = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.r9a06g032_clkdesc = type { ptr, i24, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [4 x i8] }
%struct.anon.6 = type { i32, [4 x i16] }
%struct.r9a06g032_clk_gate = type { %struct.clk_hw, ptr, i16, %struct.r9a06g032_gate }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.r9a06g032_clk_div = type { %struct.clk_hw, ptr, i16, i16, i16, i16, i8, [8 x i16] }
%struct.r9a06g032_clk_bitsel = type { %struct.clk_hw, ptr, i16, i16 }
%struct.r9a06g032_clk_dualgate = type { %struct.clk_hw, ptr, i16, i16, [2 x %struct.r9a06g032_gate] }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.9 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.9 = type { %struct.mutex }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }

@__initcall__kmod_r9a06g032_clocks__166_987_r9a06g032_clocks_init4 = internal global ptr @r9a06g032_clocks_init, section ".initcall4.init", align 4
@r9a06g032_clock_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @r9a06g032_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [26 x i8] c"renesas,r9a06g032-sysctrl\00", align 1
@r9a06g032_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r9a06g032-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/clk/renesas/r9a06g032-clocks.c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"clk_pll_usb\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"clkout_d10\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"clkout_d16\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"clkout_d160\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"clkout_d1or2\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"clkout_d20\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"clkout_d40\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"clkout_d5\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"clkout_d8\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"div_adc\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"div_i2c\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"div_nand\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"div_p1_pg\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"div_p2_pg\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"div_p3_pg\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"div_p4_pg\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"div_p5_pg\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"div_p6_pg\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"div_qspi0\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"div_qspi1\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"div_ref_sync\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"div_sdio0\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"div_sdio1\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"div_switch\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"div_uart\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"clk_25_pg4\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"clk_25_pg5\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"clk_25_pg6\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"clk_25_pg7\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"clk_25_pg8\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"clk_adc\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"clk_ecat100\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"clk_hsr100\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"clk_i2c0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"clk_i2c1\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"clk_mii_ref\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"clk_nand\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"clk_nousbp2_pg6\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"clk_p1_pg2\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"clk_p1_pg3\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"clk_p1_pg4\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"clk_p4_pg3\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"clk_p4_pg4\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"clk_p6_pg1\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"clk_p6_pg2\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"clk_p6_pg3\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"clk_p6_pg4\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"clk_pci_usb\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"clk_qspi0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"clk_qspi1\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"clk_rgmii_ref\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"clk_rmii_ref\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"clk_sdio0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"clk_sdio1\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"clk_sercos100\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"clk_slcd\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"clk_spi1\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"clk_spi2\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"clk_spi3\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"clk_spi4\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"clk_spi5\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"clk_switch\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"div_motor\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"hclk_ecat125\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"hclk_pinconfig\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"hclk_sercos\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"hclk_sgpio2\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"hclk_sgpio3\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"hclk_sgpio4\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"hclk_timer0\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"hclk_timer1\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"hclk_usbf\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"hclk_usbh\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"hclk_usbpm\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"clk_48_pg_f\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"clk_48_pg4\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"clk_ddrphy_pllclk_d4\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"clk_ecat100_d4\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"clk_hsr100_d2\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"clk_ref_sync_d4\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"clk_ref_sync_d8\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"clk_sercos100_d2\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"div_ca7\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"hclk_can0\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"hclk_can1\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"hclk_deltasigma\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"hclk_pwmpto\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"hclk_rsv\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"hclk_sgpio0\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"hclk_sgpio1\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"rtos_mdc\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"clk_cm3\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"clk_ddrc\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"clk_ecat25\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"clk_hsr50\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"clk_hw_rtos\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"clk_sercos50\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"hclk_adc\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"hclk_cm3\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"hclk_crypto_eip150\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"hclk_crypto_eip93\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"hclk_ddrc\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"hclk_dma0\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"hclk_dma1\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"hclk_gmac0\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"hclk_gmac1\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"hclk_gpio0\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"hclk_gpio1\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"hclk_gpio2\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"hclk_hsr\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"hclk_i2c0\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"hclk_i2c1\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"hclk_lcd\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"hclk_msebi_m\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"hclk_msebi_s\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"hclk_nand\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"hclk_pg_i\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"hclk_pg19\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"hclk_pg20\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"hclk_pg3\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"hclk_pg4\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"hclk_qspi0\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"hclk_qspi1\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"hclk_rtc\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"hclk_sdio0\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"hclk_sdio1\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"hclk_semap\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"hclk_spi0\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"hclk_spi1\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"hclk_spi2\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"hclk_spi3\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"hclk_spi4\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"hclk_spi5\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"hclk_switch\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"hclk_switch_rg\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"hclk_uart0\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"hclk_uart1\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"hclk_uart2\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"hclk_uart3\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"hclk_uart4\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"hclk_uart5\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"hclk_uart6\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"hclk_uart7\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"uart_group_012\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"uart_group_34567\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"clk_uart1\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"clk_uart3\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"clk_uart4\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"clk_uart5\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"clk_uart6\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"clk_uart7\00", align 1
@r9a06g032_clocks = internal unnamed_addr constant <{ { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } }> <{ { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.3, i8 2, i8 0, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 1, i16 25 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.4, i8 18, i8 0, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 10, i16 12 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.5, i8 34, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 10, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.6, i8 50, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 16, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.7, i8 66, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 160, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.8, i8 84, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 1, i8 8, i8 0, i8 0, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.9, i8 98, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 20, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.10, i8 114, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 40, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.11, i8 -126, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 5, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.12, i8 -110, i8 16, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 8, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.13, i8 -92, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 50, i8 -24, i8 -45, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.14, i8 -76, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 64, i8 -32, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.15, i8 -60, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 -128, i8 32, i8 5, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.16, i8 -44, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 32, i8 67, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.17, i8 -28, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 0, i8 -30, i8 3, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.18, i8 -12, i8 16, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 8, i8 0, i8 2, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.19, i8 4, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 8, i8 0, i8 34, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.20, i8 20, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 10, i8 -96, i8 112, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.21, i8 36, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 0, i8 33, i8 1, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.22, i8 52, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 28, i8 -112, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.23, i8 68, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 28, i8 -112, i8 1, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.24, i8 84, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 2, i8 64, i8 -128, i8 3, [4 x i16] [i16 2, i16 4, i16 8, i16 16] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.25, i8 100, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 20, i8 0, i8 -94, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.26, i8 116, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 20, i8 0, i8 -78, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.27, i8 -124, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 5, i8 -96, i8 80, i8 2, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.28, i8 -108, i8 17, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 0, i8 -14, i8 4, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.29, i8 -96, i8 -127, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1865, i16 1866, i16 1867, i16 0, i16 2787, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.30, i8 -80, i8 -127, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1868, i16 1869, i16 1870, i16 0, i16 2788, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.31, i8 -64, i8 -127, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1871, i16 1872, i16 1873, i16 0, i16 2789, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.32, i8 -48, i8 -127, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1874, i16 1875, i16 1876, i16 0, i16 2790, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.33, i8 -32, i8 -127, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1877, i16 1878, i16 1879, i16 0, i16 2791, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.34, i8 -16, i8 -79, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 490, i16 491, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.35, i8 0, i8 50, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1029, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.36, i8 16, i8 50, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1155, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.37, i8 32, i8 -62, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 486, i16 487, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.38, i8 48, i8 -62, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 488, i16 489, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.39, i8 64, i8 -126, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 834, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.40, i8 80, i8 -46, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 644, i16 645, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.41, i8 96, i8 -14, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1908, i16 1909, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.42, i8 112, i8 -30, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2146, i16 2147, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.43, i8 -128, i8 -30, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2148, i16 2149, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.44, i8 -112, i8 -30, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2150, i16 2151, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.45, i8 -96, i8 18, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2084, i16 2085, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.46, i8 -80, i8 18, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2086, i16 2087, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.47, i8 -64, i8 50, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2208, i16 2209, i16 2210, i16 0, i16 2912, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.48, i8 -48, i8 50, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2211, i16 2212, i16 2213, i16 0, i16 2913, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.49, i8 -32, i8 50, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2214, i16 2215, i16 2216, i16 0, i16 2914, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.50, i8 -16, i8 50, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2217, i16 2218, i16 2219, i16 0, i16 2915, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.51, i8 1, i8 -125, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 230, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.52, i8 16, i8 67, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 676, i16 677, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.53, i8 32, i8 83, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1156, i16 1157, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.54, i8 48, i8 -93, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 832, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.55, i8 64, i8 115, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 833, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.56, i8 80, i8 115, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.57, i8 96, i8 -125, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1604, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.58, i8 112, i8 51, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1061, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.59, i8 -128, i8 -29, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2144, i16 2145, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.60, i8 -112, i8 3, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2016, i16 2017, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.61, i8 -96, i8 3, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2018, i16 2019, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.62, i8 -80, i8 3, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2020, i16 2021, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.63, i8 -64, i8 3, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2022, i16 2023, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.64, i8 -48, i8 19, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2080, i16 2081, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.65, i8 -32, i8 19, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2082, i16 2083, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.66, i8 -16, i8 -109, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2434, i16 2435, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.67, i8 4, i8 -108, i8 0, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 2, i8 32, i8 64, i8 5, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.68, i8 17, i8 -92, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1024, i16 1025, i16 0, i16 1026, i16 0, i16 1088, i16 1089 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.69, i8 33, i8 -124, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1856, i16 1857, i16 1858, i16 0, i16 2784, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.70, i8 49, i8 52, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1056, i16 1058, i16 0, i16 1057, i16 0, i16 1120, i16 1121 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.71, i8 65, i8 36, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2243, i16 2244, i16 2245, i16 0, i16 2881, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.72, i8 81, i8 36, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2246, i16 2247, i16 2248, i16 0, i16 2882, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.73, i8 97, i8 36, i8 1, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2249, i16 2250, i16 2251, i16 0, i16 2883, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.74, i8 113, i8 -124, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1859, i16 1860, i16 1861, i16 0, i16 2785, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.75, i8 -127, i8 -124, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1862, i16 1863, i16 1864, i16 0, i16 2786, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.76, i8 -111, i8 -92, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 227, i16 0, i16 0, i16 228, i16 0, i16 258, i16 259 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.77, i8 -95, i8 -92, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 224, i16 225, i16 0, i16 226, i16 0, i16 256, i16 257 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.78, i8 -79, i8 -92, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 229, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.79, i8 -64, i8 36, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1932, i16 1933, i16 0, i16 1934, i16 0, i16 2820, i16 2821 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.80, i8 -48, i8 36, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1929, i16 1930, i16 1931, i16 0, i16 2819, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.81, i8 -30, i8 100, i8 0, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.82, i8 -14, i8 20, i8 2, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.83, i8 2, i8 37, i8 2, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 2, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.84, i8 18, i8 101, i8 1, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.85, i8 34, i8 101, i8 1, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 8, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.7, [12 x i8] } } { ptr @.str.86, i8 50, i8 -123, i8 3, { %struct.anon.7, [12 x i8] } { %struct.anon.7 { i16 2, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.87, i8 68, i8 101, i8 1, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 1, i8 16, i8 -112, i8 3, [4 x i16] [i16 1, i16 2, i16 4, i16 0] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.88, i8 81, i8 37, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1923, i16 1924, i16 1925, i16 0, i16 2817, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.89, i8 97, i8 37, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1926, i16 1927, i16 1928, i16 0, i16 2818, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.90, i8 113, i8 21, i8 4, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 495, i16 496, i16 497, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.91, i8 -127, i8 21, i8 4, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 492, i16 493, i16 494, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.92, i8 -111, i8 37, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1920, i16 1921, i16 1922, i16 0, i16 2816, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.93, i8 -95, i8 21, i8 4, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 480, i16 481, i16 482, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.94, i8 -79, i8 21, i8 4, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 483, i16 484, i16 485, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.95, i8 -60, i8 101, i8 1, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 80, i8 0, i8 74, i8 6, [4 x i16] [i16 80, i16 160, i16 320, i16 640] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.96, i8 -48, i8 37, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2976, i16 2977, i16 0, i16 2978, i16 0, i16 3008, i16 3009 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.97, i8 -32, i8 -11, i8 4, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 803, i16 804, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.98, i8 -16, i8 5, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1027, i16 1028, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.99, i8 0, i8 22, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1156, i16 1157, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.100, i8 16, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3168, i16 3169, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.101, i8 32, i8 70, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1060, i16 1059, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.102, i8 49, i8 54, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 431, i16 432, i16 433, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.103, i8 65, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3104, i16 3105, i16 3106, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.104, i8 81, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 291, i16 292, i16 293, i16 0, i16 322, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.105, i8 97, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 288, i16 289, i16 0, i16 290, i16 0, i16 320, i16 321 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.106, i8 113, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 800, i16 802, i16 0, i16 801, i16 0, i16 928, i16 929 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.107, i8 -127, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 608, i16 609, i16 610, i16 611, i16 704, i16 705, i16 706 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.108, i8 -111, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 612, i16 613, i16 614, i16 615, i16 707, i16 708, i16 709 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.109, i8 -95, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 864, i16 865, i16 866, i16 867, i16 960, i16 961, i16 962 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.110, i8 -79, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 896, i16 897, i16 898, i16 899, i16 992, i16 993, i16 994 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.111, i8 -63, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 530, i16 531, i16 532, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.112, i8 -47, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 533, i16 534, i16 535, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.113, i8 -31, i8 38, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 553, i16 554, i16 555, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.114, i8 -15, i8 22, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1152, i16 1154, i16 0, i16 1153, i16 0, i16 1216, i16 1217 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.115, i8 1, i8 55, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 425, i16 426, i16 427, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.116, i8 17, i8 55, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 428, i16 429, i16 430, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.117, i8 33, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1952, i16 1953, i16 1954, i16 0, i16 2848, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.118, i8 49, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 356, i16 357, i16 358, i16 0, i16 387, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.119, i8 65, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 352, i16 353, i16 354, i16 355, i16 384, i16 385, i16 386 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.120, i8 81, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 640, i16 641, i16 642, i16 643, i16 736, i16 737, i16 738 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.121, i8 97, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1964, i16 1965, i16 0, i16 1966, i16 0, i16 2852, i16 2853 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.122, i8 113, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 556, i16 557, i16 558, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.123, i8 -127, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 559, i16 560, i16 561, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.124, i8 -111, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1958, i16 1959, i16 1960, i16 0, i16 2850, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.125, i8 -95, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1961, i16 1962, i16 1963, i16 0, i16 2851, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.126, i8 -79, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 672, i16 673, i16 674, i16 675, i16 768, i16 769, i16 770 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.127, i8 -63, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1152, i16 1153, i16 1154, i16 1155, i16 1216, i16 1217, i16 1218 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.128, i8 -47, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2720, i16 2721, i16 2722, i16 0, i16 2944, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.129, i8 -31, i8 55, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2560, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.130, i8 -15, i8 39, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 96, i16 97, i16 98, i16 99, i16 128, i16 129, i16 130 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.131, i8 1, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1600, i16 1601, i16 1602, i16 1603, i16 1632, i16 1633, i16 1634 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.132, i8 17, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1955, i16 1956, i16 1957, i16 0, i16 2849, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.133, i8 33, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 512, i16 513, i16 514, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.134, i8 49, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 515, i16 516, i16 517, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.135, i8 65, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 518, i16 519, i16 520, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.136, i8 81, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 521, i16 522, i16 523, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.137, i8 97, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 524, i16 525, i16 526, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.138, i8 113, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 527, i16 528, i16 529, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.139, i8 -127, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2432, i16 0, i16 2433, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.140, i8 -111, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3136, i16 3137, i16 3138, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.141, i8 -95, i8 56, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 416, i16 417, i16 418, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.142, i8 -79, i8 56, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 419, i16 420, i16 421, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.143, i8 -63, i8 56, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 422, i16 423, i16 424, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.144, i8 -47, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 536, i16 537, i16 538, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.145, i8 -31, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 539, i16 540, i16 541, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.146, i8 -15, i8 40, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 544, i16 545, i16 546, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.147, i8 1, i8 41, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 547, i16 548, i16 549, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.148, i8 17, i8 41, i8 5, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 550, i16 551, i16 552, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.149, i8 -90, i8 -87, i8 1, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 0, i16 1912, i16 0, i16 0, i16 0, i16 0 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.150, i8 -74, i8 -7, i8 0, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 1, i16 446, i16 0, i16 0, i16 0, i16 0 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.151, i8 40, i8 -71, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 0, i16 0, i16 434, i16 435, i16 436, i16 437 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.152, i8 56, i8 -71, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 2, i16 0, i16 438, i16 439, i16 440, i16 441 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.153, i8 72, i8 -71, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 4, i16 0, i16 442, i16 443, i16 444, i16 445 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.154, i8 88, i8 -55, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 1, i16 0, i16 1888, i16 1889, i16 1890, i16 1891 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.155, i8 104, i8 -55, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 3, i16 0, i16 1892, i16 1893, i16 1894, i16 1895 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.156, i8 120, i8 -55, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 5, i16 0, i16 1896, i16 1897, i16 1898, i16 1899 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.157, i8 -120, i8 -55, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 7, i16 0, i16 1900, i16 1901, i16 1902, i16 1903 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.8, [4 x i8] } } { ptr @.str.158, i8 -104, i8 -55, i8 9, { %struct.anon.8, [4 x i8] } { %struct.anon.8 { i8 9, i16 0, i16 1904, i16 1905, i16 1906, i16 1907 }, [4 x i8] undef } } }>, align 4
@r9a06g032_clk_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_gate_enable, ptr @r9a06g032_clk_gate_disable, ptr @r9a06g032_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r9a06g032_clk_div_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_div_recalc_rate, ptr null, ptr @r9a06g032_div_determine_rate, ptr null, ptr null, ptr @r9a06g032_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_bitselect_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_mux_set_parent, ptr @r9a06g032_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@r9a06g032_clk_dualgate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_dualgate_enable, ptr @r9a06g032_clk_dualgate_disable, ptr @r9a06g032_clk_dualgate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@.str.160 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_r9a06g032_clocks__166_987_r9a06g032_clocks_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @r9a06g032_clocks_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @r9a06g032_clock_driver, ptr noundef nonnull @r9a06g032_clocks_probe, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @r9a06g032_clocks_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca [2 x ptr], align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  %10 = alloca [2 x i16], align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 16, i32 noundef 3520) #8
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 624, i32 noundef 3520) #8
  %16 = icmp ne ptr %14, null
  %17 = icmp ne ptr %15, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %311

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.r9a06g032_priv, ptr %14, i32 0, i32 1
  store i32 0, ptr %20, align 4
  store ptr %15, ptr %14, align 4
  %21 = getelementptr inbounds %struct.clk_onecell_data, ptr %14, i32 0, i32 1
  store i32 156, ptr %21, align 4
  %22 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = ptrtoint ptr %22 to i32
  br label %311

26:                                               ; preds = %19
  %27 = tail call ptr @of_iomap(ptr noundef %13, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.r9a06g032_priv, ptr %14, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %52, label %30, !prof !9

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %3, i32 12
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  %36 = getelementptr inbounds i8, ptr %4, i32 12
  %37 = getelementptr inbounds [2 x ptr], ptr %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  %42 = getelementptr inbounds i8, ptr %7, i32 12
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  %45 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  %47 = getelementptr inbounds i8, ptr %9, i32 12
  %48 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  %49 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  %50 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  br label %53

52:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 923, i32 noundef 9, ptr noundef null) #8
  br label %311

53:                                               ; preds = %284, %30
  %54 = phi i32 [ 0, %30 ], [ %290, %284 ]
  %55 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54
  %56 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 12
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %14, align 4
  %63 = add nsw i32 %59, -1
  %64 = getelementptr ptr, ptr %62, i32 %63
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = phi ptr [ %65, %61 ], [ %22, %53 ]
  %68 = call ptr @__clk_get_name(ptr noundef %67) #8
  %69 = lshr i32 %57, 1
  %70 = and i32 %69, 7
  switch i32 %70, label %284 [
    i32 1, label %71
    i32 0, label %80
    i32 2, label %133
    i32 3, label %198
    i32 4, label %223
  ]

71:                                               ; preds = %66
  %72 = load ptr, ptr %55, align 4
  %73 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2
  %74 = getelementptr inbounds %struct.anon.7, ptr %73, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, ptr %73, align 4
  %78 = zext i16 %77 to i32
  %79 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %72, ptr noundef %68, i32 noundef 0, i32 noundef %76, i32 noundef %78) #8
  br label %284

80:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store ptr %68, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %47, i8 0, i32 12, i1 false) #8
  %81 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %82 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 32) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %131, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %55, align 4
  store ptr %85, ptr %9, align 4
  store ptr @r9a06g032_clk_gate_ops, ptr %48, align 4
  store i32 4, ptr %49, align 4
  %86 = icmp eq ptr %68, null
  %87 = select i1 %86, ptr null, ptr %8
  store ptr %87, ptr %50, align 4
  %88 = icmp ne ptr %68, null
  %89 = zext i1 %88 to i8
  store i8 %89, ptr %51, align 4
  %90 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %82, i32 0, i32 1
  store ptr %14, ptr %90, align 4
  %91 = trunc i32 %57 to i16
  %92 = lshr i16 %91, 4
  %93 = and i16 %92, 255
  %94 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %82, i32 0, i32 2
  store i16 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %82, i32 0, i32 3
  %96 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %95, ptr noundef align 4 dereferenceable(14) %96, i32 14, i1 false) #8
  %97 = getelementptr inbounds %struct.clk_hw, ptr %82, i32 0, i32 2
  store ptr %9, ptr %97, align 8
  %98 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %82, i32 0, i32 3, i32 1
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %84
  %102 = load ptr, ptr %28, align 4
  %103 = zext i16 %99 to i32
  %104 = lshr i32 %103, 3
  %105 = and i32 %104, 8188
  %106 = getelementptr i8, ptr %102, i32 %105
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %108 = and i32 %103, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %101, %84
  %113 = load i16, ptr %95, align 2
  %114 = load ptr, ptr %28, align 4
  %115 = zext i16 %113 to i32
  %116 = lshr i32 %115, 3
  %117 = and i32 %116, 8188
  %118 = getelementptr i8, ptr %114, i32 %117
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %120 = and i32 %115, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %112
  %125 = load i32, ptr %49, align 4
  %126 = or i32 %125, 2048
  store i32 %126, ptr %49, align 4
  br label %127

127:                                              ; preds = %124, %112, %101
  %128 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %82) #8
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void @kfree(ptr noundef nonnull %82) #8
  br label %131

131:                                              ; preds = %130, %127, %80
  %132 = phi ptr [ null, %130 ], [ null, %80 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br label %284

133:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr %68, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %42, i8 0, i32 12, i1 false) #8
  %134 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %135 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3520, i32 noundef 44) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %196, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %55, align 4
  store ptr %138, ptr %7, align 4
  store ptr @r9a06g032_clk_div_ops, ptr %43, align 4
  store i32 4, ptr %44, align 4
  %139 = icmp eq ptr %68, null
  %140 = select i1 %139, ptr null, ptr %6
  store ptr %140, ptr %45, align 4
  %141 = icmp ne ptr %68, null
  %142 = zext i1 %141 to i8
  store i8 %142, ptr %46, align 4
  %143 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 1
  store ptr %14, ptr %143, align 4
  %144 = trunc i32 %57 to i16
  %145 = lshr i16 %144, 4
  %146 = and i16 %145, 255
  %147 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 2
  store i16 %146, ptr %147, align 8
  %148 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 20
  %151 = trunc i32 %150 to i16
  %152 = and i16 %151, 1023
  %153 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 3
  store i16 %152, ptr %153, align 2
  %154 = getelementptr inbounds %struct.clk_hw, ptr %135, i32 0, i32 2
  store ptr %7, ptr %154, align 8
  %155 = trunc i32 %149 to i16
  %156 = and i16 %155, 1023
  %157 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 4
  store i16 %156, ptr %157, align 4
  %158 = lshr i32 %149, 10
  %159 = trunc i32 %158 to i16
  %160 = and i16 %159, 1023
  %161 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 5
  store i16 %160, ptr %161, align 2
  %162 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 6
  %163 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 0
  %164 = load i16, ptr %163, align 4
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %137
  %167 = load i8, ptr %162, align 8
  %168 = add i8 %167, 1
  store i8 %168, ptr %162, align 8
  %169 = zext i8 %167 to i32
  %170 = getelementptr %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 7, i32 %169
  store i16 %164, ptr %170, align 2
  %171 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 1
  %172 = load i16, ptr %171, align 2
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %166
  %175 = add i8 %167, 2
  store i8 %175, ptr %162, align 8
  %176 = zext i8 %168 to i32
  %177 = getelementptr %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 7, i32 %176
  store i16 %172, ptr %177, align 2
  %178 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 2
  %179 = load i16, ptr %178, align 4
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %174
  %182 = add i8 %167, 3
  store i8 %182, ptr %162, align 8
  %183 = zext i8 %175 to i32
  %184 = getelementptr %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 7, i32 %183
  store i16 %179, ptr %184, align 2
  %185 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 3
  %186 = load i16, ptr %185, align 2
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = add i8 %167, 4
  store i8 %189, ptr %162, align 8
  %190 = zext i8 %182 to i32
  %191 = getelementptr %struct.r9a06g032_clk_div, ptr %135, i32 0, i32 7, i32 %190
  store i16 %186, ptr %191, align 2
  br label %192

192:                                              ; preds = %188, %181, %174, %166, %137
  %193 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %135) #8
  %194 = icmp ugt ptr %193, inttoptr (i32 -4096 to ptr)
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  call void @kfree(ptr noundef nonnull %135) #8
  br label %196

196:                                              ; preds = %195, %192, %133
  %197 = phi ptr [ null, %195 ], [ null, %133 ], [ %193, %192 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %284

198:                                              ; preds = %66
  %199 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2
  %200 = getelementptr inbounds %struct.anon.8, ptr %199, i32 0, i32 1
  %201 = load i16, ptr %200, align 2
  %202 = load i8, ptr %199, align 4
  %203 = and i8 %202, 1
  %204 = zext i8 %203 to i32
  %205 = getelementptr [2 x i16], ptr %10, i32 0, i32 %204
  store i16 %201, ptr %205, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %36, i8 0, i32 12, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %206 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %207 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %206, i32 noundef 3520, i32 noundef 20) #9
  %208 = icmp eq ptr %207, null
  br i1 %208, label %221, label %209

209:                                              ; preds = %198
  store ptr %68, ptr %5, align 8
  store ptr @.str.4, ptr %37, align 4
  %210 = load ptr, ptr %55, align 4
  store ptr %210, ptr %4, align 4
  store ptr @clk_bitselect_ops, ptr %38, align 4
  store i32 4, ptr %39, align 4
  store ptr %5, ptr %40, align 4
  store i8 2, ptr %41, align 4
  %211 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %207, i32 0, i32 1
  store ptr %14, ptr %211, align 4
  %212 = trunc i32 %57 to i16
  %213 = lshr i16 %212, 4
  %214 = and i16 %213, 255
  %215 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %207, i32 0, i32 2
  store i16 %214, ptr %215, align 8
  %216 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %207, i32 0, i32 3
  store i16 %201, ptr %216, align 2
  %217 = getelementptr inbounds %struct.clk_hw, ptr %207, i32 0, i32 2
  store ptr %4, ptr %217, align 8
  %218 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %207) #8
  %219 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %221

220:                                              ; preds = %209
  call void @kfree(ptr noundef nonnull %207) #8
  br label %221

221:                                              ; preds = %220, %209, %198
  %222 = phi ptr [ null, %220 ], [ null, %198 ], [ %218, %209 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  br label %284

223:                                              ; preds = %66
  %224 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2
  %225 = load i8, ptr %224, align 4
  %226 = and i8 %225, 1
  %227 = zext i8 %226 to i32
  %228 = getelementptr [2 x i16], ptr %10, i32 0, i32 %227
  %229 = load i16, ptr %228, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr %68, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %31, i8 0, i32 12, i1 false) #8
  %230 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %231 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %230, i32 noundef 3520, i32 noundef 48) #9
  %232 = icmp eq ptr %231, null
  br i1 %232, label %282, label %233

233:                                              ; preds = %223
  %234 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 1
  store ptr %14, ptr %234, align 4
  %235 = trunc i32 %57 to i16
  %236 = lshr i16 %235, 4
  %237 = and i16 %236, 255
  %238 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 2
  store i16 %237, ptr %238, align 8
  %239 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 3
  store i16 %229, ptr %239, align 2
  %240 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1
  %241 = load i16, ptr %240, align 4
  %242 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 4
  store i16 %241, ptr %242, align 4
  %243 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 1
  %244 = load i16, ptr %243, align 2
  %245 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 4, i32 0, i32 1
  store i16 %244, ptr %245, align 2
  %246 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 2
  %247 = load i16, ptr %246, align 4
  %248 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 4, i32 1
  store i16 %247, ptr %248, align 2
  %249 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %54, i32 2, i32 0, i32 1, i32 3
  %250 = load i16, ptr %249, align 2
  %251 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 4, i32 1, i32 1
  store i16 %250, ptr %251, align 4
  %252 = load ptr, ptr %55, align 4
  store ptr %252, ptr %3, align 4
  store ptr @r9a06g032_clk_dualgate_ops, ptr %32, align 4
  store i32 4, ptr %33, align 4
  store ptr %2, ptr %34, align 4
  store i8 1, ptr %35, align 4
  %253 = getelementptr inbounds %struct.clk_hw, ptr %231, i32 0, i32 2
  store ptr %3, ptr %253, align 8
  %254 = load ptr, ptr %28, align 4
  %255 = zext i16 %229 to i32
  %256 = lshr i32 %255, 3
  %257 = and i32 %256, 8188
  %258 = getelementptr i8, ptr %254, i32 %257
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %260 = and i32 %255, 31
  %261 = lshr i32 %259, %260
  %262 = and i32 %261, 1
  %263 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %231, i32 0, i32 4, i32 %262
  %264 = load i16, ptr %263, align 2
  %265 = load ptr, ptr %28, align 4
  %266 = zext i16 %264 to i32
  %267 = lshr i32 %266, 3
  %268 = and i32 %267, 8188
  %269 = getelementptr i8, ptr %265, i32 %268
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #8, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %271 = and i32 %266, 31
  %272 = shl nuw i32 1, %271
  %273 = and i32 %272, %270
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %233
  %276 = load i32, ptr %33, align 4
  %277 = or i32 %276, 2048
  store i32 %277, ptr %33, align 4
  br label %278

278:                                              ; preds = %275, %233
  %279 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %231) #8
  %280 = icmp ugt ptr %279, inttoptr (i32 -4096 to ptr)
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  call void @kfree(ptr noundef nonnull %231) #8
  br label %282

282:                                              ; preds = %281, %278, %223
  %283 = phi ptr [ null, %281 ], [ null, %223 ], [ %279, %278 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %284

284:                                              ; preds = %282, %221, %196, %131, %71, %66
  %285 = phi ptr [ null, %66 ], [ %283, %282 ], [ %222, %221 ], [ %197, %196 ], [ %132, %131 ], [ %79, %71 ]
  %286 = load ptr, ptr %14, align 4
  %287 = lshr i32 %57, 4
  %288 = and i32 %287, 255
  %289 = getelementptr ptr, ptr %286, i32 %288
  store ptr %285, ptr %289, align 4
  %290 = add nuw nsw i32 %54, 1
  %291 = icmp eq i32 %290, 156
  br i1 %291, label %292, label %53

292:                                              ; preds = %284
  %293 = call i32 @of_clk_add_provider(ptr noundef %13, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %14) #8
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %311

295:                                              ; preds = %292
  %296 = call i32 @devm_add_action(ptr noundef %11, ptr noundef nonnull @r9a06g032_clocks_del_clk_provider, ptr noundef %13) #8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  call void @of_clk_del_provider(ptr noundef %13) #8
  br label %311

299:                                              ; preds = %295
  %300 = load ptr, ptr %12, align 8
  %301 = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 800, i32 noundef 3520) #8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %311, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %300, align 4
  %305 = getelementptr inbounds %struct.generic_pm_domain, ptr %301, i32 0, i32 10
  store ptr %304, ptr %305, align 4
  %306 = getelementptr inbounds %struct.generic_pm_domain, ptr %301, i32 0, i32 32
  store i32 13, ptr %306, align 4
  %307 = getelementptr inbounds %struct.generic_pm_domain, ptr %301, i32 0, i32 30
  store ptr @r9a06g032_attach_dev, ptr %307, align 4
  %308 = getelementptr inbounds %struct.generic_pm_domain, ptr %301, i32 0, i32 31
  store ptr @r9a06g032_detach_dev, ptr %308, align 8
  %309 = call i32 @pm_genpd_init(ptr noundef nonnull %301, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #8
  %310 = call i32 @of_genpd_add_provider_simple(ptr noundef %300, ptr noundef nonnull %301) #8
  br label %311

311:                                              ; preds = %303, %299, %298, %292, %52, %24, %1
  %312 = phi i32 [ %25, %24 ], [ -12, %52 ], [ -12, %1 ], [ %293, %292 ], [ %296, %298 ], [ 0, %303 ], [ -12, %299 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  ret i32 %312
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r9a06g032_clocks_del_clk_provider(ptr noundef %0) #5 {
  tail call void @of_clk_del_provider(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_gate_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 3, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.r9a06g032_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = zext i16 %4 to i32
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 8188
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %6, %1
  %21 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i16, ptr %2, align 2
  %24 = getelementptr inbounds %struct.r9a06g032_priv, ptr %22, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = zext i16 %23 to i32
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 8188
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = and i32 %26, 31
  %32 = lshr i32 %30, %31
  %33 = and i32 %32, 1
  br label %34

34:                                               ; preds = %20, %6
  %35 = phi i32 [ %33, %20 ], [ 0, %6 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_gate_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 3
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r9a06g032_clk_gate_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %0, i32 0, i32 3
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r9a06g032_clk_gate_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 {
  %4 = load i16, ptr %1, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.r9a06g032_priv, ptr %0, i32 0, i32 1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = load i16, ptr %1, align 2
  %11 = getelementptr inbounds %struct.r9a06g032_priv, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %10 to i32
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 8188
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %18 = and i32 %13, 31
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %2, 0
  %23 = zext i1 %22 to i32
  %24 = shl nuw i32 %23, %18
  %25 = or i32 %21, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %25) #8, !srcloc !14
  %26 = getelementptr inbounds %struct.r9a06g032_gate, ptr %1, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %7
  %30 = load ptr, ptr %11, align 4
  %31 = zext i16 %27 to i32
  %32 = lshr i32 %31, 3
  %33 = and i32 %32, 8188
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %36 = and i32 %31, 31
  %37 = shl nuw i32 1, %36
  %38 = or i32 %35, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %38) #8, !srcloc !14
  br label %39

39:                                               ; preds = %29, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 1073740) #8
  %41 = getelementptr inbounds %struct.r9a06g032_gate, ptr %1, i32 0, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.r9a06g032_gate, ptr %1, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %85, label %48

48:                                               ; preds = %44, %39
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %50 = load i16, ptr %41, align 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %11, align 4
  %54 = zext i16 %50 to i32
  %55 = lshr i32 %54, 3
  %56 = and i32 %55, 8188
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %59 = and i32 %54, 31
  %60 = shl nuw i32 1, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = shl nuw i32 %23, %59
  %64 = or i32 %62, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %64) #8, !srcloc !14
  br label %65

65:                                               ; preds = %52, %48
  %66 = getelementptr inbounds %struct.r9a06g032_gate, ptr %1, i32 0, i32 3
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %2, 0
  %71 = load ptr, ptr %11, align 4
  %72 = zext i16 %67 to i32
  %73 = lshr i32 %72, 3
  %74 = and i32 %73, 8188
  %75 = getelementptr i8, ptr %71, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %77 = and i32 %72, 31
  %78 = shl nuw i32 1, %77
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = zext i1 %70 to i32
  %82 = shl nuw i32 %81, %77
  %83 = or i32 %80, %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %83) #8, !srcloc !14
  br label %84

84:                                               ; preds = %69, %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %49) #8
  br label %85

85:                                               ; preds = %84, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.r9a06g032_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %13 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 5
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @llvm.umin.i32(i32 %12, i32 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %15, %2 ], [ %21, %17 ]
  %24 = add i32 %1, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = add i32 %5, 1
  %7 = add i32 %5, %4
  %8 = udiv i32 %7, %6
  %9 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 4
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp ugt i32 %8, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %8, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 4
  %21 = icmp ne i8 %20, 0
  %22 = zext i8 %20 to i32
  %23 = add nsw i32 %22, -1
  %24 = icmp ugt i8 %20, 1
  br i1 %24, label %25, label %52

25:                                               ; preds = %49, %18
  %26 = phi i32 [ %31, %49 ], [ 0, %18 ]
  %27 = getelementptr %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 7, i32 %26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ult i32 %8, %29
  %31 = add nuw nsw i32 %26, 1
  br i1 %30, label %49, label %32

32:                                               ; preds = %25
  %33 = getelementptr %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 7, i32 %31
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ugt i32 %8, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = zext i16 %28 to i32
  %39 = zext i16 %34 to i32
  %40 = add i32 %4, -1
  %41 = add i32 %40, %38
  %42 = udiv i32 %41, %38
  %43 = sub i32 %5, %42
  %44 = add i32 %40, %39
  %45 = udiv i32 %44, %39
  %46 = sub i32 %45, %5
  %47 = icmp ult i32 %46, %43
  %48 = select i1 %47, i32 %39, i32 %38
  br label %52

49:                                               ; preds = %32, %25
  %50 = icmp slt i32 %31, %23
  %51 = select i1 %21, i1 %50, i1 false
  br i1 %51, label %25, label %52

52:                                               ; preds = %49, %37, %18, %13, %2
  %53 = phi i32 [ %48, %37 ], [ %11, %2 ], [ %16, %13 ], [ %8, %18 ], [ %8, %49 ]
  %54 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 2
  %55 = load i16, ptr %54, align 4
  switch i16 %55, label %60 [
    i16 25, label %56
    i16 14, label %56
  ]

56:                                               ; preds = %52, %52
  %57 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @clk_get_rate(ptr noundef %58) #8
  br label %64

60:                                               ; preds = %52
  %61 = add i32 %4, -1
  %62 = add i32 %61, %53
  %63 = udiv i32 %62, %53
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %63, %60 ], [ %59, %56 ]
  store i32 %65, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = add i32 %1, 1
  %5 = add i32 %2, %1
  %6 = udiv i32 %5, %4
  %7 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.r9a06g032_priv, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %0, i32 0, i32 3
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw nsw i32 %13, 2
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %16 = or i32 %6, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = icmp ne i8 %1, 0
  %8 = getelementptr inbounds %struct.r9a06g032_priv, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = zext i16 %6 to i32
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 8188
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %15 = and i32 %10, 31
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = zext i1 %7 to i32
  %20 = shl nuw i32 %19, %15
  %21 = or i32 %18, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %21) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @r9a06g032_clk_mux_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.r9a06g032_priv, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 8188
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = and i32 %8, 31
  %14 = lshr i32 %12, %13
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  ret i8 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_dualgate_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.r9a06g032_priv, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 8188
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = and i32 %8, 31
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 4, i32 %15
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr inbounds %struct.r9a06g032_priv, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = zext i16 %18 to i32
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 8188
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %26 = and i32 %21, 31
  %27 = lshr i32 %25, %26
  %28 = and i32 %27, 1
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_dualgate_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.r9a06g032_priv, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 8188
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = and i32 %8, 31
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 1
  %16 = load ptr, ptr %2, align 4
  %17 = xor i32 %15, 1
  %18 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 4, i32 %17
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %16, ptr noundef %18, i32 noundef 0) #8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 4, i32 %15
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %19, ptr noundef %20, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r9a06g032_clk_dualgate_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.r9a06g032_priv, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %5 to i32
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 8188
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = and i32 %8, 31
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 1
  %16 = load ptr, ptr %2, align 4
  %17 = xor i32 %15, 1
  %18 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 4, i32 %17
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %16, ptr noundef %18, i32 noundef 0) #8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %0, i32 0, i32 4, i32 %15
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %19, ptr noundef %20, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r9a06g032_attach_dev(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  br label %8

8:                                                ; preds = %41, %2
  %9 = phi i32 [ %42, %41 ], [ 0, %2 ]
  br label %10

10:                                               ; preds = %13, %8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef %9, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %10

17:                                               ; preds = %13
  %18 = load i32, ptr %7, align 4
  %19 = icmp slt i32 %18, 156
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %18, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #8
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = call i32 @pm_clk_create(ptr noundef %1) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = call i32 @pm_clk_add_clk(ptr noundef %1, ptr noundef %26) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %35) #8
  br label %41

36:                                               ; preds = %31
  call void @pm_clk_destroy(ptr noundef %1) #8
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i32 [ %32, %36 ], [ %29, %28 ]
  call void @clk_put(ptr noundef %26) #8
  br label %43

39:                                               ; preds = %25
  %40 = ptrtoint ptr %26 to i32
  br label %43

41:                                               ; preds = %34, %20, %17
  %42 = add i32 %9, 1
  br label %8

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %45 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %45) #8
  br label %46

46:                                               ; preds = %43, %10
  %47 = phi i32 [ %44, %43 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r9a06g032_detach_dev(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4, %2
  tail call void @pm_clk_destroy(ptr noundef %1) #8
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 3428296}
!11 = !{i64 2151622318}
!12 = !{i64 2151621740}
!13 = !{i64 2151621911}
!14 = !{i64 3427878}
!15 = !{i64 2151630607}
!16 = !{i64 2151638010}
