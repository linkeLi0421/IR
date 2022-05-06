; ModuleID = '/llk/IR/drivers/clk/ti/clk-3xxx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-3xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@clkhwops_omap3430es2_iclk_ssi_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_ssi_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@clkhwops_omap3430es2_dss_usbhost_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_dss_usbhost_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, align 4
@clkhwops_omap3430es2_iclk_dss_usbhost_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_dss_usbhost_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@clkhwops_omap3430es2_iclk_hsotgusb_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap3430es2_clk_hsotgusb_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@clkhwops_am35xx_ipss_module_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @am35xx_clk_find_idlest, ptr @am35xx_clk_find_companion, ptr null, ptr null }, align 4
@clkhwops_am35xx_ipss_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @am35xx_clk_ipss_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@.str = private unnamed_addr constant [9 x i8] c"dpll5_ck\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dpll5_m2_ck\00", align 1
@omap3xxx_clks = internal global [3 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.6, ptr null, ptr null }, ptr @.str.7 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.8, ptr null, ptr null }, ptr @.str.9 }, %struct.ti_dt_clk zeroinitializer], align 4
@am35xx_clks = internal global [5 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.10, ptr null, ptr null }, ptr @.str.11 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr null }, ptr @.str.13 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.14, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.16, ptr null, ptr null }, ptr @.str.17 }, %struct.ti_dt_clk zeroinitializer], align 4
@omap36xx_am35xx_omap3430es2plus_clks = internal global [3 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.18, ptr null, ptr null }, ptr @.str.19 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.20, ptr null, ptr null }, ptr @.str.21 }, %struct.ti_dt_clk zeroinitializer], align 4
@omap3430es1_clks = internal global [7 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.22, ptr null, ptr null }, ptr @.str.23 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.24, ptr null, ptr null }, ptr @.str.25 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.10, ptr null, ptr null }, ptr @.str.26 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.27, ptr null, ptr null }, ptr @.str.28 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.18, ptr null, ptr null }, ptr @.str.29 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.20, ptr null, ptr null }, ptr @.str.30 }, %struct.ti_dt_clk zeroinitializer], align 4
@omap36xx_omap3430es2plus_clks = internal global [5 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.22, ptr null, ptr null }, ptr @.str.31 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.24, ptr null, ptr null }, ptr @.str.32 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.10, ptr null, ptr null }, ptr @.str.33 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.27, ptr null, ptr null }, ptr @.str.34 }, %struct.ti_dt_clk zeroinitializer], align 4
@enable_init_clks = internal global [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"\016Clocking rate (Crystal/Core/MPU): %ld.%01ld/%ld/%ld MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"osc_sys_ck\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"core_ck\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"arm_fck\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"omap_32k_fck\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"sys_ck\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"hsotgusb_ick\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"hsotgusb_ick_am35xx\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"hsotgusb_fck\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"hsotgusb_fck_am35xx\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"uart4_ick\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"uart4_ick_am35xx\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"uart4_fck\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"uart4_fck_am35xx\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"dss1_alwon_fck\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"dss1_alwon_fck_3430es2\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dss_ick\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"dss_ick_3430es2\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"ssi_ssr_fck\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"ssi_ssr_fck_3430es1\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ssi_sst_fck\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"ssi_sst_fck_3430es1\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"hsotgusb_ick_3430es1\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ssi_ick\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"ssi_ick_3430es1\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"dss1_alwon_fck_3430es1\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"dss_ick_3430es1\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ssi_ssr_fck_3430es2\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"ssi_sst_fck_3430es2\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"hsotgusb_ick_3430es2\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"ssi_ick_3430es2\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"sdrc_ick\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"gpmc_fck\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"omapctrl_ick\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_ssi_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = and i16 %9, -241
  %11 = or i16 %10, 32
  store i16 %11, ptr %7, align 4
  store i8 8, ptr %2, align 1
  store i8 1, ptr %3, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_companion(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkt_iclk_allow_idle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkt_iclk_deny_idle(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_dss_usbhost_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = and i16 %9, -241
  %11 = or i16 %10, 32
  store i16 %11, ptr %7, align 4
  store i8 1, ptr %2, align 1
  store i8 1, ptr %3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @omap3430es2_clk_hsotgusb_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = and i16 %9, -241
  %11 = or i16 %10, 32
  store i16 %11, ptr %7, align 4
  store i8 5, ptr %2, align 1
  store i8 1, ptr %3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = add i8 %8, 4
  store i8 %9, ptr %2, align 1
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_find_companion(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i8 -8, i8 8
  %11 = add i8 %10, %7
  store i8 %11, ptr %2, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @am35xx_clk_ipss_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = and i16 %9, -241
  %11 = or i16 %10, 32
  store i16 %11, ptr %7, align 4
  store i8 5, ptr %2, align 1
  store i8 1, ptr %3, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_clk_lock_dpll5() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #4
  %2 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef 960000000) #4
  %3 = tail call i32 @clk_prepare(ptr noundef %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = tail call i32 @clk_enable(ptr noundef %1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %9

9:                                                ; preds = %8, %5, %0
  %10 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.1) #4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %17

17:                                               ; preds = %16, %13, %9
  %18 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 120000000) #4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  tail call void @clk_disable(ptr noundef %1) #4
  tail call void @clk_unprepare(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3430_dt_clk_init() local_unnamed_addr #2 section ".init.text" {
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 2) #5
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3xxx_dt_clk_init(i32 noundef %0) unnamed_addr #2 section ".init.text" {
  %2 = icmp eq i32 %0, 1
  %3 = icmp ult i32 %0, 4
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap3xxx_clks) #4
  br label %5

5:                                                ; preds = %4, %1
  switch i32 %0, label %8 [
    i32 0, label %6
    i32 3, label %7
    i32 2, label %7
    i32 1, label %11
  ]

6:                                                ; preds = %5
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @am35xx_clks) #4
  br label %7

7:                                                ; preds = %6, %5, %5
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap36xx_am35xx_omap3430es2plus_clks) #4
  br label %8

8:                                                ; preds = %7, %5
  %9 = and i32 %0, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %5
  %12 = phi ptr [ @omap3430es1_clks, %5 ], [ @omap36xx_omap3430es2plus_clks, %8 ]
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %12) #4
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call i32 @omap2_clk_disable_autoidle_all() #4
  tail call void @ti_clk_add_aliases() #4
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 3) #4
  %15 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #4
  %17 = udiv i32 %16, 1000000
  %18 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #4
  %20 = udiv i32 %19, 100000
  %21 = trunc i32 %20 to i16
  %22 = urem i16 %21, 10
  %23 = zext i16 %22 to i32
  %24 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.4) #4
  %25 = tail call i32 @clk_get_rate(ptr noundef %24) #4
  %26 = udiv i32 %25, 1000000
  %27 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #4
  %28 = tail call i32 @clk_get_rate(ptr noundef %27) #4
  %29 = udiv i32 %28, 1000000
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %23, i32 noundef %26, i32 noundef %29) #6
  br i1 %2, label %32, label %31

31:                                               ; preds = %13
  tail call void @omap3_clk_lock_dpll5() #5
  br label %32

32:                                               ; preds = %31, %13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3630_dt_clk_init() local_unnamed_addr #2 section ".init.text" {
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 3) #5
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @am35xx_dt_clk_init() local_unnamed_addr #2 section ".init.text" {
  tail call fastcc void @omap3xxx_dt_clk_init(i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
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
