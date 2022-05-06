; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0203.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0203T = type { i8, i16 }
%struct.nvbios_M0203E = type { i8, i8, i8 }
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

@.str = private unnamed_addr constant [22 x i8] c"%s: M0203T not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: M0203T type %02x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Te(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 77, ptr noundef nonnull %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 2
  %13 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = icmp ugt i16 %14, 4
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %20, 3
  %22 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %21) #5
  %23 = zext i16 %22 to i32
  %24 = icmp eq i16 %22, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #5
  store i8 %26, ptr %1, align 1
  %27 = icmp eq i8 %26, 16
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %23, 1
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #5
  store i8 %30, ptr %2, align 1
  %31 = add nuw nsw i32 %23, 2
  %32 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #5
  store i8 %32, ptr %4, align 1
  %33 = add nuw nsw i32 %23, 3
  %34 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  store i8 %34, ptr %3, align 1
  br label %35

35:                                               ; preds = %28, %25, %17, %9, %5
  %36 = phi i32 [ %23, %28 ], [ 0, %17 ], [ 0, %25 ], [ 0, %5 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #5
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Tp(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call i32 @nvbios_M0203Te(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store i32 0, ptr %5, align 2
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 16
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = add i32 %7, 4
  %14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %13) #5
  store i8 %14, ptr %5, align 2
  %15 = add i32 %7, 5
  %16 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %15) #5
  %17 = getelementptr inbounds %struct.nvbios_M0203T, ptr %5, i32 0, i32 1
  store i16 %16, ptr %17, align 2
  br label %18

18:                                               ; preds = %12, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Ee(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call i32 @nvbios_M0203Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i32 %10, %1
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %7, %15
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, %1
  %20 = add i32 %16, %19
  store i8 %17, ptr %3, align 1
  br label %21

21:                                               ; preds = %13, %4
  %22 = phi i32 [ %20, %13 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Ep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @nvbios_M0203Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false)
  br label %37

15:                                               ; preds = %5
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %8, %17
  %19 = load i8, ptr %7, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, %1
  %22 = add i32 %18, %21
  store i8 %19, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false)
  %23 = icmp ne i32 %22, 0
  %24 = load i8, ptr %2, align 1
  %25 = icmp eq i8 %24, 16
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  %29 = and i8 %28, 15
  store i8 %29, ptr %4, align 1
  %30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  %31 = lshr i8 %30, 4
  %32 = getelementptr inbounds %struct.nvbios_M0203E, ptr %4, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = add i32 %22, 1
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  %35 = and i8 %34, 15
  %36 = getelementptr inbounds %struct.nvbios_M0203E, ptr %4, i32 0, i32 2
  store i8 %35, ptr %36, align 1
  br label %37

37:                                               ; preds = %27, %15, %14
  %38 = phi i32 [ %22, %27 ], [ 0, %15 ], [ 0, %14 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0203Em(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  %8 = call i32 @nvbios_M0203Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %2, align 1
  %11 = icmp eq i8 %10, 16
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = add i32 %8, 4
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %14) #5
  %16 = add i32 %8, 5
  %17 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %16) #5
  br label %20

18:                                               ; preds = %5
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18, %13
  %21 = phi i8 [ %15, %13 ], [ 0, %18 ]
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.nvbios_M0203E, ptr %4, i32 0, i32 1
  br label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef %33) #6
  br label %55

34:                                               ; preds = %41, %20
  %35 = phi i8 [ %36, %41 ], [ -1, %20 ]
  %36 = add i8 %35, 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 @nvbios_M0203Ep(ptr noundef %0, i32 noundef %37, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %34
  br i1 %22, label %41, label %44

41:                                               ; preds = %40
  %42 = load i8, ptr %23, align 1
  %43 = icmp eq i8 %42, %1
  br i1 %43, label %55, label %34

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = zext i8 %21 to i32
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef %54, i32 noundef %49) #6
  br label %55

55:                                               ; preds = %48, %44, %41, %34, %28, %24
  %56 = phi i32 [ 0, %28 ], [ 0, %24 ], [ 0, %48 ], [ 0, %44 ], [ 0, %34 ], [ %38, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  ret i32 %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
!8 = !{!"auto-init"}
