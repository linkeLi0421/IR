; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_hwmod_reset = type { ptr, i32, ptr }
%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.omap_hwmod_ocp_if = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.4, i8, i8, i8, i8 }
%union.anon.4 = type { %struct.omap_hwmod_omap2_firewall }
%struct.omap_hwmod_omap2_firewall = type { i8, i8, i8, i8 }
%struct.omap_hwmod_rst_info = type { ptr, i8, i8 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.ti_sysc_module_data = type { ptr, i64, i32, ptr, i32, ptr, ptr }
%struct.sysc_capabilities = type { i32, i32, ptr, i32 }
%struct.sysc_config = type { i32, i32, i8, i8, i8, i32 }
%struct.ti_sysc_cookie = type { ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clockdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon.0 = type { ptr }
%struct.omap_hwmod_omap2_prcm = type { i16, i8, i8 }
%struct.powerdomain = type { ptr, %union.anon.1, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon.1 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.clkctrl_provider = type { i32, ptr, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ti,sysc-\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013%s: invalid range for %s->%pOFn\0A\00", align 1
@__func__.omap_hwmod_parse_module_range = private unnamed_addr constant [30 x i8] c"omap_hwmod_parse_module_range\00", align 1
@omap_hwmod_list = internal global %struct.list_head { ptr @omap_hwmod_list, ptr @omap_hwmod_list }, align 4
@inited = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"arch/arm/mach-omap2/omap_hwmod.c\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"omap_hwmod: _register_link(%s -> %s) returned %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"omap_hwmod: %s: hwmod not yet registered\0A\00", align 1
@list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @list_lock, i64 12), ptr getelementptr (i8, ptr @list_lock, i64 12) } }, align 4
@__initcall__kmod_omap_hwmod__247_3693___omap_hwmod_setup_all2 = internal global ptr @__omap_hwmod_setup_all, section ".initcall2.init", align 4
@soc_ops.0 = internal unnamed_addr global ptr null, align 4
@soc_ops.1 = internal unnamed_addr global ptr null, align 4
@soc_ops.2 = internal unnamed_addr global ptr null, align 4
@soc_ops.3 = internal unnamed_addr global ptr null, align 4
@soc_ops.4 = internal unnamed_addr global ptr null, align 4
@soc_ops.5 = internal unnamed_addr global ptr null, align 4
@soc_ops.6 = internal unnamed_addr global ptr null, align 4
@soc_ops.7 = internal unnamed_addr global ptr null, align 4
@soc_ops.8 = internal unnamed_addr global ptr null, align 4
@soc_ops.9 = internal unnamed_addr global ptr null, align 4
@soc_ops.10 = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"omap_hwmod: unknown SoC type\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\013%s: error mapping mpu_rt_idx: %i\0A\00", align 1
@__func__.omap_hwmod_fix_mpu_rt_idx = private unnamed_addr constant [26 x i8] c"omap_hwmod_fix_mpu_rt_idx\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"omap_hwmod: %s: offset struct for sysconfig not provided in class\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"omap_hwmod: %s: cannot write OCP_SYSCONFIG: not defined on hwmod's class\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"omap_hwmod: %s: sysc_fields absent for sysconfig class\0A\00", align 1
@mpu_oh = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [61 x i8] c"\013omap_hwmod: %s: MPU initiator hwmod %s not yet registered\0A\00", align 1
@__func__._ensure_mpu_hwmod_is_setup = private unnamed_addr constant [27 x i8] c"_ensure_mpu_hwmod_is_setup\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"mpu\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ocp\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\014omap_hwmod: %s using broken dt data from %pOFn\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"omap_hwmod: %s: doesn't have mpu register target base\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"omap_hwmod: %s: couldn't init clocks\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\013omap_hwmod: %s: no dt node\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"\013omap_hwmod: %s: Missing dt reg%i for %pOF\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"\014omap_hwmod: %s: cannot _init_clocks\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\014omap_hwmod: %s: cannot clk_get main_clk %s\0A\00", align 1
@clkctrl_providers = internal global %struct.list_head { ptr @clkctrl_providers, ptr @clkctrl_providers }, align 4
@.str.25 = private unnamed_addr constant [51 x i8] c"\014omap_hwmod: %s: cannot clk_get interface_clk %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"\014omap_hwmod: %s: cannot clk_get opt_clk %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"ti,no-reset-on-init\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"ti,no-idle-on-init\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ti,no-idle\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"hwmod: %s: setup: failed to enable parent hwmod %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"hwmod: %s: unknown postsetup state %d! defaulting to enabled\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"\014omap_hwmod: %s: cannot be enabled for reset (%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"\014omap_hwmod: %s: reset can only be entered from enabled state\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = private unnamed_addr constant [53 x i8] c"\014omap_hwmod: %s: softreset failed (waited %d usec)\0A\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"\014omap_hwmod: %s: dma can be disabled only from enabled state\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@omap_reset_quirks = internal unnamed_addr constant [4 x %struct.omap_hwmod_reset] [%struct.omap_hwmod_reset { ptr @.str.37, i32 8, ptr @omap_dss_reset }, %struct.omap_hwmod_reset { ptr @.str.38, i32 5, ptr @omap_hdq1w_reset }, %struct.omap_hwmod_reset { ptr @.str.39, i32 3, ptr @omap_i2c_reset }, %struct.omap_hwmod_reset { ptr @.str.40, i32 8, ptr @omap2_wd_timer_reset }], align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"dss_core\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"hdq1w\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"wd_timer\00", align 1
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@omap3_sham_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap3xxx_aes_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type2 = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type3 = external dso_local global %struct.sysc_regbits, align 1
@omap34xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap36xx_sr_sysc_fields = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type_mcasp = external dso_local global %struct.sysc_regbits, align 1
@omap_hwmod_sysc_type_usb_host_fs = external dso_local global %struct.sysc_regbits, align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"sysc_fields not found\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"dmadisable_shift\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"midle_shift\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"sidle_shift\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"clkact_shift\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"enwkup_shift\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"srst_shift\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"autoidle_shift\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"%s %d != %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"sysc_fields mismatch\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"rev_offs %08x != %08x\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"sysc_offs %08x != %08x\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"syss_offs %08x != %08x\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"sysc_flags %08x != %08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"idlemodes %08x != %08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"srst_udelay %i != %i\0A\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.59 = private unnamed_addr constant [93 x i8] c"omap_hwmod: %s: enabled state can only be entered from initialized, idle, or disabled state\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"omap_hwmod: %s: could not enable clockdomain %s: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"\013omap_hwmod: %s: _wait_target_ready failed: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [67 x i8] c"omap_hwmod: %s: idle state can only be entered from enabled state\0A\00", align 1
@.str.63 = private unnamed_addr constant [80 x i8] c"omap_hwmod: %s: disabled state can only be entered from idle, or enabled state\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"\014omap_hwmod: %s: failed to hardreset\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"\014omap_hwmod: %s: could not associate to clkdm %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"\014omap_hwmod: %s: _wait_target_disable failed\0A\00", align 1
@.str.67 = private unnamed_addr constant [73 x i8] c"\013omap_hwmod: %s: %s: hwmod data error: OMAP4 does not support st_shift\0A\00", align 1
@ti_clkctrl_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_omap_hwmod__247_3693___omap_hwmod_setup_all2, ptr @__omap_hwmod_setup_all], section "llvm.metadata"
@switch.table.omap_hwmod_init_module = private unnamed_addr constant [12 x ptr] [ptr @omap_hwmod_sysc_type1, ptr @omap_hwmod_sysc_type1, ptr @omap3_sham_sysc_fields, ptr @omap3xxx_aes_sysc_fields, ptr @omap_hwmod_sysc_type2, ptr @omap_hwmod_sysc_type2, ptr @omap_hwmod_sysc_type3, ptr @omap34xx_sr_sysc_fields, ptr @omap36xx_sr_sysc_fields, ptr @omap36xx_sr_sysc_fields, ptr @omap_hwmod_sysc_type_mcasp, ptr @omap_hwmod_sysc_type_usb_host_fs], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_parse_module_range(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %6) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %6, align 4
  %13 = lshr i32 %12, 2
  store i32 %13, ptr %6, align 4
  %14 = icmp ult i32 %12, 12
  br i1 %14, label %59, label %15

15:                                               ; preds = %11
  %16 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #14
  %17 = call ptr @of_prop_next_string(ptr noundef %16, ptr noundef null) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %23, %15
  %20 = phi ptr [ %24, %23 ], [ %17, %15 ]
  %21 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef nonnull %20, i32 noundef 8)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = call ptr @of_prop_next_string(ptr noundef %16, ptr noundef nonnull %20) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %19

26:                                               ; preds = %19
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #14
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #14
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i32, ptr %4, align 4
  %34 = icmp ne i32 %33, 1
  %35 = load i32, ptr %5, align 4
  %36 = icmp ne i32 %35, 1
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_hwmod_parse_module_range, ptr noundef %39, ptr noundef %1) #15
  br label %59

41:                                               ; preds = %32
  %42 = getelementptr i32, ptr %9, i32 1
  %43 = getelementptr i32, ptr %9, i32 2
  %44 = call i64 @of_translate_address(ptr noundef %1, ptr noundef %42) #14
  %45 = load i32, ptr %43, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #14
  %47 = icmp eq ptr %0, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 19
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call fastcc void @omap_hwmod_fix_mpu_rt_idx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %59

53:                                               ; preds = %48, %41
  %54 = trunc i64 %44 to i32
  store i32 %54, ptr %2, align 4
  %55 = add i32 %54, -1
  %56 = add i32 %55, %46
  %57 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 512, ptr %58, align 4
  br label %59

59:                                               ; preds = %53, %52, %38, %29, %26, %23, %15, %11, %8, %3
  %60 = phi i32 [ -22, %38 ], [ 0, %52 ], [ 0, %53 ], [ -22, %3 ], [ -2, %8 ], [ -22, %11 ], [ -2, %26 ], [ -2, %29 ], [ -2, %15 ], [ -2, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_fix_mpu_rt_idx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 19
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @of_address_to_resource(ptr noundef nonnull %4, i32 noundef %9, ptr noundef %2) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap_hwmod_fix_mpu_rt_idx, i32 noundef %10) #15
  br label %14

14:                                               ; preds = %12, %6, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = zext i16 %1 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  br i1 %6, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #14, !srcloc !9
  %13 = zext i16 %12 to i32
  br label %16

14:                                               ; preds = %2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !10
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %13, %11 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_hwmod_write(i32 noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %1, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = trunc i32 %0 to i16
  %10 = getelementptr inbounds %struct.omap_hwmod, ptr %1, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = zext i16 %2 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %9) #14, !srcloc !11
  br label %19

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %1, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = zext i16 %2 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %0) #14, !srcloc !12
  br label %19

19:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_softreset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %118, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %118, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.omap_hwmod_class, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %11, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %118, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %23) #14
  br label %118

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sysc_regbits, ptr %20, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = or i32 %28, %5
  store i32 %29, ptr %4, align 4
  %30 = getelementptr inbounds %struct.omap_hwmod_class, ptr %9, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  tail call void %31(ptr noundef nonnull %0) #14
  %34 = load ptr, ptr %8, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %9, %24 ]
  %37 = getelementptr inbounds %struct.omap_hwmod_class, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = trunc i32 %29 to i16
  %47 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = and i32 %40, 65535
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %46) #14, !srcloc !11
  br label %56

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = and i32 %40, 65535
  %55 = getelementptr i8, ptr %53, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %29) #14, !srcloc !12
  br label %56

56:                                               ; preds = %51, %45
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.omap_hwmod_class, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  tail call void %59(ptr noundef nonnull %0) #14
  %62 = load ptr, ptr %8, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %57, %56 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.omap_hwmod_class, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %118, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %66, i32 0, i32 3
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %66, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %78) #14
  br label %118

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.sysc_regbits, ptr %75, i32 0, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 1, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %29, %84
  store i32 %85, ptr %4, align 4
  %86 = getelementptr inbounds %struct.omap_hwmod_class, ptr %64, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  tail call void %87(ptr noundef nonnull %0) #14
  %90 = load ptr, ptr %8, align 4
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi ptr [ %90, %89 ], [ %64, %79 ]
  %93 = getelementptr inbounds %struct.omap_hwmod_class, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %91
  %102 = trunc i32 %85 to i16
  %103 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %104 = load ptr, ptr %103, align 4
  %105 = and i32 %96, 65535
  %106 = getelementptr i8, ptr %104, i32 %105
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %106, i16 %102) #14, !srcloc !11
  br label %112

107:                                              ; preds = %91
  %108 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %109 = load ptr, ptr %108, align 4
  %110 = and i32 %96, 65535
  %111 = getelementptr i8, ptr %109, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %85) #14, !srcloc !12
  br label %112

112:                                              ; preds = %107, %101
  %113 = load ptr, ptr %8, align 4
  %114 = getelementptr inbounds %struct.omap_hwmod_class, ptr %113, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  tail call void %115(ptr noundef nonnull %0) #14
  br label %118

118:                                              ; preds = %117, %112, %77, %68, %63, %22, %13, %7, %3, %1
  %119 = phi i32 [ -22, %3 ], [ -22, %1 ], [ 0, %112 ], [ 0, %117 ], [ -22, %22 ], [ -22, %13 ], [ -22, %7 ], [ -22, %77 ], [ -22, %68 ], [ -22, %63 ]
  ret i32 %119
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @omap_hwmod_lookup(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %5, %7 ], [ @omap_hwmod_list, %1 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @omap_hwmod_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -80
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -80
  br label %14

14:                                               ; preds = %12, %3, %1
  %15 = phi ptr [ null, %1 ], [ %13, %12 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_for_each(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %6, %8 ], [ @omap_hwmod_list, %2 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @omap_hwmod_list
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -80
  %10 = tail call i32 %0(ptr noundef %9, ptr noundef %1) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ -22, %2 ], [ 0, %4 ], [ %10, %8 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_register_links(ptr noundef readonly %0) local_unnamed_addr #6 section ".init.text" {
  %2 = load i1, ptr @inited, align 1
  br i1 %2, label %3, label %25

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %20, %5
  %9 = phi ptr [ %23, %20 ], [ %6, %5 ]
  %10 = phi i32 [ %21, %20 ], [ 0, %5 ]
  %11 = tail call fastcc i32 @_register_link(ptr noundef nonnull %9) #16
  switch i32 %11, label %12 [
    i32 -17, label %20
    i32 0, label %20
  ]

12:                                               ; preds = %8
  %13 = getelementptr ptr, ptr %0, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3051, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %16, ptr noundef %19, i32 noundef %11) #14
  br label %20

20:                                               ; preds = %12, %8, %8
  %21 = add i32 %10, 1
  %22 = getelementptr ptr, ptr %0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8

25:                                               ; preds = %20, %5, %3, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %3 ], [ 0, %5 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_register_link(ptr noundef %0) unnamed_addr #7 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %0, i32 0, i32 10
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.omap_hwmod, ptr %4, i32 0, i32 26
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call fastcc void @_register(ptr noundef nonnull %4)
  %24 = load ptr, ptr %7, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %8, %19 ]
  %27 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  tail call fastcc void @_register(ptr noundef %26)
  %31 = load ptr, ptr %7, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.omap_hwmod, ptr %33, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  store ptr %36, ptr %34, align 4
  %38 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %0, i32 0, i32 5, i32 1
  store ptr %35, ptr %38, align 4
  store volatile ptr %34, ptr %35, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.omap_hwmod, ptr %39, i32 0, i32 23
  %41 = load i8, ptr %40, align 4
  %42 = add i8 %41, 1
  store i8 %42, ptr %40, align 4
  %43 = load i8, ptr %15, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %15, align 1
  br label %45

45:                                               ; preds = %32, %14, %10, %6, %3, %1
  %46 = phi i32 [ 0, %32 ], [ -22, %10 ], [ -22, %6 ], [ -22, %3 ], [ -22, %1 ], [ -17, %14 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_setup_one(ptr noundef %0) local_unnamed_addr #6 section ".init.text" {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @omap_hwmod_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @omap_hwmod_list
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -80
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 -80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3095, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %0) #14
  br label %18

15:                                               ; preds = %11
  tail call fastcc void @_ensure_mpu_hwmod_is_setup(ptr noundef nonnull %12) #16
  %16 = tail call fastcc i32 @_init(ptr noundef nonnull %12, ptr noundef null) #16
  %17 = tail call fastcc i32 @_setup(ptr noundef nonnull %12, ptr noundef null)
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %15 ], [ -22, %14 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_ensure_mpu_hwmod_is_setup(ptr nocapture noundef readnone %0) unnamed_addr #6 section ".init.text" {
  %2 = load ptr, ptr @mpu_oh, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.omap_hwmod, ptr %2, i32 0, i32 26
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %13 [
    i8 0, label %7
    i8 1, label %9
  ]

7:                                                ; preds = %4, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__._ensure_mpu_hwmod_is_setup, ptr noundef nonnull @.str.15) #15
  br label %13

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, %0
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @omap_hwmod_setup_one(ptr noundef nonnull @.str.15) #16
  br label %13

