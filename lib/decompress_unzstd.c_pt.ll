; ModuleID = '/llk/IR/lib/decompress_unzstd.c_pt.bc'
source_filename = "../lib/decompress_unzstd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ZSTD-compressed data is truncated\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"ZSTD-compressed data has an incomplete frame header\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"ZSTD-compressed data has too large a window size\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating ZSTD_DStream\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Failed to flush()\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating zstd_dctx\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"ZSTD decompressor ran out of memory\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Input is not in the ZSTD format (wrong magic bytes)\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"ZSTD-compressed data is corrupt\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"ZSTD-compressed data is probably corrupt\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unzstd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = tail call fastcc i32 @__unzstd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #5
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__unzstd(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 section ".init.text" {
  %8 = alloca %struct.ZSTD_inBuffer_s, align 4
  %9 = alloca %struct.ZSTD_outBuffer_s, align 4
  %10 = alloca %struct.ZSTD_frameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i32 40, i1 false), !annotation !8
  %11 = ptrtoint ptr %4 to i32
  %12 = xor i32 %11, -1
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %3, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = tail call fastcc i32 @decompress_single(ptr noundef %0, i32 noundef %1, ptr noundef %4, i32 noundef %12, ptr noundef %5, ptr noundef %6) #5
  br label %122

18:                                               ; preds = %7
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = tail call noalias ptr @vmalloc(i32 noundef 131072) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void %6(ptr noundef nonnull @.str) #6
  br label %122

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %1, %18 ], [ 0, %20 ]
  %26 = phi ptr [ %0, %18 ], [ %21, %20 ]
  %27 = phi ptr [ null, %18 ], [ %21, %20 ]
  br i1 %13, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %2(ptr noundef nonnull %26, i32 noundef 131072) #6
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %25, %24 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void %6(ptr noundef nonnull @.str.1) #6
  br label %110

34:                                               ; preds = %30
  store ptr %26, ptr %8, align 4
  %35 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %8, i32 0, i32 2
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %8, i32 0, i32 1
  store i32 %31, ptr %36, align 4
  %37 = icmp ne ptr %3, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = tail call noalias ptr @vmalloc(i32 noundef 131072) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void %6(ptr noundef nonnull @.str.2) #6
  br label %110

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %4, %34 ], [ %39, %38 ]
  %44 = phi i32 [ %12, %34 ], [ 131072, %38 ]
  %45 = phi ptr [ null, %34 ], [ %39, %38 ]
  store ptr %43, ptr %9, align 4
  %46 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i32 0, i32 2
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i32 0, i32 1
  store i32 %44, ptr %47, align 4
  %48 = call i32 @zstd_get_frame_header(ptr noundef nonnull %10, ptr noundef nonnull %26, i32 noundef %31) #6
  %49 = call fastcc i32 @handle_zstd_error(i32 noundef %48, ptr noundef %6) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %42
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  call void %6(ptr noundef nonnull @.str.3) #6
  br label %110

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %10, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = icmp ugt i64 %56, 1073741824
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void %6(ptr noundef nonnull @.str.4) #6
  br label %110

59:                                               ; preds = %54
  %60 = trunc i64 %56 to i32
  %61 = call i32 @zstd_dstream_workspace_bound(i32 noundef %60) #6
  %62 = call noalias ptr @vmalloc(i32 noundef %61) #7
  %63 = load i64, ptr %55, align 8
  %64 = trunc i64 %63 to i32
  %65 = call ptr @zstd_init_dstream(i32 noundef %64, ptr noundef %62, i32 noundef %61) #6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  call void %6(ptr noundef nonnull @.str.5) #6
  br label %110

68:                                               ; preds = %59
  %69 = icmp eq ptr %5, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  store i32 0, ptr %5, align 4
  br label %71

71:                                               ; preds = %70, %68
  br label %72

72:                                               ; preds = %102, %71
  %73 = phi i32 [ %104, %102 ], [ %31, %71 ]
  %74 = phi i32 [ %103, %102 ], [ 0, %71 ]
  %75 = icmp eq i32 %74, %73
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  br i1 %69, label %80, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %5, align 4
  %79 = add i32 %78, %73
  store i32 %79, ptr %5, align 4
  br label %80

80:                                               ; preds = %77, %76
  br i1 %13, label %84, label %81

81:                                               ; preds = %80
  %82 = call i32 %2(ptr noundef %26, i32 noundef 131072) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %80
  call void %6(ptr noundef nonnull @.str.1) #6
  br label %110

85:                                               ; preds = %81
  store i32 0, ptr %35, align 4
  store i32 %82, ptr %36, align 4
  br label %86

