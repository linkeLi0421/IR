; ModuleID = '/llk/IR/arch/arm/mach-omap2/cm_common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@cm_ll_data = internal unnamed_addr global ptr @null_cm_ll_data, align 4
@cm_split_idlest_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [32 x i8] c"arch/arm/mach-omap2/cm_common.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cm: %s: no low-level function defined\0A\00", align 1
@__func__.cm_split_idlest_reg = private unnamed_addr constant [20 x i8] c"cm_split_idlest_reg\00", align 1
@cm_base = dso_local global %struct.omap_domain_base zeroinitializer, align 4
@omap_cm_wait_module_ready.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_wait_module_ready = private unnamed_addr constant [26 x i8] c"omap_cm_wait_module_ready\00", align 1
@omap_cm_wait_module_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_wait_module_idle = private unnamed_addr constant [25 x i8] c"omap_cm_wait_module_idle\00", align 1
@omap_cm_module_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_module_enable = private unnamed_addr constant [22 x i8] c"omap_cm_module_enable\00", align 1
@omap_cm_module_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_module_disable = private unnamed_addr constant [23 x i8] c"omap_cm_module_disable\00", align 1
@omap_cm_xlate_clkctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_cm_xlate_clkctrl = private unnamed_addr constant [22 x i8] c"omap_cm_xlate_clkctrl\00", align 1
@null_cm_ll_data = internal global %struct.cm_ll_data zeroinitializer, align 4
@omap_cm_dt_match_table = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-cm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-cm1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-cm2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-cm-core-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cm-core-aon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cm-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cm2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prcm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@cm2_base = dso_local global %struct.omap_domain_base zeroinitializer, align 4
@omap3_cm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 2048, i16 2, i32 0, ptr @omap3xxx_cm_init, ptr null }, section ".init.data", align 4
@cm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4
@cm2_data = internal global %struct.omap_prcm_init_data { i32 1, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4
@am3_prcm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 3, i32 0, ptr @am33xx_cm_init, ptr null }, section ".init.data", align 4
@am4_prcm_data = internal global %struct.omap_prcm_init_data { i32 0, ptr null, i32 0, i16 0, i16 3, i32 0, ptr @omap4_cm_init, ptr null }, section ".init.data", align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cm_split_idlest_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cm_ll_data, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @cm_split_idlest_reg.__already_done, align 1
  br i1 %8, label %15, label %9, !prof !8

9:                                                ; preds = %7
  store i1 true, ptr @cm_split_idlest_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cm_split_idlest_reg) #7
  br label %15

10:                                               ; preds = %3
  %11 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %12 = load i16, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 2), align 4
  %13 = load i16, ptr %1, align 2
  %14 = sub i16 %13, %12
  store i16 %14, ptr %1, align 2
  br label %15

