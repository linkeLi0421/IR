; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@.str = private unnamed_addr constant [15 x i8] c"%s: hsHeader:\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: \09sigDbgOffset     : 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: \09sigDbgSize       : 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: \09sigProdOffset    : 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: \09sigProdSize      : 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: \09patchLoc         : 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: \09patchSig         : 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: \09hdrOffset        : 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: \09hdrSize          : 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%s: hsLoadHeader:\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: \09nonSecCodeOff    : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%s: \09nonSecCodeSize   : 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s: \09dataDmaBase      : 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%s: \09dataSize         : 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s: \09numApps          : 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"%s: \09App[%d]           : offset 0x%x size 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_hs_header(ptr noundef %0, ptr noundef readonly returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %75

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %75

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %75

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %75

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %75

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %75

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %58) #2
  %59 = load i32, ptr %3, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %66) #2
  %67 = load i32, ptr %3, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvfw_hs_header, ptr %1, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %74) #2
  br label %75

75:                                               ; preds = %69, %61, %53, %45, %37, %29, %21, %14, %6, %2
  ret ptr %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_hs_load_header(ptr noundef %0, ptr noundef readonly returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %51

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %51

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.13, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.14, ptr noundef %11, i32 noundef %50) #2
  br label %51

51:                                               ; preds = %45, %37, %29, %21, %14, %6, %2
  %52 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %58

58:                                               ; preds = %74, %55
  %59 = phi i32 [ %53, %55 ], [ %75, %74 ]
  %60 = phi i32 [ 0, %55 ], [ %76, %74 ]
  %61 = load i32, ptr %3, align 4
  %62 = icmp ugt i32 %61, 3
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load ptr, ptr %56, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = shl i32 %60, 1
  %68 = getelementptr %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 5, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %67, 1
  %71 = getelementptr %struct.nvfw_hs_load_header, ptr %1, i32 0, i32 5, i32 %70
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.15, ptr noundef %57, i32 noundef %60, i32 noundef %69, i32 noundef %72) #2
  %73 = load i32, ptr %52, align 4
  br label %74

74:                                               ; preds = %63, %58
  %75 = phi i32 [ %73, %63 ], [ %59, %58 ]
  %76 = add nuw i32 %60, 1
  %77 = icmp ult i32 %76, %75
  br i1 %77, label %58, label %78

78:                                               ; preds = %74, %51
  ret ptr %1
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind }

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
