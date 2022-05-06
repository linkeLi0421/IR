; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_top_func = type { ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
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
%struct.nvkm_top_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head }

@ga100_top = internal constant %struct.nvkm_top_func { ptr @ga100_top_oneinit }, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: %02x: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/top/ga100.c\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"%s: %02x.%d (%8s): addr %06x fault %2d runlist %6x engine %2d reset %2d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"????????\00", align 1
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ga100_top_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_top_new_(ptr noundef nonnull @ga100_top, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga100_top_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 140540
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = icmp ult i32 %7, 1048576
  br i1 %8, label %123, label %9

9:                                                ; preds = %1
  %10 = lshr i32 %7, 20
  %11 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 5
  %12 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 4
  br label %13

13:                                               ; preds = %116, %9
  %14 = phi ptr [ null, %9 ], [ %120, %116 ]
  %15 = phi i32 [ 0, %9 ], [ %119, %116 ]
  %16 = phi i32 [ 0, %9 ], [ %118, %116 ]
  %17 = phi i32 [ 0, %9 ], [ %121, %116 ]
  %18 = phi i32 [ 0, %9 ], [ %117, %116 ]
  %19 = icmp eq ptr %14, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = tail call ptr @nvkm_top_device_new(ptr noundef %0) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %123, label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %18, %13 ], [ 0, %20 ]
  %25 = phi i32 [ %15, %13 ], [ -1, %20 ]
  %26 = phi ptr [ %14, %13 ], [ %21, %20 ]
  %27 = load ptr, ptr %4, align 4
  %28 = shl i32 %17, 2
  %29 = add nuw nsw i32 %28, 141312
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %32 = load i32, ptr %11, align 4
  %33 = icmp ugt i32 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %17, i32 noundef %31) #5
  br label %38

38:                                               ; preds = %34, %23
  %39 = icmp eq i32 %31, 0
  %40 = icmp eq i32 %16, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %116, label %42

42:                                               ; preds = %38
  %43 = add i32 %16, 1
  switch i32 %16, label %61 [
    i32 0, label %44
    i32 1, label %51
    i32 2, label %56
  ]

44:                                               ; preds = %42
  %45 = lshr i32 %31, 24
  %46 = and i32 %45, 63
  %47 = lshr i32 %31, 16
  %48 = and i32 %47, 15
  %49 = and i32 %31, 127
  %50 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  br label %61

51:                                               ; preds = %42
  %52 = and i32 %31, 16773120
  %53 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = and i32 %31, 31
  %55 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  br label %61

56:                                               ; preds = %42
  %57 = and i32 %31, 16776192
  %58 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = and i32 %31, 3
  %60 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %56, %51, %44, %42
  %62 = phi i32 [ %24, %42 ], [ %24, %56 ], [ %24, %51 ], [ %48, %44 ]
  %63 = phi i32 [ %25, %42 ], [ %25, %56 ], [ %25, %51 ], [ %46, %44 ]
  %64 = icmp sgt i32 %31, -1
  br i1 %64, label %65, label %116

65:                                               ; preds = %61
  switch i32 %63, label %91 [
    i32 0, label %66
    i32 13, label %69
    i32 14, label %87
    i32 16, label %72
    i32 18, label %73
    i32 19, label %74
    i32 20, label %75
    i32 21, label %78
    i32 22, label %81
    i32 23, label %84
  ]

66:                                               ; preds = %65
  %67 = icmp eq i32 %62, 0
  br i1 %67, label %87, label %68, !prof !10

68:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 9, ptr noundef null) #4
  br label %87

69:                                               ; preds = %65
  %70 = icmp eq i32 %62, 0
  br i1 %70, label %87, label %71, !prof !10

71:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #4
  br label %87

72:                                               ; preds = %65
  br label %87

73:                                               ; preds = %65
  br label %87

74:                                               ; preds = %65
  br label %87

75:                                               ; preds = %65
  %76 = icmp eq i32 %62, 0
  br i1 %76, label %87, label %77, !prof !10

77:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 9, ptr noundef null) #4
  br label %87

78:                                               ; preds = %65
  %79 = icmp eq i32 %62, 0
  br i1 %79, label %87, label %80, !prof !10

80:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 9, ptr noundef null) #4
  br label %87

81:                                               ; preds = %65
  %82 = icmp eq i32 %62, 0
  br i1 %82, label %87, label %83, !prof !10

83:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #4
  br label %87

84:                                               ; preds = %65
  %85 = icmp eq i32 %62, 0
  br i1 %85, label %87, label %86, !prof !10

86:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 9, ptr noundef null) #4
  br label %87

87:                                               ; preds = %86, %84, %83, %81, %80, %78, %77, %75, %74, %73, %72, %71, %69, %68, %66, %65
  %88 = phi i32 [ 41, %72 ], [ 25, %73 ], [ 28, %74 ], [ 33, %68 ], [ 33, %66 ], [ 47, %71 ], [ 47, %69 ], [ 42, %65 ], [ 24, %77 ], [ 24, %75 ], [ 43, %80 ], [ 43, %78 ], [ 44, %83 ], [ 44, %81 ], [ 26, %86 ], [ 26, %84 ]
  %89 = phi i32 [ %62, %72 ], [ %62, %73 ], [ %62, %74 ], [ 0, %68 ], [ 0, %66 ], [ 0, %71 ], [ 0, %69 ], [ %62, %65 ], [ 0, %77 ], [ 0, %75 ], [ 0, %80 ], [ 0, %78 ], [ 0, %83 ], [ 0, %81 ], [ 0, %86 ], [ 0, %84 ]
  store i32 %88, ptr %26, align 4
  %90 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  br label %91

91:                                               ; preds = %87, %65
  %92 = load i32, ptr %11, align 4
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = load i32, ptr %26, align 4
  %99 = icmp eq i32 %98, 51
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %98
  %102 = load ptr, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi ptr [ %102, %100 ], [ @.str.3, %94 ]
  %105 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 @llvm.smax.i32(i32 %110, i32 0)
  %112 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvkm_top_device, ptr %26, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef %63, i32 noundef %62, ptr noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %111, i32 noundef %113, i32 noundef %115) #5
  br label %116

116:                                              ; preds = %103, %91, %61, %38
  %117 = phi i32 [ %24, %38 ], [ %62, %61 ], [ %62, %103 ], [ %62, %91 ]
  %118 = phi i32 [ 0, %38 ], [ %43, %61 ], [ 0, %103 ], [ 0, %91 ]
  %119 = phi i32 [ %25, %38 ], [ %63, %61 ], [ %63, %103 ], [ %63, %91 ]
  %120 = phi ptr [ %26, %38 ], [ %26, %61 ], [ null, %103 ], [ null, %91 ]
  %121 = add nuw nsw i32 %17, 1
  %122 = icmp eq i32 %121, %10
  br i1 %122, label %123, label %13

123:                                              ; preds = %116, %20, %1
  %124 = phi i32 [ 0, %1 ], [ 0, %116 ], [ -12, %20 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_device_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3940675}
!9 = !{i64 2151480128}
!10 = !{!"branch_weights", i32 2000, i32 1}
