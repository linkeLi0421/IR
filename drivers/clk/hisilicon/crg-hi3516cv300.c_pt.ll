; ModuleID = '/llk/IR/drivers/clk/hisilicon/crg-hi3516cv300.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/crg-hi3516cv300.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
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
%struct.hisi_crg_dev = type { ptr, ptr, ptr }

@__initcall__kmod_crg_hi3516cv300__162_309_hi3516cv300_crg_init1 = internal global ptr @hi3516cv300_crg_init, section ".initcall1.init", align 4
@hi3516cv300_crg_driver = internal global %struct.platform_driver { ptr @hi3516cv300_crg_probe, ptr @hi3516cv300_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3516cv300_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi3516cv300_crg_exit = internal global ptr @hi3516cv300_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [59 x i8] c"crg_hi3516cv300.file=drivers/clk/hisilicon/crg-hi3516cv300\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [31 x i8] c"crg_hi3516cv300.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [61 x i8] c"crg_hi3516cv300.description=HiSilicon Hi3516CV300 CRG Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"hi3516cv300-crg\00", align 1
@hi3516cv300_crg_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516cv300-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3516cv300_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516cv300-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3516cv300_sysctrl_funcs }, %struct.of_device_id zeroinitializer], align 4
@hi3516cv300_crg_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3516cv300_clk_register, ptr @hi3516cv300_clk_unregister }, align 4
@hi3516cv300_sysctrl_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3516cv300_sysctrl_clk_register, ptr @hi3516cv300_sysctrl_clk_unregister }, align 4
@hi3516cv300_fixed_rate_clks = internal constant [12 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 65, ptr @.str.1, ptr null, i32 0, i32 3000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.2, ptr null, i32 0, i32 6000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.3, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.4, ptr null, i32 0, i32 49500000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.5, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.6, ptr null, i32 0, i32 83300000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.7, ptr null, i32 0, i32 99000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.8, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 73, ptr @.str.9, ptr null, i32 0, i32 148500000 }, %struct.hisi_fixed_rate_clock { i32 74, ptr @.str.10, ptr null, i32 0, i32 198000000 }, %struct.hisi_fixed_rate_clock { i32 75, ptr @.str.11, ptr null, i32 0, i32 297000000 }, %struct.hisi_fixed_rate_clock { i32 0, ptr @.str.12, ptr null, i32 0, i32 50000000 }], align 4
@hi3516cv300_mux_clks = internal constant [7 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 76, ptr @.str.13, ptr @uart_mux_p, i8 2, i32 4, i32 228, i8 19, i8 1, i8 0, ptr @uart_mux_table, ptr null }, %struct.hisi_mux_clock { i32 77, ptr @.str.14, ptr @fmc_mux_p, i8 5, i32 4, i32 192, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 78, ptr @.str.15, ptr @mmc_mux_p, i8 1, i32 4, i32 196, i8 4, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 79, ptr @.str.16, ptr @mmc_mux_p, i8 1, i32 4, i32 196, i8 12, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.17, ptr @mmc2_mux_p, i8 2, i32 4, i32 196, i8 20, i8 2, i8 0, ptr @mmc2_mux_table, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.18, ptr @mmc_mux_p, i8 1, i32 4, i32 200, i8 4, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.19, ptr @pwm_mux_p, i8 4, i32 4, i32 56, i8 2, i8 2, i8 0, ptr @pwm_mux_table, ptr null }], align 4
@hi3516cv300_gate_clks = internal constant [20 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.20, ptr @.str.13, i32 4, i32 228, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.21, ptr @.str.13, i32 4, i32 228, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.22, ptr @.str.13, i32 4, i32 228, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.23, ptr @.str.8, i32 4, i32 228, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.24, ptr @.str.8, i32 4, i32 228, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.25, ptr @.str.14, i32 4, i32 192, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.26, ptr @.str.15, i32 4, i32 196, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.27, ptr @.str.16, i32 4, i32 196, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.28, ptr @.str.17, i32 4, i32 196, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.29, ptr @.str.18, i32 4, i32 200, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.30, ptr null, i32 0, i32 236, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.31, ptr null, i32 0, i32 216, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 14, ptr @.str.32, ptr @.str.19, i32 4, i32 56, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 15, ptr @.str.33, ptr null, i32 0, i32 184, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.34, ptr null, i32 0, i32 184, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.35, ptr null, i32 0, i32 184, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.36, ptr null, i32 0, i32 184, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.37, ptr null, i32 0, i32 184, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.38, ptr null, i32 0, i32 184, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.39, ptr null, i32 0, i32 184, i8 7, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"3m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"6m\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"49.5m\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"50m\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"83.3m\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"99m\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"100m\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"148.5m\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"198m\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"297m\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"uart_mux\00", align 1
@uart_mux_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.2], align 4
@uart_mux_table = internal global [2 x i32] [i32 0, i32 1], align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"fmc_mux\00", align 1
@fmc_mux_p = internal constant [5 x ptr] [ptr @.str.3, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@fmc_mux_table = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"mmc0_mux\00", align 1
@mmc_mux_p = internal constant [1 x ptr] [ptr @.str.4], align 4
@mmc_mux_table = internal global [1 x i32] zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"mmc1_mux\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"mmc2_mux\00", align 1
@mmc2_mux_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.4], align 4
@mmc2_mux_table = internal global [2 x i32] [i32 0, i32 2], align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"mmc3_mux\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pwm_mux\00", align 1
@pwm_mux_p = internal constant [4 x ptr] [ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.3], align 4
@pwm_mux_table = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"clk_uart1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"clk_spi1\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clk_fmc\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"clk_mmc0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"clk_mmc1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"clk_mmc2\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"clk_mmc3\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"clk_eth\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"clk_dmac\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"clk_pwm\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"clk_usb2_bus\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"clk_usb2_ohci48m\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"clk_usb2_ohci12m\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"clk_usb2_otg_utmi\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"clk_usb2_hst_phy\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"clk_usb2_utmi0\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"clk_usb2_phy\00", align 1
@hi3516cv300_sysctrl_mux_clks = internal constant [1 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 1, ptr @.str.40, ptr @wdt_mux_p, i8 2, i32 4, i32 0, i8 23, i8 1, i8 0, ptr @wdt_mux_table, ptr null }], align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@wdt_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.12], section ".init.rodata", align 4
@wdt_mux_table = internal global [2 x i32] [i32 0, i32 1], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_hi3516cv300_crg_exit, ptr @__initcall__kmod_crg_hi3516cv300__162_309_hi3516cv300_crg_init1, ptr @hi3516cv300_crg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3516cv300_crg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3516cv300_crg_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3516cv300_crg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3516cv300_crg_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3516cv300_crg_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3264) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @hisi_reset_init(ptr noundef %0) #4
  %11 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = tail call ptr %14(ptr noundef %0) #4
  store ptr %15, ptr %3, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @hisi_reset_exit(ptr noundef nonnull %10) #4
  %18 = ptrtoint ptr %15 to i32
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %17, %9, %5, %1
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], [ -12, %1 ], [ -2, %5 ], [ -12, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3516cv300_crg_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @hisi_reset_exit(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hisi_crg_funcs, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3516cv300_clk_register(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 128) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3516cv300_fixed_rate_clks, i32 noundef 12, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = inttoptr i32 %5 to ptr
  br label %73

9:                                                ; preds = %4
  %10 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3516cv300_mux_clks, i32 noundef 7, ptr noundef nonnull %2) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3516cv300_gate_clks, i32 noundef 20, ptr noundef nonnull %2) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @of_clk_add_provider(ptr noundef %17, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %2) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  br label %22

