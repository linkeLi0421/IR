; ModuleID = '/llk/IR/drivers/power/supply/max8998_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max8998_charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_battery_data = type { ptr, ptr, ptr }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }

@__UNIQUE_ID_description247 = internal constant [46 x i8] c"description=MAXIM 8998 battery control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [31 x i8] c"alias=platform:max8998-battery\00", section ".modinfo", align 1
@max8998_battery_driver = internal global %struct.platform_driver { ptr @max8998_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8998_battery_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"max8998-battery\00", align 1
@max8998_battery_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8998-battery\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No platform init data supplied\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid EOC value\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid Restart Level\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid Full Timeout value\0A\00", align 1
@max8998_battery_desc = internal constant %struct.power_supply_desc { ptr @.str.6, i32 1, ptr null, i32 0, ptr @max8998_battery_props, i32 3, ptr @max8998_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed: power supply register: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"max8998_pmic\00", align 1
@max8998_battery_props = internal global [3 x i32] [i32 3, i32 4, i32 0], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8998_battery_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8998_battery_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_battery_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  br label %64

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %12
  store ptr %3, ptr %13, align 4
  %16 = getelementptr inbounds %struct.max8998_battery_data, ptr %13, i32 0, i32 1
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %17, align 8
  %18 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 14
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -10
  %23 = icmp ult i32 %22, 36
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = trunc i32 %21 to i8
  %26 = udiv i8 %25, 5
  %27 = shl i8 %26, 5
  %28 = add i8 %27, -64
  %29 = tail call i32 @max8998_update_reg(ptr noundef %19, i8 noundef zeroext 12, i8 noundef zeroext %28, i8 noundef zeroext -32) #6
  br label %33

30:                                               ; preds = %15
  %31 = icmp eq i32 %21, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %64

33:                                               ; preds = %30, %24
  %34 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %39 [
    i32 100, label %41
    i32 150, label %36
    i32 200, label %37
    i32 -1, label %38
    i32 0, label %44
  ]

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.3) #7
  br label %64

41:                                               ; preds = %38, %37, %36, %33
  %42 = phi i8 [ 24, %38 ], [ 16, %37 ], [ 0, %36 ], [ 8, %33 ]
  %43 = tail call i32 @max8998_update_reg(ptr noundef %19, i8 noundef zeroext 12, i8 noundef zeroext %42, i8 noundef zeroext 24) #6
  br label %44

44:                                               ; preds = %41, %33
  %45 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 16
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %50 [
    i32 5, label %52
    i32 6, label %47
    i32 7, label %48
    i32 -1, label %49
    i32 0, label %55
  ]

47:                                               ; preds = %44
  br label %52

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  %51 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.4) #7
  br label %64

52:                                               ; preds = %49, %48, %47, %44
  %53 = phi i8 [ 48, %49 ], [ 32, %48 ], [ 16, %47 ], [ 0, %44 ]
  %54 = tail call i32 @max8998_update_reg(ptr noundef %19, i8 noundef zeroext 13, i8 noundef zeroext %53, i8 noundef zeroext 48) #6
  br label %55

55:                                               ; preds = %52, %44
  %56 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %13, ptr %56, align 4
  %57 = load ptr, ptr %13, align 4
  %58 = call ptr @devm_power_supply_register(ptr noundef %57, ptr noundef nonnull @max8998_battery_desc, ptr noundef nonnull %2) #6
  %59 = getelementptr inbounds %struct.max8998_battery_data, ptr %13, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = ptrtoint ptr %58 to i32
  %63 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.5, i32 noundef %62) #7
  br label %64

64:                                               ; preds = %61, %55, %50, %39, %32, %12, %11
  %65 = phi i32 [ -22, %39 ], [ -22, %50 ], [ %62, %61 ], [ -22, %32 ], [ -19, %11 ], [ -12, %12 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_battery_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.max8998_battery_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !8
  switch i32 %1, label %44 [
    i32 3, label %10
    i32 4, label %19
    i32 0, label %27
  ]

10:                                               ; preds = %3
  %11 = call i32 @max8998_read_reg(ptr noundef %9, i8 noundef zeroext 9, ptr noundef nonnull %4) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i8, ptr %4, align 1
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = zext i8 %17 to i32
  br label %42

19:                                               ; preds = %3
  %20 = call i32 @max8998_read_reg(ptr noundef %9, i8 noundef zeroext 9, ptr noundef nonnull %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load i8, ptr %4, align 1
  %24 = lshr i8 %23, 5
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  br label %42

27:                                               ; preds = %3
  %28 = call i32 @max8998_read_reg(ptr noundef %9, i8 noundef zeroext 9, ptr noundef nonnull %4) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = and i32 %32, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = and i32 %32, 8
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 3, i32 1
  br label %42

42:                                               ; preds = %38, %35, %30, %22, %13
  %43 = phi i32 [ %18, %13 ], [ %26, %22 ], [ 2, %30 ], [ 4, %35 ], [ %41, %38 ]
  store i32 %43, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %27, %19, %10, %3
  %45 = phi i32 [ %11, %10 ], [ %20, %19 ], [ %28, %27 ], [ -22, %3 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
