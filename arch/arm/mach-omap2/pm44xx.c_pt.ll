; ModuleID = '/llk/IR/arch/arm/mach-omap2/pm44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_dep_map = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.power_state = type { ptr, i32, i32, i32, i32, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@pm44xx_errata = dso_local local_unnamed_addr global i16 0, align 2
@.str = private unnamed_addr constant [29 x i8] c"arch/arm/mach-omap2/pm44xx.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Power Management not supported on OMAP4430 ES1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016Power Management for TI OMAP4+ devices.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\014OMAP4 PM: u-boot >= v2012.07 is required for full PM support\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013Failed to setup powerdomains.\0A\00", align 1
@omap4_static_dep_map = internal unnamed_addr constant [6 x %struct.static_dep_map] [%struct.static_dep_map { ptr @.str.12, ptr @.str.13 }, %struct.static_dep_map { ptr @.str.12, ptr @.str.14 }, %struct.static_dep_map { ptr @.str.12, ptr @.str.15 }, %struct.static_dep_map { ptr @.str.16, ptr @.str.14 }, %struct.static_dep_map { ptr @.str.16, ptr @.str.15 }, %struct.static_dep_map zeroinitializer], align 4
@omap5_dra7_static_dep_map = internal constant [2 x %struct.static_dep_map] [%struct.static_dep_map { ptr @.str.17, ptr @.str.18 }, %struct.static_dep_map zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"\013Failed to initialise static dependencies.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\013Failed to initialise OMAP4 MPUSS\0A\00", align 1
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@cpu_suspend_state = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"l4per\00", align 1
@pwrst_list = internal global %struct.list_head { ptr @pwrst_list, ptr @pwrst_list }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"\013Failed lookup %s or %s for wakeup dependency\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\013Failed to add %s -> %s wakeup dependency(%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mpuss_clkdm\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"l3_emif_clkdm\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"l3_1_clkdm\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"l3_2_clkdm\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ducati_clkdm\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"emif_clkdm\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"\016Powerdomain (%s) didn't enter target state %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"\012Could not enter target state in pm_suspend\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"\014A possible cause could be an old bootloader - try u-boot >= v2012.07\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"\016Successfully put all powerdomains to target state\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_pm_init_early() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #8
  %2 = and i32 %1, -1048576
  %3 = icmp eq i32 %2, 1147142144
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i16, ptr @pm44xx_errata, align 2
  %6 = or i16 %5, 1
  store i16 %6, ptr @pm44xx_errata, align 2
  br label %7

7:                                                ; preds = %4, %0
  %8 = tail call i32 @omap_rev() #8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 84
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @omap_rev() #8
  %13 = and i32 %12, -16777216
  %14 = icmp eq i32 %13, 117440512
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %7
  %16 = load i16, ptr @pm44xx_errata, align 2
  %17 = or i16 %16, 2
  store i16 %17, ptr @pm44xx_errata, align 2
  br label %18

18:                                               ; preds = %15, %11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_pm_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #8
  %2 = icmp eq i32 %1, 1144000580
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %77

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  %6 = tail call i32 @omap_rev() #8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 68
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = tail call i32 @pwrdm_for_each(ptr noundef nonnull @pwrdms_setup, ptr noundef null) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %77

16:                                               ; preds = %11
  %17 = tail call i32 @omap_rev() #8
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 68
  br i1 %19, label %20, label %47

20:                                               ; preds = %43, %16
  %21 = phi ptr [ %45, %43 ], [ @.str.12, %16 ]
  %22 = phi ptr [ %44, %43 ], [ @omap4_static_dep_map, %16 ]
  %23 = tail call ptr @clkdm_lookup(ptr noundef nonnull %21) #8
  %24 = getelementptr inbounds %struct.static_dep_map, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @clkdm_lookup(ptr noundef %25) #8
  %27 = icmp ne ptr %23, null
  %28 = icmp ne ptr %26, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.static_dep_map, ptr %22, i32 0, i32 1
  %32 = load ptr, ptr %22, align 4
  %33 = load ptr, ptr %31, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %32, ptr noundef %33) #9
  br label %58

