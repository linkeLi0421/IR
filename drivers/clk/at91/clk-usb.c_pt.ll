; ModuleID = '/llk/IR/drivers/clk/at91/clk-usb.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91sam9x5_clk_usb = type { %struct.clk_hw, ptr, %struct.at91_clk_pms, i32, i8 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.at91rm9200_clk_usb = type { %struct.clk_hw, ptr, [4 x i32] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@at91sam9n12_usb_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @at91sam9n12_clk_usb_enable, ptr @at91sam9n12_clk_usb_disable, ptr @at91sam9n12_clk_usb_is_enabled, ptr null, ptr null, ptr null, ptr @at91sam9x5_clk_usb_recalc_rate, ptr null, ptr @at91sam9x5_clk_usb_determine_rate, ptr null, ptr null, ptr @at91sam9x5_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91rm9200_usb_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91rm9200_clk_usb_recalc_rate, ptr @at91rm9200_clk_usb_round_rate, ptr null, ptr null, ptr null, ptr @at91rm9200_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91sam9x5_usb_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91sam9x5_usb_save_context, ptr @at91sam9x5_usb_restore_context, ptr @at91sam9x5_clk_usb_recalc_rate, ptr null, ptr @at91sam9x5_clk_usb_determine_rate, ptr @at91sam9x5_clk_usb_set_parent, ptr @at91sam9x5_clk_usb_get_parent, ptr @at91sam9x5_clk_usb_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 1) #7
  ret ptr %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 40) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  store ptr %1, ptr %6, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @at91sam9x5_usb_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %16, align 8
  %17 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %9, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %9, i32 0, i32 3
  store i32 %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %9, i32 0, i32 4
  store i8 %3, ptr %19, align 4
  %20 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %9) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #8
  %23 = inttoptr i32 %20 to ptr
  br label %24

24:                                               ; preds = %22, %11, %5
  %25 = phi ptr [ %23, %22 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  ret ptr %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @sam9x60_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc ptr @_at91sam9x5_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef 3) #7
  ret ptr %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91sam9n12_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @at91sam9n12_usb_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %8, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %8) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  call void @kfree(ptr noundef nonnull %8) #8
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi ptr [ %20, %19 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  ret ptr %22
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91rm9200_clk_register_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  store ptr %1, ptr %6, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @at91rm9200_usb_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %16, align 8
  %17 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %9, i32 0, i32 1
  store ptr %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %9, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false)
  %19 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %9) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #8
  %22 = inttoptr i32 %19 to ptr
  br label %23

23:                                               ; preds = %21, %11, %4
  %24 = phi ptr [ %22, %21 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  ret ptr %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_usb_save_context(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 56, ptr noundef nonnull %3) #8
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %11 = and i32 %8, 255
  %12 = and i32 %11, %10
  %13 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2, i32 3
  store i32 %12, ptr %14, align 4
  %15 = call i32 @clk_hw_get_rate(ptr noundef %4) #8
  %16 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2, i32 1
  store i32 %15, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 56, ptr noundef nonnull %2) #8
  %19 = load i32, ptr %2, align 4
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 15
  %22 = add nuw nsw i32 %21, 1
  %23 = lshr i32 %22, 1
  %24 = add i32 %23, %15
  %25 = udiv i32 %24, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  store i32 %25, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam9x5_usb_restore_context(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, %4
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = and i32 %3, 255
  %10 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 56, i32 noundef %13, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %16, 1
  %22 = add i32 %20, %21
  %23 = udiv i32 %22, %16
  %24 = icmp ult i32 %23, 17
  %25 = icmp uge i32 %22, %16
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load ptr, ptr %10, align 4
  %29 = shl nuw nsw i32 %23, 8
  %30 = add nsw i32 %29, -256
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 56, i32 noundef 3840, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %32

32:                                               ; preds = %27, %18, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 56, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 15
  %10 = add nuw nsw i32 %9, 1
  %11 = lshr i32 %10, 1
  %12 = add i32 %11, %1
  %13 = udiv i32 %12, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %8

8:                                                ; preds = %47, %5
  %9 = phi i32 [ -22, %5 ], [ %48, %47 ]
  %10 = phi i32 [ 0, %5 ], [ %50, %47 ]
  %11 = phi i32 [ -1, %5 ], [ %49, %47 ]
  %12 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %10) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %40, %8
  %15 = phi i32 [ %41, %40 ], [ %9, %8 ]
  %16 = phi i32 [ %43, %40 ], [ 1, %8 ]
  %17 = phi i32 [ %42, %40 ], [ %11, %8 ]
  %18 = load i32, ptr %1, align 4
  %19 = mul i32 %18, %16
  %20 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %12, i32 noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %14
  %23 = lshr i32 %16, 1
  %24 = add i32 %20, %23
  %25 = udiv i32 %24, %16
  %26 = load i32, ptr %1, align 4
  %27 = icmp ult i32 %25, %26
  %28 = sub i32 %26, %25
  %29 = sub i32 %25, %26
  %30 = select i1 %27, i32 %28, i32 %29
  %31 = icmp slt i32 %17, 0
  %32 = icmp sgt i32 %17, %30
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 %20, ptr %6, align 4
  store ptr %12, ptr %7, align 4
  br label %35

35:                                               ; preds = %34, %22
  %36 = phi i32 [ %30, %34 ], [ %17, %22 ]
  %37 = phi i32 [ %25, %34 ], [ %15, %22 ]
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  br i1 %27, label %47, label %40

