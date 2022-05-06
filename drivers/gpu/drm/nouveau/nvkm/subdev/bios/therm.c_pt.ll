; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/therm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }

@__const.nvbios_therm_fan_parse.duty_lut = private unnamed_addr constant [16 x i8] c"\00\00\19\00(\002\00K\00U\00d\00d\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"%s: unknown offset for thermal in BIT P %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_therm_sensor_parse(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %3
  %8 = call fastcc i32 @nvbios_therm_entry(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %88, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 8
  %12 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 8, i32 1
  %13 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 5
  %17 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 5, i32 1
  %18 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 6
  %19 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 6, i32 1
  %20 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 7
  %21 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 7, i32 1
  %22 = getelementptr inbounds %struct.nvbios_therm_sensor, ptr %2, i32 0, i32 4
  br label %23

23:                                               ; preds = %81, %10
  %24 = phi i32 [ %8, %10 ], [ %86, %81 ]
  %25 = phi i8 [ 1, %10 ], [ %84, %81 ]
  %26 = phi i8 [ -1, %10 ], [ %83, %81 ]
  %27 = phi i8 [ 0, %10 ], [ %82, %81 ]
  %28 = add i32 %24, 1
  %29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %28) #5
  %30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #5
  switch i8 %30, label %81 [
    i8 0, label %31
    i8 1, label %34
    i8 4, label %41
    i8 7, label %48
    i8 8, label %55
    i8 16, label %62
    i8 17, label %65
    i8 18, label %68
    i8 19, label %71
    i8 50, label %74
  ]

31:                                               ; preds = %23
  %32 = trunc i16 %29 to i8
  %33 = icmp sgt i16 %29, 0
  br i1 %33, label %88, label %81

34:                                               ; preds = %23
  %35 = add i8 %26, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = add i32 %24, 2
  %39 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %38) #5
  %40 = sdiv i8 %39, 2
  store i8 %40, ptr %22, align 2
  br label %81

41:                                               ; preds = %23
  %42 = icmp eq i8 %27, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %41
  %44 = lshr i16 %29, 4
  %45 = trunc i16 %44 to i8
  store i8 %45, ptr %20, align 1
  %46 = trunc i16 %29 to i8
  %47 = and i8 %46, 15
  store i8 %47, ptr %21, align 1
  br label %81

48:                                               ; preds = %23
  %49 = icmp eq i8 %27, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %48
  %51 = lshr i16 %29, 4
  %52 = trunc i16 %51 to i8
  store i8 %52, ptr %18, align 1
  %53 = trunc i16 %29 to i8
  %54 = and i8 %53, 15
  store i8 %54, ptr %19, align 1
  br label %81

55:                                               ; preds = %23
  %56 = icmp eq i8 %27, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %55
  %58 = lshr i16 %29, 4
  %59 = trunc i16 %58 to i8
  store i8 %59, ptr %16, align 1
  %60 = trunc i16 %29 to i8
  %61 = and i8 %60, 15
  store i8 %61, ptr %17, align 1
  br label %81

62:                                               ; preds = %23
  %63 = icmp eq i8 %26, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %62
  store i16 %29, ptr %15, align 2
  br label %81

65:                                               ; preds = %23
  %66 = icmp eq i8 %26, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %65
  store i16 %29, ptr %14, align 2
  br label %81

68:                                               ; preds = %23
  %69 = icmp eq i8 %26, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %68
  store i16 %29, ptr %2, align 2
  br label %81

71:                                               ; preds = %23
  %72 = icmp eq i8 %26, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %71
  store i16 %29, ptr %13, align 2
  br label %81

74:                                               ; preds = %23
  %75 = icmp eq i8 %27, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = lshr i16 %29, 4
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %11, align 1
  %79 = trunc i16 %29 to i8
  %80 = and i8 %79, 15
  store i8 %80, ptr %12, align 1
  br label %81

81:                                               ; preds = %76, %74, %73, %71, %70, %68, %67, %65, %64, %62, %57, %55, %50, %48, %43, %41, %37, %34, %31, %23
  %82 = phi i8 [ %27, %23 ], [ 0, %76 ], [ %27, %74 ], [ %27, %73 ], [ %27, %71 ], [ %27, %70 ], [ %27, %68 ], [ %27, %67 ], [ %27, %65 ], [ %27, %64 ], [ %27, %62 ], [ 0, %57 ], [ %27, %55 ], [ 0, %50 ], [ %27, %48 ], [ 0, %43 ], [ %27, %41 ], [ %27, %37 ], [ %27, %34 ], [ %32, %31 ]
  %83 = phi i8 [ %26, %23 ], [ %26, %76 ], [ %26, %74 ], [ 0, %73 ], [ %26, %71 ], [ 0, %70 ], [ %26, %68 ], [ 0, %67 ], [ %26, %65 ], [ 0, %64 ], [ %26, %62 ], [ %26, %57 ], [ %26, %55 ], [ %26, %50 ], [ %26, %48 ], [ %26, %43 ], [ %26, %41 ], [ 0, %37 ], [ %35, %34 ], [ %26, %31 ]
  %84 = add i8 %25, 1
  %85 = zext i8 %25 to i32
  %86 = call fastcc i32 @nvbios_therm_entry(ptr noundef %0, i32 noundef %85, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %23

88:                                               ; preds = %81, %31, %7, %3
  %89 = phi i32 [ -22, %3 ], [ 0, %7 ], [ 0, %31 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvbios_therm_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %5, i8 0, i32 6, i1 false) #5, !annotation !8
  %6 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bit_entry, ptr %5, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  switch i8 %10, label %13 [
    i8 1, label %23
    i8 2, label %12
  ]

12:                                               ; preds = %8
  br label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %11) #6
  br label %31

