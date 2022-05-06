; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c"
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
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: binHdr:\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: \09binMagic         : 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: \09binVer           : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: \09binSize          : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: \09headerOffset     : 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: \09dataOffset       : 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: \09dataSize         : 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s: blDesc\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: \09startTag         : 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: \09dmemLoadOff      : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: \09codeOff          : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%s: \09codeSize         : 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s: \09dataOff          : 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_bin_hdr(ptr noundef %0, ptr noundef readonly returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %59

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %58) #2
  br label %59

59:                                               ; preds = %53, %45, %37, %29, %21, %14, %6, %2
  ret ptr %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_bl_desc(ptr noundef %0, ptr noundef readonly returned %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %59

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %58) #2
  br label %59

59:                                               ; preds = %53, %45, %37, %29, %21, %14, %6, %2
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
