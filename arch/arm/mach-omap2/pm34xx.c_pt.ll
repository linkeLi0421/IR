; ModuleID = '/llk/IR/arch/arm/mach-omap2/pm34xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm34xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.power_state = type { ptr, i32, i32, %struct.list_head }

@mpu_pwrdm = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013Invalid mpu state in sram_idle\0A\00", align 1
@neon_pwrdm = internal unnamed_addr global ptr null, align 4
@per_pwrdm = internal unnamed_addr global ptr null, align 4
@core_pwrdm = internal unnamed_addr global ptr null, align 4
@omap3_arm_context = external dso_local local_unnamed_addr global [128 x i32], align 4
@pwrst_list = internal global %struct.list_head { ptr @pwrst_list, ptr @pwrst_list }, align 4
@pm34xx_errata = dso_local local_unnamed_addr global i16 0, align 2
@.str.1 = private unnamed_addr constant [44 x i8] c"\014%s: Core OFF disabled due to errata i583\0A\00", align 1
@__func__.omap3_pm_off_mode_enable = private unnamed_addr constant [25 x i8] c"omap3_pm_off_mode_enable\00", align 1
@omap3_do_wfi_sz = external dso_local local_unnamed_addr global i32, align 4
@omap3_do_wfi_sram = dso_local local_unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"\014PM: no software I/O chain control; some wakeups may be lost\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wkup\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pm_wkup\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013pm: Failed to request pm_wkup irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pm_io\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013pm: Failed to request pm_io irq\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\013Failed to setup powerdomains\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\013Failed to get mpu_pwrdm\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"neon_pwrdm\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"neon_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"per_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"wkup_clkdm\00", align 1
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@omap3_secure_ram_storage = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [68 x i8] c"\013Memory allocation failed when allocating for secure sram context\0A\00", align 1
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"ti,twl4030-power-idle\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"ti,twl4030-power-idle-osc-off\00", align 1
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [49 x i8] c"\016Powerdomain (%s) didn't enter target state %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"\013Could not enter target state in pm_suspend\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"\016Successfully put all powerdomains to target state\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.25 = private unnamed_addr constant [35 x i8] c"\013save_secure_sram() returns %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_sram_idle() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mpu_pwrdm, align 4
  %2 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %1) #8
  switch i32 %2, label %4 [
    i32 3, label %6
    i32 1, label %6
    i32 0, label %3
  ]

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %90

6:                                                ; preds = %3, %0, %0
  %7 = phi i1 [ false, %3 ], [ true, %0 ], [ true, %0 ]
  %8 = phi i1 [ true, %3 ], [ false, %0 ], [ false, %0 ]
  %9 = phi i32 [ 3, %3 ], [ 0, %0 ], [ 0, %0 ]
  %10 = load ptr, ptr @neon_pwrdm, align 4
  %11 = tail call i32 @pwrdm_read_pwrst(ptr noundef %10) #8
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr @neon_pwrdm, align 4
  %15 = trunc i32 %2 to i8
  %16 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %14, i8 noundef zeroext %15) #8
  br label %17

17:                                               ; preds = %13, %6
  %18 = load ptr, ptr @per_pwrdm, align 4
  %19 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %18) #8
  %20 = load ptr, ptr @core_pwrdm, align 4
  %21 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %20) #8
  %22 = tail call i32 @pwrdm_pre_transition(ptr noundef null) #8
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = tail call i32 @cpu_cluster_pm_enter() #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %24, %17
  %28 = icmp slt i32 %21, 3
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i32 @omap3_ctrl_save_padconf() #8
  %32 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1528) #8
  tail call void @omap_ctrl_writel(i32 noundef %32, i16 noundef zeroext 2208) #8
  tail call void @omap_intc_save_context() #8
  tail call void @omap3_control_save_context() #8
  tail call void @omap3_cm_save_context() #8
  br label %33

