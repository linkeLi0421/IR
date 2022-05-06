; ModuleID = '/llk/IR/drivers/of/fdt_address.c_pt.bc'
source_filename = "../drivers/of/fdt_address.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@initial_boot_params = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\013OF: fdt: warning: device tree node '%s' has no address.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\013OF: fdt: Bad cell count for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i64 @of_flat_dt_translate_address(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @initial_boot_params, align 4
  %3 = tail call fastcc i64 @fdt_translate_address(ptr noundef %2, i32 noundef %0) #9
  ret i64 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i64 @fdt_translate_address(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %2
  %12 = call i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %1) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %64, label %14

14:                                               ; preds = %11
  call fastcc void @fdt_bus_default_count_cells(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %15 = load i32, ptr %5, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = shl nuw nsw i32 %15, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr nonnull align 4 %9, i32 %22, i1 false)
  %23 = call i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %12) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %54, %21
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %64, label %28

28:                                               ; preds = %28, %25
  %29 = phi i64 [ %37, %28 ], [ 0, %25 ]
  %30 = phi i32 [ %32, %28 ], [ %26, %25 ]
  %31 = phi ptr [ %38, %28 ], [ %4, %25 ]
  %32 = add i32 %30, -1
  %33 = shl i64 %29, 32
  %34 = load i32, ptr %31, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = zext i32 %35 to i64
  %37 = or i64 %33, %36
  %38 = getelementptr i32, ptr %31, i32 1
  %39 = icmp eq i32 %32, 0
  br i1 %39, label %64, label %28

40:                                               ; preds = %54, %21
  %41 = phi i32 [ %57, %54 ], [ %23, %21 ]
  %42 = phi i32 [ %41, %54 ], [ %12, %21 ]
  call fastcc void @fdt_bus_default_count_cells(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, -1
  %45 = icmp ult i32 %44, 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i32, ptr %5, align 4
  %51 = load i32, ptr %6, align 4
  %52 = call fastcc i32 @fdt_translate_one(ptr noundef %0, i32 noundef %42, ptr noundef nonnull %4, i32 noundef %50, i32 noundef %51, i32 noundef %43) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, ptr %7, align 4
  store i32 %55, ptr %5, align 4
  %56 = load i32, ptr %8, align 4
  store i32 %56, ptr %6, align 4
  %57 = call i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %41) #10
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %25, label %40

59:                                               ; preds = %40, %14, %2
  %60 = phi i32 [ %1, %2 ], [ %1, %14 ], [ %42, %40 ]
  %61 = phi ptr [ @.str.1, %2 ], [ @.str.2, %14 ], [ @.str.2, %40 ]
  %62 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %60, ptr noundef null) #10
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %61, ptr noundef %62) #11
  br label %64

