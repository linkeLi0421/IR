; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap-mpuss-lowpower.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-mpuss-lowpower.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap4_cpu_pm_info = type { ptr, ptr, ptr, ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@omap4_pm_info = internal global %struct.omap4_cpu_pm_info zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@.str = private unnamed_addr constant [42 x i8] c"arch/arm/mach-omap2/omap-mpuss-lowpower.c\00", align 1
@mpuss_pd = internal unnamed_addr global ptr null, align 4
@omap_pm_ops.0 = internal unnamed_addr global ptr @default_finish_suspend, align 4
@omap_pm_ops.1 = internal unnamed_addr global ptr @dummy_cpu_resume, align 4
@omap_pm_ops.2 = internal unnamed_addr global ptr @dummy_scu_prepare, align 4
@omap_pm_ops.3 = internal unnamed_addr global ptr @dummy_cpu_resume, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Power Management not supported on OMAP4430 ES1.0\0A\00", align 1
@sar_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu0_pwrdm\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013Lookup failed for CPU0 pwrdm\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\013Lookup failed for CPU1 pwrdm\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\013Failed to lookup MPUSS power domain\0A\00", align 1
@cpu_context_offset = internal unnamed_addr global i32 0, align 4
@old_cpu1_ns_pa_addr = internal unnamed_addr global i32 0, align 4
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@l2x0_saved_regs = external dso_local local_unnamed_addr global %struct.l2x0_regs, align 4
@switch.table.omap4_enter_lowpower = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_enter_lowpower(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @omap4_pm_info to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @omap_rev() #6
  %8 = icmp eq i32 %7, 1144000580
  br i1 %8, label %79, label %9

9:                                                ; preds = %2
  %10 = icmp ult i32 %1, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #6
  br label %79

12:                                               ; preds = %9
  %13 = shl i32 %1, 3
  %14 = lshr i32 16843008, %13
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [4 x i32], ptr @switch.table.omap4_enter_lowpower, i32 0, i32 %1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @pwrdm_pre_transition(ptr noundef null) #6
  %19 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #6
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %19, i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #6
  %20 = load ptr, ptr @mpuss_pd, align 4
  %21 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load ptr, ptr @mpuss_pd, align 4
  %25 = tail call i32 @pwrdm_read_logic_retst(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 2, i32 %17
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi i32 [ %17, %12 ], [ %27, %23 ]
  %30 = icmp eq i32 %0, 0
  %31 = load i32, ptr @cpu_context_offset, align 4
  %32 = trunc i32 %31 to i16
  %33 = select i1 %30, i16 1024, i16 2048
  %34 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext %33, i16 noundef zeroext %32) #6
  %35 = load i32, ptr @cpu_context_offset, align 4
  %36 = trunc i32 %35 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %34, i16 noundef signext %33, i16 noundef zeroext %36) #6
  %37 = load ptr, ptr %6, align 4
  %38 = trunc i32 %1 to i8
  %39 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %37, i8 noundef zeroext %38) #6
  %40 = load ptr, ptr %6, align 4
  %41 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %40, i8 noundef zeroext %15) #6
  %42 = load ptr, ptr @omap_pm_ops.1, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %43, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %45 = load i32, ptr %3, align 4
  %46 = add i32 %45, ptrtoint (ptr @omap4_pm_info to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %44) #6, !srcloc !9
  br label %52

52:                                               ; preds = %51, %28
  %53 = load ptr, ptr @omap_pm_ops.2, align 4
  tail call void %53(i32 noundef %0, i32 noundef %1) #6
  %54 = load i32, ptr %3, align 4
  %55 = add i32 %54, ptrtoint (ptr @omap4_pm_info to i32)
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 %29) #6, !srcloc !9
  br label %61

61:                                               ; preds = %60, %52
  %62 = icmp eq i32 %29, 0
  %63 = load ptr, ptr @omap_pm_ops.0, align 4
  br i1 %62, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @cpu_suspend(i32 noundef %29, ptr noundef %63) #6
  br label %68

66:                                               ; preds = %61
  %67 = tail call i32 %63(i32 noundef 0) #6
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i16, ptr @pm44xx_errata, align 2
  %70 = and i16 %69, 1
  %71 = icmp ne i16 %70, 0
  %72 = icmp ne i32 %0, 0
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call void @gic_dist_enable() #6
  br label %75

75:                                               ; preds = %74, %68
  %76 = load ptr, ptr %6, align 4
  %77 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %76, i8 noundef zeroext 3) #6
  %78 = tail call i32 @pwrdm_post_transition(ptr noundef null) #6
  br label %79

