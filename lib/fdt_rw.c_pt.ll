; ModuleID = '/llk/IR/lib/fdt_rw.c_pt.bc'
source_filename = "../lib/fdt_rw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_add_mem_rsv(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %8, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr i8, ptr %8, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = getelementptr i8, ptr %0, i32 %25
  %27 = getelementptr %struct.fdt_reserve_entry, ptr %26, i32 %7
  %28 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %0, ptr noundef %27, i32 noundef 0, i32 noundef 1) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %31, ptr %27, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %2)
  %33 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %27, i32 0, i32 1
  store i64 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %30, %6, %3
  %35 = phi i32 [ 0, %30 ], [ %4, %3 ], [ %28, %6 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_rw_probe_(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = icmp ult i32 %22, 17
  br i1 %23, label %48, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr i8, ptr %25, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  %34 = getelementptr i8, ptr %25, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or i32 %33, %37
  %39 = getelementptr i8, ptr %25, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef 16, i32 noundef %42) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %24
  %46 = icmp ugt i32 %22, 17
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i32 285212672, ptr %5, align 4
  br label %48

48:                                               ; preds = %47, %45, %24, %4, %1
  %49 = phi i32 [ %2, %1 ], [ -10, %4 ], [ -12, %24 ], [ 0, %47 ], [ 0, %45 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = shl i32 %2, 4
  %6 = shl i32 %3, 4
  %7 = tail call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %4
  %10 = sub i32 %3, %2
  %11 = shl i32 %10, 4
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = getelementptr i8, ptr %12, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr i8, ptr %12, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %20, %24
  %26 = getelementptr i8, ptr %12, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = add i32 %29, %11
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  store i32 %31, ptr %12, align 4
  %32 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %35
  %41 = getelementptr i8, ptr %32, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %40, %44
  %46 = getelementptr i8, ptr %32, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  %50 = add i32 %49, %11
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  store i32 %51, ptr %32, align 4
  br label %52

52:                                               ; preds = %9, %4
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_del_mem_rsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr i8, ptr %0, i32 %20
  %22 = getelementptr %struct.fdt_reserve_entry, ptr %21, i32 %1
  %23 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #6
  %27 = icmp sgt i32 %26, %1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %0, ptr noundef %22, i32 noundef 1, i32 noundef 0) #5
  br label %30

30:                                               ; preds = %28, %25, %2
  %31 = phi i32 [ %29, %28 ], [ %23, %2 ], [ -1, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_set_name(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  br label %24

12:                                               ; preds = %7
  %13 = call i32 @strlen(ptr noundef %2) #6
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, 4
  %16 = and i32 %15, -4
  %17 = add i32 %13, 4
  %18 = and i32 %17, -4
  %19 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %16, i32 noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = add i32 %13, 1
  %23 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %22) #6
  br label %24

24:                                               ; preds = %21, %12, %10, %3
  %25 = phi i32 [ 0, %21 ], [ %11, %10 ], [ %5, %3 ], [ %19, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  %8 = sub i32 %3, %2
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = add i32 %26, %8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  store i32 %28, ptr %9, align 4
  %29 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 %31, 24
  %33 = getelementptr i8, ptr %29, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %36, %32
  %38 = getelementptr i8, ptr %29, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = or i32 %37, %41
  %43 = getelementptr i8, ptr %29, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  %47 = add i32 %46, %8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  store i32 %48, ptr %29, align 4
  br label %49

49:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %8 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6) #6
  store ptr %11, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, ptr %6, align 4
  br label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.fdt_property, ptr %11, i32 0, i32 3
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %17, 3
  %19 = and i32 %18, -4
  %20 = add i32 %3, 3
  %21 = and i32 %20, -4
  %22 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %16, i32 noundef %19, i32 noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 @llvm.bswap.i32(i32 %3) #7
  %26 = getelementptr inbounds %struct.fdt_property, ptr %11, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %37

27:                                               ; preds = %15, %13
  %28 = phi i32 [ %14, %13 ], [ %22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7) #5
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ %28, %27 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load ptr, ptr %7, align 4
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi ptr [ %36, %35 ], [ %11, %24 ]
  %39 = getelementptr inbounds %struct.fdt_property, ptr %38, i32 0, i32 3
  store ptr %39, ptr %4, align 4
  br label %40

40:                                               ; preds = %37, %32, %5
  %41 = phi i32 [ 0, %37 ], [ %8, %5 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %163, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr i8, ptr %0, i32 %26
  %28 = tail call i32 @strlen(ptr noundef %2) #6
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr i8, ptr %30, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr i8, ptr %30, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = tail call ptr @fdt_find_string_(ptr noundef %27, i32 noundef %47, ptr noundef %2) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %8
  %51 = ptrtoint ptr %48 to i32
  %52 = ptrtoint ptr %27 to i32
  %53 = sub i32 %51, %52
  br label %106

54:                                               ; preds = %8
  %55 = load i8, ptr %30, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 %56, 24
  %58 = load i8, ptr %34, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %60, %57
  %62 = load i8, ptr %39, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %61, %64
  %66 = load i8, ptr %44, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = load i8, ptr %9, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 %70, 24
  %72 = load i8, ptr %13, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or i32 %74, %71
  %76 = load i8, ptr %18, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %75, %78
  %80 = load i8, ptr %23, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = getelementptr i8, ptr %0, i32 %82
  %84 = getelementptr i8, ptr %83, i32 %68
  %85 = tail call fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %84, i32 noundef 0, i32 noundef %29) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %54
  %88 = getelementptr i8, ptr %27, i32 %68
  %89 = load i8, ptr %30, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 %90, 24
  %92 = load i8, ptr %34, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %94, %91
  %96 = load i8, ptr %39, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or i32 %95, %98
  %100 = load i8, ptr %44, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %99, %101
  %103 = add i32 %102, %29
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #7
  store i32 %104, ptr %30, align 4
  %105 = tail call ptr @memcpy(ptr noundef %88, ptr noundef %2, i32 noundef %29) #6
  br label %106

106:                                              ; preds = %87, %54, %50
  %107 = phi i1 [ true, %50 ], [ true, %54 ], [ false, %87 ]
  %108 = phi i32 [ %53, %50 ], [ %85, %54 ], [ %68, %87 ]
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %163, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = getelementptr i8, ptr %111, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or i32 %118, %114
  %120 = getelementptr i8, ptr %111, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = or i32 %119, %123
  %125 = getelementptr i8, ptr %111, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %124, %127
  %129 = getelementptr i8, ptr %0, i32 %128
  %130 = getelementptr i8, ptr %129, i32 %6
  store ptr %130, ptr %4, align 4
  %131 = add i32 %3, 15
  %132 = and i32 %131, -4
  %133 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %130, i32 noundef 0, i32 noundef %132) #5
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %110
  br i1 %107, label %163, label %136

136:                                              ; preds = %135
  %137 = tail call i32 @strlen(ptr noundef %2) #6
  %138 = xor i32 %137, -1
  %139 = load i8, ptr %30, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw i32 %140, 24
  %142 = load i8, ptr %34, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 16
  %145 = or i32 %144, %141
  %146 = load i8, ptr %39, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 8
  %149 = or i32 %145, %148
  %150 = load i8, ptr %44, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %149, %151
  %153 = add i32 %152, %138
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #7
  store i32 %154, ptr %30, align 4
  br label %163

155:                                              ; preds = %110
  %156 = load ptr, ptr %4, align 4
  store i32 50331648, ptr %156, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %108)
  %158 = load ptr, ptr %4, align 4
  %159 = getelementptr inbounds %struct.fdt_property, ptr %158, i32 0, i32 2
  store i32 %157, ptr %159, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %3)
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr inbounds %struct.fdt_property, ptr %161, i32 0, i32 1
  store i32 %160, ptr %162, align 4
  br label %163

