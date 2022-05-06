; ModuleID = '/llk/IR/drivers/clk/at91/clk-peripheral.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-peripheral.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_peripheral = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sam9x5_peripheral = type { %struct.clk_hw, ptr, %struct.clk_range, ptr, i32, i32, ptr, %struct.at91_clk_pms, i8, i32 }
%struct.clk_range = type { i32, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@pmc_pcr_lock = dso_local local_unnamed_addr global %struct.spinlock zeroinitializer, align 4
@peripheral_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_peripheral_enable, ptr @clk_peripheral_disable, ptr @clk_peripheral_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x5_peripheral_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_enable, ptr @clk_sam9x5_peripheral_disable, ptr @clk_sam9x5_peripheral_is_enabled, ptr null, ptr @clk_sam9x5_peripheral_save_context, ptr @clk_sam9x5_peripheral_restore_context, ptr @clk_sam9x5_peripheral_recalc_rate, ptr @clk_sam9x5_peripheral_round_rate, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sam9x5_peripheral_chg_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_peripheral_enable, ptr @clk_sam9x5_peripheral_disable, ptr @clk_sam9x5_peripheral_is_enabled, ptr null, ptr @clk_sam9x5_peripheral_save_context, ptr @clk_sam9x5_peripheral_restore_context, ptr @clk_sam9x5_peripheral_recalc_rate, ptr null, ptr @clk_sam9x5_peripheral_determine_rate, ptr null, ptr null, ptr @clk_sam9x5_peripheral_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_peripheral(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  %11 = icmp ugt i32 %3, 31
  %12 = or i1 %10, %11
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  store ptr %1, ptr %6, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @peripheral_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_peripheral, ptr %15, i32 0, i32 2
  store i32 %3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %6, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clk_peripheral, ptr %15, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %15) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #10
  %28 = inttoptr i32 %25 to ptr
  br label %29

29:                                               ; preds = %27, %17, %13, %4
  %30 = phi ptr [ %28, %27 ], [ %15, %17 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 section ".init.text" {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.clk_init_data, align 4
  store ptr %4, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #10
  %11 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false), !annotation !8
  %12 = icmp ne ptr %3, null
  %13 = icmp ne ptr %4, null
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 64) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %70, label %19

19:                                               ; preds = %15
  store ptr %3, ptr %10, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 1, ptr %21, align 4
  %22 = icmp slt i32 %7, 0
  %23 = select i1 %22, i32 0, i32 7
  %24 = select i1 %22, ptr @sam9x5_peripheral_ops, ptr @sam9x5_peripheral_chg_ops
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 4
  store i32 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %10, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 5
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 1
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 3
  store ptr %1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.clk_pcr_layout, ptr %2, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 8
  store i8 1, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %19
  %38 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 6
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 2
  %40 = load i64, ptr %6, align 4
  store i64 %40, ptr %39, align 8
  %41 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 9
  store i32 %7, ptr %41, align 4
  %42 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %17) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  call void @kfree(ptr noundef nonnull %17) #10
  %45 = inttoptr i32 %42 to ptr
  br label %70

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 8
  %48 = load i8, ptr %47, align 8, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %17, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = call ptr @clk_hw_get_parent_by_index(ptr noundef nonnull %17, i32 noundef 0) #10
  %56 = call i32 @clk_hw_get_rate(ptr noundef %55) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %51, align 4
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = lshr i32 %56, 1
  %63 = icmp ugt i32 %62, %59
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = lshr i32 %56, 2
  %66 = icmp ugt i32 %65, %59
  %67 = select i1 %66, i32 3, i32 2
  br label %68

68:                                               ; preds = %64, %61, %58, %50
  %69 = phi i32 [ 0, %50 ], [ 0, %58 ], [ 1, %61 ], [ %67, %64 ]
  store i8 0, ptr %47, align 8
  store i32 %69, ptr %29, align 8
  br label %70

70:                                               ; preds = %68, %54, %46, %44, %15, %8
  %71 = phi ptr [ %45, %44 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %15 ], [ %17, %46 ], [ %17, %54 ], [ %17, %68 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #10
  ret ptr %71
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_peripheral_enable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp ugt i32 %3, 31
  %7 = select i1 %6, i32 256, i32 16
  %8 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %3, 31
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %7, i32 noundef %11) #10
  br label %13

13:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_peripheral_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp ugt i32 %3, 31
  %7 = select i1 %6, i32 260, i32 20
  %8 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %3, 31
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %7, i32 noundef %11) #10
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_peripheral_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = icmp ugt i32 %4, 31
  %8 = select i1 %7, i32 264, i32 24
  %9 = getelementptr inbounds %struct.clk_peripheral, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %8, ptr noundef nonnull %2) #10
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %4, 31
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 1
  br label %16

16:                                               ; preds = %6, %1
  %17 = phi i32 [ %15, %6 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_enable(ptr nocapture noundef readonly %0) #6 {
  tail call fastcc void @clk_sam9x5_peripheral_set(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sam9x5_peripheral_disable(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.clk_pcr_layout, ptr %12, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %13, i32 noundef %17) #10
  %19 = load ptr, ptr %9, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clk_pcr_layout, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 268435456
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %26 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %8) #10
  br label %27

27:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_is_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr inbounds %struct.clk_pcr_layout, ptr %13, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %14, i32 noundef %18) #10
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %12, align 4
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %2) #10
  %24 = load ptr, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %9) #10
  %25 = load i32, ptr %2, align 4
  %26 = lshr i32 %25, 28
  %27 = and i32 %26, 1
  br label %28

28:                                               ; preds = %6, %1
  %29 = phi i32 [ %27, %6 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_save_context(ptr nocapture noundef %0) #6 {
  %2 = tail call i32 @clk_sam9x5_peripheral_is_enabled(ptr noundef %0)
  %3 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 7, i32 2
  store i32 %2, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_sam9x5_peripheral_restore_context(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 7, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @clk_sam9x5_peripheral_set(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_recalc_rate(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %69, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.clk_pcr_layout, ptr %14, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  %20 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %15, i32 noundef %19) #10
  %21 = load ptr, ptr %11, align 4
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %3) #10
  %25 = load ptr, ptr %8, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %10) #10
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %7
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.clk_pcr_layout, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %26
  %34 = call i32 @llvm.cttz.i32(i32 %32, i1 true), !range !10
  %35 = icmp eq i32 %32, 0
  %36 = select i1 %35, i32 -1, i32 %34
  %37 = lshr i32 %33, %36
  %38 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 8
  store i8 0, ptr %39, align 4
  br label %65

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 8
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 2, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 0) #10
  %50 = call i32 @clk_hw_get_rate(ptr noundef %49) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %45, align 4
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = lshr i32 %50, 1
  %57 = icmp ugt i32 %56, %53
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = lshr i32 %50, 2
  %60 = icmp ugt i32 %59, %53
  %61 = select i1 %60, i32 3, i32 2
  br label %62

62:                                               ; preds = %58, %55, %52, %44
  %63 = phi i32 [ 0, %44 ], [ 0, %52 ], [ 1, %55 ], [ %61, %58 ]
  store i8 0, ptr %41, align 4
  %64 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 5
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %62, %48, %40, %29
  %66 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %1, %67
  br label %69

69:                                               ; preds = %65, %2
  %70 = phi i32 [ %68, %65 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %70
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %2, align 4
  %13 = icmp ugt i32 %12, %9
  br i1 %13, label %16, label %25

14:                                               ; preds = %7, %3
  %15 = load i32, ptr %2, align 4
  br label %80

16:                                               ; preds = %11
  %17 = lshr i32 %12, 1
  %18 = icmp ugt i32 %17, %9
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = lshr i32 %12, 2
  %21 = icmp ugt i32 %20, %9
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = lshr i32 %12, 3
  %24 = icmp ugt i32 %23, %9
  br i1 %24, label %80, label %25

25:                                               ; preds = %22, %19, %16, %11
  %26 = phi i32 [ %12, %11 ], [ %17, %16 ], [ %20, %19 ], [ %23, %22 ]
  %27 = phi i32 [ 0, %11 ], [ 1, %16 ], [ 2, %19 ], [ 3, %22 ]
  %28 = icmp ugt i32 %26, %1
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  %30 = sub i32 %26, %1
  %31 = lshr i32 %12, %27
  %32 = icmp ult i32 %31, %1
  %33 = sub i32 %1, %31
  %34 = sub i32 %31, %1
  %35 = select i1 %32, i32 %33, i32 %34
  %36 = icmp ult i32 %35, %30
  %37 = select i1 %36, i32 %31, i32 %26
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %30)
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i1 true, i1 %32
  %41 = add nuw nsw i32 %27, 1
  %42 = icmp eq i32 %41, 4
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %80, label %44

