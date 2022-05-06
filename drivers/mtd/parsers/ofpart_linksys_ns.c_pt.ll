; ModuleID = '/llk/IR/drivers/mtd/parsers/ofpart_linksys_ns.c_pt.bc'
source_filename = "../drivers/mtd/parsers/ofpart_linksys_ns.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@.str = private unnamed_addr constant [20 x i8] c"linksys,ns-firmware\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bootpartition\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\014Failed to parse %s value \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\014Failed to get NVRAM \22%s\22\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @linksys_ns_partitions_post_parse(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 4) #4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i32 @kstrtoint(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  br label %17

13:                                               ; preds = %8
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #5
  br label %17

15:                                               ; preds = %3
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #5
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = phi i32 [ %12, %11 ], [ 0, %15 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %32, %17
  %21 = phi i32 [ %34, %32 ], [ 0, %17 ]
  %22 = phi i32 [ %33, %32 ], [ 0, %17 ]
  %23 = getelementptr %struct.mtd_partition, ptr %1, i32 %21, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @of_device_is_compatible(ptr noundef %24, ptr noundef nonnull @.str) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = getelementptr %struct.mtd_partition, ptr %1, i32 %21
  %29 = add i32 %22, 1
  %30 = icmp eq i32 %22, %18
  %31 = select i1 %30, ptr @.str.1, ptr @.str.2
  store ptr %31, ptr %28, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i32 [ %22, %20 ], [ %29, %27 ]
  %34 = add nuw nsw i32 %21, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %20

36:                                               ; preds = %32, %17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