163:                                              ; preds = %155, %136, %135, %106, %5
  %164 = phi i32 [ 0, %155 ], [ %6, %5 ], [ %108, %106 ], [ %133, %136 ], [ %133, %135 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_setprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr null, ptr %6, align 4, !annotation !9
  %7 = call i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6) #5
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %4, 0
  %10 = or i1 %9, %8
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = tail call ptr @memcpy(ptr noundef %12, ptr noundef %3, i32 noundef %4) #6
  br label %14

14:                                               ; preds = %11, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_appendprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #6
  store ptr %11, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, %4
  %16 = getelementptr inbounds %struct.fdt_property, ptr %11, i32 0, i32 3
  %17 = add i32 %14, 3
  %18 = and i32 %17, -4
  %19 = add i32 %15, 3
  %20 = and i32 %19, -4
  %21 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %16, i32 noundef %18, i32 noundef %20) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = call i32 @llvm.bswap.i32(i32 %15)
  %25 = getelementptr inbounds %struct.fdt_property, ptr %11, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %7, align 4
  %27 = getelementptr i8, ptr %16, i32 %26
  br label %34

28:                                               ; preds = %10
  %29 = call fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.fdt_property, ptr %32, i32 0, i32 3
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi ptr [ %27, %23 ], [ %33, %31 ]
  %36 = call ptr @memcpy(ptr noundef %35, ptr noundef %3, i32 noundef %4) #6
  br label %37

