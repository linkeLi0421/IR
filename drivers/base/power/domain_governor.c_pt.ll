; ModuleID = '/llk/IR/drivers/base/power/domain_governor.c_pt.bc'
source_filename = "../drivers/base/power/domain_governor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_power_governor = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
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
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, ptr, i32, i32, i32, i32, i64, ptr }
%struct.pm_domain_data = type { %struct.list_head, ptr }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.6 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.6 = type { %struct.mutex }

@pm_domain_cpu_gov = dso_local local_unnamed_addr global %struct.dev_power_governor { ptr @cpu_power_down_ok, ptr @default_suspend_ok }, align 4
@simple_qos_governor = dso_local local_unnamed_addr global %struct.dev_power_governor { ptr @default_power_down_ok, ptr @default_suspend_ok }, align 4
@pm_domain_always_on_gov = dso_local local_unnamed_addr global %struct.dev_power_governor { ptr @always_on_power_down_ok, ptr @default_suspend_ok }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @cpu_power_down_ok(ptr noundef %0) #0 {
  %2 = tail call i64 @ktime_get() #7
  %3 = tail call fastcc zeroext i1 @_default_power_down_ok(ptr noundef %0, i64 noundef %2)
  br i1 %3, label %4, label %52

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 268
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 200
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %10, ptr noundef nonnull @__cpu_online_mask) #8
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %31

14:                                               ; preds = %27, %9
  %15 = phi i32 [ %29, %27 ], [ %12, %9 ]
  %16 = phi i64 [ %28, %27 ], [ 9223372036854775807, %9 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @cpuidle_devices to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.cpuidle_device, ptr %21, i32 0, i32 2
  %25 = load volatile i64, ptr %24, align 8
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 %16)
  br label %27

27:                                               ; preds = %23, %14
  %28 = phi i64 [ %16, %14 ], [ %26, %23 ]
  %29 = tail call i32 @cpumask_next_and(i32 noundef %15, ptr noundef %10, ptr noundef nonnull @__cpu_online_mask) #8
  %30 = icmp ult i32 %29, %11
  br i1 %30, label %14, label %31

31:                                               ; preds = %27, %9
  %32 = phi i64 [ 9223372036854775807, %9 ], [ %28, %27 ]
  %33 = sub i64 %32, %2
  %34 = icmp slt i64 %33, 1
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 284
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %0, i32 272
  %39 = load ptr, ptr %38, align 8
  br label %40

40:                                               ; preds = %49, %35
  %41 = phi i32 [ %37, %35 ], [ %50, %49 ]
  %42 = getelementptr %struct.genpd_power_state, ptr %39, i32 %41
  %43 = getelementptr %struct.genpd_power_state, ptr %39, i32 %41, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %42, align 8
  %46 = add i64 %45, %44
  %47 = icmp slt i64 %33, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 %41, ptr %36, align 4
  br label %52

49:                                               ; preds = %40
  %50 = add i32 %41, -1
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %40, label %52

52:                                               ; preds = %49, %48, %31, %4, %1
  %53 = phi i1 [ true, %48 ], [ false, %1 ], [ true, %4 ], [ false, %31 ], [ false, %49 ]
  ret i1 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @default_suspend_ok(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pm_subsys_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1, i32 3
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1, i32 4
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp ne i8 %15, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  br label %43

17:                                               ; preds = %1
  store i8 0, ptr %10, align 8
  %18 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1, i32 4
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1, i32 2
  store i64 0, ptr %19, align 8
  %20 = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = sext i32 %20 to i64
  %24 = mul nsw i64 %23, 1000
  store i64 %24, ptr %2, align 8
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 256
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @dev_update_qos_constraint) #7
  %31 = load i64, ptr %2, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i64 [ %31, %29 ], [ %24, %22 ]
  switch i64 %33, label %34 [
    i64 2147483647000, label %41
    i64 0, label %43
  ]

34:                                               ; preds = %32
  %35 = load i64, ptr %7, align 8
  %36 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %35, %37
  %39 = sub i64 %33, %38
  %40 = icmp slt i64 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %34, %32
  %42 = phi i64 [ %33, %32 ], [ %39, %34 ]
  store i64 %42, ptr %19, align 8
  store i8 1, ptr %18, align 1
  br label %43

