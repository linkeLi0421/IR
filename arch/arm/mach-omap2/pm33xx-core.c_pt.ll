; ModuleID = '/llk/IR/arch/arm/mach-omap2/pm33xx-core.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm33xx-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_ops = type { ptr, ptr }
%struct.of_cpuidle_method = type { ptr, ptr }
%struct.am33xx_pm_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.am33xx_pm_sram_addr = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.amx3_idle_state = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [7 x i8] c"pm33xx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ti,am3352\00", align 1
@amx3_cpuidle_ops = internal global %struct.cpuidle_ops { ptr @amx3_idle_enter, ptr @amx3_idle_init }, section ".init.data", align 4
@__cpuidle_method_of_table_pm33xx_idle = internal constant %struct.of_cpuidle_method { ptr @.str.1, ptr @amx3_cpuidle_ops }, section "__cpuidle_method_of_table", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ti,am4372\00", align 1
@__cpuidle_method_of_table_pm43xx_idle = internal constant %struct.of_cpuidle_method { ptr @.str.2, ptr @amx3_cpuidle_ops }, section "__cpuidle_method_of_table", align 4
@am33xx_ops = internal global %struct.am33xx_pm_platform_data { ptr @am33xx_suspend_init, ptr @amx3_suspend_deinit, ptr @am33xx_suspend, ptr @am33xx_cpu_suspend, ptr @amx3_begin_suspend, ptr @amx3_finish_suspend, ptr @amx3_get_sram_addrs, ptr @am33xx_save_context, ptr @am33xx_restore_context, ptr @am33xx_check_off_mode_enable }, align 4
@am43xx_ops = internal global %struct.am33xx_pm_platform_data { ptr @am43xx_suspend_init, ptr @amx3_suspend_deinit, ptr @am43xx_suspend, ptr @am43xx_cpu_suspend, ptr @amx3_begin_suspend, ptr @amx3_finish_suspend, ptr @amx3_get_sram_addrs, ptr @am43xx_save_context, ptr @am43xx_restore_context, ptr @am43xx_check_off_mode_enable }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"gfx_l4ls_gfx_clkdm\00", align 1
@gfx_l4ls_clkdm = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"\013PM: Cannot lookup gfx_l4ls_clkdm clockdomains\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@gfx_pwrdm = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@per_pwrdm = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_pwrdm = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1
@cefuse_pwrdm = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"\013PM: Failed to get cefuse_pwrdm\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\016PM: Leaving EFUSE power domain active\0A\00", align 1
@idle_fn = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"\013PM: GFX domain did not transition: %x\0A\00", align 1
@am33xx_pm_sram = external dso_local global %struct.am33xx_pm_sram_addr, align 4
@am43xx_pm_sram = external dso_local global %struct.am33xx_pm_sram_addr, align 4
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [81 x i8] c"\014WARNING: This platform does not support off-mode, entering DeepSleep suspend.\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"\013PM: Could not ioremap SCU\0A\00", align 1
@scu_base = internal unnamed_addr global ptr null, align 4
@optee_available = external dso_local local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ti,am437x-gp-evm\00", align 1
@amx3_blocked_pm_ops = internal constant %struct.platform_suspend_ops { ptr @amx3_pm_valid, ptr @amx3_suspend_block, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [73 x i8] c"\014PM not initialized for pm33xx, wkup_m3_ipc, or am335x-pm-firmware.elf\0A\00", align 1
@idle_states = internal unnamed_addr global ptr null, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"cpu-idle-states\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\014%s: cpuidle states reached max possible\0A\00", align 1
@__func__.amx3_idle_init = private unnamed_addr constant [15 x i8] c"amx3_idle_init\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ti,idle-wkup-m3\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpuidle_method_of_table_pm33xx_idle, ptr @__cpuidle_method_of_table_pm43xx_idle], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @amx3_common_pm_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  %2 = tail call i32 @omap_rev() #12
  %3 = and i32 %2, -16777216
  %4 = icmp eq i32 %3, 855638016
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = tail call i32 @omap_rev() #12
  %7 = and i32 %6, -1048576
  %8 = icmp eq i32 %7, 1131413504
  %9 = select i1 %8, ptr @am43xx_ops, ptr null
  br label %10

10:                                               ; preds = %5, %0
  %11 = phi ptr [ @am33xx_ops, %0 ], [ %9, %5 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i32 56, i1 false)
  %12 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  store ptr @.str, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 7
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 8
  store i32 40, ptr %14, align 8
  %15 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %15, align 8
  %16 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #12
  call void @suspend_set_ops(ptr noundef nonnull @amx3_blocked_pm_ops) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_suspend_init(ptr noundef %0) #4 {
  %2 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.3) #12
  store ptr %2, ptr @gfx_l4ls_clkdm, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %8

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @amx3_common_init(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -19, %4 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @amx3_suspend_deinit() #5 {
  store ptr null, ptr @idle_fn, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_suspend(i32 noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = load ptr, ptr @gfx_pwrdm, align 4
  %5 = tail call i32 @omap_set_pwrdm_state(ptr noundef %4, i8 noundef zeroext 0) #12
  %6 = tail call i32 @cpu_suspend(i32 noundef %2, ptr noundef %1) #12
  %7 = load ptr, ptr @gfx_pwrdm, align 4
  %8 = tail call i32 @pwrdm_read_pwrst(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %8) #13
  br label %12

12:                                               ; preds = %10, %3
  %13 = load ptr, ptr @gfx_l4ls_clkdm, align 4
  %14 = tail call i32 @clkdm_wakeup(ptr noundef %13) #12
  %15 = load ptr, ptr @gfx_l4ls_clkdm, align 4
  %16 = tail call i32 @clkdm_sleep(ptr noundef %15) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_cpu_suspend(ptr noundef %0, i32 noundef %1) #4 {
  %3 = tail call i32 @omap_irq_pending() #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @cpu_suspend(i32 noundef %1, ptr noundef %0) #12
  br label %12

12:                                               ; preds = %10, %5, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amx3_begin_suspend() #4 {
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @amx3_finish_suspend() #4 {
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @amx3_get_sram_addrs() #4 {
  %1 = tail call i32 @omap_rev() #12
  %2 = and i32 %1, -16777216
  %3 = icmp eq i32 %2, 855638016
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #12
  %6 = and i32 %5, -1048576
  %7 = icmp eq i32 %6, 1131413504
  %8 = select i1 %7, ptr @am43xx_pm_sram, ptr null
  br label %9

9:                                                ; preds = %4, %0
  %10 = phi ptr [ @am33xx_pm_sram, %0 ], [ %8, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_save_context() #4 {
  tail call void @omap_intc_save_context() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_restore_context() #4 {
  tail call void @omap_intc_restore_context() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_check_off_mode_enable() #4 {
  %1 = load i32, ptr @enable_off_mode, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @amx3_common_init(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.5) #12
  store ptr %2, ptr @gfx_pwrdm, align 4
  %3 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.6) #12
  store ptr %3, ptr @per_pwrdm, align 4
  %4 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.7) #12
  store ptr %4, ptr @mpu_pwrdm, align 4
  %5 = load ptr, ptr @gfx_pwrdm, align 4
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @per_pwrdm, align 4
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  %10 = icmp ne ptr %4, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #12
  %14 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.8) #12
  store ptr %14, ptr @cefuse_pwrdm, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %26

