; ModuleID = '/llk/IR/arch/arm/mach-omap2/vp.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vp_common = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.omap_vp_ops = type { ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"\013%s: No PMIC info for vdd_%s\0A\00", align 1
@__func__.omap_vp_init = private unnamed_addr constant [13 x i8] c"omap_vp_init\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013%s: No read/write API for accessing vdd_%s regs\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"\014%s: vdd_%s TRANXDONE timeout exceeded. Voltage change aborted\0A\00", align 1
@__func__.omap_vp_forceupdate_scale = private unnamed_addr constant [26 x i8] c"omap_vp_forceupdate_scale\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"\013%s: vdd_%s TRANXDONE timeout exceeded. TRANXDONE never got set after the voltage update\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"\014%s: vdd_%s TRANXDONE timeout exceeded while trying to clear the TRANXDONE status\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\014%s: VDD specified does not exist!\0A\00", align 1
@__func__.omap_vp_enable = private unnamed_addr constant [15 x i8] c"omap_vp_enable\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\014%s: unable to find current voltage for %s\0A\00", align 1
@__func__.omap_vp_disable = private unnamed_addr constant [16 x i8] c"omap_vp_disable\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\014%s: Trying to disable VP for vdd_%s when it is already disabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\014%s: vdd_%s idle timedout\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_vp_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 5
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
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_vp_init, ptr noundef %12) #6
  br label %131

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
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_vp_init, ptr noundef %23) #6
  br label %131

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.omap_vp_instance, ptr %3, i32 0, i32 8
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, 1000
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %30, i32 0, i32 10
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %29, %33
  %35 = udiv i32 %34, 1000
  %36 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.omap_vp_param, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %30, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %39, i32 %41)
  %43 = load i32, ptr %37, align 4
  %44 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %30, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %30, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = tail call zeroext i8 %48(i32 noundef %42) #7
  %50 = zext i8 %49 to i32
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = tail call zeroext i8 %53(i32 noundef %46) #7
  %55 = zext i8 %54 to i32
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, %29
  %60 = load i32, ptr %56, align 4
  %61 = mul i32 %60, 1000
  %62 = add i32 %59, -1
  %63 = add i32 %62, %61
  %64 = udiv i32 %63, %61
  %65 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %56, i32 0, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %56, i32 0, i32 7
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %56, i32 0, i32 5
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = load ptr, ptr %2, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %75, align 4
  %77 = tail call i32 @llvm.cttz.i32(i32 %76, i1 false) #7, !range !8
  %78 = shl i32 %73, %77
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.omap_vp_common, ptr %79, i32 0, i32 3
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  %83 = or i32 %78, %82
  %84 = load ptr, ptr %19, align 4
  %85 = getelementptr inbounds %struct.omap_vp_instance, ptr %3, i32 0, i32 1
  %86 = load i8, ptr %85, align 4
  tail call void %84(i32 noundef %83, i8 noundef zeroext %86) #7
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 8
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %64, %90
  %92 = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 7
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i32
  %95 = shl i32 %67, %94
  %96 = or i32 %95, %91
  %97 = load ptr, ptr %19, align 4
  %98 = getelementptr inbounds %struct.omap_vp_instance, ptr %3, i32 0, i32 2
  %99 = load i8, ptr %98, align 1
  tail call void %97(i32 noundef %96, i8 noundef zeroext %99) #7
  %100 = load ptr, ptr %3, align 4
  %101 = getelementptr inbounds %struct.omap_vp_common, ptr %100, i32 0, i32 9
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = shl i32 %70, %103
  %105 = getelementptr inbounds %struct.omap_vp_common, ptr %100, i32 0, i32 10
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %64, %107
  %109 = or i32 %108, %104
  %110 = load ptr, ptr %19, align 4
  %111 = getelementptr inbounds %struct.omap_vp_instance, ptr %3, i32 0, i32 3
  %112 = load i8, ptr %111, align 2
  tail call void %110(i32 noundef %109, i8 noundef zeroext %112) #7
  %113 = load ptr, ptr %3, align 4
  %114 = getelementptr inbounds %struct.omap_vp_common, ptr %113, i32 0, i32 12
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %55, %116
  %118 = getelementptr inbounds %struct.omap_vp_common, ptr %113, i32 0, i32 11
  %119 = load i8, ptr %118, align 4
  %120 = zext i8 %119 to i32
  %121 = shl i32 %50, %120
  %122 = or i32 %121, %117
  %123 = getelementptr inbounds %struct.omap_vp_common, ptr %113, i32 0, i32 13
  %124 = load i8, ptr %123, align 2
  %125 = zext i8 %124 to i32
  %126 = shl i32 %35, %125
  %127 = or i32 %122, %126
  %128 = load ptr, ptr %19, align 4
  %129 = getelementptr inbounds %struct.omap_vp_instance, ptr %3, i32 0, i32 4
  %130 = load i8, ptr %129, align 1
  tail call void %128(i32 noundef %127, i8 noundef zeroext %130) #7
  br label %131

