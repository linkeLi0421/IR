; ModuleID = '/llk/IR/arch/arm/mach-omap2/vc.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap3_vc = type { ptr, i32, i32, i32, [2 x %struct.omap3_vc_timings] }
%struct.omap3_vc_timings = type { i32, i32 }
%struct.omap_vc_channel_cfg = type { i8, i8, i8, i8, i8 }
%struct.i2c_init_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_common = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }
%struct.omap_vfsm_instance = type { i32, i8, i8 }

@.str = private unnamed_addr constant [50 x i8] c"\013%s: Insufficient pmic info to scale the vdd_%s\0A\00", align 1
@__func__.omap_vc_pre_scale = private unnamed_addr constant [18 x i8] c"omap_vc_pre_scale\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"\013%s: PMIC function to convert voltage in uV to vsel not registered. Hence unable to scale voltage for vdd_%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013%s: No read/write API for accessing vdd_%s regs\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\014%s: Retry count exceeded\0A\00", align 1
@__func__.omap_vc_bypass_scale = private unnamed_addr constant [21 x i8] c"omap_vc_bypass_scale\00", align 1
@vc = internal unnamed_addr global %struct.omap3_vc zeroinitializer, align 4
@sr_i2c_pcb_length = internal unnamed_addr global i32 63, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"\013%s: No PMIC info for vdd_%s\0A\00", align 1
@__func__.omap_vc_init_channel = private unnamed_addr constant [21 x i8] c"omap_vc_init_channel\00", align 1
@vc_mutant_channel_cfg = internal global %struct.omap_vc_channel_cfg { i8 1, i8 4, i8 8, i8 16, i8 2 }, align 1
@vc_cfg_bits = internal unnamed_addr global ptr null, align 4
@vc_default_channel_cfg = internal global %struct.omap_vc_channel_cfg { i8 1, i8 2, i8 4, i8 8, i8 16 }, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"arch/arm/mach-omap2/vc.c\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: voltage not supported by pmic: %u vs max %u\0A\00", align 1
@__func__.omap_vc_calc_vsel = private unnamed_addr constant [18 x i8] c"omap_vc_calc_vsel\00", align 1
@omap_vc_i2c_init.initialized = internal unnamed_addr global i1 false, align 1
@omap_vc_i2c_init.i2c_high_speed = internal unnamed_addr global i8 0, align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\014%s: I2C config for vdd_%s does not match other channels (%u).\0A\00", align 1
@__func__.omap_vc_i2c_init = private unnamed_addr constant [17 x i8] c"omap_vc_i2c_init\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\016%s: using bootloader low-speed timings\0A\00", align 1
@__func__.omap4_vc_i2c_timing_init = private unnamed_addr constant [25 x i8] c"omap4_vc_i2c_timing_init\00", align 1
@omap4_i2c_timing_data = internal unnamed_addr constant [4 x %struct.i2c_init_data] [%struct.i2c_init_data { i8 3, i8 50, i8 13, i8 11, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 2, i8 25, i8 13, i8 11, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 1, i8 12, i8 11, i8 10, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 0, i8 0, i8 12, i8 10, i8 9, i8 8, i8 8 }], section ".init.rodata", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\014%s: unsupported sysclk rate: %d!\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\014%s: invalid setuptime for vdd_%s\0A\00", align 1
@__func__.omap4_calc_volt_ramp = private unnamed_addr constant [21 x i8] c"omap4_calc_volt_ramp\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_vc_pre_scale(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_vc_pre_scale, ptr noundef %11) #7
  br label %60

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %8, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_vc_pre_scale, ptr noundef %18) #7
  br label %60

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_vc_pre_scale, ptr noundef %29) #7
  br label %60

31:                                               ; preds = %24
  %32 = tail call zeroext i8 %15(i32 noundef %1) #8
  store i8 %32, ptr %2, align 1
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = tail call zeroext i8 %35(i32 noundef %37) #8
  store i8 %38, ptr %3, align 1
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr inbounds %struct.omap_vc_channel, ptr %6, i32 0, i32 9
  %41 = load i8, ptr %40, align 4
  %42 = tail call i32 %39(i8 noundef zeroext %41) #8
  %43 = getelementptr inbounds %struct.omap_vc_channel, ptr %6, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load i8, ptr %2, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.omap_vc_common, ptr %44, i32 0, i32 6
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = shl i32 %49, %52
  %54 = or i32 %53, %47
  %55 = load ptr, ptr %25, align 4
  %56 = load i8, ptr %40, align 4
  tail call void %55(i32 noundef %54, i8 noundef zeroext %56) #8
  %57 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  store i32 %1, ptr %58, align 4
  %59 = tail call i32 @omap_vp_update_errorgain(ptr noundef %0, i32 noundef %1) #8
  br label %60