13:                                               ; preds = %11, %9, %7, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_init(ptr noundef %0, ptr nocapture noundef readnone %1) unnamed_addr #6 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.16) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  %12 = call fastcc i32 @of_dev_hwmod_lookup(ptr noundef nonnull %9, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %4, align 4
  br i1 %13, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = icmp ne ptr %14, null
  %19 = load i32, ptr %3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %23, ptr noundef nonnull %14) #15
  br label %25

25:                                               ; preds = %22, %17, %15
  %26 = phi i32 [ %19, %17 ], [ %16, %15 ], [ %19, %22 ]
  %27 = tail call fastcc i32 @_init_mpu_rt_base(ptr noundef %0, i32 noundef %26, ptr noundef %14) #16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2369, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %30) #14
  br label %43

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @_init_clocks(ptr noundef %0)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2375, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %35) #14
  br label %43

36:                                               ; preds = %31
  %37 = icmp eq ptr %14, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  tail call fastcc void @parse_module_flags(ptr noundef %0, ptr noundef nonnull %14) #16
  %39 = tail call ptr @of_get_next_child(ptr noundef nonnull %14, ptr noundef null) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call fastcc void @parse_module_flags(ptr noundef %0, ptr noundef nonnull %39) #16
  br label %42

42:                                               ; preds = %41, %38, %36
  store i8 3, ptr %5, align 1
  br label %43

43:                                               ; preds = %42, %34, %29, %8, %2
  %44 = phi i32 [ 0, %29 ], [ -22, %34 ], [ 0, %42 ], [ 0, %2 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_setup(ptr noundef %0, ptr nocapture noundef readnone %1) unnamed_addr #0 {
  %3 = alloca %struct.omap_hwmod_rst_info, align 8
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %444

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @_enable(ptr noundef nonnull %9)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !13

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2555, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %15, ptr noundef %17) #14
  br label %18

18:                                               ; preds = %14, %11, %7
  %19 = load i8, ptr %4, align 1
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %21, label %431

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %43, label %25

25:                                               ; preds = %37, %21
  %26 = phi ptr [ %38, %37 ], [ %23, %21 ]
  %27 = getelementptr i8, ptr %26, i32 -4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %26, i32 14
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = tail call i32 @clk_enable(ptr noundef nonnull %28) #14
  br label %37

37:                                               ; preds = %35, %30, %25
  %38 = load ptr, ptr %26, align 4
  %39 = icmp eq ptr %38, %22
  br i1 %39, label %40, label %25

40:                                               ; preds = %37
  %41 = load i8, ptr %4, align 1
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %431

43:                                               ; preds = %40, %21
  %44 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %431

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %50 = load i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @_enable(ptr noundef %0) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, ptr %44, align 4
  br label %62

57:                                               ; preds = %52
  %58 = load ptr, ptr %0, align 4
  %59 = load i8, ptr %4, align 1
  %60 = zext i8 %59 to i32
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %58, i32 noundef %60) #15
  br label %431

62:                                               ; preds = %55, %48
  %63 = phi i32 [ %56, %55 ], [ %45, %48 ]
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %406

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.omap_hwmod_class, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = tail call i32 %70(ptr noundef %0) #14
  br label %307

74:                                               ; preds = %66
  %75 = load i8, ptr %49, align 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %117, label %77

77:                                               ; preds = %74
  %78 = zext i8 %75 to i32
  %79 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %80 = icmp eq ptr %0, null
  %81 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 1
  %82 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 2
  br label %83

83:                                               ; preds = %112, %77
  %84 = phi i8 [ %75, %77 ], [ %113, %112 ]
  %85 = phi i32 [ %78, %77 ], [ %115, %112 ]
  %86 = phi i32 [ 0, %77 ], [ %114, %112 ]
  %87 = phi i8 [ 1, %77 ], [ %113, %112 ]
  %88 = load ptr, ptr %79, align 4
  %89 = getelementptr %struct.omap_hwmod_rst_info, ptr %88, i32 %86
  %90 = load ptr, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  br i1 %80, label %112, label %91

91:                                               ; preds = %83
  %92 = load ptr, ptr @soc_ops.3, align 4
  %93 = icmp eq ptr %92, null
  %94 = icmp eq i8 %87, 0
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %112, label %96

96:                                               ; preds = %102, %91
  %97 = phi i32 [ %103, %102 ], [ 0, %91 ]
  %98 = getelementptr %struct.omap_hwmod_rst_info, ptr %88, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 @strcmp(ptr noundef %99, ptr noundef %90) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = add nuw nsw i32 %97, 1
  %104 = icmp eq i32 %103, %85
  br i1 %104, label %112, label %96

105:                                              ; preds = %96
  %106 = getelementptr %struct.omap_hwmod_rst_info, ptr %88, i32 %97, i32 1
  %107 = load i8, ptr %106, align 4
  store i8 %107, ptr %81, align 4
  %108 = getelementptr %struct.omap_hwmod_rst_info, ptr %88, i32 %97, i32 2
  %109 = load i8, ptr %108, align 1
  store i8 %109, ptr %82, align 1
  %110 = call i32 %92(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %111 = load i8, ptr %49, align 2
  br label %112

112:                                              ; preds = %105, %102, %91, %83
  %113 = phi i8 [ %84, %83 ], [ %84, %91 ], [ %111, %105 ], [ %84, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %114 = add nuw nsw i32 %86, 1
  %115 = zext i8 %113 to i32
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %83, label %406

117:                                              ; preds = %74
  %118 = getelementptr inbounds %struct.omap_hwmod_class, ptr %68, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %307, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %119, i32 0, i32 3
  %123 = load i16, ptr %122, align 4
  %124 = and i16 %123, 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %307, label %126

126:                                              ; preds = %121
  %127 = load i8, ptr %4, align 1
  %128 = icmp eq i8 %127, 4
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %0, align 4
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %130) #15
  br label %307

132:                                              ; preds = %126
  %133 = and i32 %63, 128
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %165, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %141 = load ptr, ptr %140, align 4
  %142 = zext i8 %137 to i32
  br label %143

143:                                              ; preds = %151, %139
  %144 = phi ptr [ %153, %151 ], [ %141, %139 ]
  %145 = phi i32 [ %152, %151 ], [ %142, %139 ]
  %146 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %144, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = tail call i32 @clk_enable(ptr noundef nonnull %147) #14
  br label %151

151:                                              ; preds = %149, %143
  %152 = add nsw i32 %145, -1
  %153 = getelementptr %struct.omap_hwmod_opt_clk, ptr %144, i32 1
  %154 = icmp sgt i32 %145, 1
  br i1 %154, label %143, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %67, align 4
  %157 = getelementptr inbounds %struct.omap_hwmod_class, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %283, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %158, i32 0, i32 3
  %162 = load i16, ptr %161, align 4
  %163 = and i16 %162, 2
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %283, label %165

165:                                              ; preds = %160, %135, %132
  %166 = phi ptr [ %158, %160 ], [ %119, %135 ], [ %119, %132 ]
  %167 = phi ptr [ %156, %160 ], [ %68, %135 ], [ %68, %132 ]
  %168 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %169 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %166, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %173) #14
  br label %283

174:                                              ; preds = %165
  %175 = load i32, ptr %168, align 4
  %176 = getelementptr inbounds %struct.sysc_regbits, ptr %170, i32 0, i32 4
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl nuw i32 1, %178
  %180 = or i32 %179, %175
  store i32 %180, ptr %168, align 4
  %181 = getelementptr inbounds %struct.omap_hwmod_class, ptr %167, i32 0, i32 5
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %174
  tail call void %182(ptr noundef %0) #14
  %185 = load ptr, ptr %67, align 4
  br label %186

186:                                              ; preds = %184, %174
  %187 = phi ptr [ %185, %184 ], [ %167, %174 ]
  %188 = getelementptr inbounds %struct.omap_hwmod_class, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %189, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = load i32, ptr %44, align 4
  %193 = and i32 %192, 256
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %186
  %196 = trunc i32 %180 to i16
  %197 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %198 = load ptr, ptr %197, align 4
  %199 = and i32 %191, 65535
  %200 = getelementptr i8, ptr %198, i32 %199
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %200, i16 %196) #14, !srcloc !11
  br label %206

201:                                              ; preds = %186
  %202 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %203 = load ptr, ptr %202, align 4
  %204 = and i32 %191, 65535
  %205 = getelementptr i8, ptr %203, i32 %204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %180) #14, !srcloc !12
  br label %206

206:                                              ; preds = %201, %195
  %207 = load ptr, ptr %67, align 4
  %208 = getelementptr inbounds %struct.omap_hwmod_class, ptr %207, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  tail call void %209(ptr noundef %0) #14
  %212 = load ptr, ptr %67, align 4
  br label %213

213:                                              ; preds = %211, %206
  %214 = phi ptr [ %207, %206 ], [ %212, %211 ]
  %215 = getelementptr inbounds %struct.omap_hwmod_class, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %216, i32 0, i32 5
  %218 = load i8, ptr %217, align 4
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %222 = zext i8 %218 to i32
  tail call void %221(i32 noundef %222) #14
  br label %223

223:                                              ; preds = %220, %213
  %224 = tail call fastcc i32 @_wait_softreset_complete(ptr noundef %0) #14
  %225 = icmp eq i32 %224, 10000
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load ptr, ptr %0, align 4
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %227, i32 noundef 10000) #15
  br label %283

229:                                              ; preds = %223
  %230 = load ptr, ptr %67, align 4
  %231 = getelementptr inbounds %struct.omap_hwmod_class, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %283, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %232, i32 0, i32 3
  %236 = load i16, ptr %235, align 4
  %237 = and i16 %236, 2
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %283, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %232, i32 0, i32 4
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 470, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %244) #14
  br label %283

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.sysc_regbits, ptr %241, i32 0, i32 4
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl nuw i32 1, %248
  %250 = xor i32 %249, -1
  %251 = and i32 %180, %250
  store i32 %251, ptr %168, align 4
  %252 = getelementptr inbounds %struct.omap_hwmod_class, ptr %230, i32 0, i32 5
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %245
  tail call void %253(ptr noundef %0) #14
  %256 = load ptr, ptr %67, align 4
  br label %257

257:                                              ; preds = %255, %245
  %258 = phi ptr [ %256, %255 ], [ %230, %245 ]
  %259 = getelementptr inbounds %struct.omap_hwmod_class, ptr %258, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %260, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = load i32, ptr %44, align 4
  %264 = and i32 %263, 256
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %257
  %267 = trunc i32 %251 to i16
  %268 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %269 = load ptr, ptr %268, align 4
  %270 = and i32 %262, 65535
  %271 = getelementptr i8, ptr %269, i32 %270
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %271, i16 %267) #14, !srcloc !11
  br label %277

272:                                              ; preds = %257
  %273 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %274 = load ptr, ptr %273, align 4
  %275 = and i32 %262, 65535
  %276 = getelementptr i8, ptr %274, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %251) #14, !srcloc !12
  br label %277

277:                                              ; preds = %272, %266
  %278 = load ptr, ptr %67, align 4
  %279 = getelementptr inbounds %struct.omap_hwmod_class, ptr %278, i32 0, i32 4
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %277
  tail call void %280(ptr noundef %0) #14
  br label %283

283:                                              ; preds = %282, %277, %243, %234, %229, %226, %172, %160, %155
  %284 = phi i32 [ -110, %226 ], [ 0, %277 ], [ 0, %282 ], [ -22, %172 ], [ -22, %160 ], [ -22, %155 ], [ -22, %243 ], [ -22, %234 ], [ -22, %229 ]
  %285 = load i32, ptr %44, align 4
  %286 = and i32 %285, 128
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %307, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %290 = load i8, ptr %289, align 1
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %307, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %294 = load ptr, ptr %293, align 4
  %295 = zext i8 %290 to i32
  br label %296

296:                                              ; preds = %303, %292
  %297 = phi ptr [ %305, %303 ], [ %294, %292 ]
  %298 = phi i32 [ %304, %303 ], [ %295, %292 ]
  %299 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %297, i32 0, i32 2
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %296
  tail call void @clk_disable(ptr noundef nonnull %300) #14
  br label %303

303:                                              ; preds = %302, %296
  %304 = add nsw i32 %298, -1
  %305 = getelementptr %struct.omap_hwmod_opt_clk, ptr %297, i32 1
  %306 = icmp sgt i32 %298, 1
  br i1 %306, label %296, label %307

307:                                              ; preds = %303, %288, %283, %129, %121, %117, %72
  %308 = phi i32 [ %73, %72 ], [ 0, %121 ], [ 0, %117 ], [ %284, %288 ], [ %284, %283 ], [ -22, %129 ], [ %284, %303 ]
  %309 = load ptr, ptr %67, align 4
  %310 = getelementptr inbounds %struct.omap_hwmod_class, ptr %309, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %369, label %313

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %311, i32 0, i32 3
  %315 = load i16, ptr %314, align 4
  %316 = and i16 %315, 1024
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %369, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %311, i32 0, i32 4
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 535, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %323) #14
  br label %369

324:                                              ; preds = %318
  %325 = load i8, ptr %4, align 1
  %326 = icmp eq i8 %325, 4
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = load ptr, ptr %0, align 4
  %329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %328) #15
  br label %369

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.sysc_regbits, ptr %320, i32 0, i32 6
  %334 = load i8, ptr %333, align 1
  %335 = zext i8 %334 to i32
  %336 = shl nuw i32 1, %335
  %337 = or i32 %336, %332
  store i32 %337, ptr %331, align 4
  %338 = getelementptr inbounds %struct.omap_hwmod_class, ptr %309, i32 0, i32 5
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %330
  tail call void %339(ptr noundef %0) #14
  %342 = load ptr, ptr %67, align 4
  br label %343

343:                                              ; preds = %341, %330
  %344 = phi ptr [ %342, %341 ], [ %309, %330 ]
  %345 = getelementptr inbounds %struct.omap_hwmod_class, ptr %344, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %346, i32 0, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = load i32, ptr %44, align 4
  %350 = and i32 %349, 256
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %343
  %353 = trunc i32 %337 to i16
  %354 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %355 = load ptr, ptr %354, align 4
  %356 = and i32 %348, 65535
  %357 = getelementptr i8, ptr %355, i32 %356
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %357, i16 %353) #14, !srcloc !11
  br label %363

358:                                              ; preds = %343
  %359 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %360 = load ptr, ptr %359, align 4
  %361 = and i32 %348, 65535
  %362 = getelementptr i8, ptr %360, i32 %361
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 %337) #14, !srcloc !12
  br label %363

363:                                              ; preds = %358, %352
  %364 = load ptr, ptr %67, align 4
  %365 = getelementptr inbounds %struct.omap_hwmod_class, ptr %364, i32 0, i32 4
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %363
  tail call void %366(ptr noundef %0) #14
  br label %369

369:                                              ; preds = %368, %363, %327, %322, %313, %307
  %370 = load ptr, ptr %67, align 4
  %371 = getelementptr inbounds %struct.omap_hwmod_class, ptr %370, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %404, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %372, i32 0, i32 1
  %376 = load i32, ptr %375, align 4
  %377 = load i32, ptr %44, align 4
  %378 = and i32 %377, 256
  %379 = icmp eq i32 %378, 0
  %380 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %381 = load ptr, ptr %380, align 4
  %382 = and i32 %376, 65535
  %383 = getelementptr i8, ptr %381, i32 %382
  br i1 %379, label %387, label %384

384:                                              ; preds = %374
  %385 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %383) #14, !srcloc !9
  %386 = zext i16 %385 to i32
  br label %389

387:                                              ; preds = %374
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %383) #14, !srcloc !10
  br label %389

389:                                              ; preds = %387, %384
  %390 = phi i32 [ %386, %384 ], [ %388, %387 ]
  %391 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  store i32 %390, ptr %391, align 4
  %392 = load ptr, ptr %67, align 4
  %393 = getelementptr inbounds %struct.omap_hwmod_class, ptr %392, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %394, i32 0, i32 3
  %396 = load i16, ptr %395, align 4
  %397 = and i16 %396, 256
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %389
  %400 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %401 = load i8, ptr %400, align 2
  %402 = or i8 %401, 2
  store i8 %402, ptr %400, align 2
  br label %403

403:                                              ; preds = %399, %389
  tail call fastcc void @_enable_sysc(ptr noundef %0) #14
  br label %404

404:                                              ; preds = %403, %369
  %405 = icmp eq i32 %308, 0
  br i1 %405, label %406, label %431

406:                                              ; preds = %404, %112, %62
  %407 = load i8, ptr %49, align 2
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %409, label %431

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 27
  %411 = load i8, ptr %410, align 4
  %412 = icmp eq i8 %411, 0
  %413 = select i1 %412, i8 4, i8 %411
  %414 = load i32, ptr %44, align 4
  %415 = and i32 %414, 32776
  %416 = icmp ne i32 %415, 0
  %417 = icmp eq i8 %413, 5
  %418 = select i1 %416, i1 %417, i1 false
  br i1 %418, label %419, label %423

419:                                              ; preds = %409
  %420 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %421 = load i8, ptr %420, align 2
  %422 = or i8 %421, 4
  store i8 %422, ptr %420, align 2
  br label %431