43:                                               ; preds = %41, %34, %32, %17, %13
  %44 = phi i1 [ true, %41 ], [ %16, %13 ], [ false, %17 ], [ false, %32 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @default_power_down_ok(ptr noundef %0) #0 {
  %2 = tail call i64 @ktime_get() #7
  %3 = tail call fastcc zeroext i1 @_default_power_down_ok(ptr noundef %0, i64 noundef %2)
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @always_on_power_down_ok(ptr nocapture noundef readnone %0) #1 {
  ret i1 false
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_default_power_down_ok(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 280
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, -1
  %6 = getelementptr i8, ptr %0, i32 268
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %70, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 136
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %26, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %24, %14 ], [ %12, %10 ]
  %16 = phi i64 [ %23, %14 ], [ 9223372036854775807, %10 ]
  %17 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %15, i32 0, i32 8
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %18, 9223372036854775807
  %20 = icmp slt i64 %18, %1
  %21 = or i1 %19, %20
  %22 = tail call i64 @llvm.smin.i64(i64 %18, i64 %16) #7
  %23 = select i1 %21, i64 %16, i64 %22
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %11
  br i1 %25, label %26, label %14

26:                                               ; preds = %14, %10
  %27 = phi i64 [ 9223372036854775807, %10 ], [ %23, %14 ]
  %28 = getelementptr i8, ptr %0, i32 120
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %45, label %31

31:                                               ; preds = %31, %26
  %32 = phi ptr [ %43, %31 ], [ %29, %26 ]
  %33 = phi i64 [ %42, %31 ], [ %27, %26 ]
  %34 = getelementptr i8, ptr %32, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %35, i32 0, i32 26
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %37, 9223372036854775807
  %39 = icmp slt i64 %37, %1
  %40 = or i1 %38, %39
  %41 = tail call i64 @llvm.smin.i64(i64 %37, i64 %33) #7
  %42 = select i1 %40, i64 %33, i64 %41
  %43 = load ptr, ptr %32, align 4
  %44 = icmp eq ptr %43, %28
  br i1 %44, label %45, label %31

45:                                               ; preds = %31, %26
  %46 = phi i64 [ %27, %26 ], [ %42, %31 ]
  %47 = getelementptr i8, ptr %0, i32 248
  store i64 %46, ptr %47, align 8
  %48 = icmp eq i64 %46, 9223372036854775807
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = icmp sgt i32 %5, -1
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %0, i32 272
  %53 = load ptr, ptr %52, align 8
  %54 = sub i64 %46, %1
  br label %55

55:                                               ; preds = %63, %51
  %56 = phi i32 [ %5, %51 ], [ %64, %63 ]
  %57 = getelementptr %struct.genpd_power_state, ptr %53, i32 %56
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr %struct.genpd_power_state, ptr %53, i32 %56, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %58
  %62 = icmp slt i64 %54, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = add nsw i32 %56, -1
  %65 = icmp sgt i32 %56, 0
  br i1 %65, label %55, label %68

66:                                               ; preds = %55
  %67 = getelementptr i8, ptr %0, i32 256
  store i8 1, ptr %67, align 8
  br label %70

68:                                               ; preds = %63, %49
  %69 = getelementptr i8, ptr %0, i32 257
  store i8 0, ptr %69, align 1
  br label %159

70:                                               ; preds = %66, %45, %2
  %71 = phi i32 [ %56, %66 ], [ %5, %45 ], [ %5, %2 ]
  %72 = getelementptr i8, ptr %0, i32 256
  %73 = load i8, ptr %72, align 8, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %0, i32 258
  %77 = load i8, ptr %76, align 2, !range !8
  %78 = zext i8 %77 to i32
  %79 = getelementptr i8, ptr %0, i32 284
  store i32 %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %0, i32 257
  %81 = load i8, ptr %80, align 1, !range !8
  br label %166

82:                                               ; preds = %70
  %83 = getelementptr i8, ptr %0, i32 128
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %93, label %86

86:                                               ; preds = %86, %82
  %87 = phi ptr [ %91, %86 ], [ %84, %82 ]
  %88 = getelementptr i8, ptr %87, i32 -16
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.generic_pm_domain, ptr %89, i32 0, i32 27
  store i8 1, ptr %90, align 8
  %91 = load ptr, ptr %87, align 4
  %92 = icmp eq ptr %91, %83
  br i1 %92, label %93, label %86

93:                                               ; preds = %86, %82
  %94 = getelementptr i8, ptr %0, i32 240
  store i64 -1, ptr %94, align 8
  store i8 0, ptr %72, align 8
  %95 = getelementptr i8, ptr %0, i32 257
  store i8 1, ptr %95, align 1
  %96 = getelementptr i8, ptr %0, i32 272
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr i8, ptr %0, i32 120
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  %101 = getelementptr i8, ptr %0, i32 136
  br label %102

102:                                              ; preds = %157, %93
  %103 = phi i32 [ %71, %93 ], [ %158, %157 ]
  %104 = getelementptr %struct.genpd_power_state, ptr %97, i32 %103
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr %struct.genpd_power_state, ptr %97, i32 %103, i32 1
  %107 = load i64, ptr %106, align 8
  %108 = add i64 %107, %105
  br i1 %100, label %128, label %109

109:                                              ; preds = %124, %102
  %110 = phi ptr [ %126, %124 ], [ %99, %102 ]
  %111 = phi i64 [ %125, %124 ], [ -1, %102 ]
  %112 = getelementptr i8, ptr %110, i32 8
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.generic_pm_domain, ptr %113, i32 0, i32 25
  %115 = load i64, ptr %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %109
  %118 = icmp sgt i64 %115, %108
  br i1 %118, label %119, label %154

119:                                              ; preds = %117
  %120 = icmp sgt i64 %111, %115
  %121 = icmp slt i64 %111, 0
  %122 = or i1 %121, %120
  %123 = select i1 %122, i64 %115, i64 %111
  br label %124

124:                                              ; preds = %119, %109
  %125 = phi i64 [ %111, %109 ], [ %123, %119 ]
  %126 = load ptr, ptr %110, align 4
  %127 = icmp eq ptr %126, %98
  br i1 %127, label %128, label %109

128:                                              ; preds = %124, %102
  %129 = phi i64 [ -1, %102 ], [ %125, %124 ]
  %130 = load ptr, ptr %101, align 4
  %131 = icmp eq ptr %130, %101
  br i1 %131, label %149, label %132

132:                                              ; preds = %145, %128
  %133 = phi ptr [ %147, %145 ], [ %130, %128 ]
  %134 = phi i64 [ %146, %145 ], [ %129, %128 ]
  %135 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %133, i32 0, i32 1, i32 2
  %136 = load i64, ptr %135, align 8
  %137 = icmp eq i64 %136, 2147483647000
  br i1 %137, label %145, label %138

138:                                              ; preds = %132
  %139 = icmp sgt i64 %136, %108
  br i1 %139, label %140, label %154

140:                                              ; preds = %138
  %141 = icmp sgt i64 %134, %136
  %142 = icmp slt i64 %134, 0
  %143 = or i1 %142, %141
  %144 = select i1 %143, i64 %136, i64 %134
  br label %145

145:                                              ; preds = %140, %132
  %146 = phi i64 [ %134, %132 ], [ %144, %140 ]
  %147 = load ptr, ptr %133, align 4
  %148 = icmp eq ptr %147, %101
  br i1 %148, label %149, label %132

149:                                              ; preds = %145, %128
  %150 = phi i64 [ %146, %145 ], [ %129, %128 ]
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %149
  %153 = sub i64 %150, %107
  store i64 %153, ptr %94, align 8
  br label %159

154:                                              ; preds = %138, %117
  %155 = icmp eq i32 %103, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %154
  store i8 0, ptr %95, align 1
  br label %159

157:                                              ; preds = %154
  %158 = add i32 %103, -1
  br label %102

159:                                              ; preds = %156, %152, %149, %68
  %160 = phi i8 [ 0, %68 ], [ 0, %156 ], [ 1, %152 ], [ 1, %149 ]
  %161 = phi i32 [ 0, %68 ], [ 0, %156 ], [ %103, %152 ], [ %103, %149 ]
  %162 = getelementptr i8, ptr %0, i32 284
  store i32 %161, ptr %162, align 4
  %163 = icmp ne i32 %161, 0
  %164 = getelementptr i8, ptr %0, i32 258
  %165 = zext i1 %163 to i8
  store i8 %165, ptr %164, align 2
  br label %166

166:                                              ; preds = %159, %75
  %167 = phi i8 [ %160, %159 ], [ %81, %75 ]
  %168 = icmp ne i8 %167, 0
  ret i1 %168
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_pm_qos_resume_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_update_qos_constraint(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pm_subsys_data, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %8, i32 0, i32 1, i32 2
  %12 = load i64, ptr %11, align 8
  br label %17

13:                                               ; preds = %6, %2
  %14 = tail call i32 @dev_pm_qos_read_value(ptr noundef %0, i32 noundef 1) #7
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 1000
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i64 [ %12, %10 ], [ %16, %13 ]
  %19 = load i64, ptr %1, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 %18, ptr %1, align 8
  br label %22

22:                                               ; preds = %21, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!8 = !{i8 0, i8 2}