44:                                               ; preds = %29
  %45 = lshr i32 %12, %41
  %46 = icmp ult i32 %45, %1
  %47 = sub i32 %1, %45
  %48 = sub i32 %45, %1
  %49 = select i1 %46, i32 %47, i32 %48
  %50 = icmp ult i32 %49, %38
  %51 = select i1 %50, i32 %45, i32 %37
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %38)
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i1 true, i1 %46
  %55 = add nuw nsw i32 %27, 2
  %56 = icmp eq i32 %55, 4
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %80, label %58

58:                                               ; preds = %44
  %59 = lshr i32 %12, %55
  %60 = icmp ult i32 %59, %1
  %61 = sub i32 %1, %59
  %62 = sub i32 %59, %1
  %63 = select i1 %60, i32 %61, i32 %62
  %64 = icmp ult i32 %63, %52
  %65 = select i1 %64, i32 %59, i32 %51
  %66 = tail call i32 @llvm.umin.i32(i32 %63, i32 %52)
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i1 true, i1 %60
  %69 = add nuw nsw i32 %27, 3
  %70 = icmp eq i32 %69, 4
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %58
  %73 = lshr i32 %12, %69
  %74 = icmp ult i32 %73, %1
  %75 = sub i32 %1, %73
  %76 = sub i32 %73, %1
  %77 = select i1 %74, i32 %75, i32 %76
  %78 = icmp ult i32 %77, %66
  %79 = select i1 %78, i32 %73, i32 %65
  br label %80

80:                                               ; preds = %72, %58, %44, %29, %25, %22, %14
  %81 = phi i32 [ %15, %14 ], [ %26, %25 ], [ %23, %22 ], [ %37, %29 ], [ %51, %44 ], [ %65, %58 ], [ %79, %72 ]
  ret i32 %81
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %3
  %12 = icmp eq i32 %2, %1
  %13 = select i1 %12, i32 0, i32 -22
  br label %31

14:                                               ; preds = %7
  %15 = icmp ult i32 %9, %1
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %2, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %28, %25, %22, %16
  %19 = phi i32 [ 0, %16 ], [ 1, %22 ], [ 2, %25 ], [ 3, %28 ]
  %20 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 8
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 5
  store i32 %19, ptr %21, align 4
  br label %31

22:                                               ; preds = %16
  %23 = lshr i32 %2, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %18, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %2, 2
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %18, label %28

28:                                               ; preds = %25
  %29 = lshr i32 %2, 3
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %18, label %31

31:                                               ; preds = %28, %18, %14, %11
  %32 = phi i32 [ 0, %18 ], [ %13, %11 ], [ -22, %14 ], [ -22, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_sam9x5_peripheral_set(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.clk_pcr_layout, ptr %12, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %13, i32 noundef %17) #10
  %19 = load ptr, ptr %9, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.clk_pcr_layout, ptr %20, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_pcr_layout, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = or i32 %26, 268435456
  %28 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !10
  %31 = icmp eq i32 %23, 0
  %32 = select i1 %31, i32 -1, i32 %30
  %33 = shl i32 %29, %32
  %34 = and i32 %33, %23
  %35 = or i32 %25, %34
  %36 = or i32 %35, 268435456
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %27, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %38 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %8) #10
  br label %39

39:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_peripheral_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = alloca %struct.clk_rate_request, align 4
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %5 = tail call i32 @clk_hw_get_rate(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %190, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %190, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %16 = icmp ugt i32 %5, %11
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4
  %19 = sub i32 %18, %5
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 false) #10
  store i32 %5, ptr %14, align 4
  store ptr %4, ptr %15, align 4
  %21 = icmp eq i32 %18, %5
  br i1 %21, label %90, label %22

22:                                               ; preds = %17
  %23 = icmp ult i32 %18, %5
  br i1 %23, label %24, label %90

