; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdmi_bridge = type { %struct.drm_bridge, ptr, %struct.work_struct }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to enable hpd regulators: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"*ERROR* pinctrl state chg failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"pinctrl state chg failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to disable hpd regulator: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"status=%04x, ctrl=%04x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"HDMI_HPD_INT_STATUS tells us: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"hpd gpio tells us: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"gpio on\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"gpio off\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to set clk %s (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to enable hpd clk: %s (%d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_hpd_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.hdmi_platform_config, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regulator_bulk_enable(i32 noundef %10, ptr noundef %12) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %13) #3
  br label %59

16:                                               ; preds = %1
  %17 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %8) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %17) #3
  br label %59

20:                                               ; preds = %16
  tail call fastcc void @gpio_config(ptr noundef %3, i1 noundef zeroext true)
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #3
  tail call fastcc void @enable_hpd_clocks(ptr noundef %3, i1 noundef zeroext true)
  tail call void @msm_hdmi_set_mode(ptr noundef %3, i1 noundef zeroext false) #3
  %22 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 724
  %25 = tail call i32 @msm_readl(ptr noundef %24) #3
  %26 = and i32 %25, -5
  %27 = lshr i32 %25, 1
  %28 = and i32 %27, 4
  %29 = or i32 %28, %26
  %30 = xor i32 %29, 4
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr i8, ptr %31, i32 724
  tail call void @msm_writel(i32 noundef %30, ptr noundef %32) #3
  %33 = and i32 %25, -2
  %34 = and i32 %27, 1
  %35 = or i32 %34, %33
  %36 = xor i32 %35, 1
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr i8, ptr %37, i32 724
  tail call void @msm_writel(i32 noundef %36, ptr noundef %38) #3
  tail call void @msleep(i32 noundef 100) #3
  %39 = load ptr, ptr %22, align 4
  %40 = getelementptr i8, ptr %39, i32 724
  tail call void @msm_writel(i32 noundef %29, ptr noundef %40) #3
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr i8, ptr %41, i32 724
  tail call void @msm_writel(i32 noundef %35, ptr noundef %42) #3
  tail call void @msm_hdmi_set_mode(ptr noundef %3, i1 noundef zeroext true) #3
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr i8, ptr %43, i32 520
  tail call void @msm_writel(i32 noundef 65563, ptr noundef %44) #3
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr i8, ptr %45, i32 596
  tail call void @msm_writel(i32 noundef 6, ptr noundef %46) #3
  %47 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 24
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #3
  %49 = load ptr, ptr %22, align 4
  %50 = getelementptr i8, ptr %49, i32 600
  %51 = tail call i32 @msm_readl(ptr noundef %50) #3
  %52 = and i32 %51, -268443648
  %53 = or i32 %52, 8191
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr i8, ptr %54, i32 600
  tail call void @msm_writel(i32 noundef %53, ptr noundef %55) #3
  %56 = or i32 %51, 268443647
  %57 = load ptr, ptr %22, align 4
  %58 = getelementptr i8, ptr %57, i32 600
  tail call void @msm_writel(i32 noundef %56, ptr noundef %58) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #3
  br label %59

59:                                               ; preds = %20, %19, %15
  %60 = phi i32 [ 0, %20 ], [ %13, %15 ], [ %17, %19 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 0
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %1, label %11, label %10

10:                                               ; preds = %2
  br i1 %9, label %104, label %96

11:                                               ; preds = %2
  br i1 %9, label %21, label %12

12:                                               ; preds = %11
  %13 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %6, i32 noundef %8) #3
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %6) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef %8) #3
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq ptr %23, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %23, i32 noundef %25) #3
  br label %36

34:                                               ; preds = %27
  %35 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %23) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %23, i32 noundef %25) #3
  br label %36

36:                                               ; preds = %34, %32, %21
  %37 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq ptr %38, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %38, i32 noundef %40) #3
  br label %51

