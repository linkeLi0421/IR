; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/g94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/g94.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@g94_i2c = internal constant %struct.nvkm_i2c_func { ptr @g94_i2c_pad_x_new, ptr @g94_i2c_pad_s_new, i32 4, ptr @g94_aux_stat, ptr @g94_aux_mask, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_aux_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 57452
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 57448
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %15 = and i32 %14, %11
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %16

16:                                               ; preds = %50, %5
  %17 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %18 = shl nuw nsw i32 %17, 2
  %19 = shl nuw nsw i32 1, %18
  %20 = and i32 %19, %15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = shl nuw nsw i32 1, %17
  %24 = load i32, ptr %1, align 4
  %25 = or i32 %24, %23
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = shl nuw nsw i32 2, %18
  %28 = and i32 %27, %15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = shl nuw nsw i32 1, %17
  %32 = load i32, ptr %2, align 4
  %33 = or i32 %32, %31
  store i32 %33, ptr %2, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = shl nuw nsw i32 4, %18
  %36 = and i32 %35, %15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = shl nuw nsw i32 1, %17
  %40 = load i32, ptr %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = shl nuw i32 8, %18
  %44 = and i32 %43, %15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = shl nuw nsw i32 1, %17
  %48 = load i32, ptr %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, ptr %4, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = add nuw nsw i32 %17, 1
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %16

53:                                               ; preds = %50
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr i8, ptr %54, i32 57452
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %11) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @g94_aux_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_i2c, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 57448
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = xor i32 %1, -1
  %18 = and i32 %10, %17
  br label %21

19:                                               ; preds = %13
  %20 = or i32 %10, %1
  br label %21

21:                                               ; preds = %19, %16, %4
  %22 = phi i32 [ %20, %19 ], [ %18, %16 ], [ %10, %4 ]
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = and i32 %3, 2
  %27 = icmp eq i32 %26, 0
  %28 = shl i32 %1, 4
  br i1 %27, label %31, label %29

29:                                               ; preds = %25
  %30 = or i32 %28, %22
  br label %34

31:                                               ; preds = %25
  %32 = xor i32 %28, -1
  %33 = and i32 %22, %32
  br label %34

34:                                               ; preds = %31, %29, %21
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ], [ %22, %21 ]
  %36 = and i32 %2, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = and i32 %3, 4
  %40 = icmp eq i32 %39, 0
  %41 = shl i32 %1, 8
  br i1 %40, label %44, label %42

42:                                               ; preds = %38
  %43 = or i32 %41, %35
  br label %47

44:                                               ; preds = %38
  %45 = xor i32 %41, -1
  %46 = and i32 %35, %45
  br label %47

47:                                               ; preds = %44, %42, %34
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ], [ %35, %34 ]
  %49 = and i32 %2, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = and i32 %3, 8
  %53 = icmp eq i32 %52, 0
  %54 = shl i32 %1, 12
  br i1 %53, label %57, label %55

55:                                               ; preds = %51
  %56 = or i32 %54, %48
  br label %60

57:                                               ; preds = %51
  %58 = xor i32 %54, -1
  %59 = and i32 %48, %58
  br label %60

60:                                               ; preds = %57, %55, %47
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ], [ %48, %47 ]
  %62 = and i32 %2, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = and i32 %3, 16
  %66 = icmp eq i32 %65, 0
  %67 = shl i32 %1, 16
  br i1 %66, label %70, label %68

68:                                               ; preds = %64
  %69 = or i32 %67, %61
  br label %73

70:                                               ; preds = %64
  %71 = xor i32 %67, -1
  %72 = and i32 %61, %71
  br label %73

73:                                               ; preds = %70, %68, %60
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ], [ %61, %60 ]
  %75 = and i32 %2, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = and i32 %3, 32
  %79 = icmp eq i32 %78, 0
  %80 = shl i32 %1, 20
  br i1 %79, label %83, label %81

81:                                               ; preds = %77
  %82 = or i32 %80, %74
  br label %86

83:                                               ; preds = %77
  %84 = xor i32 %80, -1
  %85 = and i32 %74, %84
  br label %86

86:                                               ; preds = %83, %81, %73
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ], [ %74, %73 ]
  %88 = and i32 %2, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = and i32 %3, 64
  %92 = icmp eq i32 %91, 0
  %93 = shl i32 %1, 24
  br i1 %92, label %96, label %94

94:                                               ; preds = %90
  %95 = or i32 %93, %87
  br label %99

96:                                               ; preds = %90
  %97 = xor i32 %93, -1
  %98 = and i32 %87, %97
  br label %99

99:                                               ; preds = %96, %94, %86
  %100 = phi i32 [ %95, %94 ], [ %98, %96 ], [ %87, %86 ]
  %101 = and i32 %2, 128
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %99
  %104 = and i32 %3, 128
  %105 = icmp eq i32 %104, 0
  %106 = shl i32 %1, 28
  br i1 %105, label %109, label %107

107:                                              ; preds = %103
  %108 = or i32 %106, %100
  br label %112

109:                                              ; preds = %103
  %110 = xor i32 %106, -1
  %111 = and i32 %100, %110
  br label %112

112:                                              ; preds = %109, %107, %99
  %113 = phi i32 [ %108, %107 ], [ %111, %109 ], [ %100, %99 ]
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr i8, ptr %114, i32 57448
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_i2c_new_(ptr noundef nonnull @g94_i2c, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_i2c_pad_x_new(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_i2c_pad_s_new(ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 3944896}
!9 = !{i64 2151484349}
!10 = !{i64 2151485571}
!11 = !{i64 3944478}