423:                                              ; preds = %409
  switch i8 %413, label %428 [
    i8 5, label %424
    i8 6, label %426
    i8 4, label %431
  ]

424:                                              ; preds = %423
  %425 = call fastcc i32 @_idle(ptr noundef %0) #14
  br label %431

426:                                              ; preds = %423
  %427 = call fastcc i32 @_shutdown(ptr noundef %0) #14
  br label %431

428:                                              ; preds = %423
  %429 = zext i8 %413 to i32
  %430 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2524, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %430, i32 noundef %429) #14
  br label %431

431:                                              ; preds = %428, %426, %424, %423, %419, %406, %404, %57, %43, %40, %18
  %432 = load ptr, ptr %8, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %444, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.omap_hwmod, ptr %432, i32 0, i32 27
  %436 = load i8, ptr %435, align 4
  switch i8 %436, label %441 [
    i8 5, label %437
    i8 6, label %439
    i8 4, label %444
  ]

437:                                              ; preds = %434
  %438 = call fastcc i32 @_idle(ptr noundef nonnull %432)
  br label %444

439:                                              ; preds = %434
  %440 = call fastcc i32 @_shutdown(ptr noundef nonnull %432)
  br label %444

441:                                              ; preds = %434
  %442 = zext i8 %436 to i32
  %443 = load ptr, ptr %432, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2574, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %443, i32 noundef %442) #14
  br label %444

444:                                              ; preds = %441, %439, %437, %434, %431, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_init_module(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %586

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %2, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %586

12:                                               ; preds = %16, %7
  %13 = phi ptr [ %14, %16 ], [ @omap_hwmod_list, %7 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @omap_hwmod_list
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -80
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef %18) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %14, i32 -80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %91

24:                                               ; preds = %21, %12
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 112) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %586, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %1, align 8
  store ptr %29, ptr %26, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 26
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 4, i32 0, i32 7
  store i8 1, ptr %31, align 2
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 24) #17
  %34 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %26) #14
  br label %586

37:                                               ; preds = %28
  %38 = load ptr, ptr %1, align 8
  %39 = tail call i32 @strncmp(ptr noundef %38, ptr noundef nonnull dereferenceable(9) @.str.37, i32 noundef 8) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %52, %49, %46, %37
  %42 = phi i32 [ 0, %37 ], [ 1, %46 ], [ 2, %49 ], [ 3, %52 ]
  %43 = getelementptr %struct.omap_hwmod_reset, ptr @omap_reset_quirks, i32 %42, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.omap_hwmod_class, ptr %33, i32 0, i32 3
  store ptr %44, ptr %45, align 4
  br label %55

46:                                               ; preds = %37
  %47 = tail call i32 @strncmp(ptr noundef %38, ptr noundef nonnull dereferenceable(6) @.str.38, i32 noundef 5) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %41, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strncmp(ptr noundef %38, ptr noundef nonnull dereferenceable(4) @.str.39, i32 noundef 3) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %41, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef %38, ptr noundef nonnull dereferenceable(9) @.str.40, i32 noundef 8) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %41, label %55

55:                                               ; preds = %52, %41
  store ptr %38, ptr %33, align 8
  tail call void @mutex_lock(ptr noundef nonnull @list_lock) #14
  %56 = load ptr, ptr %26, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %90, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %34, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %90, label %64

64:                                               ; preds = %61
  %65 = load i8, ptr %30, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %71, %64
  %68 = phi ptr [ %69, %71 ], [ @omap_hwmod_list, %64 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, @omap_hwmod_list
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %69, i32 -80
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %67

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %69, i32 -80
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76, %67
  %80 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 16
  %81 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  store ptr %80, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  store ptr @omap_hwmod_list, ptr %80, align 8
  %82 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 16, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %80, ptr %81, align 4
  %83 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 10
  store volatile ptr %83, ptr %83, align 8
  %84 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 10, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.omap_hwmod, ptr %26, i32 0, i32 14
  store i32 0, ptr %85, align 4
  store i8 1, ptr %30, align 1
  %86 = load ptr, ptr %26, align 8
  %87 = tail call i32 @strcmp(ptr noundef %86, ptr noundef nonnull dereferenceable(4) @.str.15) #14
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store ptr %26, ptr @mpu_oh, align 4
  br label %90

90:                                               ; preds = %89, %79, %76, %64, %61, %58, %55
  tail call void @mutex_unlock(ptr noundef nonnull @list_lock) #14
  br label %91

91:                                               ; preds = %90, %21
  %92 = phi ptr [ %22, %21 ], [ %26, %90 ]
  store ptr %92, ptr %2, align 4
  %93 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %94, align 4
  %96 = icmp ult i32 %95, 12
  br i1 %96, label %105, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.omap_hwmod_class, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %101, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %185, label %184

105:                                              ; preds = %91
  %106 = getelementptr inbounds [12 x ptr], ptr @switch.table.omap_hwmod_init_module, i32 0, i32 %95
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.sysc_capabilities, ptr %94, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 6
  %111 = load i8, ptr %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp slt i8 %111, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 6
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %112, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.42, i32 noundef %112, i32 noundef %117) #15
  br label %120

120:                                              ; preds = %119, %114, %105
  %121 = load i8, ptr %109, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp slt i8 %121, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load i8, ptr %107, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %122, %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef %122, i32 noundef %126) #15
  br label %129

129:                                              ; preds = %128, %124, %120
  %130 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp slt i8 %131, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 2
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %132, %137
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef %132, i32 noundef %137) #15
  br label %140

140:                                              ; preds = %139, %134, %129
  %141 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp slt i8 %142, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %143, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef %143, i32 noundef %148) #15
  br label %151

151:                                              ; preds = %150, %145, %140
  %152 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 3
  %153 = load i8, ptr %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp slt i8 %153, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 3
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.46, i32 noundef %154, i32 noundef %159) #15
  br label %162

162:                                              ; preds = %161, %156, %151
  %163 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 4
  %164 = load i8, ptr %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp slt i8 %164, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 4
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %165, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %165, i32 noundef %170) #15
  br label %173

173:                                              ; preds = %172, %167, %162
  %174 = getelementptr inbounds %struct.sysc_regbits, ptr %109, i32 0, i32 5
  %175 = load i8, ptr %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp slt i8 %175, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.sysc_regbits, ptr %107, i32 0, i32 5
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %176, %181
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %176, i32 noundef %181) #15
  br label %185

184:                                              ; preds = %97
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #15
  br label %586

185:                                              ; preds = %183, %178, %173, %97
  %186 = phi ptr [ %107, %183 ], [ %107, %178 ], [ %107, %173 ], [ null, %97 ]
  %187 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = load i32, ptr %188, align 4
  %190 = icmp sgt i32 %189, -1
  %191 = select i1 %190, i32 %189, i32 -19
  %192 = getelementptr i32, ptr %188, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = tail call i32 @llvm.smax.i32(i32 %193, i32 0)
  %195 = getelementptr i32, ptr %188, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = tail call i32 @llvm.smax.i32(i32 %196, i32 0)
  %198 = load ptr, ptr %93, align 4
  %199 = load i32, ptr %198, align 4
  switch i32 %199, label %241 [
    i32 0, label %200
    i32 1, label %200
    i32 4, label %222
    i32 5, label %222
    i32 7, label %235
    i32 8, label %235
  ]

200:                                              ; preds = %185, %185
  %201 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %202 = load ptr, ptr %201, align 8
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 768
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i32 0, i32 16
  %207 = lshr i32 %203, 2
  %208 = and i32 %207, 8
  %209 = or i32 %208, %206
  %210 = and i32 %203, 4
  %211 = or i32 %210, %209
  %212 = or i32 %209, %210
  %213 = and i32 %203, 2
  %214 = icmp eq i32 %213, 0
  %215 = or i32 %212, 2
  %216 = select i1 %214, i32 %211, i32 %215
  %217 = or i32 %212, %213
  %218 = and i32 %203, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %267, label %220

220:                                              ; preds = %200
  %221 = or i32 %217, 1
  br label %265

222:                                              ; preds = %185, %185
  %223 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %224 = load ptr, ptr %223, align 8
  %225 = load i32, ptr %224, align 4
  %226 = lshr i32 %225, 6
  %227 = and i32 %226, 1024
  %228 = shl i32 %225, 2
  %229 = and i32 %228, 8
  %230 = or i32 %229, %227
  %231 = and i32 %225, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %267, label %233

233:                                              ; preds = %222
  %234 = or i32 %230, 2
  br label %265

235:                                              ; preds = %185, %185
  %236 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %237 = load ptr, ptr %236, align 8
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 67108864
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %267, label %265

241:                                              ; preds = %185
  %242 = getelementptr inbounds %struct.sysc_capabilities, ptr %198, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.sysc_regbits, ptr %243, i32 0, i32 7
  %245 = load i8, ptr %244, align 1
  %246 = lshr i8 %245, 4
  %247 = and i8 %246, 8
  %248 = xor i8 %247, 8
  %249 = zext i8 %248 to i32
  %250 = getelementptr inbounds %struct.sysc_regbits, ptr %243, i32 0, i32 3
  %251 = load i8, ptr %250, align 1
  %252 = or i32 %249, 4
  %253 = icmp slt i8 %251, 0
  %254 = select i1 %253, i32 %249, i32 %252
  %255 = getelementptr inbounds %struct.sysc_regbits, ptr %243, i32 0, i32 4
  %256 = load i8, ptr %255, align 1
  %257 = or i32 %254, 2
  %258 = icmp slt i8 %256, 0
  %259 = select i1 %258, i32 %254, i32 %257
  %260 = getelementptr inbounds %struct.sysc_regbits, ptr %243, i32 0, i32 5
  %261 = load i8, ptr %260, align 1
  %262 = icmp sgt i8 %261, -1
  br i1 %262, label %263, label %267

263:                                              ; preds = %241
  %264 = or i32 %259, 1
  br label %265

265:                                              ; preds = %263, %235, %233, %220
  %266 = phi i32 [ %264, %263 ], [ %234, %233 ], [ %221, %220 ], [ 4, %235 ]
  br label %267

267:                                              ; preds = %265, %241, %235, %222, %200
  %268 = phi i32 [ %266, %265 ], [ %259, %241 ], [ 0, %235 ], [ %230, %222 ], [ %216, %200 ]
  %269 = phi i32 [ %266, %265 ], [ %259, %241 ], [ 0, %235 ], [ %230, %222 ], [ %217, %200 ]
  %270 = getelementptr inbounds %struct.sysc_capabilities, ptr %198, i32 0, i32 2
  %271 = load ptr, ptr %270, align 4
  %272 = load i8, ptr %271, align 1
  %273 = icmp sgt i8 %272, -1
  br i1 %273, label %274, label %283

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.sysc_config, ptr %276, i32 0, i32 2
  %278 = load i8, ptr %277, align 4
  %279 = icmp eq i8 %278, 0
  %280 = or i32 %269, 64
  %281 = select i1 %279, i32 %268, i32 %280
  %282 = select i1 %279, i32 %269, i32 %280
  br label %283

283:                                              ; preds = %274, %267
  %284 = phi i32 [ %268, %267 ], [ %281, %274 ]
  %285 = phi i32 [ %269, %267 ], [ %282, %274 ]
  %286 = getelementptr inbounds %struct.sysc_regbits, ptr %271, i32 0, i32 2
  %287 = load i8, ptr %286, align 1
  %288 = icmp sgt i8 %287, -1
  %289 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %290 = load ptr, ptr %289, align 8
  %291 = getelementptr inbounds %struct.sysc_config, ptr %290, i32 0, i32 3
  %292 = load i8, ptr %291, align 1
  %293 = icmp eq i8 %292, 0
  %294 = or i32 %285, 32
  %295 = select i1 %293, i32 %284, i32 %294
  %296 = select i1 %293, i32 %285, i32 %294
  %297 = select i1 %288, i32 %295, i32 %284
  %298 = select i1 %288, i32 %296, i32 %285
  %299 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 6
  %300 = getelementptr inbounds %struct.sysc_config, ptr %290, i32 0, i32 5
  %301 = load i32, ptr %300, align 4
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  %304 = or i32 %298, 256
  %305 = select i1 %303, i32 %297, i32 %304
  %306 = select i1 %303, i32 %298, i32 %304
  %307 = and i32 %301, 256
  %308 = icmp eq i32 %307, 0
  %309 = or i32 %306, 512
  %310 = select i1 %308, i32 %305, i32 %309
  %311 = select i1 %308, i32 %306, i32 %309
  %312 = getelementptr inbounds %struct.sysc_config, ptr %290, i32 0, i32 1
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  %316 = or i32 %311, 128
  %317 = select i1 %315, i32 %310, i32 %316
  %318 = getelementptr inbounds %struct.sysc_config, ptr %290, i32 0, i32 2
  %319 = load i8, ptr %318, align 4
  %320 = shl i8 %319, 4
  %321 = and i8 %320, 16
  %322 = shl i8 %319, 4
  %323 = and i8 %322, 32
  %324 = or i8 %323, %321
  %325 = shl i8 %319, 4
  %326 = and i8 %325, 64
  %327 = or i8 %326, %324
  %328 = shl i8 %319, 4
  %329 = and i8 %328, -128
  %330 = or i8 %329, %327
  %331 = and i8 %292, 1
  %332 = or i8 %331, %330
  %333 = and i8 %292, 2
  %334 = or i8 %333, %332
  %335 = and i8 %292, 4
  %336 = or i8 %335, %334
  %337 = and i8 %292, 8
  %338 = or i8 %336, %337
  %339 = zext i8 %338 to i32
  %340 = and i32 %301, 128
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %283
  %343 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %344 = load i32, ptr %343, align 4
  %345 = or i32 %344, 32768
  store i32 %345, ptr %343, align 4
  %346 = load ptr, ptr %299, align 8
  %347 = getelementptr inbounds %struct.sysc_config, ptr %346, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  br label %349

349:                                              ; preds = %342, %283
  %350 = phi i32 [ %348, %342 ], [ %301, %283 ]
  %351 = and i32 %350, 64
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %355 = load i32, ptr %354, align 4
  %356 = or i32 %355, 8
  store i32 %356, ptr %354, align 4
  %357 = load ptr, ptr %299, align 8
  %358 = getelementptr inbounds %struct.sysc_config, ptr %357, i32 0, i32 5
  %359 = load i32, ptr %358, align 4
  br label %360

360:                                              ; preds = %353, %349
  %361 = phi i32 [ %359, %353 ], [ %350, %349 ]
  %362 = and i32 %361, 32
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %371, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %366 = load i32, ptr %365, align 4
  %367 = or i32 %366, 4
  store i32 %367, ptr %365, align 4
  %368 = load ptr, ptr %299, align 8
  %369 = getelementptr inbounds %struct.sysc_config, ptr %368, i32 0, i32 5
  %370 = load i32, ptr %369, align 4
  br label %371

371:                                              ; preds = %364, %360
  %372 = phi i32 [ %370, %364 ], [ %361, %360 ]
  %373 = and i32 %372, 1
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %377 = load i32, ptr %376, align 4
  %378 = or i32 %377, 32
  store i32 %378, ptr %376, align 4
  %379 = load ptr, ptr %299, align 8
  %380 = getelementptr inbounds %struct.sysc_config, ptr %379, i32 0, i32 5
  %381 = load i32, ptr %380, align 4
  br label %382

382:                                              ; preds = %375, %371
  %383 = phi i32 [ %381, %375 ], [ %372, %371 ]
  %384 = and i32 %383, 2048
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %388 = load i32, ptr %387, align 4
  %389 = or i32 %388, 1
  store i32 %389, ptr %387, align 4
  %390 = load ptr, ptr %299, align 8
  %391 = getelementptr inbounds %struct.sysc_config, ptr %390, i32 0, i32 5
  %392 = load i32, ptr %391, align 4
  br label %393

393:                                              ; preds = %386, %382
  %394 = phi i32 [ %392, %386 ], [ %383, %382 ]
  %395 = and i32 %394, 4096
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %404, label %397

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %399 = load i32, ptr %398, align 4
  %400 = or i32 %399, 4096
  store i32 %400, ptr %398, align 4
  %401 = load ptr, ptr %299, align 8
  %402 = getelementptr inbounds %struct.sysc_config, ptr %401, i32 0, i32 5
  %403 = load i32, ptr %402, align 4
  br label %404

404:                                              ; preds = %397, %393
  %405 = phi i32 [ %403, %397 ], [ %394, %393 ]
  %406 = and i32 %405, 8192
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %415, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %410 = load i32, ptr %409, align 4
  %411 = or i32 %410, 2
  store i32 %411, ptr %409, align 4
  %412 = load ptr, ptr %299, align 8
  %413 = getelementptr inbounds %struct.sysc_config, ptr %412, i32 0, i32 5
  %414 = load i32, ptr %413, align 4
  br label %415

415:                                              ; preds = %408, %404
  %416 = phi i32 [ %414, %408 ], [ %405, %404 ]
  %417 = and i32 %416, 2097152
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 18
  %421 = load i32, ptr %420, align 4
  %422 = or i32 %421, 65536
  store i32 %422, ptr %420, align 4
  br label %423