64:                                               ; preds = %59, %49, %28, %25, %11
  %65 = phi i64 [ -1, %11 ], [ 0, %25 ], [ -1, %59 ], [ %37, %28 ], [ -1, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i64 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_parent_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @fdt_translate_one(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ %24, %15 ], [ 0, %13 ]
  %17 = phi i32 [ %19, %15 ], [ %3, %13 ]
  %18 = phi ptr [ %25, %15 ], [ %2, %13 ]
  %19 = add i32 %17, -1
  %20 = shl i64 %16, 32
  %21 = load i32, ptr %18, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #10
  %23 = zext i32 %22 to i64
  %24 = or i64 %20, %23
  %25 = getelementptr i32, ptr %18, i32 1
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %27, label %15

27:                                               ; preds = %15, %13
  %28 = phi i64 [ 0, %13 ], [ %24, %15 ]
  %29 = shl i32 %5, 2
  call void @llvm.memset.p0.i32(ptr align 4 %2, i8 0, i32 %29, i1 false)
  br label %47

30:                                               ; preds = %10
  %31 = sdiv i32 %11, 4
  store i32 %31, ptr %7, align 4
  %32 = add i32 %4, %3
  %33 = add i32 %32, %5
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %40, %30
  %36 = phi i32 [ %41, %40 ], [ %31, %30 ]
  %37 = phi ptr [ %42, %40 ], [ %8, %30 ]
  %38 = call fastcc i64 @fdt_bus_default_map(ptr noundef %2, ptr noundef %37, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = sub i32 %36, %33
  store i32 %41, ptr %7, align 4
  %42 = getelementptr i32, ptr %37, i32 %33
  %43 = icmp slt i32 %41, %33
  br i1 %43, label %50, label %35

44:                                               ; preds = %35
  %45 = getelementptr i32, ptr %37, i32 %3
  %46 = shl i32 %5, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %2, ptr align 4 %45, i32 %46, i1 false)
  br label %47

47:                                               ; preds = %44, %27
  %48 = phi i64 [ %28, %27 ], [ %38, %44 ]
  %49 = call fastcc i32 @fdt_bus_default_translate(ptr noundef %2, i64 noundef %48, i32 noundef %5)
  br label %50

50:                                               ; preds = %47, %40, %30, %6
  %51 = phi i32 [ %49, %47 ], [ 1, %6 ], [ 1, %30 ], [ 1, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fdt_bus_default_count_cells(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #0 section ".init.text" {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  br label %14

12:                                               ; preds = %6
  %13 = load i32, ptr @dt_root_addr_cells, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ]
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = icmp eq ptr %3, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  br label %26

24:                                               ; preds = %18
  %25 = load i32, ptr @dt_root_size_cells, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  store i32 %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %16
  ret void
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define internal fastcc i64 @fdt_bus_default_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 section ".init.text" {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ %16, %7 ], [ 0, %5 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %5 ]
  %10 = phi ptr [ %17, %7 ], [ %1, %5 ]
  %11 = add i32 %9, -1
  %12 = shl i64 %8, 32
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = zext i32 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr i32, ptr %10, i32 1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7, %5
  %20 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr i32, ptr %1, i32 %2
  %24 = getelementptr i32, ptr %23, i32 %4
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ %34, %25 ], [ 0, %22 ]
  %27 = phi i32 [ %29, %25 ], [ %3, %22 ]
  %28 = phi ptr [ %35, %25 ], [ %24, %22 ]
  %29 = add i32 %27, -1
  %30 = shl i64 %26, 32
  %31 = load i32, ptr %28, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = zext i32 %32 to i64
  %34 = or i64 %30, %33
  %35 = getelementptr i32, ptr %28, i32 1
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %37, label %25

37:                                               ; preds = %25, %19
  %38 = phi i64 [ 0, %19 ], [ %34, %25 ]
  br i1 %6, label %51, label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ %48, %39 ], [ 0, %37 ]
  %41 = phi i32 [ %43, %39 ], [ %2, %37 ]
  %42 = phi ptr [ %49, %39 ], [ %0, %37 ]
  %43 = add i32 %41, -1
  %44 = shl i64 %40, 32
  %45 = load i32, ptr %42, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = zext i32 %46 to i64
  %48 = or i64 %44, %47
  %49 = getelementptr i32, ptr %42, i32 1
  %50 = icmp eq i32 %43, 0
  br i1 %50, label %51, label %39

51:                                               ; preds = %39, %37
  %52 = phi i64 [ 0, %37 ], [ %48, %39 ]
  %53 = icmp uge i64 %52, %20
  %54 = add i64 %38, %20
  %55 = icmp ult i64 %52, %54
  %56 = select i1 %53, i1 %55, i1 false
  %57 = sub i64 %52, %20
  %58 = select i1 %56, i64 %57, i64 -1
  ret i64 %58
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @fdt_bus_default_translate(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #7 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i32
  br label %30

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %3 ]
  %10 = phi ptr [ %17, %7 ], [ %0, %3 ]
  %11 = add i32 %9, -1
  %12 = shl i64 %8, 32
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = zext i32 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr i32, ptr %10, i32 1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7
  %20 = shl i32 %2, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %20, i1 false)
  %21 = add i64 %16, %1
  %22 = icmp sgt i32 %2, 1
  %23 = trunc i64 %21 to i32
  br i1 %22, label %24, label %30

24:                                               ; preds = %19
  %25 = lshr i64 %21, 32
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = add nsw i32 %2, -2
  %29 = getelementptr i32, ptr %0, i32 %28
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %19, %5
  %31 = phi i32 [ %6, %5 ], [ %23, %24 ], [ %23, %19 ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = add i32 %2, -1
  %34 = getelementptr i32, ptr %0, i32 %33
  store i32 %32, ptr %34, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nofree nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