24:                                               ; preds = %22
  %25 = load i32, ptr %10, align 4
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %11, %13 ], [ %25, %24 ]
  %28 = phi i32 [ -2147483648, %13 ], [ %5, %24 ]
  %29 = phi i32 [ -2147483648, %13 ], [ %20, %24 ]
  %30 = icmp ne i32 %27, 0
  %31 = lshr i32 %5, 1
  %32 = icmp ugt i32 %31, %27
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %50, label %34

34:                                               ; preds = %26
  %35 = load i32, ptr %1, align 4
  %36 = sub i32 %35, %31
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 false) #10
  %38 = icmp sgt i32 %29, -1
  %39 = icmp ult i32 %29, %37
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 %5, ptr %14, align 4
  store ptr %4, ptr %15, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i32 [ %28, %34 ], [ %31, %41 ]
  %44 = phi i32 [ %29, %34 ], [ %37, %41 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = icmp ugt i32 %43, %35
  br i1 %47, label %48, label %90

48:                                               ; preds = %46
  %49 = load i32, ptr %10, align 4
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ %27, %26 ], [ %49, %48 ]
  %52 = phi i32 [ %28, %26 ], [ %43, %48 ]
  %53 = phi i32 [ %29, %26 ], [ %44, %48 ]
  %54 = icmp ne i32 %51, 0
  %55 = lshr i32 %5, 2
  %56 = icmp ugt i32 %55, %51
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %1, align 4
  %60 = sub i32 %59, %55
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 false) #10
  %62 = icmp sgt i32 %53, -1
  %63 = icmp ult i32 %53, %61
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 %5, ptr %14, align 4
  store ptr %4, ptr %15, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ %52, %58 ], [ %55, %65 ]
  %68 = phi i32 [ %53, %58 ], [ %61, %65 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = icmp ugt i32 %67, %59
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = load i32, ptr %10, align 4
  br label %74

74:                                               ; preds = %72, %50
  %75 = phi i32 [ %51, %50 ], [ %73, %72 ]
  %76 = phi i32 [ %52, %50 ], [ %67, %72 ]
  %77 = phi i32 [ %53, %50 ], [ %68, %72 ]
  %78 = icmp ne i32 %75, 0
  %79 = lshr i32 %5, 3
  %80 = icmp ugt i32 %79, %75
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %1, align 4
  %84 = sub i32 %83, %79
  %85 = tail call i32 @llvm.abs.i32(i32 %84, i1 false) #10
  %86 = icmp sgt i32 %77, -1
  %87 = icmp ult i32 %77, %85
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 %5, ptr %14, align 4
  store ptr %4, ptr %15, align 4
  br label %90

90:                                               ; preds = %89, %82, %74, %70, %66, %46, %42, %22, %17
  %91 = phi i32 [ %5, %17 ], [ %5, %22 ], [ %43, %42 ], [ %43, %46 ], [ %67, %66 ], [ %67, %70 ], [ %76, %74 ], [ %76, %82 ], [ %79, %89 ]
  %92 = phi i32 [ 0, %17 ], [ %20, %22 ], [ 0, %42 ], [ %44, %46 ], [ 0, %66 ], [ %68, %70 ], [ %77, %74 ], [ %77, %82 ], [ %85, %89 ]
  %93 = getelementptr inbounds %struct.clk_sam9x5_peripheral, ptr %0, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %181, label %96

96:                                               ; preds = %90
  %97 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %94) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %181, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %1, align 4
  store i32 %100, ptr %3, align 4
  %101 = call i32 @__clk_determine_rate(ptr noundef nonnull %97, ptr noundef nonnull %3) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %1, align 4
  br label %118

105:                                              ; preds = %99
  %106 = load i32, ptr %3, align 4
  %107 = load i32, ptr %1, align 4
  %108 = sub i32 %107, %106
  %109 = call i32 @llvm.abs.i32(i32 %108, i1 false) #10
  %110 = icmp sgt i32 %92, -1
  %111 = icmp ult i32 %92, %109
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  store i32 %106, ptr %14, align 4
  store ptr %97, ptr %15, align 4
  br label %114