423:                                              ; preds = %419, %415
  %424 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 1
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.omap_hwmod_class, ptr %425, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %496, label %429

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %427, i32 0, i32 4
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  %433 = icmp eq ptr %431, %186
  %434 = or i1 %432, %433
  br i1 %434, label %439, label %435

435:                                              ; preds = %429
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #15
  %436 = load ptr, ptr %424, align 4
  %437 = getelementptr inbounds %struct.omap_hwmod_class, ptr %436, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  br label %439

439:                                              ; preds = %435, %429
  %440 = phi ptr [ %438, %435 ], [ %427, %429 ]
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, %191
  br i1 %442, label %447, label %443

443:                                              ; preds = %439
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, i32 noundef %191, i32 noundef %441) #15
  %444 = load ptr, ptr %424, align 4
  %445 = getelementptr inbounds %struct.omap_hwmod_class, ptr %444, i32 0, i32 1
  %446 = load ptr, ptr %445, align 4
  br label %447

447:                                              ; preds = %443, %439
  %448 = phi ptr [ %446, %443 ], [ %440, %439 ]
  %449 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %448, i32 0, i32 1
  %450 = load i32, ptr %449, align 4
  %451 = icmp eq i32 %450, %194
  br i1 %451, label %456, label %452

452:                                              ; preds = %447
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, i32 noundef %194, i32 noundef %450) #15
  %453 = load ptr, ptr %424, align 4
  %454 = getelementptr inbounds %struct.omap_hwmod_class, ptr %453, i32 0, i32 1
  %455 = load ptr, ptr %454, align 4
  br label %456

456:                                              ; preds = %452, %447
  %457 = phi ptr [ %455, %452 ], [ %448, %447 ]
  %458 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %457, i32 0, i32 2
  %459 = load i32, ptr %458, align 4
  %460 = icmp eq i32 %459, %197
  br i1 %460, label %465, label %461

461:                                              ; preds = %456
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, i32 noundef %197, i32 noundef %459) #15
  %462 = load ptr, ptr %424, align 4
  %463 = getelementptr inbounds %struct.omap_hwmod_class, ptr %462, i32 0, i32 1
  %464 = load ptr, ptr %463, align 4
  br label %465

465:                                              ; preds = %461, %456
  %466 = phi ptr [ %464, %461 ], [ %457, %456 ]
  %467 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %466, i32 0, i32 3
  %468 = load i16, ptr %467, align 4
  %469 = zext i16 %468 to i32
  %470 = icmp eq i32 %317, %469
  br i1 %470, label %475, label %471

471:                                              ; preds = %465
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, i32 noundef %317, i32 noundef %469) #15
  %472 = load ptr, ptr %424, align 4
  %473 = getelementptr inbounds %struct.omap_hwmod_class, ptr %472, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  br label %475

475:                                              ; preds = %471, %465
  %476 = phi ptr [ %474, %471 ], [ %466, %465 ]
  %477 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %476, i32 0, i32 6
  %478 = load i8, ptr %477, align 1
  %479 = icmp eq i8 %338, %478
  br i1 %479, label %485, label %480

480:                                              ; preds = %475
  %481 = zext i8 %478 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, i32 noundef %339, i32 noundef %481) #15
  %482 = load ptr, ptr %424, align 4
  %483 = getelementptr inbounds %struct.omap_hwmod_class, ptr %482, i32 0, i32 1
  %484 = load ptr, ptr %483, align 4
  br label %485

485:                                              ; preds = %480, %475
  %486 = phi ptr [ %484, %480 ], [ %476, %475 ]
  %487 = load ptr, ptr %299, align 8
  %488 = getelementptr inbounds %struct.sysc_config, ptr %487, i32 0, i32 4
  %489 = load i8, ptr %488, align 2
  %490 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %486, i32 0, i32 5
  %491 = load i8, ptr %490, align 4
  %492 = icmp eq i8 %489, %491
  br i1 %492, label %586, label %493

493:                                              ; preds = %485
  %494 = zext i8 %491 to i32
  %495 = zext i8 %489 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, i32 noundef %495, i32 noundef %494) #15
  br label %586

496:                                              ; preds = %423
  %497 = getelementptr inbounds %struct.ti_sysc_cookie, ptr %2, i32 0, i32 1
  %498 = load ptr, ptr %497, align 4
  %499 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %500 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %499, i32 noundef 3520, i32 noundef 24) #17
  %501 = icmp eq ptr %500, null
  br i1 %501, label %586, label %502

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 4
  store ptr %186, ptr %503, align 8
  store i32 %191, ptr %500, align 8
  %504 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 1
  store i32 %194, ptr %504, align 4
  %505 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 2
  store i32 %197, ptr %505, align 8
  %506 = trunc i32 %317 to i16
  %507 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 3
  store i16 %506, ptr %507, align 4
  %508 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 6
  store i8 %338, ptr %508, align 1
  %509 = load ptr, ptr %299, align 8
  %510 = getelementptr inbounds %struct.sysc_config, ptr %509, i32 0, i32 4
  %511 = load i8, ptr %510, align 2
  %512 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %500, i32 0, i32 5
  store i8 %511, ptr %512, align 4
  %513 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 13
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %524

516:                                              ; preds = %502
  %517 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 1
  %518 = load i64, ptr %517, align 8
  %519 = trunc i64 %518 to i32
  %520 = getelementptr inbounds %struct.ti_sysc_module_data, ptr %1, i32 0, i32 2
  %521 = load i32, ptr %520, align 8
  %522 = tail call ptr @ioremap(i32 noundef %519, i32 noundef %521) #14
  %523 = icmp eq ptr %522, null
  br i1 %523, label %585, label %524

524:                                              ; preds = %516, %502
  %525 = phi ptr [ null, %502 ], [ %522, %516 ]
  %526 = load ptr, ptr %424, align 4
  %527 = load ptr, ptr %526, align 4
  %528 = icmp eq ptr %527, null
  br i1 %528, label %536, label %529

529:                                              ; preds = %524
  %530 = load ptr, ptr %1, align 8
  %531 = tail call i32 @strcmp(ptr noundef nonnull %527, ptr noundef %530) #14
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = tail call ptr @kmemdup(ptr noundef %526, i32 noundef 24, i32 noundef 3264) #14
  %535 = icmp eq ptr %534, null
  br i1 %535, label %584, label %536

536:                                              ; preds = %533, %529, %524
  %537 = phi ptr [ %534, %533 ], [ null, %529 ], [ null, %524 ]
  %538 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 10
  %539 = load volatile ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, %538
  br i1 %540, label %541, label %548

541:                                              ; preds = %536
  %542 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %543 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %542, i32 noundef 3520, i32 noundef 36) #17
  %544 = icmp eq ptr %543, null
  br i1 %544, label %583, label %545

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %543, i32 0, i32 1
  store ptr %92, ptr %546, align 4
  %547 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %543, i32 0, i32 8
  store i8 3, ptr %547, align 1
  br label %548

548:                                              ; preds = %545, %536
  %549 = phi ptr [ %543, %545 ], [ null, %536 ]
  %550 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 14
  %551 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %550) #14
  %552 = icmp eq ptr %525, null
  br i1 %552, label %554, label %553

553:                                              ; preds = %548
  store ptr %525, ptr %513, align 4
  br label %554

554:                                              ; preds = %553, %548
  %555 = icmp eq ptr %537, null
  br i1 %555, label %556, label %558

556:                                              ; preds = %554
  %557 = load ptr, ptr %424, align 4
  br label %559

558:                                              ; preds = %554
  store ptr %537, ptr %424, align 4
  br label %559

559:                                              ; preds = %558, %556
  %560 = phi ptr [ %557, %556 ], [ %537, %558 ]
  %561 = getelementptr inbounds %struct.omap_hwmod_class, ptr %560, i32 0, i32 1
  store ptr %500, ptr %561, align 4
  %562 = icmp eq ptr %549, null
  br i1 %562, label %575, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %549, i32 0, i32 5
  %565 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %549, i32 0, i32 1
  %566 = load ptr, ptr %565, align 4
  %567 = getelementptr inbounds %struct.omap_hwmod, ptr %566, i32 0, i32 10
  %568 = load ptr, ptr %567, align 4
  %569 = getelementptr inbounds %struct.list_head, ptr %568, i32 0, i32 1
  store ptr %564, ptr %569, align 4
  store ptr %568, ptr %564, align 4
  %570 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %549, i32 0, i32 5, i32 1
  store ptr %567, ptr %570, align 8
  store volatile ptr %564, ptr %567, align 4
  %571 = load ptr, ptr %565, align 4
  %572 = getelementptr inbounds %struct.omap_hwmod, ptr %571, i32 0, i32 23
  %573 = load i8, ptr %572, align 4
  %574 = add i8 %573, 1
  store i8 %574, ptr %572, align 4
  br label %575

575:                                              ; preds = %563, %559
  %576 = icmp eq ptr %498, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %575
  %578 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 9
  store ptr %498, ptr %578, align 4
  br label %579

579:                                              ; preds = %577, %575
  %580 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 26
  store i8 3, ptr %580, align 1
  %581 = getelementptr inbounds %struct.omap_hwmod, ptr %92, i32 0, i32 27
  store i8 5, ptr %581, align 4
  %582 = tail call fastcc i32 @_setup(ptr noundef %92, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %550, i32 noundef %551) #14
  br label %586

583:                                              ; preds = %541
  tail call void @kfree(ptr noundef %537) #14
  br label %584

584:                                              ; preds = %583, %533
  tail call void @iounmap(ptr noundef %525) #14
  br label %585

585:                                              ; preds = %584, %516
  tail call void @kfree(ptr noundef nonnull %500) #14
  br label %586

586:                                              ; preds = %585, %579, %496, %493, %485, %184, %36, %24, %7, %3
  %587 = phi i32 [ -12, %36 ], [ -22, %7 ], [ -22, %3 ], [ -12, %24 ], [ -22, %184 ], [ 0, %579 ], [ -12, %585 ], [ -12, %496 ], [ 0, %493 ], [ 0, %485 ]
  ret i32 %587
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_register(ptr noundef %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %21, %13
  %18 = phi ptr [ %19, %21 ], [ @omap_hwmod_list, %13 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @omap_hwmod_list
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -80
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %19, i32 -80
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26, %17
  %30 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  store ptr %30, ptr getelementptr inbounds (%struct.list_head, ptr @omap_hwmod_list, i32 0, i32 1), align 4
  store ptr @omap_hwmod_list, ptr %30, align 4
  %32 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 16, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %30, ptr %31, align 4
  %33 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  store i32 0, ptr %35, align 4
  store i8 1, ptr %14, align 1
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(4) @.str.15)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store ptr %0, ptr @mpu_oh, align 4
  br label %40

40:                                               ; preds = %39, %29, %26, %13, %10, %6, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap_hwmod_setup_all() #6 section ".init.text" {
  %1 = tail call i32 @omap_rev() #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @omap_hwmod_setup_all() #16
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_setup_all() unnamed_addr #6 section ".init.text" {
  %1 = load i1, ptr @inited, align 1
  br i1 %1, label %2, label %20

2:                                                ; preds = %0
  tail call fastcc void @_ensure_mpu_hwmod_is_setup(ptr noundef null) #16
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %5, %7 ], [ @omap_hwmod_list, %2 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @omap_hwmod_list
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -80
  %9 = tail call fastcc i32 @_init(ptr noundef %8, ptr noundef null) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7, %3
  tail call fastcc void @omap_hwmod_setup_earlycon_flags() #16
  br label %12

12:                                               ; preds = %16, %11
  %13 = phi ptr [ %14, %16 ], [ @omap_hwmod_list, %11 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @omap_hwmod_list
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -80
  %18 = tail call fastcc i32 @_setup(ptr noundef %17, ptr noundef null) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %12, label %20

20:                                               ; preds = %16, %12, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call fastcc i32 @_enable(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.omap_hwmod_rst_info, align 8
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = and i8 %4, -5
  store i8 %8, ptr %3, align 2
  br label %209

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %12 [
    i8 3, label %14
    i8 5, label %14
    i8 6, label %14
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1887, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %13) #14
  br label %209

14:                                               ; preds = %9, %9, %9
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %14
  %19 = zext i8 %16 to i32
  %20 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %21 = icmp eq ptr %0, null
  %22 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 2
  br label %24

24:                                               ; preds = %58, %18
  %25 = phi i8 [ %16, %18 ], [ %59, %58 ]
  %26 = phi i32 [ %19, %18 ], [ %62, %58 ]
  %27 = phi i32 [ 0, %18 ], [ %60, %58 ]
  %28 = phi i32 [ 0, %18 ], [ %61, %58 ]
  %29 = phi i8 [ 1, %18 ], [ %59, %58 ]
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr %struct.omap_hwmod_rst_info, ptr %30, i32 %28
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !8
  br i1 %21, label %47, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr @soc_ops.5, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp eq i8 %29, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %44, %33
  %39 = phi i32 [ %45, %44 ], [ 0, %33 ]
  %40 = getelementptr %struct.omap_hwmod_rst_info, ptr %30, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @strcmp(ptr noundef %41, ptr noundef %32) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = add nuw nsw i32 %39, 1
  %46 = icmp eq i32 %45, %26
  br i1 %46, label %47, label %38

47:                                               ; preds = %44, %33, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %58

48:                                               ; preds = %38
  %49 = getelementptr %struct.omap_hwmod_rst_info, ptr %30, i32 %39, i32 1
  %50 = load i8, ptr %49, align 4
  store i8 %50, ptr %22, align 4
  %51 = getelementptr %struct.omap_hwmod_rst_info, ptr %30, i32 %39, i32 2
  %52 = load i8, ptr %51, align 1
  store i8 %52, ptr %23, align 1
  %53 = call i32 %34(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = add i32 %27, %55
  %57 = load i8, ptr %15, align 2
  br label %58

58:                                               ; preds = %48, %47
  %59 = phi i8 [ %25, %47 ], [ %57, %48 ]
  %60 = phi i32 [ %27, %47 ], [ %56, %48 ]
  %61 = add nuw nsw i32 %28, 1
  %62 = zext i8 %59 to i32
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %24, label %64

64:                                               ; preds = %58
  %65 = icmp eq i32 %60, %62
  br i1 %65, label %209, label %66

66:                                               ; preds = %64, %14
  %67 = load ptr, ptr @mpu_oh, align 4
  %68 = icmp eq ptr %0, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = call ptr @__clk_get_hw(ptr noundef nonnull %75) #14
  %79 = call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %78) #14
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load ptr, ptr %74, align 4
  %82 = call ptr @__clk_get_hw(ptr noundef %81) #14
  %83 = getelementptr inbounds %struct.clk_hw_omap, ptr %82, i32 0, i32 10
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %80, %77, %73, %69, %66
  %86 = phi ptr [ %84, %80 ], [ null, %66 ], [ %71, %69 ], [ null, %77 ], [ null, %73 ]
  %87 = icmp eq ptr %67, null
  br i1 %87, label %116, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.omap_hwmod, ptr %67, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.omap_hwmod, ptr %67, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %116, label %96

96:                                               ; preds = %92
  %97 = call ptr @__clk_get_hw(ptr noundef nonnull %94) #14
  %98 = call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %97) #14
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load ptr, ptr %93, align 4
  %101 = call ptr @__clk_get_hw(ptr noundef %100) #14
  %102 = getelementptr inbounds %struct.clk_hw_omap, ptr %101, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  br label %104

104:                                              ; preds = %99, %88
  %105 = phi ptr [ %103, %99 ], [ %90, %88 ]
  %106 = icmp ne ptr %86, null
  %107 = icmp ne ptr %105, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.clockdomain, ptr %86, i32 0, i32 3
  %111 = load i8, ptr %110, align 2
  %112 = and i8 %111, 16
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @clkdm_add_sleepdep(ptr noundef nonnull %86, ptr noundef nonnull %105) #14
  br label %116

116:                                              ; preds = %114, %109, %104, %96, %92, %85
  %117 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  call void @clkdm_deny_idle(ptr noundef nonnull %118) #14
  %121 = load ptr, ptr %117, align 4
  %122 = call i32 @clkdm_hwmod_enable(ptr noundef %121, ptr noundef %0) #14
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %0, align 4
  %126 = load ptr, ptr %117, align 4
  %127 = load ptr, ptr %126, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1915, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %125, ptr noundef %127, i32 noundef %122) #14
  br label %209

128:                                              ; preds = %120, %116
  call fastcc void @_enable_clocks(ptr noundef %0)
  %129 = load ptr, ptr @soc_ops.0, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  call void %129(ptr noundef %0) #14
  br label %132

132:                                              ; preds = %131, %128
  %133 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 1024
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  call void @cpu_idle_poll_ctrl(i1 noundef zeroext true) #14
  br label %138

138:                                              ; preds = %137, %132
  %139 = load ptr, ptr @soc_ops.7, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void %139(ptr noundef %0) #14
  br label %142

142:                                              ; preds = %141, %138
  %143 = load ptr, ptr @soc_ops.2, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = call i32 %143(ptr noundef %0) #14
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i32 [ %146, %145 ], [ -22, %142 ]
  %149 = load ptr, ptr %117, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %133, align 4
  %153 = and i32 %152, 65536
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  call void @clkdm_allow_idle(ptr noundef nonnull %149) #14
  br label %156

156:                                              ; preds = %155, %151, %147
  %157 = icmp eq i32 %148, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %156
  store i8 4, ptr %10, align 1
  %159 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.omap_hwmod_class, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %209, label %164

164:                                              ; preds = %158
  %165 = load i8, ptr %3, align 2
  %166 = and i8 %165, 2
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %162, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %133, align 4
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  %174 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %175 = load ptr, ptr %174, align 4
  %176 = and i32 %170, 65535
  %177 = getelementptr i8, ptr %175, i32 %176
  br i1 %173, label %181, label %178

178:                                              ; preds = %168
  %179 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %177) #14, !srcloc !9
  %180 = zext i16 %179 to i32
  br label %183

