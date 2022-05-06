; ModuleID = '/llk/IR/drivers/gpu/drm/drm_displayid.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_displayid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.displayid_iter = type { ptr, ptr, i32, i32, i32 }
%struct.displayid_block = type { i8, i8, i8 }
%struct.displayid_header = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_displayid.c\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"base revision 0x%x, length %d, %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\015[drm] DisplayID checksum invalid, remainder is %d\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @displayid_iter_edid_begin(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %3, i8 0, i32 16, i1 false)
  store ptr %0, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__displayid_iter_next(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %101, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 3
  %12 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %6, i32 %10
  %17 = getelementptr inbounds %struct.displayid_block, ptr %16, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %11, %19
  %21 = icmp ugt i32 %20, %13
  %22 = icmp eq ptr %16, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %15, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #5
  br label %100

25:                                               ; preds = %15
  %26 = add nuw nsw i32 %19, 3
  %27 = add i32 %26, %10
  store i32 %27, ptr %9, align 4
  %28 = add i32 %27, 3
  %29 = icmp ugt i32 %28, %13
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %6, i32 %27
  %32 = getelementptr inbounds %struct.displayid_block, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add i32 %28, %34
  %36 = icmp ugt i32 %35, %13
  %37 = icmp eq ptr %31, null
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %30, %25, %4
  %40 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 2
  %41 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 3
  %42 = getelementptr inbounds %struct.displayid_iter, ptr %0, i32 0, i32 4
  %43 = tail call ptr @drm_find_edid_extension(ptr noundef nonnull %2, i32 noundef 112, ptr noundef %42) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45

45:                                               ; preds = %96, %39
  %46 = phi ptr [ %98, %96 ], [ %43, %39 ]
  store i32 127, ptr %40, align 4
  store i32 1, ptr %41, align 4
  %47 = getelementptr i8, ptr %46, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr i8, ptr %46, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr i8, ptr %46, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr i8, ptr %46, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %49, i32 noundef %52, i32 noundef %55, i32 noundef %58) #5
  %59 = load i8, ptr %50, align 1
  %60 = icmp ugt i8 %59, 121
  br i1 %60, label %100, label %61

61:                                               ; preds = %45
  %62 = zext i8 %59 to i32
  %63 = add nuw nsw i32 %62, 4
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i32 [ %67, %64 ], [ 0, %61 ]
  %66 = phi i8 [ %70, %64 ], [ 0, %61 ]
  %67 = add nuw nsw i32 %65, 1
  %68 = getelementptr i8, ptr %46, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = add i8 %69, %66
  %71 = icmp eq i32 %65, %63
  br i1 %71, label %72, label %64

72:                                               ; preds = %64
  %73 = icmp eq i8 %70, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = zext i8 %70 to i32
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %75) #6
  br label %100

77:                                               ; preds = %72
  %78 = load i32, ptr %41, align 4
  %79 = getelementptr i8, ptr %46, i32 %78
  %80 = add i32 %78, 4
  %81 = getelementptr inbounds %struct.displayid_header, ptr %79, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %80, %83
  store i32 %84, ptr %40, align 4
  store ptr %46, ptr %5, align 4
  store i32 %80, ptr %41, align 4
  %85 = add i32 %78, 7
  %86 = icmp ugt i32 %85, %84
  br i1 %86, label %96, label %87

87:                                               ; preds = %77
  %88 = getelementptr i8, ptr %46, i32 %80
  %89 = getelementptr inbounds %struct.displayid_block, ptr %88, i32 0, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = add i32 %85, %91
  %93 = icmp ugt i32 %92, %84
  %94 = icmp eq ptr %88, null
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87, %77
  %97 = load ptr, ptr %0, align 4
  %98 = tail call ptr @drm_find_edid_extension(ptr noundef %97, i32 noundef 112, ptr noundef %42) #5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %45

100:                                              ; preds = %96, %74, %45, %39, %24
  store ptr null, ptr %5, align 4
  store ptr null, ptr %0, align 4
  br label %101

101:                                              ; preds = %100, %87, %30, %1
  %102 = phi ptr [ null, %1 ], [ %31, %30 ], [ null, %100 ], [ %88, %87 ]
  ret ptr %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @displayid_iter_end(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %0, i8 0, i32 20, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_find_edid_extension(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2002, i32 2000}