37:                                               ; preds = %34, %28, %13, %5
  %38 = phi i32 [ %8, %5 ], [ %21, %13 ], [ %29, %28 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_delprop(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = call ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #6
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr %4, align 4
  br i1 %9, label %15, label %11

11:                                               ; preds = %7
  %12 = add i32 %10, 15
  %13 = and i32 %12, -4
  %14 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %13, i32 noundef 0) #5
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = phi i32 [ %14, %11 ], [ %5, %3 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #6
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %53, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, -1
  br i1 %12, label %13, label %53

13:                                               ; preds = %11
  %14 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #6
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %53

16:                                               ; preds = %16, %13
  %17 = load i32, ptr %5, align 4
  %18 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %5) #6
  %19 = add i32 %18, -3
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %16, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr i8, ptr %22, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  %31 = getelementptr i8, ptr %22, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %30, %34
  %36 = getelementptr i8, ptr %22, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = getelementptr i8, ptr %0, i32 %39
  %41 = getelementptr i8, ptr %40, i32 %17
  %42 = add i32 %3, 4
  %43 = and i32 %42, -4
  %44 = add i32 %43, 8
  %45 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %41, i32 noundef 0, i32 noundef %44) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %21
  store i32 16777216, ptr %41, align 4
  %48 = getelementptr inbounds %struct.fdt_node_header, ptr %41, i32 0, i32 1
  %49 = call ptr @memset(ptr noundef %48, i32 noundef 0, i32 noundef %43) #6
  %50 = call ptr @memcpy(ptr noundef %48, ptr noundef %2, i32 noundef %3) #6
  %51 = getelementptr i8, ptr %41, i32 %44
  %52 = getelementptr i8, ptr %51, i32 -4
  store i32 33554432, ptr %52, align 4
  br label %53

53:                                               ; preds = %47, %21, %13, %11, %8, %4
  %54 = phi i32 [ %17, %47 ], [ %6, %4 ], [ -2, %8 ], [ %9, %11 ], [ -13, %13 ], [ %45, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_add_subnode(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #6
  %5 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_del_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = tail call i32 @fdt_node_end_offset_(ptr noundef %0, i32 noundef %1) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr i8, ptr %0, i32 %26
  %28 = getelementptr i8, ptr %27, i32 %1
  %29 = sub i32 %6, %1
  %30 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %28, i32 noundef %29, i32 noundef 0) #5
  br label %31

31:                                               ; preds = %8, %5, %2
  %32 = phi i32 [ %30, %8 ], [ %3, %2 ], [ %6, %5 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_open_into(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = getelementptr i8, ptr %0, i32 %22
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %151, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #6
  %28 = shl i32 %27, 4
  %29 = add i32 %28, 16
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr i8, ptr %30, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr i8, ptr %30, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = icmp ugt i32 %47, 16
  br i1 %48, label %49, label %68

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr i8, ptr %50, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %53
  %59 = getelementptr i8, ptr %50, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %58, %62
  %64 = getelementptr i8, ptr %50, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  store i32 %67, ptr %4, align 4
  br label %78

68:                                               ; preds = %26
  %69 = icmp eq i32 %47, 16
  br i1 %69, label %70, label %151

70:                                               ; preds = %68
  store i32 0, ptr %4, align 4
  br label %71

71:                                               ; preds = %71, %70
  %72 = phi i32 [ 0, %70 ], [ %75, %71 ]
  %73 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %72, ptr noundef nonnull %4) #6
  %74 = icmp eq i32 %73, 9
  %75 = load i32, ptr %4, align 4
  br i1 %74, label %76, label %71

76:                                               ; preds = %71
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %151, label %78

78:                                               ; preds = %76, %49
  %79 = phi i32 [ %75, %76 ], [ %67, %49 ]
  %80 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef %29, i32 noundef %79) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 @fdt_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 5
  store i32 285212672, ptr %86, align 4
  %87 = load i32, ptr %4, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #7
  %89 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 9
  store i32 %88, ptr %89, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %2) #7
  %91 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  store i32 %90, ptr %91, align 4
  br label %151

