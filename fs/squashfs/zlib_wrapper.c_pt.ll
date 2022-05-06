; ModuleID = '/llk/IR/fs/squashfs/zlib_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/zlib_wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.68, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.68 = type {}
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.34 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@squashfs_zlib_comp_ops = dso_local local_unnamed_addr constant %struct.squashfs_decompressor { ptr @zlib_init, ptr null, ptr @zlib_free, ptr @zlib_uncompress, i32 1, ptr @.str, i32 1 }, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\013SQUASHFS error: Failed to allocate zlib workspace\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @zlib_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 48) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @zlib_inflate_workspacesize() #7
  %8 = tail call noalias ptr @vmalloc(i32 noundef %7) #8
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 8
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6, %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  tail call void @kfree(ptr noundef %4) #7
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ inttoptr (i32 -12 to ptr), %11 ], [ %4, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zlib_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %5) #7
  br label %6

6:                                                ; preds = %3, %1
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zlib_uncompress(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 4
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 13
  %14 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 16
  %15 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 1
  br label %16

16:                                               ; preds = %102, %6
  %17 = phi i32 [ 0, %6 ], [ %103, %102 ]
  %18 = phi ptr [ null, %6 ], [ %77, %102 ]
  %19 = phi i32 [ 0, %6 ], [ %78, %102 ]
  %20 = phi i32 [ 0, %6 ], [ %79, %102 ]
  %21 = phi i1 [ true, %6 ], [ false, %102 ]
  %22 = phi i32 [ %4, %6 ], [ %80, %102 ]
  %23 = phi i32 [ %3, %6 ], [ %81, %102 ]
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %16
  %26 = load i16, ptr %13, align 4
  %27 = zext i16 %26 to i32
  %28 = icmp slt i32 %19, %27
  br i1 %28, label %29, label %110

29:                                               ; preds = %25
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq i32 %20, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr %struct.page, ptr %18, i32 1
  br label %42

34:                                               ; preds = %29
  %35 = getelementptr %struct.bio_vec, ptr %30, i32 %19
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.bio_vec, ptr %30, i32 %19, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 12
  %40 = getelementptr %struct.page, ptr %36, i32 %39
  %41 = and i32 %38, 4095
  br label %42

42:                                               ; preds = %34, %32
  %43 = phi ptr [ %40, %34 ], [ %33, %32 ]
  %44 = phi i32 [ %41, %34 ], [ 0, %32 ]
  %45 = sub nuw nsw i32 4096, %44
  %46 = getelementptr %struct.bio_vec, ptr %30, i32 %19, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %47, %20
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 %48) #7
  %50 = add i32 %49, %20
  %51 = icmp eq i32 %50, %47
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %19, %52
  %54 = select i1 %51, i32 0, i32 %50
  %55 = sub i32 %49, %23
  %56 = tail call i32 @llvm.smin.i32(i32 %22, i32 %55)
  %57 = load i32, ptr %43, align 4
  %58 = lshr i32 %57, 30
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %65, label %60

60:                                               ; preds = %42
  %61 = icmp eq i32 %58, 3
  %62 = load i32, ptr @movable_zone, align 4
  %63 = icmp eq i32 %62, 2
  %64 = select i1 %61, i1 %63, i1 false
  br label %65

65:                                               ; preds = %60, %42
  %66 = phi i1 [ true, %42 ], [ %64, %60 ]
  %67 = load i1, ptr @bvec_virt.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %65
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #7
  br label %71

71:                                               ; preds = %70, %65
  %72 = tail call ptr @page_address(ptr noundef %43) #7
  %73 = getelementptr i8, ptr %72, i32 %44
  %74 = sub i32 %22, %56
  %75 = getelementptr i8, ptr %73, i32 %23
  store ptr %75, ptr %1, align 4
  store i32 %56, ptr %12, align 4
  br label %76

76:                                               ; preds = %71, %16
  %77 = phi ptr [ %18, %16 ], [ %43, %71 ]
  %78 = phi i32 [ %19, %16 ], [ %53, %71 ]
  %79 = phi i32 [ %20, %16 ], [ %54, %71 ]
  %80 = phi i32 [ %22, %16 ], [ %74, %71 ]
  %81 = phi i32 [ %23, %16 ], [ 0, %71 ]
  %82 = load i32, ptr %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load i32, ptr %8, align 4
  %86 = load i32, ptr %15, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store ptr null, ptr %11, align 4
  br label %96

89:                                               ; preds = %84
  %90 = load ptr, ptr %5, align 4
  %91 = add i32 %85, 1
  store i32 %91, ptr %8, align 4
  %92 = getelementptr ptr, ptr %90, i32 %85
  %93 = load ptr, ptr %92, align 4
  store ptr %93, ptr %11, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 4096, ptr %7, align 4
  br label %96

96:                                               ; preds = %95, %89, %88, %76
  br i1 %21, label %97, label %100

97:                                               ; preds = %96
  %98 = tail call i32 @zlib_inflateInit2(ptr noundef %1, i32 noundef 15) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97, %96
  %101 = tail call i32 @zlib_inflate(ptr noundef %1, i32 noundef 3) #7
  switch i32 %101, label %110 [
    i32 1, label %104
    i32 0, label %102
  ]

102:                                              ; preds = %100
  %103 = load i32, ptr %12, align 4
  br label %16

104:                                              ; preds = %100
  %105 = tail call i32 @zlib_inflateEnd(ptr noundef %1) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %107, %104, %100, %97, %25
  %111 = phi i32 [ %109, %107 ], [ -5, %104 ], [ -5, %25 ], [ -5, %97 ], [ -5, %100 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