15:                                               ; preds = %10, %9, %7
  %16 = phi i32 [ %11, %10 ], [ -22, %9 ], [ -22, %7 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @cm_ll_data, align 4
  %6 = getelementptr inbounds %struct.cm_ll_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i1, ptr @omap_cm_wait_module_ready.__already_done, align 1
  br i1 %10, label %14, label %11, !prof !8

11:                                               ; preds = %9
  store i1 true, ptr @omap_cm_wait_module_ready.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_wait_module_ready) #7
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 %7(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #7
  br label %14

14:                                               ; preds = %12, %11, %9
  %15 = phi i32 [ %13, %12 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_cm_wait_module_idle(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @cm_ll_data, align 4
  %6 = getelementptr inbounds %struct.cm_ll_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i1, ptr @omap_cm_wait_module_idle.__already_done, align 1
  br i1 %10, label %14, label %11, !prof !8

11:                                               ; preds = %9
  store i1 true, ptr @omap_cm_wait_module_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_wait_module_idle) #7
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 %7(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #7
  br label %14

14:                                               ; preds = %12, %11, %9
  %15 = phi i32 [ %13, %12 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_cm_module_enable(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @cm_ll_data, align 4
  %6 = getelementptr inbounds %struct.cm_ll_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i1, ptr @omap_cm_module_enable.__already_done, align 1
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %9
  store i1 true, ptr @omap_cm_module_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_module_enable) #7
  br label %13

12:                                               ; preds = %4
  tail call void %7(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #7
  br label %13

13:                                               ; preds = %12, %11, %9
  %14 = phi i32 [ 0, %12 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_cm_module_disable(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cm_ll_data, align 4
  %5 = getelementptr inbounds %struct.cm_ll_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i1, ptr @omap_cm_module_disable.__already_done, align 1
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %8
  store i1 true, ptr @omap_cm_module_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_module_disable) #7
  br label %12

11:                                               ; preds = %3
  tail call void %6(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #7
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = phi i32 [ 0, %11 ], [ -22, %10 ], [ -22, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_cm_xlate_clkctrl(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cm_ll_data, align 4
  %5 = getelementptr inbounds %struct.cm_ll_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i1, ptr @omap_cm_xlate_clkctrl.__already_done, align 1
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %8
  store i1 true, ptr @omap_cm_xlate_clkctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_cm_xlate_clkctrl) #7
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 %6(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #7
  br label %13

13:                                               ; preds = %11, %10, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %10 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cm_register(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @cm_ll_data, align 4
  %5 = icmp eq ptr %4, @null_cm_ll_data
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr %0, ptr @cm_ll_data, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ], [ -17, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cm_unregister(ptr noundef readnone %0) local_unnamed_addr #3 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @cm_ll_data, align 4
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr @null_cm_ll_data, ptr @cm_ll_data, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_cm_base_init() local_unnamed_addr #4 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  store ptr null, ptr %1, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  br label %7

7:                                                ; preds = %59, %5
  %8 = phi ptr [ null, %5 ], [ %20, %59 ]
  %9 = phi ptr [ %3, %5 ], [ %60, %59 ]
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @of_address_to_resource(ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull %2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %7
  %16 = load i32, ptr %12, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @cm_base, ptr %8
  %19 = icmp eq i32 %16, 1
  %20 = select i1 %19, ptr @cm2_base, ptr %18
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sub i32 1, %21
  %24 = add i32 %23, %22
  %25 = call ptr @ioremap(i32 noundef %21, i32 noundef %24) #7
  %26 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %12, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %20, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %15
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %12, i32 0, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = sext i16 %31 to i32
  %33 = add i32 %29, %32
  store i32 %33, ptr %20, align 4
  %34 = load ptr, ptr %26, align 4
  %35 = load i16, ptr %30, align 4
  %36 = sext i16 %35 to i32
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = getelementptr inbounds %struct.omap_domain_base, ptr %20, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = load i16, ptr %30, align 4
  %40 = getelementptr inbounds %struct.omap_domain_base, ptr %20, i32 0, i32 2
  store i16 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %28, %15
  %42 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %12, i32 0, i32 7
  store ptr %9, ptr %42, align 4
  %43 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %12, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %12, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %53 = icmp ne ptr %52, null
  %54 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm2_base, i32 0, i32 1), align 4
  %55 = icmp ne ptr %54, null
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %46
  %58 = call i32 %44(ptr noundef %12) #7
  br label %59

59:                                               ; preds = %57, %51, %41
  %60 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %9, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %1) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %7

62:                                               ; preds = %59, %7, %0
  %63 = phi i32 [ 0, %0 ], [ 0, %59 ], [ %13, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  ret i32 %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_cm_init() local_unnamed_addr #4 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  store ptr null, ptr %1, align 4, !annotation !9
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %1) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %19, %0
  %5 = phi ptr [ %20, %19 ], [ %2, %0 ]
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %8, i32 0, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %5, i32 noundef %14, ptr noundef null, ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %4
  %20 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %5, ptr noundef nonnull @omap_cm_dt_match_table, ptr noundef nonnull %1) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %4

22:                                               ; preds = %19, %13, %0
  %23 = phi i32 [ 0, %0 ], [ 0, %19 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3xxx_cm_init(ptr noundef) #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_cm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_cm_init(ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