35:                                               ; preds = %20
  %36 = tail call i32 @clkdm_add_wkdep(ptr noundef nonnull %23, ptr noundef nonnull %26) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.static_dep_map, ptr %22, i32 0, i32 1
  %40 = load ptr, ptr %22, align 4
  %41 = load ptr, ptr %39, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %40, ptr noundef %41, i32 noundef %36) #9
  br label %58

43:                                               ; preds = %35
  %44 = getelementptr %struct.static_dep_map, ptr %22, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %20

47:                                               ; preds = %16
  %48 = tail call i32 @omap_rev() #8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 84
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @omap_rev() #8
  %53 = and i32 %52, -16777216
  %54 = icmp eq i32 %53, 117440512
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %47
  %56 = tail call fastcc i32 @omap4plus_init_static_deps(ptr noundef nonnull @omap5_dra7_static_dep_map)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %38, %30
  %59 = phi i32 [ %56, %55 ], [ -22, %30 ], [ %36, %38 ]
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %77

61:                                               ; preds = %55, %51, %43
  %62 = tail call i32 @omap4_mpuss_init() #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %77

66:                                               ; preds = %61
  %67 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #8
  tail call void @omap_common_suspend_init(ptr noundef nonnull @omap4_pm_suspend) #8
  store ptr @omap_default_idle, ptr @arm_pm_idle, align 4
  %68 = tail call i32 @omap_rev() #8
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 68
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @omap_rev() #8
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 84
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %66
  %76 = tail call i32 @omap4_idle_init() #9
  br label %77

77:                                               ; preds = %75, %71, %64, %58, %14, %3
  %78 = phi i32 [ -19, %3 ], [ %12, %14 ], [ %59, %58 ], [ %62, %64 ], [ 0, %75 ], [ 0, %71 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwrdms_setup(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(4) @.str.7, i32 noundef 3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i16, ptr @pm44xx_errata, align 2
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  store i1 true, ptr @cpu_suspend_state, align 4
  br label %42

15:                                               ; preds = %6
  %16 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(6) @.str.9, i32 noundef 5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15
  %22 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %0, i8 noundef zeroext 0) #8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2592, i32 noundef 28) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  store ptr %0, ptr %25, align 8
  %28 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %0, i1 noundef zeroext false, i8 noundef zeroext 1) #8
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.power_state, ptr %25, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %0, i1 noundef zeroext true, i8 noundef zeroext 0) #8
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.power_state, ptr %25, i32 0, i32 2
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.power_state, ptr %25, i32 0, i32 5
  %35 = load ptr, ptr @pwrst_list, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store ptr %35, ptr %34, align 4
  %37 = getelementptr inbounds %struct.power_state, ptr %25, i32 0, i32 5, i32 1
  store ptr @pwrst_list, ptr %37, align 8
  store volatile ptr %34, ptr @pwrst_list, align 4
  %38 = load ptr, ptr %25, align 8
  %39 = load i32, ptr %30, align 4
  %40 = trunc i32 %39 to i8
  %41 = tail call i32 @omap_set_pwrdm_state(ptr noundef %38, i8 noundef zeroext %40) #8
  br label %42

42:                                               ; preds = %27, %23, %14, %10, %2
  %43 = phi i32 [ %41, %27 ], [ 0, %2 ], [ 0, %14 ], [ 0, %10 ], [ -12, %23 ]
  ret i32 %43
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap4plus_init_static_deps(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %29, %3
  %7 = phi ptr [ %31, %29 ], [ %4, %3 ]
  %8 = phi ptr [ %30, %29 ], [ %0, %3 ]
  %9 = tail call ptr @clkdm_lookup(ptr noundef nonnull %7) #8
  %10 = getelementptr inbounds %struct.static_dep_map, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @clkdm_lookup(ptr noundef %11) #8
  %13 = icmp ne ptr %9, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.static_dep_map, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %8, align 4
  %19 = load ptr, ptr %17, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %18, ptr noundef %19) #9
  br label %33