22:                                               ; preds = %30, %20
  %23 = phi i32 [ 0, %20 ], [ %31, %30 ]
  %24 = getelementptr %struct.hisi_gate_clock, ptr @hi3516cv300_gate_clks, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr ptr, ptr %21, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @clk_unregister_gate(ptr noundef nonnull %27) #4
  br label %30

30:                                               ; preds = %29, %22
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %31, 20
  br i1 %32, label %33, label %22

33:                                               ; preds = %30, %12
  %34 = phi i32 [ %13, %12 ], [ %18, %30 ]
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr ptr, ptr %35, i32 76
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @clk_unregister_mux(ptr noundef nonnull %37) #4
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr ptr, ptr %35, i32 77
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @clk_unregister_mux(ptr noundef nonnull %42) #4
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr ptr, ptr %35, i32 78
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @clk_unregister_mux(ptr noundef nonnull %47) #4
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr ptr, ptr %35, i32 79
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @clk_unregister_mux(ptr noundef nonnull %52) #4
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr ptr, ptr %35, i32 80
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @clk_unregister_mux(ptr noundef nonnull %57) #4
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr ptr, ptr %35, i32 81
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @clk_unregister_mux(ptr noundef nonnull %62) #4
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr ptr, ptr %35, i32 82
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @clk_unregister_mux(ptr noundef nonnull %67) #4
  br label %70

