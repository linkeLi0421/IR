; ModuleID = '/llk/IR/arch/arm/mach-omap2/voltage.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%union.anon = type { ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }

@.str = private unnamed_addr constant [37 x i8] c"\014%s: VDD specified does not exist!\0A\00", align 1
@__func__.voltdm_get_voltage = private unnamed_addr constant [19 x i8] c"voltdm_get_voltage\00", align 1
@__func__.voltdm_scale = private unnamed_addr constant [13 x i8] c"voltdm_scale\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\013%s: No voltage scale API registered for vdd_%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013%s: No voltage data defined for vdd_%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\014%s: not scaling. OPP voltage for %lu, not found.\0A\00", align 1
@__func__.voltdm_reset = private unnamed_addr constant [13 x i8] c"voltdm_reset\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\013%s: unable to find current voltage for vdd_%s\0A\00", align 1
@__func__.omap_voltage_get_volttable = private unnamed_addr constant [27 x i8] c"omap_voltage_get_volttable\00", align 1
@__func__.omap_voltage_get_voltdata = private unnamed_addr constant [26 x i8] c"omap_voltage_get_voltdata\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\014%s: voltage table does not exist for vdd_%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"\015%s: Unable to match the current voltage with the voltage table for vdd_%s\0A\00", align 1
@__func__.omap_voltage_register_pmic = private unnamed_addr constant [27 x i8] c"omap_voltage_register_pmic\00", align 1
@voltdm_list = internal global %struct.list_head { ptr @voltdm_list, ptr @voltdm_list }, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"\013%s: Voltage driver support not added\0A\00", align 1
@__func__.omap_voltage_late_init = private unnamed_addr constant [23 x i8] c"omap_voltage_late_init\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\014%s: Could not get sys clk.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"arch/arm/mach-omap2/voltage.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @voltdm_get_voltage(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.voltdm_get_voltage) #7
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 0, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @voltdm_scale(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.voltdm_scale) #7
  br label %41

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.voltdm_scale, ptr noundef %13) #7
  br label %41

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %30

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.voltdm_scale, ptr noundef %23) #7
  br label %41

25:                                               ; preds = %30
  %26 = add i32 %32, 1
  %27 = getelementptr %struct.omap_volt_data, ptr %17, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %19
  %31 = phi i32 [ %28, %25 ], [ %20, %19 ]
  %32 = phi i32 [ %26, %25 ], [ 0, %19 ]
  %33 = icmp ult i32 %31, %1
  br i1 %33, label %25, label %36

34:                                               ; preds = %25, %19
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.voltdm_scale, i32 noundef %1) #7
  br label %41

36:                                               ; preds = %30
  %37 = tail call i32 %10(ptr noundef nonnull %0, i32 noundef %31) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 14
  store i32 %31, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %36, %34, %22, %12, %6
  %42 = phi i32 [ -22, %6 ], [ -22, %34 ], [ -61, %22 ], [ -61, %12 ], [ 0, %39 ], [ %37, %36 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @voltdm_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.voltdm_reset) #7
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.voltdm_reset, ptr noundef %12) #7
  br label %16

14:                                               ; preds = %7
  %15 = tail call i32 @voltdm_scale(ptr noundef nonnull %0, i32 noundef %9)
  br label %16

16:                                               ; preds = %14, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_voltage_get_volttable(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_voltage_get_volttable) #7
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_voltage_get_voltdata(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_voltage_get_voltdata) #7
  br label %31

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, %1
  br i1 %16, label %31, label %20

17:                                               ; preds = %8
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_voltage_get_voltdata, ptr noundef %18) #7
  br label %31

20:                                               ; preds = %26, %15
  %21 = phi i32 [ %22, %26 ], [ 0, %15 ]
  %22 = add i32 %21, 1
  %23 = getelementptr %struct.omap_volt_data, ptr %10, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = icmp eq i32 %24, %1
  br i1 %27, label %31, label %20

28:                                               ; preds = %20, %12
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_voltage_get_voltdata, ptr noundef %29) #7
  br label %31

31:                                               ; preds = %28, %26, %17, %15, %6
  %32 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -61 to ptr), %28 ], [ inttoptr (i32 -61 to ptr), %17 ], [ %10, %15 ], [ %23, %26 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_voltage_register_pmic(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_voltage_register_pmic) #7
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 6
  store ptr %1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ -22, %6 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_voltage_late_init() local_unnamed_addr #2 section ".init.text" {
  %1 = load volatile ptr, ptr @voltdm_list, align 4
  %2 = icmp eq ptr %1, @voltdm_list
  br i1 %2, label %33, label %3

3:                                                ; preds = %30, %0
  %4 = phi ptr [ %31, %30 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = getelementptr i8, ptr %4, i32 -4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 44
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @clk_get(ptr noundef null, ptr noundef %11) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @clk_get_rate(ptr noundef %12) #8
  store i32 %15, ptr %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 258, i32 noundef 9, ptr noundef null) #8
  br label %18

18:                                               ; preds = %17, %14
  tail call void @clk_put(ptr noundef %12) #8
  %19 = getelementptr i8, ptr %4, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %4, i32 48
  store ptr @omap_vc_bypass_scale, ptr %23, align 4
  tail call void @omap_vc_init_channel(ptr noundef %5) #8
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr i8, ptr %4, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %4, i32 48
  store ptr @omap_vp_forceupdate_scale, ptr %29, align 4
  tail call void @omap_vp_init(ptr noundef %5) #8
  br label %30

30:                                               ; preds = %28, %24, %3
  %31 = load ptr, ptr %4, align 4
  %32 = icmp eq ptr %31, @voltdm_list
  br i1 %32, label %36, label %3

33:                                               ; preds = %9, %0
  %34 = phi ptr [ @.str.7, %0 ], [ @.str.8, %9 ]
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %34, ptr noundef nonnull @__func__.omap_voltage_late_init) #7
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ -22, %33 ], [ 0, %30 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vc_bypass_scale(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vc_init_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vp_forceupdate_scale(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_vp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @voltdm_lookup(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %5, %7 ], [ @voltdm_list, %1 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @voltdm_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -8
  br label %14

14:                                               ; preds = %12, %3, %1
  %15 = phi ptr [ null, %1 ], [ %13, %12 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @voltdm_init(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %16, %3
  %7 = phi ptr [ %18, %16 ], [ %4, %3 ]
  %8 = phi ptr [ %17, %16 ], [ %0, %3 ]
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.voltagedomain, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr @voltdm_list, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %15 = getelementptr inbounds %struct.voltagedomain, ptr %7, i32 0, i32 2, i32 1
  store ptr @voltdm_list, ptr %15, align 4
  store volatile ptr %12, ptr @voltdm_list, align 4
  br label %16

16:                                               ; preds = %11, %6
  %17 = getelementptr ptr, ptr %8, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6

20:                                               ; preds = %16, %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