60:                                               ; preds = %31, %28, %17, %10
  %61 = phi i32 [ 0, %31 ], [ -22, %28 ], [ -61, %17 ], [ -22, %10 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vp_update_errorgain(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_vc_post_scale(ptr nocapture noundef readonly %0, i32 %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = zext i8 %2 to i32
  %10 = zext i8 %3 to i32
  %11 = sub nsw i32 %9, %10
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = mul i32 %8, %12
  %14 = load i32, ptr %6, align 4
  %15 = udiv i32 %13, %14
  %16 = add i32 %15, 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_vc_bypass_scale(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = call i32 @omap_vc_pre_scale(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %79

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.omap_vc_channel, ptr %6, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.omap_vc_common, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.omap_vc_common, ptr %11, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.omap_vc_common, ptr %11, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %17, %20
  %22 = getelementptr inbounds %struct.omap_vc_channel, ptr %6, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.omap_vc_common, ptr %11, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %24, %27
  %29 = or i32 %28, %21
  %30 = load i16, ptr %6, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.omap_vc_common, ptr %11, i32 0, i32 4
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl i32 %31, %34
  %36 = or i32 %29, %35
  %37 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  tail call void %38(i32 noundef %36, i8 noundef zeroext %15) #8
  %39 = load ptr, ptr %37, align 4
  %40 = or i32 %36, %13
  tail call void %39(i32 noundef %40, i8 noundef zeroext %15) #8
  %41 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(i8 noundef zeroext %15) #8
  %44 = and i32 %43, %13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %58, %9
  %47 = phi i32 [ %60, %58 ], [ 0, %9 ]
  %48 = phi i32 [ %59, %58 ], [ 0, %9 ]
  %49 = icmp ugt i32 %47, 10
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap_vc_bypass_scale) #7
  br label %79

52:                                               ; preds = %46
  %53 = add i32 %48, 1
  %54 = icmp ugt i32 %53, 50
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %47, 1
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #8
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ 0, %55 ], [ %53, %52 ]
  %60 = phi i32 [ %56, %55 ], [ %47, %52 ]
  %61 = load ptr, ptr %41, align 4
  %62 = tail call i32 %61(i8 noundef zeroext %15) #8
  %63 = and i32 %62, %13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %46, label %65

65:                                               ; preds = %58, %9
  %66 = load i8, ptr %4, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %17, %67
  %69 = tail call i32 @llvm.abs.i32(i32 %68, i1 true) #8
  %70 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = mul i32 %69, %73
  %75 = load i32, ptr %71, align 4
  %76 = udiv i32 %74, %75
  %77 = add i32 %76, 2
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #8
  br label %79

79:                                               ; preds = %65, %50, %2
  %80 = phi i32 [ -110, %50 ], [ %7, %2 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_vc_set_pmic_signaling(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vc, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  %6 = icmp eq i32 %0, 0
  %7 = and i32 %3, -8
  br i1 %6, label %8, label %16

8:                                                ; preds = %1
  %9 = or i32 %7, 4
  %10 = and i32 %3, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  br label %19

14:                                               ; preds = %8
  %15 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  br label %19

16:                                               ; preds = %1
  %17 = or i32 %7, 2
  %18 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  br label %19

19:                                               ; preds = %16, %14, %12
  %20 = phi ptr [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), %12 ], [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), %14 ], [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), %16 ]
  %21 = phi i32 [ %9, %12 ], [ %9, %14 ], [ %17, %16 ]
  %22 = phi i32 [ %4, %12 ], [ %15, %14 ], [ %18, %16 ]
  %23 = phi i32 [ %13, %12 ], [ %5, %14 ], [ %5, %16 ]
  %24 = icmp eq i32 %21, %3
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  tail call void %27(i32 noundef %21, i8 noundef zeroext 96) #8
  store i32 %21, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %28, %25 ], [ %4, %19 ]
  %31 = icmp eq i32 %22, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %20, align 4
  tail call void %34(i32 noundef %35, i8 noundef zeroext -112) #8
  store i32 %22, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  %38 = icmp eq i32 %23, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.omap3_vc_timings, ptr %20, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  tail call void %41(i32 noundef %43, i8 noundef zeroext -96) #8
  store i32 %23, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  br label %44

44:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_vc_set_pmic_signaling(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 1
  %6 = select i1 %5, i32 810, i32 29482
  %7 = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  tail call void %8(i32 noundef %6, i8 noundef zeroext 16) #8
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap_pm_setup_sr_i2c_pcb_length(i32 noundef %0) local_unnamed_addr #4 section ".init.text" {
  store i32 %0, ptr @sr_i2c_pcb_length, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_vc_init_channel(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_vc_init_channel, ptr noundef %12) #7
  br label %185

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_vc_init_channel, ptr noundef %23) #7
  br label %185

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 3
  store i8 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 15
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr @vc_default_channel_cfg, ptr @vc_mutant_channel_cfg
  store ptr %31, ptr @vc_cfg_bits, align 4
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %32, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  store i16 %34, ptr %3, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %35, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 1
  store i16 %37, ptr %38, align 2
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %39, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 2
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = zext i16 %34 to i32
  %48 = tail call i32 @llvm.cttz.i32(i32 %46, i1 false) #8, !range !9
  %49 = shl i32 %47, %48
  %50 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 10
  %51 = load i8, ptr %50, align 1
  %52 = tail call i32 %44(i32 noundef %46, i32 noundef %49, i8 noundef zeroext %51) #8
  %53 = load ptr, ptr @vc_cfg_bits, align 4
  %54 = load i8, ptr %53, align 1
  %55 = load i8, ptr %26, align 2
  %56 = or i8 %55, %54
  store i8 %56, ptr %26, align 2
  %57 = load ptr, ptr %43, align 4
  %58 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = load i16, ptr %38, align 2
  %61 = zext i16 %60 to i32
  %62 = tail call i32 @llvm.cttz.i32(i32 %59, i1 false) #8, !range !9
  %63 = shl i32 %61, %62
  %64 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 11
  %65 = load i8, ptr %64, align 2
  %66 = tail call i32 %57(i32 noundef %59, i32 noundef %63, i8 noundef zeroext %65) #8
  %67 = load ptr, ptr @vc_cfg_bits, align 4
  %68 = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %67, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = load i8, ptr %26, align 2
  %71 = or i8 %70, %69
  store i8 %71, ptr %26, align 2
  %72 = load i16, ptr %42, align 4
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %25
  %75 = load ptr, ptr %43, align 4
  %76 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = zext i16 %72 to i32
  %79 = tail call i32 @llvm.cttz.i32(i32 %77, i1 false) #8, !range !9
  %80 = shl i32 %78, %79
  %81 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 12
  %82 = load i8, ptr %81, align 1
  %83 = tail call i32 %75(i32 noundef %77, i32 noundef %80, i8 noundef zeroext %82) #8
  %84 = load ptr, ptr @vc_cfg_bits, align 4
  %85 = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %84, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = load i8, ptr %26, align 2
  %88 = or i8 %87, %86
  store i8 %88, ptr %26, align 2
  %89 = load i16, ptr %42, align 4
  br label %90

90:                                               ; preds = %74, %25
  %91 = phi i8 [ %88, %74 ], [ %71, %25 ]
  %92 = phi ptr [ %84, %74 ], [ %67, %25 ]
  %93 = phi i16 [ %89, %74 ], [ 0, %25 ]
  %94 = load i16, ptr %38, align 2
  %95 = icmp eq i16 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %92, i32 0, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = or i8 %91, %98
  store i8 %99, ptr %26, align 2
  br label %100

100:                                              ; preds = %96, %90
  %101 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = load i32, ptr %102, align 4
  %104 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %0, i32 noundef %103)
  %105 = load ptr, ptr %101, align 4
  %106 = getelementptr inbounds %struct.omap_vc_param, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %0, i32 noundef %107)
  %109 = load ptr, ptr %101, align 4
  %110 = getelementptr inbounds %struct.omap_vc_param, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %0, i32 noundef %111)
  %113 = load ptr, ptr %101, align 4
  %114 = getelementptr inbounds %struct.omap_vc_param, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %0, i32 noundef %115)
  %117 = zext i8 %104 to i32
  %118 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.omap_vc_common, ptr %119, i32 0, i32 6
  %121 = load i8, ptr %120, align 4
  %122 = zext i8 %121 to i32
  %123 = shl i32 %117, %122
  %124 = zext i8 %108 to i32
  %125 = getelementptr inbounds %struct.omap_vc_common, ptr %119, i32 0, i32 7
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %124, %127
  %129 = or i32 %128, %123
  %130 = zext i8 %112 to i32
  %131 = getelementptr inbounds %struct.omap_vc_common, ptr %119, i32 0, i32 8
  %132 = load i8, ptr %131, align 2
  %133 = zext i8 %132 to i32
  %134 = shl i32 %130, %133
  %135 = or i32 %129, %134
  %136 = zext i8 %116 to i32
  %137 = getelementptr inbounds %struct.omap_vc_common, ptr %119, i32 0, i32 9
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %136, %139
  %141 = or i32 %135, %140
  %142 = load ptr, ptr %19, align 4
  %143 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 9
  %144 = load i8, ptr %143, align 4
  tail call void %142(i32 noundef %141, i8 noundef zeroext %144) #8
  %145 = load ptr, ptr @vc_cfg_bits, align 4
  %146 = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %145, i32 0, i32 4
  %147 = load i8, ptr %146, align 1
  %148 = load i8, ptr %26, align 2
  %149 = or i8 %148, %147
  store i8 %149, ptr %26, align 2
  %150 = load ptr, ptr %2, align 4
  %151 = getelementptr inbounds %struct.omap_vc_channel, ptr %150, i32 0, i32 15
  %152 = load i8, ptr %151, align 2
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %100
  %156 = getelementptr inbounds %struct.omap_vc_channel, ptr %150, i32 0, i32 3
  %157 = load i8, ptr %156, align 2
  br label %164