49:                                               ; preds = %42
  %50 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %38) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %38, i32 noundef %40) #3
  br label %51

51:                                               ; preds = %49, %47, %36
  %52 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq ptr %53, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %53, i32 noundef %55) #3
  br label %66

64:                                               ; preds = %57
  %65 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %53) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %53, i32 noundef %55) #3
  br label %66

66:                                               ; preds = %64, %62, %51
  %67 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq ptr %68, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4, i32 1
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %68, i32 noundef %70) #3
  br label %81

79:                                               ; preds = %72
  %80 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %68) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %68, i32 noundef %70) #3
  br label %81

81:                                               ; preds = %79, %77, %66
  %82 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq ptr %83, null
  br i1 %86, label %174, label %87

87:                                               ; preds = %81
  %88 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %83, i32 noundef %85) #3
  br label %174

94:                                               ; preds = %87
  %95 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %83) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %83, i32 noundef %85) #3
  br label %174

96:                                               ; preds = %10
  %97 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 0, i32 1
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = icmp eq i32 %8, 0
  %103 = zext i1 %102 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef %103) #3
  br label %104

104:                                              ; preds = %101, %96, %10
  %105 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq ptr %106, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %104
  %111 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 1, i32 1
  %112 = load i8, ptr %111, align 4
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = icmp eq i32 %108, 0
  %117 = zext i1 %116 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %106, i32 noundef %117) #3
  br label %118

118:                                              ; preds = %115, %110, %104
  %119 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq ptr %120, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %118
  %125 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 2, i32 1
  %126 = load i8, ptr %125, align 4
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = icmp eq i32 %122, 0
  %131 = zext i1 %130 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %120, i32 noundef %131) #3
  br label %132

132:                                              ; preds = %129, %124, %118
  %133 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq ptr %134, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 3, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = icmp eq i32 %136, 0
  %145 = zext i1 %144 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %134, i32 noundef %145) #3
  br label %146

146:                                              ; preds = %143, %138, %132
  %147 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq ptr %148, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %146
  %153 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 4, i32 1
  %154 = load i8, ptr %153, align 4
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = icmp eq i32 %150, 0
  %159 = zext i1 %158 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %148, i32 noundef %159) #3
  br label %160

160:                                              ; preds = %157, %152, %146
  %161 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq ptr %162, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %160
  %167 = getelementptr %struct.hdmi_platform_config, ptr %4, i32 0, i32 11, i32 5, i32 1
  %168 = load i8, ptr %167, align 4
  %169 = and i8 %168, 1
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = icmp eq i32 %164, 0
  %173 = zext i1 %172 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %162, i32 noundef %173) #3
  br label %174

174:                                              ; preds = %171, %166, %160, %94, %92, %81
  %175 = phi ptr [ @.str.10, %94 ], [ @.str.10, %92 ], [ @.str.10, %81 ], [ @.str.11, %171 ], [ @.str.11, %166 ], [ @.str.11, %160 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %175) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enable_hpd_clocks(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.hdmi_platform_config, ptr %4, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  br i1 %1, label %10, label %53

10:                                               ; preds = %2
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hdmi_platform_config, ptr %4, i32 0, i32 7
  %14 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 12
  %15 = getelementptr inbounds %struct.hdmi_platform_config, ptr %4, i32 0, i32 6
  br label %16

16:                                               ; preds = %49, %12
  %17 = phi i32 [ 0, %12 ], [ %50, %49 ]
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr i32, ptr %18, i32 %17
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr ptr, ptr %25, i32 %17
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %22) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr ptr, ptr %31, i32 %17
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef %33, i32 noundef %28) #4
  br label %34

34:                                               ; preds = %30, %24, %20, %16
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr ptr, ptr %35, i32 %17
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @clk_prepare(ptr noundef %37) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = tail call i32 @clk_enable(ptr noundef %37) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %37) #3
  br label %44

