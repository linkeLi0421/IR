; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
%struct.nvbios_perf_fan = type { i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@.str = private unnamed_addr constant [31 x i8] c"%s: default fan speed -> %d%%\0A\00", align 1
@nvkm_therm_fan_mode.name = internal unnamed_addr constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: fan management: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: Enabling clockgating\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: Preparing clockgating for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@nvkm_therm = internal constant %struct.nvkm_subdev_func { ptr @nvkm_therm_dtor, ptr null, ptr @nvkm_therm_oneinit, ptr null, ptr @nvkm_therm_init, ptr @nvkm_therm_fini, ptr @nvkm_therm_intr }, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"NvPmEnableGating\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: FAN target request: %d%%\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: Clockgating enabled\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_temp_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_therm_func, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -19, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_cstate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 0
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %9, label %11

9:                                                ; preds = %5
  %10 = icmp sgt i32 %8, %1
  br i1 %10, label %13, label %25

11:                                               ; preds = %5
  %12 = icmp slt i32 %8, %1
  br i1 %12, label %13, label %25

13:                                               ; preds = %11, %9, %3
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %1) #7
  br label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 6
  store i32 %1, ptr %24, align 4
  tail call fastcc void @nvkm_therm_update(ptr noundef %0, i32 noundef -1)
  br label %25

25:                                               ; preds = %23, %11, %9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_therm_update(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ %12, %10 ], [ %1, %2 ]
  %15 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  store i32 %14, ptr %15, align 8
  switch i32 %14, label %156 [
    i32 1, label %16
    i32 2, label %21
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %6, i32 noundef 0, ptr noundef %17) #6
  %18 = tail call i32 @nvkm_therm_fan_get(ptr noundef %0) #6
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %19, i32 100, i32 %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  br label %164

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_fan, ptr %23, i32 0, i32 2, i32 6
  %25 = load i32, ptr %24, align 8
  switch i32 %25, label %158 [
    i32 0, label %26
    i32 1, label %73
    i32 2, label %114
  ]

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvkm_fan, ptr %23, i32 0, i32 2, i32 7
  %28 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.nvkm_therm_func, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0) #6
  %34 = load ptr, ptr %22, align 8
  %35 = getelementptr inbounds %struct.nvkm_fan, ptr %34, i32 0, i32 2, i32 8
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %26
  %39 = and i32 %33, 255
  %40 = zext i8 %36 to i32
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ 0, %38 ], [ %49, %41 ]
  %43 = phi ptr [ null, %38 ], [ %48, %41 ]
  %44 = getelementptr %struct.nvbios_therm_trip_point, ptr %27, i32 %42, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %39, %45
  %47 = getelementptr %struct.nvbios_therm_trip_point, ptr %27, i32 %42
  %48 = select i1 %46, ptr %43, ptr %47
  %49 = add nuw nsw i32 %42, 1
  %50 = icmp eq i32 %49, %40
  br i1 %50, label %51, label %41

51:                                               ; preds = %41, %26
  %52 = phi ptr [ null, %26 ], [ %48, %41 ]
  %53 = icmp eq ptr %29, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = and i32 %33, 255
  %56 = getelementptr inbounds %struct.nvbios_therm_trip_point, ptr %29, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.nvbios_therm_trip_point, ptr %29, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %57, %61
  %63 = icmp sgt i32 %55, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %54, %51
  %65 = icmp eq ptr %52, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %52, %64 ], [ %29, %59 ]
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 65535
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi ptr [ %67, %66 ], [ null, %64 ]
  %72 = phi i32 [ %69, %66 ], [ 0, %64 ]
  store ptr %71, ptr %28, align 4
  br label %158

73:                                               ; preds = %21
  %74 = getelementptr inbounds %struct.nvkm_fan, ptr %23, i32 0, i32 2, i32 9
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.nvkm_fan, ptr %23, i32 0, i32 2, i32 10
  %77 = load i8, ptr %76, align 2
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr inbounds %struct.nvkm_therm_func, ptr %78, i32 0, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %0) #6
  %82 = and i32 %81, 255
  %83 = zext i8 %75 to i32
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load ptr, ptr %22, align 8
  %87 = getelementptr inbounds %struct.nvkm_fan, ptr %86, i32 0, i32 2, i32 2
  %88 = load i8, ptr %87, align 8
  %89 = zext i8 %88 to i32
  br label %158

90:                                               ; preds = %73
  %91 = zext i8 %77 to i32
  %92 = icmp ugt i32 %82, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load ptr, ptr %22, align 8
  %95 = getelementptr inbounds %struct.nvkm_fan, ptr %94, i32 0, i32 2, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  br label %158

