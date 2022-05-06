; ModuleID = '/llk/IR/drivers/clk/at91/clk-programmable.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-programmable.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_programmable = type { %struct.clk_hw, ptr, ptr, i8, ptr, %struct.at91_clk_pms }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@programmable_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_programmable_save_context, ptr @clk_programmable_restore_context, ptr @clk_programmable_recalc_rate, ptr null, ptr @clk_programmable_determine_rate, ptr @clk_programmable_set_parent, ptr @clk_programmable_get_parent, ptr @clk_programmable_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91rm9200_programmable_layout = dso_local local_unnamed_addr constant %struct.clk_programmable_layout { i8 7, i8 2, i8 3, i8 0, i8 0 }, align 1
@at91sam9g45_programmable_layout = dso_local local_unnamed_addr constant %struct.clk_programmable_layout { i8 7, i8 2, i8 3, i8 1, i8 0 }, align 1
@at91sam9x5_programmable_layout = dso_local local_unnamed_addr constant %struct.clk_programmable_layout { i8 7, i8 4, i8 7, i8 0, i8 0 }, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_programmable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 section ".init.text" {
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #7
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp ugt i8 %4, 7
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 44) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  store ptr %1, ptr %8, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @programmable_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 2
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_programmable, ptr %13, i32 0, i32 3
  store i8 %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_programmable, ptr %13, i32 0, i32 4
  store ptr %5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %8, ptr %22, align 8
  %23 = getelementptr inbounds %struct.clk_programmable, ptr %13, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_programmable, ptr %13, i32 0, i32 2
  store ptr %6, ptr %24, align 8
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %13) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #7
  %28 = inttoptr i32 %25 to ptr
  br label %29