158:                                              ; preds = %100
  %159 = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %145, i32 0, i32 3
  %160 = load i8, ptr %159, align 1
  %161 = getelementptr inbounds %struct.omap_vc_channel, ptr %150, i32 0, i32 3
  %162 = load i8, ptr %161, align 2
  %163 = and i8 %162, %160
  store i8 %163, ptr %161, align 2
  br label %164

164:                                              ; preds = %158, %155
  %165 = phi i8 [ %157, %155 ], [ %163, %158 ]
  %166 = load ptr, ptr %43, align 4
  %167 = getelementptr inbounds %struct.omap_vc_channel, ptr %150, i32 0, i32 14
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl i32 31, %169
  %171 = zext i8 %165 to i32
  %172 = shl i32 %171, %169
  %173 = getelementptr inbounds %struct.omap_vc_channel, ptr %150, i32 0, i32 13
  %174 = load i8, ptr %173, align 4
  %175 = tail call i32 %166(i32 noundef %170, i32 noundef %172, i8 noundef zeroext %174) #8
  tail call fastcc void @omap_vc_i2c_init(ptr noundef %0) #9
  %176 = tail call i32 @omap_rev() #8
  %177 = and i32 %176, 255
  %178 = icmp eq i32 %177, 52
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  tail call fastcc void @omap3_vc_init_channel(ptr noundef %0) #9
  br label %185