33:                                               ; preds = %30, %27
  tail call void @omap3_vc_set_pmic_signaling(i32 noundef %21) #8
  tail call void @omap3_intc_prepare_idle() #8
  %34 = tail call i32 @omap_rev() #8
  %35 = and i32 %34, -65536
  %36 = icmp eq i32 %35, 875560960
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = tail call i32 @omap_rev() #8
  %39 = icmp ugt i32 %38, 875561779
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = tail call i32 @omap_type() #8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @omap_type() #8
  %45 = icmp eq i32 %44, 2
  %46 = select i1 %45, i1 %29, i1 false
  br i1 %46, label %48, label %52

47:                                               ; preds = %40
  br i1 %29, label %48, label %52

48:                                               ; preds = %47, %43
  %49 = load ptr, ptr @omap2_sdrc_base, align 4
  %50 = getelementptr i8, ptr %49, i32 112
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !8
  br label %52

52:                                               ; preds = %48, %47, %43, %37, %33
  %53 = phi i32 [ %51, %48 ], [ 0, %47 ], [ 0, %43 ], [ 0, %37 ], [ 0, %33 ]
  br i1 %7, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #10, !srcloc !9
  store i32 1, ptr @omap3_arm_context, align 4
  store i32 %55, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 1), align 4
  %56 = tail call i32 asm "mrc p15, 1, $0, c9, c0, 2", "=r"() #10, !srcloc !10
  store i32 1, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 2), align 4
  store i32 %56, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 3), align 4
  br label %57

57:                                               ; preds = %54, %52
  br i1 %8, label %58, label %60

58:                                               ; preds = %57
  %59 = tail call i32 @cpu_suspend(i32 noundef 3, ptr noundef nonnull @omap34xx_do_sram_idle) #8
  br label %61

60:                                               ; preds = %57
  tail call void @omap34xx_cpu_suspend(i32 noundef %9) #8
  br label %61

61:                                               ; preds = %60, %58
  %62 = tail call i32 @omap_rev() #8
  %63 = and i32 %62, -65536
  %64 = icmp eq i32 %63, 875560960
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = tail call i32 @omap_rev() #8
  %67 = icmp ugt i32 %66, 875561779
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = tail call i32 @omap_type() #8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @omap_type() #8
  %73 = icmp eq i32 %72, 2
  %74 = select i1 %73, i1 %29, i1 false
  br i1 %74, label %76, label %79

75:                                               ; preds = %68
  br i1 %29, label %76, label %79

76:                                               ; preds = %75, %71
  %77 = load ptr, ptr @omap2_sdrc_base, align 4
  %78 = getelementptr i8, ptr %77, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %53) #8, !srcloc !11
  br label %79

79:                                               ; preds = %76, %75, %71, %65, %61
  br i1 %28, label %80, label %85

80:                                               ; preds = %79
  %81 = load ptr, ptr @core_pwrdm, align 4
  %82 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @omap3_control_restore_context() #8
  tail call void @omap_intc_restore_context() #8
  tail call void @omap3_cm_restore_context() #8
  tail call void @omap3_sram_restore_context() #8
  tail call void @omap2_sms_restore_context() #8
  br label %86

85:                                               ; preds = %80, %79
  tail call void @omap3_intc_resume_idle() #8
  br label %86

86:                                               ; preds = %85, %84
  %87 = tail call i32 @pwrdm_post_transition(ptr noundef null) #8
  br i1 %23, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call i32 @cpu_cluster_pm_exit() #8
  br label %90