29:                                               ; preds = %27, %15, %11, %7
  %30 = phi ptr [ %28, %27 ], [ %13, %15 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #7
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_programmable_save_context(ptr noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = add nuw nsw i32 %12, 64
  %14 = call i32 @regmap_read(ptr noundef %8, i32 noundef %13, ptr noundef nonnull %3) #7
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr inbounds %struct.clk_programmable_layout, ptr %6, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = trunc i32 %15 to i8
  %19 = and i8 %17, %18
  %20 = getelementptr inbounds %struct.clk_programmable_layout, ptr %6, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = and i32 %15, 256
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne i8 %19, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = select i1 %27, i8 %19, i8 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i8 [ %28, %23 ], [ %19, %1 ]
  %31 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = zext i8 %30 to i32
  %36 = call i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef nonnull %32, i32 noundef 0, i32 noundef %35) #7
  %37 = trunc i32 %36 to i8
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i8 [ %37, %34 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5, i32 3
  store i32 %40, ptr %41, align 4
  %42 = call i32 @clk_hw_get_rate(ptr noundef %4) #7
  %43 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %45 = load ptr, ptr %7, align 4
  %46 = load i8, ptr %9, align 4
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %48, 64
  %50 = call i32 @regmap_read(ptr noundef %45, i32 noundef %49, ptr noundef nonnull %2) #7
  %51 = getelementptr inbounds %struct.clk_programmable_layout, ptr %44, i32 0, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  %54 = load i32, ptr %2, align 4
  %55 = getelementptr inbounds %struct.clk_programmable_layout, ptr %44, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = lshr i32 %54, %57
  %59 = load i8, ptr %44, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  br i1 %53, label %65, label %62

62:                                               ; preds = %38
  %63 = add nuw nsw i32 %61, 1
  %64 = udiv i32 %42, %63
  br label %67

65:                                               ; preds = %38
  %66 = lshr i32 %42, %61
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  store i32 %68, ptr %69, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_programmable_restore_context(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_programmable_layout, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %3, 255
  %11 = getelementptr inbounds %struct.clk_programmable_layout, ptr %6, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = or i32 %9, 256
  %15 = select i1 %13, i32 %9, i32 %14
  %16 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %17, i32 noundef 0, i8 noundef zeroext %4) #7
  %21 = load i8, ptr %7, align 1
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i8 [ %21, %19 ], [ %8, %1 ]
  %24 = phi i32 [ %20, %19 ], [ %10, %1 ]
  %25 = icmp ult i8 %23, %4
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = icmp ugt i8 %4, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8, ptr %11, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %82, label %31

31:                                               ; preds = %28, %26
  %32 = or i32 %24, 256
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ %32, %31 ], [ %24, %22 ]
  %35 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 2
  %41 = add nuw nsw i32 %40, 64
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %41, i32 noundef %15, i32 noundef %34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %43 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 5, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = udiv i32 %46, %44
  %49 = icmp ugt i32 %44, %46
  br i1 %49, label %82, label %50

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.clk_programmable_layout, ptr %47, i32 0, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = add i32 %48, -1
  %56 = load i8, ptr %47, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %82, label %68

59:                                               ; preds = %50
  %60 = tail call i32 @llvm.ctlz.i32(i32 %48, i1 false) #7, !range !9
  %61 = lshr i32 -2147483648, %60
  %62 = icmp eq i32 %48, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = sub nsw i32 31, %60
  %65 = load i8, ptr %47, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %63, %54
  %69 = phi i32 [ %66, %63 ], [ %57, %54 ]
  %70 = phi i32 [ %64, %63 ], [ %55, %54 ]
  %71 = load ptr, ptr %35, align 4
  %72 = load i8, ptr %37, align 4
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 2
  %75 = add nuw nsw i32 %74, 64
  %76 = getelementptr inbounds %struct.clk_programmable_layout, ptr %47, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %69, %78
  %80 = shl i32 %70, %78
  %81 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %75, i32 noundef %79, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %82

82:                                               ; preds = %68, %63, %59, %54, %33, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_programmable_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 2
  %12 = add nuw nsw i32 %11, 64
  %13 = call i32 @regmap_read(ptr noundef %7, i32 noundef %12, ptr noundef nonnull %3) #7
  %14 = getelementptr inbounds %struct.clk_programmable_layout, ptr %5, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = load i32, ptr %3, align 4
  %18 = getelementptr inbounds %struct.clk_programmable_layout, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %17, %20
  %22 = load i8, ptr %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  br i1 %16, label %28, label %25

25:                                               ; preds = %2
  %26 = add nuw nsw i32 %24, 1
  %27 = udiv i32 %1, %26
  br label %30

28:                                               ; preds = %2
  %29 = lshr i32 %1, %24
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_programmable_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_programmable_layout, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %11

11:                                               ; preds = %56, %7
  %12 = phi i32 [ 0, %7 ], [ %59, %56 ]
  %13 = phi i32 [ 0, %7 ], [ %58, %56 ]
  %14 = phi i32 [ -22, %7 ], [ %57, %56 ]
  %15 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %12) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %15) #7
  %19 = load i8, ptr %8, align 1
  %20 = icmp eq i8 %19, 0
  %21 = load i8, ptr %4, align 1
  %22 = zext i8 %21 to i32
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %1, align 4
  br label %28

25:                                               ; preds = %17
  %26 = icmp eq i8 %21, 0
  %27 = load i32, ptr %1, align 4
  br i1 %26, label %42, label %35

28:                                               ; preds = %28, %23
  %29 = phi i32 [ 0, %23 ], [ %30, %28 ]
  %30 = add nuw nsw i32 %29, 1
  %31 = udiv i32 %18, %30
  %32 = icmp ule i32 %31, %24
  %33 = icmp uge i32 %29, %22
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %42, label %28

