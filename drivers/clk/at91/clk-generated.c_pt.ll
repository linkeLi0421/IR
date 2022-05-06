; ModuleID = '/llk/IR/drivers/clk/at91/clk-generated.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-generated.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_generated = type { %struct.clk_hw, ptr, %struct.clk_range, ptr, ptr, i32, i32, ptr, %struct.at91_clk_pms, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_range = type { i32, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@generated_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_generated_enable, ptr @clk_generated_disable, ptr @clk_generated_is_enabled, ptr null, ptr @clk_generated_save_context, ptr @clk_generated_restore_context, ptr @clk_generated_recalc_rate, ptr null, ptr @clk_generated_determine_rate, ptr @clk_generated_set_parent, ptr @clk_generated_get_parent, ptr @clk_generated_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_generated(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr nocapture noundef readonly %8, i32 noundef %9) local_unnamed_addr #0 section ".init.text" {
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #10
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false), !annotation !8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 68) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %10
  store ptr %3, ptr %12, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr @generated_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  %22 = icmp sgt i32 %9, -1
  %23 = select i1 %22, i32 7, i32 3
  store i32 %23, ptr %21, align 4
  %24 = zext i8 %7 to i32
  %25 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %12, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 1
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 3
  store ptr %1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 2
  %30 = load i64, ptr %8, align 4
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 10
  store i32 %9, ptr %31, align 8
  %32 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 7
  store ptr %2, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 4
  store ptr %5, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !annotation !8
  %34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %35 = load i32, ptr %2, align 4
  %36 = getelementptr inbounds %struct.clk_pcr_layout, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %24
  %39 = call i32 @regmap_write(ptr noundef %0, i32 noundef %35, i32 noundef %38) #10
  %40 = load i32, ptr %2, align 4
  %41 = call i32 @regmap_read(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %11) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %34) #10
  %42 = load i32, ptr %11, align 4
  %43 = getelementptr inbounds %struct.clk_pcr_layout, ptr %2, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %42
  %46 = call i32 @llvm.cttz.i32(i32 %44, i1 true) #10, !range !9
  %47 = icmp eq i32 %44, 0
  %48 = select i1 %47, i32 -1, i32 %46
  %49 = lshr i32 %45, %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 9
  store i8 %50, ptr %51, align 4
  %52 = lshr i32 %42, 20
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds %struct.clk_generated, ptr %15, i32 0, i32 6
  store i32 %53, ptr %54, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %55 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %15) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #10
  %58 = inttoptr i32 %55 to ptr
  br label %59

59:                                               ; preds = %57, %17, %10
  %60 = phi ptr [ %58, %57 ], [ %15, %17 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #10
  ret ptr %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_generated_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_pcr_layout, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %9, i32 noundef %14) #10
  %16 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 9
  %19 = load i8, ptr %18, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.clk_pcr_layout, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.clk_pcr_layout, ptr %20, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %20, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = zext i8 %19 to i32
  %28 = icmp eq i32 %24, 0
  %29 = tail call i32 @llvm.cttz.i32(i32 %24, i1 true) #10, !range !9
  %30 = select i1 %28, i32 -1, i32 %29
  %31 = shl i32 %27, %30
  %32 = and i32 %31, %24
  %33 = or i32 %22, %24
  %34 = or i32 %33, 804257792
  %35 = shl i32 %17, 20
  %36 = and i32 %35, 267386880
  %37 = or i32 %36, %22
  %38 = or i32 %37, %32
  %39 = or i32 %38, 536870912
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %25, i32 noundef %34, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %41 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_generated_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_pcr_layout, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  %15 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %9, i32 noundef %14) #10
  %16 = load ptr, ptr %5, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.clk_pcr_layout, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 536870912
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %23 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_generated_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_pcr_layout, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %10, i32 noundef %15) #10
  %17 = load ptr, ptr %6, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %2) #10
  %21 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %5) #10
  %22 = load i32, ptr %2, align 4
  %23 = lshr i32 %22, 29
  %24 = and i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_generated_save_context(ptr nocapture noundef %0) #6 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_pcr_layout, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %10, i32 noundef %15) #10
  %17 = load ptr, ptr %6, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %2) #10
  %21 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %5) #10
  %22 = load i32, ptr %2, align 4
  %23 = lshr i32 %22, 29
  %24 = and i32 %23, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %25 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 8, i32 2
  store i32 %24, ptr %25, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_generated_restore_context(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 8, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_pcr_layout, ptr %12, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %13, i32 noundef %18) #10
  %20 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 9
  %23 = load i8, ptr %22, align 4
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.clk_pcr_layout, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.clk_pcr_layout, ptr %24, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %24, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = zext i8 %23 to i32
  %32 = icmp eq i32 %28, 0
  %33 = tail call i32 @llvm.cttz.i32(i32 %28, i1 true) #10, !range !9
  %34 = select i1 %32, i32 -1, i32 %33
  %35 = shl i32 %31, %34
  %36 = and i32 %35, %28
  %37 = or i32 %26, %28
  %38 = or i32 %37, 804257792
  %39 = shl i32 %21, 20
  %40 = and i32 %39, 267386880
  %41 = or i32 %40, %26
  %42 = or i32 %41, %36
  %43 = or i32 %42, 536870912
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %29, i32 noundef %38, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %45 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %8) #10
  br label %46

46:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_generated_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  %6 = lshr i32 %5, 1
  %7 = add i32 %6, %1
  %8 = udiv i32 %7, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_generated_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp ugt i32 %9, %6
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 %6, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 4
  %17 = icmp ult i32 %16, %13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %13, ptr %1, align 4
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 10
  %24 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %25 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %26

26:                                               ; preds = %66, %22
  %27 = phi i32 [ 0, %22 ], [ %69, %66 ]
  %28 = phi i32 [ -1, %22 ], [ %68, %66 ]
  %29 = phi i32 [ -22, %22 ], [ %67, %66 ]
  %30 = load i32, ptr %23, align 4
  %31 = icmp eq i32 %30, %27
  br i1 %31, label %66, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %27) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %33) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = add i32 %36, 128
  %40 = lshr i32 %39, 8
  %41 = load i32, ptr %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = icmp ugt i32 %40, %41
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %66, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr %1, align 4
  %47 = lshr i32 %46, 1
  %48 = add i32 %47, %36
  %49 = udiv i32 %48, %46
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 256)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = udiv i32 %36, %50
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi i32 [ %53, %52 ], [ %36, %45 ]
  %56 = sub i32 %46, %55
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 false) #10
  %58 = icmp sgt i32 %28, -1
  %59 = icmp slt i32 %28, %57
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 %36, ptr %24, align 4
  store ptr %33, ptr %25, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %29, %54 ], [ %55, %61 ]
  %64 = phi i32 [ %28, %54 ], [ %57, %61 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %38, %35, %32, %26
  %67 = phi i32 [ %29, %26 ], [ %29, %32 ], [ %29, %35 ], [ %29, %38 ], [ %63, %62 ]
  %68 = phi i32 [ %28, %26 ], [ %28, %32 ], [ %28, %35 ], [ %28, %38 ], [ %64, %62 ]
  %69 = add nuw i32 %27, 1
  %70 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #10
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %26, label %72

72:                                               ; preds = %66, %62, %19
  %73 = phi i32 [ -22, %19 ], [ %63, %62 ], [ %67, %66 ]
  %74 = phi i32 [ -1, %19 ], [ 0, %62 ], [ %68, %66 ]
  %75 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %76) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %111, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %83 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  br label %84

84:                                               ; preds = %106, %81
  %85 = phi i32 [ 1, %81 ], [ %109, %106 ]
  %86 = phi i32 [ %74, %81 ], [ %108, %106 ]
  %87 = phi i32 [ %73, %81 ], [ %107, %106 ]
  %88 = load i32, ptr %1, align 4
  %89 = mul i32 %88, %85
  store i32 %89, ptr %3, align 4
  %90 = call i32 @__clk_determine_rate(ptr noundef nonnull %79, ptr noundef nonnull %3) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %84
  %93 = load i32, ptr %3, align 4
  %94 = udiv i32 %93, %85
  %95 = load i32, ptr %1, align 4
  %96 = sub i32 %95, %94
  %97 = call i32 @llvm.abs.i32(i32 %96, i1 false) #10
  %98 = icmp sgt i32 %86, -1
  %99 = icmp slt i32 %86, %97
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  store i32 %93, ptr %82, align 4
  store ptr %79, ptr %83, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = phi i32 [ %87, %92 ], [ %94, %101 ]
  %104 = phi i32 [ %86, %92 ], [ %97, %101 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102, %84
  %107 = phi i32 [ %103, %102 ], [ %87, %84 ]
  %108 = phi i32 [ %104, %102 ], [ %86, %84 ]
  %109 = add nuw nsw i32 %85, 1
  %110 = icmp eq i32 %109, 257
  br i1 %110, label %111, label %84

111:                                              ; preds = %106, %102, %78, %72
  %112 = phi i32 [ %73, %72 ], [ %73, %78 ], [ %107, %106 ], [ %103, %102 ]
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %5, align 4
  %116 = icmp ne i32 %115, 0
  %117 = icmp ugt i32 %112, %115
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i32 %112, ptr %1, align 4
  br label %120

120:                                              ; preds = %119, %114, %111
  %121 = phi i32 [ 0, %119 ], [ -22, %114 ], [ -22, %111 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_generated_set_parent(ptr noundef %0, i8 noundef zeroext %1) #6 {
  %3 = zext i8 %1 to i32
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #10
  %5 = icmp ugt i32 %4, %3
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %8, i32 noundef 0, i8 noundef zeroext %1) #10
  %12 = trunc i32 %11 to i8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i8 [ %12, %10 ], [ %1, %6 ]
  %15 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 9
  store i8 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ -22, %2 ], [ 0, %13 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clk_generated_get_parent(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  ret i8 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @clk_generated_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 2, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = icmp ult i32 %7, %1
  %10 = and i1 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = lshr i32 %1, 1
  %13 = add i32 %12, %2
  %14 = udiv i32 %13, %1
  %15 = icmp ult i32 %14, 257
  %16 = icmp uge i32 %13, %1
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = add nsw i32 %14, -1
  %20 = getelementptr inbounds %struct.clk_generated, ptr %0, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %11, %5, %3
  %22 = phi i32 [ 0, %18 ], [ -22, %3 ], [ -22, %5 ], [ -22, %11 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