181:                                              ; preds = %168
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #14, !srcloc !10
  br label %183

183:                                              ; preds = %181, %178
  %184 = phi i32 [ %180, %178 ], [ %182, %181 ]
  %185 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %159, align 4
  %187 = getelementptr inbounds %struct.omap_hwmod_class, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %188, i32 0, i32 3
  %190 = load i16, ptr %189, align 4
  %191 = and i16 %190, 256
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %183
  %194 = load i8, ptr %3, align 2
  %195 = or i8 %194, 2
  store i8 %195, ptr %3, align 2
  br label %196

196:                                              ; preds = %193, %183, %164
  call fastcc void @_enable_sysc(ptr noundef %0)
  br label %209

197:                                              ; preds = %156
  %198 = load ptr, ptr @soc_ops.1, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call i32 %198(ptr noundef %0) #14
  br label %202

202:                                              ; preds = %200, %197
  call fastcc void @_disable_clocks(ptr noundef %0)
  %203 = load ptr, ptr %0, align 4
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %203, i32 noundef %148) #15
  %205 = load ptr, ptr %117, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = call i32 @clkdm_hwmod_disable(ptr noundef nonnull %205, ptr noundef %0) #14
  br label %209

209:                                              ; preds = %207, %202, %196, %158, %124, %64, %12, %7
  %210 = phi i32 [ 0, %7 ], [ -22, %12 ], [ %122, %124 ], [ 0, %64 ], [ %148, %202 ], [ %148, %207 ], [ 0, %158 ], [ 0, %196 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call fastcc i32 @_idle(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_idle(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod_rst_info, align 8
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %10 = load i8, ptr %9, align 2
  %11 = or i8 %10, 4
  store i8 %11, ptr %9, align 2
  br label %253

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = zext i8 %14 to i32
  %18 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 2
  br label %22

22:                                               ; preds = %56, %16
  %23 = phi i8 [ %14, %16 ], [ %57, %56 ]
  %24 = phi i32 [ %17, %16 ], [ %60, %56 ]
  %25 = phi i32 [ 0, %16 ], [ %58, %56 ]
  %26 = phi i32 [ 0, %16 ], [ %59, %56 ]
  %27 = phi i8 [ 1, %16 ], [ %57, %56 ]
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr %struct.omap_hwmod_rst_info, ptr %28, i32 %26
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  br i1 %19, label %45, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr @soc_ops.5, align 4
  %33 = icmp eq ptr %32, null
  %34 = icmp eq i8 %27, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %42, %31
  %37 = phi i32 [ %43, %42 ], [ 0, %31 ]
  %38 = getelementptr %struct.omap_hwmod_rst_info, ptr %28, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @strcmp(ptr noundef %39, ptr noundef %30) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %37, 1
  %44 = icmp eq i32 %43, %24
  br i1 %44, label %45, label %36

45:                                               ; preds = %42, %31, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %56

46:                                               ; preds = %36
  %47 = getelementptr %struct.omap_hwmod_rst_info, ptr %28, i32 %37, i32 1
  %48 = load i8, ptr %47, align 4
  store i8 %48, ptr %20, align 4
  %49 = getelementptr %struct.omap_hwmod_rst_info, ptr %28, i32 %37, i32 2
  %50 = load i8, ptr %49, align 1
  store i8 %50, ptr %21, align 1
  %51 = call i32 %32(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = add i32 %25, %53
  %55 = load i8, ptr %13, align 2
  br label %56

56:                                               ; preds = %46, %45
  %57 = phi i8 [ %23, %45 ], [ %55, %46 ]
  %58 = phi i32 [ %25, %45 ], [ %54, %46 ]
  %59 = add nuw nsw i32 %26, 1
  %60 = zext i8 %57 to i32
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %22, label %62

62:                                               ; preds = %56
  %63 = icmp eq i32 %58, %60
  br i1 %63, label %253, label %64

64:                                               ; preds = %62, %12
  %65 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 4
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1979, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %69) #14
  br label %253

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.omap_hwmod_class, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %226, label %76

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %77 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %2, align 4
  %79 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %74, i32 0, i32 3
  %80 = load i16, ptr %79, align 4
  %81 = and i16 %80, 255
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %134, label %85

85:                                               ; preds = %76
  %86 = load i32, ptr %4, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = and i32 %82, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %74, i32 0, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 8
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, i32 4, i32 8
  br label %111

98:                                               ; preds = %89
  call fastcc void @_enable_wakeup(ptr noundef %0, ptr noundef nonnull %2) #14
  %99 = load ptr, ptr %71, align 4
  %100 = getelementptr inbounds %struct.omap_hwmod_class, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %134, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %101, i32 0, i32 6
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, 8
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i32 4, i32 8
  %109 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %101, i32 0, i32 3
  %110 = load i16, ptr %109, align 4
  br label %111

111:                                              ; preds = %103, %92, %85
  %112 = phi i16 [ %110, %103 ], [ %80, %92 ], [ %80, %85 ]
  %113 = phi i32 [ %108, %103 ], [ %97, %92 ], [ 1, %85 ]
  %114 = phi ptr [ %101, %103 ], [ %74, %92 ], [ %74, %85 ]
  %115 = and i16 %112, 32
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %114, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %122) #14
  br label %134

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.sysc_regbits, ptr %119, i32 0, i32 2
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 3, %126
  %128 = xor i32 %127, -1
  %129 = load i32, ptr %2, align 4
  %130 = and i32 %129, %128
  %131 = call i32 @llvm.cttz.i32(i32 %113, i1 true) #14, !range !14
  %132 = shl i32 %131, %126
  %133 = or i32 %130, %132
  store i32 %133, ptr %2, align 4
  br label %134

134:                                              ; preds = %123, %121, %111, %98, %76
  %135 = and i32 %82, 64
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %182, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %4, align 4
  %139 = and i32 %138, 2050
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %71, align 4
  %143 = getelementptr inbounds %struct.omap_hwmod_class, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  br label %157

145:                                              ; preds = %137
  %146 = and i32 %82, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call fastcc void @_enable_wakeup(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %149

149:                                              ; preds = %148, %145
  %150 = load ptr, ptr %71, align 4
  %151 = getelementptr inbounds %struct.omap_hwmod_class, ptr %150, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %152, i32 0, i32 6
  %154 = load i8, ptr %153, align 1
  %155 = icmp sgt i8 %154, -1
  %156 = select i1 %155, i32 4, i32 8
  br label %157

157:                                              ; preds = %149, %141
  %158 = phi ptr [ %144, %141 ], [ %152, %149 ]
  %159 = phi i32 [ 1, %141 ], [ %156, %149 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %182, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %158, i32 0, i32 3
  %163 = load i16, ptr %162, align 4
  %164 = and i16 %163, 64
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %182, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %158, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %171) #14
  br label %182

172:                                              ; preds = %166
  %173 = load i8, ptr %168, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 3, %174
  %176 = xor i32 %175, -1
  %177 = load i32, ptr %2, align 4
  %178 = and i32 %177, %176
  %179 = call i32 @llvm.cttz.i32(i32 %159, i1 true) #14, !range !14
  %180 = shl i32 %179, %174
  %181 = or i32 %178, %180
  store i32 %181, ptr %2, align 4
  br label %182

182:                                              ; preds = %172, %170, %161, %157, %134
  %183 = load i32, ptr %77, align 4
  %184 = load i32, ptr %2, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %225, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %71, align 4
  %188 = getelementptr inbounds %struct.omap_hwmod_class, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %192) #14
  br label %225

193:                                              ; preds = %186
  store i32 %184, ptr %77, align 4
  %194 = getelementptr inbounds %struct.omap_hwmod_class, ptr %187, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  call void %195(ptr noundef %0) #14
  %198 = load ptr, ptr %71, align 4
  br label %199

199:                                              ; preds = %197, %193
  %200 = phi ptr [ %198, %197 ], [ %187, %193 ]
  %201 = getelementptr inbounds %struct.omap_hwmod_class, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %202, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = load i32, ptr %4, align 4
  %206 = and i32 %205, 256
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %199
  %209 = trunc i32 %184 to i16
  %210 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %211 = load ptr, ptr %210, align 4
  %212 = and i32 %204, 65535
  %213 = getelementptr i8, ptr %211, i32 %212
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %213, i16 %209) #14, !srcloc !11
  br label %219

214:                                              ; preds = %199
  %215 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %216 = load ptr, ptr %215, align 4
  %217 = and i32 %204, 65535
  %218 = getelementptr i8, ptr %216, i32 %217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %184) #14, !srcloc !12
  br label %219

219:                                              ; preds = %214, %208
  %220 = load ptr, ptr %71, align 4
  %221 = getelementptr inbounds %struct.omap_hwmod_class, ptr %220, i32 0, i32 4
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  call void %222(ptr noundef %0) #14
  br label %225

225:                                              ; preds = %224, %219, %191, %182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %226

226:                                              ; preds = %225, %70
  %227 = load ptr, ptr @mpu_oh, align 4
  call fastcc void @_del_initiator_dep(ptr noundef %0, ptr noundef %227)
  %228 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load i32, ptr %4, align 4
  %233 = and i32 %232, 65536
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  call void @clkdm_deny_idle(ptr noundef nonnull %229) #14
  br label %236

236:                                              ; preds = %235, %231, %226
  %237 = load i32, ptr %4, align 4
  %238 = and i32 %237, 1024
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #14
  br label %241

241:                                              ; preds = %240, %236
  %242 = load ptr, ptr @soc_ops.1, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = call i32 %242(ptr noundef %0) #14
  br label %246

246:                                              ; preds = %244, %241
  call fastcc void @_disable_clocks(ptr noundef %0)
  %247 = load ptr, ptr %228, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  call void @clkdm_allow_idle(ptr noundef nonnull %247) #14
  %250 = load ptr, ptr %228, align 4
  %251 = call i32 @clkdm_hwmod_disable(ptr noundef %250, ptr noundef %0) #14
  br label %252

252:                                              ; preds = %249, %246
  store i8 5, ptr %65, align 1
  br label %253

253:                                              ; preds = %252, %68, %62, %8
  %254 = phi i32 [ 0, %8 ], [ -22, %68 ], [ 0, %252 ], [ 0, %62 ]
  ret i32 %254
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call fastcc i32 @_shutdown(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_shutdown(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.omap_hwmod_rst_info, align 8
  %3 = alloca %struct.omap_hwmod_rst_info, align 8
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 2
  br label %13

13:                                               ; preds = %47, %7
  %14 = phi i8 [ %5, %7 ], [ %48, %47 ]
  %15 = phi i32 [ %8, %7 ], [ %51, %47 ]
  %16 = phi i32 [ 0, %7 ], [ %49, %47 ]
  %17 = phi i32 [ 0, %7 ], [ %50, %47 ]
  %18 = phi i8 [ 1, %7 ], [ %48, %47 ]
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr %struct.omap_hwmod_rst_info, ptr %19, i32 %17
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  br i1 %10, label %36, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr @soc_ops.5, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp eq i8 %18, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %33, %22
  %28 = phi i32 [ %34, %33 ], [ 0, %22 ]
  %29 = getelementptr %struct.omap_hwmod_rst_info, ptr %19, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef %21) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = add nuw nsw i32 %28, 1
  %35 = icmp eq i32 %34, %15
  br i1 %35, label %36, label %27

36:                                               ; preds = %33, %22, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %47

37:                                               ; preds = %27
  %38 = getelementptr %struct.omap_hwmod_rst_info, ptr %19, i32 %28, i32 1
  %39 = load i8, ptr %38, align 4
  store i8 %39, ptr %11, align 4
  %40 = getelementptr %struct.omap_hwmod_rst_info, ptr %19, i32 %28, i32 2
  %41 = load i8, ptr %40, align 1
  store i8 %41, ptr %12, align 1
  %42 = call i32 %23(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = add i32 %16, %44
  %46 = load i8, ptr %4, align 2
  br label %47

47:                                               ; preds = %37, %36
  %48 = phi i8 [ %14, %36 ], [ %46, %37 ]
  %49 = phi i32 [ %16, %36 ], [ %45, %37 ]
  %50 = add nuw nsw i32 %17, 1
  %51 = zext i8 %48 to i32
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %13, label %53

53:                                               ; preds = %47
  %54 = icmp eq i32 %49, %51
  br i1 %54, label %282, label %55

55:                                               ; preds = %53, %1
  %56 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, -2
  %59 = icmp eq i8 %58, 4
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2037, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %61) #14
  br label %282

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.omap_hwmod_class, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = icmp eq i8 %57, 5
  br i1 %69, label %70, label %77

70:                                               ; preds = %68
  %71 = call fastcc i32 @_enable(ptr noundef %0)
  %72 = load ptr, ptr %63, align 4
  %73 = getelementptr inbounds %struct.omap_hwmod_class, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %0) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %82

77:                                               ; preds = %68
  %78 = call i32 %66(ptr noundef %0) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %282

80:                                               ; preds = %77, %70
  %81 = load ptr, ptr %63, align 4
  br label %84

82:                                               ; preds = %70
  %83 = call fastcc i32 @_idle(ptr noundef %0)
  br label %282

84:                                               ; preds = %80, %62
  %85 = phi ptr [ %81, %80 ], [ %64, %62 ]
  %86 = getelementptr inbounds %struct.omap_hwmod_class, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %217, label %89

89:                                               ; preds = %84
  %90 = load i8, ptr %56, align 1
  %91 = icmp eq i8 %90, 5
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = call fastcc i32 @_enable(ptr noundef %0)
  %94 = load ptr, ptr %63, align 4
  %95 = getelementptr inbounds %struct.omap_hwmod_class, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %217, label %98

98:                                               ; preds = %92, %89
  %99 = phi ptr [ %96, %92 ], [ %87, %89 ]
  %100 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %99, i32 0, i32 3
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 255
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  %108 = and i16 %103, 32
  %109 = icmp eq i16 %108, 0
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %99, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %116) #14
  br label %124

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.sysc_regbits, ptr %113, i32 0, i32 2
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 3, %120
  %122 = xor i32 %121, -1
  %123 = and i32 %101, %122
  br label %124

124:                                              ; preds = %117, %115, %98
  %125 = phi i32 [ %101, %98 ], [ %101, %115 ], [ %123, %117 ]
  %126 = and i32 %105, 64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %63, align 4
  %130 = getelementptr inbounds %struct.omap_hwmod_class, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %131, i32 0, i32 3
  %135 = load i16, ptr %134, align 4
  %136 = and i16 %135, 64
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %131, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %143) #14
  br label %150

144:                                              ; preds = %138
  %145 = load i8, ptr %140, align 1
  %146 = zext i8 %145 to i32
  %147 = shl i32 3, %146
  %148 = xor i32 %147, -1
  %149 = and i32 %125, %148
  br label %150

150:                                              ; preds = %144, %142, %133, %128, %124
  %151 = phi i32 [ %125, %124 ], [ %125, %128 ], [ %125, %133 ], [ %125, %142 ], [ %149, %144 ]
  %152 = and i32 %105, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %63, align 4
  %156 = getelementptr inbounds %struct.omap_hwmod_class, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %176, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %157, i32 0, i32 3
  %161 = load i16, ptr %160, align 4
  %162 = and i16 %161, 1
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %157, i32 0, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %169) #14
  br label %176

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.sysc_regbits, ptr %166, i32 0, i32 5
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = shl nuw i32 1, %173
  %175 = or i32 %174, %151
  br label %176

176:                                              ; preds = %170, %168, %159, %154, %150
  %177 = phi i32 [ %151, %150 ], [ %151, %154 ], [ %151, %159 ], [ %151, %168 ], [ %175, %170 ]
  %178 = load ptr, ptr %63, align 4
  %179 = getelementptr inbounds %struct.omap_hwmod_class, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load ptr, ptr %0, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %183) #14
  br label %217

184:                                              ; preds = %176
  store i32 %177, ptr %100, align 4
  %185 = getelementptr inbounds %struct.omap_hwmod_class, ptr %178, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  call void %186(ptr noundef %0) #14
  %189 = load ptr, ptr %63, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = phi ptr [ %189, %188 ], [ %178, %184 ]
  %192 = getelementptr inbounds %struct.omap_hwmod_class, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 256
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %190
  %201 = trunc i32 %177 to i16
  %202 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %203 = load ptr, ptr %202, align 4
  %204 = and i32 %195, 65535
  %205 = getelementptr i8, ptr %203, i32 %204
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %205, i16 %201) #14, !srcloc !11
  br label %211