90:                                               ; preds = %88, %86, %24, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_pre_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_save_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_vc_set_pmic_signaling(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_prepare_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap34xx_do_sram_idle(i32 noundef %0) #0 {
  tail call void @omap34xx_cpu_suspend(i32 noundef %0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_sram_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sms_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_resume_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_post_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_pm_off_mode_enable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  %4 = load ptr, ptr @pwrst_list, align 4
  %5 = icmp eq ptr %4, @pwrst_list
  br i1 %5, label %30, label %6

6:                                                ; preds = %23, %1
  %7 = phi ptr [ %28, %23 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = load i16, ptr @pm34xx_errata, align 2
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr @core_pwrdm, align 4
  %15 = icmp ne ptr %13, %14
  %16 = or i1 %2, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %7, i32 -8
  store i32 1, ptr %18, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap3_pm_off_mode_enable) #9
  %20 = load i32, ptr %18, align 4
  br label %23

21:                                               ; preds = %12, %6
  %22 = getelementptr i8, ptr %7, i32 -8
  store i32 %3, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %3, %21 ], [ %20, %17 ]
  %25 = load ptr, ptr %8, align 4
  %26 = trunc i32 %24 to i8
  %27 = tail call i32 @omap_set_pwrdm_state(ptr noundef %25, i8 noundef zeroext %26) #8
  %28 = load ptr, ptr %7, align 4
  %29 = icmp eq ptr %28, @pwrst_list
  br i1 %29, label %30, label %6

30:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_get_suspend_state(ptr noundef readnone %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @pwrst_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @pwrst_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -8
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_set_suspend_state(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @pwrst_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pwrst_list
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -8
  store i32 %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_push_sram_idle() local_unnamed_addr #0 {
  %1 = load i32, ptr @omap3_do_wfi_sz, align 4
  %2 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap3_do_wfi, i32 noundef %1) #8
  store ptr %2, ptr @omap3_do_wfi_sram, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_sram_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_do_wfi() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_init() #5 section ".init.text" {
  %1 = load i32, ptr @omap_features, align 4
  %2 = and i32 %1, 256
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %6

6:                                                ; preds = %4, %0
  tail call fastcc void @pm_errata_configure() #11
  tail call fastcc void @prcm_setup_regs() #11
  %7 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.3) #8
  %8 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @_prcm_int_handle_wakeup, ptr noundef null, i32 noundef 16384, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %94

12:                                               ; preds = %6
  %13 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.6) #8
  %14 = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef nonnull @_prcm_int_handle_io, ptr noundef null, i32 noundef 16512, ptr noundef nonnull @.str.7, ptr noundef nonnull @omap3_pm_init) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %90

18:                                               ; preds = %12
  tail call fastcc void @omap3_pm_check_pmic() #11
  %19 = tail call i32 @pwrdm_for_each(ptr noundef nonnull @pwrdms_setup, ptr noundef null) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #8
  %23 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.10) #8
  store ptr %23, ptr @mpu_pwrdm, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.12) #8
  store ptr %26, ptr @neon_pwrdm, align 4
  %27 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.13) #8
  store ptr %27, ptr @per_pwrdm, align 4
  %28 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.14) #8
  store ptr %28, ptr @core_pwrdm, align 4
  %29 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.15) #8
  %30 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.16) #8
  %31 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.17) #8
  %32 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.18) #8
  tail call void @omap_common_suspend_init(ptr noundef nonnull @omap3_pm_suspend) #8
  store ptr @omap3_pm_idle, ptr @arm_pm_idle, align 4
  %33 = tail call i32 @omap3_idle_init() #9
  %34 = load i16, ptr @pm34xx_errata, align 2
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  tail call void @omap3630_ctrl_disable_rta() #8
  %38 = load i16, ptr @pm34xx_errata, align 2
  br label %39

39:                                               ; preds = %37, %25
  %40 = phi i16 [ %38, %37 ], [ %34, %25 ]
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @clkdm_add_wkdep(ptr noundef %31, ptr noundef %32) #8
  br label %45

45:                                               ; preds = %43, %39
  %46 = tail call i32 @clkdm_add_wkdep(ptr noundef %29, ptr noundef %30) #8
  %47 = tail call i32 @omap_type() #8
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32831, i32 noundef 3264, i32 noundef 4) #12
  store ptr %50, ptr @omap3_secure_ram_storage, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %54

54:                                               ; preds = %52, %49
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !12
  %55 = load ptr, ptr @mpu_pwrdm, align 4
  %56 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %55) #8
  %57 = tail call i32 @omap_type() #8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr @mpu_pwrdm, align 4
  %61 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %60, i8 noundef zeroext 3) #8
  %62 = load ptr, ptr @omap3_secure_ram_storage, align 4
  %63 = tail call i32 @omap3_save_secure_ram(ptr noundef %62, i32 noundef 32831) #8
  %64 = load ptr, ptr @mpu_pwrdm, align 4
  %65 = trunc i32 %56 to i8
  %66 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %64, i8 noundef zeroext %65) #8
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %63) #9
  br label %70

