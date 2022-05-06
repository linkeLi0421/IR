; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/temp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.120, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.120 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.121 = type { ptr, ptr }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@nvkm_therm_sensor_event.thresholds = internal unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str = private unnamed_addr constant [9 x i8] c"fanboost\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"downclock\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%s: temperature (%i C) went below the '%s' threshold\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: temperature (%i C) hit the '%s' threshold\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"%s: programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: internal sensor: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: nvbios_therm_sensor_parse failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvkm_therm_sensor_set_threshold_state(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 2, i32 %1
  store i32 %2, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_get_threshold_state(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 2, i32 %1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_sensor_event(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm_func, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #7
  %8 = icmp ugt i32 %1, 3
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, ptr @.str.4, ptr @.str.5
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %21 = getelementptr [4 x ptr], ptr @nvkm_therm_sensor_event.thresholds, i32 0, i32 %1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull %15, ptr noundef %20, i32 noundef %7, ptr noundef %22) #8
  br label %23

23:                                               ; preds = %13, %9
  %24 = icmp eq i32 %2, 1
  switch i32 %1, label %50 [
    i32 0, label %25
    i32 1, label %29
    i32 2, label %34
    i32 3, label %39
  ]

25:                                               ; preds = %23
  br i1 %24, label %26, label %50

26:                                               ; preds = %25
  %27 = tail call i32 @nvkm_therm_fan_set(ptr noundef %0, i1 noundef zeroext true, i32 noundef 100) #7
  %28 = tail call i32 @nvkm_therm_fan_mode(ptr noundef %0, i32 noundef 2) #7
  br label %50

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %0, i1 noundef zeroext %24) #7
  br label %50

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 11, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  tail call void %36(ptr noundef %0, i1 noundef zeroext %24) #7
  br label %50

39:                                               ; preds = %23
  br i1 %24, label %40, label %50

40:                                               ; preds = %39
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2592, i32 noundef 16) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  store i32 -32, ptr %42, align 8
  %45 = getelementptr inbounds %struct.work_struct, ptr %42, i32 0, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.work_struct, ptr %42, i32 0, i32 1, i32 1
  store ptr %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.work_struct, ptr %42, i32 0, i32 2
  store ptr @nv_poweroff_work, ptr %47, align 4
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %48, ptr noundef nonnull %42) #7
  br label %50

50:                                               ; preds = %44, %40, %39, %38, %34, %33, %29, %26, %25, %23, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_set(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_poweroff_work(ptr noundef %0) #2 {
  tail call void @orderly_poweroff(i1 noundef zeroext true) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_program_alarms_polling(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 3
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %11 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %5, %1
  %36 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 1
  tail call void @alarm_timer_callback(ptr noundef %36)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alarm_timer_callback(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -144
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr i8, ptr %0, i32 -27
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm_func, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %2) #7
  %14 = getelementptr i8, ptr %0, i32 32
  %15 = load i32, ptr %14, align 4
  %16 = load i8, ptr %9, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %13, %17
  %19 = icmp eq i32 %15, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %0, i32 -26
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %17, %24
  %26 = icmp sle i32 %13, %25
  %27 = icmp eq i32 %15, 1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %48

29:                                               ; preds = %21, %1
  %30 = phi i32 [ 1, %1 ], [ 0, %21 ]
  store i32 %30, ptr %14, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm_func, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %2) #7
  %35 = getelementptr i8, ptr %0, i32 -108
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = select i1 %20, ptr @.str.5, ptr @.str.4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %0, i32 -124
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull %39, ptr noundef %43, i32 noundef %34, ptr noundef nonnull @.str) #8
  br label %44

44:                                               ; preds = %38, %29
  br i1 %20, label %45, label %48

45:                                               ; preds = %44
  %46 = tail call i32 @nvkm_therm_fan_set(ptr noundef %2, i1 noundef zeroext true, i32 noundef 100) #7
  %47 = tail call i32 @nvkm_therm_fan_mode(ptr noundef %2, i32 noundef 2) #7
  br label %48