92:                                               ; preds = %78
  %93 = add i32 %28, 56
  %94 = add i32 %93, %79
  %95 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr i8, ptr %95, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = getelementptr i8, ptr %95, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %103, %107
  %109 = getelementptr i8, ptr %95, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = add i32 %94, %112
  %114 = icmp sgt i32 %113, %2
  br i1 %114, label %151, label %115

115:                                              ; preds = %92
  %116 = getelementptr i8, ptr %1, i32 %113
  %117 = icmp ugt ptr %116, %0
  %118 = icmp ugt ptr %23, %1
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = getelementptr i8, ptr %23, i32 %113
  %122 = getelementptr i8, ptr %1, i32 %2
  %123 = icmp ugt ptr %121, %122
  br i1 %123, label %151, label %124

124:                                              ; preds = %120, %115
  %125 = phi ptr [ %23, %120 ], [ %1, %115 ]
  call fastcc void @fdt_packblocks_(ptr noundef %0, ptr noundef %125, i32 noundef %29, i32 noundef %79, i32 noundef %112) #5
  %126 = call ptr @memmove(ptr noundef %1, ptr noundef %125, i32 noundef %113) #6
  store i32 -302117424, ptr %1, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %2) #7
  %128 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 5
  store i32 285212672, ptr %129, align 4
  %130 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 6
  store i32 268435456, ptr %130, align 4
  %131 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 7
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw i32 %133, 24
  %135 = getelementptr i8, ptr %131, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 16
  %139 = or i32 %138, %134
  %140 = getelementptr i8, ptr %131, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 8
  %144 = or i32 %139, %143
  %145 = getelementptr i8, ptr %131, i32 3
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %144, %147
  %149 = call i32 @llvm.bswap.i32(i32 %148) #7
  %150 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 7
  store i32 %149, ptr %150, align 4
  br label %151

151:                                              ; preds = %124, %120, %92, %85, %82, %76, %68, %3
  %152 = phi i32 [ 0, %85 ], [ 0, %124 ], [ %24, %3 ], [ %75, %76 ], [ -10, %68 ], [ %83, %82 ], [ -3, %92 ], [ -3, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync)
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr i8, ptr %4, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr i8, ptr %4, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp ult i32 %21, 40
  br i1 %22, label %105, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr i8, ptr %24, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %27
  %33 = getelementptr i8, ptr %24, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = getelementptr i8, ptr %24, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = add i32 %21, %1
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %105, label %44

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = getelementptr i8, ptr %45, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = getelementptr i8, ptr %45, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %53, %57
  %59 = getelementptr i8, ptr %45, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = add i32 %41, %2
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %105, label %65

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr i8, ptr %66, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr i8, ptr %66, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr i8, ptr %66, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = getelementptr i8, ptr %84, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr i8, ptr %84, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr i8, ptr %84, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = add i32 %101, %62
  %103 = icmp ult i32 %83, %102
  %104 = zext i1 %103 to i32
  br label %105