114:                                              ; preds = %113, %105
  %115 = phi i32 [ %91, %105 ], [ %106, %113 ]
  %116 = phi i32 [ %92, %105 ], [ %109, %113 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %181, label %118

118:                                              ; preds = %114, %103
  %119 = phi i32 [ %107, %114 ], [ %104, %103 ]
  %120 = phi i32 [ %115, %114 ], [ %91, %103 ]
  %121 = phi i32 [ %116, %114 ], [ %92, %103 ]
  %122 = shl i32 %119, 1
  store i32 %122, ptr %3, align 4
  %123 = call i32 @__clk_determine_rate(ptr noundef nonnull %97, ptr noundef nonnull %3) #10
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = load i32, ptr %1, align 4
  br label %141

127:                                              ; preds = %118
  %128 = load i32, ptr %3, align 4
  %129 = lshr i32 %128, 1
  %130 = load i32, ptr %1, align 4
  %131 = sub i32 %130, %129
  %132 = call i32 @llvm.abs.i32(i32 %131, i1 false) #10
  %133 = icmp sgt i32 %121, -1
  %134 = icmp ult i32 %121, %132
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  store i32 %128, ptr %14, align 4
  store ptr %97, ptr %15, align 4
  br label %137

137:                                              ; preds = %136, %127
  %138 = phi i32 [ %120, %127 ], [ %129, %136 ]
  %139 = phi i32 [ %121, %127 ], [ %132, %136 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %181, label %141

141:                                              ; preds = %137, %125
  %142 = phi i32 [ %130, %137 ], [ %126, %125 ]
  %143 = phi i32 [ %138, %137 ], [ %120, %125 ]
  %144 = phi i32 [ %139, %137 ], [ %121, %125 ]
  %145 = shl i32 %142, 2
  store i32 %145, ptr %3, align 4
  %146 = call i32 @__clk_determine_rate(ptr noundef nonnull %97, ptr noundef nonnull %3) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %141
  %149 = load i32, ptr %1, align 4
  br label %164

150:                                              ; preds = %141
  %151 = load i32, ptr %3, align 4
  %152 = lshr i32 %151, 2
  %153 = load i32, ptr %1, align 4
  %154 = sub i32 %153, %152
  %155 = call i32 @llvm.abs.i32(i32 %154, i1 false) #10
  %156 = icmp sgt i32 %144, -1
  %157 = icmp ult i32 %144, %155
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %160, label %159

159:                                              ; preds = %150
  store i32 %151, ptr %14, align 4
  store ptr %97, ptr %15, align 4
  br label %160

160:                                              ; preds = %159, %150
  %161 = phi i32 [ %143, %150 ], [ %152, %159 ]
  %162 = phi i32 [ %144, %150 ], [ %155, %159 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %160, %148
  %165 = phi i32 [ %153, %160 ], [ %149, %148 ]
  %166 = phi i32 [ %161, %160 ], [ %143, %148 ]
  %167 = phi i32 [ %162, %160 ], [ %144, %148 ]
  %168 = shl i32 %165, 3
  store i32 %168, ptr %3, align 4
  %169 = call i32 @__clk_determine_rate(ptr noundef nonnull %97, ptr noundef nonnull %3) #10
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %164
  %172 = load i32, ptr %3, align 4
  %173 = lshr i32 %172, 3
  %174 = load i32, ptr %1, align 4
  %175 = sub i32 %174, %173
  %176 = call i32 @llvm.abs.i32(i32 %175, i1 false) #10
  %177 = icmp sgt i32 %167, -1
  %178 = icmp ult i32 %167, %176
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  store i32 %172, ptr %14, align 4
  store ptr %97, ptr %15, align 4
  br label %181

181:                                              ; preds = %180, %171, %164, %160, %137, %114, %96, %90
  %182 = phi i32 [ %91, %90 ], [ %91, %96 ], [ %115, %114 ], [ %138, %137 ], [ %161, %160 ], [ %166, %164 ], [ %166, %171 ], [ %173, %180 ]
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr %10, align 4
  %186 = icmp ne i32 %185, 0
  %187 = icmp ugt i32 %182, %185
  %188 = select i1 %186, i1 %187, i1 false
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  store i32 %182, ptr %1, align 4
  br label %190

190:                                              ; preds = %189, %184, %181, %9, %2
  %191 = phi i32 [ 0, %189 ], [ %5, %9 ], [ %5, %2 ], [ -22, %184 ], [ -22, %181 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  ret i32 %191
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