40:                                               ; preds = %39, %14
  %41 = phi i32 [ %37, %39 ], [ %15, %14 ]
  %42 = phi i32 [ %36, %39 ], [ %17, %14 ]
  %43 = add nuw nsw i32 %16, 1
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %45, label %14

45:                                               ; preds = %40
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %45, %39, %8
  %48 = phi i32 [ %41, %45 ], [ %9, %8 ], [ %37, %39 ]
  %49 = phi i32 [ %42, %45 ], [ %11, %8 ], [ %36, %39 ]
  %50 = add nuw i32 %10, 1
  %51 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #8
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %8, label %53

53:                                               ; preds = %47, %45, %35
  %54 = phi i32 [ %37, %35 ], [ %48, %47 ], [ %41, %45 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 %54, ptr %1, align 4
  br label %57

57:                                               ; preds = %56, %53, %2
  %58 = phi i32 [ 0, %56 ], [ %54, %53 ], [ -22, %2 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp ugt i8 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  %8 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 56, i32 noundef %11, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @at91sam9x5_clk_usb_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 56, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = trunc i32 %9 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_usb_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 1
  %7 = add i32 %6, %2
  %8 = udiv i32 %7, %1
  %9 = icmp ult i32 %8, 17
  %10 = icmp uge i32 %7, %1
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = shl nuw nsw i32 %8, 8
  %16 = add nsw i32 %15, -256
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 56, i32 noundef 3840, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %18

18:                                               ; preds = %12, %5, %3
  %19 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %5 ]
  ret i32 %19
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
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9n12_clk_usb_enable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 56, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91sam9n12_clk_usb_disable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 56, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91sam9n12_clk_usb_is_enabled(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.at91sam9x5_clk_usb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 56, ptr noundef nonnull %2) #8
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 44, ptr noundef nonnull %3) #8
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 28
  %9 = and i32 %8, 3
  %10 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = udiv i32 %1, %11
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #8
  %5 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = mul i32 %6, %1
  %10 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %9) #8
  %11 = load i32, ptr %5, align 4
  %12 = lshr i32 %11, 1
  %13 = add i32 %12, %10
  %14 = udiv i32 %13, %11
  %15 = icmp ult i32 %14, %1
  %16 = sub i32 %1, %14
  %17 = sub i32 %14, %1
  %18 = select i1 %15, i32 %16, i32 %17
  store i32 %10, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %14, %8 ], [ 0, %3 ]
  %22 = phi i32 [ %18, %8 ], [ -1, %3 ]
  %23 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = mul i32 %24, %1
  %28 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %27) #8
  %29 = load i32, ptr %23, align 4
  %30 = lshr i32 %29, 1
  %31 = add i32 %30, %28
  %32 = udiv i32 %31, %29
  %33 = icmp ult i32 %32, %1
  %34 = sub i32 %1, %32
  %35 = sub i32 %32, %1
  %36 = select i1 %33, i32 %34, i32 %35
  %37 = icmp slt i32 %22, 0
  %38 = icmp sgt i32 %22, %36
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  store i32 %28, ptr %2, align 4
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %40, %26, %20
  %43 = phi i32 [ %32, %40 ], [ %21, %20 ], [ %21, %26 ]
  %44 = phi i32 [ %36, %40 ], [ %22, %20 ], [ %22, %26 ]
  %45 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %42
  %49 = mul i32 %46, %1
  %50 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %49) #8
  %51 = load i32, ptr %45, align 4
  %52 = lshr i32 %51, 1
  %53 = add i32 %52, %50
  %54 = udiv i32 %53, %51
  %55 = icmp ult i32 %54, %1
  %56 = sub i32 %1, %54
  %57 = sub i32 %54, %1
  %58 = select i1 %55, i32 %56, i32 %57
  %59 = icmp slt i32 %44, 0
  %60 = icmp sgt i32 %44, %58
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  store i32 %50, ptr %2, align 4
  %63 = icmp eq i32 %58, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %62, %48, %42
  %65 = phi i32 [ %54, %62 ], [ %43, %42 ], [ %43, %48 ]
  %66 = phi i32 [ %58, %62 ], [ %44, %42 ], [ %44, %48 ]
  %67 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %64
  %71 = mul i32 %68, %1
  %72 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %71) #8
  %73 = load i32, ptr %67, align 4
  %74 = lshr i32 %73, 1
  %75 = add i32 %74, %72
  %76 = udiv i32 %75, %73
  %77 = icmp ult i32 %76, %1
  %78 = sub i32 %1, %76
  %79 = sub i32 %76, %1
  %80 = select i1 %77, i32 %78, i32 %79
  %81 = icmp slt i32 %66, 0
  %82 = icmp sgt i32 %66, %80
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 %72, ptr %2, align 4
  br label %85

85:                                               ; preds = %84, %70, %64, %62, %40, %8
  %86 = phi i32 [ %14, %8 ], [ %32, %40 ], [ %54, %62 ], [ %76, %84 ], [ %65, %64 ], [ %65, %70 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91rm9200_clk_usb_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 1
  %7 = add i32 %6, %2
  %8 = udiv i32 %7, %1
  %9 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %12, label %17

12:                                               ; preds = %25, %21, %17, %5
  %13 = phi i32 [ 0, %5 ], [ 268435456, %17 ], [ 536870912, %21 ], [ 805306368, %25 ]
  %14 = getelementptr inbounds %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 44, i32 noundef 805306368, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %29

17:                                               ; preds = %5
  %18 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %12, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %12, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.at91rm9200_clk_usb, ptr %0, i32 0, i32 2, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %12, label %29

29:                                               ; preds = %25, %12, %3
  %30 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %25 ]
  ret i32 %30
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
