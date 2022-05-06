; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@gf119_therm = internal constant %struct.nvkm_therm_func { ptr @gf119_therm_init, ptr @g84_therm_fini, ptr null, ptr @gf119_fan_pwm_ctrl, ptr @gf119_fan_pwm_get, ptr @gf119_fan_pwm_set, ptr @gf119_fan_pwm_clock, ptr @g84_temp_get, ptr @gt215_therm_fan_sense, ptr @nvkm_therm_program_alarms_polling, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: GPIO %d unknown PWM: %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_fan_pwm_ctrl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = select i1 %2, i32 64, i32 0
  %7 = tail call fastcc i32 @pwm_info(ptr noundef %0, i32 noundef %1)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp ult i32 %7, 2
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = shl i32 %1, 2
  %13 = add i32 %12, 54800
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %18 = and i32 %17, -193
  %19 = or i32 %18, %6
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #3, !srcloc !11
  br label %22

22:                                               ; preds = %11, %9, %3
  %23 = phi i32 [ %7, %3 ], [ 0, %9 ], [ 0, %11 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_info(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 54800
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, -64
  switch i8 %12, label %17 [
    i8 0, label %13
    i8 64, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = and i32 %10, 31
  switch i32 %14, label %17 [
    i32 0, label %26
    i32 25, label %15
    i32 28, label %16
    i32 30, label %26
  ]

15:                                               ; preds = %13
  br label %26

16:                                               ; preds = %13
  br label %26

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %1, i32 noundef %10) #4
  br label %26

26:                                               ; preds = %21, %17, %16, %15, %13, %13
  %27 = phi i32 [ 0, %16 ], [ 1, %15 ], [ 2, %13 ], [ 2, %13 ], [ -19, %21 ], [ -19, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_fan_pwm_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @pwm_info(ptr noundef %0, i32 noundef %1)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %4
  %10 = icmp ult i32 %7, 2
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %30

13:                                               ; preds = %9
  %14 = shl i32 %1, 2
  %15 = add i32 %14, 54800
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %11, align 4
  %22 = shl nuw nsw i32 %7, 3
  %23 = add nuw nsw i32 %22, 57620
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  store i32 %25, ptr %2, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = add nuw nsw i32 %22, 57624
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %38

30:                                               ; preds = %9
  %31 = getelementptr i8, ptr %12, i32 131288
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %33 = and i32 %32, 8191
  store i32 %33, ptr %2, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr i8, ptr %34, i32 131292
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %37 = and i32 %36, 8191
  br label %38

38:                                               ; preds = %30, %20
  %39 = phi i32 [ %37, %30 ], [ %29, %20 ]
  store i32 %39, ptr %3, align 4
  br label %40

40:                                               ; preds = %38, %13, %4
  %41 = phi i32 [ %7, %4 ], [ -22, %13 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_fan_pwm_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @pwm_info(ptr noundef %0, i32 noundef %1)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = icmp ult i32 %7, 2
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %21

13:                                               ; preds = %9
  %14 = shl nuw nsw i32 %7, 3
  %15 = add nuw nsw i32 %14, 57620
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %2) #3, !srcloc !11
  %17 = or i32 %3, -2147483648
  %18 = load ptr, ptr %11, align 4
  %19 = add nuw nsw i32 %14, 57624
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #3, !srcloc !11
  br label %31

21:                                               ; preds = %9
  %22 = getelementptr i8, ptr %12, i32 131288
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %24 = and i32 %23, -8192
  %25 = or i32 %24, %2
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 131288
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #3, !srcloc !11
  %28 = or i32 %3, 1073741824
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 131292
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #3, !srcloc !11
  br label %31

31:                                               ; preds = %21, %13, %4
  %32 = phi i32 [ %7, %4 ], [ 0, %13 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_fan_pwm_clock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @pwm_info(ptr noundef %0, i32 noundef %1)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp ult i32 %5, 2
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 1000
  br i1 %8, label %12, label %14

12:                                               ; preds = %7
  %13 = udiv i32 %11, 20
  br label %16

14:                                               ; preds = %7
  %15 = udiv i32 %11, 10
  br label %16

16:                                               ; preds = %14, %12, %2
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_therm_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @g84_sensor_setup(ptr noundef %0) #3
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 59168
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = and i32 %7, -4
  %9 = or i32 %8, 2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 59168
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #3, !srcloc !11
  %12 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_fan, ptr %13, i32 0, i32 9
  %15 = load i8, ptr %14, align 8
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %40, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 55196
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %21 = and i32 %20, -256
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds %struct.nvkm_fan, ptr %22, i32 0, i32 9, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %21, %25
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 55196
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #3, !srcloc !11
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 18
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, 1000
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 59172
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #3, !srcloc !11
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 59168
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %37 = or i32 %36, 1
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 59168
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #3, !srcloc !11
  br label %40

40:                                               ; preds = %17, %1
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 59168
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %44 = and i32 %43, -3
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 59168
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_sensor_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_therm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_therm_new_(ptr noundef nonnull @gf119_therm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_therm_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_temp_get(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_therm_fan_sense(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_program_alarms_polling(ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3949000}
!9 = !{i64 2151488453}
!10 = !{i64 2151489675}
!11 = !{i64 3948582}
