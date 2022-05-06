; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/image.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_pcirT = type { i16, i16, [3 x i8], i32, i16, i8, i8 }
%struct.nvbios_npdeT = type { i32, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_image = type { i32, i32, i8, i8 }
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

@.str = private unnamed_addr constant [40 x i8] c"%s: %08x: ROM signature (%04x) unknown\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_image(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvbios_pcirT, align 4
  %5 = alloca %struct.nvbios_npdeT, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvbios_image, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nvbios_image, ptr %2, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 5
  %14 = getelementptr inbounds %struct.nvbios_image, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvbios_npdeT, ptr %5, i32 0, i32 1
  br label %17

17:                                               ; preds = %57, %3
  %18 = phi i32 [ %1, %3 ], [ %58, %57 ]
  %19 = load i32, ptr %10, align 4
  %20 = load i32, ptr %2, align 4
  %21 = add i32 %20, %19
  store i32 %21, ptr %2, align 4
  %22 = load i8, ptr %11, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #5, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i16 0, ptr %7, align 2, !annotation !9
  %25 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %21) #5
  switch i16 %25, label %26 [
    i16 -21931, label %38
    i16 -17545, label %38
    i16 20054, label %38
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = zext i16 %25 to i32
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef %36, i32 noundef %37, i32 noundef %31) #6
  br label %56

38:                                               ; preds = %24, %24, %24
  %39 = load i32, ptr %2, align 4
  %40 = call i32 @nvbios_pcirTp(ptr noundef %0, i32 noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %12, align 4
  store i32 %43, ptr %10, align 4
  %44 = load i8, ptr %13, align 2
  store i8 %44, ptr %14, align 4
  %45 = load i8, ptr %15, align 1, !range !8
  store i8 %45, ptr %11, align 1
  %46 = icmp eq i8 %44, 112
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %2, align 4
  %49 = call i32 @nvbios_npdeTp(ptr noundef %0, i32 noundef %48, ptr noundef nonnull %5) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %5, align 8
  store i32 %52, ptr %10, align 4
  %53 = load i8, ptr %16, align 4, !range !8
  br label %54

54:                                               ; preds = %51, %42
  %55 = phi i8 [ %53, %51 ], [ 1, %42 ]
  store i8 %55, ptr %11, align 1
  br label %57

56:                                               ; preds = %38, %30, %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %60

57:                                               ; preds = %54, %47
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  %58 = add i32 %18, -1
  %59 = icmp eq i32 %18, 0
  br i1 %59, label %60, label %17

60:                                               ; preds = %57, %56, %17
  %61 = phi i1 [ false, %56 ], [ %23, %17 ], [ %23, %57 ]
  store i32 %9, ptr %8, align 4
  ret i1 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pcirTp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_npdeTp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