35:                                               ; preds = %35, %25
  %36 = phi i32 [ %39, %35 ], [ 0, %25 ]
  %37 = lshr i32 %18, %36
  %38 = icmp ugt i32 %37, %27
  %39 = add nuw nsw i32 %36, 1
  %40 = icmp ult i32 %39, %22
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %28, %25
  %43 = phi i32 [ %27, %25 ], [ %27, %35 ], [ %24, %28 ]
  %44 = phi i32 [ %13, %25 ], [ %37, %35 ], [ %31, %28 ]
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = icmp slt i32 %14, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = sub i32 %43, %44
  %50 = sub i32 %43, %14
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %46
  store i32 %18, ptr %9, align 4
  store ptr %15, ptr %10, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %44, %52 ], [ %14, %48 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %42, %11
  %57 = phi i32 [ %14, %42 ], [ %54, %53 ], [ %14, %11 ]
  %58 = phi i32 [ %44, %42 ], [ %44, %53 ], [ %13, %11 ]
  %59 = add nuw i32 %12, 1
  %60 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %11, label %62

62:                                               ; preds = %56
  %63 = icmp slt i32 %57, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62, %53
  %65 = phi i32 [ %57, %62 ], [ 0, %53 ]
  store i32 %65, ptr %1, align 4
  br label %66

66:                                               ; preds = %64, %62, %2
  %67 = phi i32 [ 0, %64 ], [ %57, %62 ], [ -22, %2 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_programmable_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_programmable_layout, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i8 %1 to i32
  %9 = getelementptr inbounds %struct.clk_programmable_layout, ptr %4, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  %12 = or i32 %7, 256
  %13 = select i1 %11, i32 %7, i32 %12
  %14 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %15, i32 noundef 0, i8 noundef zeroext %1) #7
  %19 = load i8, ptr %5, align 1
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i8 [ %19, %17 ], [ %6, %2 ]
  %22 = phi i32 [ %18, %17 ], [ %8, %2 ]
  %23 = icmp ult i8 %21, %1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = icmp ugt i8 %1, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8, ptr %9, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26, %24
  %30 = or i32 %22, 256
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %22, %20 ]
  %33 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 2
  %39 = add nuw nsw i32 %38, 64
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %39, i32 noundef %13, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %41

41:                                               ; preds = %31, %26
  %42 = phi i32 [ 0, %31 ], [ -22, %26 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_programmable_get_parent(ptr noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = add nuw nsw i32 %10, 64
  %12 = call i32 @regmap_read(ptr noundef %6, i32 noundef %11, ptr noundef nonnull %2) #7
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr inbounds %struct.clk_programmable_layout, ptr %4, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = trunc i32 %13 to i8
  %17 = and i8 %15, %16
  %18 = getelementptr inbounds %struct.clk_programmable_layout, ptr %4, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = and i32 %13, 256
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne i8 %17, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = select i1 %25, i8 %17, i8 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi i8 [ %26, %21 ], [ %17, %1 ]
  %29 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = zext i8 %28 to i32
  %34 = call i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 0, i32 noundef %33) #7
  %35 = trunc i32 %34 to i8
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i8 [ %35, %32 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_programmable_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = udiv i32 %2, %1
  %7 = icmp ugt i32 %1, %2
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_programmable_layout, ptr %5, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = add i32 %6, -1
  %14 = load i8, ptr %5, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %42, label %26

17:                                               ; preds = %8
  %18 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #7, !range !9
  %19 = lshr i32 -2147483648, %18
  %20 = icmp eq i32 %6, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = sub nsw i32 31, %18
  %23 = load i8, ptr %5, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21, %12
  %27 = phi i32 [ %24, %21 ], [ %15, %12 ]
  %28 = phi i32 [ %22, %21 ], [ %13, %12 ]
  %29 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.clk_programmable, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 2
  %35 = add nuw nsw i32 %34, 64
  %36 = getelementptr inbounds %struct.clk_programmable_layout, ptr %5, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %27, %38
  %40 = shl i32 %28, %38
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %35, i32 noundef %39, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %42

42:                                               ; preds = %26, %21, %17, %12, %3
  %43 = phi i32 [ 0, %26 ], [ -22, %3 ], [ -22, %12 ], [ -22, %17 ], [ -22, %21 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
