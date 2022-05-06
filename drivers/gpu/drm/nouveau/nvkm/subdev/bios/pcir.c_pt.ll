; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/pcir.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pcir.c"
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
%struct.nvbios_pcirT = type { i16, i16, [3 x i8], i32, i16, i8, i8 }

@.str = private unnamed_addr constant [41 x i8] c"%s: %08x: PCIR signature (%08x) unknown\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_pcirTe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i32 %1, 24
  %6 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %5) #4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = zext i16 %6 to i32
  %10 = add i32 %9, %1
  %11 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %10) #4
  switch i32 %11, label %17 [
    i32 1380533072, label %12
    i32 1397311314, label %12
    i32 1396985934, label %12
  ]

12:                                               ; preds = %8, %8, %8
  %13 = add i32 %10, 10
  %14 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %13) #4
  store i16 %14, ptr %3, align 2
  %15 = add i32 %10, 12
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %15) #4
  store i8 %16, ptr %2, align 1
  br label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %27 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %10) #4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef %26, i32 noundef %10, i32 noundef %27) #5
  br label %28

28:                                               ; preds = %21, %17, %12, %4
  %29 = phi i32 [ %10, %12 ], [ 0, %4 ], [ 0, %21 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_pcirTp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nvbios_pcirTe(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = add i32 %6, 4
  %10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %9) #4
  store i16 %10, ptr %4, align 4
  %11 = add i32 %6, 6
  %12 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %11) #4
  %13 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 1
  store i16 %12, ptr %13, align 2
  %14 = add i32 %6, 13
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %14) #4
  %16 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 2
  store i8 %15, ptr %16, align 4
  %17 = add i32 %6, 14
  %18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %17) #4
  %19 = getelementptr %struct.nvbios_pcirT, ptr %4, i32 0, i32 2, i32 1
  store i8 %18, ptr %19, align 1
  %20 = add i32 %6, 15
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #4
  %22 = getelementptr %struct.nvbios_pcirT, ptr %4, i32 0, i32 2, i32 2
  store i8 %21, ptr %22, align 2
  %23 = add i32 %6, 16
  %24 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %23) #4
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 9
  %27 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = add i32 %6, 18
  %29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %28) #4
  %30 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 4
  store i16 %29, ptr %30, align 4
  %31 = add i32 %6, 20
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #4
  %33 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 5
  store i8 %32, ptr %33, align 2
  %34 = add i32 %6, 21
  %35 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #4
  %36 = getelementptr inbounds %struct.nvbios_pcirT, ptr %4, i32 0, i32 6
  %37 = lshr i8 %35, 7
  store i8 %37, ptr %36, align 1
  br label %38

38:                                               ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
