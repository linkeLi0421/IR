; ModuleID = '/llk/IR/kernel/dma/remap.c_pt.bc'
source_filename = "../kernel/dma/remap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.page = type { i32, %union.anon, %union.anon.60, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.60 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"kernel/dma/remap.c\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"trying to free invalid coherent area: %p\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_common_find_pages(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @find_vm_area(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_common_pages_remap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = add i32 %1, 4095
  %6 = lshr i32 %5, 12
  %7 = tail call ptr @vmap(ptr noundef %0, i32 noundef %6, i32 noundef 16, i32 noundef %2) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @find_vm_area(ptr noundef nonnull %7) #4
  %11 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 4
  store ptr %0, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_common_contiguous_remap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = add i32 %1, 4095
  %6 = lshr i32 %5, 12
  %7 = shl nuw nsw i32 %6, 2
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = icmp ult i32 %5, 4096
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %18, %14 ], [ 0, %12 ]
  %16 = getelementptr %struct.page, ptr %0, i32 %15
  %17 = getelementptr ptr, ptr %8, i32 %15
  store ptr %16, ptr %17, align 4
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, %13
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %10
  %21 = tail call ptr @vmap(ptr noundef nonnull %8, i32 noundef %6, i32 noundef 16, i32 noundef %2) #4
  tail call void @kfree(ptr noundef nonnull %8) #4
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi ptr [ %21, %20 ], [ null, %4 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_common_free_remap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @find_vm_area(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vm_struct, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %0) #4
  br label %11

10:                                               ; preds = %5
  tail call void @vunmap(ptr noundef %0) #4
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
