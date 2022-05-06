; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.120], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i32, i8 }
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
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@tags = internal unnamed_addr constant [8 x i8] c"\04\05\06\1Astuv", align 1
@.str = private unnamed_addr constant [28 x i8] c"%s: VID bit %d has no GPIO\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext -1) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %11
  %15 = trunc i32 %12 to i8
  %16 = load i8, ptr %6, align 4
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i32 [ %17, %14 ], [ %8, %1 ]
  %20 = phi i8 [ %15, %14 ], [ 0, %1 ]
  %21 = and i32 %19, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 5, i8 noundef zeroext -1) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %23
  %27 = trunc i32 %24 to i8
  %28 = shl i8 %27, 1
  %29 = or i8 %20, %28
  %30 = load i8, ptr %6, align 4
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i32 [ %31, %26 ], [ %19, %18 ]
  %34 = phi i8 [ %29, %26 ], [ %20, %18 ]
  %35 = and i32 %33, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %116, label %40

40:                                               ; preds = %37
  %41 = trunc i32 %38 to i8
  %42 = shl i8 %41, 2
  %43 = or i8 %34, %42
  %44 = load i8, ptr %6, align 4
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %40, %32
  %47 = phi i32 [ %45, %40 ], [ %33, %32 ]
  %48 = phi i8 [ %43, %40 ], [ %34, %32 ]
  %49 = and i32 %47, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 26, i8 noundef zeroext -1) #5
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %116, label %54

54:                                               ; preds = %51
  %55 = trunc i32 %52 to i8
  %56 = shl i8 %55, 3
  %57 = or i8 %48, %56
  %58 = load i8, ptr %6, align 4
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %54, %46
  %61 = phi i32 [ %59, %54 ], [ %47, %46 ]
  %62 = phi i8 [ %57, %54 ], [ %48, %46 ]
  %63 = and i32 %61, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 115, i8 noundef zeroext -1) #5
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %116, label %68

68:                                               ; preds = %65
  %69 = trunc i32 %66 to i8
  %70 = shl i8 %69, 4
  %71 = or i8 %62, %70
  %72 = load i8, ptr %6, align 4
  %73 = zext i8 %72 to i32
  br label %74

74:                                               ; preds = %68, %60
  %75 = phi i32 [ %73, %68 ], [ %61, %60 ]
  %76 = phi i8 [ %71, %68 ], [ %62, %60 ]
  %77 = and i32 %75, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 116, i8 noundef zeroext -1) #5
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %79
  %83 = trunc i32 %80 to i8
  %84 = shl i8 %83, 5
  %85 = or i8 %76, %84
  %86 = load i8, ptr %6, align 4
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i32 [ %87, %82 ], [ %75, %74 ]
  %90 = phi i8 [ %85, %82 ], [ %76, %74 ]
  %91 = and i32 %89, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 117, i8 noundef zeroext -1) #5
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %93
  %97 = trunc i32 %94 to i8
  %98 = shl i8 %97, 6
  %99 = or i8 %90, %98
  %100 = load i8, ptr %6, align 4
  %101 = zext i8 %100 to i32
  br label %102

102:                                              ; preds = %96, %88
  %103 = phi i32 [ %101, %96 ], [ %89, %88 ]
  %104 = phi i8 [ %99, %96 ], [ %90, %88 ]
  %105 = and i32 %103, 128
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 118, i8 noundef zeroext -1) #5
  %109 = icmp slt i32 %108, 0
  %110 = trunc i32 %108 to i8
  %111 = shl i8 %110, 7
  %112 = or i8 %104, %111
  br i1 %109, label %116, label %113

113:                                              ; preds = %107, %102
  %114 = phi i8 [ %112, %107 ], [ %104, %102 ]
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %113, %107, %93, %79, %65, %51, %37, %23, %11
  %117 = phi i32 [ %115, %113 ], [ %12, %11 ], [ %24, %23 ], [ %38, %37 ], [ %52, %51 ], [ %66, %65 ], [ %80, %79 ], [ %94, %93 ], [ %108, %107 ]
  ret i32 %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %23, %2
  %9 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %10 = phi i8 [ %1, %2 ], [ %25, %23 ]
  %11 = load i8, ptr %7, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 1, %9
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = getelementptr [8 x i8], ptr @tags, i32 0, i32 %9
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %10, 1
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @nvkm_gpio_set(ptr noundef %6, i32 noundef 0, i8 noundef zeroext %18, i8 noundef zeroext -1, i32 noundef %20) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16, %8
  %24 = add nuw nsw i32 %9, 1
  %25 = lshr i8 %10, 1
  %26 = icmp eq i32 %24, 8
  br i1 %26, label %27, label %8

27:                                               ; preds = %23, %16
  %28 = phi i32 [ %21, %16 ], [ 0, %23 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_voltgpio_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dcb_gpio_func, align 1
  %3 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 5
  %9 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %12 = load i8, ptr %7, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 1, %11
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %10
  %18 = getelementptr [8 x i8], ptr @tags, i32 0, i32 %11
  %19 = load i8, ptr %18, align 1
  %20 = call i32 @nvkm_gpio_find(ptr noundef %6, i32 noundef 0, i8 noundef zeroext %19, i8 noundef zeroext -1, ptr noundef nonnull %2) #5
  switch i32 %20, label %36 [
    i32 0, label %33
    i32 -2, label %21
  ]

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %11) #6
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i8, ptr %7, align 4
  %30 = trunc i32 %14 to i8
  %31 = xor i8 %30, -1
  %32 = and i8 %29, %31
  store i8 %32, ptr %7, align 4
  br label %33

33:                                               ; preds = %28, %17, %10
  %34 = add nuw nsw i32 %11, 1
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %10

36:                                               ; preds = %33, %17
  %37 = phi i32 [ 0, %33 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