206:                                              ; preds = %190
  %207 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %208 = load ptr, ptr %207, align 4
  %209 = and i32 %195, 65535
  %210 = getelementptr i8, ptr %208, i32 %209
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %177) #14, !srcloc !12
  br label %211

211:                                              ; preds = %206, %200
  %212 = load ptr, ptr %63, align 4
  %213 = getelementptr inbounds %struct.omap_hwmod_class, ptr %212, i32 0, i32 4
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  call void %214(ptr noundef %0) #14
  br label %217

217:                                              ; preds = %216, %211, %182, %92, %84
  %218 = load i8, ptr %56, align 1
  %219 = icmp eq i8 %218, 4
  br i1 %219, label %220, label %238

220:                                              ; preds = %217
  %221 = load ptr, ptr @mpu_oh, align 4
  call fastcc void @_del_initiator_dep(ptr noundef %0, ptr noundef %221)
  %222 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 1024
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #14
  br label %227

227:                                              ; preds = %226, %220
  %228 = load ptr, ptr @soc_ops.1, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %227
  %231 = call i32 %228(ptr noundef %0) #14
  br label %232

232:                                              ; preds = %230, %227
  call fastcc void @_disable_clocks(ptr noundef %0)
  %233 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 @clkdm_hwmod_disable(ptr noundef nonnull %234, ptr noundef %0) #14
  br label %238

238:                                              ; preds = %236, %232, %217
  %239 = load i8, ptr %4, align 2
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %281, label %241

241:                                              ; preds = %238
  %242 = zext i8 %239 to i32
  %243 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %244 = icmp eq ptr %0, null
  %245 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 1
  %246 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 2
  br label %247

247:                                              ; preds = %276, %241
  %248 = phi i8 [ %239, %241 ], [ %277, %276 ]
  %249 = phi i32 [ %242, %241 ], [ %279, %276 ]
  %250 = phi i8 [ 1, %241 ], [ %277, %276 ]
  %251 = phi i32 [ 0, %241 ], [ %278, %276 ]
  %252 = load ptr, ptr %243, align 4
  %253 = getelementptr %struct.omap_hwmod_rst_info, ptr %252, i32 %251
  %254 = load ptr, ptr %253, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !8
  br i1 %244, label %276, label %255

255:                                              ; preds = %247
  %256 = load ptr, ptr @soc_ops.3, align 4
  %257 = icmp eq ptr %256, null
  %258 = icmp eq i8 %250, 0
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %276, label %260

260:                                              ; preds = %266, %255
  %261 = phi i32 [ %267, %266 ], [ 0, %255 ]
  %262 = getelementptr %struct.omap_hwmod_rst_info, ptr %252, i32 %261
  %263 = load ptr, ptr %262, align 4
  %264 = call i32 @strcmp(ptr noundef %263, ptr noundef %254) #14
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %260
  %267 = add nuw nsw i32 %261, 1
  %268 = icmp eq i32 %267, %249
  br i1 %268, label %276, label %260

