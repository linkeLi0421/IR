; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@.str = private unnamed_addr constant [38 x i8] c"%s: THERM received an IRQ: stat = %x\0A\00", align 1
@nv40_therm = internal constant %struct.nvkm_therm_func { ptr @nv40_therm_init, ptr null, ptr @nv40_therm_intr, ptr @nv40_fan_pwm_ctrl, ptr @nv40_fan_pwm_get, ptr @nv40_fan_pwm_set, ptr null, ptr @nv40_temp_get, ptr null, ptr @nvkm_therm_program_alarms_polling, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: unknown pwm ctrl for gpio %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv40_therm_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4352
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4352
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 458752) #4, !srcloc !11
  %10 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %7) #5
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_therm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_therm_new_(ptr noundef nonnull @nv40_therm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_therm_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %66 [
    i32 67, label %39
    i32 68, label %39
    i32 74, label %39
    i32 71, label %39
    i32 70, label %6
    i32 73, label %6
    i32 75, label %6
    i32 78, label %6
    i32 76, label %6
    i32 103, label %6
    i32 104, label %6
    i32 99, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 5560
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %11 = and i32 %10, 2147483647
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 5560
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 5552
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -2147467265) #4, !srcloc !11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #4
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #4
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #4
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #4
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr i8, ptr %36, i32 5556
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %66

39:                                               ; preds = %1, %1, %1, %1
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 5552
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 255) #4, !srcloc !11
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #4
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #4
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #4
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #4
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #4
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #4
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #4
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #4
  %63 = load ptr, ptr %40, align 4
  %64 = getelementptr i8, ptr %63, i32 5556
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %66

66:                                               ; preds = %39, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fan_pwm_ctrl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = select i1 %2, i32 -2147483648, i32 0
  switch i32 %1, label %25 [
    i32 2, label %7
    i32 9, label %16
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4336
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = and i32 %11, 2147483647
  %13 = or i32 %12, %6
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 4336
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  br label %33

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 5620
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %21 = and i32 %20, 2147483647
  %22 = or i32 %21, %6
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr i8, ptr %23, i32 5620
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !11
  br label %33

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef %32, i32 noundef %1) #5
  br label %33

33:                                               ; preds = %29, %25, %16, %7
  %34 = phi i32 [ -19, %29 ], [ -19, %25 ], [ 0, %16 ], [ 0, %7 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fan_pwm_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %28 [
    i32 2, label %7
    i32 9, label %17
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4336
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %36, label %13

13:                                               ; preds = %7
  %14 = lshr i32 %11, 16
  %15 = and i32 %14, 32767
  store i32 %15, ptr %3, align 4
  %16 = and i32 %11, 32767
  store i32 %16, ptr %2, align 4
  br label %36

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 5620
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 5624
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  store i32 %26, ptr %2, align 4
  %27 = and i32 %21, 2147483647
  store i32 %27, ptr %3, align 4
  br label %36

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef %35, i32 noundef %1) #5
  br label %36

36:                                               ; preds = %32, %28, %23, %17, %13, %7
  %37 = phi i32 [ 0, %13 ], [ 0, %23 ], [ -19, %32 ], [ -19, %28 ], [ -22, %17 ], [ -22, %7 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_fan_pwm_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %29 [
    i32 2, label %7
    i32 9, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4336
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = and i32 %11, -2147450880
  %13 = shl i32 %3, 16
  %14 = or i32 %13, %2
  %15 = or i32 %14, %12
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 4336
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !11
  br label %37

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 5624
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %2) #4, !srcloc !11
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %22, i32 5620
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %25 = and i32 %24, -2147483648
  %26 = or i32 %25, %3
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr i8, ptr %27, i32 5620
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !11
  br label %37

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %1) #5
  br label %37

37:                                               ; preds = %33, %29, %18, %7
  %38 = phi i32 [ -19, %33 ], [ -19, %29 ], [ 0, %18 ], [ 0, %7 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_temp_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %54 [
    i32 67, label %15
    i32 68, label %15
    i32 74, label %15
    i32 71, label %15
    i32 70, label %7
    i32 73, label %7
    i32 75, label %7
    i32 78, label %7
    i32 76, label %7
    i32 103, label %7
    i32 104, label %7
    i32 99, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 5552
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -2147467265) #4, !srcloc !11
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 5556
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = and i32 %13, 16383
  br label %23

15:                                               ; preds = %1, %1, %1, %1
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 5552
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 255) #4, !srcloc !11
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 5556
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %15, %7
  %24 = phi i32 [ %14, %7 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %23
  %29 = load i16, ptr %4, align 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = sext i16 %29 to i32
  %41 = mul nsw i32 %24, %40
  %42 = sext i16 %26 to i32
  %43 = sdiv i32 %41, %42
  %44 = sext i16 %33 to i32
  %45 = sext i16 %37 to i32
  %46 = sdiv i32 %44, %45
  %47 = add nsw i32 %46, %43
  %48 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 8, i32 4
  %49 = load i8, ptr %48, align 2
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %47, %50
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 8)
  %53 = add nsw i32 %52, -8
  br label %54

54:                                               ; preds = %39, %35, %31, %28, %23, %1
  %55 = phi i32 [ %53, %39 ], [ -19, %35 ], [ -19, %31 ], [ -19, %28 ], [ -19, %23 ], [ -19, %1 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_program_alarms_polling(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3950118}
!9 = !{i64 2151489571}
!10 = !{i64 2151490793}
!11 = !{i64 3949700}