79:                                               ; preds = %75, %11, %2
  %80 = phi i32 [ -6, %11 ], [ 0, %75 ], [ -6, %2 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_pre_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_logic_retst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_post_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_hotplug_cpu(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @omap4_pm_info to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @omap_rev() #6
  %8 = icmp eq i32 %7, 1144000580
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 4
  %11 = trunc i32 %1 to i8
  %12 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %10, i1 noundef zeroext false, i8 noundef zeroext %11) #6
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  %15 = zext i1 %14 to i32
  %16 = load ptr, ptr %6, align 4
  %17 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %16) #6
  %18 = load ptr, ptr %6, align 4
  %19 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %18, i8 noundef zeroext %12) #6
  %20 = load ptr, ptr @omap_pm_ops.3, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %21, i32 -2130706432, i32 8454144) #7, !srcloc !8
  %23 = load i32, ptr %3, align 4
  %24 = add i32 %23, ptrtoint (ptr @omap4_pm_info to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %22) #6, !srcloc !9
  br label %30

30:                                               ; preds = %29, %9
  %31 = load ptr, ptr @omap_pm_ops.2, align 4
  tail call void %31(i32 noundef %0, i32 noundef %13) #6
  %32 = load ptr, ptr @omap_pm_ops.0, align 4
  %33 = tail call i32 %32(i32 noundef %15) #6
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %34, i8 noundef zeroext 3) #6
  br label %36

36:                                               ; preds = %30, %2
  %37 = phi i32 [ 0, %30 ], [ -6, %2 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_mpuss_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = icmp eq i32 %1, 1144000580
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %103

4:                                                ; preds = %0
  %5 = load i32, ptr @__per_cpu_offset, align 4
  %6 = add i32 %5, ptrtoint (ptr @omap4_pm_info to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr @sar_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %8, i32 4068
  %12 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = tail call i32 @omap_rev() #6
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 68
  %16 = load ptr, ptr @sar_base, align 4
  %17 = select i1 %15, i32 2564, i32 3584
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %7, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %16, i32 4080
  %21 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %7, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %10, %4
  %23 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #6
  store ptr %23, ptr %7, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %103

27:                                               ; preds = %22
  %28 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %23) #6
  %29 = load i32, ptr @cpu_context_offset, align 4
  %30 = trunc i32 %29 to i16
  %31 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 1024, i16 noundef zeroext %30) #6
  %32 = load i32, ptr @cpu_context_offset, align 4
  %33 = trunc i32 %32 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %31, i16 noundef signext 1024, i16 noundef zeroext %33) #6
  %34 = load ptr, ptr %7, align 4
  %35 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %34, i8 noundef zeroext 3) #6
  %36 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @__per_cpu_offset, i32 0, i32 1), align 4
  %37 = add i32 %36, ptrtoint (ptr @omap4_pm_info to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = load ptr, ptr @sar_base, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %27
  %42 = getelementptr i8, ptr %39, i32 4072
  %43 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %38, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = tail call i32 @omap_rev() #6
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 68
  %47 = load ptr, ptr @sar_base, align 4
  %48 = select i1 %46, i32 2568, i32 3588
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %38, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %47, i32 4084
  %52 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %38, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %41, %27
  %54 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.4) #6
  store ptr %54, ptr %38, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %103

58:                                               ; preds = %53
  %59 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %54) #6
  %60 = load i32, ptr @cpu_context_offset, align 4
  %61 = trunc i32 %60 to i16
  %62 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 2048, i16 noundef zeroext %61) #6
  %63 = load i32, ptr @cpu_context_offset, align 4
  %64 = trunc i32 %63 to i16
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %62, i16 noundef signext 2048, i16 noundef zeroext %64) #6
  %65 = load ptr, ptr %38, align 4
  %66 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %65, i8 noundef zeroext 3) #6
  %67 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.6) #6
  store ptr %67, ptr @mpuss_pd, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %103

71:                                               ; preds = %58
  %72 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef nonnull %67) #6
  %73 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #6
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %73, i8 noundef zeroext 1, i16 noundef signext 768, i16 noundef zeroext 36) #6
  %74 = load ptr, ptr @sar_base, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @omap_type() #6
  %78 = icmp ne i32 %77, 3
  %79 = zext i1 %78 to i32
  %80 = load ptr, ptr @sar_base, align 4
  %81 = getelementptr i8, ptr %80, i32 4076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #6, !srcloc !9
  tail call fastcc void @save_l2x0_context() #9
  br label %82

