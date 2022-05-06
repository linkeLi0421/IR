; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/power_budget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
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
%struct.nvbios_power_budget = type { i32, i8, i8, i8, i8, i8 }
%struct.nvbios_power_budget_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s: invalid cap_entry in power budget table found\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_power_budget_header(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %64

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #5, !annotation !8
  %8 = call i32 @bit_entry(ptr noundef nonnull %0, i8 noundef zeroext 80, ptr noundef nonnull %3) #5
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 2
  %13 = select i1 %9, i1 true, i1 %12
  %14 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %15 = load i16, ptr %14, align 2
  %16 = icmp ult i16 %15, 48
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %21, 44
  %23 = call i32 @nvbios_rd32(ptr noundef nonnull %0, i32 noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %0, i32 noundef %23) #5
  switch i8 %26, label %27 [
    i8 32, label %28
    i8 48, label %28
  ]

27:                                               ; preds = %25, %18, %7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  br label %64

28:                                               ; preds = %25, %25
  %29 = add i32 %23, 1
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %0, i32 noundef %29) #5
  %31 = add i32 %23, 2
  %32 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %0, i32 noundef %31) #5
  %33 = add i32 %23, 3
  %34 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %0, i32 noundef %33) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  switch i8 %26, label %57 [
    i8 32, label %38
    i8 48, label %37
  ]

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i32 [ 10, %37 ], [ 9, %36 ]
  %40 = add i32 %23, %39
  %41 = call zeroext i8 @nvbios_rd08(ptr noundef nonnull %0, i32 noundef %40) #5
  %42 = icmp uge i8 %41, %34
  %43 = icmp ne i8 %41, -1
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef %54) #6
  br label %55

55:                                               ; preds = %49, %45
  %56 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 5
  store i8 -1, ptr %56, align 4
  br label %64

57:                                               ; preds = %38, %36
  %58 = phi i8 [ %41, %38 ], [ -1, %36 ]
  store i32 %23, ptr %1, align 4
  %59 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 1
  store i8 %26, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 2
  store i8 %30, ptr %60, align 1
  %61 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 3
  store i8 %32, ptr %61, align 2
  %62 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 4
  store i8 %34, ptr %62, align 1
  %63 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 5
  store i8 %58, ptr %63, align 4
  br label %64

64:                                               ; preds = %57, %55, %28, %27, %2
  %65 = phi i32 [ -22, %55 ], [ 0, %57 ], [ -22, %2 ], [ -19, %28 ], [ -19, %27 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_power_budget_entry(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, %2
  %15 = icmp ne ptr %3, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = zext i8 %2 to i32
  %19 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %9, %21
  %23 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = mul nuw nsw i32 %25, %18
  %27 = add i32 %22, %26
  %28 = getelementptr inbounds %struct.nvbios_power_budget, ptr %1, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = icmp ugt i8 %29, 31
  br i1 %30, label %31, label %40

31:                                               ; preds = %17
  %32 = add i32 %27, 2
  %33 = tail call i32 @nvbios_rd32(ptr noundef nonnull %0, i32 noundef %32) #5
  store i32 %33, ptr %3, align 4
  %34 = add i32 %27, 6
  %35 = tail call i32 @nvbios_rd32(ptr noundef nonnull %0, i32 noundef %34) #5
  %36 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %3, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = add i32 %27, 10
  %38 = tail call i32 @nvbios_rd32(ptr noundef nonnull %0, i32 noundef %37) #5
  %39 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %3, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  br label %45

40:                                               ; preds = %17
  store i32 0, ptr %3, align 4
  %41 = add i32 %27, 2
  %42 = tail call i32 @nvbios_rd32(ptr noundef nonnull %0, i32 noundef %41) #5
  %43 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %3, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvbios_power_budget_entry, ptr %3, i32 0, i32 1
  store i32 %42, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %31, %11, %8, %4
  %46 = phi i32 [ -22, %11 ], [ -22, %8 ], [ -22, %4 ], [ 0, %40 ], [ 0, %31 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