180:                                              ; preds = %164
  %181 = tail call i32 @omap_rev() #8
  %182 = and i32 %181, 255
  %183 = icmp eq i32 %182, 68
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  tail call fastcc void @omap4_vc_init_channel(ptr noundef %0) #9
  br label %185

185:                                              ; preds = %184, %180, %179, %22, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @omap_vc_calc_vsel(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %1)
  %8 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %4, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 800, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_vc_calc_vsel, i32 noundef %7, i32 noundef %9) #8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %12, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %17 = phi i32 [ %14, %11 ], [ %7, %2 ]
  %18 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %16, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i8 %19(i32 noundef %17) #8
  ret i8 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_vc_i2c_init(ptr nocapture noundef readonly %0) unnamed_addr #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i1, ptr @omap_vc_i2c_init.initialized, align 1
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %6, i32 0, i32 11
  %8 = load i8, ptr %7, align 1, !range !10
  br i1 %4, label %9, label %16

9:                                                ; preds = %1
  %10 = load i8, ptr @omap_vc_i2c_init.i2c_high_speed, align 1, !range !10
  %11 = icmp eq i8 %8, %10
  br i1 %11, label %58, label %12

12:                                               ; preds = %9
  %13 = zext i8 %10 to i32
  %14 = load ptr, ptr %0, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.omap_vc_i2c_init, ptr noundef %14, i32 noundef %13) #7
  br label %58

