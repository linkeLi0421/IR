; ModuleID = '/llk/IR/arch/arm/mach-omap2/clockdomain.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.clkdm_autodep = type { %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }
%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@arch_clkdm = internal unnamed_addr global ptr null, align 4
@clkdm_list = internal global %struct.list_head { ptr @clkdm_list, ptr @clkdm_list }, align 4
@autodeps = internal unnamed_addr global ptr null, align 4
@clkdm_complete_init.nb = internal global %struct.notifier_block zeroinitializer, align 4
@.str = private unnamed_addr constant [34 x i8] c"arch/arm/mach-omap2/clockdomain.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\013clockdomain: %s: powerdomain %s does not exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\013clockdomain: autodeps: clockdomain %s does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"clockdomain: %s: could not find clkdm %s while resolving dependencies - should never happen\00", align 1
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @clkdm_register_platform_funcs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_clkdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr %0, ptr @arch_clkdm, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ], [ -17, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_register_clkdms(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @arch_clkdm, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %44, %6
  %10 = phi ptr [ %46, %44 ], [ %7, %6 ]
  %11 = phi ptr [ %45, %44 ], [ %0, %6 ]
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.clockdomain, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @pwrdm_lookup(ptr noundef %16) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %15, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %20, ptr noundef %21) #8
  br label %44

23:                                               ; preds = %14
  store ptr %17, ptr %15, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %28, %30 ], [ @clkdm_list, %23 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @clkdm_list
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 -36
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef nonnull %24, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %28, i32 -36
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %26, %23
  %39 = getelementptr inbounds %struct.clockdomain, ptr %10, i32 0, i32 13
  %40 = load ptr, ptr @clkdm_list, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store ptr %40, ptr %39, align 4
  %42 = getelementptr inbounds %struct.clockdomain, ptr %10, i32 0, i32 13, i32 1
  store ptr @clkdm_list, ptr %42, align 4
  store volatile ptr %39, ptr @clkdm_list, align 4
  %43 = tail call i32 @pwrdm_add_clkdm(ptr noundef nonnull %17, ptr noundef nonnull %10) #7
  br label %44

44:                                               ; preds = %38, %35, %19, %9
  %45 = getelementptr ptr, ptr %11, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9

48:                                               ; preds = %44, %6, %4, %1
  %49 = phi i32 [ -13, %1 ], [ -22, %4 ], [ 0, %6 ], [ 0, %44 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_register_autodeps(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load volatile ptr, ptr @clkdm_list, align 4
  %3 = icmp eq ptr %2, @clkdm_list
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @autodeps, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  store ptr %0, ptr @autodeps, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %32, %9
  %13 = phi ptr [ %34, %32 ], [ %10, %9 ]
  %14 = phi ptr [ %33, %32 ], [ %0, %9 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %18, %20 ], [ @clkdm_list, %12 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @clkdm_list
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -36
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %18, i32 -36
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %16
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #8
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %26, %25 ], [ inttoptr (i32 -2 to ptr), %28 ]
  store ptr %31, ptr %14, align 4
  br label %32

32:                                               ; preds = %30, %12
  %33 = getelementptr %struct.clkdm_autodep, ptr %14, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12

36:                                               ; preds = %32, %9, %6, %4, %1
  %37 = phi i32 [ -13, %1 ], [ -22, %4 ], [ -17, %6 ], [ 0, %9 ], [ 0, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_complete_init() local_unnamed_addr #1 {
  %1 = load volatile ptr, ptr @clkdm_list, align 4
  %2 = icmp eq ptr %1, @clkdm_list
  br i1 %2, label %98, label %3

3:                                                ; preds = %89, %0
  %4 = phi ptr [ %90, %89 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -36
  %6 = getelementptr i8, ptr %4, i32 -32
  %7 = load ptr, ptr %6, align 4
  tail call void @pwrdm_lock(ptr noundef %7) #7
  tail call void @clkdm_deny_idle_nolock(ptr noundef %5) #7
  %8 = load ptr, ptr %6, align 4
  tail call void @pwrdm_unlock(ptr noundef %8) #7
  %9 = getelementptr i8, ptr %4, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %35, %3
  %13 = phi ptr [ %36, %35 ], [ %10, %3 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clkdm_dep, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %25, %16
  %21 = phi ptr [ %22, %25 ], [ @clkdm_list, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @clkdm_list
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr null, ptr %17, align 4
  br label %33

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %22, i32 -36
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %20

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %22, i32 -36
  store ptr %31, ptr %17, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !8

33:                                               ; preds = %30, %24
  %34 = load ptr, ptr %5, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %34, ptr noundef nonnull %14) #7
  br label %35

35:                                               ; preds = %33, %30, %16
  %36 = getelementptr %struct.clkdm_dep, ptr %13, i32 1
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %12

38:                                               ; preds = %35, %12, %3
  %39 = icmp eq ptr %5, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @arch_clkdm, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.clkdm_ops, ptr %41, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef nonnull %5) #7
  br label %49

49:                                               ; preds = %47, %43, %40, %38
  %50 = getelementptr i8, ptr %4, i32 -12
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %79, label %53

53:                                               ; preds = %76, %49
  %54 = phi ptr [ %77, %76 ], [ %51, %49 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.clkdm_dep, ptr %54, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %66, %57
  %62 = phi ptr [ %63, %66 ], [ @clkdm_list, %57 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @clkdm_list
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store ptr null, ptr %58, align 4
  br label %74

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %63, i32 -36
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef %68) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %61

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %63, i32 -36
  store ptr %72, ptr %58, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76, !prof !8

74:                                               ; preds = %71, %65
  %75 = load ptr, ptr %5, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %75, ptr noundef nonnull %55) #7
  br label %76

76:                                               ; preds = %74, %71, %57
  %77 = getelementptr %struct.clkdm_dep, ptr %54, i32 1
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %53

79:                                               ; preds = %76, %53, %49
  br i1 %39, label %89, label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr @arch_clkdm, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.clkdm_ops, ptr %81, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef nonnull %5) #7
  br label %89

89:                                               ; preds = %87, %83, %80, %79
  %90 = load ptr, ptr %4, align 4
  %91 = icmp eq ptr %90, @clkdm_list
  br i1 %91, label %92, label %3

92:                                               ; preds = %89
  %93 = tail call i32 @omap_rev() #7
  %94 = and i32 %93, -16777216
  %95 = icmp eq i32 %94, 1124073472
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  store ptr @cpu_notifier, ptr @clkdm_complete_init.nb, align 4
  %97 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @clkdm_complete_init.nb) #7
  br label %98

98:                                               ; preds = %96, %92, %0
  %99 = phi i32 [ -13, %0 ], [ 0, %96 ], [ 0, %92 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_deny_idle(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @pwrdm_lock(ptr noundef %3) #7
  tail call void @clkdm_deny_idle_nolock(ptr noundef %0)
  %4 = load ptr, ptr %2, align 4
  tail call void @pwrdm_unlock(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_clear_all_wkdeps(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_clkdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clkdm_ops, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ %11, %10 ], [ -22, %1 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_clear_all_sleepdeps(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_clkdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clkdm_ops, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ %11, %10 ], [ -22, %1 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  switch i32 %1, label %40 [
    i32 3, label %4
    i32 5, label %22
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @enable_off_mode, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %19, %4
  %8 = phi ptr [ %9, %19 ], [ @clkdm_list, %4 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @clkdm_list
  br i1 %10, label %40, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -36
  %13 = load ptr, ptr @arch_clkdm, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.clkdm_ops, ptr %13, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %12) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %7, label %40

22:                                               ; preds = %3
  %23 = load i32, ptr @enable_off_mode, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %37, %22
  %26 = phi ptr [ %27, %37 ], [ @clkdm_list, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @clkdm_list
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -36
  %31 = load ptr, ptr @arch_clkdm, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.clkdm_ops, ptr %31, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef %30) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %25, label %40

40:                                               ; preds = %37, %33, %29, %25, %22, %19, %15, %11, %7, %4, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @clkdm_lookup(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %5, %7 ], [ @clkdm_list, %1 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @clkdm_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -36
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -36
  br label %14

14:                                               ; preds = %12, %3, %1
  %15 = phi ptr [ null, %1 ], [ %13, %12 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_for_each(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %6, %8 ], [ @clkdm_list, %2 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @clkdm_list
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -36
  %10 = tail call i32 %0(ptr noundef %9, ptr noundef %1) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ -22, %2 ], [ 0, %4 ], [ %10, %8 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @clkdm_get_pwrdm(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_add_wkdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %110

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %110

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @pwrdm_lock(ptr noundef %48) #7
  %49 = load ptr, ptr %7, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %84, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %54

54:                                               ; preds = %76, %51
  %55 = phi ptr [ %78, %76 ], [ %52, %51 ]
  %56 = phi ptr [ %77, %76 ], [ %49, %51 ]
  %57 = getelementptr inbounds %struct.clkdm_dep, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %64, %54
  %61 = phi ptr [ %62, %64 ], [ @clkdm_list, %54 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, @clkdm_list
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 -36
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef %66) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %60

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %62, i32 -36
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi ptr [ %70, %69 ], [ null, %60 ]
  store ptr %72, ptr %57, align 4
  br label %73

73:                                               ; preds = %71, %54
  %74 = phi ptr [ %72, %71 ], [ %58, %54 ]
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr %struct.clkdm_dep, ptr %56, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %54

80:                                               ; preds = %73
  %81 = icmp eq ptr %55, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %82, %80, %76, %51, %46
  %85 = phi ptr [ %56, %82 ], [ inttoptr (i32 -22 to ptr), %46 ], [ inttoptr (i32 -2 to ptr), %80 ], [ inttoptr (i32 -2 to ptr), %51 ], [ inttoptr (i32 -2 to ptr), %76 ]
  %86 = ptrtoint ptr %85 to i32
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi ptr [ %85, %84 ], [ %56, %82 ]
  %89 = phi i32 [ %86, %84 ], [ 0, %82 ]
  %90 = load ptr, ptr @arch_clkdm, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %90, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = icmp eq i32 %89, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.clkdm_dep, ptr %88, i32 0, i32 2
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 4
  %101 = icmp eq i16 %99, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load ptr, ptr %90, align 4
  %104 = tail call i32 %103(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %105

105:                                              ; preds = %102, %97, %95, %92, %87
  %106 = phi i32 [ %89, %95 ], [ %104, %102 ], [ 0, %97 ], [ -22, %87 ], [ -22, %92 ]
  %107 = load ptr, ptr %16, align 4
  %108 = getelementptr inbounds %struct.clockdomain, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  tail call void @pwrdm_unlock(ptr noundef %109) #7
  br label %110

110:                                              ; preds = %105, %43, %2
  %111 = phi i32 [ %45, %43 ], [ %106, %105 ], [ -22, %2 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwrdm_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwrdm_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_del_wkdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %111

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %111

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @pwrdm_lock(ptr noundef %48) #7
  %49 = load ptr, ptr %7, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %84, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %54

54:                                               ; preds = %76, %51
  %55 = phi ptr [ %78, %76 ], [ %52, %51 ]
  %56 = phi ptr [ %77, %76 ], [ %49, %51 ]
  %57 = getelementptr inbounds %struct.clkdm_dep, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %64, %54
  %61 = phi ptr [ %62, %64 ], [ @clkdm_list, %54 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, @clkdm_list
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 -36
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef %66) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %60

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %62, i32 -36
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi ptr [ %70, %69 ], [ null, %60 ]
  store ptr %72, ptr %57, align 4
  br label %73

73:                                               ; preds = %71, %54
  %74 = phi ptr [ %72, %71 ], [ %58, %54 ]
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr %struct.clkdm_dep, ptr %56, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %54

80:                                               ; preds = %73
  %81 = icmp eq ptr %55, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %82, %80, %76, %51, %46
  %85 = phi ptr [ %56, %82 ], [ inttoptr (i32 -22 to ptr), %46 ], [ inttoptr (i32 -2 to ptr), %80 ], [ inttoptr (i32 -2 to ptr), %51 ], [ inttoptr (i32 -2 to ptr), %76 ]
  %86 = ptrtoint ptr %85 to i32
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi ptr [ %85, %84 ], [ %56, %82 ]
  %89 = phi i32 [ %86, %84 ], [ 0, %82 ]
  %90 = load ptr, ptr @arch_clkdm, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.clkdm_ops, ptr %90, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %92
  %97 = icmp eq i32 %89, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.clkdm_dep, ptr %88, i32 0, i32 2
  %100 = load i16, ptr %99, align 4
  %101 = add i16 %100, -1
  store i16 %101, ptr %99, align 4
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load ptr, ptr %93, align 4
  %105 = tail call i32 %104(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %106

106:                                              ; preds = %103, %98, %96, %92, %87
  %107 = phi i32 [ %89, %96 ], [ %105, %103 ], [ 0, %98 ], [ -22, %87 ], [ -22, %92 ]
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr inbounds %struct.clockdomain, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void @pwrdm_unlock(ptr noundef %110) #7
  br label %111

111:                                              ; preds = %106, %43, %2
  %112 = phi i32 [ %45, %43 ], [ %107, %106 ], [ -22, %2 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_read_wkdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %45, %43 ], [ 0, %41 ]
  %48 = load ptr, ptr @arch_clkdm, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.clkdm_ops, ptr %48, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call i32 %52(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %58

58:                                               ; preds = %56, %54, %50, %46, %2
  %59 = phi i32 [ %57, %56 ], [ -22, %2 ], [ %47, %54 ], [ -22, %46 ], [ -22, %50 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_add_sleepdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %112

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %112

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @pwrdm_lock(ptr noundef %48) #7
  %49 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %50, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %77, %52
  %56 = phi ptr [ %79, %77 ], [ %53, %52 ]
  %57 = phi ptr [ %78, %77 ], [ %50, %52 ]
  %58 = getelementptr inbounds %struct.clkdm_dep, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %65, %55
  %62 = phi ptr [ %63, %65 ], [ @clkdm_list, %55 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @clkdm_list
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %63, i32 -36
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef %67) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %61

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %63, i32 -36
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi ptr [ %71, %70 ], [ null, %61 ]
  store ptr %73, ptr %58, align 4
  br label %74

74:                                               ; preds = %72, %55
  %75 = phi ptr [ %73, %72 ], [ %59, %55 ]
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr %struct.clkdm_dep, ptr %57, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %55

81:                                               ; preds = %74
  %82 = icmp eq ptr %56, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %88

85:                                               ; preds = %83, %81, %77, %52, %46
  %86 = phi ptr [ %57, %83 ], [ inttoptr (i32 -22 to ptr), %46 ], [ inttoptr (i32 -2 to ptr), %81 ], [ inttoptr (i32 -2 to ptr), %52 ], [ inttoptr (i32 -2 to ptr), %77 ]
  %87 = ptrtoint ptr %86 to i32
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi ptr [ %86, %85 ], [ %57, %83 ]
  %90 = phi i32 [ %87, %85 ], [ 0, %83 ]
  %91 = load ptr, ptr @arch_clkdm, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.clkdm_ops, ptr %91, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = icmp eq i32 %90, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.clkdm_dep, ptr %89, i32 0, i32 3
  %101 = load i16, ptr %100, align 2
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 2
  %103 = icmp eq i16 %101, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr %94, align 4
  %106 = tail call i32 %105(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %107

107:                                              ; preds = %104, %99, %97, %93, %88
  %108 = phi i32 [ %90, %97 ], [ %106, %104 ], [ 0, %99 ], [ -22, %88 ], [ -22, %93 ]
  %109 = load ptr, ptr %16, align 4
  %110 = getelementptr inbounds %struct.clockdomain, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void @pwrdm_unlock(ptr noundef %111) #7
  br label %112

112:                                              ; preds = %107, %43, %2
  %113 = phi i32 [ %45, %43 ], [ %108, %107 ], [ -22, %2 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_del_sleepdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %112

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %112

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @pwrdm_lock(ptr noundef %48) #7
  %49 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %50, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %77, %52
  %56 = phi ptr [ %79, %77 ], [ %53, %52 ]
  %57 = phi ptr [ %78, %77 ], [ %50, %52 ]
  %58 = getelementptr inbounds %struct.clkdm_dep, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %65, %55
  %62 = phi ptr [ %63, %65 ], [ @clkdm_list, %55 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @clkdm_list
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %63, i32 -36
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @strcmp(ptr noundef nonnull %56, ptr noundef %67) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %61

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %63, i32 -36
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi ptr [ %71, %70 ], [ null, %61 ]
  store ptr %73, ptr %58, align 4
  br label %74

74:                                               ; preds = %72, %55
  %75 = phi ptr [ %73, %72 ], [ %59, %55 ]
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr %struct.clkdm_dep, ptr %57, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %55

81:                                               ; preds = %74
  %82 = icmp eq ptr %56, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %88

85:                                               ; preds = %83, %81, %77, %52, %46
  %86 = phi ptr [ %57, %83 ], [ inttoptr (i32 -22 to ptr), %46 ], [ inttoptr (i32 -2 to ptr), %81 ], [ inttoptr (i32 -2 to ptr), %52 ], [ inttoptr (i32 -2 to ptr), %77 ]
  %87 = ptrtoint ptr %86 to i32
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi ptr [ %86, %85 ], [ %57, %83 ]
  %90 = phi i32 [ %87, %85 ], [ 0, %83 ]
  %91 = load ptr, ptr @arch_clkdm, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.clkdm_ops, ptr %91, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = icmp eq i32 %90, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.clkdm_dep, ptr %89, i32 0, i32 3
  %101 = load i16, ptr %100, align 2
  %102 = add i16 %101, -1
  store i16 %102, ptr %100, align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr %94, align 4
  %106 = tail call i32 %105(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %107

107:                                              ; preds = %104, %99, %97, %93, %88
  %108 = phi i32 [ %90, %97 ], [ %106, %104 ], [ 0, %99 ], [ -22, %88 ], [ -22, %93 ]
  %109 = load ptr, ptr %16, align 4
  %110 = getelementptr inbounds %struct.clockdomain, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void @pwrdm_unlock(ptr noundef %111) #7
  br label %112

112:                                              ; preds = %107, %43, %2
  %113 = phi i32 [ %45, %43 ], [ %108, %107 ], [ -22, %2 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_read_sleepdep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %37, %35 ], [ %11, %10 ]
  %15 = phi ptr [ %36, %35 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.clkdm_dep, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %21, %23 ], [ @clkdm_list, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @clkdm_list
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %21, i32 -36
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi ptr [ %29, %28 ], [ null, %19 ]
  store ptr %31, ptr %16, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %17, %13 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.clkdm_dep, ptr %15, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %13

39:                                               ; preds = %32
  %40 = icmp eq ptr %14, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %41, %39, %35, %10, %6
  %44 = phi ptr [ %15, %41 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -2 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %35 ]
  %45 = ptrtoint ptr %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %45, %43 ], [ 0, %41 ]
  %48 = load ptr, ptr @arch_clkdm, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.clkdm_ops, ptr %48, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call i32 %52(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  br label %58

58:                                               ; preds = %56, %54, %50, %46, %2
  %59 = phi i32 [ %57, %56 ], [ -22, %2 ], [ %47, %54 ], [ -22, %46 ], [ -22, %50 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_sleep_nolock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @arch_clkdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.clkdm_ops, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1
  %19 = load ptr, ptr %12, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %0) #7
  %21 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %22) #7
  %24 = or i32 %23, %20
  br label %25

25:                                               ; preds = %15, %11, %8, %3, %1
  %26 = phi i32 [ %24, %15 ], [ -22, %1 ], [ -22, %3 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_state_switch_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_sleep(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @pwrdm_lock(ptr noundef %3) #7
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @arch_clkdm, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.clkdm_ops, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -2
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %0) #7
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %23) #7
  %25 = or i32 %24, %22
  br label %26

26:                                               ; preds = %17, %13, %10, %5, %1
  %27 = phi i32 [ %25, %17 ], [ -22, %1 ], [ -22, %5 ], [ -22, %13 ], [ -22, %10 ]
  %28 = load ptr, ptr %2, align 4
  tail call void @pwrdm_unlock(ptr noundef %28) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_wakeup_nolock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @arch_clkdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.clkdm_ops, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1
  %19 = load ptr, ptr %12, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %0) #7
  %21 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %22) #7
  %24 = or i32 %23, %20
  br label %25

25:                                               ; preds = %15, %11, %8, %3, %1
  %26 = phi i32 [ %24, %15 ], [ -22, %1 ], [ -22, %3 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_wakeup(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @pwrdm_lock(ptr noundef %3) #7
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @arch_clkdm, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.clkdm_ops, ptr %11, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -2
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %0) #7
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %23) #7
  %25 = or i32 %24, %22
  br label %26

26:                                               ; preds = %17, %13, %10, %5, %1
  %27 = phi i32 [ %25, %17 ], [ -22, %1 ], [ -22, %5 ], [ -22, %13 ], [ -22, %10 ]
  %28 = load ptr, ptr %2, align 4
  tail call void @pwrdm_unlock(ptr noundef %28) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_allow_idle_nolock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 949, i32 noundef 9, ptr noundef null) #7
  %8 = load i32, ptr %4, align 4
  br label %11

9:                                                ; preds = %3
  %10 = add i32 %5, -1
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @arch_clkdm, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.clkdm_ops, ptr %24, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, -2
  store i8 %33, ptr %31, align 1
  %34 = load ptr, ptr %27, align 4
  %35 = tail call i32 %34(ptr noundef nonnull %0) #7
  %36 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %37) #7
  br label %39

39:                                               ; preds = %30, %26, %23, %18, %14
  %40 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = and i32 %42, 64
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @arch_clkdm, align 4
  %49 = icmp ne ptr %48, null
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.clkdm_ops, ptr %48, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 1
  %59 = load ptr, ptr %52, align 4
  tail call void %59(ptr noundef nonnull %0) #7
  %60 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %61) #7
  br label %63

63:                                               ; preds = %55, %51, %45, %39, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_allow_idle(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @pwrdm_lock(ptr noundef %3) #7
  tail call void @clkdm_allow_idle_nolock(ptr noundef %0)
  %4 = load ptr, ptr %2, align 4
  tail call void @pwrdm_unlock(ptr noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_deny_idle_nolock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %53, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @arch_clkdm, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.clkdm_ops, ptr %14, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -2
  store i8 %23, ptr %21, align 1
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %0) #7
  %26 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %27) #7
  %29 = load i8, ptr %9, align 2
  br label %30

30:                                               ; preds = %20, %16, %13, %8
  %31 = phi i8 [ %29, %20 ], [ %10, %16 ], [ %10, %13 ], [ %10, %8 ]
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = and i32 %32, 64
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr @arch_clkdm, align 4
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.clkdm_ops, ptr %38, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, -2
  store i8 %48, ptr %46, align 1
  %49 = load ptr, ptr %42, align 4
  tail call void %49(ptr noundef nonnull %0) #7
  %50 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %51) #7
  br label %53

53:                                               ; preds = %45, %41, %35, %30, %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clkdm_in_hwsup(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ %7, %3 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clkdm_missing_idle_reporting(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 64
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ %7, %3 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_add_autodeps(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @autodeps, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %143, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %143

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %143, label %12

12:                                               ; preds = %9
  %13 = icmp ne ptr %0, null
  %14 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  br label %16

16:                                               ; preds = %139, %12
  %17 = phi ptr [ %10, %12 ], [ %141, %139 ]
  %18 = phi ptr [ %2, %12 ], [ %140, %139 ]
  %19 = icmp ule ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = and i1 %13, %19
  br i1 %20, label %21, label %139

21:                                               ; preds = %16
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %49, %24
  %28 = phi ptr [ %51, %49 ], [ %25, %24 ]
  %29 = phi ptr [ %50, %49 ], [ %22, %24 ]
  %30 = getelementptr inbounds %struct.clkdm_dep, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %37, %27
  %34 = phi ptr [ %35, %37 ], [ @clkdm_list, %27 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, @clkdm_list
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 -36
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %33

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %35, i32 -36
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %43, %42 ], [ null, %33 ]
  store ptr %45, ptr %30, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi ptr [ %45, %44 ], [ %31, %27 ]
  %48 = icmp eq ptr %47, %17
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr %struct.clkdm_dep, ptr %29, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %27

53:                                               ; preds = %46
  %54 = icmp eq ptr %28, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %60

57:                                               ; preds = %55, %53, %49, %24, %21
  %58 = phi ptr [ %29, %55 ], [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -2 to ptr), %53 ], [ inttoptr (i32 -2 to ptr), %24 ], [ inttoptr (i32 -2 to ptr), %49 ]
  %59 = ptrtoint ptr %58 to i32
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %58, %57 ], [ %29, %55 ]
  %62 = phi i32 [ %59, %57 ], [ 0, %55 ]
  %63 = load ptr, ptr @arch_clkdm, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.clkdm_ops, ptr %63, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ne ptr %67, null
  %69 = icmp eq i32 %62, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.clkdm_dep, ptr %61, i32 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 2
  %75 = icmp eq i16 %73, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %66, align 4
  %78 = tail call i32 %77(ptr noundef nonnull %0, ptr noundef nonnull %17) #7
  br label %79

79:                                               ; preds = %76, %71, %65, %60
  %80 = load ptr, ptr %18, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %139, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %15, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %118, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %83, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %118, label %88

88:                                               ; preds = %110, %85
  %89 = phi ptr [ %112, %110 ], [ %86, %85 ]
  %90 = phi ptr [ %111, %110 ], [ %83, %85 ]
  %91 = getelementptr inbounds %struct.clkdm_dep, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %98, %88
  %95 = phi ptr [ %96, %98 ], [ @clkdm_list, %88 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, @clkdm_list
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %96, i32 -36
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @strcmp(ptr noundef nonnull %89, ptr noundef %100) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %94

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %96, i32 -36
  br label %105

105:                                              ; preds = %103, %94
  %106 = phi ptr [ %104, %103 ], [ null, %94 ]
  store ptr %106, ptr %91, align 4
  br label %107

107:                                              ; preds = %105, %88
  %108 = phi ptr [ %106, %105 ], [ %92, %88 ]
  %109 = icmp eq ptr %108, %80
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr %struct.clkdm_dep, ptr %90, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %88

114:                                              ; preds = %107
  %115 = icmp eq ptr %89, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114, %110, %85, %82
  %119 = phi ptr [ %90, %116 ], [ inttoptr (i32 -22 to ptr), %82 ], [ inttoptr (i32 -2 to ptr), %114 ], [ inttoptr (i32 -2 to ptr), %85 ], [ inttoptr (i32 -2 to ptr), %110 ]
  %120 = ptrtoint ptr %119 to i32
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi ptr [ %119, %118 ], [ %90, %116 ]
  %123 = phi i32 [ %120, %118 ], [ 0, %116 ]
  %124 = load ptr, ptr @arch_clkdm, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr %124, align 4
  %128 = icmp ne ptr %127, null
  %129 = icmp eq i32 %123, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.clkdm_dep, ptr %122, i32 0, i32 2
  %133 = load i16, ptr %132, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %132, align 4
  %135 = icmp eq i16 %133, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load ptr, ptr %124, align 4
  %138 = tail call i32 %137(ptr noundef nonnull %0, ptr noundef nonnull %80) #7
  br label %139

139:                                              ; preds = %136, %131, %126, %121, %79, %16
  %140 = getelementptr %struct.clkdm_autodep, ptr %18, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %16

143:                                              ; preds = %139, %9, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_del_autodeps(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @autodeps, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %144, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %144

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %144, label %12

12:                                               ; preds = %9
  %13 = icmp ne ptr %0, null
  %14 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  br label %16

16:                                               ; preds = %140, %12
  %17 = phi ptr [ %10, %12 ], [ %142, %140 ]
  %18 = phi ptr [ %2, %12 ], [ %141, %140 ]
  %19 = icmp ule ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = and i1 %13, %19
  br i1 %20, label %21, label %140

21:                                               ; preds = %16
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %49, %24
  %28 = phi ptr [ %51, %49 ], [ %25, %24 ]
  %29 = phi ptr [ %50, %49 ], [ %22, %24 ]
  %30 = getelementptr inbounds %struct.clkdm_dep, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %37, %27
  %34 = phi ptr [ %35, %37 ], [ @clkdm_list, %27 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, @clkdm_list
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 -36
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %33

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %35, i32 -36
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %43, %42 ], [ null, %33 ]
  store ptr %45, ptr %30, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi ptr [ %45, %44 ], [ %31, %27 ]
  %48 = icmp eq ptr %47, %17
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr %struct.clkdm_dep, ptr %29, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %27

53:                                               ; preds = %46
  %54 = icmp eq ptr %28, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %60

57:                                               ; preds = %55, %53, %49, %24, %21
  %58 = phi ptr [ %29, %55 ], [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -2 to ptr), %53 ], [ inttoptr (i32 -2 to ptr), %24 ], [ inttoptr (i32 -2 to ptr), %49 ]
  %59 = ptrtoint ptr %58 to i32
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %58, %57 ], [ %29, %55 ]
  %62 = phi i32 [ %59, %57 ], [ 0, %55 ]
  %63 = load ptr, ptr @arch_clkdm, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.clkdm_ops, ptr %63, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ne ptr %67, null
  %69 = icmp eq i32 %62, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.clkdm_dep, ptr %61, i32 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = add i16 %73, -1
  store i16 %74, ptr %72, align 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %66, align 4
  %78 = tail call i32 %77(ptr noundef nonnull %0, ptr noundef nonnull %17) #7
  br label %79

79:                                               ; preds = %76, %71, %65, %60
  %80 = load ptr, ptr %18, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %140, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %15, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %118, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %83, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %118, label %88

88:                                               ; preds = %110, %85
  %89 = phi ptr [ %112, %110 ], [ %86, %85 ]
  %90 = phi ptr [ %111, %110 ], [ %83, %85 ]
  %91 = getelementptr inbounds %struct.clkdm_dep, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %98, %88
  %95 = phi ptr [ %96, %98 ], [ @clkdm_list, %88 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, @clkdm_list
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %96, i32 -36
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @strcmp(ptr noundef nonnull %89, ptr noundef %100) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %94

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %96, i32 -36
  br label %105

105:                                              ; preds = %103, %94
  %106 = phi ptr [ %104, %103 ], [ null, %94 ]
  store ptr %106, ptr %91, align 4
  br label %107

107:                                              ; preds = %105, %88
  %108 = phi ptr [ %106, %105 ], [ %92, %88 ]
  %109 = icmp eq ptr %108, %80
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr %struct.clkdm_dep, ptr %90, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %88

114:                                              ; preds = %107
  %115 = icmp eq ptr %89, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %121

118:                                              ; preds = %116, %114, %110, %85, %82
  %119 = phi ptr [ %90, %116 ], [ inttoptr (i32 -22 to ptr), %82 ], [ inttoptr (i32 -2 to ptr), %114 ], [ inttoptr (i32 -2 to ptr), %85 ], [ inttoptr (i32 -2 to ptr), %110 ]
  %120 = ptrtoint ptr %119 to i32
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi ptr [ %119, %118 ], [ %90, %116 ]
  %123 = phi i32 [ %120, %118 ], [ 0, %116 ]
  %124 = load ptr, ptr @arch_clkdm, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %140, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.clkdm_ops, ptr %124, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp ne ptr %128, null
  %130 = icmp eq i32 %123, 0
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.clkdm_dep, ptr %122, i32 0, i32 2
  %134 = load i16, ptr %133, align 4
  %135 = add i16 %134, -1
  store i16 %135, ptr %133, align 4
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load ptr, ptr %127, align 4
  %139 = tail call i32 %138(ptr noundef nonnull %0, ptr noundef nonnull %80) #7
  br label %140

140:                                              ; preds = %137, %132, %126, %121, %79, %16
  %141 = getelementptr %struct.clkdm_autodep, ptr %18, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %16

144:                                              ; preds = %140, %9, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_clk_enable(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = load ptr, ptr @arch_clkdm, align 4
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clkdm_ops, ptr %4, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @pwrdm_lock(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp sgt i32 %16, 1
  %18 = load ptr, ptr @autodeps, align 4
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %28, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr @arch_clkdm, align 4
  %23 = getelementptr inbounds %struct.clkdm_ops, ptr %22, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %0) #7
  %26 = load ptr, ptr %12, align 4
  %27 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %26) #7
  br label %28

28:                                               ; preds = %21, %11
  %29 = load ptr, ptr %12, align 4
  tail call void @pwrdm_unlock(ptr noundef %29) #7
  br label %30

30:                                               ; preds = %28, %7, %2
  %31 = phi i32 [ -22, %7 ], [ -22, %2 ], [ 0, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_clk_disable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = load ptr, ptr @arch_clkdm, align 4
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clkdm_ops, ptr %4, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @pwrdm_lock(ptr noundef %13) #7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @__clk_get_enable_count(ptr noundef nonnull %1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18, %15, %11
  %23 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %12, align 4
  tail call void @pwrdm_unlock(ptr noundef %27) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1217, i32 noundef 9, ptr noundef null) #7
  br label %42

28:                                               ; preds = %22
  %29 = add i32 %24, -1
  store i32 %29, ptr %23, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %12, align 4
  tail call void @pwrdm_unlock(ptr noundef %32) #7
  br label %42

33:                                               ; preds = %28
  %34 = load ptr, ptr @arch_clkdm, align 4
  %35 = getelementptr inbounds %struct.clkdm_ops, ptr %34, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %0) #7
  %38 = load ptr, ptr %12, align 4
  %39 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %38) #7
  br label %40

40:                                               ; preds = %33, %18
  %41 = load ptr, ptr %12, align 4
  tail call void @pwrdm_unlock(ptr noundef %41) #7
  br label %42

42:                                               ; preds = %40, %31, %26, %7, %2
  %43 = phi i32 [ 0, %40 ], [ -34, %26 ], [ 0, %31 ], [ -22, %7 ], [ -22, %2 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_hwmod_enable(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #1 {
  %3 = tail call i32 @omap_rev() #7
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 52
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %6
  %9 = icmp ne ptr %0, null
  %10 = load ptr, ptr @arch_clkdm, align 4
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.clkdm_ops, ptr %10, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @pwrdm_lock(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = load ptr, ptr @autodeps, align 4
  %25 = icmp ne ptr %24, null
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %34, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @arch_clkdm, align 4
  %29 = getelementptr inbounds %struct.clkdm_ops, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef nonnull %0) #7
  %32 = load ptr, ptr %18, align 4
  %33 = tail call i32 @pwrdm_state_switch_nolock(ptr noundef %32) #7
  br label %34

34:                                               ; preds = %27, %17
  %35 = load ptr, ptr %18, align 4
  tail call void @pwrdm_unlock(ptr noundef %35) #7
  br label %36

36:                                               ; preds = %34, %13, %8, %6, %2
  %37 = phi i32 [ 0, %2 ], [ -22, %6 ], [ -22, %13 ], [ -22, %8 ], [ 0, %34 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clkdm_hwmod_disable(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #1 {
  %3 = tail call i32 @omap_rev() #7
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 52
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @clkdm_clk_disable(ptr noundef %0, ptr noundef null)
  br label %10

10:                                               ; preds = %8, %6, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ], [ -22, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_save_context() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi ptr [ %3, %13 ], [ @clkdm_list, %0 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @clkdm_list
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -36
  %7 = load ptr, ptr @arch_clkdm, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.clkdm_ops, ptr %7, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %6) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %1, label %16

16:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdm_restore_context() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi ptr [ %3, %13 ], [ @clkdm_list, %0 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @clkdm_list
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -36
  %7 = load ptr, ptr @arch_clkdm, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.clkdm_ops, ptr %7, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %6) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %1, label %16

16:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_add_clkdm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
