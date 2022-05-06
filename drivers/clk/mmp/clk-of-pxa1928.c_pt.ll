; ModuleID = '/llk/IR/drivers/clk/mmp/clk-of-pxa1928.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-of-pxa1928.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pxa1928_clk_unit = type { %struct.mmp_clk_unit, ptr, ptr, ptr, ptr }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_clk_reset_cell = type { i32, ptr, i32, i32, ptr }

@__of_table_pxa1928_mpmu_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-mpmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_mpmu_clk_init }, section "__clk_of_table", align 4
@__of_table_pxa1928_apmu_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-apmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_apmu_clk_init }, section "__clk_of_table", align 4
@__of_table_pxa1928_apbc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-apbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_apbc_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013failed to map mpmu registers\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fixed_rate_clks = internal global [6 x %struct.mmp_param_fixed_rate_clk] [%struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.3, ptr null, i32 0, i32 32768 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.4, ptr null, i32 0, i32 26000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.5, ptr null, i32 0, i32 624000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.6, ptr null, i32 0, i32 832000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.7, ptr null, i32 0, i32 1248000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.8, ptr null, i32 0, i32 480000000 }], align 4
@fixed_factor_clks = internal global [8 x %struct.mmp_param_fixed_factor_clk] [%struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.9, ptr @.str.5, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.10, ptr @.str.5, i32 1, i32 9, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.11, ptr @.str.5, i32 1, i32 12, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.12, ptr @.str.5, i32 1, i32 16, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.13, ptr @.str.5, i32 1, i32 20, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.2, ptr @.str.5, i32 2, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.14, ptr @.str.4, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 0, ptr @.str.15, ptr @.str.4, i32 1, i32 4, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"uart_pll\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pll1_416\00", align 1
@uart_factor_masks = internal global %struct.mmp_clk_factor_masks { i32 2, i32 8191, i32 8191, i32 16, i32 0, i32 0 }, align 4
@uart_factor_tbl = internal global [2 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 832, i32 234 }, %struct.mmp_clk_factor_tbl { i32 1, i32 1 }], align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"clk32\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vctcxo\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pll1_624\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pll5p\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"usb_pll\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pll1_d2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pll1_d9\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pll1_d12\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pll1_d16\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"pll1_d20\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"vctcxo_d2\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"vctcxo_d4\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\013failed to map apmu registers\0A\00", align 1
@apmu_mux_clks = internal global [1 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.17, ptr @sdh_parent_names, i8 4, i32 4, i32 84, i8 8, i8 2, i8 0, ptr @sdh0_lock }], align 4
@apmu_div_clks = internal global [1 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.18, ptr @.str.17, i32 0, i32 84, i8 10, i8 4, i8 1, ptr @sdh0_lock }], align 4
@apmu_gate_clks = internal global [7 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 23, ptr @.str.19, ptr @.str.8, i32 0, i32 92, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 62, ptr @.str.20, ptr @.str.8, i32 0, i32 248, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 21, ptr @.str.21, ptr @.str.18, i32 4, i32 84, i32 27, i32 27, i32 0, i32 0, ptr @sdh0_lock }, %struct.mmp_param_gate_clk { i32 22, ptr @.str.22, ptr @.str.18, i32 4, i32 88, i32 27, i32 27, i32 0, i32 0, ptr @sdh1_lock }, %struct.mmp_param_gate_clk { i32 58, ptr @.str.23, ptr @.str.18, i32 4, i32 232, i32 27, i32 27, i32 0, i32 0, ptr @sdh2_lock }, %struct.mmp_param_gate_clk { i32 59, ptr @.str.24, ptr @.str.18, i32 4, i32 236, i32 27, i32 27, i32 0, i32 0, ptr @sdh3_lock }, %struct.mmp_param_gate_clk { i32 87, ptr @.str.25, ptr @.str.18, i32 4, i32 348, i32 27, i32 27, i32 0, i32 0, ptr @sdh4_lock }], align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"sdh_mux\00", align 1
@sdh_parent_names = internal global [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.2], align 4
@sdh0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"sdh_div\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"usb_clk\00", align 1
@usb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"hsic_clk\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"sdh0_clk\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"sdh1_clk\00", align 1
@sdh1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"sdh2_clk\00", align 1
@sdh2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"sdh3_clk\00", align 1
@sdh3_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"sdh4_clk\00", align 1
@sdh4_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"\013failed to map apbc registers\0A\00", align 1
@apbc_mux_clks = internal global [6 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.27, ptr @uart_parent_names, i8 2, i32 4, i32 44, i8 4, i8 3, i8 0, ptr @uart0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.28, ptr @uart_parent_names, i8 2, i32 4, i32 48, i8 4, i8 3, i8 0, ptr @uart1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.29, ptr @uart_parent_names, i8 2, i32 4, i32 52, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.30, ptr @uart_parent_names, i8 2, i32 4, i32 136, i8 4, i8 3, i8 0, ptr @uart3_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.31, ptr @ssp_parent_names, i8 4, i32 4, i32 76, i8 4, i8 3, i8 0, ptr @ssp0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.32, ptr @ssp_parent_names, i8 4, i32 4, i32 80, i8 4, i8 3, i8 0, ptr @ssp1_lock }], align 4
@apbc_gate_clks = internal global [19 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 1, ptr @.str.33, ptr @.str.4, i32 4, i32 4, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 2, ptr @.str.34, ptr @.str.4, i32 4, i32 8, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 3, ptr @.str.35, ptr @.str.4, i32 4, i32 12, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 4, ptr @.str.36, ptr @.str.4, i32 4, i32 16, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 31, ptr @.str.37, ptr @.str.4, i32 4, i32 124, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 32, ptr @.str.38, ptr @.str.4, i32 4, i32 128, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 14, ptr @.str.39, ptr @.str.4, i32 4, i32 56, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 6, ptr @.str.40, ptr @.str.3, i32 4, i32 24, i32 3, i32 3, i32 0, i32 1, ptr null }, %struct.mmp_param_gate_clk { i32 0, ptr @.str.41, ptr @.str.3, i32 4, i32 0, i32 131, i32 131, i32 0, i32 1, ptr null }, %struct.mmp_param_gate_clk { i32 15, ptr @.str.42, ptr @.str.4, i32 4, i32 60, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 16, ptr @.str.43, ptr @.str.4, i32 4, i32 64, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 17, ptr @.str.44, ptr @.str.4, i32 4, i32 68, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 18, ptr @.str.45, ptr @.str.4, i32 4, i32 72, i32 3, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 11, ptr @.str.46, ptr @.str.27, i32 4, i32 44, i32 3, i32 3, i32 0, i32 0, ptr @uart0_lock }, %struct.mmp_param_gate_clk { i32 12, ptr @.str.47, ptr @.str.28, i32 4, i32 48, i32 3, i32 3, i32 0, i32 0, ptr @uart1_lock }, %struct.mmp_param_gate_clk { i32 13, ptr @.str.48, ptr @.str.29, i32 4, i32 52, i32 3, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 34, ptr @.str.49, ptr @.str.30, i32 4, i32 136, i32 3, i32 3, i32 0, i32 0, ptr @uart3_lock }, %struct.mmp_param_gate_clk { i32 19, ptr @.str.50, ptr @.str.31, i32 4, i32 76, i32 3, i32 3, i32 0, i32 0, ptr @ssp0_lock }, %struct.mmp_param_gate_clk { i32 20, ptr @.str.51, ptr @.str.32, i32 4, i32 80, i32 3, i32 3, i32 0, i32 0, ptr @ssp1_lock }], align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"uart0_mux\00", align 1
@uart_parent_names = internal global [2 x ptr] [ptr @.str.1, ptr @.str.4], align 4
@uart0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"uart1_mux\00", align 1
@uart1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"uart2_mux\00", align 1
@uart2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"uart3_mux\00", align 1
@uart3_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"ssp0_mux\00", align 1
@ssp_parent_names = internal global [4 x ptr] [ptr @.str.15, ptr @.str.14, ptr @.str.4, ptr @.str.11], align 4
@ssp0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"ssp1_mux\00", align 1
@ssp1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"twsi0_clk\00", align 1
@reset_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"twsi1_clk\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"twsi2_clk\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"twsi3_clk\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"twsi4_clk\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"twsi5_clk\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"gpio_clk\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"kpc_clk\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"rtc_clk\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"pwm0_clk\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"pwm1_clk\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"pwm2_clk\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"pwm3_clk\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ssp0_clk\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"ssp1_clk\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_pxa1928_apbc_clk, ptr @__of_table_pxa1928_apmu_clk, ptr @__of_table_pxa1928_mpmu_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pxa1928_mpmu_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %15