18:                                               ; preds = %12
  %19 = tail call i32 @omap_type() #12
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @cefuse_pwrdm, align 4
  %25 = tail call i32 @omap_set_pwrdm_state(ptr noundef %24, i8 noundef zeroext 0) #12
  br label %26

26:                                               ; preds = %23, %21, %16
  store ptr %0, ptr @idle_fn, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = phi i32 [ 0, %26 ], [ -19, %1 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_sleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_save_context() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_restore_context() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am43xx_suspend_init(ptr noundef %0) #4 {
  %2 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #14, !srcloc !8
  %3 = tail call ptr @ioremap(i32 noundef %2, i32 noundef 256) #12
  store ptr %3, ptr @scu_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %9

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @amx3_common_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ -12, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am43xx_suspend(i32 noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = tail call i32 @omap_type() #12
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr @optee_available, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @omap_smccc_smc(i32 noundef 113, i32 noundef 0) #12
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 @omap_secure_dispatcher(i32 noundef 113, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %12

12:                                               ; preds = %10, %9, %3
  %13 = load ptr, ptr @gfx_pwrdm, align 4
  %14 = tail call i32 @omap_set_pwrdm_state(ptr noundef %13, i8 noundef zeroext 0) #12
  %15 = load ptr, ptr @scu_base, align 4
  %16 = tail call i32 @scu_power_mode(ptr noundef %15, i32 noundef 3) #12
  %17 = tail call i32 @cpu_suspend(i32 noundef %2, ptr noundef %1) #12
  %18 = load ptr, ptr @scu_base, align 4
  %19 = tail call i32 @scu_power_mode(ptr noundef %18, i32 noundef 0) #12
  %20 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.14) #12
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @enable_off_mode, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  %25 = xor i1 %23, true
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %12
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %33

29:                                               ; preds = %12
  %30 = icmp eq i32 %22, 0
  %31 = xor i1 %24, true
  %32 = select i1 %31, i1 true, i1 %30
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %27
  %34 = load ptr, ptr @gfx_pwrdm, align 4
  %35 = tail call i32 @pwrdm_read_pwrst(ptr noundef %34) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %35) #13
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = tail call i32 @omap_type() #12
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @omap_secure_dispatcher(i32 noundef 114, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %44

44:                                               ; preds = %42, %39
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am43xx_cpu_suspend(ptr noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @scu_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @scu_power_mode(ptr noundef nonnull %3, i32 noundef 2) #12
  %7 = tail call i32 @cpu_suspend(i32 noundef %1, ptr noundef %0) #12
  %8 = load ptr, ptr @scu_base, align 4
  %9 = tail call i32 @scu_power_mode(ptr noundef %8, i32 noundef 0) #12
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @am43xx_save_context() #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am43xx_restore_context() #4 {
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -102814188 to ptr), i32 0) #12, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am43xx_check_off_mode_enable() #4 {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.14) #12
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @enable_off_mode, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = xor i1 %4, true
  %7 = select i1 %5, i1 true, i1 %6
  %8 = select i1 %5, i32 %3, i32 0
  br i1 %7, label %11, label %9

9:                                                ; preds = %0
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %11

11:                                               ; preds = %9, %0
  %12 = phi i32 [ %8, %0 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smccc_smc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @amx3_pm_valid(i32 noundef %0) #8 {
  %2 = icmp eq i32 %0, 2
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amx3_suspend_block(i32 noundef %0) #4 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amx3_idle_enter(i32 noundef %0) #4 {
  %2 = load ptr, ptr @idle_states, align 4
  %3 = getelementptr %struct.amx3_idle_state, ptr %2, i32 %0
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @idle_fn, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = tail call i32 %6(i32 noundef %9) #12
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = phi i32 [ -22, %1 ], [ 0, %8 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @amx3_idle_init(ptr noundef %0, i32 noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca [10 x %struct.amx3_idle_state], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #12, !annotation !11
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %34, label %10

10:                                               ; preds = %26, %2
  %11 = phi ptr [ %31, %26 ], [ %7, %2 ]
  %12 = phi i32 [ %27, %26 ], [ 1, %2 ]
  %13 = phi i32 [ %28, %26 ], [ 0, %2 ]
  %14 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %11) #12
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = icmp eq i32 %13, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.amx3_idle_init) #13
  br label %34

19:                                               ; preds = %15
  %20 = getelementptr [10 x %struct.amx3_idle_state], ptr %4, i32 0, i32 %12
  store i32 0, ptr %20, align 4
  %21 = call ptr @of_find_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.18, ptr noundef null) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 9, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = add i32 %12, 1
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i32 [ %25, %24 ], [ %12, %10 ]
  %28 = add i32 %13, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #12, !annotation !11
  %29 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, i32 noundef %28, ptr noundef nonnull %3) #12
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  %32 = icmp eq ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %10

34:                                               ; preds = %26, %17, %2
  %35 = phi i32 [ %12, %17 ], [ 1, %2 ], [ %27, %26 ]
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 4) #12
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %38, label %39, !prof !12

38:                                               ; preds = %34
  store ptr null, ptr @idle_states, align 4
  br label %50

39:                                               ; preds = %34
  %40 = extractvalue { i32, i1 } %36, 0
  %41 = call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #15
  store ptr %41, ptr @idle_states, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = icmp ugt i32 %35, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = getelementptr i8, ptr %41, i32 4
  %47 = getelementptr inbounds i8, ptr %4, i32 4
  %48 = shl nuw i32 %35, 2
  %49 = add i32 %48, -4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %46, ptr align 4 %47, i32 %49, i1 false)
  br label %50

50:                                               ; preds = %45, %43, %39, %38
  %51 = phi i32 [ -12, %39 ], [ -12, %38 ], [ 0, %43 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 5891522}
!9 = !{i8 0, i8 2}
!10 = !{i64 4198008}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
