; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/fifo.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/fifo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.anon.0 = type { %struct.nv_device_info_v1, %struct.anon.1 }
%struct.anon.1 = type { %struct.nv_device_info_v1_data, [64 x %struct.nv_device_info_v1_data] }
%struct.nvif_fifo_runlist = type { i64 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nvif_fifo_runlist(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1048) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %86, label %10

10:                                               ; preds = %6
  store i8 1, ptr %8, align 8
  %11 = getelementptr inbounds %struct.nv_device_info_v1, ptr %8, i32 0, i32 1
  store i8 65, ptr %11, align 1
  %12 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1
  store i64 4294967296, ptr %12, align 8
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %18, %13 ]
  %15 = getelementptr %struct.anon.0, ptr %8, i32 0, i32 1, i32 1, i32 %14
  store i64 4294967552, ptr %15, align 8
  %16 = zext i32 %14 to i64
  %17 = getelementptr %struct.anon.0, ptr %8, i32 0, i32 1, i32 1, i32 %14, i32 1
  store i64 %16, ptr %17, align 8
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %13

20:                                               ; preds = %13
  %21 = tail call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 1048) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #6, !range !8
  %31 = sub nuw nsw i32 64, %30
  br label %38

32:                                               ; preds = %23
  %33 = trunc i64 %25 to i32
  %34 = icmp eq i32 %33, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 false) #6, !range !8
  %36 = sub nuw nsw i32 32, %35
  %37 = select i1 %34, i32 0, i32 %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i32 [ %31, %29 ], [ %37, %32 ]
  %40 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = shl nuw nsw i32 %39, 3
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #7
  store ptr %42, ptr %3, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %40, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %59, %44
  %48 = phi i32 [ %60, %59 ], [ %45, %44 ]
  %49 = phi i32 [ %61, %59 ], [ 0, %44 ]
  %50 = getelementptr %struct.anon.0, ptr %8, i32 0, i32 1, i32 1, i32 %49
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr %struct.anon.0, ptr %8, i32 0, i32 1, i32 1, i32 %49, i32 1
  %55 = load i64, ptr %54, align 8
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr %struct.nvif_fifo_runlist, ptr %56, i32 %49
  store i64 %55, ptr %57, align 8
  %58 = load i32, ptr %40, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %48, %47 ], [ %58, %53 ]
  %61 = add nuw nsw i32 %49, 1
  %62 = icmp slt i32 %61, %60
  br i1 %62, label %47, label %63

63:                                               ; preds = %59, %44
  tail call void @kfree(ptr noundef nonnull %8) #6
  br label %65

64:                                               ; preds = %38, %20
  tail call void @kfree(ptr noundef nonnull %8) #6
  br label %86

65:                                               ; preds = %63, %2
  %66 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load ptr, ptr %3, align 8
  br label %71

71:                                               ; preds = %82, %69
  %72 = phi i32 [ 0, %69 ], [ %84, %82 ]
  %73 = phi i64 [ 0, %69 ], [ %83, %82 ]
  %74 = getelementptr %struct.nvif_fifo_runlist, ptr %70, i32 %72
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, %1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = zext i32 %72 to i64
  %80 = shl nuw i64 1, %79
  %81 = or i64 %80, %73
  br label %82

82:                                               ; preds = %78, %71
  %83 = phi i64 [ %81, %78 ], [ %73, %71 ]
  %84 = add nuw nsw i32 %72, 1
  %85 = icmp eq i32 %84, %67
  br i1 %85, label %86, label %71

86:                                               ; preds = %82, %65, %64, %6
  %87 = phi i64 [ 0, %64 ], [ 0, %6 ], [ 0, %65 ], [ %83, %82 ]
  ret i64 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{i32 0, i32 33}
