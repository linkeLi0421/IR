; ModuleID = '/llk/IR/drivers/cpufreq/raspberrypi-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/raspberrypi-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__initcall__kmod_raspberrypi_cpufreq__174_92_raspberrypi_cpufreq_driver_init6 = internal global ptr @raspberrypi_cpufreq_driver_init, section ".initcall6.init", align 4
@raspberrypi_cpufreq_driver = internal global %struct.platform_driver { ptr @raspberrypi_cpufreq_probe, ptr @raspberrypi_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_raspberrypi_cpufreq_driver_exit = internal global ptr @raspberrypi_cpufreq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [74 x i8] c"raspberrypi_cpufreq.author=Nicolas Saenz Julienne <nsaenzjulienne@suse.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [60 x i8] c"raspberrypi_cpufreq.description=Raspberry Pi cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [61 x i8] c"raspberrypi_cpufreq.file=drivers/cpufreq/raspberrypi-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [32 x i8] c"raspberrypi_cpufreq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [55 x i8] c"raspberrypi_cpufreq.alias=platform:raspberrypi-cpufreq\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"raspberrypi-cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\013Cannot get CPU for cpufreq driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot get clock for CPU0\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@cpufreq_dt = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to create platform device, %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_raspberrypi_cpufreq_driver_exit, ptr @__initcall__kmod_raspberrypi_cpufreq__174_92_raspberrypi_cpufreq_driver_init6, ptr @raspberrypi_cpufreq_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @raspberrypi_cpufreq_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @raspberrypi_cpufreq_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @raspberrypi_cpufreq_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @raspberrypi_cpufreq_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_cpufreq_probe(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %39

7:                                                ; preds = %1
  %8 = tail call ptr @clk_get(ptr noundef nonnull %3, ptr noundef null) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %3, ptr noundef nonnull @.str.2) #7
  %11 = ptrtoint ptr %8 to i32
  br label %39

12:                                               ; preds = %7
  %13 = tail call i32 @clk_round_rate(ptr noundef %8, i32 noundef 0) #6
  %14 = add i32 %13, 99999999
  %15 = srem i32 %14, 100000000
  %16 = sub i32 %14, %15
  %17 = tail call i32 @clk_round_rate(ptr noundef %8, i32 noundef -1) #6
  %18 = add i32 %17, 99999999
  %19 = srem i32 %18, 100000000
  %20 = sub i32 %18, %19
  tail call void @clk_put(ptr noundef %8) #6
  %21 = icmp ugt i32 %16, %20
  br i1 %21, label %29, label %25

22:                                               ; preds = %25
  %23 = add i32 %26, 100000000
  %24 = icmp ugt i32 %23, %20
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %23, %22 ], [ %16, %12 ]
  %27 = tail call i32 @dev_pm_opp_add(ptr noundef nonnull %3, i32 noundef %26, i32 noundef 0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %22, label %37

29:                                               ; preds = %22, %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  %30 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #6
  store ptr @.str.3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false) #6
  %33 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  store ptr %33, ptr @cpufreq_dt, align 4
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = ptrtoint ptr %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i32 [ %36, %35 ], [ %27, %25 ]
  call void @dev_pm_opp_remove_all_dynamic(ptr noundef nonnull %3) #6
  br label %39

39:                                               ; preds = %37, %29, %10, %5
  %40 = phi i32 [ %11, %10 ], [ %38, %37 ], [ -19, %5 ], [ 0, %29 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raspberrypi_cpufreq_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef nonnull %2) #6
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @cpufreq_dt, align 4
  tail call void @platform_device_unregister(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
