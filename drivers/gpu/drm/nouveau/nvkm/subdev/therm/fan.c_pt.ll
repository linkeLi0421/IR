; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fan.c"
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
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
%struct.nvbios_perf_fan = type { i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"%s: GPIO_FAN is in input mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: FAN control: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: parsing the fan table failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: parsing both fan tables failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: FAN target: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: FAN update: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fan, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %0) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_set(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @nvkm_fan_update(ptr noundef %5, i1 noundef zeroext %1, i32 noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_fan_update(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = icmp slt i32 %2, 0
  %12 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = select i1 %11, i32 %13, i32 %2
  %15 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 2, i32 2
  %16 = load i8, ptr %15, align 8
  %17 = and i32 %14, 255
  %18 = zext i8 %16 to i32
  %19 = tail call i32 @llvm.umax.i32(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 2, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @llvm.umin.i32(i32 %19, i32 %22)
  %24 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 6
  %25 = icmp eq i32 %13, %23
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nvkm_therm, ptr %4, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_therm, ptr %4, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef %34, i32 noundef %23) #8
  br label %35

35:                                               ; preds = %30, %26
  store i32 %23, ptr %24, align 4
  br label %36

36:                                               ; preds = %35, %3
  %37 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 %38(ptr noundef %4) #7
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  br label %83

42:                                               ; preds = %36
  %43 = xor i1 %1, true
  %44 = icmp sgt i32 %39, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = icmp ult i32 %39, %23
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = add nuw i32 %39, 3
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 %23)
  br label %56

51:                                               ; preds = %46
  %52 = icmp ugt i32 %39, %23
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = add nsw i32 %39, -3
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 %23)
  br label %56

56:                                               ; preds = %53, %51, %48, %42
  %57 = phi i32 [ %50, %48 ], [ %55, %53 ], [ %39, %51 ], [ %23, %42 ]
  %58 = getelementptr inbounds %struct.nvkm_therm, ptr %4, i32 0, i32 1, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_therm, ptr %4, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.5, ptr noundef %65, i32 noundef %57) #8
  br label %66

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %4, i32 noundef %57) #7
  %70 = icmp eq i32 %69, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = icmp eq i32 %23, %57
  br i1 %72, label %83, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 2, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 2, i32 5
  %77 = load i16, ptr %76, align 4
  %78 = icmp sgt i32 %57, %23
  %79 = select i1 %78, i16 %77, i16 %75
  %80 = zext i16 %79 to i32
  %81 = mul i32 %80, 1000000
  %82 = getelementptr inbounds %struct.nvkm_fan, ptr %0, i32 0, i32 4
  tail call void @nvkm_timer_alarm(ptr noundef %8, i32 noundef %81, ptr noundef %82) #7
  br label %83