86:                                               ; preds = %85, %72
  %87 = call i32 @zstd_decompress_stream(ptr noundef nonnull %65, ptr noundef nonnull %9, ptr noundef nonnull %8) #6
  %88 = call fastcc i32 @handle_zstd_error(i32 noundef %87, ptr noundef %6) #5
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i32, ptr %46, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %37, i1 %92, i1 false
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load ptr, ptr %9, align 4
  %96 = call i32 %3(ptr noundef %95, i32 noundef %91) #6
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void %6(ptr noundef nonnull @.str.6) #6
  br label %110

99:                                               ; preds = %94
  store i32 0, ptr %46, align 4
  br label %100

100:                                              ; preds = %99, %90
  %101 = icmp eq i32 %87, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %100
  %103 = load i32, ptr %35, align 4
  %104 = load i32, ptr %36, align 4
  br label %72

105:                                              ; preds = %100
  br i1 %69, label %110, label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %35, align 4
  %108 = load i32, ptr %5, align 4
  %109 = add i32 %108, %107
  store i32 %109, ptr %5, align 4
  br label %110

110:                                              ; preds = %106, %105, %98, %86, %84, %67, %58, %53, %42, %41, %33
  %111 = phi ptr [ null, %33 ], [ null, %41 ], [ %45, %42 ], [ %45, %53 ], [ %45, %58 ], [ %45, %67 ], [ %45, %84 ], [ %45, %98 ], [ %45, %106 ], [ %45, %105 ], [ %45, %86 ]
  %112 = phi ptr [ null, %33 ], [ null, %41 ], [ null, %42 ], [ null, %53 ], [ null, %58 ], [ %62, %67 ], [ %62, %84 ], [ %62, %98 ], [ %62, %106 ], [ %62, %105 ], [ %62, %86 ]
  %113 = phi i32 [ -1, %33 ], [ -1, %41 ], [ %49, %42 ], [ -1, %53 ], [ -1, %58 ], [ -1, %67 ], [ -1, %84 ], [ -1, %98 ], [ 0, %106 ], [ 0, %105 ], [ -1, %86 ]
  %114 = icmp eq ptr %27, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  call void @vfree(ptr noundef nonnull %27) #6
  br label %116

116:                                              ; preds = %115, %110
  %117 = icmp eq ptr %111, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  call void @vfree(ptr noundef nonnull %111) #6
  br label %119

119:                                              ; preds = %118, %116
  %120 = icmp eq ptr %112, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %119
  call void @vfree(ptr noundef nonnull %112) #6
  br label %122

122:                                              ; preds = %121, %119, %23, %16
  %123 = phi i32 [ %17, %16 ], [ %113, %121 ], [ %113, %119 ], [ -1, %23 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  ret i32 %123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @decompress_single(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 section ".init.text" {
  %7 = tail call i32 @zstd_dctx_workspace_bound() #6
  %8 = tail call noalias ptr @vmalloc(i32 noundef %7) #7
  %9 = tail call ptr @zstd_init_dctx(ptr noundef %8, i32 noundef %7) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void %5(ptr noundef nonnull @.str.7) #6
  br label %23

12:                                               ; preds = %6
  %13 = tail call i32 @zstd_find_frame_compressed_size(ptr noundef %0, i32 noundef %1) #6
  %14 = tail call fastcc i32 @handle_zstd_error(i32 noundef %13, ptr noundef %5) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = tail call i32 @zstd_decompress_dctx(ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %13) #6
  %18 = tail call fastcc i32 @handle_zstd_error(i32 noundef %17, ptr noundef %5) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = icmp eq ptr %4, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  store i32 %13, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %20, %16, %12, %11
  %24 = phi i32 [ -1, %11 ], [ -1, %12 ], [ -1, %16 ], [ 0, %22 ], [ 0, %20 ]
  %25 = icmp eq ptr %8, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @vfree(ptr noundef nonnull %8) #6
  br label %27

27:                                               ; preds = %26, %23
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_frame_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @handle_zstd_error(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @zstd_get_error_code(i32 noundef %0) #6
  %4 = tail call i32 @zstd_is_error(i32 noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  switch i32 %3, label %9 [
    i32 64, label %10
    i32 10, label %7
    i32 70, label %8
    i32 20, label %8
    i32 22, label %8
  ]

7:                                                ; preds = %6
  br label %10

8:                                                ; preds = %6, %6, %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = phi ptr [ @.str.9, %7 ], [ @.str.10, %8 ], [ @.str.11, %9 ], [ @.str.8, %6 ]
  tail call void %1(ptr noundef nonnull %11) #6
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ 0, %2 ], [ -1, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dstream_workspace_bound(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dstream(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dctx_workspace_bound() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dctx(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_find_frame_compressed_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_dctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_error_code(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold }
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
!8 = !{!"auto-init"}
