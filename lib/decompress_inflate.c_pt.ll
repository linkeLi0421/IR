; ModuleID = '/llk/IR/lib/decompress_inflate.c_pt.bc'
source_filename = "../lib/decompress_inflate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"header error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @__gunzip(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5, ptr noundef writeonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #0 section ".init.text" {
  %9 = icmp eq ptr %3, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #5
  br label %17

12:                                               ; preds = %8
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = ptrtoint ptr %4 to i32
  %16 = xor i32 %15, -1
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = phi i32 [ 32768, %10 ], [ %5, %12 ], [ %16, %14 ]
  %19 = phi ptr [ %11, %10 ], [ %4, %12 ], [ %4, %14 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void %7(ptr noundef nonnull @.str) #6
  br label %145

22:                                               ; preds = %17
  %23 = icmp eq ptr %0, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void %7(ptr noundef nonnull @.str.1) #6
  br label %142

28:                                               ; preds = %24, %22
  %29 = phi i32 [ 0, %24 ], [ %1, %22 ]
  %30 = phi ptr [ %25, %24 ], [ %0, %22 ]
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 48) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void %7(ptr noundef nonnull @.str.2) #6
  br label %139

35:                                               ; preds = %28
  br i1 %9, label %38, label %36

36:                                               ; preds = %35
  %37 = tail call i32 @zlib_inflate_workspacesize() #6
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ %37, %36 ], [ 9516, %35 ]
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #5
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 8
  store ptr %40, ptr %41, align 8
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void %7(ptr noundef nonnull @.str.3) #6
  br label %137

44:                                               ; preds = %38
  %45 = icmp eq ptr %2, null
  %46 = select i1 %45, ptr @nofill, ptr %2
  %47 = icmp eq i32 %29, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call i32 %46(ptr noundef nonnull %30, i32 noundef 16384) #6
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %49, %48 ], [ %29, %44 ]
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %30, align 1
  %55 = icmp eq i8 %54, 31
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %30, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, -117
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %30, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 8
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %56, %53, %50
  %65 = icmp eq ptr %6, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  store i32 0, ptr %6, align 4
  br label %67

67:                                               ; preds = %66, %64
  tail call void %7(ptr noundef nonnull @.str.4) #6
  br label %134

68:                                               ; preds = %60
  %69 = getelementptr i8, ptr %30, i32 10
  store ptr %69, ptr %32, align 8
  %70 = add nsw i32 %51, -10
  %71 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %30, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68
  %77 = icmp eq i32 %70, 0
  br i1 %77, label %81, label %82

78:                                               ; preds = %82
  %79 = icmp eq i32 %85, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  store i32 0, ptr %71, align 4
  br label %81

81:                                               ; preds = %80, %76
  tail call void %7(ptr noundef nonnull @.str.5) #6
  br label %134

82:                                               ; preds = %78, %76
  %83 = phi ptr [ %86, %78 ], [ %69, %76 ]
  %84 = phi i32 [ %85, %78 ], [ %70, %76 ]
  %85 = add i32 %84, -1
  %86 = getelementptr i8, ptr %83, i32 1
  store ptr %86, ptr %32, align 8
  %87 = load i8, ptr %83, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %78

89:                                               ; preds = %82
  store i32 %85, ptr %71, align 4
  br label %90

90:                                               ; preds = %89, %68
  %91 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 3
  store ptr %19, ptr %91, align 4
  %92 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 4
  store i32 %18, ptr %92, align 8
  %93 = tail call i32 @zlib_inflateInit2(ptr noundef nonnull %32, i32 noundef -15) #6
  br i1 %9, label %94, label %99

94:                                               ; preds = %90
  %95 = load ptr, ptr %41, align 8
  %96 = getelementptr inbounds %struct.inflate_state, ptr %95, i32 0, i32 9
  store i32 0, ptr %96, align 4
  %97 = load ptr, ptr %41, align 8
  %98 = getelementptr inbounds %struct.inflate_state, ptr %97, i32 0, i32 12
  store ptr null, ptr %98, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = icmp eq i32 %93, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %99
  %102 = ptrtoint ptr %19 to i32
  br label %103

103:                                              ; preds = %121, %101
  %104 = load i32, ptr %71, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = tail call i32 %46(ptr noundef nonnull %30, i32 noundef 16384) #6
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  store ptr %30, ptr %32, align 8
  store i32 %107, ptr %71, align 4
  br label %110

110:                                              ; preds = %109, %103
  %111 = tail call i32 @zlib_inflate(ptr noundef nonnull %32, i32 noundef 0) #6
  br i1 %9, label %121, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %91, align 4
  %114 = icmp ugt ptr %113, %19
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = ptrtoint ptr %113 to i32
  %117 = sub i32 %116, %102
  %118 = tail call i32 %3(ptr noundef nonnull %19, i32 noundef %117) #6
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  store ptr %19, ptr %91, align 4
  store i32 %18, ptr %92, align 8
  br label %121

121:                                              ; preds = %120, %112, %110
  switch i32 %111, label %122 [
    i32 1, label %124
    i32 0, label %103
  ]

122:                                              ; preds = %121, %115, %106
  %123 = phi ptr [ @.str.6, %106 ], [ @.str.7, %115 ], [ @.str.8, %121 ]
  tail call void %7(ptr noundef nonnull %123) #6
  br label %124

124:                                              ; preds = %122, %121, %99
  %125 = phi i32 [ %93, %99 ], [ -1, %122 ], [ 0, %121 ]
  %126 = tail call i32 @zlib_inflateEnd(ptr noundef nonnull %32) #6
  %127 = icmp eq ptr %6, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %32, align 8
  %130 = ptrtoint ptr %129 to i32
  %131 = ptrtoint ptr %30 to i32
  %132 = sub i32 8, %131
  %133 = add i32 %132, %130
  store i32 %133, ptr %6, align 4
  br label %134

134:                                              ; preds = %128, %124, %81, %67
  %135 = phi i32 [ -1, %67 ], [ -1, %81 ], [ %125, %128 ], [ %125, %124 ]
  %136 = load ptr, ptr %41, align 8
  tail call void @kfree(ptr noundef %136) #6
  br label %137

137:                                              ; preds = %134, %43
  %138 = phi i32 [ -1, %43 ], [ %135, %134 ]
  tail call void @kfree(ptr noundef nonnull %32) #6
  br label %139

139:                                              ; preds = %137, %34
  %140 = phi i32 [ -1, %34 ], [ %138, %137 ]
  br i1 %23, label %141, label %142

141:                                              ; preds = %139
  tail call void @kfree(ptr noundef nonnull %30) #6
  br label %142

142:                                              ; preds = %141, %139, %27
  %143 = phi i32 [ %140, %139 ], [ %140, %141 ], [ -1, %27 ]
  br i1 %9, label %145, label %144

144:                                              ; preds = %142
  tail call void @kfree(ptr noundef nonnull %19) #6
  br label %145

145:                                              ; preds = %144, %142, %21
  %146 = phi i32 [ %143, %144 ], [ %143, %142 ], [ -1, %21 ]
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %0, i32 noundef %1) unnamed_addr #2 section ".init.text" {
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @gunzip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = tail call i32 @__gunzip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef %6) #8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold }

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