83:                                               ; preds = %73, %71, %66, %41
  %84 = phi i32 [ 0, %41 ], [ 0, %73 ], [ 0, %71 ], [ %69, %66 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_sense(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 31
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm_func, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 %10(ptr noundef %0) #7
  br label %63

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_fan, ptr %16, i32 0, i32 9
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %63, label %20

20:                                               ; preds = %14
  %21 = tail call i64 @nvkm_timer_read(ptr noundef %5) #7
  %22 = load ptr, ptr %15, align 8
  %23 = getelementptr inbounds %struct.nvkm_fan, ptr %22, i32 0, i32 9
  %24 = load i8, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_fan, ptr %22, i32 0, i32 9, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = tail call i32 @nvkm_gpio_get(ptr noundef %7, i32 noundef 0, i8 noundef zeroext %24, i8 noundef zeroext %26) #7
  br label %28

28:                                               ; preds = %47, %20
  %29 = phi i32 [ 0, %20 ], [ %50, %47 ]
  %30 = phi i32 [ %27, %20 ], [ %49, %47 ]
  %31 = phi i64 [ %21, %20 ], [ %48, %47 ]
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr inbounds %struct.nvkm_fan, ptr %32, i32 0, i32 9
  %34 = load i8, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_fan, ptr %32, i32 0, i32 9, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = tail call i32 @nvkm_gpio_get(ptr noundef %7, i32 noundef 0, i8 noundef zeroext %34, i8 noundef zeroext %36) #7
  %38 = icmp eq i32 %30, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %28
  %40 = icmp eq i64 %31, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i64 @nvkm_timer_read(ptr noundef %5) #7
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %31, %39 ], [ %42, %41 ]
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp ult i32 %29, 4
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %28
  %48 = phi i64 [ %44, %43 ], [ %31, %28 ]
  %49 = phi i32 [ %37, %43 ], [ %30, %28 ]
  %50 = phi i32 [ %45, %43 ], [ %29, %28 ]
  %51 = tail call i64 @nvkm_timer_read(ptr noundef %5) #7
  %52 = sub i64 %51, %48
  %53 = icmp ult i64 %52, 250000000
  br i1 %53, label %28, label %54

54:                                               ; preds = %47
  %55 = tail call i64 @nvkm_timer_read(ptr noundef %5) #7
  br label %63

56:                                               ; preds = %43
  %57 = tail call i64 @nvkm_timer_read(ptr noundef %5) #7
  %58 = sub i64 %57, %44
  %59 = trunc i64 %58 to i32
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %59, i64 60000000000) #9, !srcloc !8
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %56, %54, %14, %12
  %64 = phi i32 [ %13, %12 ], [ -19, %14 ], [ 0, %54 ], [ %62, %56 ]
  ret i32 %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_user_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fan, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %0) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_user_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @nvkm_fan_update(ptr noundef %8, i1 noundef zeroext true, i32 noundef %1) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_therm_fan_init(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  br i1 %1, label %3, label %11

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_fan, ptr %9, i32 0, i32 4
  tail call void @nvkm_timer_alarm(ptr noundef %7, i32 noundef 0, ptr noundef %10) #7
  br label %11

11:                                               ; preds = %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_therm_fan_ctor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dcb_gpio_func, align 1
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false), !annotation !9
  %9 = call i32 @nvkm_gpio_find(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 9, i8 noundef zeroext -1, ptr noundef nonnull %2) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dcb_gpio_func, ptr %2, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 16
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dcb_gpio_func, ptr %2, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %28) #8
  br label %35

29:                                               ; preds = %15, %11
  %30 = call i32 @nvkm_fanpwm_create(ptr noundef %0, ptr noundef nonnull %2) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = call i32 @nvkm_fantog_create(ptr noundef %0, ptr noundef nonnull %2) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %24, %20, %1
  %36 = call i32 @nvkm_fannil_create(ptr noundef %0) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %139

38:                                               ; preds = %35, %32, %29
  %39 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %47 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_fan, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.1, ptr noundef %46, ptr noundef %50) #8
  br label %51

51:                                               ; preds = %42, %38
  %52 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_fan, ptr %53, i32 0, i32 7
  %55 = load ptr, ptr %54, align 8
  %56 = call i32 %55(ptr noundef %0) #7
  %57 = load ptr, ptr %52, align 8
  %58 = getelementptr inbounds %struct.nvkm_fan, ptr %57, i32 0, i32 6
  store i32 %56, ptr %58, align 4
  %59 = load ptr, ptr %52, align 8
  %60 = getelementptr inbounds %struct.nvkm_fan, ptr %59, i32 0, i32 9
  %61 = call i32 @nvkm_gpio_find(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 61, i8 noundef zeroext -1, ptr noundef %60) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load ptr, ptr %52, align 8
  %65 = getelementptr inbounds %struct.nvkm_fan, ptr %64, i32 0, i32 9
  store i8 -1, ptr %65, align 8
  br label %66