70:                                               ; preds = %69, %65, %9
  %71 = phi i32 [ %10, %9 ], [ %34, %69 ], [ %34, %65 ]
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %2)
  %72 = inttoptr i32 %71 to ptr
  br label %73

73:                                               ; preds = %70, %15, %7, %1
  %74 = phi ptr [ %8, %7 ], [ %72, %70 ], [ %2, %15 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3516cv300_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %10 = getelementptr %struct.hisi_gate_clock, ptr @hi3516cv300_gate_clks, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr ptr, ptr %7, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #4
  br label %16

16:                                               ; preds = %15, %8
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %19, label %8

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr ptr, ptr %21, i32 76
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @clk_unregister_mux(ptr noundef nonnull %23) #4
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr ptr, ptr %21, i32 77
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @clk_unregister_mux(ptr noundef nonnull %28) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr ptr, ptr %21, i32 78
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @clk_unregister_mux(ptr noundef nonnull %33) #4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr ptr, ptr %21, i32 79
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @clk_unregister_mux(ptr noundef nonnull %38) #4
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr ptr, ptr %21, i32 80
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @clk_unregister_mux(ptr noundef nonnull %43) #4
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr ptr, ptr %21, i32 81
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @clk_unregister_mux(ptr noundef nonnull %48) #4
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr ptr, ptr %21, i32 82
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @clk_unregister_mux(ptr noundef nonnull %53) #4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr %3, align 4
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %57)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr ptr, ptr %2, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %4) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr ptr, ptr %2, i32 66
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %9) #4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr ptr, ptr %2, i32 67
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %14) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr ptr, ptr %2, i32 68
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %19) #4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr ptr, ptr %2, i32 69
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %24) #4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr ptr, ptr %2, i32 70
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %29) #4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr ptr, ptr %2, i32 71
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %34) #4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr ptr, ptr %2, i32 72
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %39) #4
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr ptr, ptr %2, i32 73
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %44) #4
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr ptr, ptr %2, i32 74
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %49) #4
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr ptr, ptr %2, i32 75
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %54) #4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load ptr, ptr %2, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %58) #4
  br label %61

61:                                               ; preds = %60, %57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3516cv300_sysctrl_clk_register(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 16) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3516cv300_sysctrl_mux_clks, i32 noundef 1, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = inttoptr i32 %5 to ptr
  br label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @of_clk_add_provider(ptr noundef %11, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %2) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr ptr, ptr %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @clk_unregister_mux(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %14
  %21 = inttoptr i32 %12 to ptr
  br label %22

22:                                               ; preds = %20, %9, %7, %1
  %23 = phi ptr [ %8, %7 ], [ %21, %20 ], [ %2, %9 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3516cv300_sysctrl_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @clk_unregister_mux(ptr noundef nonnull %9) #4
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