105:                                              ; preds = %65, %44, %23, %3
  %106 = phi i32 [ 1, %44 ], [ 1, %23 ], [ 1, %3 ], [ %104, %65 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc void @fdt_packblocks_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add i32 %2, 40
  %7 = add i32 %6, %3
  %8 = getelementptr i8, ptr %1, i32 40
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr i8, ptr %0, i32 %26
  %28 = tail call ptr @memmove(ptr noundef %8, ptr noundef %27, i32 noundef %2) #6
  %29 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 4
  store i32 671088640, ptr %29, align 4
  %30 = getelementptr i8, ptr %1, i32 %6
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr i8, ptr %31, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr i8, ptr %31, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = getelementptr i8, ptr %0, i32 %48
  %50 = tail call ptr @memmove(ptr noundef %30, ptr noundef %49, i32 noundef %3) #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %52 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %54 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 9
  store i32 %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %1, i32 %7
  %56 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr i8, ptr %56, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr i8, ptr %56, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr i8, ptr %56, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = getelementptr i8, ptr %0, i32 %73
  %75 = tail call ptr @memmove(ptr noundef %55, ptr noundef %74, i32 noundef %4) #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %77 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 3
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 %80, 24
  %82 = getelementptr i8, ptr %78, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or i32 %85, %81
  %87 = getelementptr i8, ptr %78, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %86, %90
  %92 = getelementptr i8, ptr %78, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %91, %94
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %97 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 8
  store i32 %96, ptr %97, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_pack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @fdt_rw_probe_(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %79

4:                                                ; preds = %1
  %5 = tail call i32 @fdt_num_mem_rsv(ptr noundef %0) #6
  %6 = shl i32 %5, 4
  %7 = add i32 %6, 16
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr i8, ptr %8, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr i8, ptr %8, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr i8, ptr %26, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %29
  %35 = getelementptr i8, ptr %26, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %34, %38
  %40 = getelementptr i8, ptr %26, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  tail call fastcc void @fdt_packblocks_(ptr noundef %0, ptr noundef %0, i32 noundef %7, i32 noundef %25, i32 noundef %43) #5
  %44 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 %46, 24
  %48 = getelementptr i8, ptr %44, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 16
  %52 = or i32 %51, %47
  %53 = getelementptr i8, ptr %44, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = or i32 %52, %56
  %58 = getelementptr i8, ptr %44, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %57, %60
  %62 = load i8, ptr %26, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 %63, 24
  %65 = load i8, ptr %30, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %67, %64
  %69 = load i8, ptr %35, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or i32 %68, %71
  %73 = load i8, ptr %40, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %72, %74
  %76 = add i32 %75, %61
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  %78 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_splice_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr i8, ptr %23, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr i8, ptr %23, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr i8, ptr %23, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = add i32 %40, %22
  %42 = icmp slt i32 %2, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %4
  %44 = ptrtoint ptr %1 to i32
  %45 = ptrtoint ptr %0 to i32
  %46 = sub i32 %44, %45
  %47 = add i32 %46, %2
  %48 = icmp ult i32 %47, %46
  %49 = icmp ugt i32 %47, %41
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %86, label %51

51:                                               ; preds = %43
  %52 = icmp ult ptr %1, %0
  %53 = add i32 %41, %3
  %54 = icmp ult i32 %53, %2
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %86, label %56

56:                                               ; preds = %51
  %57 = sub i32 %3, %2
  %58 = add i32 %57, %41
  %59 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 %61, 24
  %63 = getelementptr i8, ptr %59, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = or i32 %66, %62
  %68 = getelementptr i8, ptr %59, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or i32 %67, %71
  %73 = getelementptr i8, ptr %59, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %72, %75
  %77 = icmp ugt i32 %58, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %56
  %79 = getelementptr i8, ptr %1, i32 %3
  %80 = getelementptr i8, ptr %1, i32 %2
  %81 = getelementptr i8, ptr %0, i32 %41
  %82 = ptrtoint ptr %81 to i32
  %83 = ptrtoint ptr %80 to i32
  %84 = sub i32 %82, %83
  %85 = tail call ptr @memmove(ptr noundef %79, ptr noundef %80, i32 noundef %84) #6
  br label %86

86:                                               ; preds = %78, %56, %51, %43, %4
  %87 = phi i32 [ 0, %78 ], [ -4, %43 ], [ -4, %4 ], [ -4, %51 ], [ -3, %56 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nobuiltin optsize "no-builtins" }
attributes #6 = { nobuiltin nounwind optsize "no-builtins" }
attributes #7 = { nounwind }

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
