; ModuleID = '/llk/IR/drivers/thermal/gov_step_wise.c_pt.bc'
source_filename = "../drivers/thermal/gov_step_wise.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_gov_step_wise = internal global %struct.thermal_governor { [20 x i8] c"step_wise\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @step_wise_throttle, %struct.list_head zeroinitializer }, align 4
@__thermal_table_entry_thermal_gov_step_wise = internal global ptr @thermal_gov_step_wise, section "__governor_thermal_table", align 4
@__tracepoint_thermal_zone_trip = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__thermal_table_entry_thermal_gov_step_wise], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @step_wise_throttle(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #5
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #5
  %15 = call i32 @get_tz_trend(ptr noundef %0, i32 noundef %1) #5
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 8
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %2
  %21 = load i32, ptr %5, align 4
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #5
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  %36 = call i32 @__traceiter_thermal_zone_trip(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %21) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  br label %37

37:                                               ; preds = %35, %24, %20, %2
  %38 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  call void @mutex_lock(ptr noundef %38) #5
  %39 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 24
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %142, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 16
  br label %44

44:                                               ; preds = %139, %42
  %45 = phi ptr [ %40, %42 ], [ %140, %139 ]
  %46 = getelementptr i8, ptr %45, i32 -92
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %139

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %45, i32 -76
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %45, i32 -96
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %54 = getelementptr inbounds %struct.thermal_cooling_device, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %53, ptr noundef nonnull %3) #5
  %59 = load i32, ptr %50, align 4
  %60 = getelementptr i8, ptr %45, i32 -88
  %61 = load i8, ptr %60, align 4, !range !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %49
  br i1 %19, label %110, label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %3, align 4
  %66 = add i32 %65, 1
  %67 = getelementptr i8, ptr %45, i32 -84
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %45, i32 -80
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @llvm.umax.i32(i32 %66, i32 %72) #5
  br label %110

74:                                               ; preds = %49
  switch i32 %15, label %110 [
    i32 1, label %75
    i32 3, label %86
    i32 2, label %90
    i32 4, label %103
  ]

75:                                               ; preds = %74
  br i1 %19, label %110, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %3, align 4
  %78 = getelementptr i8, ptr %45, i32 -84
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %77, %79
  %81 = add i32 %77, 1
  %82 = select i1 %80, i32 %81, i32 %79
  %83 = getelementptr i8, ptr %45, i32 -80
  %84 = load i32, ptr %83, align 4
  %85 = call i32 @llvm.umax.i32(i32 %82, i32 %84) #5
  br label %110

86:                                               ; preds = %74
  br i1 %19, label %110, label %87

87:                                               ; preds = %86
  %88 = getelementptr i8, ptr %45, i32 -84
  %89 = load i32, ptr %88, align 4
  br label %110

90:                                               ; preds = %74
  %91 = load i32, ptr %3, align 4
  %92 = getelementptr i8, ptr %45, i32 -80
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = select i1 %19, i32 -1, i32 %59
  br label %110

97:                                               ; preds = %90
  br i1 %19, label %98, label %110

98:                                               ; preds = %97
  %99 = add i32 %91, -1
  %100 = getelementptr i8, ptr %45, i32 -84
  %101 = load i32, ptr %100, align 4
  %102 = call i32 @llvm.umin.i32(i32 %99, i32 %101) #5
  br label %110

103:                                              ; preds = %74
  %104 = load i32, ptr %3, align 4
  %105 = getelementptr i8, ptr %45, i32 -80
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %104, %106
  %108 = select i1 %19, i32 -1, i32 %59
  %109 = select i1 %107, i32 %108, i32 %106
  br label %110

110:                                              ; preds = %103, %98, %97, %95, %87, %86, %76, %75, %74, %70, %64, %63
  %111 = phi i32 [ %68, %64 ], [ %73, %70 ], [ -1, %63 ], [ %59, %74 ], [ %59, %97 ], [ %89, %87 ], [ %59, %86 ], [ %59, %75 ], [ %96, %95 ], [ %102, %98 ], [ %85, %76 ], [ %109, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  store i32 %111, ptr %50, align 4
  %112 = load i8, ptr %60, align 4, !range !11
  %113 = icmp ne i8 %112, 0
  %114 = icmp eq i32 %51, %111
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %139, label %116

116:                                              ; preds = %110
  %117 = icmp eq i32 %51, -1
  br i1 %117, label %118, label %123

118:                                              ; preds = %116
  %119 = icmp ne i32 %111, -1
  %120 = load i32, ptr %5, align 4
  %121 = icmp eq i32 %120, 1
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %128, label %132

123:                                              ; preds = %116
  %124 = icmp eq i32 %111, -1
  %125 = load i32, ptr %5, align 4
  %126 = icmp eq i32 %125, 1
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118
  %129 = phi i32 [ 1, %118 ], [ -1, %123 ]
  %130 = load i32, ptr %43, align 4
  %131 = add i32 %130, %129
  store i32 %131, ptr %43, align 4
  br label %132

132:                                              ; preds = %128, %123, %118
  store i8 1, ptr %60, align 4
  %133 = load ptr, ptr %52, align 4
  %134 = getelementptr inbounds %struct.thermal_cooling_device, ptr %133, i32 0, i32 8
  call void @mutex_lock(ptr noundef %134) #5
  %135 = load ptr, ptr %52, align 4
  %136 = getelementptr inbounds %struct.thermal_cooling_device, ptr %135, i32 0, i32 7
  store i8 0, ptr %136, align 8
  %137 = load ptr, ptr %52, align 4
  %138 = getelementptr inbounds %struct.thermal_cooling_device, ptr %137, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %138) #5
  br label %139

139:                                              ; preds = %132, %110, %44
  %140 = load ptr, ptr %45, align 4
  %141 = icmp eq ptr %140, %39
  br i1 %141, label %142, label %44

142:                                              ; preds = %139, %37
  call void @mutex_unlock(ptr noundef %38) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @mutex_lock(ptr noundef %38) #5
  %143 = load ptr, ptr %39, align 4
  %144 = icmp eq ptr %143, %39
  br i1 %144, label %151, label %145

145:                                              ; preds = %145, %142
  %146 = phi ptr [ %149, %145 ], [ %143, %142 ]
  %147 = getelementptr i8, ptr %146, i32 -96
  %148 = load ptr, ptr %147, align 4
  call void @thermal_cdev_update(ptr noundef %148) #5
  %149 = load ptr, ptr %146, align 4
  %150 = icmp eq ptr %149, %39
  br i1 %150, label %151, label %145

151:                                              ; preds = %145, %142
  call void @mutex_unlock(ptr noundef %38) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cdev_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tz_trend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_thermal_zone_trip(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2151378489}
!10 = !{i64 2151378673}
!11 = !{i8 0, i8 2}
