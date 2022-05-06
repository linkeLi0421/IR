; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv41.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv41_timer = internal constant %struct.nvkm_timer_func { ptr @nv41_timer_init, ptr @nv04_timer_intr, ptr @nv04_timer_read, ptr @nv04_timer_time, ptr @nv04_timer_alarm_init, ptr @nv04_timer_alarm_fini }, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: input frequency : %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: input multiplier: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: numerator       : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: denominator     : %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: timer frequency : %dHz\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv41_timer_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_timer_new_(ptr noundef nonnull @nv41_timer, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_timer_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv41_timer_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 62500
  br i1 %6, label %15, label %7

7:                                                ; preds = %15, %1
  %8 = phi i32 [ 1, %1 ], [ %20, %15 ]
  %9 = phi i32 [ %5, %1 ], [ %19, %15 ]
  %10 = freeze i32 %9
  %11 = udiv i32 %10, 5
  %12 = mul i32 %11, 5
  %13 = sub i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %22

15:                                               ; preds = %15, %1
  %16 = phi i32 [ %19, %15 ], [ %5, %1 ]
  %17 = phi i32 [ %20, %15 ], [ 1, %1 ]
  %18 = udiv i32 %16, %17
  %19 = add nuw nsw i32 %18, %16
  %20 = add i32 %17, 1
  %21 = icmp ult i32 %19, 62500
  br i1 %21, label %15, label %7

22:                                               ; preds = %42, %38, %34, %30, %27, %7
  %23 = phi i32 [ %9, %7 ], [ %11, %27 ], [ %31, %30 ], [ %35, %34 ], [ %39, %38 ], [ %47, %42 ]
  %24 = phi i32 [ 31250, %7 ], [ 6250, %27 ], [ 1250, %30 ], [ 250, %34 ], [ 50, %38 ], [ %48, %42 ]
  %25 = and i32 %23, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %55, label %49

27:                                               ; preds = %7
  %28 = urem i32 %11, 5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %22

30:                                               ; preds = %27
  %31 = udiv i32 %9, 25
  %32 = urem i32 %31, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %22

34:                                               ; preds = %30
  %35 = udiv i32 %9, 125
  %36 = urem i32 %35, 5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %22

38:                                               ; preds = %34
  %39 = udiv i32 %9, 625
  %40 = urem i32 %39, 5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %22

42:                                               ; preds = %38
  %43 = udiv i32 %9, 3125
  %44 = urem i32 %43, 5
  %45 = icmp eq i32 %44, 0
  %46 = udiv i32 %9, 15625
  %47 = select i1 %45, i32 %46, i32 %43
  %48 = select i1 %45, i32 2, i32 10
  br label %22

49:                                               ; preds = %55, %22
  %50 = phi i32 [ %23, %22 ], [ %58, %55 ]
  %51 = phi i32 [ %24, %22 ], [ %59, %55 ]
  %52 = icmp ugt i32 %50, 65535
  %53 = icmp ugt i32 %51, 65535
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %65, label %73

55:                                               ; preds = %55, %22
  %56 = phi i32 [ %59, %55 ], [ %24, %22 ]
  %57 = phi i32 [ %58, %55 ], [ %23, %22 ]
  %58 = lshr i32 %57, 1
  %59 = lshr i32 %56, 1
  %60 = and i32 %57, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %56, 2
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %55, label %49

65:                                               ; preds = %65, %49
  %66 = phi i32 [ %69, %65 ], [ %51, %49 ]
  %67 = phi i32 [ %68, %65 ], [ %50, %49 ]
  %68 = lshr i32 %67, 1
  %69 = lshr i32 %66, 1
  %70 = icmp ugt i32 %67, 131071
  %71 = icmp ugt i32 %66, 131071
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %65, label %73

73:                                               ; preds = %65, %49
  %74 = phi i32 [ %50, %49 ], [ %68, %65 ]
  %75 = phi i32 [ %51, %49 ], [ %69, %65 ]
  %76 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 3
  br i1 %78, label %79, label %110

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str, ptr noundef %82, i32 noundef %5) #4
  %83 = load i32, ptr %76, align 4
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.1, ptr noundef %82, i32 noundef %8) #4
  %89 = load i32, ptr %76, align 4
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load ptr, ptr %2, align 4
  %93 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.2, ptr noundef %82, i32 noundef %74) #4
  %95 = load i32, ptr %76, align 4
  %96 = icmp ugt i32 %95, 3
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load ptr, ptr %2, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.3, ptr noundef %82, i32 noundef %75) #4
  %101 = load i32, ptr %76, align 4
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load ptr, ptr %2, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = mul i32 %8, %5
  %108 = mul i32 %107, %75
  %109 = udiv i32 %108, %74
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.4, ptr noundef %82, i32 noundef %109) #4
  br label %110

110:                                              ; preds = %103, %97, %91, %85, %79, %73
  %111 = add i32 %8, -1
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 37408
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %111) #3, !srcloc !9
  %115 = load ptr, ptr %112, align 4
  %116 = getelementptr i8, ptr %115, i32 37376
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %74) #3, !srcloc !9
  %117 = load ptr, ptr %112, align 4
  %118 = getelementptr i8, ptr %117, i32 37392
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %75) #3, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv04_timer_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_time(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_fini(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 2151483289}
!9 = !{i64 3942196}
