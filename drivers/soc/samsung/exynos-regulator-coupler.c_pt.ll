; ModuleID = '/llk/IR/drivers/soc/samsung/exynos-regulator-coupler.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-regulator-coupler.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regulator_coupler = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_exynos_regulator_coupler__259_221_exynos_coupler_init3 = internal global ptr @exynos_coupler_init, section ".initcall3.init", align 4
@.str = private unnamed_addr constant [19 x i8] c"samsung,exynos5800\00", align 1
@exynos_coupler = internal global %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @exynos_coupler_attach, ptr null, ptr @exynos_coupler_balance_voltage }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_exynos_regulator_coupler__259_221_exynos_coupler_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_coupler_init() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @exynos_coupler) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_coupler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_coupler_attach(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_coupler_balance_voltage(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 7, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = icmp slt i32 %10, 2
  br i1 %11, label %13, label %147

13:                                               ; preds = %3
  %14 = xor i1 %11, true
  %15 = or i1 %12, %14
  br label %16

16:                                               ; preds = %129, %13
  %17 = phi i1 [ false, %13 ], [ %130, %129 ]
  %18 = phi i32 [ 0, %13 ], [ %131, %129 ]
  %19 = phi i32 [ 0, %13 ], [ %132, %129 ]
  %20 = phi i32 [ 0, %13 ], [ %133, %129 ]
  %21 = phi i32 [ 0, %13 ], [ %134, %129 ]
  %22 = phi i32 [ 0, %13 ], [ %135, %129 ]
  %23 = phi ptr [ null, %13 ], [ %136, %129 ]
  %24 = load volatile i32, ptr %6, align 4
  %25 = and i32 %22, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %120

29:                                               ; preds = %16
  %30 = getelementptr ptr, ptr %8, i32 %22
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.regulator_dev, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %31, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %31, i32 0, i32 7, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.regulation_constraints, ptr %35, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 0, %42
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0) #6
  br label %97

45:                                               ; preds = %68, %29
  %46 = phi i32 [ %74, %68 ], [ 0, %29 ]
  %47 = phi i32 [ %73, %68 ], [ 2147483647, %29 ]
  %48 = phi i32 [ %70, %68 ], [ 0, %29 ]
  %49 = phi i32 [ %75, %68 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 2147483647, ptr %5, align 4
  %50 = getelementptr ptr, ptr %33, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regulator_check_consumers(ptr noundef %51, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %2) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load ptr, ptr %50, align 4
  %59 = call i32 @regulator_get_voltage_rdev(ptr noundef %58) #6
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  store i32 %59, ptr %4, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load ptr, ptr %50, align 4
  %64 = call i32 @regulator_check_voltage(ptr noundef %63, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %57, %45
  %67 = phi i32 [ %64, %62 ], [ %59, %57 ], [ %52, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %147

68:                                               ; preds = %62
  %69 = load i32, ptr %4, align 4
  %70 = call i32 @llvm.smax.i32(i32 %48, i32 %69) #6
  %71 = icmp eq i32 %49, 0
  %72 = load i32, ptr %5, align 4
  %73 = select i1 %71, i32 %72, i32 %47
  %74 = select i1 %71, i32 %69, i32 %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %75 = add nuw nsw i32 %49, 1
  %76 = icmp eq i32 %75, %37
  br i1 %76, label %77, label %45

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.regulation_constraints, ptr %35, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %70, %80
  %82 = call i32 @llvm.smax.i32(i32 %74, i32 %81) #6
  %83 = icmp sgt i32 %37, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %92, %77
  %85 = phi i32 [ %93, %92 ], [ 0, %77 ]
  %86 = phi i32 [ %94, %92 ], [ 2147483647, %77 ]
  %87 = phi i32 [ %95, %92 ], [ 1, %77 ]
  %88 = getelementptr ptr, ptr %33, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @regulator_get_voltage_rdev(ptr noundef %89) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %147, label %92

92:                                               ; preds = %84
  %93 = call i32 @llvm.smax.i32(i32 %90, i32 %85) #6
  %94 = call i32 @llvm.smin.i32(i32 %90, i32 %86) #6
  %95 = add nuw nsw i32 %87, 1
  %96 = icmp eq i32 %95, %37
  br i1 %96, label %97, label %84

97:                                               ; preds = %92, %77, %39
  %98 = phi i32 [ %82, %77 ], [ %44, %39 ], [ %82, %92 ]
  %99 = phi i32 [ %80, %77 ], [ %42, %39 ], [ %80, %92 ]
  %100 = phi i32 [ %73, %77 ], [ 2147483647, %39 ], [ %73, %92 ]
  %101 = phi i32 [ 2147483647, %77 ], [ 2147483647, %39 ], [ %94, %92 ]
  %102 = phi i32 [ 0, %77 ], [ 0, %39 ], [ %93, %92 ]
  %103 = sub i32 %102, %99
  %104 = call i32 @llvm.smax.i32(i32 %98, i32 %103) #6
  %105 = add i32 %101, %99
  %106 = call i32 @llvm.smin.i32(i32 %104, i32 %105) #6
  %107 = icmp sgt i32 %106, %100
  br i1 %107, label %147, label %108

108:                                              ; preds = %97
  %109 = call i32 @regulator_get_voltage_rdev(ptr noundef %31) #6
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %147, label %111

111:                                              ; preds = %108
  %112 = sub i32 %106, %109
  %113 = call i32 @llvm.abs.i32(i32 %112, i1 false)
  %114 = icmp eq i32 %106, %109
  %115 = icmp ugt i32 %18, %113
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = icmp eq i32 %106, %98
  %119 = load ptr, ptr %30, align 4
  br label %120

120:                                              ; preds = %117, %111, %16
  %121 = phi ptr [ %23, %111 ], [ %119, %117 ], [ %23, %16 ]
  %122 = phi i32 [ %21, %111 ], [ %106, %117 ], [ %21, %16 ]
  %123 = phi i32 [ %20, %111 ], [ %100, %117 ], [ %20, %16 ]
  %124 = phi i32 [ %19, %111 ], [ %22, %117 ], [ %19, %16 ]
  %125 = phi i32 [ %18, %111 ], [ %113, %117 ], [ %18, %16 ]
  %126 = phi i1 [ %17, %111 ], [ %118, %117 ], [ %17, %16 ]
  %127 = add nuw nsw i32 %22, 1
  %128 = icmp eq i32 %127, %10
  br i1 %128, label %137, label %129

129:                                              ; preds = %144, %120
  %130 = phi i1 [ %126, %120 ], [ false, %144 ]
  %131 = phi i32 [ %125, %120 ], [ 0, %144 ]
  %132 = phi i32 [ %124, %120 ], [ 0, %144 ]
  %133 = phi i32 [ %123, %120 ], [ 0, %144 ]
  %134 = phi i32 [ %122, %120 ], [ 0, %144 ]
  %135 = phi i32 [ %127, %120 ], [ 0, %144 ]
  %136 = phi ptr [ %121, %120 ], [ null, %144 ]
  br label %16

137:                                              ; preds = %120
  %138 = icmp eq ptr %121, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %137
  %140 = call i32 @regulator_set_voltage_rdev(ptr noundef nonnull %121, i32 noundef %122, i32 noundef %123, i32 noundef %2) #6
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  br i1 %126, label %143, label %144

143:                                              ; preds = %142
  call void @_set_bit(i32 noundef %124, ptr noundef nonnull %6) #6
  br label %144

144:                                              ; preds = %143, %142
  br i1 %15, label %145, label %129

145:                                              ; preds = %144
  %146 = select i1 %12, i32 %140, i32 0
  br label %147

147:                                              ; preds = %145, %139, %137, %108, %97, %84, %66, %3
  %148 = phi i32 [ %67, %66 ], [ 0, %3 ], [ %90, %84 ], [ %146, %145 ], [ -22, %97 ], [ %109, %108 ], [ 0, %137 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %148
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