82:                                               ; preds = %76, %71
  %83 = tail call i32 @omap_rev() #6
  %84 = and i32 %83, 255
  %85 = icmp eq i32 %84, 68
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store ptr @omap4_finish_suspend, ptr @omap_pm_ops.0, align 4
  store ptr @omap4_cpu_resume, ptr @omap_pm_ops.1, align 4
  store ptr @scu_pwrst_prepare, ptr @omap_pm_ops.2, align 4
  store ptr @omap4_secondary_startup, ptr @omap_pm_ops.3, align 4
  store i32 8, ptr @cpu_context_offset, align 4
  br label %98

87:                                               ; preds = %82
  %88 = tail call i32 @omap_rev() #6
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, 84
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = tail call i32 @omap_rev() #6
  %93 = and i32 %92, -16777216
  %94 = icmp eq i32 %93, 117440512
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %87
  store i32 36, ptr @cpu_context_offset, align 4
  %96 = tail call i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext 512, i16 noundef zeroext 4) #6
  %97 = or i32 %96, 50331648
  tail call void @omap4_prcm_mpu_write_inst_reg(i32 noundef %97, i16 noundef signext 512, i16 noundef zeroext 4) #6
  br label %98

98:                                               ; preds = %95, %91, %86
  %99 = tail call i32 @omap_rev() #6
  %100 = and i32 %99, -1048576
  %101 = icmp eq i32 %100, 1147142144
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store ptr @omap4460_secondary_startup, ptr @omap_pm_ops.3, align 4
  br label %103

103:                                              ; preds = %102, %98, %69, %56, %25, %3
  %104 = phi i32 [ -19, %3 ], [ -19, %69 ], [ -19, %56 ], [ -19, %25 ], [ 0, %102 ], [ 0, %98 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @save_l2x0_context() unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @omap4_get_l2cache_base() #6
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @sar_base, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %3, i32 4088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !9
  %9 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %10 = load ptr, ptr @sar_base, align 4
  %11 = getelementptr i8, ptr %10, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !9
  br label %12

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_finish_suspend(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_cpu_resume() #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scu_pwrst_prepare(i32 noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @omap4_pm_info to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.omap4_cpu_pm_info, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 1
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i32 3, i32 0
  %14 = select i1 %11, i32 2, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %14) #6, !srcloc !9
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4460_secondary_startup() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap4_get_cpu1_ns_pa_addr() local_unnamed_addr #4 {
  %1 = load i32, ptr @old_cpu1_ns_pa_addr, align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4_mpuss_early_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 68
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @omap_rev() #6
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 84
  br i1 %7, label %8, label %46

8:                                                ; preds = %4, %0
  %9 = tail call ptr @omap4_get_sar_ram_base() #6
  store ptr %9, ptr @sar_base, align 4
  %10 = tail call i32 @omap_rev() #6
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 68
  %13 = load ptr, ptr @sar_base, align 4
  %14 = select i1 %12, i32 2568, i32 3588
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !10
  store i32 %16, ptr @old_cpu1_ns_pa_addr, align 4
  %17 = tail call i32 @omap_rev() #6
  %18 = and i32 %17, -1048576
  %19 = icmp eq i32 %18, 1143996416
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap4_secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !8
  br label %36

22:                                               ; preds = %8
  %23 = tail call i32 @omap_rev() #6
  %24 = and i32 %23, -1048576
  %25 = icmp eq i32 %24, 1147142144
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap4460_secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !8
  br label %36

28:                                               ; preds = %22
  %29 = load i32, ptr @__boot_cpu_mode, align 4
  %30 = and i32 %29, 31
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap5_secondary_hyp_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !8
  br label %36

34:                                               ; preds = %28
  %35 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @omap5_secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !8
  br label %36

36:                                               ; preds = %34, %32, %26, %20
  %37 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %33, %32 ], [ %35, %34 ]
  %38 = tail call i32 @omap_rev() #6
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 68
  %41 = load ptr, ptr @sar_base, align 4
  br i1 %40, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %41, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %37) #6, !srcloc !9
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr i8, ptr %41, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %37) #6, !srcloc !9
  br label %46

46:                                               ; preds = %44, %42, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_hyp_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_write_inst_reg(i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prcm_mpu_write_inst_reg(i32 noundef, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @default_finish_suspend(i32 noundef %0) #0 {
  tail call void @omap_do_wfi() #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dummy_cpu_resume() #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dummy_scu_prepare(i32 noundef %0, i32 noundef %1) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_l2cache_base() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
!8 = !{i64 2148483428, i64 2148483451, i64 2148483483, i64 2148483515, i64 2148483553, i64 2148483583}
!9 = !{i64 957047}
!10 = !{i64 957465}