44:                                               ; preds = %43, %34
  %45 = phi i32 [ %41, %43 ], [ %38, %34 ]
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr ptr, ptr %46, i32 %17
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef %48, i32 noundef %45) #3
  br label %49

49:                                               ; preds = %44, %40
  %50 = add nuw nsw i32 %17, 1
  %51 = load i32, ptr %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %16, label %65

53:                                               ; preds = %2
  %54 = add i32 %9, -1
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 12
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ %54, %56 ], [ %63, %58 ]
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr ptr, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #3
  tail call void @clk_unprepare(ptr noundef %62) #3
  %63 = add nsw i32 %59, -1
  %64 = icmp sgt i32 %59, 0
  br i1 %64, label %58, label %65

65:                                               ; preds = %58, %53, %49, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_set_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hpd_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 596
  tail call void @msm_writel(i32 noundef 0, ptr noundef %11) #3
  tail call void @msm_hdmi_set_mode(ptr noundef %3, i1 noundef zeroext false) #3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.hdmi_platform_config, ptr %12, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 12
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %15, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr ptr, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #3
  tail call void @clk_unprepare(ptr noundef %23) #3
  %24 = add nsw i32 %20, -1
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %26, label %19

26:                                               ; preds = %19, %1
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #3
  tail call fastcc void @gpio_config(ptr noundef %3, i1 noundef zeroext false)
  %28 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %8) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %28) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.hdmi_platform_config, ptr %5, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regulator_bulk_disable(i32 noundef %33, ptr noundef %35) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %36) #4
  br label %39

39:                                               ; preds = %38, %31
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hpd_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 592
  %7 = tail call i32 @msm_readl(ptr noundef %6) #3
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 596
  %10 = tail call i32 @msm_readl(ptr noundef %9) #3
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = and i32 %7, 2
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 596
  tail call void @msm_writel(i32 noundef 1, ptr noundef %19) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %10) #3
  %20 = xor i32 %17, 6
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 596
  tail call void @msm_writel(i32 noundef %20, ptr noundef %22) #3
  %23 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 2
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25) #3
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_bridge_detect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_bridge, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.hdmi_platform_config, ptr %5, i32 0, i32 11, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @gpiod_get_value(ptr noundef nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 2, i32 1
  %13 = tail call fastcc i32 @detect_reg(ptr noundef %3)
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %43, label %17

15:                                               ; preds = %1
  %16 = tail call fastcc i32 @detect_reg(ptr noundef %3)
  br label %43

17:                                               ; preds = %33, %9
  %18 = phi i32 [ %40, %33 ], [ %13, %9 ]
  %19 = phi i32 [ %39, %33 ], [ %12, %9 ]
  %20 = phi i32 [ %31, %33 ], [ 20, %9 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #3
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #3
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #3
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #3
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #3
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #3
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #3
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #3
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #3
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #3
  %31 = add nsw i32 %20, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %17
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr %struct.hdmi_platform_config, ptr %34, i32 0, i32 11, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @gpiod_get_value(ptr noundef %36) #3
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 2, i32 1
  %40 = tail call fastcc i32 @detect_reg(ptr noundef %3)
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %43, label %17

42:                                               ; preds = %17
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %18) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %19) #3
  br label %43

43:                                               ; preds = %42, %33, %15, %9
  %44 = phi i32 [ %16, %15 ], [ %19, %42 ], [ %12, %9 ], [ %39, %33 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @detect_reg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #3
  tail call fastcc void @enable_hpd_clocks(ptr noundef %0, i1 noundef zeroext true)
  %6 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 592
  %9 = tail call i32 @msm_readl(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hdmi_platform_config, ptr %11, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hdmi, ptr %0, i32 0, i32 12
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %14, %16 ], [ %23, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #3
  tail call void @clk_unprepare(ptr noundef %22) #3
  %23 = add nsw i32 %19, -1
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %1
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #3
  %29 = and i32 %9, 2
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 2, i32 1
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