48:                                               ; preds = %45, %44, %21
  %49 = getelementptr i8, ptr %0, i32 -25
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.nvkm_therm_func, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %2) #7
  %54 = getelementptr i8, ptr %0, i32 36
  %55 = load i32, ptr %54, align 4
  %56 = load i8, ptr %49, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sge i32 %53, %57
  %59 = icmp eq i32 %55, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %69, label %61

61:                                               ; preds = %48
  %62 = getelementptr i8, ptr %0, i32 -24
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %57, %64
  %66 = icmp sle i32 %53, %65
  %67 = icmp eq i32 %55, 1
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %89

69:                                               ; preds = %61, %48
  %70 = phi i32 [ 1, %48 ], [ 0, %61 ]
  store i32 %70, ptr %54, align 4
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct.nvkm_therm_func, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef %2) #7
  %75 = getelementptr i8, ptr %0, i32 -108
  %76 = load i32, ptr %75, align 4
  %77 = icmp ugt i32 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = select i1 %60, ptr @.str.5, ptr @.str.4
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr i8, ptr %0, i32 -124
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull %79, ptr noundef %83, i32 noundef %74, ptr noundef nonnull @.str.1) #8
  br label %84

84:                                               ; preds = %78, %69
  %85 = getelementptr i8, ptr %0, i32 48
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void %86(ptr noundef %2, i1 noundef zeroext %60) #7
  br label %89

89:                                               ; preds = %88, %84, %61
  %90 = getelementptr i8, ptr %0, i32 -23
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.nvkm_therm_func, ptr %91, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %2) #7
  %95 = getelementptr i8, ptr %0, i32 40
  %96 = load i32, ptr %95, align 4
  %97 = load i8, ptr %90, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sge i32 %94, %98
  %100 = icmp eq i32 %96, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %110, label %102

102:                                              ; preds = %89
  %103 = getelementptr i8, ptr %0, i32 -22
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %98, %105
  %107 = icmp sle i32 %94, %106
  %108 = icmp eq i32 %96, 1
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %130

110:                                              ; preds = %102, %89
  %111 = phi i32 [ 1, %89 ], [ 0, %102 ]
  store i32 %111, ptr %95, align 4
  %112 = load ptr, ptr %2, align 8
  %113 = getelementptr inbounds %struct.nvkm_therm_func, ptr %112, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 %114(ptr noundef %2) #7
  %116 = getelementptr i8, ptr %0, i32 -108
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 2
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = select i1 %101, ptr @.str.5, ptr @.str.4
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr i8, ptr %0, i32 -124
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull %120, ptr noundef %124, i32 noundef %115, ptr noundef nonnull @.str.2) #8
  br label %125

125:                                              ; preds = %119, %110
  %126 = getelementptr i8, ptr %0, i32 52
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void %127(ptr noundef %2, i1 noundef zeroext %101) #7
  br label %130

130:                                              ; preds = %129, %125, %102
  %131 = getelementptr i8, ptr %0, i32 -21
  %132 = load ptr, ptr %2, align 8
  %133 = getelementptr inbounds %struct.nvkm_therm_func, ptr %132, i32 0, i32 7
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 %134(ptr noundef %2) #7
  %136 = getelementptr i8, ptr %0, i32 44
  %137 = load i32, ptr %136, align 4
  %138 = load i8, ptr %131, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp sge i32 %135, %139
  %141 = icmp eq i32 %137, 0
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %151, label %143

143:                                              ; preds = %130
  %144 = getelementptr i8, ptr %0, i32 -20
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = sub nsw i32 %139, %146
  %148 = icmp sle i32 %135, %147
  %149 = icmp eq i32 %137, 1
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %177