23:                                               ; preds = %12, %8
  %24 = phi i32 [ 16, %12 ], [ 12, %8 ]
  %25 = getelementptr inbounds %struct.bit_entry, ptr %5, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %17, %13, %4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #5
  br label %52

32:                                               ; preds = %23
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #5
  store i8 %33, ptr %2, align 1
  %34 = add i32 %29, 1
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #5
  %36 = add i32 %29, 2
  %37 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #5
  store i8 %37, ptr %3, align 1
  %38 = add i32 %29, 3
  %39 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %38) #5
  %40 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #5
  %41 = zext i8 %40 to i32
  %42 = add i32 %29, %41
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #5
  %43 = icmp ne i32 %42, 0
  %44 = zext i8 %39 to i32
  %45 = icmp sgt i32 %44, %1
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = mul i32 %49, %1
  %51 = add i32 %50, %42
  br label %52

52:                                               ; preds = %47, %32, %31
  %53 = phi i32 [ %51, %47 ], [ 0, %32 ], [ 0, %31 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_therm_fan_parse(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 8
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 6
  store i32 2, ptr %6, align 4
  %7 = call fastcc i32 @nvbios_therm_entry(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 9
  %11 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 10
  %12 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 5
  %13 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 3
  br label %17

17:                                               ; preds = %68, %9
  %18 = phi i32 [ %7, %9 ], [ %71, %68 ]
  %19 = phi i8 [ 1, %9 ], [ %69, %68 ]
  %20 = add i32 %18, 1
  %21 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %20) #5
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %18) #5
  switch i8 %22, label %68 [
    i8 34, label %23
    i8 36, label %27
    i8 37, label %47
    i8 38, label %53
    i8 59, label %58
    i8 60, label %59
    i8 70, label %60
  ]

23:                                               ; preds = %17
  %24 = trunc i16 %21 to i8
  store i8 %24, ptr %15, align 4
  %25 = lshr i16 %21, 8
  %26 = trunc i16 %25 to i8
  store i8 %26, ptr %16, align 1
  br label %68

27:                                               ; preds = %17
  %28 = load i8, ptr %5, align 4
  %29 = add i8 %28, 1
  store i8 %29, ptr %5, align 4
  %30 = load i32, ptr %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = zext i8 %29 to i32
  %35 = add nsw i32 %34, -1
  %36 = getelementptr %struct.nvbios_therm_fan, ptr %1, i32 0, i32 7, i32 %35
  %37 = zext i16 %21 to i32
  %38 = and i32 %37, 15
  %39 = getelementptr %struct.nvbios_therm_fan, ptr %1, i32 0, i32 7, i32 %35, i32 2
  store i32 %38, ptr %39, align 4
  %40 = lshr i32 %37, 4
  %41 = and i32 %40, 255
  %42 = getelementptr %struct.nvbios_therm_fan, ptr %1, i32 0, i32 7, i32 %35, i32 1
  store i32 %41, ptr %42, align 4
  %43 = lshr i32 %37, 12
  %44 = getelementptr [16 x i8], ptr @__const.nvbios_therm_fan_parse.duty_lut, i32 0, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, ptr %36, align 4
  br label %68

47:                                               ; preds = %17
  %48 = load i8, ptr %5, align 4
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %49, -1
  %51 = getelementptr %struct.nvbios_therm_fan, ptr %1, i32 0, i32 7, i32 %50
  %52 = sext i16 %21 to i32
  store i32 %52, ptr %51, align 4
  br label %68

53:                                               ; preds = %17
  %54 = load i32, ptr %14, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = sext i16 %21 to i32
  store i32 %57, ptr %14, align 4
  br label %68

58:                                               ; preds = %17
  store i16 %21, ptr %13, align 2
  br label %68

59:                                               ; preds = %17
  store i16 %21, ptr %12, align 4
  br label %68

60:                                               ; preds = %17
  %61 = load i32, ptr %6, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, ptr %6, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #5
  store i8 %65, ptr %10, align 1
  %66 = add i32 %18, 2
  %67 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #5
  store i8 %67, ptr %11, align 2
  br label %68

68:                                               ; preds = %64, %59, %58, %56, %53, %47, %33, %23, %17
  %69 = add i8 %19, 1
  %70 = zext i8 %19 to i32
  %71 = call fastcc i32 @nvbios_therm_entry(ptr noundef %0, i32 noundef %70, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %17

73:                                               ; preds = %68, %2
  %74 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 15
  %77 = load i32, ptr %76, align 8
  %78 = icmp ugt i32 %77, 191
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, ptr %6, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, ptr %6, align 4
  br label %83

83:                                               ; preds = %82, %79, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
