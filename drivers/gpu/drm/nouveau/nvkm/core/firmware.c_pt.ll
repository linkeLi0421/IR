; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/firmware.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/firmware.c"
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
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nvidia/%s/%s-%d.bin\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"nvidia/%s/%s.bin\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: firmware \22%s\22 loaded - %zu byte(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: firmware \22%s\22 unavailable\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2)
  %8 = call i32 @nvkm_firmware_get(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3, ptr noundef %4)
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 16)
  %13 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 15
  store i8 0, ptr %13, align 1
  %14 = call i32 @strlen(ptr noundef nonnull %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %16, %4
  %17 = phi i32 [ %18, %16 ], [ %14, %4 ]
  %18 = add i32 %17, -1
  %19 = getelementptr [16 x i8], ptr %6, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = add i8 %20, 32
  %27 = select i1 %25, i8 %20, i8 %26
  store i8 %27, ptr %19, align 1
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %29, label %16

29:                                               ; preds = %16, %4
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2)
  br label %35

33:                                               ; preds = %29
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, ptr noundef %1)
  br label %35

35:                                               ; preds = %33, %31
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @firmware_request_nowarn(ptr noundef %3, ptr noundef nonnull %5, ptr noundef %37) #9
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %39, label %43, label %51

43:                                               ; preds = %35
  br i1 %42, label %44, label %57

44:                                               ; preds = %43
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %3, align 4
  %50 = load i32, ptr %49, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef %48, ptr noundef nonnull %5, i32 noundef %50) #10
  br label %57

51:                                               ; preds = %35
  br i1 %42, label %52, label %57

52:                                               ; preds = %51
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.4, ptr noundef %56, ptr noundef nonnull %5) #10
  br label %57

57:                                               ; preds = %52, %51, %44, %43
  %58 = phi i32 [ 0, %44 ], [ 0, %43 ], [ -2, %52 ], [ -2, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_firmware_load_blob(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i8], align 1
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #9, !annotation !8
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2) #9
  %9 = call i32 @nvkm_firmware_get(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %7) #9
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 0) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %11 = icmp sgt i32 %9, -1
  br i1 %11, label %12, label %23

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  %17 = call ptr @kmemdup(ptr noundef %15, i32 noundef %16, i32 noundef 3264) #9
  store ptr %17, ptr %4, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_blob, ptr %4, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  call void @release_firmware(ptr noundef %18) #9
  %21 = load ptr, ptr %4, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12, %5
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %10, %23 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_firmware_put(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @release_firmware(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