269:                                              ; preds = %260
  %270 = getelementptr %struct.omap_hwmod_rst_info, ptr %252, i32 %261, i32 1
  %271 = load i8, ptr %270, align 4
  store i8 %271, ptr %245, align 4
  %272 = getelementptr %struct.omap_hwmod_rst_info, ptr %252, i32 %261, i32 2
  %273 = load i8, ptr %272, align 1
  store i8 %273, ptr %246, align 1
  %274 = call i32 %256(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  %275 = load i8, ptr %4, align 2
  br label %276

276:                                              ; preds = %269, %266, %255, %247
  %277 = phi i8 [ %248, %247 ], [ %248, %255 ], [ %275, %269 ], [ %248, %266 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %278 = add nuw nsw i32 %251, 1
  %279 = zext i8 %277 to i32
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %247, label %281

281:                                              ; preds = %276, %238
  store i8 6, ptr %56, align 1
  br label %282

282:                                              ; preds = %281, %82, %77, %60, %53
  %283 = phi i32 [ -22, %60 ], [ 0, %281 ], [ 0, %53 ], [ %75, %82 ], [ %78, %77 ]
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_hwmod_get_pwrdm(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 23
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %7
  %28 = phi ptr [ %26, %24 ], [ %9, %7 ]
  %29 = tail call ptr @__clk_get_hw(ptr noundef %28) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.clk_hw_omap, ptr %29, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %3
  %36 = phi ptr [ %5, %3 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.clockdomain, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %20, %16, %11, %1
  %40 = phi ptr [ null, %1 ], [ null, %20 ], [ null, %27 ], [ null, %31 ], [ null, %16 ], [ null, %11 ], [ %38, %35 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_hwmod_get_mpu_rt_va(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8, %3, %1
  %16 = phi ptr [ %14, %12 ], [ null, %1 ], [ null, %3 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_assert_hardreset(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.omap_hwmod_rst_info, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = load ptr, ptr @soc_ops.3, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %24, %15
  %19 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %20 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %1) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %13
  br i1 %26, label %35, label %18

27:                                               ; preds = %18
  %28 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 1
  store i8 %29, ptr %30, align 4
  %31 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  %34 = call i32 %8(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  br label %35

35:                                               ; preds = %27, %24, %10, %5
  %36 = phi i32 [ %34, %27 ], [ -38, %5 ], [ -2, %10 ], [ -2, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i32 [ %36, %35 ], [ -22, %2 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_deassert_hardreset(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.omap_hwmod_rst_info, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = load ptr, ptr @soc_ops.4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %24, %15
  %19 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %20 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %1) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %13
  br i1 %26, label %67, label %18

27:                                               ; preds = %18
  %28 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 1
  store i8 %29, ptr %30, align 4
  %31 = getelementptr %struct.omap_hwmod_rst_info, ptr %17, i32 %19, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %3, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %27
  tail call void @clkdm_deny_idle(ptr noundef nonnull %35) #14
  %38 = load ptr, ptr %34, align 4
  %39 = tail call i32 @clkdm_hwmod_enable(ptr noundef %38, ptr noundef nonnull %0) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 4
  %43 = load ptr, ptr %34, align 4
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1533, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %42, ptr noundef %44, i32 noundef %39) #14
  br label %67

45:                                               ; preds = %37, %27
  tail call fastcc void @_enable_clocks(ptr noundef nonnull %0) #14
  %46 = load ptr, ptr @soc_ops.0, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %46(ptr noundef nonnull %0) #14
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr @soc_ops.4, align 4
  %51 = call i32 %50(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %52 = load ptr, ptr @soc_ops.1, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 %52(ptr noundef nonnull %0) #14
  br label %56

56:                                               ; preds = %54, %49
  call fastcc void @_disable_clocks(ptr noundef nonnull %0) #14
  %57 = icmp eq i32 %51, -16
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %59) #15
  br label %61

61:                                               ; preds = %58, %56
  %62 = load ptr, ptr %34, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  call void @clkdm_allow_idle(ptr noundef nonnull %62) #14
  %65 = load ptr, ptr %34, align 4
  %66 = call i32 @clkdm_hwmod_disable(ptr noundef %65, ptr noundef nonnull %0) #14
  br label %67

67:                                               ; preds = %64, %61, %41, %24, %10, %5
  %68 = phi i32 [ %39, %41 ], [ -38, %5 ], [ %51, %64 ], [ %51, %61 ], [ -2, %10 ], [ -2, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  br label %69

69:                                               ; preds = %67, %2
  %70 = phi i32 [ %68, %67 ], [ -22, %2 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_for_each_by_class(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr @omap_hwmod_list, align 4
  %9 = icmp eq ptr %8, @omap_hwmod_list
  br i1 %9, label %24, label %10

10:                                               ; preds = %21, %7
  %11 = phi ptr [ %22, %21 ], [ %8, %7 ]
  %12 = getelementptr i8, ptr %11, i32 -76
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %11, i32 -80
  %19 = tail call i32 %1(ptr noundef %18, ptr noundef %2) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %10
  %22 = load ptr, ptr %11, align 4
  %23 = icmp eq ptr %22, @omap_hwmod_list
  br i1 %23, label %24, label %10

24:                                               ; preds = %21, %17, %7, %3
  %25 = phi i32 [ -22, %3 ], [ 0, %7 ], [ %19, %17 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_set_postsetup_state(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = add i8 %1, -4
  %5 = icmp ult i8 %4, 3
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 14
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 27
  store i8 %1, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ 0, %13 ], [ -22, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #14
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_hwmod_get_context_loss_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @soc_ops.8, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 %2(ptr noundef %0) #14
  br label %47

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 23
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.omap_hwmod_ocp_if, ptr %27, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %12
  %33 = phi ptr [ %31, %29 ], [ %14, %12 ]
  %34 = tail call ptr @__clk_get_hw(ptr noundef %33) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.clk_hw_omap, ptr %34, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36, %8
  %41 = phi ptr [ %10, %8 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.clockdomain, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @pwrdm_get_context_loss_count(ptr noundef nonnull %43) #14
  br label %47

47:                                               ; preds = %45, %40, %36, %32, %25, %21, %16, %6, %4
  %48 = phi i32 [ %5, %4 ], [ %46, %45 ], [ 0, %40 ], [ 0, %6 ], [ 0, %25 ], [ 0, %32 ], [ 0, %36 ], [ 0, %21 ], [ 0, %16 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_get_context_loss_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_hwmod_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @omap_rev() #14
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store ptr @_omap2xxx_3xxx_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap2_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_omap2_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap2_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  br label %36

5:                                                ; preds = %0
  %6 = tail call i32 @omap_rev() #14
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 68
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @omap_rev() #14
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 84
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @omap_rev() #14
  %15 = and i32 %14, -16777216
  %16 = icmp eq i32 %15, 117440512
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9, %5
  store ptr @_omap4_enable_module, ptr @soc_ops.0, align 4
  store ptr @_omap4_disable_module, ptr @soc_ops.1, align 4
  store ptr @_omap4_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap4_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_omap4_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap4_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  store ptr @_omap4_update_context_lost, ptr @soc_ops.7, align 4
  store ptr @_omap4_get_context_lost, ptr @soc_ops.8, align 4
  store ptr @_omap4_disable_direct_prcm, ptr @soc_ops.9, align 4
  store ptr @_omap4_xlate_clkctrl, ptr @soc_ops.10, align 4
  br label %36

18:                                               ; preds = %13
  %19 = tail call i32 @omap_rev() #14
  %20 = and i32 %19, -1048576
  %21 = icmp eq i32 %20, -2126512128
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @omap_rev() #14
  %24 = and i32 %23, -1048576
  %25 = icmp eq i32 %24, -2124414976
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @omap_rev() #14
  %28 = and i32 %27, -16777216
  %29 = icmp eq i32 %28, 855638016
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @omap_rev() #14
  %32 = and i32 %31, -16777216
  %33 = icmp eq i32 %32, 1124073472
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22, %18
  store ptr @_omap4_enable_module, ptr @soc_ops.0, align 4
  store ptr @_omap4_disable_module, ptr @soc_ops.1, align 4
  store ptr @_omap4_wait_target_ready, ptr @soc_ops.2, align 4
  store ptr @_omap4_assert_hardreset, ptr @soc_ops.3, align 4
  store ptr @_am33xx_deassert_hardreset, ptr @soc_ops.4, align 4
  store ptr @_omap4_is_hardreset_asserted, ptr @soc_ops.5, align 4
  store ptr @_init_clkdm, ptr @soc_ops.6, align 4
  store ptr @_omap4_disable_direct_prcm, ptr @soc_ops.9, align 4
  store ptr @_omap4_xlate_clkctrl, ptr @soc_ops.10, align 4
  br label %36

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 4050, i32 noundef 9, ptr noundef nonnull @.str.9) #14
  br label %36

36:                                               ; preds = %35, %34, %17, %4
  tail call fastcc void @_init_clkctrl_providers() #16
  store i1 true, ptr @inited, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2xxx_3xxx_wait_target_ready(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 23
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 1
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i16
  %27 = getelementptr inbounds %struct.omap_hwmod_omap2_prcm, ptr %22, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = tail call i32 @omap_cm_wait_module_ready(i8 noundef zeroext 0, i16 noundef signext %23, i16 noundef zeroext %26, i8 noundef zeroext %28) #14
  br label %30

30:                                               ; preds = %21, %17, %13, %8, %3, %1
  %31 = phi i32 [ %29, %21 ], [ -22, %1 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ], [ 0, %8 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2_assert_hardreset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = tail call i32 @omap_prm_assert_hardreset(i8 noundef zeroext %4, i8 noundef zeroext 0, i16 noundef signext %6, i16 noundef zeroext 0) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2_deassert_hardreset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 4
  %9 = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %4, i8 noundef zeroext %6, i8 noundef zeroext 0, i16 noundef signext %8, i16 noundef zeroext 0, i16 noundef zeroext 0) #14
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2_is_hardreset_asserted(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = tail call i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %4, i8 noundef zeroext 0, i16 noundef signext %6, i16 noundef zeroext 0) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_init_clkdm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @clkdm_lookup(ptr noundef nonnull %3) #14
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %10, ptr noundef %11) #15
  br label %13

13:                                               ; preds = %9, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_omap4_enable_module(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 7
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 6
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.clockdomain, ptr %3, i32 0, i32 7
  %19 = load i16, ptr %18, align 2
  %20 = load i16, ptr %6, align 4
  %21 = tail call i32 @omap_cm_module_enable(i8 noundef zeroext %8, i8 noundef zeroext %17, i16 noundef zeroext %19, i16 noundef zeroext %20) #14
  br label %22

22:                                               ; preds = %15, %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_disable_module(ptr noundef %0) #0 {
  %2 = alloca %struct.omap_hwmod_rst_info, align 8
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %111, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %111, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 7
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %111

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 21
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = zext i8 %18 to i32
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 3
  %23 = icmp eq ptr %0, null
  %24 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %2, i32 0, i32 2
  br label %26

26:                                               ; preds = %58, %20
  %27 = phi i8 [ %18, %20 ], [ %59, %58 ]
  %28 = phi i32 [ %21, %20 ], [ %62, %58 ]
  %29 = phi i8 [ 1, %20 ], [ %59, %58 ]
  %30 = phi i32 [ 0, %20 ], [ %61, %58 ]
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr %struct.omap_hwmod_rst_info, ptr %31, i32 %30
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !8
  br i1 %23, label %48, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr @soc_ops.5, align 4
  %36 = icmp eq ptr %35, null
  %37 = icmp eq i8 %29, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %45, %34
  %40 = phi i32 [ %46, %45 ], [ 0, %34 ]
  %41 = getelementptr %struct.omap_hwmod_rst_info, ptr %31, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @strcmp(ptr noundef %42, ptr noundef %33) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = add nuw nsw i32 %40, 1
  %47 = icmp eq i32 %46, %28
  br i1 %47, label %48, label %39

48:                                               ; preds = %45, %34, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %58

49:                                               ; preds = %39
  %50 = getelementptr %struct.omap_hwmod_rst_info, ptr %31, i32 %40, i32 1
  %51 = load i8, ptr %50, align 4
  store i8 %51, ptr %24, align 4
  %52 = getelementptr %struct.omap_hwmod_rst_info, ptr %31, i32 %40, i32 2
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr %25, align 1
  %54 = call i32 %35(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %55 = icmp sgt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i8, ptr %17, align 2
  br label %58

58:                                               ; preds = %49, %48
  %59 = phi i8 [ %27, %48 ], [ %57, %49 ]
  %60 = phi i32 [ 0, %48 ], [ %56, %49 ]
  %61 = add nuw nsw i32 %30, 1
  %62 = zext i8 %59 to i32
  %63 = icmp ult i32 %61, %62
  %64 = icmp eq i32 %60, 0
  %65 = and i1 %64, %63
  br i1 %65, label %26, label %66

66:                                               ; preds = %58
  br i1 %64, label %67, label %111

67:                                               ; preds = %66
  %68 = load ptr, ptr %3, align 4
  br label %69

69:                                               ; preds = %67, %16
  %70 = phi ptr [ %68, %67 ], [ %4, %16 ]
  %71 = getelementptr inbounds %struct.clockdomain, ptr %70, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr inbounds %struct.clockdomain, ptr %70, i32 0, i32 7
  %74 = load i16, ptr %73, align 2
  %75 = load i16, ptr %7, align 4
  %76 = call i32 @omap_cm_module_disable(i8 noundef zeroext %72, i16 noundef zeroext %74, i16 noundef zeroext %75) #14
  %77 = icmp eq ptr %0, null
  br i1 %77, label %108, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %80 = load i8, ptr %79, align 2
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load ptr, ptr %3, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 64
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load i8, ptr %12, align 2
  %93 = and i8 %92, 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i16, ptr %7, align 4
  %97 = icmp ne i16 %96, 0
  %98 = and i8 %92, 2
  %99 = icmp ne i8 %98, 0
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.clockdomain, ptr %84, i32 0, i32 6
  %103 = load i8, ptr %102, align 1
  %104 = getelementptr inbounds %struct.clockdomain, ptr %84, i32 0, i32 7
  %105 = load i16, ptr %104, align 2
  %106 = call i32 @omap_cm_wait_module_idle(i8 noundef zeroext %103, i16 noundef signext %105, i16 noundef zeroext %96, i8 noundef zeroext 0) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101, %69
  %109 = load ptr, ptr %0, align 4
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %109) #15
  br label %111

111:                                              ; preds = %108, %101, %95, %91, %86, %83, %78, %66, %11, %6, %1
  %112 = phi i32 [ -22, %11 ], [ -22, %6 ], [ -22, %1 ], [ 0, %66 ], [ 0, %108 ], [ 0, %101 ], [ 0, %83 ], [ 0, %78 ], [ 0, %86 ], [ 0, %91 ], [ 0, %95 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_wait_target_ready(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 23
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 7
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %32 = load i16, ptr %31, align 4
  %33 = icmp ne i16 %32, 0
  %34 = and i8 %27, 2
  %35 = icmp ne i8 %34, 0
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.clockdomain, ptr %10, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.clockdomain, ptr %10, i32 0, i32 7
  %41 = load i16, ptr %40, align 2
  %42 = tail call i32 @omap_cm_wait_module_ready(i8 noundef zeroext %39, i16 noundef signext %41, i16 noundef zeroext %32, i8 noundef zeroext 0) #14
  br label %43

43:                                               ; preds = %37, %30, %25, %21, %17, %12, %8, %3, %1
  %44 = phi i32 [ %42, %37 ], [ -22, %1 ], [ 0, %8 ], [ 0, %3 ], [ 0, %21 ], [ 0, %25 ], [ 0, %17 ], [ 0, %12 ], [ 0, %30 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_assert_hardreset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = tail call i32 @omap_prm_assert_hardreset(i8 noundef zeroext %8, i8 noundef zeroext %12, i16 noundef signext %14, i16 noundef zeroext %16) #14
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ %17, %6 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_deassert_hardreset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %1, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %11, ptr noundef %12) #15
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi ptr [ %14, %10 ], [ %4, %6 ]
  %17 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.clockdomain, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.powerdomain, ptr %20, i32 0, i32 9
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.powerdomain, ptr %20, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = add i16 %26, 4
  %28 = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %18, i8 noundef zeroext %18, i8 noundef zeroext %22, i16 noundef signext %24, i16 noundef zeroext %26, i16 noundef zeroext %27) #14
  br label %29

29:                                               ; preds = %15, %2
  %30 = phi i32 [ %28, %15 ], [ -22, %2 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_is_hardreset_asserted(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = tail call i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %8, i8 noundef zeroext %12, i16 noundef signext %14, i16 noundef zeroext %16) #14
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ %17, %6 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_omap4_update_context_lost(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 7
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = tail call zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext %12, i16 noundef signext %14, i16 noundef zeroext %16) #14
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.clockdomain, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.powerdomain, ptr %24, i32 0, i32 9
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.powerdomain, ptr %24, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = load i16, ptr %15, align 2
  tail call void @prm_clear_context_loss_flags_old(i8 noundef zeroext %26, i16 noundef signext %28, i16 noundef zeroext %29) #14
  br label %30

30:                                               ; preds = %18, %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @_omap4_get_context_lost(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @_omap4_disable_direct_prcm(ptr noundef %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 7
  %5 = load i8, ptr %4, align 2
  %6 = or i8 %5, 4
  store i8 %6, ptr %4, align 2
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap4_xlate_clkctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.clockdomain, ptr %8, i32 0, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr %6, align 4
  %14 = tail call i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext %10, i16 noundef zeroext %12, i16 noundef zeroext %13) #14
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i32 [ %14, %5 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_am33xx_deassert_hardreset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod_rst_info, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 4, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = tail call i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %4, i8 noundef zeroext %6, i8 noundef zeroext %12, i16 noundef signext %14, i16 noundef zeroext %16, i16 noundef zeroext %18) #14
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_init_clkctrl_providers() unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ti_clkctrl_match_table, ptr noundef null) #14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %8, %0
  %4 = phi ptr [ %9, %8 ], [ %1, %0 ]
  %5 = tail call fastcc i32 @_setup_clkctrl_provider(ptr noundef nonnull %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @of_node_put(ptr noundef nonnull %4) #14
  br label %11

8:                                                ; preds = %3
  %9 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %4, ptr noundef nonnull @ti_clkctrl_match_table, ptr noundef null) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3

11:                                               ; preds = %8, %7, %0
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_hwmod_get_main_clk(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_dev_hwmod_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !8
  %8 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %19, %4
  %11 = phi i32 [ %20, %19 ], [ 0, %4 ]
  %12 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %11) #14
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = call i32 @strcmp(ptr noundef %15, ptr noundef %16) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14, %10
  %20 = add nuw nsw i32 %11, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %22, label %10

22:                                               ; preds = %19, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %23 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %26

25:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  store ptr %0, ptr %3, align 4
  store i32 %11, ptr %2, align 4
  br label %37

26:                                               ; preds = %33, %22
  %27 = phi ptr [ %34, %33 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %28 = call fastcc i32 @of_dev_hwmod_lookup(ptr noundef nonnull %27, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 4
  store ptr %31, ptr %3, align 4
  %32 = load i32, ptr %7, align 4
  store i32 %32, ptr %2, align 4
  call void @of_node_put(ptr noundef nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %37

33:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %34 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %27) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %26

36:                                               ; preds = %33, %22
  store ptr null, ptr %3, align 4
  store i32 0, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %30, %25
  %38 = phi i32 [ 0, %25 ], [ -19, %36 ], [ 0, %30 ]
  ret i32 %38
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_init_mpu_rt_base(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 section ".init.text" {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 25
  %8 = load i8, ptr %7, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 2
  %10 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 13
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %13, i32 -20
  %22 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 17
  store ptr %21, ptr %22, align 4
  %23 = and i8 %8, -2
  store i8 %23, ptr %7, align 2
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i8 [ %23, %20 ], [ %9, %11 ]
  %26 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.omap_hwmod_class, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %24
  %32 = and i8 %25, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load ptr, ptr %0, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %37) #15
  br label %63

39:                                               ; preds = %34
  %40 = call i32 @omap_hwmod_parse_module_range(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 4
  %44 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 1, %43
  %47 = add i32 %46, %45
  %48 = call ptr @ioremap(i32 noundef %43, i32 noundef %47) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %42, %39
  %51 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 19
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = add i32 %53, %1
  %55 = call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef %54) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 4
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %58, i32 noundef %1, ptr noundef nonnull %2) #15
  br label %63

60:                                               ; preds = %50, %42
  %61 = phi ptr [ %55, %50 ], [ %48, %42 ]
  %62 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  store ptr %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %57, %36, %31, %24, %3
  %64 = phi i32 [ 0, %60 ], [ -6, %57 ], [ -6, %36 ], [ -22, %3 ], [ 0, %24 ], [ -6, %31 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_init_clocks(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %165

6:                                                ; preds = %1
  %7 = load ptr, ptr @soc_ops.6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 %7(ptr noundef %0) #14
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  %13 = load ptr, ptr @soc_ops.10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %0) #14
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @clkctrl_providers, align 4
  %19 = icmp eq ptr %18, @clkctrl_providers
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %69, label %24

21:                                               ; preds = %44, %24
  %22 = load ptr, ptr %25, align 4
  %23 = icmp eq ptr %22, @clkctrl_providers
  br i1 %23, label %69, label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %22, %21 ], [ %18, %15 ]
  %26 = getelementptr i8, ptr %25, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %21

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %25, i32 -12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %25, i32 -8
  br label %33

33:                                               ; preds = %44, %29
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  %35 = getelementptr i32, ptr %31, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %16
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i32, ptr %39, i32 %34
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %36
  %43 = icmp ugt i32 %42, %16
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %33
  %45 = add nuw nsw i32 %34, 1
  %46 = icmp eq i32 %45, %27
  br i1 %46, label %21, label %33

47:                                               ; preds = %38
  %48 = getelementptr i8, ptr %25, i32 -12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #14
  %49 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %49, i8 0, i32 56, i1 false) #14, !annotation !8
  %50 = getelementptr i8, ptr %25, i32 -4
  %51 = load ptr, ptr %50, align 4
  store ptr %51, ptr %2, align 4
  %52 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  store i32 2, ptr %52, align 4
  %53 = load ptr, ptr %48, align 4
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %16, %54
  %56 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  store i32 0, ptr %57, align 4
  %58 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #14
  %59 = icmp eq ptr %58, null
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  %61 = or i1 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %47
  %63 = call ptr @__clk_get_name(ptr noundef nonnull %58) #14
  %64 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 5
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  store ptr %58, ptr %65, align 4
  %66 = load ptr, ptr @soc_ops.9, align 4
  %67 = call i32 %66(ptr noundef %0) #14
  %68 = load ptr, ptr %65, align 4
  br label %76

69:                                               ; preds = %47, %21, %15, %11
  %70 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73

73:                                               ; preds = %69
  %74 = call ptr @clk_get(ptr noundef null, ptr noundef nonnull %71) #14
  %75 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  store ptr %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %73, %62
  %77 = phi ptr [ %74, %73 ], [ %68, %62 ]
  %78 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load ptr, ptr %0, align 4
  %82 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %81, ptr noundef %83) #15
  br label %101

85:                                               ; preds = %76
  %86 = call i32 @clk_prepare(ptr noundef %77) #14
  %87 = icmp eq ptr %0, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load ptr, ptr %78, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = call ptr @__clk_get_hw(ptr noundef nonnull %93) #14
  %97 = call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %96) #14
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr %78, align 4
  %100 = call ptr @__clk_get_hw(ptr noundef %99) #14
  br label %101

101:                                              ; preds = %98, %95, %92, %88, %85, %80, %69
  %102 = phi i32 [ -22, %80 ], [ 0, %69 ], [ 0, %85 ], [ 0, %88 ], [ 0, %92 ], [ 0, %95 ], [ 0, %98 ]
  %103 = or i32 %102, %12
  %104 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %127, label %107

107:                                              ; preds = %123, %101
  %108 = phi ptr [ %125, %123 ], [ %105, %101 ]
  %109 = phi i32 [ %124, %123 ], [ 0, %101 ]
  %110 = getelementptr i8, ptr %108, i32 -8
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  %114 = call ptr @clk_get(ptr noundef null, ptr noundef nonnull %111) #14
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load ptr, ptr %0, align 4
  %118 = load ptr, ptr %110, align 4
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %117, ptr noundef %118) #15
  br label %123

120:                                              ; preds = %113
  %121 = getelementptr i8, ptr %108, i32 -4
  store ptr %114, ptr %121, align 4
  %122 = call i32 @clk_prepare(ptr noundef %114) #14
  br label %123

123:                                              ; preds = %120, %116, %107
  %124 = phi i32 [ -22, %116 ], [ %109, %120 ], [ %109, %107 ]
  %125 = load ptr, ptr %108, align 4
  %126 = icmp eq ptr %125, %104
  br i1 %126, label %127, label %107

127:                                              ; preds = %123, %101
  %128 = phi i32 [ 0, %101 ], [ %124, %123 ]
  %129 = or i32 %103, %128
  %130 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %157, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  %136 = zext i8 %131 to i32
  br label %137

137:                                              ; preds = %152, %133
  %138 = phi ptr [ %155, %152 ], [ %135, %133 ]
  %139 = phi i32 [ %153, %152 ], [ 0, %133 ]
  %140 = phi i32 [ %154, %152 ], [ %136, %133 ]
  %141 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %138, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = call ptr @clk_get(ptr noundef null, ptr noundef %142) #14
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load ptr, ptr %0, align 4
  %147 = load ptr, ptr %141, align 4
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %146, ptr noundef %147) #15
  br label %152

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %138, i32 0, i32 2
  store ptr %143, ptr %150, align 4
  %151 = call i32 @clk_prepare(ptr noundef %143) #14
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i32 [ -22, %145 ], [ %139, %149 ]
  %154 = add nsw i32 %140, -1
  %155 = getelementptr %struct.omap_hwmod_opt_clk, ptr %138, i32 1
  %156 = icmp sgt i32 %140, 1
  br i1 %156, label %137, label %157

157:                                              ; preds = %152, %127
  %158 = phi i32 [ 0, %127 ], [ %153, %152 ]
  %159 = or i32 %129, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i8 2, ptr %3, align 1
  br label %165

162:                                              ; preds = %157
  %163 = load ptr, ptr %0, align 4
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %163) #15
  br label %165

165:                                              ; preds = %162, %161, %1
  %166 = phi i32 [ 0, %1 ], [ %159, %162 ], [ 0, %161 ]
  ret i32 %166
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @parse_module_flags(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 section ".init.text" {
  %3 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef null) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 4
  store i32 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %5, %2
  %10 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 8
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 32768
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_enable_sysc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod_class, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %345, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = zext i8 %15 to i32
  br label %21

21:                                               ; preds = %29, %17
  %22 = phi ptr [ %31, %29 ], [ %19, %17 ]
  %23 = phi i32 [ %30, %29 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %22, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @clk_enable(ptr noundef nonnull %25) #14
  br label %29

29:                                               ; preds = %27, %21
  %30 = add nsw i32 %23, -1
  %31 = getelementptr %struct.omap_hwmod_opt_clk, ptr %22, i32 1
  %32 = icmp sgt i32 %23, 1
  br i1 %32, label %21, label %33

33:                                               ; preds = %29, %13, %8
  %34 = tail call fastcc i32 @_wait_softreset_complete(ptr noundef %0)
  %35 = load i32, ptr %9, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = zext i8 %40 to i32
  br label %46

46:                                               ; preds = %53, %42
  %47 = phi ptr [ %55, %53 ], [ %44, %42 ]
  %48 = phi i32 [ %54, %53 ], [ %45, %42 ]
  %49 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %47, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @clk_disable(ptr noundef nonnull %50) #14
  br label %53

53:                                               ; preds = %52, %46
  %54 = add nsw i32 %48, -1
  %55 = getelementptr %struct.omap_hwmod_opt_clk, ptr %47, i32 1
  %56 = icmp sgt i32 %48, 1
  br i1 %56, label %46, label %57

57:                                               ; preds = %53, %38, %33
  %58 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 12
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %2, align 4
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.omap_hwmod_class, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %62, i32 0, i32 3
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq ptr %0, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @__clk_get_hw(ptr noundef nonnull %72) #14
  %76 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %75) #14
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load ptr, ptr %71, align 4
  %79 = tail call ptr @__clk_get_hw(ptr noundef %78) #14
  %80 = getelementptr inbounds %struct.clk_hw_omap, ptr %79, i32 0, i32 10
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %77, %74, %70, %66, %57
  %83 = phi ptr [ %81, %77 ], [ null, %57 ], [ %68, %66 ], [ null, %74 ], [ null, %70 ]
  %84 = and i16 %64, 255
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %9, align 4
  %90 = and i32 %89, 4097
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = and i32 %85, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call fastcc void @_enable_wakeup(ptr noundef %0, ptr noundef nonnull %2)
  br label %96

96:                                               ; preds = %95, %92
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.omap_hwmod_class, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %99, i32 0, i32 6
  %101 = load i8, ptr %100, align 1
  %102 = and i8 %101, 8
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i8 4, i8 8
  br label %105

105:                                              ; preds = %96, %88
  %106 = phi i8 [ 2, %88 ], [ %104, %96 ]
  %107 = icmp eq ptr %83, null
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.clockdomain, ptr %83, i32 0, i32 3
  %110 = load i8, ptr %109, align 2
  %111 = and i8 %110, 32
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds %struct.omap_hwmod_class, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %116, i32 0, i32 6
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, 12
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i8 1, i8 %106
  br label %122

122:                                              ; preds = %113, %108, %105
  %123 = phi i8 [ %106, %108 ], [ %121, %113 ], [ %106, %105 ]
  %124 = load ptr, ptr %3, align 4
  %125 = getelementptr inbounds %struct.omap_hwmod_class, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %151, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %126, i32 0, i32 3
  %130 = load i16, ptr %129, align 4
  %131 = and i16 %130, 32
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %126, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %138) #14
  br label %151

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.sysc_regbits, ptr %135, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl i32 3, %142
  %144 = xor i32 %143, -1
  %145 = load i32, ptr %2, align 4
  %146 = and i32 %145, %144
  %147 = zext i8 %123 to i32
  %148 = tail call i32 @llvm.cttz.i32(i32 %147, i1 false) #14, !range !14
  %149 = shl i32 %148, %142
  %150 = or i32 %146, %149
  store i32 %150, ptr %2, align 4
  br label %151

151:                                              ; preds = %139, %137, %128, %122, %82
  %152 = and i32 %85, 64
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %200, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %9, align 4
  %156 = and i32 %155, 2048
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = and i32 %155, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = and i32 %85, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call fastcc void @_enable_wakeup(ptr noundef %0, ptr noundef nonnull %2)
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr %3, align 4
  %167 = getelementptr inbounds %struct.omap_hwmod_class, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %168, i32 0, i32 6
  %170 = load i8, ptr %169, align 1
  %171 = icmp sgt i8 %170, -1
  %172 = select i1 %171, i32 4, i32 8
  br label %173

173:                                              ; preds = %165, %158, %154
  %174 = phi i32 [ 1, %154 ], [ 2, %158 ], [ %172, %165 ]
  %175 = load ptr, ptr %3, align 4
  %176 = getelementptr inbounds %struct.omap_hwmod_class, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %200, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %177, i32 0, i32 3
  %181 = load i16, ptr %180, align 4
  %182 = and i16 %181, 64
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %177, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %189) #14
  br label %200

190:                                              ; preds = %184
  %191 = load i8, ptr %186, align 1
  %192 = zext i8 %191 to i32
  %193 = shl i32 3, %192
  %194 = xor i32 %193, -1
  %195 = load i32, ptr %2, align 4
  %196 = and i32 %195, %194
  %197 = tail call i32 @llvm.cttz.i32(i32 %174, i1 true) #14, !range !14
  %198 = shl i32 %197, %192
  %199 = or i32 %196, %198
  store i32 %199, ptr %2, align 4
  br label %200

200:                                              ; preds = %190, %188, %179, %173, %151
  %201 = load i32, ptr %9, align 4
  %202 = and i32 %201, 32
  %203 = icmp eq i32 %202, 0
  %204 = and i32 %85, 16
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %233, label %207

207:                                              ; preds = %200
  %208 = load ptr, ptr %3, align 4
  %209 = getelementptr inbounds %struct.omap_hwmod_class, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %233, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %210, i32 0, i32 3
  %214 = load i16, ptr %213, align 4
  %215 = and i16 %214, 16
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %210, i32 0, i32 4
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 410, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %222) #14
  br label %233

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.sysc_regbits, ptr %219, i32 0, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = shl i32 3, %226
  %228 = xor i32 %227, -1
  %229 = load i32, ptr %2, align 4
  %230 = and i32 %229, %228
  %231 = shl i32 2, %226
  %232 = or i32 %230, %231
  store i32 %232, ptr %2, align 4
  br label %233

233:                                              ; preds = %223, %221, %212, %207, %200
  %234 = load i32, ptr %2, align 4
  %235 = load ptr, ptr %3, align 4
  %236 = getelementptr inbounds %struct.omap_hwmod_class, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %240) #14
  br label %273

241:                                              ; preds = %233
  store i32 %234, ptr %58, align 4
  %242 = getelementptr inbounds %struct.omap_hwmod_class, ptr %235, i32 0, i32 5
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  tail call void %243(ptr noundef %0) #14
  %246 = load ptr, ptr %3, align 4
  br label %247

247:                                              ; preds = %245, %241
  %248 = phi ptr [ %246, %245 ], [ %235, %241 ]
  %249 = getelementptr inbounds %struct.omap_hwmod_class, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %250, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = load i32, ptr %9, align 4
  %254 = and i32 %253, 256
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %247
  %257 = trunc i32 %234 to i16
  %258 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %259 = load ptr, ptr %258, align 4
  %260 = and i32 %252, 65535
  %261 = getelementptr i8, ptr %259, i32 %260
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %261, i16 %257) #14, !srcloc !11
  br label %267

262:                                              ; preds = %247
  %263 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %264 = load ptr, ptr %263, align 4
  %265 = and i32 %252, 65535
  %266 = getelementptr i8, ptr %264, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %234) #14, !srcloc !12
  br label %267

267:                                              ; preds = %262, %256
  %268 = load ptr, ptr %3, align 4
  %269 = getelementptr inbounds %struct.omap_hwmod_class, ptr %268, i32 0, i32 4
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  tail call void %270(ptr noundef %0) #14
  br label %273

273:                                              ; preds = %272, %267, %239
  %274 = and i32 %85, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %345, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %9, align 4
  %278 = lshr i32 %277, 4
  %279 = and i32 %278, 1
  %280 = xor i32 %279, 1
  %281 = load ptr, ptr %3, align 4
  %282 = getelementptr inbounds %struct.omap_hwmod_class, ptr %281, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %309, label %285

285:                                              ; preds = %276
  %286 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %283, i32 0, i32 3
  %287 = load i16, ptr %286, align 4
  %288 = and i16 %287, 1
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %311, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %283, i32 0, i32 4
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %303, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.sysc_regbits, ptr %292, i32 0, i32 5
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = shl nuw i32 1, %297
  %299 = xor i32 %298, -1
  %300 = and i32 %234, %299
  %301 = shl i32 %280, %297
  %302 = or i32 %300, %301
  store i32 %302, ptr %2, align 4
  br label %311

303:                                              ; preds = %290
  %304 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %304) #14
  %305 = load ptr, ptr %3, align 4
  %306 = getelementptr inbounds %struct.omap_hwmod_class, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %303, %276
  %310 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 298, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %310) #14
  br label %345

311:                                              ; preds = %303, %294, %285
  %312 = phi i32 [ %234, %303 ], [ %302, %294 ], [ %234, %285 ]
  %313 = phi ptr [ %305, %303 ], [ %281, %294 ], [ %281, %285 ]
  store i32 %312, ptr %58, align 4
  %314 = getelementptr inbounds %struct.omap_hwmod_class, ptr %313, i32 0, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %311
  tail call void %315(ptr noundef %0) #14
  %318 = load ptr, ptr %3, align 4
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi ptr [ %318, %317 ], [ %313, %311 ]
  %321 = getelementptr inbounds %struct.omap_hwmod_class, ptr %320, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %322, i32 0, i32 1
  %324 = load i32, ptr %323, align 4
  %325 = load i32, ptr %9, align 4
  %326 = and i32 %325, 256
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %319
  %329 = trunc i32 %312 to i16
  %330 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %331 = load ptr, ptr %330, align 4
  %332 = and i32 %324, 65535
  %333 = getelementptr i8, ptr %331, i32 %332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %333, i16 %329) #14, !srcloc !11
  br label %339

334:                                              ; preds = %319
  %335 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  %336 = load ptr, ptr %335, align 4
  %337 = and i32 %324, 65535
  %338 = getelementptr i8, ptr %336, i32 %337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %312) #14, !srcloc !12
  br label %339

339:                                              ; preds = %334, %328
  %340 = load ptr, ptr %3, align 4
  %341 = getelementptr inbounds %struct.omap_hwmod_class, ptr %340, i32 0, i32 4
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  tail call void %342(ptr noundef %0) #14
  br label %345

345:                                              ; preds = %344, %339, %309, %273, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_wait_softreset_complete(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_hwmod_class, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 128
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %16 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  br label %17

17:                                               ; preds = %39, %14
  %18 = phi i32 [ %12, %14 ], [ %40, %39 ]
  %19 = phi i32 [ 0, %14 ], [ %37, %39 ]
  %20 = load i32, ptr %15, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %16, align 4
  %24 = and i32 %18, 65535
  %25 = getelementptr i8, ptr %23, i32 %24
  br i1 %22, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #14, !srcloc !9
  %28 = zext i16 %27 to i32
  br label %31

29:                                               ; preds = %17
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #14, !srcloc !10
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #14
  %37 = add nuw nsw i32 %19, 1
  %38 = icmp eq i32 %37, 10000
  br i1 %38, label %76, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %11, align 4
  br label %17

41:                                               ; preds = %10, %1
  %42 = and i16 %7, 512
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sysc_regbits, ptr %46, i32 0, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 1, %49
  %51 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %5, i32 0, i32 1
  %52 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %53 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 13
  br label %54

54:                                               ; preds = %72, %44
  %55 = phi i32 [ 0, %44 ], [ %74, %72 ]
  %56 = load i32, ptr %51, align 4
  %57 = load i32, ptr %52, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %53, align 4
  %61 = and i32 %56, 65535
  %62 = getelementptr i8, ptr %60, i32 %61
  br i1 %59, label %66, label %63

63:                                               ; preds = %54
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #14, !srcloc !9
  %65 = zext i16 %64 to i32
  br label %68

66:                                               ; preds = %54
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #14, !srcloc !10
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = and i32 %69, %50
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #14
  %74 = add nuw nsw i32 %55, 1
  %75 = icmp eq i32 %74, 10000
  br i1 %75, label %76, label %54

76:                                               ; preds = %72, %68, %41, %35, %31
  %77 = phi i32 [ 0, %41 ], [ 10000, %72 ], [ %55, %68 ], [ %19, %31 ], [ 10000, %35 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_enable_wakeup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_hwmod_class, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %6, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, -120
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %91, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %6, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %40

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %6, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 609, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %27) #14
  br label %91

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sysc_regbits, ptr %24, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = load i32, ptr %1, align 4
  %34 = or i32 %32, %33
  store i32 %34, ptr %1, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.omap_hwmod_class, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %37, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  br label %40

40:                                               ; preds = %28, %18
  %41 = phi i8 [ %15, %18 ], [ %39, %28 ]
  %42 = phi ptr [ %6, %18 ], [ %37, %28 ]
  %43 = and i8 %41, 8
  %44 = icmp eq i8 %43, 0
  %45 = icmp eq ptr %42, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %42, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %57) #14
  br label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.sysc_regbits, ptr %54, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 3, %61
  %63 = load i32, ptr %1, align 4
  %64 = or i32 %62, %63
  store i32 %64, ptr %1, align 4
  br label %65

65:                                               ; preds = %58, %56, %47, %40
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.omap_hwmod_class, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %68, i32 0, i32 6
  %70 = load i8, ptr %69, align 1
  %71 = icmp sgt i8 %70, -1
  %72 = icmp eq ptr %68, null
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %91, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %68, i32 0, i32 3
  %76 = load i16, ptr %75, align 4
  %77 = and i16 %76, 64
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.omap_hwmod_class_sysconfig, ptr %68, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %84) #14
  br label %91

85:                                               ; preds = %79
  %86 = load i8, ptr %81, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 3, %87
  %89 = load i32, ptr %1, align 4
  %90 = or i32 %88, %89
  store i32 %90, ptr %1, align 4
  br label %91

91:                                               ; preds = %85, %83, %74, %65, %26, %13, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_dss_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hdq1w_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_i2c_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_wd_timer_reset(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_hwmod_setup_earlycon_flags() unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.57, ptr noundef null) #14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.58, ptr noundef null) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %4, ptr noundef null) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @of_get_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.20, ptr noundef null) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %14, %16 ], [ @omap_hwmod_list, %9 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @omap_hwmod_list
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -80
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef nonnull %10, ptr noundef %18) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %14, i32 -80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21, %12, %9
  %25 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.20, ptr noundef null) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %33, %24
  %30 = phi ptr [ %31, %33 ], [ @omap_hwmod_list, %24 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, @omap_hwmod_list
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 -80
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef nonnull %27, ptr noundef %35) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %31, i32 -80
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %21
  %42 = phi ptr [ %31, %38 ], [ %14, %21 ]
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 12
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %41, %38, %29, %24, %6, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_hwmod_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_enable_clocks(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = zext i8 %8 to i32
  br label %14

14:                                               ; preds = %22, %10
  %15 = phi ptr [ %24, %22 ], [ %12, %10 ]
  %16 = phi i32 [ %23, %22 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %15, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @clk_enable(ptr noundef nonnull %18) #14
  br label %22

22:                                               ; preds = %20, %14
  %23 = add nsw i32 %16, -1
  %24 = getelementptr %struct.omap_hwmod_opt_clk, ptr %15, i32 1
  %25 = icmp sgt i32 %16, 1
  br i1 %25, label %14, label %26

26:                                               ; preds = %22, %6, %1
  %27 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @clk_enable(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %53, label %36

36:                                               ; preds = %50, %32
  %37 = phi ptr [ %51, %50 ], [ %34, %32 ]
  %38 = getelementptr i8, ptr %37, i32 -4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %37, i32 14
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @omap2_clk_deny_idle(ptr noundef nonnull %39) #14
  %48 = load ptr, ptr %38, align 4
  %49 = tail call i32 @clk_enable(ptr noundef %48) #14
  br label %50

50:                                               ; preds = %46, %41, %36
  %51 = load ptr, ptr %37, align 4
  %52 = icmp eq ptr %51, %33
  br i1 %52, label %53, label %36

53:                                               ; preds = %50, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_disable_clocks(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %26, label %10

10:                                               ; preds = %23, %6
  %11 = phi ptr [ %24, %23 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 14
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void @clk_disable(ptr noundef nonnull %13) #14
  %21 = load ptr, ptr %12, align 4
  %22 = tail call i32 @omap2_clk_allow_idle(ptr noundef %21) #14
  br label %23

23:                                               ; preds = %20, %15, %10
  %24 = load ptr, ptr %11, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %10

26:                                               ; preds = %23, %6
  %27 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 18
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16384
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 22
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = zext i8 %33 to i32
  br label %39

39:                                               ; preds = %46, %35
  %40 = phi ptr [ %48, %46 ], [ %37, %35 ]
  %41 = phi i32 [ %47, %46 ], [ %38, %35 ]
  %42 = getelementptr inbounds %struct.omap_hwmod_opt_clk, ptr %40, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @clk_disable(ptr noundef nonnull %43) #14
  br label %46

46:                                               ; preds = %45, %39
  %47 = add nsw i32 %41, -1
  %48 = getelementptr %struct.omap_hwmod_opt_clk, ptr %40, i32 1
  %49 = icmp sgt i32 %41, 1
  br i1 %49, label %39, label %50

50:                                               ; preds = %46, %31, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_hwmod_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_sleepdep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_deny_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_allow_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_del_initiator_dep(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__clk_get_hw(ptr noundef nonnull %10) #14
  %14 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %13) #14
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 4
  %17 = tail call ptr @__clk_get_hw(ptr noundef %16) #14
  %18 = getelementptr inbounds %struct.clk_hw_omap, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %12, %8, %4, %2
  %21 = phi ptr [ %19, %15 ], [ null, %2 ], [ %6, %4 ], [ null, %12 ], [ null, %8 ]
  %22 = icmp eq ptr %1, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.omap_hwmod, ptr %1, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.omap_hwmod, ptr %1, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @__clk_get_hw(ptr noundef nonnull %29) #14
  %33 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %32) #14
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load ptr, ptr %28, align 4
  %36 = tail call ptr @__clk_get_hw(ptr noundef %35) #14
  %37 = getelementptr inbounds %struct.clk_hw_omap, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %34, %23
  %40 = phi ptr [ %38, %34 ], [ %25, %23 ]
  %41 = icmp ne ptr %21, null
  %42 = icmp ne ptr %40, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.clockdomain, ptr %21, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = tail call i32 @clkdm_del_sleepdep(ptr noundef nonnull %21, ptr noundef nonnull %40) #14
  br label %51

51:                                               ; preds = %49, %44, %39, %31, %27, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_del_sleepdep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_module_enable(i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_module_disable(i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_idle(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prm_clear_context_loss_flags_old(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @_setup_clkctrl_provider(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call ptr @memblock_alloc_try_nid(i32 noundef 24, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clkctrl_provider, ptr %3, i32 0, i32 3
  store ptr %0, ptr %6, align 4
  %7 = tail call i32 @of_property_count_elems_of_size(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef 4) #14
  %8 = sdiv i32 %7, 2
  store i32 %8, ptr %3, align 4
  %9 = shl i32 %8, 2
  %10 = tail call ptr @memblock_alloc_try_nid(i32 noundef %9, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %11 = getelementptr inbounds %struct.clkctrl_provider, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %3, align 4
  %15 = shl i32 %14, 2
  %16 = tail call ptr @memblock_alloc_try_nid(i32 noundef %15, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  %17 = getelementptr inbounds %struct.clkctrl_provider, ptr %3, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %33, %22 ], [ 0, %19 ]
  %24 = call ptr @__of_get_address(ptr noundef %0, i32 noundef %23, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #14
  %25 = call i64 @of_translate_address(ptr noundef %0, ptr noundef %24) #14
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i32, ptr %27, i32 %23
  store i32 %26, ptr %28, align 4
  %29 = load i64, ptr %2, align 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i32, ptr %31, i32 %23
  store i32 %30, ptr %32, align 4
  %33 = add nuw nsw i32 %23, 1
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %22, label %36

36:                                               ; preds = %22, %19
  %37 = getelementptr inbounds %struct.clkctrl_provider, ptr %3, i32 0, i32 4
  %38 = load ptr, ptr @clkctrl_providers, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store ptr %38, ptr %37, align 4
  %40 = getelementptr inbounds %struct.clkctrl_provider, ptr %3, i32 0, i32 4, i32 1
  store ptr @clkctrl_providers, ptr %40, align 4
  store volatile ptr %37, ptr @clkctrl_providers, align 4
  br label %41

41:                                               ; preds = %36, %13, %5, %1
  %42 = phi i32 [ 0, %36 ], [ -12, %1 ], [ -12, %5 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i64 1059004}
!10 = !{i64 1059842}
!11 = !{i64 1058804}
!12 = !{i64 1059424}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i32 0, i32 33}
