; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/oproxy.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/oproxy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@nvkm_oproxy_func = internal constant %struct.nvkm_object_func { ptr @nvkm_oproxy_dtor, ptr @nvkm_oproxy_init, ptr @nvkm_oproxy_fini, ptr @nvkm_oproxy_mthd, ptr @nvkm_oproxy_ntfy, ptr @nvkm_oproxy_map, ptr @nvkm_oproxy_unmap, ptr @nvkm_oproxy_rd08, ptr @nvkm_oproxy_rd16, ptr @nvkm_oproxy_rd32, ptr @nvkm_oproxy_wr08, ptr @nvkm_oproxy_wr16, ptr @nvkm_oproxy_wr32, ptr @nvkm_oproxy_bind, ptr @nvkm_oproxy_sclass }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_oproxy_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_oproxy, ptr %2, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_oproxy_func, ptr noundef %1, ptr noundef %4) #3
  store ptr %0, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_oproxy_new_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 88) #4
  store ptr %5, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_oproxy, ptr %5, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_oproxy_func, ptr noundef %1, ptr noundef %8) #3
  store ptr %0, ptr %5, align 8
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_oproxy_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #3
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 72
  tail call void @nvkm_object_del(ptr noundef %8) #3
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr [2 x ptr], ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef %2) #3
  br label %14

14:                                               ; preds = %13, %7
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_oproxy_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7, %1
  %11 = getelementptr i8, ptr %0, i32 72
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object_func, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call i32 %15(ptr noundef %12) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %10
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr %struct.nvkm_oproxy_func, ptr %21, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef %2) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %25, %17, %7
  %30 = phi i32 [ 0, %28 ], [ %8, %7 ], [ %18, %17 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_oproxy_func, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %3, i1 noundef zeroext %1) #3
  %10 = icmp ne i32 %9, 0
  %11 = and i1 %10, %1
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr i8, ptr %0, i32 72
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object_func, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = tail call i32 %17(ptr noundef %14, i1 noundef zeroext %1) #3
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %21, %1
  br i1 %22, label %33, label %23

23:                                               ; preds = %19, %12
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr %struct.nvkm_oproxy_func, ptr %24, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %3, i1 noundef zeroext %1) #3
  %30 = icmp ne i32 %29, 0
  %31 = and i1 %30, %1
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %28, %19, %8
  %34 = phi i32 [ 0, %32 ], [ %9, %8 ], [ %20, %19 ], [ %29, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 72
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @nvkm_object_mthd(ptr noundef %6, i32 noundef %1, ptr noundef %2, i32 noundef %3) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_ntfy(ptr noundef %5, i32 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_map(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 72
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @nvkm_object_map(ptr noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_unmap(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 72
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @nvkm_object_unmap(ptr noundef %3) #3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd08(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_rd08(ptr noundef %5, i64 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd16(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_rd16(ptr noundef %5, i64 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_rd32(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_rd32(ptr noundef %5, i64 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr08(ptr nocapture noundef readonly %0, i64 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_wr08(ptr noundef %5, i64 noundef %1, i8 noundef zeroext %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr16(ptr nocapture noundef readonly %0, i64 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_wr16(ptr noundef %5, i64 noundef %1, i16 noundef zeroext %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_wr32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @nvkm_object_wr32(ptr noundef %5, i64 noundef %1, i32 noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 72
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @nvkm_object_bind(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_oproxy_sclass(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 9
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_object_func, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 %10(ptr noundef %7, i32 noundef %1, ptr noundef %2) #3
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %13, %12 ], [ -19, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_ntfy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd08(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd16(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd32(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr08(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr16(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
