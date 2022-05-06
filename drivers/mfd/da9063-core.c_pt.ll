; ModuleID = '/llk/IR/drivers/mfd/da9063-core.c_pt.bc'
source_filename = "../drivers/mfd/da9063-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [24 x i8] c"Cannot clear fault log\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot initialize interrupts.\0A\00", align 1
@da9063_common_devs = internal constant [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.5, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9063_regulators_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.8, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9063_hwmon_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.11, i64 0, i8 0, ptr null, i32 1, ptr @da9063_onkey_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.12, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to add child devices\0A\00", align 1
@da9063_devs = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.16, i64 0, i8 0, ptr null, i32 2, ptr @da9063_rtc_resources, i8 0, i8 0, ptr null, i32 0 }], align 8
@__UNIQUE_ID_description210 = internal constant [42 x i8] c"description=PMIC driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [26 x i8] c"author=Krystian Garbaciak\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [21 x i8] c"author=Michal Hajduk\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot read FAULT_LOG.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot reset FAULT_LOG values %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"da9063-regulators\00", align 1
@da9063_regulators_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 8, i32 8, ptr @.str.13, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"da9063-leds\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"da9063-watchdog\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"dlg,da9063-watchdog\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"da9063-hwmon\00", align 1
@da9063_hwmon_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"da9063-onkey\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"dlg,da9063-onkey\00", align 1
@da9063_onkey_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.14, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"da9063-vibration\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"LDO_LIM\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"da9063-rtc\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"dlg,da9063-rtc\00", align 1
@da9063_rtc_resources = internal constant [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.17, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr @.str.18, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"ALARM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"TICK\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_license213], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @da9063_device_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 5, ptr noundef nonnull %3) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #5
  br label %18

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 @regmap_write(ptr noundef %12, i32 noundef 5, i32 noundef %11) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %13) #5
  br label %18

17:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %20

18:                                               ; preds = %15, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %19 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #5
  br label %20

20:                                               ; preds = %18, %17
  %21 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 6
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 5
  store i32 %1, ptr %23, align 4
  %24 = call i32 @da9063_irq_init(ptr noundef %0) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regmap_irq_chip_get_base(ptr noundef %28) #4
  store i32 %29, ptr %22, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @devm_mfd_add_devices(ptr noundef %30, i32 noundef -1, ptr noundef nonnull @da9063_common_devs, i32 noundef 6, ptr noundef null, i32 noundef %29, ptr noundef null) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.da9063, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  %39 = load i32, ptr %22, align 4
  %40 = call i32 @devm_mfd_add_devices(ptr noundef %38, i32 noundef -1, ptr noundef nonnull @da9063_devs, i32 noundef 1, ptr noundef null, i32 noundef %39, ptr noundef null) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37, %26, %20
  %43 = phi ptr [ @.str.1, %20 ], [ @.str.2, %26 ], [ @.str.2, %37 ]
  %44 = phi i32 [ %24, %20 ], [ %31, %26 ], [ %40, %37 ]
  %45 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull %43) #5
  br label %46

46:                                               ; preds = %42, %37, %33
  %47 = phi i32 [ 0, %37 ], [ 0, %33 ], [ %44, %42 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9063_irq_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_chip_get_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
