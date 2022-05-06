; ModuleID = '/llk/IR/drivers/misc/qcom-coincell.c_pt.bc'
source_filename = "../drivers/misc/qcom-coincell.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.qcom_coincell = type { ptr, ptr, i32 }
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

@qcom_coincell_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-coincell\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description166 = internal constant [50 x i8] c"description=Qualcomm PMIC coincell charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@qcom_coincell_driver = internal global %struct.platform_driver { ptr @qcom_coincell_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_coincell_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [19 x i8] c"qcom-spmi-coincell\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to get regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"qcom,charger-disable\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"qcom,rset-ohms\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"can't find 'qcom,rset-ohms' in DT block\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"qcom,vset-millivolts\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"can't find 'qcom,vset-millivolts' in DT block\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid rset-ohms value %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"invalid vset-millivolts value %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"could not write to RSET register\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license167], section "llvm.metadata"

@__mod_of__qcom_coincell_match_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @qcom_coincell_match_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_coincell_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_coincell_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_coincell_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.qcom_coincell, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %8 = getelementptr inbounds i8, ptr %2, i32 8
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  store ptr %5, ptr %2, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #6
  %12 = getelementptr inbounds %struct.qcom_coincell, ptr %2, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  br label %73

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.qcom_coincell, ptr %2, i32 0, i32 2
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef 1, i32 noundef 0) #6
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 0) #6
  %19 = icmp sgt i32 %17, -1
  br i1 %19, label %20, label %73

20:                                               ; preds = %15
  %21 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5) #7
  br label %73

28:                                               ; preds = %23
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.7) #7
  br label %73

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %4, align 4
  switch i32 %34, label %46 [
    i32 2100, label %44
    i32 1700, label %41
    i32 1200, label %42
    i32 800, label %43
  ]

36:                                               ; preds = %20
  %37 = load ptr, ptr %12, align 4
  %38 = load i32, ptr %16, align 4
  %39 = add i32 %38, 70
  %40 = call i32 @regmap_write(ptr noundef %37, i32 noundef %39, i32 noundef 0) #6
  br label %73

41:                                               ; preds = %33
  br label %44

42:                                               ; preds = %33
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %42, %41, %33
  %45 = phi i32 [ 0, %33 ], [ 1, %41 ], [ 2, %42 ], [ 3, %43 ]
  switch i32 %35, label %48 [
    i32 2500, label %53
    i32 3200, label %50
    i32 3100, label %51
    i32 3000, label %52
  ]

46:                                               ; preds = %33
  %47 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.8, i32 noundef %34) #7
  br label %73

48:                                               ; preds = %44
  %49 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %35) #7
  br label %73

50:                                               ; preds = %44
  br label %53

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %51, %50, %44
  %54 = phi i32 [ 0, %44 ], [ 1, %50 ], [ 2, %51 ], [ 3, %52 ]
  %55 = load ptr, ptr %12, align 4
  %56 = load i32, ptr %16, align 4
  %57 = add i32 %56, 68
  %58 = call i32 @regmap_write(ptr noundef %55, i32 noundef %57, i32 noundef %45) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.10) #7
  br label %73

62:                                               ; preds = %53
  %63 = load ptr, ptr %12, align 4
  %64 = load i32, ptr %16, align 4
  %65 = add i32 %64, 69
  %66 = call i32 @regmap_write(ptr noundef %63, i32 noundef %65, i32 noundef %54) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load ptr, ptr %12, align 4
  %70 = load i32, ptr %16, align 4
  %71 = add i32 %70, 70
  %72 = call i32 @regmap_write(ptr noundef %69, i32 noundef %71, i32 noundef 128) #6
  br label %73

73:                                               ; preds = %68, %62, %60, %48, %46, %36, %31, %26, %15, %14
  %74 = phi i32 [ %24, %26 ], [ %29, %31 ], [ -22, %14 ], [ %18, %15 ], [ -22, %46 ], [ -22, %48 ], [ %58, %60 ], [ %72, %68 ], [ %40, %36 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