16:                                               ; preds = %1
  %17 = icmp eq i8 %8, 0
  store i8 %8, ptr @omap_vc_i2c_init.i2c_high_speed, align 1
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.omap_vc_common, ptr %22, i32 0, i32 11
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.omap_vc_common, ptr %22, i32 0, i32 12
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.omap_vc_common, ptr %22, i32 0, i32 10
  %30 = load i8, ptr %29, align 4
  %31 = tail call i32 %20(i32 noundef %25, i32 noundef %28, i8 noundef zeroext %30) #8
  %32 = load ptr, ptr %5, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = phi ptr [ %32, %18 ], [ %6, %16 ]
  %35 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %34, i32 0, i32 13
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.omap_vc_channel, ptr %3, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.omap_vc_common, ptr %42, i32 0, i32 13
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = zext i8 %36 to i32
  %47 = tail call i32 @llvm.cttz.i32(i32 %45, i1 false) #8, !range !9
  %48 = shl i32 %46, %47
  %49 = getelementptr inbounds %struct.omap_vc_common, ptr %42, i32 0, i32 10
  %50 = load i8, ptr %49, align 4
  %51 = tail call i32 %40(i32 noundef %45, i32 noundef %48, i8 noundef zeroext %50) #8
  br label %52

52:                                               ; preds = %38, %33
  %53 = tail call i32 @omap_rev() #8
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 68
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call fastcc void @omap4_vc_i2c_timing_init(ptr noundef %0) #9
  br label %57

57:                                               ; preds = %56, %52
  store i1 true, ptr @omap_vc_i2c_init.initialized, align 1
  br label %58

58:                                               ; preds = %57, %12, %9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_vc_init_channel(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  tail call fastcc void @omap3_vc_init_pmic_signaling(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  call void @omap_pm_get_oscillator(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 328679999) #10, !srcloc !11
  %11 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 328679999, i64 %10, i32 0) #10, !srcloc !12
  br label %18

12:                                               ; preds = %6
  %13 = zext i32 %7 to i64
  %14 = shl nuw nsw i64 %13, 15
  %15 = add nuw nsw i64 %14, 999999
  %16 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %15) #10, !srcloc !11
  %17 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %15, i64 %16, i32 0) #10, !srcloc !12
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi { i64, i32 } [ %17, %12 ], [ %11, %9 ]
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = lshr i64 %20, 18
  %22 = trunc i64 %21 to i32
  %23 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 16990783) #10, !srcloc !11
  %24 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 16990783, i64 %23, i32 0) #10, !srcloc !12
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = lshr i64 %25, 18
  %27 = trunc i64 %26 to i32
  %28 = sub i32 %22, %27
  store i32 %28, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  %29 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  call void %30(i32 noundef %22, i8 noundef zeroext -104) #8
  %31 = load ptr, ptr %29, align 4
  call void %31(i32 noundef %27, i8 noundef zeroext -108) #8
  br label %32

