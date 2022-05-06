; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-mjpeg-hdr.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-mjpeg-hdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mjpeg_header = type { i32, i32, i32, i32, i32, [5 x %struct.mjpeg_component] }
%struct.mjpeg_component = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s   wrong sequence, got SOF while SOI not seen\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%s   no header found within %d bytes input stream\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s   unsupported number of components (%d > %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s   sof: reached end of %d size input stream\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_mjpeg_read_header(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ult i32 %2, 2
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = call i32 @llvm.umax.i32(i32 %2, i32 3)
  %11 = add i32 %10, -3
  br label %12

12:                                               ; preds = %70, %9
  %13 = phi i32 [ %18, %70 ], [ 0, %9 ]
  %14 = phi i32 [ %71, %70 ], [ 0, %9 ]
  %15 = getelementptr i8, ptr %1, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, -1
  %18 = add nuw i32 %13, 1
  br i1 %17, label %19, label %70

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %1, i32 %18
  %21 = load i8, ptr %20, align 1
  switch i8 %21, label %70 [
    i8 -40, label %22
    i8 -64, label %23
    i8 -63, label %23
  ]

22:                                               ; preds = %19
  store i32 %13, ptr %4, align 4
  br label %70

23:                                               ; preds = %19, %19
  %24 = icmp eq i32 %14, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %28) #4
  br label %77

29:                                               ; preds = %23
  %30 = add i32 %13, 2
  %31 = sub i32 %2, %30
  %32 = load ptr, ptr %6, align 4
  %33 = icmp ult i32 %31, 64
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %1, i32 %30
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(100) %3, i8 0, i32 100, i1 false) #5
  %36 = load i16, ptr %35, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  %38 = zext i16 %37 to i32
  store i32 %38, ptr %3, align 4
  %39 = getelementptr i8, ptr %35, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %35, i32 3
  %44 = load i16, ptr %43, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #5
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %35, i32 5
  %49 = load i16, ptr %48, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #5
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %35, i32 7
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = icmp ugt i8 %54, 4
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.delta_dev, ptr %32, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.2, ptr noundef %61, i32 noundef %55, i32 noundef 5) #4
  br label %77

62:                                               ; preds = %34
  %63 = shl nuw nsw i32 %55, 4
  %64 = or i32 %63, 8
  %65 = icmp ugt i32 %64, %31
  br i1 %65, label %66, label %77

66:                                               ; preds = %62, %29
  %67 = getelementptr inbounds %struct.delta_dev, ptr %32, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.3, ptr noundef %69, i32 noundef %31) #4
  br label %77

70:                                               ; preds = %22, %19, %12
  %71 = phi i32 [ 1, %22 ], [ %14, %19 ], [ %14, %12 ]
  %72 = icmp eq i32 %13, %11
  br i1 %72, label %73, label %12

73:                                               ; preds = %70, %5
  %74 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.1, ptr noundef %76, i32 noundef %2) #4
  br label %77

77:                                               ; preds = %73, %66, %62, %58, %25
  %78 = phi i32 [ -61, %73 ], [ -22, %25 ], [ -61, %66 ], [ -22, %58 ], [ 0, %62 ]
  ret i32 %78
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
