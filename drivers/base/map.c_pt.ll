; ModuleID = '/llk/IR/drivers/base/map.c_pt.bc'
source_filename = "../drivers/base/map.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.probe = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.kobj_map = type { [255 x ptr], ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobj_map(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = add i32 %1, -1
  %9 = add i32 %8, %2
  %10 = lshr i32 %9, 20
  %11 = lshr i32 %1, 20
  %12 = sub nsw i32 1, %11
  %13 = add nsw i32 %12, %10
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 255)
  %15 = mul nuw nsw i32 %14, 28
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %18

18:                                               ; preds = %7
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %30, %20 ], [ %16, %18 ]
  %22 = phi i32 [ %29, %20 ], [ 0, %18 ]
  %23 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 3
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 4
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 5
  store ptr %5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 1
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 2
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.probe, ptr %21, i32 0, i32 6
  store ptr %6, ptr %28, align 4
  %29 = add nuw nsw i32 %22, 1
  %30 = getelementptr %struct.probe, ptr %21, i32 1
  %31 = icmp eq i32 %29, %14
  br i1 %31, label %32, label %20

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.kobj_map, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @mutex_lock(ptr noundef %34) #6
  br i1 %19, label %60, label %35

35:                                               ; preds = %32
  %36 = sub nsw i32 0, %14
  %37 = getelementptr %struct.probe, ptr %30, i32 %36
  br label %38

38:                                               ; preds = %52, %35
  %39 = phi ptr [ %54, %52 ], [ %37, %35 ]
  %40 = phi i32 [ %53, %52 ], [ 0, %35 ]
  %41 = phi i32 [ %55, %52 ], [ %11, %35 ]
  %42 = urem i32 %41, 255
  %43 = getelementptr [255 x ptr], ptr %0, i32 0, i32 %42
  br label %44

44:                                               ; preds = %48, %38
  %45 = phi ptr [ %43, %38 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.probe, ptr %46, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, %2
  br i1 %51, label %44, label %52

52:                                               ; preds = %48, %44
  store ptr %46, ptr %39, align 4
  store ptr %39, ptr %45, align 4
  %53 = add nuw nsw i32 %40, 1
  %54 = getelementptr %struct.probe, ptr %39, i32 1
  %55 = add nuw nsw i32 %41, 1
  %56 = icmp eq i32 %53, %14
  br i1 %56, label %60, label %38

57:                                               ; preds = %18
  %58 = getelementptr inbounds %struct.kobj_map, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void @mutex_lock(ptr noundef %59) #6
  br label %60

60:                                               ; preds = %57, %52, %32
  %61 = phi ptr [ %33, %32 ], [ %58, %57 ], [ %33, %52 ]
  %62 = load ptr, ptr %61, align 4
  tail call void @mutex_unlock(ptr noundef %62) #6
  br label %63

63:                                               ; preds = %60, %7
  %64 = phi i32 [ 0, %60 ], [ -12, %7 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kobj_unmap(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -1
  %5 = add i32 %4, %2
  %6 = lshr i32 %5, 20
  %7 = lshr i32 %1, 20
  %8 = sub nsw i32 1, %7
  %9 = add nsw i32 %8, %6
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 255)
  %11 = getelementptr inbounds %struct.kobj_map, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %39, %3
  %15 = phi ptr [ %40, %39 ], [ null, %3 ]
  %16 = phi i32 [ %41, %39 ], [ 0, %3 ]
  %17 = phi i32 [ %42, %39 ], [ %7, %3 ]
  %18 = urem i32 %17, 255
  %19 = getelementptr [255 x ptr], ptr %0, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %36, %14
  %23 = phi ptr [ %37, %36 ], [ %20, %14 ]
  %24 = phi ptr [ %23, %36 ], [ %19, %14 ]
  %25 = getelementptr inbounds %struct.probe, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.probe, ptr %23, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr %23, align 4
  store ptr %33, ptr %24, align 4
  %34 = icmp eq ptr %15, null
  %35 = select i1 %34, ptr %23, ptr %15
  br label %39

36:                                               ; preds = %28, %22
  %37 = load ptr, ptr %23, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %22

39:                                               ; preds = %36, %32, %14
  %40 = phi ptr [ %35, %32 ], [ %15, %14 ], [ %15, %36 ]
  %41 = add nuw nsw i32 %16, 1
  %42 = add nuw nsw i32 %17, 1
  %43 = icmp eq i32 %41, %10
  br i1 %43, label %44, label %14

44:                                               ; preds = %39, %3
  %45 = phi ptr [ null, %3 ], [ %40, %39 ]
  %46 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %46) #6
  tail call void @kfree(ptr noundef %45) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kobj_map, ptr %0, i32 0, i32 1
  %5 = lshr i32 %1, 20
  %6 = trunc i32 %5 to i16
  %7 = urem i16 %6, 255
  %8 = zext i16 %7 to i32
  %9 = getelementptr [255 x ptr], ptr %0, i32 0, i32 %8
  br label %10

10:                                               ; preds = %50, %3
  %11 = phi i32 [ -1, %3 ], [ %40, %50 ]
  %12 = load ptr, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = load ptr, ptr %9, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %54, %10
  %16 = phi ptr [ %56, %54 ], [ %13, %10 ]
  %17 = phi i32 [ %55, %54 ], [ %11, %10 ]
  %18 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %54, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = add i32 %24, %19
  %26 = icmp ult i32 %25, %1
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = icmp ult i32 %24, %17
  br i1 %28, label %29, label %58

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call zeroext i1 @try_module_get(ptr noundef %31) #6
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %22, align 4
  %40 = add i32 %39, -1
  %41 = load i32, ptr %18, align 4
  %42 = sub i32 %1, %41
  store i32 %42, ptr %2, align 4
  %43 = getelementptr inbounds %struct.probe, ptr %16, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = tail call i32 %44(i32 noundef %1, ptr noundef %36) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @module_put(ptr noundef %34) #6
  br label %54

50:                                               ; preds = %46, %33
  %51 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %51) #6
  %52 = tail call ptr %38(i32 noundef %1, ptr noundef %2, ptr noundef %36) #6
  tail call void @module_put(ptr noundef %34) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %10, label %60

54:                                               ; preds = %49, %29, %21, %15
  %55 = phi i32 [ %40, %49 ], [ %17, %21 ], [ %17, %15 ], [ %17, %29 ]
  %56 = load ptr, ptr %16, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %15

58:                                               ; preds = %54, %27, %10
  %59 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %59) #6
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ null, %58 ], [ %52, %50 ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kobj_map_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #7
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #7
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @kfree(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %6) #6
  br label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.probe, ptr %6, i32 0, i32 1
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.probe, ptr %6, i32 0, i32 2
  store i32 -1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.probe, ptr %6, i32 0, i32 4
  store ptr %0, ptr %14, align 8
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ 0, %11 ], [ %18, %15 ]
  %17 = getelementptr [255 x ptr], ptr %4, i32 0, i32 %16
  store ptr %6, ptr %17, align 4
  %18 = add nuw nsw i32 %16, 1
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %15

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.kobj_map, ptr %4, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ null, %10 ], [ %4, %20 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