70:                                               ; preds = %70, %68
  br label %70

71:                                               ; preds = %59, %54
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  br label %72

72:                                               ; preds = %71, %45
  tail call void @omap3_save_scratchpad_contents() #8
  br label %94

73:                                               ; preds = %21, %18
  %74 = phi ptr [ @.str.9, %18 ], [ @.str.11, %21 ]
  %75 = phi i32 [ %19, %18 ], [ -22, %21 ]
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %74) #9
  %77 = load ptr, ptr @pwrst_list, align 4
  %78 = icmp eq ptr %77, @pwrst_list
  br i1 %78, label %87, label %79

79:                                               ; preds = %79, %73
  %80 = phi ptr [ %82, %79 ], [ %77, %73 ]
  %81 = getelementptr i8, ptr %80, i32 -12
  %82 = load ptr, ptr %80, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %84, ptr %85, align 4
  store volatile ptr %82, ptr %84, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %83, align 4
  tail call void @kfree(ptr noundef %81) #8
  %86 = icmp eq ptr %82, @pwrst_list
  br i1 %86, label %87, label %79

87:                                               ; preds = %79, %73
  %88 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.6) #8
  %89 = tail call ptr @free_irq(i32 noundef %88, ptr noundef nonnull @omap3_pm_init) #8
  br label %90

90:                                               ; preds = %87, %16
  %91 = phi i32 [ %14, %16 ], [ %75, %87 ]
  %92 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.3) #8
  %93 = tail call ptr @free_irq(i32 noundef %92, ptr noundef null) #8
  br label %94

94:                                               ; preds = %90, %72, %10
  %95 = phi i32 [ 0, %72 ], [ %8, %10 ], [ %91, %90 ]
  ret i32 %95
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @pm_errata_configure() unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @omap_rev() #8
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 909115392
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i16, ptr @pm34xx_errata, align 2
  %6 = or i16 %5, 1
  store i16 %6, ptr @pm34xx_errata, align 2
  tail call void @enable_omap3630_toggle_l2_on_restore() #8
  %7 = tail call i32 @omap_rev() #8
  %8 = icmp ult i32 %7, 909115956
  br i1 %8, label %13, label %17

9:                                                ; preds = %0
  %10 = tail call i32 @omap_rev() #8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 52
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %4
  %14 = phi i16 [ 6, %4 ], [ 4, %9 ]
  %15 = load i16, ptr @pm34xx_errata, align 2
  %16 = or i16 %15, %14
  store i16 %16, ptr @pm34xx_errata, align 2
  br label %17

17:                                               ; preds = %13, %9, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @prcm_setup_regs() unnamed_addr #5 section ".init.text" {
  tail call void @omap3_ctrl_init() #8
  %1 = tail call i32 @omap_rev() #8
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 909115392
  %4 = load i32, ptr @omap_features, align 4
  %5 = and i32 %4, 2
  %6 = icmp ne i32 %5, 0
  tail call void @omap3_prm_init_pm(i1 noundef zeroext %3, i1 noundef zeroext %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_event_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_prcm_int_handle_wakeup(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext 1, i32 noundef -65793) #8
  %4 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext 1, i32 noundef -1) #8
  %5 = add i32 %4, %3
  %6 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 2048, i8 noundef zeroext 1, i32 noundef -1) #8
  %7 = add i32 %5, %6
  %8 = tail call i32 @omap_rev() #8
  %9 = icmp ugt i32 %8, 875561012
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext 3, i32 noundef -1) #8
  %12 = add i32 %11, %7
  %13 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 3072, i8 noundef zeroext 1, i32 noundef -1) #8
  %14 = add i32 %12, %13
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ %7, %2 ]
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_prcm_int_handle_io(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext 1, i32 noundef 65792) #8
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_pm_check_pmic() unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @of_node_put(ptr noundef nonnull %7) #8
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 1, %6 ], [ 0, %3 ]
  store i32 %9, ptr @enable_off_mode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwrdms_setup(ptr noundef %0, ptr nocapture noundef readnone %1) #5 section ".init.text" {
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 20) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = load i32, ptr @enable_off_mode, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.power_state, ptr %8, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.power_state, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr @pwrst_list, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store ptr %16, ptr %15, align 4
  %18 = getelementptr inbounds %struct.power_state, ptr %8, i32 0, i32 3, i32 1
  store ptr @pwrst_list, ptr %18, align 8
  store volatile ptr %15, ptr @pwrst_list, align 4
  %19 = tail call zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef %0) #8
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = tail call i32 @pwrdm_enable_hdwr_sar(ptr noundef %0) #8
  br label %22