21:                                               ; preds = %6
  %22 = tail call i32 @clkdm_add_wkdep(ptr noundef nonnull %9, ptr noundef nonnull %12) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.static_dep_map, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %25, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %26, ptr noundef %27, i32 noundef %22) #9
  br label %33

29:                                               ; preds = %21
  %30 = getelementptr %struct.static_dep_map, ptr %8, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6

33:                                               ; preds = %29, %24, %16, %3, %1
  %34 = phi i32 [ %22, %24 ], [ -22, %16 ], [ 0, %1 ], [ 0, %3 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_mpuss_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_common_suspend_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pm_suspend() #4 {
  %1 = tail call ptr @llvm.thread.pointer() #8
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = load ptr, ptr @pwrst_list, align 4
  %5 = icmp eq ptr %4, @pwrst_list
  br i1 %5, label %35, label %9

6:                                                ; preds = %9
  %7 = load ptr, ptr @pwrst_list, align 4
  %8 = icmp eq ptr %7, @pwrst_list
  br i1 %8, label %35, label %20

9:                                                ; preds = %9, %0
  %10 = phi ptr [ %18, %9 ], [ %4, %0 ]
  %11 = getelementptr i8, ptr %10, i32 -20
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %12) #8
  %14 = getelementptr i8, ptr %10, i32 -8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = tail call i32 @pwrdm_read_logic_retst(ptr noundef %15) #8
  %17 = getelementptr i8, ptr %10, i32 -4
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = icmp eq ptr %18, @pwrst_list
  br i1 %19, label %6, label %9

20:                                               ; preds = %20, %6
  %21 = phi ptr [ %33, %20 ], [ %7, %6 ]
  %22 = getelementptr i8, ptr %21, i32 -20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 -16
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = tail call i32 @omap_set_pwrdm_state(ptr noundef %23, i8 noundef zeroext %26) #8
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr i8, ptr %21, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %28, i8 noundef zeroext %31) #8
  %33 = load ptr, ptr %21, align 4
  %34 = icmp eq ptr %33, @pwrst_list
  br i1 %34, label %35, label %20

35:                                               ; preds = %20, %6, %0
  %36 = load i1, ptr @cpu_suspend_state, align 4
  %37 = zext i1 %36 to i32
  %38 = tail call i32 @omap4_enter_lowpower(i32 noundef %3, i32 noundef %37) #8
  %39 = load ptr, ptr @pwrst_list, align 4
  %40 = icmp eq ptr %39, @pwrst_list
  br i1 %40, label %72, label %41

41:                                               ; preds = %54, %35
  %42 = phi ptr [ %66, %54 ], [ %39, %35 ]
  %43 = phi i32 [ %55, %54 ], [ 0, %35 ]
  %44 = getelementptr i8, ptr %42, i32 -20
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %45) #8
  %47 = getelementptr i8, ptr %42, i32 -16
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load ptr, ptr %44, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %52, i32 noundef %48) #9
  br label %54

54:                                               ; preds = %50, %41
  %55 = phi i32 [ -1, %50 ], [ %43, %41 ]
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr i8, ptr %42, i32 -8
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = tail call i32 @omap_set_pwrdm_state(ptr noundef %56, i8 noundef zeroext %59) #8
  %61 = load ptr, ptr %44, align 4
  %62 = getelementptr i8, ptr %42, i32 -4
  %63 = load i32, ptr %62, align 4
  %64 = trunc i32 %63 to i8
  %65 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %61, i8 noundef zeroext %64) #8
  %66 = load ptr, ptr %42, align 4
  %67 = icmp eq ptr %66, @pwrst_list
  br i1 %67, label %68, label %41

68:                                               ; preds = %54
  %69 = icmp eq i32 %55, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  br label %72

72:                                               ; preds = %70, %68, %35
  %73 = phi ptr [ @.str.21, %70 ], [ @.str.22, %35 ], [ @.str.22, %68 ]
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %73) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_default_idle() #4 {
  tail call void @omap_do_wfi() #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap4_idle_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_wkdep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_logic_retst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_enter_lowpower(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
