; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/ce/gp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/ce/gp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.anon = type { ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: BLOCKPIPE\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: NONBLOCKPIPE\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@gp100_ce_launcherr_report = internal constant [15 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: LAUNCHERR %08x [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NO_ERR\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"2D_LAYER_EXCEEDS_DEPTH\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"INVALID_ALIGNMENT\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"MEM2MEM_RECT_OUT_OF_BOUNDS\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"SRC_LINE_EXCEEDS_PITCH\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SRC_LINE_EXCEEDS_NEG_PITCH\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DST_LINE_EXCEEDS_PITCH\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"DST_LINE_EXCEEDS_NEG_PITCH\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"BAD_SRC_PIXEL_COMP_REF\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"INVALID_VALUE\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"UNUSED_FIELD\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"INVALID_OPERATION\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"NO_RESOURCES\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"INVALID_CONFIG\00", align 1
@gp100_ce = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.121, ptr, [2 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp100_ce_intr, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.121 zeroinitializer, ptr null, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 49333, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_ce_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 7
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %6, 1065996
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = load ptr, ptr %7, align 4
  %13 = add i32 %6, 1066000
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = and i32 %15, %11
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef %27) #4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #3, !srcloc !11
  %31 = and i32 %16, -2
  br label %32

32:                                               ; preds = %28, %1
  %33 = phi i32 [ %31, %28 ], [ %16, %1 ]
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef %44) #4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 2) #3, !srcloc !11
  %48 = and i32 %33, -3
  br label %49

49:                                               ; preds = %45, %32
  %50 = phi i32 [ %48, %45 ], [ %33, %32 ]
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  %57 = add i32 %6, 1066008
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %60 = and i32 %59, 15
  %61 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gp100_ce_launcherr_report, i32 noundef %60) #3
  %62 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %70 = icmp eq ptr %61, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.nvkm_enum, ptr %61, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi ptr [ %73, %71 ], [ @.str.4, %65 ]
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %68, ptr noundef nonnull @.str.3, ptr noundef %69, i32 noundef %59, ptr noundef %75) #4
  br label %76

76:                                               ; preds = %74, %53
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr i8, ptr %77, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 4) #3, !srcloc !11
  %79 = and i32 %50, -5
  br label %80

80:                                               ; preds = %76, %49
  %81 = phi i32 [ %79, %76 ], [ %50, %49 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %90, ptr noundef nonnull @.str.2, ptr noundef %91, i32 noundef %81) #4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load ptr, ptr %7, align 4
  %94 = getelementptr i8, ptr %93, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %81) #3, !srcloc !11
  br label %95

95:                                               ; preds = %92, %80
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_ce_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_engine_new_(ptr noundef nonnull @gp100_ce, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3945859}
!9 = !{i64 2151485312}
!10 = !{i64 2151486534}
!11 = !{i64 3945441}