32:                                               ; preds = %18, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %33 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.omap_vc_param, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %34, align 4
  %38 = sub i32 %37, %36
  %39 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 4
  %42 = udiv i32 %38, %41
  %43 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = udiv i32 %44, 8000000
  %46 = add nuw nsw i32 %45, 1
  %47 = mul i32 %46, %42
  %48 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 4
  %51 = call i32 @llvm.cttz.i32(i32 %50, i1 false) #8, !range !9
  %52 = shl i32 %47, %51
  %53 = xor i32 %50, -1
  %54 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  %55 = and i32 %54, %53
  %56 = or i32 %55, %52
  store i32 %56, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  %57 = getelementptr inbounds %struct.omap_vc_param, ptr %34, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %34, align 4
  %60 = sub i32 %59, %58
  %61 = load i32, ptr %40, align 4
  %62 = udiv i32 %60, %61
  %63 = mul i32 %62, %46
  %64 = load i32, ptr %49, align 4
  %65 = call i32 @llvm.cttz.i32(i32 %64, i1 false) #8, !range !9
  %66 = shl i32 %63, %65
  %67 = xor i32 %64, -1
  %68 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  %69 = and i32 %68, %67
  %70 = or i32 %69, %66
  store i32 %70, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap4_vc_init_channel(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = load ptr, ptr @vc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  store ptr %0, ptr @vc, align 4
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void %6(i32 noundef 29482, i8 noundef zeroext 16) #8
  br label %7

7:                                                ; preds = %4, %1
  tail call fastcc void @omap4_set_timings(ptr noundef %0, i1 noundef zeroext true)
  tail call fastcc void @omap4_set_timings(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap4_vc_i2c_timing_init(ptr nocapture noundef readonly %0) unnamed_addr #5 section ".init.text" {
  %2 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.omap4_vc_i2c_timing_init) #7
  br label %52

9:                                                ; preds = %1
  %10 = load i32, ptr @sr_i2c_pcb_length, align 4
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 4
  %16 = add i32 %15, %12
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ @omap4_i2c_timing_data, %9 ], [ %23, %17 ]
  %19 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ult i32 %16, %21
  %23 = getelementptr %struct.i2c_init_data, ptr %18, i32 1
  br i1 %22, label %17, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %37 [
    i32 38400000, label %27
    i32 26000000, label %29
    i32 19200000, label %31
    i32 16800000, label %33
    i32 12000000, label %35
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 2
  br label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 3
  br label %39

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 4
  br label %39

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 5
  br label %39

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.i2c_init_data, ptr %18, i32 0, i32 6
  br label %39

37:                                               ; preds = %24
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap4_vc_i2c_timing_init, i32 noundef %26) #7
  br label %52

39:                                               ; preds = %35, %33, %31, %29, %27
  %40 = phi ptr [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  %41 = load i8, ptr %40, align 1
  %42 = load i8, ptr %18, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 25
  %45 = shl i32 %43, 29
  %46 = or i32 %44, %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -63838716 to ptr), i32 %46) #8, !srcloc !13
  %47 = zext i8 %41 to i32
  %48 = shl nuw i32 %47, 24
  %49 = or i32 %48, 10284
  %50 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  tail call void %51(i32 noundef %49, i8 noundef zeroext -84) #8
  br label %52