98:                                               ; preds = %90
  %99 = sub nsw i32 %82, %83
  %100 = load ptr, ptr %22, align 8
  %101 = getelementptr inbounds %struct.nvkm_fan, ptr %100, i32 0, i32 2, i32 3
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds %struct.nvkm_fan, ptr %100, i32 0, i32 2, i32 2
  %105 = load i8, ptr %104, align 8
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %103, %106
  %108 = mul nsw i32 %107, %99
  %109 = sub nsw i32 %91, %83
  %110 = and i32 %108, 65535
  %111 = sdiv i32 %110, %109
  %112 = add nsw i32 %111, %106
  %113 = and i32 %112, 65535
  br label %158

114:                                              ; preds = %21
  %115 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5
  %120 = load i8, ptr %119, align 1
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds %struct.nvkm_therm_func, ptr %121, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %0) #6
  %125 = and i32 %124, 255
  %126 = icmp ult i32 %125, 30
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load ptr, ptr %22, align 8
  %129 = getelementptr inbounds %struct.nvkm_fan, ptr %128, i32 0, i32 2, i32 2
  %130 = load i8, ptr %129, align 8
  %131 = zext i8 %130 to i32
  br label %158

132:                                              ; preds = %118
  %133 = zext i8 %120 to i32
  %134 = icmp ugt i32 %125, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load ptr, ptr %22, align 8
  %137 = getelementptr inbounds %struct.nvkm_fan, ptr %136, i32 0, i32 2, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  br label %158

140:                                              ; preds = %132
  %141 = add nuw nsw i32 %125, 65506
  %142 = load ptr, ptr %22, align 8
  %143 = getelementptr inbounds %struct.nvkm_fan, ptr %142, i32 0, i32 2, i32 3
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds %struct.nvkm_fan, ptr %142, i32 0, i32 2, i32 2
  %147 = load i8, ptr %146, align 8
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %145, %148
  %150 = mul nsw i32 %149, %141
  %151 = add nsw i32 %133, -30
  %152 = and i32 %150, 65535
  %153 = sdiv i32 %152, %151
  %154 = add nsw i32 %153, %148
  %155 = and i32 %154, 65535
  br label %158

156:                                              ; preds = %13
  %157 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %6, i32 noundef 0, ptr noundef %157) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  br label %177

158:                                              ; preds = %140, %135, %127, %98, %93, %85, %70, %21
  %159 = phi i32 [ %155, %140 ], [ %139, %135 ], [ %131, %127 ], [ %113, %98 ], [ %97, %93 ], [ %89, %85 ], [ %72, %70 ], [ -1, %21 ]
  %160 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2
  tail call void @nvkm_timer_alarm(ptr noundef %6, i32 noundef 1000000000, ptr noundef %160) #6
  br label %161

161:                                              ; preds = %158, %114
  %162 = phi i32 [ %159, %158 ], [ %116, %114 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %164, label %177

164:                                              ; preds = %161, %16
  %165 = phi i1 [ true, %16 ], [ false, %161 ]
  %166 = phi i32 [ %20, %16 ], [ %162, %161 ]
  %167 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = icmp ugt i32 %168, 3
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr inbounds %struct.nvkm_device, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %173, ptr noundef nonnull @.str.10, ptr noundef %174, i32 noundef %166) #7
  br label %175

175:                                              ; preds = %170, %164
  %176 = tail call i32 @nvkm_therm_fan_set(ptr noundef %0, i1 noundef zeroext %165, i32 noundef %166) #6
  br label %177

177:                                              ; preds = %175, %161, %156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 2
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %4) #6
  br i1 %9, label %34, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %1, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %12, %10, %6
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %31 = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %1
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef %30, ptr noundef %32) #7
  br label %33

33:                                               ; preds = %26, %22
  tail call fastcc void @nvkm_therm_update(ptr noundef %0, i32 noundef %1)
  br label %34