66:                                               ; preds = %63, %51
  %67 = load ptr, ptr %52, align 8
  store ptr %0, ptr %67, align 8
  %68 = load ptr, ptr %52, align 8
  %69 = getelementptr inbounds %struct.nvkm_fan, ptr %68, i32 0, i32 4
  store volatile ptr %69, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nvkm_fan, ptr %68, i32 0, i32 4, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nvkm_fan, ptr %68, i32 0, i32 4, i32 3
  store ptr @nvkm_fan_alarm, ptr %71, align 8
  %72 = load ptr, ptr %52, align 8
  %73 = getelementptr inbounds %struct.nvkm_fan, ptr %72, i32 0, i32 5
  store i32 0, ptr %73, align 8
  %74 = load ptr, ptr %52, align 8
  %75 = getelementptr inbounds %struct.nvkm_fan, ptr %74, i32 0, i32 2, i32 1
  store i32 0, ptr %75, align 4
  %76 = load ptr, ptr %52, align 8
  %77 = getelementptr inbounds %struct.nvkm_fan, ptr %76, i32 0, i32 2, i32 2
  store i8 0, ptr %77, align 8
  %78 = load ptr, ptr %52, align 8
  %79 = getelementptr inbounds %struct.nvkm_fan, ptr %78, i32 0, i32 2, i32 3
  store i8 100, ptr %79, align 1
  %80 = load ptr, ptr %52, align 8
  %81 = getelementptr inbounds %struct.nvkm_fan, ptr %80, i32 0, i32 2, i32 4
  store i16 500, ptr %81, align 2
  %82 = load ptr, ptr %52, align 8
  %83 = getelementptr inbounds %struct.nvkm_fan, ptr %82, i32 0, i32 2, i32 5
  store i16 2000, ptr %83, align 4
  %84 = load ptr, ptr %52, align 8
  %85 = getelementptr inbounds %struct.nvkm_fan, ptr %84, i32 0, i32 2, i32 9
  store i8 40, ptr %85, align 1
  %86 = load ptr, ptr %52, align 8
  %87 = getelementptr inbounds %struct.nvkm_fan, ptr %86, i32 0, i32 2, i32 10
  store i8 85, ptr %87, align 2
  %88 = load ptr, ptr %52, align 8
  %89 = getelementptr inbounds %struct.nvkm_fan, ptr %88, i32 0, i32 3
  %90 = call i32 @nvbios_perf_fan_parse(ptr noundef %8, ptr noundef %89) #7
  %91 = load ptr, ptr %52, align 8
  %92 = getelementptr inbounds %struct.nvkm_fan, ptr %91, i32 0, i32 2
  %93 = call i32 @nvbios_fan_parse(ptr noundef %8, ptr noundef %92) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %66
  %96 = load i32, ptr %39, align 4
  %97 = icmp ugt i32 %96, 3
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.2, ptr noundef %102) #8
  br label %103

103:                                              ; preds = %98, %95
  %104 = load ptr, ptr %52, align 8
  %105 = getelementptr inbounds %struct.nvkm_fan, ptr %104, i32 0, i32 2
  %106 = call i32 @nvbios_therm_fan_parse(ptr noundef %8, ptr noundef %105) #7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %39, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %3, align 4
  %113 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.3, ptr noundef %115) #8
  br label %116

116:                                              ; preds = %111, %108, %103, %66
  %117 = load ptr, ptr %52, align 8
  %118 = getelementptr inbounds %struct.nvkm_fan, ptr %117, i32 0, i32 2, i32 2
  %119 = load i8, ptr %118, align 8
  %120 = icmp ugt i8 %119, 100
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  store i8 100, ptr %118, align 8
  %122 = load ptr, ptr %52, align 8
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi ptr [ %122, %121 ], [ %117, %116 ]
  %125 = getelementptr inbounds %struct.nvkm_fan, ptr %124, i32 0, i32 2, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = icmp ugt i8 %126, 100
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  store i8 100, ptr %125, align 1
  %129 = load ptr, ptr %52, align 8
  %130 = getelementptr inbounds %struct.nvkm_fan, ptr %129, i32 0, i32 2, i32 3
  %131 = load i8, ptr %130, align 1
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi i8 [ %131, %128 ], [ %126, %123 ]
  %134 = phi ptr [ %129, %128 ], [ %124, %123 ]
  %135 = getelementptr inbounds %struct.nvkm_fan, ptr %134, i32 0, i32 2, i32 2
  %136 = load i8, ptr %135, align 8
  %137 = icmp ugt i8 %136, %133
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i8 %133, ptr %135, align 8
  br label %139

139:                                              ; preds = %138, %132, %35
  %140 = phi i32 [ %36, %35 ], [ 0, %132 ], [ 0, %138 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #7
  ret i32 %140
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fanpwm_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fantog_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fannil_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fan_alarm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -160
  %3 = tail call fastcc i32 @nvkm_fan_update(ptr noundef %2, i1 noundef zeroext false, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perf_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_therm_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2148129850, i64 2148130130, i64 2148130464, i64 2148130798}
!9 = !{!"auto-init"}