52:                                               ; preds = %39, %37, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_vc_init_pmic_signaling(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = load ptr, ptr @vc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %26

4:                                                ; preds = %1
  store ptr %0, ptr @vc, align 4
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(i8 noundef zeroext -100) #8
  %8 = and i32 %7, 10
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = and i32 %7, -11
  %12 = or i32 %11, 2
  %13 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  tail call void %14(i32 noundef %12, i8 noundef zeroext -100) #8
  br label %15

15:                                               ; preds = %10, %4
  %16 = load ptr, ptr %5, align 4
  %17 = tail call i32 %16(i8 noundef zeroext 96) #8
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = or i32 %17, 8
  %22 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  tail call void %23(i32 noundef %21, i8 noundef zeroext 96) #8
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %17, %15 ], [ %21, %20 ]
  store i32 %25, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  tail call void @omap3_vc_set_pmic_signaling(i32 noundef 3)
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_pm_get_oscillator(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap4_set_timings(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  br i1 %1, label %8, label %47

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.omap_vc_param, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %7, %10
  %12 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %11, %14
  %16 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = udiv i32 %17, 1000
  %19 = mul i32 %18, %15
  %20 = icmp ugt i32 %19, 4095999
  %21 = select i1 %20, i32 256000, i32 64000
  %22 = udiv i32 %19, %21
  %23 = icmp ugt i32 %22, 63
  %24 = zext i1 %23 to i32
  %25 = lshr i32 %22, %24
  %26 = icmp ugt i32 %25, 63
  %27 = lshr i32 %25, 2
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %33

30:                                               ; preds = %8
  %31 = load ptr, ptr %0, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap4_calc_volt_ramp, ptr noundef %31) #7
  br label %42

33:                                               ; preds = %8
  %34 = select i1 %20, i32 2, i32 1
  %35 = zext i1 %20 to i32
  %36 = select i1 %23, i32 %34, i32 %35
  %37 = zext i1 %26 to i32
  %38 = add nuw nsw i32 %36, %37
  %39 = add nuw nsw i32 %28, 1
  %40 = shl nuw nsw i32 %38, 8
  %41 = or i32 %40, %39
  br label %42

42:                                               ; preds = %33, %30
  %43 = phi i32 [ 0, %30 ], [ %41, %33 ]
  %44 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.omap_vfsm_instance, ptr %45, i32 0, i32 2
  br label %86

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.omap_vc_param, ptr %6, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %7, %49
  %51 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = udiv i32 %50, %53
  %55 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = udiv i32 %56, 1000
  %58 = mul i32 %57, %54
  %59 = icmp ugt i32 %58, 4095999
  %60 = select i1 %59, i32 256000, i32 64000
  %61 = udiv i32 %58, %60
  %62 = icmp ugt i32 %61, 63
  %63 = zext i1 %62 to i32
  %64 = lshr i32 %61, %63
  %65 = icmp ugt i32 %64, 63
  %66 = lshr i32 %64, 2
  %67 = select i1 %65, i32 %66, i32 %64
  %68 = icmp ugt i32 %67, 63
  br i1 %68, label %69, label %72

69:                                               ; preds = %47
  %70 = load ptr, ptr %0, align 4
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap4_calc_volt_ramp, ptr noundef %70) #7
  br label %81

72:                                               ; preds = %47
  %73 = select i1 %59, i32 2, i32 1
  %74 = zext i1 %59 to i32
  %75 = select i1 %62, i32 %73, i32 %74
  %76 = zext i1 %65 to i32
  %77 = add nuw nsw i32 %75, %76
  %78 = add nuw nsw i32 %67, 1
  %79 = shl nuw nsw i32 %77, 8
  %80 = or i32 %79, %78
  br label %81

81:                                               ; preds = %72, %69
  %82 = phi i32 [ 0, %69 ], [ %80, %72 ]
  %83 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.omap_vfsm_instance, ptr %84, i32 0, i32 1
  br label %86

86:                                               ; preds = %81, %42
  %87 = phi i32 [ %43, %42 ], [ %82, %81 ]
  %88 = phi ptr [ %46, %42 ], [ %85, %81 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %86
  %91 = load i8, ptr %88, align 1
  %92 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(i8 noundef zeroext %91) #8
  %95 = shl i32 %87, 16
  %96 = or i32 %95, %87
  %97 = or i32 %96, %94
  %98 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  tail call void %99(i32 noundef %97, i8 noundef zeroext %91) #8
  call void @omap_pm_get_oscillator(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %100 = load i32, ptr %3, align 4
  %101 = zext i32 %100 to i64
  %102 = shl nuw nsw i64 %101, 15
  %103 = add nuw nsw i64 %102, 999999
  %104 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %103) #10, !srcloc !11
  %105 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %103, i64 %104, i32 0) #10, !srcloc !12
  %106 = extractvalue { i64, i32 } %105, 0
  %107 = lshr i64 %106, 18
  %108 = trunc i64 %107 to i32
  %109 = call i32 @llvm.umin.i32(i32 %108, i32 4095) #8
  %110 = load i32, ptr %4, align 4
  %111 = zext i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 15
  %113 = add nuw nsw i64 %112, 999999
  %114 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %113) #10, !srcloc !11
  %115 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %113, i64 %114, i32 0) #10, !srcloc !12
  %116 = extractvalue { i64, i32 } %115, 0
  %117 = lshr i64 %116, 2
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, -65536
  %120 = call i32 @llvm.umin.i32(i32 %119, i32 4128768) #8
  %121 = or i32 %120, %109
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -63921920 to ptr), i32 %121) #8, !srcloc !13
  br label %122

122:                                              ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind readnone }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{i64 862780, i64 862807}
!12 = !{i64 863475, i64 863502, i64 863535, i64 863556, i64 863583, i64 863609}
!13 = !{i64 2406299}