22:                                               ; preds = %20, %10
  %23 = load ptr, ptr %8, align 8
  %24 = load i32, ptr %14, align 4
  %25 = trunc i32 %24 to i8
  %26 = tail call i32 @omap_set_pwrdm_state(ptr noundef %23, i8 noundef zeroext %25) #8
  br label %27

27:                                               ; preds = %22, %6, %2
  %28 = phi i32 [ %26, %22 ], [ 0, %2 ], [ -12, %6 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_common_suspend_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pm_suspend() #0 {
  %1 = load ptr, ptr @pwrst_list, align 4
  %2 = icmp eq ptr %1, @pwrst_list
  br i1 %2, label %11, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %9, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %6) #8
  %8 = getelementptr i8, ptr %4, i32 -4
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, @pwrst_list
  br i1 %10, label %11, label %3

11:                                               ; preds = %3, %0
  br label %12

12:                                               ; preds = %24, %11
  %13 = phi ptr [ %14, %24 ], [ @pwrst_list, %11 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -12
  %16 = icmp eq ptr %14, @pwrst_list
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %14, i32 -8
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = tail call i32 @omap_set_pwrdm_state(ptr noundef %18, i8 noundef zeroext %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load ptr, ptr %15, align 4
  %26 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %25) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %12, label %29

28:                                               ; preds = %12
  tail call void @omap3_intc_suspend() #8
  tail call void @omap_sram_idle()
  br label %29

29:                                               ; preds = %28, %24, %17
  %30 = load ptr, ptr @pwrst_list, align 4
  %31 = icmp eq ptr %30, @pwrst_list
  br i1 %31, label %56, label %32

32:                                               ; preds = %45, %29
  %33 = phi ptr [ %52, %45 ], [ %30, %29 ]
  %34 = phi i32 [ %46, %45 ], [ 0, %29 ]
  %35 = getelementptr i8, ptr %33, i32 -12
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %36) #8
  %38 = getelementptr i8, ptr %33, i32 -8
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load ptr, ptr %35, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %43, i32 noundef %39) #9
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi i32 [ -1, %41 ], [ %34, %32 ]
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %33, i32 -4
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = tail call i32 @omap_set_pwrdm_state(ptr noundef %47, i8 noundef zeroext %50) #8
  %52 = load ptr, ptr %33, align 4
  %53 = icmp eq ptr %52, @pwrst_list
  br i1 %53, label %54, label %32

54:                                               ; preds = %45
  %55 = icmp eq i32 %46, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54, %29
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi ptr [ @.str.24, %56 ], [ @.str.23, %54 ]
  %59 = phi i32 [ 0, %56 ], [ %46, %54 ]
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %58) #9
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3_pm_idle() #0 {
  %1 = tail call i32 @omap_irq_pending() #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @omap_sram_idle()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3_idle_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3630_ctrl_disable_rta() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_wkdep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_save_scratchpad_contents() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_ctrl_save_padconf() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ctrl_writel(i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_save_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_control_save_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap34xx_cpu_suspend(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_control_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_omap3630_toggle_l2_on_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_ctrl_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_init_pm(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_clear_mod_irqs(i16 noundef signext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_enable_hdwr_sar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_suspend() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_save_secure_ram(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 4222868}
!9 = !{i64 3999}
!10 = !{i64 4111}
!11 = !{i64 4222450}
!12 = !{i64 321311}
!13 = !{i64 321121}