34:                                               ; preds = %33, %18, %12, %8, %2
  %35 = phi i32 [ 0, %33 ], [ -22, %8 ], [ -22, %2 ], [ -22, %12 ], [ 0, %18 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_attr_get(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  switch i32 %1, label %50 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %15
    i32 10, label %18
    i32 11, label %22
    i32 12, label %26
    i32 13, label %30
    i32 14, label %34
    i32 15, label %38
    i32 16, label %42
    i32 17, label %46
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fan, ptr %5, i32 0, i32 2, i32 2
  %7 = load i8, ptr %6, align 8
  %8 = zext i8 %7 to i32
  br label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_fan, ptr %11, i32 0, i32 2, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br label %50

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  br label %50

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  br label %50

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %50

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  br label %50

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  br label %50

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  br label %50

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  br label %50

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  br label %50

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  br label %50

50:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %15, %9, %3, %2
  %51 = phi i32 [ %49, %46 ], [ %45, %42 ], [ %41, %38 ], [ %37, %34 ], [ %33, %30 ], [ %29, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %15 ], [ %14, %9 ], [ %8, %3 ], [ -22, %2 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_attr_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %104 [
    i32 0, label %4
    i32 1, label %14
    i32 2, label %24
    i32 10, label %56
    i32 11, label %62
    i32 12, label %68
    i32 13, label %74
    i32 14, label %80
    i32 15, label %86
    i32 16, label %92
    i32 17, label %98
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_fan, ptr %7, i32 0, i32 2, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @llvm.umin.i32(i32 %5, i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.nvkm_fan, ptr %7, i32 0, i32 2, i32 2
  store i8 %12, ptr %13, align 8
  br label %104

14:                                               ; preds = %3
  %15 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_fan, ptr %17, i32 0, i32 2, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @llvm.umax.i32(i32 %15, i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.nvkm_fan, ptr %17, i32 0, i32 2, i32 3
  store i8 %22, ptr %23, align 1
  br label %104

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt i32 %2, 2
  br i1 %27, label %104, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %26) #6
  br i1 %31, label %104, label %32

32:                                               ; preds = %30
  %33 = icmp eq i32 %2, 2
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.nvkm_therm_func, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %104, label %40

40:                                               ; preds = %34, %32, %28
  %41 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %104, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %53 = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %2
  %54 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.4, ptr noundef %52, ptr noundef %54) #7
  br label %55

55:                                               ; preds = %48, %44
  tail call fastcc void @nvkm_therm_update(ptr noundef %0, i32 noundef %2) #6
  br label %104

56:                                               ; preds = %3
  %57 = trunc i32 %2 to i8
  %58 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5
  store i8 %57, ptr %58, align 1
  %59 = load ptr, ptr %0, align 8
  %60 = getelementptr inbounds %struct.nvkm_therm_func, ptr %59, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %0) #6
  br label %104

62:                                               ; preds = %3
  %63 = trunc i32 %2 to i8
  %64 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 5, i32 1
  store i8 %63, ptr %64, align 1
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.nvkm_therm_func, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %0) #6
  br label %104

68:                                               ; preds = %3
  %69 = trunc i32 %2 to i8
  %70 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6
  store i8 %69, ptr %70, align 1
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds %struct.nvkm_therm_func, ptr %71, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %0) #6
  br label %104

74:                                               ; preds = %3
  %75 = trunc i32 %2 to i8
  %76 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 6, i32 1
  store i8 %75, ptr %76, align 1
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.nvkm_therm_func, ptr %77, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %0) #6
  br label %104

80:                                               ; preds = %3
  %81 = trunc i32 %2 to i8
  %82 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7
  store i8 %81, ptr %82, align 1
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr inbounds %struct.nvkm_therm_func, ptr %83, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %0) #6
  br label %104

86:                                               ; preds = %3
  %87 = trunc i32 %2 to i8
  %88 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 7, i32 1
  store i8 %87, ptr %88, align 1
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.nvkm_therm_func, ptr %89, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  tail call void %91(ptr noundef %0) #6
  br label %104

92:                                               ; preds = %3
  %93 = trunc i32 %2 to i8
  %94 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8
  store i8 %93, ptr %94, align 1
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr inbounds %struct.nvkm_therm_func, ptr %95, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %0) #6
  br label %104

98:                                               ; preds = %3
  %99 = trunc i32 %2 to i8
  %100 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 8, i32 1
  store i8 %99, ptr %100, align 1
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr inbounds %struct.nvkm_therm_func, ptr %101, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %0) #6
  br label %104

104:                                              ; preds = %98, %92, %86, %80, %74, %68, %62, %56, %55, %40, %34, %30, %24, %14, %4, %3
  %105 = phi i32 [ 0, %98 ], [ 0, %92 ], [ 0, %86 ], [ 0, %80 ], [ 0, %74 ], [ 0, %68 ], [ 0, %62 ], [ 0, %56 ], [ 0, %14 ], [ 0, %4 ], [ -22, %3 ], [ 0, %55 ], [ -22, %30 ], [ -22, %24 ], [ -22, %34 ], [ 0, %40 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm_func, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 17
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef %21) #7
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.nvkm_therm_func, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi ptr [ %24, %16 ], [ %6, %12 ]
  tail call void %26(ptr noundef nonnull %0) #6
  br label %27

27:                                               ; preds = %25, %8, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_fini(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm_func, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 17
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %23 = select i1 %1, ptr @.str.7, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %22, ptr noundef nonnull %23) #7
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.nvkm_therm_func, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %17, %13
  %28 = phi ptr [ %26, %17 ], [ %7, %13 ]
  tail call void %28(ptr noundef nonnull %0, i1 noundef zeroext %1) #6
  br label %29