151:                                              ; preds = %143, %130
  %152 = phi i32 [ 1, %130 ], [ 0, %143 ]
  store i32 %152, ptr %136, align 4
  %153 = load ptr, ptr %2, align 8
  %154 = getelementptr inbounds %struct.nvkm_therm_func, ptr %153, i32 0, i32 7
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 %155(ptr noundef %2) #7
  %157 = getelementptr i8, ptr %0, i32 -108
  %158 = load i32, ptr %157, align 4
  %159 = icmp ugt i32 %158, 2
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = select i1 %142, ptr @.str.5, ptr @.str.4
  %162 = load ptr, ptr %3, align 4
  %163 = getelementptr inbounds %struct.nvkm_device, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr i8, ptr %0, i32 -124
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %164, ptr noundef nonnull %161, ptr noundef %165, i32 noundef %156, ptr noundef nonnull @.str.3) #8
  br label %166

166:                                              ; preds = %160, %151
  br i1 %142, label %167, label %177

167:                                              ; preds = %166
  %168 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %169 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %168, i32 noundef 2592, i32 noundef 16) #9
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  store i32 -32, ptr %169, align 8
  %172 = getelementptr inbounds %struct.work_struct, ptr %169, i32 0, i32 1
  store volatile ptr %172, ptr %172, align 4
  %173 = getelementptr inbounds %struct.work_struct, ptr %169, i32 0, i32 1, i32 1
  store ptr %172, ptr %173, align 8
  %174 = getelementptr inbounds %struct.work_struct, ptr %169, i32 0, i32 2
  store ptr @nv_poweroff_work, ptr %174, align 4
  %175 = load ptr, ptr @system_wq, align 4
  %176 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %175, ptr noundef nonnull %169) #7
  br label %177

177:                                              ; preds = %171, %167, %166, %143
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr inbounds %struct.nvkm_therm_func, ptr %178, i32 0, i32 7
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 %180(ptr noundef %2) #7
  %182 = icmp sgt i32 %181, -1
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  tail call void @nvkm_timer_alarm(ptr noundef %6, i32 noundef 1000000000, ptr noundef %0) #7
  br label %184

184:                                              ; preds = %183, %177
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_therm_func, ptr %2, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_fini(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  br i1 %1, label %3, label %9

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %7, i32 noundef 0, ptr noundef %8) #7
  br label %9

9:                                                ; preds = %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_sensor_preinit(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_therm_func, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = icmp slt i32 %5, 0
  %11 = select i1 %10, ptr @.str.8, ptr @.str.7
  %12 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %16, ptr noundef nonnull %11) #8
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_sensor_ctor(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10, i32 1, i32 3
  store ptr @alarm_timer_callback, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 4
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5
  store i8 90, ptr %10, align 1
  %11 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5, i32 1
  store i8 3, ptr %11, align 1
  %12 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6
  store i8 95, ptr %12, align 1
  %13 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6, i32 1
  store i8 3, ptr %13, align 1
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7
  store i8 105, ptr %14, align 1
  %15 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7, i32 1
  store i8 5, ptr %15, align 1
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8
  store i8 -121, ptr %16, align 1
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8, i32 1
  store i8 5, ptr %17, align 1
  %18 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8
  %19 = tail call i32 @nvbios_therm_sensor_parse(ptr noundef %5, i32 noundef 0, ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %25, %21, %1
  %31 = load i8, ptr %11, align 1
  %32 = tail call i8 @llvm.umax.i8(i8 %31, i8 2) #7
  store i8 %32, ptr %11, align 1
  %33 = load i8, ptr %13, align 1
  %34 = tail call i8 @llvm.umax.i8(i8 %33, i8 2) #7
  store i8 %34, ptr %13, align 1
  %35 = load i8, ptr %15, align 1
  %36 = tail call i8 @llvm.umax.i8(i8 %35, i8 2) #7
  store i8 %36, ptr %15, align 1
  %37 = load i8, ptr %17, align 1
  %38 = tail call i8 @llvm.umax.i8(i8 %37, i8 2) #7
  store i8 %38, ptr %17, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_therm_sensor_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