131:                                              ; preds = %25, %22, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_vp_update_errorgain(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @omap_voltage_get_voltdata(ptr noundef %0, i32 noundef %1) #7
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.omap_vp_common, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.omap_volt_data, ptr %7, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @llvm.cttz.i32(i32 %15, i1 false) #7, !range !8
  %20 = shl i32 %18, %19
  %21 = getelementptr inbounds %struct.omap_vp_instance, ptr %12, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = tail call i32 %11(i32 noundef %15, i32 noundef %20, i8 noundef zeroext %22) #7
  br label %24

24:                                               ; preds = %9, %6, %2
  %25 = phi i32 [ 0, %9 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_voltage_get_voltdata(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_vp_forceupdate_scale(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !9
  %7 = call i32 @omap_vc_pre_scale(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %132

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.omap_vp_instance, ptr %6, i32 0, i32 7
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i32 [ 1, %9 ], [ %28, %26 ]
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.omap_vp_common, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.omap_vp_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %10, align 2
  call void %17(i8 noundef zeroext %18) #7
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.omap_vp_common, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %10, align 2
  %24 = call i32 %22(i8 noundef zeroext %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #7
  %28 = add nuw nsw i32 %12, 1
  %29 = icmp eq i32 %28, 301
  br i1 %29, label %32, label %11

30:                                               ; preds = %11
  %31 = icmp ugt i32 %12, 299
  br i1 %31, label %32, label %35

32:                                               ; preds = %30, %26
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_vp_forceupdate_scale, ptr noundef %33) #6
  br label %132

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %38, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = call zeroext i8 %40(i32 noundef %1) #7
  %42 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.omap_vp_instance, ptr %36, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = call i32 %43(i8 noundef zeroext %45) #7
  %47 = load ptr, ptr %36, align 4
  %48 = getelementptr inbounds %struct.omap_vp_common, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.omap_vp_common, ptr %47, i32 0, i32 5
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds %struct.omap_vp_common, ptr %47, i32 0, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %46, %58
  %60 = zext i8 %41 to i32
  %61 = call i32 @llvm.cttz.i32(i32 %49, i1 false) #7, !range !8
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %44, align 4
  call void %65(i32 noundef %63, i8 noundef zeroext %66) #7
  %67 = load ptr, ptr %64, align 4
  %68 = load ptr, ptr %36, align 4
  %69 = getelementptr inbounds %struct.omap_vp_common, ptr %68, i32 0, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %63, %71
  %73 = load i8, ptr %44, align 4
  call void %67(i32 noundef %72, i8 noundef zeroext %73) #7
  %74 = load ptr, ptr %64, align 4
  %75 = load i8, ptr %44, align 4
  call void %74(i32 noundef %63, i8 noundef zeroext %75) #7
  %76 = load ptr, ptr %64, align 4
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.omap_vp_common, ptr %77, i32 0, i32 5
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i32
  %81 = or i32 %63, %80
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.omap_vp_instance, ptr %82, i32 0, i32 1
  %84 = load i8, ptr %83, align 4
  call void %76(i32 noundef %81, i8 noundef zeroext %84) #7
  br label %85

85:                                               ; preds = %94, %35
  %86 = phi i32 [ 0, %35 ], [ %96, %94 ]
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr inbounds %struct.omap_vp_common, ptr %87, i32 0, i32 15
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = load i8, ptr %10, align 2
  %92 = call i32 %90(i8 noundef zeroext %91) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748) #7
  %96 = add nuw nsw i32 %86, 1
  %97 = icmp eq i32 %96, 300
  br i1 %97, label %98, label %85

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 4
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap_vp_forceupdate_scale, ptr noundef %99) #6
  br label %101

101:                                              ; preds = %98, %85
  %102 = load i8, ptr %3, align 1
  %103 = load i8, ptr %4, align 1
  call void @omap_vc_post_scale(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %102, i8 noundef zeroext %103) #7
  br label %104

104:                                              ; preds = %119, %101
  %105 = phi i32 [ 1, %101 ], [ %121, %119 ]
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.omap_vp_common, ptr %106, i32 0, i32 15
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.omap_vp_ops, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load i8, ptr %10, align 2
  call void %110(i8 noundef zeroext %111) #7
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr inbounds %struct.omap_vp_common, ptr %112, i32 0, i32 15
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = load i8, ptr %10, align 2
  %117 = call i32 %115(i8 noundef zeroext %116) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %104
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748) #7
  %121 = add nuw nsw i32 %105, 1
  %122 = icmp eq i32 %121, 301
  br i1 %122, label %125, label %104

123:                                              ; preds = %104
  %124 = icmp ugt i32 %105, 299
  br i1 %124, label %125, label %128

125:                                              ; preds = %123, %119
  %126 = load ptr, ptr %0, align 4
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_vp_forceupdate_scale, ptr noundef %126) #6
  br label %128

128:                                              ; preds = %125, %123
  %129 = load ptr, ptr %64, align 4
  %130 = getelementptr inbounds %struct.omap_vp_instance, ptr %6, i32 0, i32 1
  %131 = load i8, ptr %130, align 4
  call void %129(i32 noundef %63, i8 noundef zeroext %131) #7
  br label %132

132:                                              ; preds = %128, %32, %2
  %133 = phi i32 [ -110, %32 ], [ 0, %128 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vc_pre_scale(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vc_post_scale(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_vp_enable(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_vp_enable) #6
  br label %77

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %7
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_vp_enable, ptr noundef %18) #6
  br label %77

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.omap_vp_instance, ptr %9, i32 0, i32 8
  %22 = load i8, ptr %21, align 1, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %20
  %25 = tail call i32 @voltdm_get_voltage(ptr noundef nonnull %0) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_vp_enable, ptr noundef %28) #6
  br label %77

30:                                               ; preds = %24
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i8 %35(i32 noundef %25) #7
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.omap_vp_instance, ptr %31, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = tail call i32 %37(i8 noundef zeroext %39) #7
  %41 = load ptr, ptr %31, align 4
  %42 = getelementptr inbounds %struct.omap_vp_common, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.omap_vp_common, ptr %41, i32 0, i32 5
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds %struct.omap_vp_common, ptr %41, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %47, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %40, %52
  %54 = zext i8 %36 to i32
  %55 = tail call i32 @llvm.cttz.i32(i32 %43, i1 false) #7, !range !8
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load ptr, ptr %14, align 4
  %59 = load i8, ptr %38, align 4
  tail call void %58(i32 noundef %57, i8 noundef zeroext %59) #7
  %60 = load ptr, ptr %14, align 4
  %61 = load ptr, ptr %31, align 4
  %62 = getelementptr inbounds %struct.omap_vp_common, ptr %61, i32 0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %57, %64
  %66 = load i8, ptr %38, align 4
  tail call void %60(i32 noundef %65, i8 noundef zeroext %66) #7
  %67 = load ptr, ptr %14, align 4
  %68 = load i8, ptr %38, align 4
  tail call void %67(i32 noundef %57, i8 noundef zeroext %68) #7
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr inbounds %struct.omap_vp_common, ptr %69, i32 0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %57, %72
  %74 = load ptr, ptr %14, align 4
  %75 = getelementptr inbounds %struct.omap_vp_instance, ptr %9, i32 0, i32 1
  %76 = load i8, ptr %75, align 4
  tail call void %74(i32 noundef %73, i8 noundef zeroext %76) #7
  store i8 1, ptr %21, align 1
  br label %77

77:                                               ; preds = %30, %27, %20, %17, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @voltdm_get_voltage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_vp_disable(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_vp_disable) #6
  br label %54

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %7
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_vp_disable, ptr noundef %18) #6
  br label %54

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.omap_vp_instance, ptr %9, i32 0, i32 8
  %22 = load i8, ptr %21, align 1, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.omap_vp_disable, ptr noundef %25) #6
  br label %54

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.omap_vp_instance, ptr %9, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = tail call i32 %11(i8 noundef zeroext %29) #7
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.omap_vp_common, ptr %31, i32 0, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = load ptr, ptr %14, align 4
  %38 = load i8, ptr %28, align 4
  tail call void %37(i32 noundef %36, i8 noundef zeroext %38) #7
  %39 = getelementptr inbounds %struct.omap_vp_instance, ptr %9, i32 0, i32 5
  br label %40

40:                                               ; preds = %46, %27
  %41 = phi i32 [ 0, %27 ], [ %48, %46 ]
  %42 = load ptr, ptr %10, align 4
  %43 = load i8, ptr %39, align 4
  %44 = tail call i32 %42(i8 noundef zeroext %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #7
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, 200
  br i1 %49, label %50, label %40

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.omap_vp_disable, ptr noundef %51) #6
  br label %53

53:                                               ; preds = %50, %40
  store i8 0, ptr %21, align 1
  br label %54

54:                                               ; preds = %53, %24, %17, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