29:                                               ; preds = %27, %9, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_clkgate_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm_func, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 17
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %7(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %14

14:                                               ; preds = %13, %9, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_therm_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_therm, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #6
  store ptr %4, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 2, i32 3
  store ptr @nvkm_therm_alarm, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 3
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 10
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 13
  store ptr @nvkm_therm_fan_user_get, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 14
  store ptr @nvkm_therm_fan_user_set, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 15
  store ptr @nvkm_therm_attr_get, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 16
  store ptr @nvkm_therm_attr_set, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 7
  store i32 -1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  store i32 -1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %19, ptr noundef nonnull @.str.9, i1 noundef zeroext false) #6
  %21 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 17
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_therm_alarm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  tail call fastcc void @nvkm_therm_update(ptr noundef %2, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_user_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_user_set(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 224) #8
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_therm, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 2
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 2, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 2, i32 3
  store ptr @nvkm_therm_alarm, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 3
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 10
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 13
  store ptr @nvkm_therm_fan_user_get, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 14
  store ptr @nvkm_therm_fan_user_set, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 15
  store ptr @nvkm_therm_attr_get, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 16
  store ptr @nvkm_therm_attr_set, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 7
  store i32 -1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 5
  store i32 -1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %23, ptr noundef nonnull @.str.9, i1 noundef zeroext false) #6
  %25 = getelementptr inbounds %struct.nvkm_therm, ptr %7, i32 0, i32 17
  %26 = zext i1 %24 to i8
  store i8 %26, ptr %25, align 4
  br label %27

27:                                               ; preds = %9, %5
  %28 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_set(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_therm_dtor(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 124
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #6
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_therm_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = tail call i32 @nvkm_therm_sensor_ctor(ptr noundef %2) #6
  tail call void @nvkm_therm_ic_ctor(ptr noundef %2) #6
  %4 = tail call i32 @nvkm_therm_fan_ctor(ptr noundef %2) #6
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %6) #6
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm_func, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %2) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 92
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef %26, ptr noundef nonnull @.str.3) #7
  br label %27

27:                                               ; preds = %22, %18
  tail call fastcc void @nvkm_therm_update(ptr noundef %2, i32 noundef 2) #6
  br label %28

28:                                               ; preds = %27, %14, %8, %1
  tail call void @nvkm_therm_sensor_preinit(ptr noundef %2) #6
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.nvkm_therm_func, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %0, i32 216
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 32
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 2
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.11, ptr noundef %45) #7
  br label %46

46:                                               ; preds = %41, %37, %33, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_therm_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #6
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 100
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 4
  br label %37

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 124
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_fan, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @nvkm_therm_fan_set(ptr noundef %2, i1 noundef zeroext true, i32 noundef %19) #6
  %21 = load i32, ptr %8, align 8
  %22 = getelementptr i8, ptr %0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ugt i32 %21, 2
  br i1 %24, label %55, label %25

25:                                               ; preds = %15
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %25
  %28 = tail call zeroext i1 @nvkm_pmu_fan_controlled(ptr noundef %23) #6
  br i1 %28, label %55, label %29

29:                                               ; preds = %27
  %30 = icmp eq i32 %21, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.nvkm_therm_func, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %2) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %31, %29, %25, %13
  %38 = phi i32 [ 0, %13 ], [ 2, %31 ], [ 1, %29 ], [ 0, %25 ]
  %39 = phi ptr [ %14, %13 ], [ %22, %31 ], [ %22, %29 ], [ %22, %25 ]
  %40 = getelementptr i8, ptr %0, i32 92
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, %38
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %0, i32 32
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 3
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %0, i32 16
  %52 = getelementptr [3 x ptr], ptr @nvkm_therm_fan_mode.name, i32 0, i32 %38
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.4, ptr noundef %51, ptr noundef %53) #7
  br label %54

54:                                               ; preds = %47, %43
  tail call fastcc void @nvkm_therm_update(ptr noundef %2, i32 noundef %38) #6
  br label %55

55:                                               ; preds = %54, %37, %31, %27, %15, %7
  %56 = tail call i32 @nvkm_therm_sensor_init(ptr noundef %2) #6
  %57 = tail call i32 @nvkm_therm_fan_init(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_therm_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm_func, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #6
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call i32 @nvkm_therm_fan_fini(ptr noundef %3, i1 noundef zeroext %1) #6
  %11 = tail call i32 @nvkm_therm_sensor_fini(ptr noundef %3, i1 noundef zeroext %1) #6
  br i1 %1, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 92
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 100
  store i32 %14, ptr %15, align 8
  store i32 0, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_therm_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_therm_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #6
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_ic_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_sensor_preinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_sensor_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