11:                                               ; preds = %5
  tail call void @mmp_register_fixed_rate_clks(ptr noundef nonnull %3, ptr noundef nonnull @fixed_rate_clks, i32 noundef 6) #5
  tail call void @mmp_register_fixed_factor_clks(ptr noundef nonnull %3, ptr noundef nonnull @fixed_factor_clks, i32 noundef 8) #5
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr i8, ptr %12, i32 20
  %14 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef %13, ptr noundef nonnull @uart_factor_masks, ptr noundef nonnull @uart_factor_tbl, i32 noundef 2, ptr noundef null) #5
  br label %15

15:                                               ; preds = %11, %9, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pxa1928_apmu_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #6
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %15

11:                                               ; preds = %5
  tail call void @mmp_clk_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 96) #5
  %12 = load ptr, ptr %7, align 4
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_mux_clks, ptr noundef %12, i32 noundef 1) #5
  %13 = load ptr, ptr %7, align 4
  tail call void @mmp_register_div_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_div_clks, ptr noundef %13, i32 noundef 1) #5
  %14 = load ptr, ptr %7, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_gate_clks, ptr noundef %14, i32 noundef 7) #5
  br label %15

15:                                               ; preds = %11, %9, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pxa1928_apbc_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.pxa1928_clk_unit, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #6
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %36

11:                                               ; preds = %5
  tail call void @mmp_clk_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 48) #5
  %12 = load ptr, ptr %7, align 8
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %3, ptr noundef nonnull @apbc_mux_clks, ptr noundef %12, i32 noundef 6) #5
  %13 = load ptr, ptr %7, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @apbc_gate_clks, ptr noundef %13, i32 noundef 19) #5
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 380) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %7, align 8
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %33, %19 ]
  %21 = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.mmp_clk_reset_cell, ptr %15, i32 %20
  store i32 %22, ptr %23, align 4
  %24 = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %20, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %18, i32 %25
  %27 = getelementptr %struct.mmp_clk_reset_cell, ptr %15, i32 %20, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr %struct.mmp_clk_reset_cell, ptr %15, i32 %20, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr [19 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %20, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.mmp_clk_reset_cell, ptr %15, i32 %20, i32 4
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.mmp_clk_reset_cell, ptr %15, i32 %20, i32 2
  store i32 4, ptr %32, align 4
  %33 = add nuw nsw i32 %20, 1
  %34 = icmp eq i32 %33, 19
  br i1 %34, label %35, label %19

35:                                               ; preds = %19
  tail call void @mmp_clk_reset_register(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 19) #5
  br label %36

36:                                               ; preds = %35, %11, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_rate_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_factor_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_factor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_mux_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_div_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_gate_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_reset_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
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
