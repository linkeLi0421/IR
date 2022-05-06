; ModuleID = '/llk/IR/drivers/soc/samsung/exynos-asv.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-asv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.exynos_asv = type { ptr, ptr, [2 x %struct.exynos_asv_subsys], ptr, i32, i32, i8, i32 }
%struct.exynos_asv_subsys = type { ptr, ptr, i32, %struct.exynos_asv_table, i32, i32, i32 }
%struct.exynos_asv_table = type { i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [38 x i8] c"Cannot read revision from ChipID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"samsung,asv-bin\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't udate OPPs for cpu%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cpu%d opp%d, freq: %u missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to adjust OPP %u Hz/%u uV for cpu%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_asv_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 100, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %112, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.exynos_asv, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  store ptr %0, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %8) #6
  br label %112

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, -4096
  %14 = icmp eq i32 %13, -448651264
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call ptr @get_cpu_device(i32 noundef 0) #5
  %17 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %16) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %112, label %20

19:                                               ; preds = %11
  call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %4) #5
  br label %112

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.exynos_asv, ptr %4, i32 0, i32 7
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef 1, i32 noundef 0) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -22, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 0
  store ptr %4, ptr %28, align 4
  %29 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 1
  store ptr %4, ptr %29, align 4
  %30 = call i32 @exynos5422_asv_init(ptr noundef nonnull %4) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %112, label %32

32:                                               ; preds = %27
  %33 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %112

36:                                               ; preds = %32
  %37 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 0, i32 1
  %38 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 1, i32 1
  %39 = getelementptr inbounds %struct.exynos_asv, ptr %4, i32 0, i32 3
  br label %40

40:                                               ; preds = %107, %36
  %41 = phi i32 [ %33, %36 ], [ %109, %107 ]
  %42 = phi ptr [ null, %36 ], [ %108, %107 ]
  %43 = call ptr @get_cpu_device(i32 noundef %41) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %107, label %45

45:                                               ; preds = %40
  %46 = call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %43) #5
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %107, label %48

48:                                               ; preds = %45
  %49 = icmp ne ptr %42, null
  %50 = icmp eq ptr %46, %42
  %51 = and i1 %49, %50
  br i1 %51, label %105, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %37, align 4
  %56 = call i32 @of_device_is_compatible(ptr noundef %54, ptr noundef %55) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 8
  %60 = load ptr, ptr %38, align 4
  %61 = call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef %60) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %58, %52
  %64 = phi i32 [ 0, %52 ], [ 1, %58 ]
  %65 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 %64
  %66 = icmp eq ptr %65, null
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 %64, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %67
  %72 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 %64, i32 3, i32 2
  %73 = getelementptr %struct.exynos_asv, ptr %4, i32 0, i32 2, i32 %64, i32 3, i32 1
  %74 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 28
  br label %75

75:                                               ; preds = %99, %71
  %76 = phi i32 [ 0, %71 ], [ %100, %99 ]
  %77 = load ptr, ptr %72, align 4
  %78 = load i32, ptr %73, align 4
  %79 = mul i32 %78, %76
  %80 = getelementptr i32, ptr %77, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %81, 1000000
  %83 = call ptr @dev_pm_opp_find_freq_exact(ptr noundef nonnull %43, i32 noundef %82, i1 noundef zeroext true) #5
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load ptr, ptr %4, align 4
  %87 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.3, i32 noundef %87, i32 noundef %76, i32 noundef %81) #6
  br label %99

88:                                               ; preds = %75
  %89 = call i32 @dev_pm_opp_get_voltage(ptr noundef %83) #5
  %90 = load ptr, ptr %39, align 4
  %91 = call i32 %90(ptr noundef nonnull %65, i32 noundef %76, i32 noundef %89) #5
  call void @dev_pm_opp_put(ptr noundef %83) #5
  %92 = icmp eq i32 %91, %89
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = call i32 @dev_pm_opp_adjust_voltage(ptr noundef nonnull %43, i32 noundef %82, i32 noundef %91, i32 noundef %91, i32 noundef %91) #5
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %4, align 4
  %98 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.4, i32 noundef %81, i32 noundef %91, i32 noundef %98) #6
  br label %99

99:                                               ; preds = %96, %93, %88, %85
  %100 = add nuw i32 %76, 1
  %101 = load i32, ptr %68, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %75, label %105

103:                                              ; preds = %63, %58
  %104 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.2, i32 noundef %41) #6
  br label %105

105:                                              ; preds = %103, %99, %67, %48
  %106 = phi ptr [ %46, %103 ], [ %42, %48 ], [ %46, %67 ], [ %46, %99 ]
  call void @dev_pm_opp_put_opp_table(ptr noundef %46) #5
  br label %107

107:                                              ; preds = %105, %45, %40
  %108 = phi ptr [ %106, %105 ], [ %42, %40 ], [ %42, %45 ]
  %109 = call i32 @cpumask_next(i32 noundef %41, ptr noundef nonnull @__cpu_possible_mask) #7
  %110 = load i32, ptr @nr_cpu_ids, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %40, label %112

112:                                              ; preds = %107, %32, %27, %19, %15, %10, %2
  %113 = phi i32 [ -19, %10 ], [ 0, %19 ], [ -12, %2 ], [ -517, %15 ], [ %30, %27 ], [ 0, %32 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos5422_asv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_adjust_voltage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readonly willreturn }

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
