; ModuleID = '/llk/IR/arch/arm/boot/compressed/fdt_wip.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_wip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %8) #4
  %10 = icmp eq ptr %9, null
  %11 = load i32, ptr %8, align 4
  br i1 %10, label %18, label %12

12:                                               ; preds = %7
  %13 = add i32 %6, %4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %9, i32 %4
  %17 = call ptr @memcpy(ptr noundef %16, ptr noundef %5, i32 noundef %6) #4
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = phi i32 [ 0, %15 ], [ -3, %12 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_setprop_inplace(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #4
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr %7, align 4
  br i1 %9, label %24, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %10, %4
  br i1 %12, label %13, label %24

13:                                               ; preds = %11
  %14 = call i32 @strlen(ptr noundef %2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !9
  %15 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %14, ptr noundef nonnull %6) #4
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %6, align 4
  br i1 %16, label %22, label %18

18:                                               ; preds = %13
  %19 = icmp ult i32 %17, %4
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = call ptr @memcpy(ptr noundef nonnull %15, ptr noundef %3, i32 noundef %4) #4
  br label %22

22:                                               ; preds = %20, %18, %13
  %23 = phi i32 [ 0, %20 ], [ -3, %18 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  br label %24

24:                                               ; preds = %22, %11, %5
  %25 = phi i32 [ %23, %22 ], [ -3, %11 ], [ %10, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_nop_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #4
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr %4, align 4
  br i1 %6, label %16, label %8

8:                                                ; preds = %3
  %9 = add i32 %7, 12
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = icmp ugt ptr %10, %5
  br i1 %11, label %12, label %16

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %5, %8 ]
  store i32 67108864, ptr %13, align 4
  %14 = getelementptr i32, ptr %13, i32 1
  %15 = icmp ult ptr %14, %10
  br i1 %15, label %12, label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i32 [ 0, %8 ], [ %7, %3 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_end_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %7, %5 ], [ %1, %2 ]
  %7 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %3) #4
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sgt i32 %9, -1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %1, %2 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_nop_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br label %24

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %8, %6 ], [ %1, %2 ]
  %8 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #4
  %9 = icmp sgt i32 %8, -1
  %10 = load i32, ptr %3, align 4
  %11 = icmp sgt i32 %10, -1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %6, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef 0) #4
  %17 = sub i32 %8, %1
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = icmp ugt ptr %18, %16
  br i1 %19, label %20, label %24

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %22, %20 ], [ %16, %15 ]
  store i32 67108864, ptr %21, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  %23 = icmp ult ptr %22, %18
  br i1 %23, label %20, label %24

24:                                               ; preds = %20, %15, %13, %5
  %25 = phi i32 [ %8, %13 ], [ %1, %5 ], [ 0, %15 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_offset_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
